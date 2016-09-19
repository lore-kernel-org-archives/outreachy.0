X-GM-THRID: 6331784353650049024
X-Received: by 10.25.92.200 with SMTP id u69mr627105lfi.23.1474276899591;
        Mon, 19 Sep 2016 02:21:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.135 with SMTP id v129ls101335wmf.3.canary; Mon, 19 Sep
 2016 02:21:38 -0700 (PDT)
X-Received: by 10.194.46.233 with SMTP id y9mr2999719wjm.3.1474276898897;
        Mon, 19 Sep 2016 02:21:38 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e21si1623544wmc.2.2016.09.19.02.21.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 02:21:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,361,1470693600"; 
   d="scan'208";a="237343715"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 11:21:26 +0200
Date: Mon, 19 Sep 2016 11:21:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: Alison Schofield <amsfield22@gmail.com>, outreachy-kernel@googlegroups.com, 
    jic23@kernel.org, knaack.h@gmx.de, Lars-Peter Clausen <lars@metafoo.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: trigger: Use devm
 functions
In-Reply-To: <CAOH+1jFsWGDVcifqDU0_9MPw=uEXQ+u0E8dg0hkimx+eJbWq1Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609191120270.3203@hadrien>
References: <1474233410-6932-1-git-send-email-bhumirks@gmail.com> <20160919054442.GB2699@d830.WORKGROUP> <CAOH+1jFsWGDVcifqDU0_9MPw=uEXQ+u0E8dg0hkimx+eJbWq1Q@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 19 Sep 2016, Bhumika Goyal wrote:

> On Mon, Sep 19, 2016 at 11:14 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> > On Mon, Sep 19, 2016 at 02:46:50AM +0530, Bhumika Goyal wrote:
> >> Use managed resource functions devm_iio_trigger_alloc and
> >> devm_request_irq instead of iio_trigger_alloc and request_irq.
> >> Remove corresponding calls to free_irq in the probe and remove
> >> functions. Drop the now unnecessary goto labels and replace various
> >> gotos with direct returns.
> >> request_irq replacement done using coccinelle.
> >
> > Hi Bhumika,
> > Thanks for the patch.  This seems like it's worthy of 2 separate
> > patches.
> >
> > Also, I'm a bit confused with why I don't see an iio_trigger_free
> > that is going away, when you switch to the devm_iio_trigger_alloc
> > functions, but I realize there isn't one there to remove. hmm???
> >
> > alisons
> >
>
> Hey Alison,
> Ok, I will separate this in two patches. I will do
> devm_iio_trigger_alloc in patch 1 and devm_request_irq in patch 2 as
> devm_request_irq requires all previous memory allocations to be devms.
> Regarding iio_trigger_free I didn't find any in either of the two
> functions(probe and remove).
> Thanks for the input.

I think that normally people devmify everything at once.

I dimly recollect that iio_trigger_unregister does the free.  Check
whether this is the case, and whether it is devm safe.

julia


>
> Thanks,
> Bhumika
> >
> >
> >>
> >> @platform@
> >> identifier p, probefn, removefn;
> >> @@
> >> struct platform_driver p = {
> >>   .probe = probefn,
> >>   .remove = removefn,
> >> };
> >>
> >> @prb@
> >> identifier platform.probefn, pdev;
> >> expression list E;
> >> expression e;
> >>
> >> @@
> >> probefn(struct platform_device *pdev, ...) {
> >>   <+...
> >> - e = request_irq(E);
> >> + e = devm_request_irq(&pdev->dev,E);
> >>   ...
> >> ?-free_irq(...);
> >>   ...+>
> >> }
> >>
> >> @rem depends on prb@
> >> identifier platform.removefn;
> >> expression e;
> >> @@
> >> removefn(...) {
> >>   <...
> >> - free_irq(...);
> >>   ...>
> >> }
> >>
> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> >> ---
> >>  drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 13 ++++++-------
> >>  1 file changed, 6 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> >> index 38dca69..ea4845c 100644
> >> --- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> >> +++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> >> @@ -200,7 +200,8 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
> >>       st->timer_num = ret;
> >>       st->t = &iio_bfin_timer_code[st->timer_num];
> >>
> >> -     st->trig = iio_trigger_alloc("bfintmr%d", st->timer_num);
> >> +     st->trig = devm_iio_trigger_alloc(&pdev->dev, "bfintmr%d",
> >> +                                          st->timer_num);
> >>       if (!st->trig)
> >>               return -ENOMEM;
> >>
> >> @@ -211,8 +212,8 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
> >>       if (ret)
> >>               goto out;
> >>
> >> -     ret = request_irq(st->irq, iio_bfin_tmr_trigger_isr,
> >> -                       0, st->trig->name, st);
> >> +     ret = devm_request_irq(&pdev->dev, st->irq, iio_bfin_tmr_trigger_isr,
> >> +                            0, st->trig->name, st);
> >>       if (ret) {
> >>               dev_err(&pdev->dev,
> >>                       "request IRQ-%d failed", st->irq);
> >> @@ -229,7 +230,7 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
> >>
> >>               ret = peripheral_request(st->t->pin, st->trig->name);
> >>               if (ret)
> >> -                     goto out_free_irq;
> >> +                     return ret;
> >>
> >>               val = (unsigned long long)get_sclk() * pdata->duty_ns;
> >>               do_div(val, NSEC_PER_SEC);
> >> @@ -255,8 +256,7 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
> >>       platform_set_drvdata(pdev, st);
> >>
> >>       return 0;
> >> -out_free_irq:
> >> -     free_irq(st->irq, st);
> >> +
> >>  out1:
> >>       iio_trigger_unregister(st->trig);
> >>  out:
> >> @@ -271,7 +271,6 @@ static int iio_bfin_tmr_trigger_remove(struct platform_device *pdev)
> >>       disable_gptimers(st->t->bit);
> >>       if (st->output_enable)
> >>               peripheral_free(st->t->pin);
> >> -     free_irq(st->irq, st);
> >>       iio_trigger_unregister(st->trig);
> >>       iio_trigger_put(st->trig);
> >>
> >> --
> >> 1.9.1
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474233410-6932-1-git-send-email-bhumirks%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jFsWGDVcifqDU0_9MPw%3DuEXQ%2Bu0E8dg0hkimx%2BeJbWq1Q%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


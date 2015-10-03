X-GM-THRID: 6201460938447519744
X-Received: by 10.194.240.230 with SMTP id wd6mr3738455wjc.0.1443890953459;
        Sat, 03 Oct 2015 09:49:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.89.8 with SMTP id bk8ls573007wib.52.gmail; Sat, 03 Oct
 2015 09:49:13 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr909335wib.0.1443890953093;
        Sat, 03 Oct 2015 09:49:13 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si106060wif.2.2015.10.03.09.49.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 09:49:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,629,1437429600"; 
   d="scan'208";a="180876184"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2015 18:49:12 +0200
Date: Sat, 3 Oct 2015 18:49:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: meter: Use
 devm_iio_trigger_alloc
In-Reply-To: <CAK-LDbK2_tQvK62Yo9UY2X4woXckA8tAC3Cf5A8bTxcGLsnCUw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510031848310.2586@hadrien>
References: <1443890125-2419-1-git-send-email-shraddha.6596@gmail.com> <CAK-LDbK2_tQvK62Yo9UY2X4woXckA8tAC3Cf5A8bTxcGLsnCUw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 3 Oct 2015, Vaishali Thakkar wrote:

> On Sat, Oct 3, 2015 at 10:05 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> > Introduce use of managed resource function devm_iio_trigger_alloc
> > instead of iio_trigger_alloc and remove corresponding calls
> > to iio_trigger_free in the probe and remove functions.
> > Also unnecessary label error_free_trig is dropped.
> >
> > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> > ---
> >  drivers/staging/iio/meter/ade7758_trigger.c | 11 ++++-------
> >  1 file changed, 4 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/iio/meter/ade7758_trigger.c b/drivers/staging/iio/meter/ade7758_trigger.c
> > index 5b35a7f..a5d52bb 100644
> > --- a/drivers/staging/iio/meter/ade7758_trigger.c
> > +++ b/drivers/staging/iio/meter/ade7758_trigger.c
> > @@ -63,9 +63,9 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
> >         struct ade7758_state *st = iio_priv(indio_dev);
> >         int ret;
> >
> > -       st->trig = iio_trigger_alloc("%s-dev%d",
> > -                                       spi_get_device_id(st->us)->name,
> > -                                       indio_dev->id);
> > +       st->trig = devm_iio_trigger_alloc("%s-dev%d",
> > +                                            spi_get_device_id(st->us)->name,
> > +                                            indio_dev->id);
>
> Function devm_iio_trigger_alloc requires something more. Please
> read both of the definitions carefully. And actually compiler should
> have warned you about the same.
>
> >         if (!st->trig) {
> >                 ret = -ENOMEM;
> >                 goto error_ret;
> > @@ -77,7 +77,7 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
> >                           spi_get_device_id(st->us)->name,
> >                           st->trig);
> >         if (ret)
> > -               goto error_free_trig;
> > +               goto error_ret;
>
> Also, you can use direct return here.

Maybe since the original developer thought that it was nice to have a
label for the trivial return, it is better to respct that.

julia

> >         st->trig->dev.parent = &st->us->dev;
> >         st->trig->ops = &ade7758_trigger_ops;
> > @@ -93,8 +93,6 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
> >
> >  error_free_irq:
> >         free_irq(st->us->irq, st->trig);
> > -error_free_trig:
> > -       iio_trigger_free(st->trig);
> >  error_ret:
> >         return ret;
> >  }
> > @@ -105,5 +103,4 @@ void ade7758_remove_trigger(struct iio_dev *indio_dev)
> >
> >         iio_trigger_unregister(st->trig);
> >         free_irq(st->us->irq, st->trig);
> > -       iio_trigger_free(st->trig);
> >  }
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443890125-2419-1-git-send-email-shraddha.6596%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
>
>
>
> --
> Vaishali
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbK2_tQvK62Yo9UY2X4woXckA8tAC3Cf5A8bTxcGLsnCUw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6402783293345890304
X-Received: by 10.223.172.19 with SMTP id v19mr944277wrc.4.1490767677505;
        Tue, 28 Mar 2017 23:07:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.31.19 with SMTP id f19ls1500789lff.44.gmail; Tue, 28 Mar
 2017 23:07:56 -0700 (PDT)
X-Received: by 10.25.0.141 with SMTP id 135mr4114383lfa.5.1490767676615;
        Tue, 28 Mar 2017 23:07:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l138si438683wmg.0.2017.03.28.23.07.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 23:07:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,239,1486422000"; 
   d="scan'208";a="218424602"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2017 08:07:55 +0200
Date: Wed, 29 Mar 2017 08:07:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: lars@metafoo.de, Michael Hennerich <Michael.Hennerich@analog.com>, 
    Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Use devm functions
In-Reply-To: <20170329050909.GA18738@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1703290806080.2053@hadrien>
References: <20170329050909.GA18738@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 29 Mar 2017, Arushi Singhal wrote:

> Use managed resource functions devm_request_irq instead of request_irq.
> Remove corresponding calls to free_irq in the probe.

This transformation is dangerous, because it moves the stopping of
interrupts from where the free_irq is to after the end of the function (ie
in the caller).  You have to be very sure that the interrupt handler will
not use any resources that are freed by the subsequent cleanup code, ie
iio_trigger_unregister and iio_trigger_free.

julia


>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> index 4e0b4eedb53d..42473d095911 100644
> --- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> +++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> @@ -211,8 +211,9 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto out;
>
> -	ret = request_irq(st->irq, iio_bfin_tmr_trigger_isr,
> -			  0, st->trig->name, st);
> +	ret = devm_request_irq(&pdev->dev,
> +			       st->irq, iio_bfin_tmr_trigger_isr,
> +			       0, st->trig->name, st);
>  	if (ret) {
>  		dev_err(&pdev->dev,
>  			"request IRQ-%d failed", st->irq);
> @@ -256,7 +257,6 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>
>  	return 0;
>  out_free_irq:
> -	free_irq(st->irq, st);
>  out1:
>  	iio_trigger_unregister(st->trig);
>  out:
> @@ -271,7 +271,6 @@ static int iio_bfin_tmr_trigger_remove(struct platform_device *pdev)
>  	disable_gptimers(st->t->bit);
>  	if (st->output_enable)
>  		peripheral_free(st->t->pin);
> -	free_irq(st->irq, st);
>  	iio_trigger_unregister(st->trig);
>  	iio_trigger_free(st->trig);
>
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170329050909.GA18738%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6201514199734026240
X-Received: by 10.112.198.33 with SMTP id iz1mr4021199lbc.8.1443935532243;
        Sat, 03 Oct 2015 22:12:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.146.9 with SMTP id u9ls367978lfd.63.gmail; Sat, 03 Oct 2015
 22:12:11 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr4147438lbs.18.1443935531583;
        Sat, 03 Oct 2015 22:12:11 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c1si166410wiv.3.2015.10.03.22.12.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 22:12:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,632,1437429600"; 
   d="scan'208";a="180939121"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2015 07:12:11 +0200
Date: Sun, 4 Oct 2015 07:12:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: iio: meter: Use devm
 functions
In-Reply-To: <1443902531-20190-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.02.1510040711020.2173@localhost6.localdomain6>
References: <1443902531-20190-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 4 Oct 2015, Shraddha Barke wrote:

> Introduce use of managed resource function devm_iio_trigger_alloc
> instead of iio_trigger_alloc and devm_request_irq instead of request_irq
> Remove corresponding calls to iio_trigger_free and free_irq in the probe
> and remove functions.
> The now unnecessary labels error_free_trig and err_free_irq are dropped.

Hmm, maybe the irq was not a good idea, because it will move turning off 
interrupts beyond the end of the calling remove function and that function 
might free some things needed by the interrupt handler.  Perhaps someone 
else knows more.

julia

> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
> Changes in v4-
>  Dropped the use of free_irq.Also updated commit message and changed the
>  subject.
> 
> Changes in v3-
>  Used devm_request_irq instead of request_irq.Also updated commit message.
> 
> Changes in v2-
>  Use appropriate arguments in devm_iio_trigger_alloc. 
> 
>  drivers/staging/iio/meter/ade7758_trigger.c | 26 ++++++++++----------------
>  1 file changed, 10 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/iio/meter/ade7758_trigger.c b/drivers/staging/iio/meter/ade7758_trigger.c
> index 5b35a7f..e313b37 100644
> --- a/drivers/staging/iio/meter/ade7758_trigger.c
> +++ b/drivers/staging/iio/meter/ade7758_trigger.c
> @@ -63,21 +63,21 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>  	struct ade7758_state *st = iio_priv(indio_dev);
>  	int ret;
>  
> -	st->trig = iio_trigger_alloc("%s-dev%d",
> -					spi_get_device_id(st->us)->name,
> -					indio_dev->id);
> +	st->trig = devm_iio_trigger_alloc(&indio_dev->id, "%s-dev%d",
> +					  spi_get_device_id(st->us)->name,
> +					  indio_dev->id);
>  	if (!st->trig) {
>  		ret = -ENOMEM;
>  		goto error_ret;
>  	}
>  
> -	ret = request_irq(st->us->irq,
> -			  ade7758_data_rdy_trig_poll,
> -			  IRQF_TRIGGER_LOW,
> -			  spi_get_device_id(st->us)->name,
> -			  st->trig);
> +	ret = devm_request_irq(&indio_dev->dev, st->us->irq,
> +			       ade7758_data_rdy_trig_poll,
> +			       IRQF_TRIGGER_LOW,
> +			       spi_get_device_id(st->us)->name,
> +			       st->trig);
>  	if (ret)
> -		goto error_free_trig;
> +		goto error_ret
>  
>  	st->trig->dev.parent = &st->us->dev;
>  	st->trig->ops = &ade7758_trigger_ops;
> @@ -87,14 +87,10 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>  	/* select default trigger */
>  	indio_dev->trig = iio_trigger_get(st->trig);
>  	if (ret)
> -		goto error_free_irq;
> +		goto error_ret;
>  
>  	return 0;
>  
> -error_free_irq:
> -	free_irq(st->us->irq, st->trig);
> -error_free_trig:
> -	iio_trigger_free(st->trig);
>  error_ret:
>  	return ret;
>  }
> @@ -104,6 +100,4 @@ void ade7758_remove_trigger(struct iio_dev *indio_dev)
>  	struct ade7758_state *st = iio_priv(indio_dev);
>  
>  	iio_trigger_unregister(st->trig);
> -	free_irq(st->us->irq, st->trig);
> -	iio_trigger_free(st->trig);
>  }
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443902531-20190-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


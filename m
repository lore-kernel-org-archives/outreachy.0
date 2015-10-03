X-GM-THRID: 6201460938447519744
X-Received: by 10.180.160.146 with SMTP id xk18mr652631wib.3.1443892975513;
        Sat, 03 Oct 2015 10:22:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.164.77 with SMTP id n74ls299614lfe.94.gmail; Sat, 03 Oct
 2015 10:22:54 -0700 (PDT)
X-Received: by 10.112.144.99 with SMTP id sl3mr3685055lbb.12.1443892974899;
        Sat, 03 Oct 2015 10:22:54 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bn1si129725wib.0.2015.10.03.10.22.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 10:22:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,629,1437429600"; 
   d="scan'208";a="180879180"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2015 19:22:54 +0200
Date: Sat, 3 Oct 2015 19:22:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: iio: meter: Use
 devm_iio_trigger_alloc
In-Reply-To: <1443892556-9121-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1510031922120.2586@hadrien>
References: <1443892556-9121-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 3 Oct 2015, Shraddha Barke wrote:

> Introduce use of managed resource function devm_iio_trigger_alloc
> instead of iio_trigger_alloc and remove corresponding calls
> to iio_trigger_free in the probe and remove functions.
> Also unnecessary label error_free_trig is dropped.

How about doing the request_irq as well?

You have a nice example here:

http://lxr.free-electrons.com/source/drivers/iio/imu/inv_mpu6050/inv_mpu_trigger.c#L119

Unfortunately, there doesn't seem to be a devm function for the
unregister...

julia

>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
> Changes in v2-
>  Use appropriate arguments in devm_iio_trigger_alloc.
>
>  drivers/staging/iio/meter/ade7758_trigger.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_trigger.c b/drivers/staging/iio/meter/ade7758_trigger.c
> index 5b35a7f..d5a324a 100644
> --- a/drivers/staging/iio/meter/ade7758_trigger.c
> +++ b/drivers/staging/iio/meter/ade7758_trigger.c
> @@ -63,9 +63,10 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>  	struct ade7758_state *st = iio_priv(indio_dev);
>  	int ret;
>
> -	st->trig = iio_trigger_alloc("%s-dev%d",
> -					spi_get_device_id(st->us)->name,
> -					indio_dev->id);
> +	st->trig = devm_iio_trigger_alloc(&indio_dev->dev,
> +					  "%s-dev%d",
> +					  spi_get_device_id(st->us)->name,
> +					  indio_dev->id);
>  	if (!st->trig) {
>  		ret = -ENOMEM;
>  		goto error_ret;
> @@ -77,7 +78,7 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>  			  spi_get_device_id(st->us)->name,
>  			  st->trig);
>  	if (ret)
> -		goto error_free_trig;
> +		goto error_ret;
>
>  	st->trig->dev.parent = &st->us->dev;
>  	st->trig->ops = &ade7758_trigger_ops;
> @@ -93,8 +94,6 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>
>  error_free_irq:
>  	free_irq(st->us->irq, st->trig);
> -error_free_trig:
> -	iio_trigger_free(st->trig);
>  error_ret:
>  	return ret;
>  }
> @@ -105,5 +104,4 @@ void ade7758_remove_trigger(struct iio_dev *indio_dev)
>
>  	iio_trigger_unregister(st->trig);
>  	free_irq(st->us->irq, st->trig);
> -	iio_trigger_free(st->trig);
>  }
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443892556-9121-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


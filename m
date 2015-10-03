X-GM-THRID: 6201460938447519744
X-Received: by 10.180.107.167 with SMTP id hd7mr727532wib.6.1443901450053;
        Sat, 03 Oct 2015 12:44:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.208 with SMTP id r199ls349304lfg.2.gmail; Sat, 03 Oct
 2015 12:44:09 -0700 (PDT)
X-Received: by 10.112.190.65 with SMTP id go1mr3885822lbc.9.1443901449317;
        Sat, 03 Oct 2015 12:44:09 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bj4si137057wib.1.2015.10.03.12.44.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 12:44:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,629,1437429600"; 
   d="scan'208";a="180892440"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2015 21:44:08 +0200
Date: Sat, 3 Oct 2015 21:44:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: iio: meter: Use
 devm_iio_trigger_alloc
In-Reply-To: <1443898073-12111-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.02.1510032142100.2017@localhost6.localdomain6>
References: <1443898073-12111-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

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
> +		goto error_ret;
>  
>  	st->trig->dev.parent = &st->us->dev;
>  	st->trig->ops = &ade7758_trigger_ops;
> @@ -93,8 +94,6 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
>  
>  error_free_irq:
>  	free_irq(st->us->irq, st->trig);

Since you are using devm_request_irq, you need to get rid of the free_irq
as well.  Getting rid of the explicit frees is very important, because
otherwise the implicit one introduced by the devm function will cause a
double free.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443898073-12111-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


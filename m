X-GM-THRID: 251519827968
X-Received: by 10.112.77.101 with SMTP id r5mr3435414lbw.4.1424240119406;
        Tue, 17 Feb 2015 22:15:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.228 with SMTP id hv4ls1113279wib.23.gmail; Tue, 17 Feb
 2015 22:15:19 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr89346wiv.0.1424240119084;
        Tue, 17 Feb 2015 22:15:19 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id by11si1003478wib.1.2015.02.17.22.15.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 22:15:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,595,1418079600"; 
   d="scan'208";a="122222521"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 07:15:07 +0100
Date: Wed, 18 Feb 2015 07:15:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: bcm2048: remove unused
 variable
In-Reply-To: <20150218013353.GA17840@localhost.localdomain>
Message-ID: <alpine.DEB.2.02.1502180711170.2066@localhost6.localdomain6>
References: <20150218013353.GA17840@localhost.localdomain>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 18 Feb 2015, Aya Mahfouz wrote:

> This patch removes the variable value since it is used only
> to store return values and check their values. The pattern
> of storing return values was found using the following
> coccinelle script:
> 
> @@
> expression ret;
> identifier f;
> @@
> 
> -ret =
> +return
>      f(...);
> -return ret;
> 
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
> v1: bdev is also a candidate for removal. Is there a guideline
> for such cases?

Kernel code tends not to nest function calls very much.  Also then you 
would have to call dev_get_drvdata twice, for the test and for the 
subsequent call to bcm2048_get_##prop.

Some developers are not enthusiastic about function calls in local 
variable declaration lists.  As here, the call and the test are separated.  
You could use grep to see what is commonly done for this function.

julia

>  drivers/staging/media/bcm2048/radio-bcm2048.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> index 60a57b2..6e0b83e 100644
> --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> @@ -1987,17 +1987,13 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
>  					char *buf)			\
>  {									\
>  	struct bcm2048_device *bdev = dev_get_drvdata(dev);		\
> -	int value;							\
>  									\
>  	if (!bdev)							\
>  		return -ENODEV;						\
>  									\
> -	value = bcm2048_get_##prop(bdev);				\
> -									\
> -	if (value >= 0)							\
> -		value = sprintf(buf, mask "\n", value);			\
> +	if (bcm2048_get_##prop(bdev) >= 0)				\
> +		return sprintf(buf, mask "\n", value);			\
>  									\
> -	return value;							\

This doesn't look corect.  You need to return something in this case.

>  }
>  
>  #define property_signed_read(prop, size, mask)				\
> -- 
> 1.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150218013353.GA17840%40localhost.localdomain.
> For more options, visit https://groups.google.com/d/optout.
> 


X-GM-THRID: 6207856013446479872
X-Received: by 10.112.159.4 with SMTP id wy4mr3156945lbb.15.1445496240992;
        Wed, 21 Oct 2015 23:44:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.82.213 with SMTP id g204ls315714lfb.92.gmail; Wed, 21 Oct
 2015 23:44:00 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr3180051lbb.17.1445496240266;
        Wed, 21 Oct 2015 23:44:00 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id hc2si458136wib.3.2015.10.21.23.44.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 23:44:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,181,1444687200"; 
   d="scan'208";a="151384387"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Oct 2015 08:43:46 +0200
Date: Thu, 22 Oct 2015 08:43:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Add error code
 handling
In-Reply-To: <1445463010-3525-1-git-send-email-cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.02.1510220842030.2246@localhost6.localdomain6>
References: <1445463010-3525-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 22 Oct 2015, Cristina Moraru wrote:

> Write function can return non-zero values indicating
> errors. This values must be caught and handled.

Why?  Sometimes it is possible to tolerate errors.  At least in the first 
case it seems possible that the developer considered the possibility that 
an error occurred and felt that this was not a problem.  Maybe it is 
correct that the errors are not tolearble, but more explanation is needed.

julia

> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/iio/addac/adt7316.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
> index 3adc451..6d67edf 100644
> --- a/drivers/staging/iio/addac/adt7316.c
> +++ b/drivers/staging/iio/addac/adt7316.c
> @@ -1850,10 +1850,11 @@ static ssize_t adt7316_set_int_mask(struct device *dev,
>  		mask = ADT7316_INT_MASK2_VDD;	/* disable vdd int */
>  
>  	ret = chip->bus.write(chip->bus.client, ADT7316_INT_MASK2, mask);
> -	if (!ret) {
> -		chip->int_mask &= ~ADT7316_VDD_INT_MASK;
> -		chip->int_mask |= data & ADT7316_VDD_INT_MASK;
> -	}
> +	if (ret)
> +		return -EIO;
> +
> +	chip->int_mask &= ~ADT7316_VDD_INT_MASK;
> +	chip->int_mask |= data & ADT7316_VDD_INT_MASK;
>  
>  	if (data & ADT7316_TEMP_AIN_INT_MASK) {
>  		if ((chip->id & ID_FAMILY_MASK) == ID_ADT73XX)
> @@ -1864,6 +1865,8 @@ static ssize_t adt7316_set_int_mask(struct device *dev,
>  			mask = (~data) & ADT7316_TEMP_AIN_INT_MASK;
>  	}
>  	ret = chip->bus.write(chip->bus.client, ADT7316_INT_MASK1, mask);
> +	if (ret)
> +		return -EIO;
>  
>  	chip->int_mask = mask;
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445463010-3525-1-git-send-email-cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


X-GM-THRID: 6664414939270086656
X-Received: by 2002:a1c:2184:: with SMTP id h126mr987737wmh.15.1551684736837;
        Sun, 03 Mar 2019 23:32:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f107:: with SMTP id p7ls1262409wmh.6.canary-gmail; Sun,
 03 Mar 2019 23:32:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqyCljw/cMSp4BAj4e4Che9SjxiEKRyWtS381Opx0lqHKE2/4/3jUoalkdlo5vzISwwERotp
X-Received: by 2002:a7b:c0c8:: with SMTP id s8mr1016584wmh.6.1551684736116;
        Sun, 03 Mar 2019 23:32:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551684736; cv=none;
        d=google.com; s=arc-20160816;
        b=ou5x3GZq4Lr1lcQ1BTuKvLDaKVU2u+B7Y/1w9Oir6i0N7W7ZkitGK3pNXpwoMhgQG7
         BI3OSo54sDVlZvjiGm5bhWeUbUmrxe6HifGxPSX05WAzd85qz0/d30dCm4bHMx3IKA+o
         AVxeMjzYPJZ2hwZh7vAZbVEt4cRck2JPqU/vMZYJgM+0ql5bQRqZS7ZgOi+lyMG2Q3EY
         dp2m0UGZ1O0I9ktiHkHYX9SLwGq/wseh/LbX/FHc9mQdP39M2nIuQMO7PfmTz66QJnCp
         zwJmddc+I5sP6H2XCzwlBcHF+3IUjQSf3WGVFgH86/zXBHMRZbopj4KsKyYANW6wjif8
         3fjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0hlodyKePuq5PhKTpdqw/yENcVCOHPQcip60eSuVjsg=;
        b=TM/dA5gGDbXbWamipRekty0CRV4AH13okWJMsHqlAWisE9gkaAysE4C2Hh5yhgxuXf
         z8glakRo6wStpX11Zd/tFhblh1Jyt4/Fb4GnZRmj1+q+EOHuyc2yR59EjtM79fhIMlSG
         Muvxo00W94hB+9GrjwX1LAsfw9BLMmmCs2Xp7FT5dFJhEwuG7QxhAgIZgLmHeD46N6nv
         upHGD/K2Id2QTGGI50ChY4OF0lA9Drgbj5fecr/3YReoQQDXpr+8vVHdmEVS0n+IeayK
         HLQMn1HsSwHFXPgzLDYngdF4X6Cb2hX+Qn0Z8blYbqeBKe6jjF6ZxV8xQ/QaFNTeiF8W
         5zPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b8si272659wru.1.2019.03.03.23.32.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 23:32:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,439,1544482800"; 
   d="scan'208";a="371724606"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 08:32:15 +0100
Date: Mon, 4 Mar 2019 08:32:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: line over 80
 characters.
In-Reply-To: <20190304061327.GA20491@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1903040827280.2559@hadrien>
References: <20190304061327.GA20491@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

[Some lines removed that looked ok]

> diff --git a/drivers/staging/fbtft/fb_st7735r.c b/drivers/staging/fbtft/fb_st7735r.c
> index 9670a898..1140fe4 100644
> --- a/drivers/staging/fbtft/fb_st7735r.c
> +++ b/drivers/staging/fbtft/fb_st7735r.c
> @@ -130,8 +130,10 @@ static int set_var(struct fbtft_par *par)
>
>  /*
>   * Gamma string format:
> - * VRF0P VOS0P PK0P PK1P PK2P PK3P PK4P PK5P PK6P PK7P PK8P PK9P SELV0P SELV1P SELV62P SELV63P
> - * VRF0N VOS0N PK0N PK1N PK2N PK3N PK4N PK5N PK6N PK7N PK8N PK9N SELV0N SELV1N SELV62N SELV63N
> + * VRF0P VOS0P PK0P PK1P PK2P PK3P PK4P PK5P PK6P PK7P PK8P PK9P
> + * VRF0N VOS0N PK0N PK1N PK2N PK3N PK4N PK5N PK6N PK7N PK8N PK9N
> + * SELV0P SELV1P SELV62P SELV63P
> + * SELV0N SELV1N SELV62N SELV63N

It looks like you have changed the order of the different names, which may
not be a good idea. I think you could leave the comment alone.

>   */
>  #define CURVE(num, idx)  curves[(num) * par->gamma.num_values + (idx)]
>  static int set_gamma(struct fbtft_par *par, u32 *curves)
> diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
> index 2a5c630..ac6a25e8 100644
> --- a/drivers/staging/fbtft/fbtft-sysfs.c
> +++ b/drivers/staging/fbtft/fbtft-sysfs.c
> @@ -68,7 +68,8 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
>  			ret = get_next_ulong(&curve_p, &val, " ", 16);
>  			if (ret)
>  				goto out;
> -			curves[curve_counter * par->gamma.num_values + value_counter] = val;
> +			curves[curve_counter * par->gamma.num_values +
> +			       value_counter] = val;

This is not a good idea.  Don't break lines in the middle of something,
here an array index.  Maybe it would be enough to put the = val on the
next line.

>  			value_counter++;
>  		}
>  		if (value_counter != par->gamma.num_values) {
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 7fdd3b0..3dc9043 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -347,9 +347,15 @@ module_exit(fbtft_driver_module_exit);
>
>  /* shorthand debug levels */
>  #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
> -#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
> -#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
> -#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
> +#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS |	    \
> +			 DEBUG_TIME_FIRST_UPDATE)
> +#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | \
> +			 DEBUG_BLANK |  DEBUG_REQUEST_GPIOS |		    \
> +			 DEBUG_FREE_GPIOS |				    \
> +			 DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
> +#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE |   \
> +			 DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA |	    \
> +			 DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)

You should follow the principle of lining things up with the right side of
a ( here.

>  #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
>  #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
>  #define DEBUG_LEVEL_7	0xFFFFFFFF
> @@ -391,7 +397,9 @@ module_exit(fbtft_driver_module_exit);
>  #define fbtft_init_dbg(dev, format, arg...)                  \
>  do {                                                         \
>  	if (unlikely((dev)->platform_data &&                 \
> -	    (((struct fbtft_platform_data *)(dev)->platform_data)->display.debug & DEBUG_DRIVER_INIT_FUNCTIONS))) \
> +	    (((struct fbtft_platform_data *)		     \
> +	     (dev)->platform_data)->display.debug &	     \

Again, this greatly hurts readability.  The & ... could be on another
line, but don't break up the left argument of &.

julia


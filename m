X-GM-THRID: 6257896431456092160
X-Received: by 10.194.62.69 with SMTP id w5mr637955wjr.5.1457034856164;
        Thu, 03 Mar 2016 11:54:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.48.145 with SMTP id w139ls5352wmw.29.gmail; Thu, 03 Mar
 2016 11:54:14 -0800 (PST)
X-Received: by 10.194.84.40 with SMTP id v8mr640949wjy.2.1457034854124;
        Thu, 03 Mar 2016 11:54:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 71si175670wmp.0.2016.03.03.11.54.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2016 11:54:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,533,1449529200"; 
   d="scan'208";a="166839868"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2016 20:54:12 +0100
Date: Thu, 3 Mar 2016 20:54:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Do not use same
 argument more than once in bit operation.
In-Reply-To: <20160303103355.GA5375@sandhya>
Message-ID: <alpine.DEB.2.02.1603032053480.2061@localhost6.localdomain6>
References: <20160303103355.GA5375@sandhya>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 3 Mar 2016, Sandhya Bankar wrote:

> Do not use same argument more than once in bit operation.

These look so useless that there could be a reason for them.

julia

> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/fbtft/fb_uc1611.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_uc1611.c b/drivers/staging/fbtft/fb_uc1611.c
> index 4e82814..bffe694 100644
> --- a/drivers/staging/fbtft/fb_uc1611.c
> +++ b/drivers/staging/fbtft/fb_uc1611.c
> @@ -100,7 +100,7 @@ static int init_display(struct fbtft_par *par)
>  	write_reg(par, 0x2C | (pump & 0x03));
>  
>  	/* Set inverse display */
> -	write_reg(par, 0xA6 | (0x01 & 0x01));
> +	write_reg(par, 0xA6 | 0x01);
>  
>  	/* Set 4-bit grayscale mode */
>  	write_reg(par, 0xD0 | (0x02 & 0x03));
> @@ -166,8 +166,8 @@ static int set_var(struct fbtft_par *par)
>  		/* Set RAM address control */
>  		write_reg(par, 0x88
>  			| (0x0 & 0x1) << 2 /* Increment positively */
> -			| (0x1 & 0x1) << 1 /* Increment page first */
> -			| (0x1 & 0x1));    /* Wrap around (default) */
> +			| (0x1 << 1) /* Increment page first */
> +			| 0x1);    /* Wrap around (default) */
>  
>  		/* Set LCD mapping */
>  		write_reg(par, 0xC0
> @@ -180,11 +180,11 @@ static int set_var(struct fbtft_par *par)
>  		write_reg(par, 0x88
>  			| (0x0 & 0x1) << 2 /* Increment positively */
>  			| (0x0 & 0x1) << 1 /* Increment column first */
> -			| (0x1 & 0x1));    /* Wrap around (default) */
> +			| 0x1);    /* Wrap around (default) */
>  
>  		/* Set LCD mapping */
>  		write_reg(par, 0xC0
> -			| (0x1 & 0x1) << 2 /* Mirror Y ON */
> +			| (0x1 << 2) /* Mirror Y ON */
>  			| (0x0 & 0x1) << 1 /* Mirror X OFF */
>  			| (0x0 & 0x1));    /* MS nibble last (default) */
>  		break;
> @@ -192,13 +192,13 @@ static int set_var(struct fbtft_par *par)
>  		/* Set RAM address control */
>  		write_reg(par, 0x88
>  			| (0x0 & 0x1) << 2 /* Increment positively */
> -			| (0x1 & 0x1) << 1 /* Increment page first */
> -			| (0x1 & 0x1));    /* Wrap around (default) */
> +			| (0x1 << 1) /* Increment page first */
> +			| 0x1);    /* Wrap around (default) */
>  
>  		/* Set LCD mapping */
>  		write_reg(par, 0xC0
> -			| (0x1 & 0x1) << 2 /* Mirror Y ON */
> -			| (0x1 & 0x1) << 1 /* Mirror X ON */
> +			| (0x1 << 2) /* Mirror Y ON */
> +			| (0x1 << 1) /* Mirror X ON */
>  			| (0x0 & 0x1));    /* MS nibble last (default) */
>  		break;
>  	default:
> @@ -206,12 +206,12 @@ static int set_var(struct fbtft_par *par)
>  		write_reg(par, 0x88
>  			| (0x0 & 0x1) << 2 /* Increment positively */
>  			| (0x0 & 0x1) << 1 /* Increment column first */
> -			| (0x1 & 0x1));    /* Wrap around (default) */
> +			| 0x1);    /* Wrap around (default) */
>  
>  		/* Set LCD mapping */
>  		write_reg(par, 0xC0
>  			| (0x0 & 0x1) << 2 /* Mirror Y OFF */
> -			| (0x1 & 0x1) << 1 /* Mirror X ON */
> +			| (0x1 << 1) /* Mirror X ON */
>  			| (0x0 & 0x1));    /* MS nibble last (default) */
>  		break;
>  	}
> -- 
> 1.8.3.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160303103355.GA5375%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
> 


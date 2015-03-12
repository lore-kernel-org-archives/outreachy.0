X-GM-THRID: 7888814735360
X-Received: by 10.112.125.67 with SMTP id mo3mr4974083lbb.6.1426191248865;
        Thu, 12 Mar 2015 13:14:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.228.169 with SMTP id sj9ls341509lac.35.gmail; Thu, 12 Mar
 2015 13:14:08 -0700 (PDT)
X-Received: by 10.152.4.229 with SMTP id n5mr6658587lan.1.1426191248401;
        Thu, 12 Mar 2015 13:14:08 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si617251wib.3.2015.03.12.13.14.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 13:14:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,390,1422918000"; 
   d="scan'208";a="103117793"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Mar 2015 21:14:07 +0100
Date: Thu, 12 Mar 2015 21:14:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtbt: Fix code style
 issues
In-Reply-To: <20150312143226.GA26267@akanksha>
Message-ID: <alpine.DEB.2.02.1503122113420.2064@localhost6.localdomain6>
References: <20150312143226.GA26267@akanksha>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 12 Mar 2015, Vatika Harlalka wrote:

> Reduce line size to increase readability and 
> remove unnecessary brackets.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/fbtft/fb_ra8875.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
> index e21af6c..14e8cf0 100644
> --- a/drivers/staging/fbtft/fb_ra8875.c
> +++ b/drivers/staging/fbtft/fb_ra8875.c
> @@ -72,12 +72,13 @@ static int init_display(struct fbtft_par *par)
>  
>  	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
>  		"%s()\n", __func__);
> -	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
> -		"display size %dx%d\n", par->info->var.xres, par->info->var.yres);
> +	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "display size %dx%d\n",
> +			par->info->var.xres, par->info->var.yres);

Is there a more standard printing function that you can use here (in 
another patch)?

julia

>  
>  	par->fbtftops.reset(par);
>  
> -	if ((par->info->var.xres == 320) && (par->info->var.yres == 240)) {
> +	if (par->info->var.xres == 320 &&
> +		par->info->var.yres == 240) {
>  		/* PLL clock frequency */
>  		write_reg(par, 0x88, 0x0A);
>  		write_reg(par, 0x89, 0x02);
> @@ -101,7 +102,8 @@ static int init_display(struct fbtft_par *par)
>  		write_reg(par, 0x1D, 0x0E);
>  		write_reg(par, 0x1E, 0x00);
>  		write_reg(par, 0x1F, 0x02);
> -	} else if ((par->info->var.xres == 480) && (par->info->var.yres == 272)) {
> +	} else if (par->info->var.xres == 480 && 
> +			par->info->var.yres == 272) {
>  		/* PLL clock frequency  */
>  		write_reg(par, 0x88, 0x0A);
>  		write_reg(par, 0x89, 0x02);
> @@ -125,7 +127,8 @@ static int init_display(struct fbtft_par *par)
>  		write_reg(par, 0x1D, 0x07);
>  		write_reg(par, 0x1E, 0x00);
>  		write_reg(par, 0x1F, 0x09);
> -	} else if ((par->info->var.xres == 640) && (par->info->var.yres == 480)) {
> +	} else if (par->info->var.xres == 640 &&
> +			par->info->var.yres == 480) {
>  		/* PLL clock frequency */
>  		write_reg(par, 0x88, 0x0B);
>  		write_reg(par, 0x89, 0x02);
> @@ -149,7 +152,8 @@ static int init_display(struct fbtft_par *par)
>  		write_reg(par, 0x1D, 0x0E);
>  		write_reg(par, 0x1E, 0x00);
>  		write_reg(par, 0x1F, 0x01);
> -	} else if ((par->info->var.xres == 800) && (par->info->var.yres == 480)) {
> +	} else if (par->info->var.xres == 800 &&
> +			par->info->var.yres == 480) {
>  		/* PLL clock frequency */
>  		write_reg(par, 0x88, 0x0B);
>  		write_reg(par, 0x89, 0x02);
> @@ -174,7 +178,8 @@ static int init_display(struct fbtft_par *par)
>  		write_reg(par, 0x1E, 0x00);
>  		write_reg(par, 0x1F, 0x01);
>  	} else {
> -		dev_err(par->info->device, "display size is not supported!!");
> +		dev_err(par->info->device,
> +			"display size is not supported!!");
>  		return -1;
>  	}
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150312143226.GA26267%40akanksha.
> For more options, visit https://groups.google.com/d/optout.
> 


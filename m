X-GM-THRID: 6664414939270086656
X-Received: by 2002:a25:355:: with SMTP id 82mr614702ybd.60.1551771979792;
        Mon, 04 Mar 2019 23:46:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3414:: with SMTP id b20ls1886693yba.2.gmail; Mon, 04 Mar
 2019 23:46:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqyZOqAtuxtRgEsKzFPVzgLZkHAW59NCvVSteB6IFbQzAmfPv3l8t9ZpDqECbVvAL/PafQVW
X-Received: by 2002:a25:1c2:: with SMTP id 185mr82447ybb.87.1551771978830;
        Mon, 04 Mar 2019 23:46:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551771978; cv=none;
        d=google.com; s=arc-20160816;
        b=eFzA1Ag1gvHjk6JVCp5w9U6epygPyj2UwPVDmJ9OEhNZzKdpsNkXiNayP8ak+2MSDH
         Y01GA9e/n74A2wu8w9ng7nifqjGFPGfCEunFBqOtMYZWl7hwYXF3wQoKHXbGTW4WVGpp
         R7ARagALJaX+mvpX1mSpNChQ40R9I/b1n1SfzKvzwgFbOyAIqUCKNj6GOU1+hGL7DRia
         pJouWmC22/9NZqCBfQ4/zVLHNQlUyFypCvFdHk99GCYaYb+kdzynj0t9vl526dAMdv13
         8Rrfjx7TbsYF1du1Hjcn+DGZ6JklPXr/EJm8iDEtPyIt72W0y6CMETi6VYZ+bxQ9Xd2v
         Akig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wUACVc8JvTpN/HZVu01XWZ+ZReoNo/hM+DzPFMSsj9M=;
        b=jgLuT+o/x4PMscOQl3r7DJdaX/fLmeDSMOXI3kXR+3JftPRTupy+5ssYtblh/jR9RF
         SiOvqGQdYk+AO3YnXM0+llonjKFoUaKUPhsPG98GGMpSHn134Xf+kpusXXlE/gabQ+yI
         LVQ8LtNuG7fiOp3DXlHklL45MnrU5LVURdy3dd/XT8ZTZPMo19s1vmIvCowDmoG+KhDD
         SALe17RumSolcSaFxJeO0ATJKU+AlKz/77clVwEFCltgLrG0Ca9QVt4WYMxHxJGAcyPC
         CTQj2Q6erSP38LUc5GX0S3wKd1OCjZUFAdtJ9si9LlRm1h1mkEJKmeFLyUb1zfolMc6P
         V1bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DxepvWl3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f23si419568yba.3.2019.03.04.23.46.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:46:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DxepvWl3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3A84C2082C;
	Tue,  5 Mar 2019 07:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551771977;
	bh=Ol3HeLXqeHpQ2FIFFzn+t08RkN9vy8bPWb3uz5v0LkQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DxepvWl3A0IU9JuL2tyzPIDCT54ZhVeI32Pg0FOOq4/7yqb2Jhmn78/5LeIFr3pba
	 lZ1uG2pdV9mwGAVnu8rW+96RWONb+8aiUeKlHpqWJq3Qok3pxXEPpJmOw4L2QyX2yH
	 lWFejhjd6nAr5fW/s/uX06OfjhMPfe57abtcZ+Pc=
Date: Tue, 5 Mar 2019 08:46:15 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 1/1] staging: fbtft: line over 80 characters.
Message-ID: <20190305074615.GC6158@kroah.com>
References: <20190304111754.GA3926@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304111754.GA3926@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 04:47:54PM +0530, Bhagyashri Dighole wrote:
> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters"
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v2:
>   - Improve code order.
>   - Make the code more readable.
> 
>  drivers/staging/fbtft/fb_ssd1306.c  |  3 ++-
>  drivers/staging/fbtft/fb_ssd1331.c  |  3 ++-
>  drivers/staging/fbtft/fbtft-sysfs.c |  3 ++-
>  drivers/staging/fbtft/fbtft.h       | 20 ++++++++++++++------
>  drivers/staging/fbtft/flexfb.c      | 12 ++++++++----
>  5 files changed, 28 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
> index d7c5e2e..412871b 100644
> --- a/drivers/staging/fbtft/fb_ssd1306.c
> +++ b/drivers/staging/fbtft/fb_ssd1306.c
> @@ -184,7 +184,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  		for (y = 0; y < yres / 8; y++) {
>  			*buf = 0x00;
>  			for (i = 0; i < 8; i++)
> -				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
> +				*buf |= (vmem16[(y * 8 + i) * xres + x] ?
> +						 1 : 0) << i;

This is now harder to read, the original was fine.

Well, it was horrible, the whole ? : style is a mess and impossible to
read.  I would just rewrite that as a proper if() statement as I have no
idea what the code is doing when I first look at it :(


>  			buf++;
>  		}
>  	}
> diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
> index 9f54fe2..4cfe9f8 100644
> --- a/drivers/staging/fbtft/fb_ssd1331.c
> +++ b/drivers/staging/fbtft/fb_ssd1331.c
> @@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
>  		for (i = 0; i < len; i++)
>  			buf[i] = (u8)va_arg(args, unsigned int);
>  		va_end(args);
> -		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device, u8, buf, len, "%s: ", __func__);
> +		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device,
> +				  u8, buf, len, "%s: ", __func__);

This is fine.

>  	}
>  
>  	va_start(args, len);
> diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
> index 2a5c630..26c971f 100644
> --- a/drivers/staging/fbtft/fbtft-sysfs.c
> +++ b/drivers/staging/fbtft/fbtft-sysfs.c
> @@ -68,7 +68,8 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
>  			ret = get_next_ulong(&curve_p, &val, " ", 16);
>  			if (ret)
>  				goto out;
> -			curves[curve_counter * par->gamma.num_values + value_counter] = val;
> +			curves[curve_counter * par->gamma.num_values + value_counter]
> +				= val;

Not good, the original is fine.


>  			value_counter++;
>  		}
>  		if (value_counter != par->gamma.num_values) {
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 7fdd3b0..7b66926 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -347,9 +347,15 @@ module_exit(fbtft_driver_module_exit);
>  
>  /* shorthand debug levels */
>  #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
> -#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
> -#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
> -#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
> +#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS	   \
> +			| DEBUG_TIME_FIRST_UPDATE)

We normally write things with the operator at the end of the line, so
this would be:

#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS |	\
			 DEBUG_TIME_FIRST_UPDATE)

Also note the tab before the '\' character so you can line them all up
with the other entries below.



> +#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY  \
> +			| DEBUG_BLANK |  DEBUG_REQUEST_GPIOS		   \
> +			| DEBUG_FREE_GPIOS | DEBUG_VERI Y_GPIOS		   \
> +			| DEBUG_BACKLIGHT | DEBUG_SYSFS)
> +#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE	   \
> +			| DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA		   \
> +			| DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
>  #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
>  #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
>  #define DEBUG_LEVEL_7	0xFFFFFFFF
> @@ -390,9 +396,11 @@ module_exit(fbtft_driver_module_exit);
>  
>  #define fbtft_init_dbg(dev, format, arg...)                  \
>  do {                                                         \
> -	if (unlikely((dev)->platform_data &&                 \
> -	    (((struct fbtft_platform_data *)(dev)->platform_data)->display.debug & DEBUG_DRIVER_INIT_FUNCTIONS))) \
> -		dev_info(dev, format, ##arg);                \
> +	if (unlikely((dev)->platform_data &&		     \
> +	    (((struct fbtft_platform_data *)                 \
> +	      (dev)->platform_data)->display.debug	     \
> +	     & DEBUG_DRIVER_INIT_FUNCTIONS)))		     \
> +		dev_info(dev, format, ##arg);

The original code is fine, I would just leave it alone.



>  } while (0)
>  
>  #define fbtft_par_dbg(level, par, format, arg...)            \
> diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
> index c5fa591..48e9c73 100644
> --- a/drivers/staging/fbtft/flexfb.c
> +++ b/drivers/staging/fbtft/flexfb.c
> @@ -667,11 +667,13 @@ static int flexfb_probe_common(struct spi_device *sdev,
>  		case 8:
>  			par->fbtftops.write_vmem = fbtft_write_vmem16_bus8;
>  			if (!par->startbyte)
> -				par->fbtftops.verify_gpios = flexfb_verify_gpios_dc;
> +				par->fbtftops.verify_gpios =
> +					flexfb_verify_gpios_dc;

Original is fine.

>  			break;
>  		case 9:
>  			if (regwidth == 16) {
> -				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
> +				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n",
> +					regwidth, buswidth);

This change is good.

>  				return -EINVAL;
>  			}
>  			par->fbtftops.write_register = fbtft_write_reg8_bus9;
> @@ -712,13 +714,15 @@ static int flexfb_probe_common(struct spi_device *sdev,
>  		case 16:
>  			par->fbtftops.write_register = fbtft_write_reg16_bus16;
>  			if (latched)
> -				par->fbtftops.write = fbtft_write_gpio16_wr_latched;
> +				par->fbtftops.write =
> +					fbtft_write_gpio16_wr_latched;

Original is fine.

>  			else
>  				par->fbtftops.write = fbtft_write_gpio16_wr;
>  			par->fbtftops.write_vmem = fbtft_write_vmem16_bus16;
>  			break;
>  		default:
> -			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n", buswidth);
> +			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n",
> +				buswidth);

This change is good.

Can you fix this patch up based on these comments and resend?

thanks,

greg k-h


X-GM-THRID: 6664414939270086656
X-Received: by 2002:a1c:c00d:: with SMTP id q13mr1791737wmf.5.1552142641495;
        Sat, 09 Mar 2019 06:44:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c0cc:: with SMTP id s12ls94764wmh.14.gmail; Sat, 09 Mar
 2019 06:44:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqxT7MlbBfm04uqfz/H66DOgK3S4Y+QcidfQ2yeZhzyZxjLW+vKBwQFVVCS/rOMl+C/TrFgk
X-Received: by 2002:a7b:c40e:: with SMTP id k14mr1667891wmi.12.1552142640705;
        Sat, 09 Mar 2019 06:44:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552142640; cv=none;
        d=google.com; s=arc-20160816;
        b=o4d9JCGAt6AddXVqF64zXlC35y+VG2HBsfhxFef0btWLDTXBZOj2QvY6k5ypcW1pt7
         gkjhRpC3FxENprUeIBjqF9OU7wxm6AqvC45tH9fx7Fnp6aDU5iwA2/WqEgf1358tzHzT
         0sXRAvQpbcfgr6eRaL6OT5D7U0wijvV5y5uDBoyygTtJFwOhH8EXx4BMAqpAhLxetC5B
         zb2nDTFqxdtvG8a2RyX6poVwjk4aaiGpm99T/t9J7d6c2XKwaGMhPtnKJcNnow0rbPRO
         GuMmL1AjzgCDy9QXyl+4UX+zYeoVeKBA9jbZ2XawdJ7iuR8s4RKiC1x15O1pnrloOB1l
         Z4Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=vlGHix8tlVvqKvhfvyIJy9ZAsa/rUIl02ZSf780HkaI=;
        b=rh3hPiR3DpAQHvqVGP1MqFkIVuk+u2GZtgFMKJ28cjNQ9dPb413Bhv+sYfIe9H0a+6
         N8mEW20H+aXPVnjUCOZ7IHXX5VLjoO6CfaPXGsnHXSLMfG+FDYfSwXu1u2Uw8vm5LQAM
         Qw+Odv+dPs+N9C6ArEbhS2CWUC5Bc/D3VXwO7aktubLyS2H3Ex2Lg5+jQ8E3MY2b2aXX
         IMRiWWBebRn/lr8Mf2wlqsii2ezE4NHzMTgzN3e1foFyIXwJjiPTmo551chPjjNkmpjO
         b8mrHWZk9pqNNoLd5JOjmsrNBV9sNs4j4Q0iem2pzWK1tEWLgJ0kmUALaII1khlbwC1W
         3TDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b134si430045wmd.2.2019.03.09.06.44.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 06:44:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,460,1544482800"; 
   d="scan'208";a="298658906"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 15:43:59 +0100
Date: Sat, 9 Mar 2019 15:43:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: fbtft: line over 80
 characters.
In-Reply-To: <20190309143505.GA14822@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1903091543120.2452@hadrien>
References: <20190309143505.GA14822@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Mar 2019, Bhagyashri Dighole wrote:

> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters".
>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v4:
>   - Convert a ternary statement into a if statement.
>
> Changes in v3:
>   - Make the code in original form.
>   - Use tab to line up the code.
>
> Changes in v2:
>   - Improve code order.
>   - Make the code more readable.
>
>  drivers/staging/fbtft/fb_ssd1306.c |  5 ++++-
>  drivers/staging/fbtft/fb_ssd1331.c |  3 ++-
>  drivers/staging/fbtft/fbtft.h      | 14 +++++++++++---
>  drivers/staging/fbtft/flexfb.c     |  3 ++-
>  4 files changed, 19 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
> index d7c5e2e..22c506a 100644
> --- a/drivers/staging/fbtft/fb_ssd1306.c
> +++ b/drivers/staging/fbtft/fb_ssd1306.c
> @@ -184,7 +184,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  		for (y = 0; y < yres / 8; y++) {
>  			*buf = 0x00;
>  			for (i = 0; i < 8; i++)
> -				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
> +				if (vmem16[(y * 8 + i) * xres + x])
> +					*buf |= (1 << i);
> +				else
> +					*buf |= (0 << i);

You don't need the parentheses.

I think that the above should be in a different patch than the rest, since
you do more than just add newlines.

julia


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
>  	}
>
>  	va_start(args, len);
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 7fdd3b0..22c0c5d 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -347,9 +347,17 @@ module_exit(fbtft_driver_module_exit);
>
>  /* shorthand debug levels */
>  #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
> -#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
> -#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
> -#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
> +#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS |	\
> +			 DEBUG_TIME_FIRST_UPDATE)			\
> +#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET |			\
> +			 DEBUG_INIT_DISPLAY | DEBUG_BLANK |		\
> +			 DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS |	\
> +			 DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT |		\
> +			 DEBUG_SYSFS)					\
> +#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ |		\
> +			 DEBUG_FB_WRITE | DEBUG_FB_FILLRECT |		\
> +			 DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT |	\
> +			 DEBUG_FB_BLANK)
>  #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
>  #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
>  #define DEBUG_LEVEL_7	0xFFFFFFFF
> diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
> index b91b459..3747321 100644
> --- a/drivers/staging/fbtft/flexfb.c
> +++ b/drivers/staging/fbtft/flexfb.c
> @@ -671,7 +671,8 @@ static int flexfb_probe_common(struct spi_device *sdev,
>  			break;
>  		case 9:
>  			if (regwidth == 16) {
> -				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
> +				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n",
> +					regwidth, buswidth);
>  				return -EINVAL;
>  			}
>  			par->fbtftops.write_register = fbtft_write_reg8_bus9;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190309143505.GA14822%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>


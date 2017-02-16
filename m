X-GM-THRID: 6387802033040130048
X-Received: by 10.223.131.2 with SMTP id 2mr243469wrd.5.1487277195860;
        Thu, 16 Feb 2017 12:33:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.213 with SMTP id 204ls78037ljf.43.gmail; Thu, 16 Feb 2017
 12:33:15 -0800 (PST)
X-Received: by 10.46.80.86 with SMTP id v22mr429305ljd.27.1487277195163;
        Thu, 16 Feb 2017 12:33:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si110923wmf.0.2017.02.16.12.33.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 12:33:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,169,1484002800"; 
   d="scan'208";a="260840519"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2017 21:32:55 +0100
Date: Thu, 16 Feb 2017 21:32:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, thomas.petazzoni@free-electrons.com, 
    noralf@tronnes.org, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: fbtft: Match alignment
 with open parentheses
In-Reply-To: <0288025ef30110c57105eedd446189cdc10a8be4.1487275508.git.gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702162132420.2121@hadrien>
References: <cover.1487275508.git.gs051095@gmail.com> <0288025ef30110c57105eedd446189cdc10a8be4.1487275508.git.gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Fri, 17 Feb 2017, Gargi Sharma wrote:

> Indent code to match alignment with open parentheses, to
> fix the checkpatch issue alignment should match open parenthesis.

Good job on the commit message here.

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft-core.c | 54 +++++++++++++++++++-------------------
>  1 file changed, 27 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
> index 7c8af29..ee842e9 100644
> --- a/drivers/staging/fbtft/fbtft-core.c
> +++ b/drivers/staging/fbtft/fbtft-core.c
> @@ -44,7 +44,7 @@ module_param(debug, ulong, 0000);
>  MODULE_PARM_DESC(debug, "override device debug level");
>
>  void fbtft_dbg_hex(const struct device *dev, int groupsize,
> -			void *buf, size_t len, const char *fmt, ...)
> +		   void *buf, size_t len, const char *fmt, ...)
>  {
>  	va_list args;
>  	static char textbuf[512];
> @@ -56,7 +56,7 @@ void fbtft_dbg_hex(const struct device *dev, int groupsize,
>  	va_end(args);
>
>  	hex_dump_to_buffer(buf, len, 32, groupsize, text + text_len,
> -				512 - text_len, false);
> +			   512 - text_len, false);
>
>  	if (len > 32)
>  		dev_info(dev, "%s ...\n", text);
> @@ -66,13 +66,13 @@ void fbtft_dbg_hex(const struct device *dev, int groupsize,
>  EXPORT_SYMBOL(fbtft_dbg_hex);
>
>  static unsigned long fbtft_request_gpios_match(struct fbtft_par *par,
> -					const struct fbtft_gpio *gpio)
> +					       const struct fbtft_gpio *gpio)
>  {
>  	int ret;
>  	long val;
>
>  	fbtft_par_dbg(DEBUG_REQUEST_GPIOS_MATCH, par, "%s('%s')\n",
> -		__func__, gpio->name);
> +		      __func__, gpio->name);
>
>  	if (strcasecmp(gpio->name, "reset") == 0) {
>  		par->gpio.reset = gpio->gpio;
> @@ -141,8 +141,8 @@ static int fbtft_request_gpios(struct fbtft_par *par)
>  				return ret;
>  			}
>  			fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par,
> -				"%s: '%s' = GPIO%d\n",
> -				__func__, gpio->name, gpio->gpio);
> +				      "%s: '%s' = GPIO%d\n",
> +				      __func__, gpio->name, gpio->gpio);
>  		}
>  		gpio++;
>  	}
> @@ -175,7 +175,7 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
>  		flags = (of_flags & OF_GPIO_ACTIVE_LOW) ? GPIOF_OUT_INIT_LOW :
>  							GPIOF_OUT_INIT_HIGH;
>  		ret = devm_gpio_request_one(dev, gpio, flags,
> -						dev->driver->name);
> +					    dev->driver->name);
>  		if (ret) {
>  			dev_err(dev,
>  				"gpio_request_one('%s'=%d) failed with %d\n",
> @@ -185,7 +185,7 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
>  		if (gpiop)
>  			*gpiop = gpio;
>  		fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' = GPIO%d\n",
> -							__func__, name, gpio);
> +			      __func__, name, gpio);
>  	}
>
>  	return ret;
> @@ -219,15 +219,15 @@ static int fbtft_request_gpios_dt(struct fbtft_par *par)
>  		return ret;
>  	for (i = 0; i < 16; i++) {
>  		ret = fbtft_request_one_gpio(par, "db-gpios", i,
> -						&par->gpio.db[i]);
> +					     &par->gpio.db[i]);
>  		if (ret)
>  			return ret;
>  		ret = fbtft_request_one_gpio(par, "led-gpios", i,
> -						&par->gpio.led[i]);
> +					     &par->gpio.led[i]);
>  		if (ret)
>  			return ret;
>  		ret = fbtft_request_one_gpio(par, "aux-gpios", i,
> -						&par->gpio.aux[i]);
> +					     &par->gpio.aux[i]);
>  		if (ret)
>  			return ret;
>  	}
> @@ -282,7 +282,7 @@ void fbtft_register_backlight(struct fbtft_par *par)
>
>  	if (par->gpio.led[0] == -1) {
>  		fbtft_par_dbg(DEBUG_BACKLIGHT, par,
> -			"%s(): led pin not set, exiting.\n", __func__);
> +			      "%s(): led pin not set, exiting.\n", __func__);
>  		return;
>  	}
>
> @@ -348,8 +348,8 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned int start_line,
>  	if (unlikely(par->debug & (DEBUG_TIME_FIRST_UPDATE |
>  			DEBUG_TIME_EACH_UPDATE))) {
>  		if ((par->debug & DEBUG_TIME_EACH_UPDATE) ||
> -				((par->debug & DEBUG_TIME_FIRST_UPDATE) &&
> -				!par->first_update_done)) {
> +		    ((par->debug & DEBUG_TIME_FIRST_UPDATE) &&
> +		    !par->first_update_done)) {
>  			ts_start = ktime_get();
>  			timeit = true;
>  		}
> @@ -374,7 +374,7 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned int start_line,
>  	}
>
>  	fbtft_par_dbg(DEBUG_UPDATE_DISPLAY, par, "%s(start_line=%u, end_line=%u)\n",
> -		__func__, start_line, end_line);
> +		      __func__, start_line, end_line);
>
>  	if (par->fbtftops.set_addr_win)
>  		par->fbtftops.set_addr_win(par, 0, start_line,
> @@ -402,8 +402,8 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned int start_line,
>  		throughput = throughput * 1000 / 1024;
>
>  		dev_info(par->info->device,
> -			"Display update: %ld kB/s, fps=%ld\n",
> -			throughput, fps);
> +			 "Display update: %ld kB/s, fps=%ld\n",
> +			 throughput, fps);
>  		par->first_update_done = true;
>  	}
>  }
> @@ -963,10 +963,10 @@ int fbtft_register_framebuffer(struct fb_info *fb_info)
>  		sprintf(text2, ", spi%d.%d at %d MHz", spi->master->bus_num,
>  			spi->chip_select, spi->max_speed_hz / 1000000);
>  	dev_info(fb_info->dev,
> -		"%s frame buffer, %dx%d, %d KiB video memory%s, fps=%lu%s\n",
> -		fb_info->fix.id, fb_info->var.xres, fb_info->var.yres,
> -		fb_info->fix.smem_len >> 10, text1,
> -		HZ / fb_info->fbdefio->delay, text2);
> +		 "%s frame buffer, %dx%d, %d KiB video memory%s, fps=%lu%s\n",
> +		 fb_info->fix.id, fb_info->var.xres, fb_info->var.yres,
> +		 fb_info->fix.smem_len >> 10, text1,
> +		 HZ / fb_info->fbdefio->delay, text2);
>
>  #ifdef CONFIG_FB_BACKLIGHT
>  	/* Turn on backlight if available */
> @@ -1049,7 +1049,7 @@ static int fbtft_init_display_dt(struct fbtft_par *par)
>  			}
>  			/* make debug message */
>  			fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
> -				"init: write_register:\n");
> +				      "init: write_register:\n");
>  			for (j = 0; j < i; j++)
>  				fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
>  					      "buf[%d] = %02X\n", j, buf[j]);
> @@ -1073,12 +1073,12 @@ static int fbtft_init_display_dt(struct fbtft_par *par)
>  				buf[60], buf[61], buf[62], buf[63]);
>  		} else if (val & FBTFT_OF_INIT_DELAY) {
>  			fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
> -				"init: msleep(%u)\n", val & 0xFFFF);
> +				      "init: msleep(%u)\n", val & 0xFFFF);
>  			msleep(val & 0xFFFF);
>  			p = of_prop_next_u32(prop, p, &val);
>  		} else {
>  			dev_err(par->info->device, "illegal init value 0x%X\n",
> -									val);
> +				val);
>  			return -EINVAL;
>  		}
>  	}
> @@ -1153,8 +1153,8 @@ int fbtft_init_display(struct fbtft_par *par)
>  				j++;
>  			}
>  			fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
> -				"init: write(0x%02X) %s\n",
> -				par->init_sequence[i], msg);
> +				      "init: write(0x%02X) %s\n",
> +				      par->init_sequence[i], msg);
>
>  			/* Write */
>  			j = 0;
> @@ -1447,7 +1447,7 @@ int fbtft_remove_common(struct device *dev, struct fb_info *info)
>  	par = info->par;
>  	if (par)
>  		fbtft_par_dbg(DEBUG_DRIVER_INIT_FUNCTIONS, par,
> -			"%s()\n", __func__);
> +			      "%s()\n", __func__);
>  	fbtft_unregister_framebuffer(info);
>  	fbtft_framebuffer_release(info);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0288025ef30110c57105eedd446189cdc10a8be4.1487275508.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 3862924623872
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d15804775f3fd6a6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.161.9 with SMTP id xo9mr1582595lbb.7.1424981241361;
        Thu, 26 Feb 2015 12:07:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.140 with SMTP id jo12ls84799lab.19.gmail; Thu, 26 Feb
 2015 12:07:20 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr1584180lbb.9.1424981240986;
        Thu, 26 Feb 2015 12:07:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si1424740wib.2.2015.02.26.12.07.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 12:07:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,654,1418079600"; 
   d="scan'208";a="123566787"
Received: from ppp-188-174-123-88.dynamic.mnet-online.de (HELO [192.168.1.53]) ([188.174.123.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2015 21:07:20 +0100
Date: Thu, 26 Feb 2015 21:07:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Fix simple_strtoul
 is obsolete, use kstrtoul instead
In-Reply-To: <1424976767-7344-1-git-send-email-yeliztaneroglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502262106500.3032@hadrien>
References: <1424976767-7344-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, Yeliz Taneroglu wrote:

> This patch fixes "simple_strtoul is obsolete, use kstrtoul instead"
> warning in kobjects.c

There is something quite wrong with your patch, because it is deleting a
file completely.

julia

> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/fbtft/fb_tls8204.c | 177 -------------------------------------
>  drivers/staging/speakup/kobjects.c |   4 +-
>  2 files changed, 2 insertions(+), 179 deletions(-)
>  delete mode 100644 drivers/staging/fbtft/fb_tls8204.c
>
> diff --git a/drivers/staging/fbtft/fb_tls8204.c b/drivers/staging/fbtft/fb_tls8204.c
> deleted file mode 100644
> index e8a3e2f..0000000
> --- a/drivers/staging/fbtft/fb_tls8204.c
> +++ /dev/null
> @@ -1,177 +0,0 @@
> -/*
> - * FB driver for the TLS8204 LCD Controller
> - *
> - * The display is monochrome and the video memory is RGB565.
> - * Any pixel value except 0 turns the pixel on.
> - *
> - * Copyright (C) 2013 Noralf Tronnes
> - * Copyright (C) 2014 Michael Hope (adapted for the TLS8204)
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> - */
> -
> -#include <linux/module.h>
> -#include <linux/kernel.h>
> -#include <linux/init.h>
> -#include <linux/gpio.h>
> -#include <linux/spi/spi.h>
> -#include <linux/delay.h>
> -
> -#include "fbtft.h"
> -
> -#define DRVNAME		"fb_tls8204"
> -#define WIDTH		84
> -#define HEIGHT		48
> -#define TXBUFLEN	WIDTH
> -#define DEFAULT_GAMMA	"40" /* gamma is used to control contrast in this driver */
> -
> -static unsigned bs = 4;
> -module_param(bs, uint, 0);
> -MODULE_PARM_DESC(bs, "BS[2:0] Bias voltage level: 0-7 (default: 4)");
> -
> -static int init_display(struct fbtft_par *par)
> -{
> -	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
> -
> -	par->fbtftops.reset(par);
> -
> -	/* Enter extended command mode */
> -	write_reg(par, 0x21); /* 5:1  1
> -				 2:0  PD - Powerdown control: chip is active
> -				 1:0  V  - Entry mode: horizontal addressing
> -				 0:1  H  - Extended instruction set control: extended
> -			      */
> -
> -	/* H=1 Bias system */
> -	write_reg(par, 0x10 | (bs & 0x7)); /*
> -				 4:1  1
> -				 3:0  0
> -				 2:x  BS2 - Bias System
> -				 1:x  BS1
> -				 0:x  BS0
> -			      */
> -
> -	/* Set the address of the first display line. */
> -	write_reg(par, 0x04 | (64 >> 6));
> -	write_reg(par, 0x40 | (64 & 0x3F));
> -
> -	/* Enter H=0 standard command mode */
> -	write_reg(par, 0x20);
> -
> -	/* H=0 Display control */
> -	write_reg(par, 0x08 | 4); /*
> -				 3:1  1
> -				 2:1  D  - DE: 10=normal mode
> -				 1:0  0
> -				 0:0  E
> -			      */
> -
> -	return 0;
> -}
> -
> -static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
> -{
> -	fbtft_par_dbg(DEBUG_SET_ADDR_WIN, par, "%s(xs=%d, ys=%d, xe=%d, ye=%d)\n", __func__, xs, ys, xe, ye);
> -
> -	/* H=0 Set X address of RAM */
> -	write_reg(par, 0x80); /* 7:1  1
> -				 6-0: X[6:0] - 0x00
> -			      */
> -
> -	/* H=0 Set Y address of RAM */
> -	write_reg(par, 0x40); /* 7:0  0
> -				 6:1  1
> -				 2-0: Y[2:0] - 0x0
> -			      */
> -}
> -
> -static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
> -{
> -	u16 *vmem16 = (u16 *)par->info->screen_base;
> -	int x, y, i;
> -	int ret = 0;
> -
> -	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
> -
> -	for (y = 0; y < HEIGHT/8; y++) {
> -		u8 *buf = par->txbuf.buf;
> -		/* The display is 102x68 but the LCD is 84x48.  Set
> -		   the write pointer at the start of each row. */
> -		gpio_set_value(par->gpio.dc, 0);
> -		write_reg(par, 0x80 | 0);
> -		write_reg(par, 0x40 | y);
> -
> -		for (x = 0; x < WIDTH; x++) {
> -			u8 ch = 0;
> -
> -			for (i = 0; i < 8*WIDTH; i += WIDTH) {
> -				ch >>= 1;
> -				if (vmem16[(y*8*WIDTH)+i+x])
> -					ch |= 0x80;
> -			}
> -			*buf++ = ch;
> -		}
> -		/* Write the row */
> -		gpio_set_value(par->gpio.dc, 1);
> -		ret = par->fbtftops.write(par, par->txbuf.buf, WIDTH);
> -		if (ret < 0) {
> -			dev_err(par->info->device,
> -				"%s: write failed and returned: %d\n", __func__, ret);
> -			break;
> -		}
> -	}
> -
> -	return ret;
> -}
> -
> -static int set_gamma(struct fbtft_par *par, unsigned long *curves)
> -{
> -	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
> -
> -	/* apply mask */
> -	curves[0] &= 0x7F;
> -
> -	write_reg(par, 0x21); /* turn on extended instruction set */
> -	write_reg(par, 0x80 | curves[0]);
> -	write_reg(par, 0x20); /* turn off extended instruction set */
> -
> -	return 0;
> -}
> -
> -
> -static struct fbtft_display display = {
> -	.regwidth = 8,
> -	.width = WIDTH,
> -	.height = HEIGHT,
> -	.txbuflen = TXBUFLEN,
> -	.gamma_num = 1,
> -	.gamma_len = 1,
> -	.gamma = DEFAULT_GAMMA,
> -	.fbtftops = {
> -		.init_display = init_display,
> -		.set_addr_win = set_addr_win,
> -		.write_vmem = write_vmem,
> -		.set_gamma = set_gamma,
> -	},
> -	.backlight = 1,
> -};
> -FBTFT_REGISTER_DRIVER(DRVNAME, "teralane,tls8204", &display);
> -
> -MODULE_ALIAS("spi:" DRVNAME);
> -MODULE_ALIAS("spi:tls8204");
> -
> -MODULE_DESCRIPTION("FB driver for the TLS8204 LCD Controller");
> -MODULE_AUTHOR("Michael Hope");
> -MODULE_LICENSE("GPL");
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 3708bc1..a52573e 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -153,7 +153,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  			continue;
>  		}
>
> -		index = simple_strtoul(cp, &temp, 10);
> +		index = kstrtoul(cp, &temp, 10);
>  		if (index > 255) {
>  			rejected++;
>  			cp = linefeed + 1;
> @@ -782,7 +782,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
>  			continue;
>  		}
>
> -		index = simple_strtoul(cp, &temp, 10);
> +		index = kstrtoul(cp, &temp, 10);
>
>  		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
>  			temp++;
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424976767-7344-1-git-send-email-yeliztaneroglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


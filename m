X-GM-THRID: 3862924623872
X-Received: by 10.152.88.40 with SMTP id bd8mr1537801lab.0.1424976758645;
        Thu, 26 Feb 2015 10:52:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.71 with SMTP id i7ls73790lai.44.gmail; Thu, 26 Feb 2015
 10:52:38 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr1514569lbo.8.1424976758138;
        Thu, 26 Feb 2015 10:52:38 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id ev8si1409512wib.3.2015.02.26.10.52.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:52:38 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id l18so13735106wgh.7
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 10:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ORVYEOm1CjJ1rxB2NPDGKsfqdt1VHsi0hWao+D21jgo=;
        b=ThGjVx9UBiBqia6bvvjtPqWHx2YHC6N//taDVER7uItnGLk2xmJogx1IBdfKx91LJx
         OAzqbpjaguH4WOyAQafkMNuqmj5NPdUAGnqzOhVnh8pE850pFkbBTQiD5n8oU3ZLa3hP
         dA7lxSEAmgaBJLmrIcEsCQjis3WVpuKx8rB0ugKyRQ9/Z6wrM2rGK7CntMtdP4PUSMO3
         8qq5SWeCUIyGO2jz9l+lH+sTeaDGvSceXs6rQiTEh3mkjIchrNjxMoEqz3NBj0oRn+XD
         6ry7zQp5oPl6BF57hPTUXoXtRtFRoo1VlDUsvO2o89urGUV8lIXadn5ssHlytxrmNbid
         TL5A==
X-Received: by 10.181.8.225 with SMTP id dn1mr54172419wid.55.1424976758023;
        Thu, 26 Feb 2015 10:52:38 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from yeliz-N56DP.comu.edu.tr ([193.255.97.48])
        by mx.google.com with ESMTPSA id lb6sm1717987wjb.22.2015.02.26.10.52.37
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 10:52:37 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: speakup: Fix simple_strtoul is obsolete, use kstrtoul instead
Date: Thu, 26 Feb 2015 20:52:47 +0200
Message-Id: <1424976767-7344-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes "simple_strtoul is obsolete, use kstrtoul instead"
warning in kobjects.c

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/fbtft/fb_tls8204.c | 177 -------------------------------------
 drivers/staging/speakup/kobjects.c |   4 +-
 2 files changed, 2 insertions(+), 179 deletions(-)
 delete mode 100644 drivers/staging/fbtft/fb_tls8204.c

diff --git a/drivers/staging/fbtft/fb_tls8204.c b/drivers/staging/fbtft/fb_tls8204.c
deleted file mode 100644
index e8a3e2f..0000000
--- a/drivers/staging/fbtft/fb_tls8204.c
+++ /dev/null
@@ -1,177 +0,0 @@
-/*
- * FB driver for the TLS8204 LCD Controller
- *
- * The display is monochrome and the video memory is RGB565.
- * Any pixel value except 0 turns the pixel on.
- *
- * Copyright (C) 2013 Noralf Tronnes
- * Copyright (C) 2014 Michael Hope (adapted for the TLS8204)
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
- */
-
-#include <linux/module.h>
-#include <linux/kernel.h>
-#include <linux/init.h>
-#include <linux/gpio.h>
-#include <linux/spi/spi.h>
-#include <linux/delay.h>
-
-#include "fbtft.h"
-
-#define DRVNAME		"fb_tls8204"
-#define WIDTH		84
-#define HEIGHT		48
-#define TXBUFLEN	WIDTH
-#define DEFAULT_GAMMA	"40" /* gamma is used to control contrast in this driver */
-
-static unsigned bs = 4;
-module_param(bs, uint, 0);
-MODULE_PARM_DESC(bs, "BS[2:0] Bias voltage level: 0-7 (default: 4)");
-
-static int init_display(struct fbtft_par *par)
-{
-	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
-
-	par->fbtftops.reset(par);
-
-	/* Enter extended command mode */
-	write_reg(par, 0x21); /* 5:1  1
-				 2:0  PD - Powerdown control: chip is active
-				 1:0  V  - Entry mode: horizontal addressing
-				 0:1  H  - Extended instruction set control: extended
-			      */
-
-	/* H=1 Bias system */
-	write_reg(par, 0x10 | (bs & 0x7)); /*
-				 4:1  1
-				 3:0  0
-				 2:x  BS2 - Bias System
-				 1:x  BS1
-				 0:x  BS0
-			      */
-
-	/* Set the address of the first display line. */
-	write_reg(par, 0x04 | (64 >> 6));
-	write_reg(par, 0x40 | (64 & 0x3F));
-
-	/* Enter H=0 standard command mode */
-	write_reg(par, 0x20);
-
-	/* H=0 Display control */
-	write_reg(par, 0x08 | 4); /*
-				 3:1  1
-				 2:1  D  - DE: 10=normal mode
-				 1:0  0
-				 0:0  E
-			      */
-
-	return 0;
-}
-
-static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
-{
-	fbtft_par_dbg(DEBUG_SET_ADDR_WIN, par, "%s(xs=%d, ys=%d, xe=%d, ye=%d)\n", __func__, xs, ys, xe, ye);
-
-	/* H=0 Set X address of RAM */
-	write_reg(par, 0x80); /* 7:1  1
-				 6-0: X[6:0] - 0x00
-			      */
-
-	/* H=0 Set Y address of RAM */
-	write_reg(par, 0x40); /* 7:0  0
-				 6:1  1
-				 2-0: Y[2:0] - 0x0
-			      */
-}
-
-static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
-{
-	u16 *vmem16 = (u16 *)par->info->screen_base;
-	int x, y, i;
-	int ret = 0;
-
-	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
-
-	for (y = 0; y < HEIGHT/8; y++) {
-		u8 *buf = par->txbuf.buf;
-		/* The display is 102x68 but the LCD is 84x48.  Set
-		   the write pointer at the start of each row. */
-		gpio_set_value(par->gpio.dc, 0);
-		write_reg(par, 0x80 | 0);
-		write_reg(par, 0x40 | y);
-
-		for (x = 0; x < WIDTH; x++) {
-			u8 ch = 0;
-
-			for (i = 0; i < 8*WIDTH; i += WIDTH) {
-				ch >>= 1;
-				if (vmem16[(y*8*WIDTH)+i+x])
-					ch |= 0x80;
-			}
-			*buf++ = ch;
-		}
-		/* Write the row */
-		gpio_set_value(par->gpio.dc, 1);
-		ret = par->fbtftops.write(par, par->txbuf.buf, WIDTH);
-		if (ret < 0) {
-			dev_err(par->info->device,
-				"%s: write failed and returned: %d\n", __func__, ret);
-			break;
-		}
-	}
-
-	return ret;
-}
-
-static int set_gamma(struct fbtft_par *par, unsigned long *curves)
-{
-	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
-
-	/* apply mask */
-	curves[0] &= 0x7F;
-
-	write_reg(par, 0x21); /* turn on extended instruction set */
-	write_reg(par, 0x80 | curves[0]);
-	write_reg(par, 0x20); /* turn off extended instruction set */
-
-	return 0;
-}
-
-
-static struct fbtft_display display = {
-	.regwidth = 8,
-	.width = WIDTH,
-	.height = HEIGHT,
-	.txbuflen = TXBUFLEN,
-	.gamma_num = 1,
-	.gamma_len = 1,
-	.gamma = DEFAULT_GAMMA,
-	.fbtftops = {
-		.init_display = init_display,
-		.set_addr_win = set_addr_win,
-		.write_vmem = write_vmem,
-		.set_gamma = set_gamma,
-	},
-	.backlight = 1,
-};
-FBTFT_REGISTER_DRIVER(DRVNAME, "teralane,tls8204", &display);
-
-MODULE_ALIAS("spi:" DRVNAME);
-MODULE_ALIAS("spi:tls8204");
-
-MODULE_DESCRIPTION("FB driver for the TLS8204 LCD Controller");
-MODULE_AUTHOR("Michael Hope");
-MODULE_LICENSE("GPL");
diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 3708bc1..a52573e 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -153,7 +153,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 			continue;
 		}
 
-		index = simple_strtoul(cp, &temp, 10);
+		index = kstrtoul(cp, &temp, 10);
 		if (index > 255) {
 			rejected++;
 			cp = linefeed + 1;
@@ -782,7 +782,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 			continue;
 		}
 
-		index = simple_strtoul(cp, &temp, 10);
+		index = kstrtoul(cp, &temp, 10);
 
 		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
 			temp++;
-- 
1.8.3.2



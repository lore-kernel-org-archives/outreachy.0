X-GM-THRID: 6387802033040130048
X-Received: by 10.107.176.142 with SMTP id z136mr1396970ioe.62.1487276061259;
        Thu, 16 Feb 2017 12:14:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.11 with SMTP id m11ls2611670otc.20.gmail; Thu, 16 Feb
 2017 12:14:20 -0800 (PST)
X-Received: by 10.200.43.252 with SMTP id n57mr1245747qtn.53.1487276060897;
        Thu, 16 Feb 2017 12:14:20 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h130si285235pfe.1.2017.02.16.12.14.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 12:14:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id y6so1715211pgy.2
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 12:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Jz0UAO68kTO4aQJEq9WNjB6Bk3SsnaaijsiYZZlrBN8=;
        b=cjj35Oekwj5ZYiOwRuYCorCr0+p46XmUQTdXNfB+Fnflz3PPj8lBXrnS2NwFYbolR6
         3aOtTP7/KhqJPjbuR0W5K7Lh1jiVKn391BVKAbfw1127LON94vk31GAMbhWRrTNF6nFs
         5vKkbgGL/XWtaQWwJc9Uakf8XOqzyAeD27ud1pPBtCXmPq8yOdFeKyfHhaPIp0UmSPlX
         txi4yQcks3RACN/Ig1SV6f3Enjw4vi4wOhwlhs6FF3LP+suRr6Sff3H9YlFBy80mmGa3
         7MdBD6NBjVdOZt9Ifa/L+sG+VdPOTEuhSsu1rCciV8tS403YvuVSNFzb7mqOvO7Ohlzb
         Kc8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Jz0UAO68kTO4aQJEq9WNjB6Bk3SsnaaijsiYZZlrBN8=;
        b=tidk4CZcgjKA25ogfl6NZLizIDS3LrwGLBT3PsegYhw0QPuoPpWRPU25vFk2Klo2dG
         VgAzOdF+PDZyz/Xwlxd082tMasNnTC4v6+dOs6UmRWv62BxRAMyNoVFOAk7aA6EUEeLK
         QPX0n1FjgNrXZYfSpQm3hRGE8VTAn4QZDC4Sqwp0C6lfcy7vDoQdXa6VZAJq4YIcK3Fh
         wSo42gESo6bSnVk6LscF1DQmfvCqq8cqRQbRENmOu0qwpEnyjwGSjXWngWlJORHHTHQM
         q0QKlDrpedSxjUNxd8nCO7N2qrr+uV3sgBeXalQkoQ9ILUf7TeRZdSXwgyQkeQka74Qn
         fUOw==
X-Gm-Message-State: AMke39k1qtqPNnPXHXrKvhmbVtw1Mvqd6rv5Vtruov/ELzE9J97IlhXZ71V3CfyZ6lwbzg==
X-Received: by 10.98.10.69 with SMTP id s66mr4783294pfi.146.1487276060580;
        Thu, 16 Feb 2017 12:14:20 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id p14sm1062738pfl.75.2017.02.16.12.14.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 12:14:19 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 1/2] staging: fbtft: Match alignment with open parentheses
Date: Fri, 17 Feb 2017 01:41:56 +0530
Message-Id: <0288025ef30110c57105eedd446189cdc10a8be4.1487275508.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1487275508.git.gs051095@gmail.com>
References: <cover.1487275508.git.gs051095@gmail.com>
In-Reply-To: <cover.1487275508.git.gs051095@gmail.com>
References: <cover.1487275508.git.gs051095@gmail.com>

Indent code to match alignment with open parentheses, to
fix the checkpatch issue alignment should match open parenthesis.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 54 +++++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 7c8af29..ee842e9 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -44,7 +44,7 @@ module_param(debug, ulong, 0000);
 MODULE_PARM_DESC(debug, "override device debug level");
 
 void fbtft_dbg_hex(const struct device *dev, int groupsize,
-			void *buf, size_t len, const char *fmt, ...)
+		   void *buf, size_t len, const char *fmt, ...)
 {
 	va_list args;
 	static char textbuf[512];
@@ -56,7 +56,7 @@ void fbtft_dbg_hex(const struct device *dev, int groupsize,
 	va_end(args);
 
 	hex_dump_to_buffer(buf, len, 32, groupsize, text + text_len,
-				512 - text_len, false);
+			   512 - text_len, false);
 
 	if (len > 32)
 		dev_info(dev, "%s ...\n", text);
@@ -66,13 +66,13 @@ void fbtft_dbg_hex(const struct device *dev, int groupsize,
 EXPORT_SYMBOL(fbtft_dbg_hex);
 
 static unsigned long fbtft_request_gpios_match(struct fbtft_par *par,
-					const struct fbtft_gpio *gpio)
+					       const struct fbtft_gpio *gpio)
 {
 	int ret;
 	long val;
 
 	fbtft_par_dbg(DEBUG_REQUEST_GPIOS_MATCH, par, "%s('%s')\n",
-		__func__, gpio->name);
+		      __func__, gpio->name);
 
 	if (strcasecmp(gpio->name, "reset") == 0) {
 		par->gpio.reset = gpio->gpio;
@@ -141,8 +141,8 @@ static int fbtft_request_gpios(struct fbtft_par *par)
 				return ret;
 			}
 			fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par,
-				"%s: '%s' = GPIO%d\n",
-				__func__, gpio->name, gpio->gpio);
+				      "%s: '%s' = GPIO%d\n",
+				      __func__, gpio->name, gpio->gpio);
 		}
 		gpio++;
 	}
@@ -175,7 +175,7 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
 		flags = (of_flags & OF_GPIO_ACTIVE_LOW) ? GPIOF_OUT_INIT_LOW :
 							GPIOF_OUT_INIT_HIGH;
 		ret = devm_gpio_request_one(dev, gpio, flags,
-						dev->driver->name);
+					    dev->driver->name);
 		if (ret) {
 			dev_err(dev,
 				"gpio_request_one('%s'=%d) failed with %d\n",
@@ -185,7 +185,7 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
 		if (gpiop)
 			*gpiop = gpio;
 		fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' = GPIO%d\n",
-							__func__, name, gpio);
+			      __func__, name, gpio);
 	}
 
 	return ret;
@@ -219,15 +219,15 @@ static int fbtft_request_gpios_dt(struct fbtft_par *par)
 		return ret;
 	for (i = 0; i < 16; i++) {
 		ret = fbtft_request_one_gpio(par, "db-gpios", i,
-						&par->gpio.db[i]);
+					     &par->gpio.db[i]);
 		if (ret)
 			return ret;
 		ret = fbtft_request_one_gpio(par, "led-gpios", i,
-						&par->gpio.led[i]);
+					     &par->gpio.led[i]);
 		if (ret)
 			return ret;
 		ret = fbtft_request_one_gpio(par, "aux-gpios", i,
-						&par->gpio.aux[i]);
+					     &par->gpio.aux[i]);
 		if (ret)
 			return ret;
 	}
@@ -282,7 +282,7 @@ void fbtft_register_backlight(struct fbtft_par *par)
 
 	if (par->gpio.led[0] == -1) {
 		fbtft_par_dbg(DEBUG_BACKLIGHT, par,
-			"%s(): led pin not set, exiting.\n", __func__);
+			      "%s(): led pin not set, exiting.\n", __func__);
 		return;
 	}
 
@@ -348,8 +348,8 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned int start_line,
 	if (unlikely(par->debug & (DEBUG_TIME_FIRST_UPDATE |
 			DEBUG_TIME_EACH_UPDATE))) {
 		if ((par->debug & DEBUG_TIME_EACH_UPDATE) ||
-				((par->debug & DEBUG_TIME_FIRST_UPDATE) &&
-				!par->first_update_done)) {
+		    ((par->debug & DEBUG_TIME_FIRST_UPDATE) &&
+		    !par->first_update_done)) {
 			ts_start = ktime_get();
 			timeit = true;
 		}
@@ -374,7 +374,7 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned int start_line,
 	}
 
 	fbtft_par_dbg(DEBUG_UPDATE_DISPLAY, par, "%s(start_line=%u, end_line=%u)\n",
-		__func__, start_line, end_line);
+		      __func__, start_line, end_line);
 
 	if (par->fbtftops.set_addr_win)
 		par->fbtftops.set_addr_win(par, 0, start_line,
@@ -402,8 +402,8 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned int start_line,
 		throughput = throughput * 1000 / 1024;
 
 		dev_info(par->info->device,
-			"Display update: %ld kB/s, fps=%ld\n",
-			throughput, fps);
+			 "Display update: %ld kB/s, fps=%ld\n",
+			 throughput, fps);
 		par->first_update_done = true;
 	}
 }
@@ -963,10 +963,10 @@ int fbtft_register_framebuffer(struct fb_info *fb_info)
 		sprintf(text2, ", spi%d.%d at %d MHz", spi->master->bus_num,
 			spi->chip_select, spi->max_speed_hz / 1000000);
 	dev_info(fb_info->dev,
-		"%s frame buffer, %dx%d, %d KiB video memory%s, fps=%lu%s\n",
-		fb_info->fix.id, fb_info->var.xres, fb_info->var.yres,
-		fb_info->fix.smem_len >> 10, text1,
-		HZ / fb_info->fbdefio->delay, text2);
+		 "%s frame buffer, %dx%d, %d KiB video memory%s, fps=%lu%s\n",
+		 fb_info->fix.id, fb_info->var.xres, fb_info->var.yres,
+		 fb_info->fix.smem_len >> 10, text1,
+		 HZ / fb_info->fbdefio->delay, text2);
 
 #ifdef CONFIG_FB_BACKLIGHT
 	/* Turn on backlight if available */
@@ -1049,7 +1049,7 @@ static int fbtft_init_display_dt(struct fbtft_par *par)
 			}
 			/* make debug message */
 			fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
-				"init: write_register:\n");
+				      "init: write_register:\n");
 			for (j = 0; j < i; j++)
 				fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
 					      "buf[%d] = %02X\n", j, buf[j]);
@@ -1073,12 +1073,12 @@ static int fbtft_init_display_dt(struct fbtft_par *par)
 				buf[60], buf[61], buf[62], buf[63]);
 		} else if (val & FBTFT_OF_INIT_DELAY) {
 			fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
-				"init: msleep(%u)\n", val & 0xFFFF);
+				      "init: msleep(%u)\n", val & 0xFFFF);
 			msleep(val & 0xFFFF);
 			p = of_prop_next_u32(prop, p, &val);
 		} else {
 			dev_err(par->info->device, "illegal init value 0x%X\n",
-									val);
+				val);
 			return -EINVAL;
 		}
 	}
@@ -1153,8 +1153,8 @@ int fbtft_init_display(struct fbtft_par *par)
 				j++;
 			}
 			fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
-				"init: write(0x%02X) %s\n",
-				par->init_sequence[i], msg);
+				      "init: write(0x%02X) %s\n",
+				      par->init_sequence[i], msg);
 
 			/* Write */
 			j = 0;
@@ -1447,7 +1447,7 @@ int fbtft_remove_common(struct device *dev, struct fb_info *info)
 	par = info->par;
 	if (par)
 		fbtft_par_dbg(DEBUG_DRIVER_INIT_FUNCTIONS, par,
-			"%s()\n", __func__);
+			      "%s()\n", __func__);
 	fbtft_unregister_framebuffer(info);
 	fbtft_framebuffer_release(info);
 
-- 
2.7.4



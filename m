X-GM-THRID: 6664414939270086656
X-Received: by 2002:a67:f3c9:: with SMTP id j9mr11765394vsn.24.1551680019438;
        Sun, 03 Mar 2019 22:13:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab84:: with SMTP id u126ls2490941vke.0.gmail; Sun, 03
 Mar 2019 22:13:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqwm2cJY59x2HID7Rjncmkc7fVklrvlIc2T4/HDRWM8UpZXkiNDAXr8FmQrQbky84pIyFlzH
X-Received: by 2002:a1f:9750:: with SMTP id z77mr11814470vkd.5.1551680018873;
        Sun, 03 Mar 2019 22:13:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551680018; cv=none;
        d=google.com; s=arc-20160816;
        b=BorcQEeOLWlKEV4gDskQteflpqw0gXakfdujgK1z2/nUZ4Eo4q7gYJ96KhfQHxmiUb
         jg6LkuRrHOHUuQPfIjiLQ/KPEIX0TYSuVwC7je9ugaHETYB6ne1PA4ZlFmW2dC0KtV2L
         sGXwrAwF4GpcN68DypDOw394mz7N8C+yJVCluAoS9SVMVul999RbMlEsv37RuhOTShiP
         oNgpRbnQd+5FhHur8ZOpn/Mf79Mss6oq1emvKg2u0zVjEEIRxnLZloKERiJkexucUisR
         QXRYUCf1txJ7zgJG9qG7dHntPOPATa4vbX9AHfWVbdE3zpIObUSAr19ocnZEW0AtxUXd
         iObw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+Zm81QNCJsaBt2DZEmhJ4nt4pkr6GoEetAKNePqDqsI=;
        b=K7QxP/yf6dgQg6xPh40Wo23pV9nogvgjUGVy4AZ6KM2O5xteklgq+S0VXJ1wv0/2ZT
         SDXYyZETBNz7t0FBJmxtsKP7xY3Cww4dHEf1nXQpd01WThg2pmLYGlkv5NxaQA0cRCwM
         GA740ZBy7rDWULAzx78hkRQh5zmBjxpp5um+9aRFgC1sbF1AML19DneKayEbKC577b1P
         ZR5hLDcbhilD9TaNXJvNxEOu7KWAvBj5j41B9C3pnabeVOWstVNaZ0grP1tmZVsLpvHi
         9CkREvR3/9Rwy1rDlGcqphou55ErrW+pTaVgzY23Hs5QZUudAvO8RfdsYrtbq420zaDV
         J3tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bacg5vJ/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id e17si275033vke.0.2019.03.03.22.13.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 22:13:38 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bacg5vJ/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x432.google.com with SMTP id a3so2204173pff.11
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 22:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+Zm81QNCJsaBt2DZEmhJ4nt4pkr6GoEetAKNePqDqsI=;
        b=bacg5vJ/7BKclNkIs0tMIQtCY3dDuAKWc7ulc/MMM6CIEh/vsr32Bso1LaravpFRV0
         4Be/PhzL5DkQx1RKosuxErQjfixmiJVN0LVrLbAcJng1LHBxytEHRpeXh8bGT0zDl0QQ
         M24p2B76NE5LlHegdPlOK+s24k3b3w+p296N30u/+knbgAgs1yr8RbSPOcP/mRnAWoXP
         W79MPz2Tt8TMaHsLLclZARZLRrnaSenILhVMHwiZQT0GqSN3JTx2N1QKO6KVFnW2sPZB
         6siE7wcadzVeYhv98C6dV65uo0AZ5HkI042cZTJ8R8XrpAgZCfVGysr/DmsYzK/Cl/Ps
         zR3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+Zm81QNCJsaBt2DZEmhJ4nt4pkr6GoEetAKNePqDqsI=;
        b=LP6TpM4pIuaC80Xtpj8euCK1jrB5ptzPaLRw1sGExkl9nGStUWOBBSTcetqmcBlUE0
         wZOoWnCmfHF53uLbC4nd8ymNzfkdf0Oam1QAW8ktQxVo87ZLdIJcqNUg/efbp7P3MOmj
         Kt3vpgy4qBaznr6C0chlouP5vb02nR31K/Lv8RmJ8j3Q/MT7y6XdjhoJR3d5zT1bEvdD
         gsusteFsF2uuJyNOBXlreQaYUmRMGuemJ+cOCLQ2K5duFFsJYK0bat6Pwqhsl51lyvde
         fK/U3o/84Y5LE1cuvraADVXKoq7H1rx4oPpxyMpO9MU4NZ0sbBMgWLEDQuubaXIWpVch
         WvKg==
X-Gm-Message-State: APjAAAXnsckkhpVSASFycicLwZgN53ZjWcJ1U4+XslkCFEfQXe199qRZ
	KEju0ErJqNytiS/bJcW7E4I=
X-Received: by 2002:a17:902:8bc2:: with SMTP id r2mr18892934plo.55.1551680018277;
        Sun, 03 Mar 2019 22:13:38 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2405:204:9400:776d:713d:ef34:9448:e193])
        by smtp.gmail.com with ESMTPSA id l79sm10705335pfb.102.2019.03.03.22.13.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 03 Mar 2019 22:13:37 -0800 (PST)
Date: Mon, 4 Mar 2019 11:43:27 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	Bhagyashri <digholebhagyashri@gmail.com>
Subject: [PATCH] staging: fbtft: line over 80 characters.
Message-ID: <20190304061327.GA20491@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING:line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1306.c  |  3 ++-
 drivers/staging/fbtft/fb_ssd1331.c  |  3 ++-
 drivers/staging/fbtft/fb_st7735r.c  |  6 ++++--
 drivers/staging/fbtft/fbtft-sysfs.c |  3 ++-
 drivers/staging/fbtft/fbtft.h       | 16 ++++++++++++----
 drivers/staging/fbtft/flexfb.c      | 12 ++++++++----
 6 files changed, 30 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
index d7c5e2e..412871b 100644
--- a/drivers/staging/fbtft/fb_ssd1306.c
+++ b/drivers/staging/fbtft/fb_ssd1306.c
@@ -184,7 +184,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 		for (y = 0; y < yres / 8; y++) {
 			*buf = 0x00;
 			for (i = 0; i < 8; i++)
-				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
+				*buf |= (vmem16[(y * 8 + i) * xres + x] ?
+						 1 : 0) << i;
 			buf++;
 		}
 	}
diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
index 9f54fe2..4cfe9f8 100644
--- a/drivers/staging/fbtft/fb_ssd1331.c
+++ b/drivers/staging/fbtft/fb_ssd1331.c
@@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 		for (i = 0; i < len; i++)
 			buf[i] = (u8)va_arg(args, unsigned int);
 		va_end(args);
-		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device, u8, buf, len, "%s: ", __func__);
+		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device,
+				  u8, buf, len, "%s: ", __func__);
 	}
 
 	va_start(args, len);
diff --git a/drivers/staging/fbtft/fb_st7735r.c b/drivers/staging/fbtft/fb_st7735r.c
index 9670a898..1140fe4 100644
--- a/drivers/staging/fbtft/fb_st7735r.c
+++ b/drivers/staging/fbtft/fb_st7735r.c
@@ -130,8 +130,10 @@ static int set_var(struct fbtft_par *par)
 
 /*
  * Gamma string format:
- * VRF0P VOS0P PK0P PK1P PK2P PK3P PK4P PK5P PK6P PK7P PK8P PK9P SELV0P SELV1P SELV62P SELV63P
- * VRF0N VOS0N PK0N PK1N PK2N PK3N PK4N PK5N PK6N PK7N PK8N PK9N SELV0N SELV1N SELV62N SELV63N
+ * VRF0P VOS0P PK0P PK1P PK2P PK3P PK4P PK5P PK6P PK7P PK8P PK9P
+ * VRF0N VOS0N PK0N PK1N PK2N PK3N PK4N PK5N PK6N PK7N PK8N PK9N
+ * SELV0P SELV1P SELV62P SELV63P
+ * SELV0N SELV1N SELV62N SELV63N
  */
 #define CURVE(num, idx)  curves[(num) * par->gamma.num_values + (idx)]
 static int set_gamma(struct fbtft_par *par, u32 *curves)
diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
index 2a5c630..ac6a25e8 100644
--- a/drivers/staging/fbtft/fbtft-sysfs.c
+++ b/drivers/staging/fbtft/fbtft-sysfs.c
@@ -68,7 +68,8 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
 			ret = get_next_ulong(&curve_p, &val, " ", 16);
 			if (ret)
 				goto out;
-			curves[curve_counter * par->gamma.num_values + value_counter] = val;
+			curves[curve_counter * par->gamma.num_values +
+			       value_counter] = val;
 			value_counter++;
 		}
 		if (value_counter != par->gamma.num_values) {
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 7fdd3b0..3dc9043 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -347,9 +347,15 @@ module_exit(fbtft_driver_module_exit);
 
 /* shorthand debug levels */
 #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
-#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
-#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
-#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
+#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS |	    \
+			 DEBUG_TIME_FIRST_UPDATE)
+#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | \
+			 DEBUG_BLANK |  DEBUG_REQUEST_GPIOS |		    \
+			 DEBUG_FREE_GPIOS |				    \
+			 DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
+#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE |   \
+			 DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA |	    \
+			 DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
 #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
@@ -391,7 +397,9 @@ module_exit(fbtft_driver_module_exit);
 #define fbtft_init_dbg(dev, format, arg...)                  \
 do {                                                         \
 	if (unlikely((dev)->platform_data &&                 \
-	    (((struct fbtft_platform_data *)(dev)->platform_data)->display.debug & DEBUG_DRIVER_INIT_FUNCTIONS))) \
+	    (((struct fbtft_platform_data *)		     \
+	     (dev)->platform_data)->display.debug &	     \
+	      DEBUG_DRIVER_INIT_FUNCTIONS)))		     \
 		dev_info(dev, format, ##arg);                \
 } while (0)
 
diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
index c5fa591..48e9c73 100644
--- a/drivers/staging/fbtft/flexfb.c
+++ b/drivers/staging/fbtft/flexfb.c
@@ -667,11 +667,13 @@ static int flexfb_probe_common(struct spi_device *sdev,
 		case 8:
 			par->fbtftops.write_vmem = fbtft_write_vmem16_bus8;
 			if (!par->startbyte)
-				par->fbtftops.verify_gpios = flexfb_verify_gpios_dc;
+				par->fbtftops.verify_gpios =
+					flexfb_verify_gpios_dc;
 			break;
 		case 9:
 			if (regwidth == 16) {
-				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
+				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n",
+					regwidth, buswidth);
 				return -EINVAL;
 			}
 			par->fbtftops.write_register = fbtft_write_reg8_bus9;
@@ -712,13 +714,15 @@ static int flexfb_probe_common(struct spi_device *sdev,
 		case 16:
 			par->fbtftops.write_register = fbtft_write_reg16_bus16;
 			if (latched)
-				par->fbtftops.write = fbtft_write_gpio16_wr_latched;
+				par->fbtftops.write =
+					fbtft_write_gpio16_wr_latched;
 			else
 				par->fbtftops.write = fbtft_write_gpio16_wr;
 			par->fbtftops.write_vmem = fbtft_write_vmem16_bus16;
 			break;
 		default:
-			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n", buswidth);
+			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n",
+				buswidth);
 			return -EINVAL;
 		}
 	}
-- 
2.7.4



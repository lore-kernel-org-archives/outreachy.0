X-GM-THRID: 6950918029312
X-Received: by 10.112.156.65 with SMTP id wc1mr2595801lbb.7.1425668348352;
        Fri, 06 Mar 2015 10:59:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.39 with SMTP id ev7ls159922wib.18.gmail; Fri, 06 Mar
 2015 10:59:08 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr5711787wic.3.1425668348026;
        Fri, 06 Mar 2015 10:59:08 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id el6si218734wib.2.2015.03.06.10.59.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 10:59:08 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22b.google.com with SMTP id z12so62121101wgg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 10:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=n1V0yH9x6qHUF92OsfbbiHoOE+85EMNPiFXUsMKaJkg=;
        b=TuBABZ4UHm8Ofmw8S3NIL2t9V97YgxyfpGNfAlLrjJe8OSd+O5wRqEZ9WZXFs8K+yL
         cOh/QbWL6Kbh7PoPHFZz51oonQ7DbXodG2ANoTPqZiS1pq0owWwl37qRRvVawrNh8FOH
         uPoWU/yPoSsO3y4b2SnS2MKDGo0yDb62ksnwebeUF/UjSbNWxbpNL22lD3/snI7MKm4o
         mv8OOwr4RGEF847nBcVCq3QXdRqdUKCMvPHwVJ1BZykS4xS+zHvUy2CKg72G4nxABYKO
         irH0jtulDwryQ5CCHWfxPFdwKGmbMSxAK9J8M0chhd/Cf1NVdkvcoI1Grb8g3KHkOCWL
         tFXw==
X-Received: by 10.180.82.103 with SMTP id h7mr60480796wiy.30.1425668347925;
        Fri, 06 Mar 2015 10:59:07 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id lx10sm16136440wjb.17.2015.03.06.10.59.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 10:59:07 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 43E4962672; Fri,  6 Mar 2015 21:59:05 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 1/8] Staging: fbtft: clean dev_err() logging
Date: Fri,  6 Mar 2015 21:59:04 +0300
Message-Id: <1425668344-27269-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
(devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E, R;
expression  msg;
@@

dev_err(E, msg, __func__, R);

@script:python b@
e << a.msg;
y;
@@

if(e.find("%s: ") == True):
	m = e.replace("%s: ", "", 1);
	coccinelle.y = m;
elif(e.find("%s ") == True):
	m = e.replace("%s ", "", 1);
	coccinelle.y = m;
elif(e.find("%s:") == True):
	m = e.replace("%s:", "", 1);
	coccinelle.y = m;
else:
	m = e.replace("%s", "",1);
	coccinelle.y = m;

@c@
expression a.E, a.msg, a.R;
identifier  b.y;
@@

- dev_err(E, msg, __func__, R);
+ dev_err(E, y, R);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 16 ++++++++--------
 drivers/staging/fbtft/fb_pcd8544.c     |  3 ++-
 drivers/staging/fbtft/fb_ra8875.c      |  8 ++++----
 drivers/staging/fbtft/fb_ssd1306.c     |  4 ++--
 drivers/staging/fbtft/fb_ssd1331.c     |  6 ++++--
 drivers/staging/fbtft/fb_tls8204.c     |  2 +-
 drivers/staging/fbtft/fb_uc1701.c      |  3 ++-
 drivers/staging/fbtft/fb_watterott.c   |  2 +-
 drivers/staging/fbtft/fbtft-bus.c      |  2 +-
 drivers/staging/fbtft/fbtft-core.c     |  5 ++---
 drivers/staging/fbtft/fbtft-io.c       |  7 +++----
 11 files changed, 30 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 9cc7d25..7aa9e8c 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -198,8 +198,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 
 	if (*buf > 1) {
 		va_end(args);
-		dev_err(par->info->device, "%s: Incorrect chip sellect request (%d)\n",
-			__func__, *buf);
+		dev_err(par->info->device,
+			"Incorrect chip sellect request (%d)\n", *buf);
 		return;
 	}
 
@@ -224,8 +224,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 		ret = par->fbtftops.write(par, par->buf, len * (sizeof(u8)));
 		if (ret < 0) {
 			va_end(args);
-			dev_err(par->info->device, "%s: write() failed and returned %d\n",
-				__func__, ret);
+			dev_err(par->info->device,
+				"write() failed and returned %d\n", ret);
 			return;
 		}
 	}
@@ -376,8 +376,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 			ret = par->fbtftops.write(par, buf, len);
 			if (ret < 0)
 				dev_err(par->info->device,
-					"%s: write failed and returned: %d\n",
-					__func__, ret);
+					"write failed and returned: %d\n",
+					ret);
 		}
 		/* right half of display */
 		if (addr_win.xe >= par->info->var.xres / 2) {
@@ -398,8 +398,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 			par->fbtftops.write(par, buf, len);
 			if (ret < 0)
 				dev_err(par->info->device,
-					"%s: write failed and returned: %d\n",
-					__func__, ret);
+					"write failed and returned: %d\n",
+					ret);
 		}
 	}
 	kfree(convert_buf);
diff --git a/drivers/staging/fbtft/fb_pcd8544.c b/drivers/staging/fbtft/fb_pcd8544.c
index 5e08a70..b13162c 100644
--- a/drivers/staging/fbtft/fb_pcd8544.c
+++ b/drivers/staging/fbtft/fb_pcd8544.c
@@ -130,7 +130,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	gpio_set_value(par->gpio.dc, 1);
 	ret = par->fbtftops.write(par, par->txbuf.buf, 6*84);
 	if (ret < 0)
-		dev_err(par->info->device, "%s: write failed and returned: %d\n", __func__, ret);
+		dev_err(par->info->device, "write failed and returned: %d\n",
+			ret);
 
 	return ret;
 }
diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
index a186458..8876a18 100644
--- a/drivers/staging/fbtft/fb_ra8875.c
+++ b/drivers/staging/fbtft/fb_ra8875.c
@@ -237,8 +237,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 	ret = par->fbtftops.write(par, par->buf, 2);
 	if (ret < 0) {
 		va_end(args);
-		dev_err(par->info->device, "%s: write() failed and returned %dn",
-			__func__, ret);
+		dev_err(par->info->device, "write() failed and returned %dn",
+			ret);
 		return;
 	}
 	len--;
@@ -255,8 +255,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 		ret = par->fbtftops.write(par, par->buf, len + 1);
 		if (ret < 0) {
 			va_end(args);
-			dev_err(par->info->device, "%s: write() failed and returned %dn",
-				__func__, ret);
+			dev_err(par->info->device,
+				"write() failed and returned %dn", ret);
 			return;
 		}
 	}
diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
index 5ea195b..15ee44d 100644
--- a/drivers/staging/fbtft/fb_ssd1306.c
+++ b/drivers/staging/fbtft/fb_ssd1306.c
@@ -193,8 +193,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	ret = par->fbtftops.write(par, par->txbuf.buf,
 				par->info->var.xres*par->info->var.yres/8);
 	if (ret < 0)
-		dev_err(par->info->device,
-			"%s: write failed and returned: %d\n", __func__, ret);
+		dev_err(par->info->device, "write failed and returned: %d\n",
+			ret);
 
 	return ret;
 }
diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
index ba17f0c..5bb7410 100644
--- a/drivers/staging/fbtft/fb_ssd1331.c
+++ b/drivers/staging/fbtft/fb_ssd1331.c
@@ -83,7 +83,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 	ret = par->fbtftops.write(par, par->buf, sizeof(u8));
 	if (ret < 0) {
 		va_end(args);
-		dev_err(par->info->device, "%s: write() failed and returned %d\n", __func__, ret);
+		dev_err(par->info->device,
+			"write() failed and returned %d\n", ret);
 		return;
 	}
 	len--;
@@ -95,7 +96,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 		ret = par->fbtftops.write(par, par->buf, len * (sizeof(u8)));
 		if (ret < 0) {
 			va_end(args);
-			dev_err(par->info->device, "%s: write() failed and returned %d\n", __func__, ret);
+			dev_err(par->info->device,
+				"write() failed and returned %d\n", ret);
 			return;
 		}
 	}
diff --git a/drivers/staging/fbtft/fb_tls8204.c b/drivers/staging/fbtft/fb_tls8204.c
index 8738c7a..fcd38bf 100644
--- a/drivers/staging/fbtft/fb_tls8204.c
+++ b/drivers/staging/fbtft/fb_tls8204.c
@@ -127,7 +127,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 		ret = par->fbtftops.write(par, par->txbuf.buf, WIDTH);
 		if (ret < 0) {
 			dev_err(par->info->device,
-				"%s: write failed and returned: %d\n", __func__, ret);
+				"write failed and returned: %d\n", ret);
 			break;
 		}
 	}
diff --git a/drivers/staging/fbtft/fb_uc1701.c b/drivers/staging/fbtft/fb_uc1701.c
index d70ac52..26d669b 100644
--- a/drivers/staging/fbtft/fb_uc1701.c
+++ b/drivers/staging/fbtft/fb_uc1701.c
@@ -183,7 +183,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	}
 
 	if (ret < 0)
-		dev_err(par->info->device, "%s: write failed and returned: %d\n", __func__, ret);
+		dev_err(par->info->device, "write failed and returned: %d\n",
+			ret);
 
 	return ret;
 }
diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 5e6595f..0b60d4c 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -65,7 +65,7 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 	ret = par->fbtftops.write(par, par->buf, len);
 	if (ret < 0) {
 		dev_err(par->info->device,
-			"%s: write() failed and returned %d\n", __func__, ret);
+			"write() failed and returned %d\n", ret);
 		return;
 	}
 }
diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
index 4b9a481..50ceb1a 100644
--- a/drivers/staging/fbtft/fbtft-bus.c
+++ b/drivers/staging/fbtft/fbtft-bus.c
@@ -111,7 +111,7 @@ void fbtft_write_reg8_bus9(struct fbtft_par *par, int len, ...)
 	ret = par->fbtftops.write(par, par->buf, (len + pad) * sizeof(u16));
 	if (ret < 0) {
 		dev_err(par->info->device,
-			"%s: write() failed and returned %d\n", __func__, ret);
+			"write() failed and returned %d\n", ret);
 		return;
 	}
 }
diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index f0164218..06d7963 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -705,9 +705,8 @@ struct fb_info *fbtft_framebuffer_alloc(struct fbtft_display *display,
 
 	/* sanity check */
 	if (display->gamma_num * display->gamma_len > FBTFT_GAMMA_MAX_VALUES_TOTAL) {
-		dev_err(dev,
-			"%s: FBTFT_GAMMA_MAX_VALUES_TOTAL=%d is exceeded\n",
-			__func__, FBTFT_GAMMA_MAX_VALUES_TOTAL);
+		dev_err(dev, "FBTFT_GAMMA_MAX_VALUES_TOTAL=%d is exceeded\n",
+			FBTFT_GAMMA_MAX_VALUES_TOTAL);
 		return NULL;
 	}
 
diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
index 17ab078..18b799a 100644
--- a/drivers/staging/fbtft/fbtft-io.c
+++ b/drivers/staging/fbtft/fbtft-io.c
@@ -57,8 +57,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par, void *buf, size_t len)
 	}
 	if ((len % 8) != 0) {
 		dev_err(par->info->device,
-			"%s: error: len=%zu must be divisible by 8\n",
-			__func__, len);
+			"error: len=%zu must be divisible by 8\n", len);
 		return -EINVAL;
 	}
 
@@ -103,8 +102,8 @@ int fbtft_read_spi(struct fbtft_par *par, void *buf, size_t len)
 	if (par->startbyte) {
 		if (len > 32) {
 			dev_err(par->info->device,
-				"%s: len=%zu can't be larger than 32 when using 'startbyte'\n",
-				__func__, len);
+				"len=%zu can't be larger than 32 when using 'startbyte'\n",
+				len);
 			return -EINVAL;
 		}
 		txbuf[0] = par->startbyte | 0x3;
-- 
1.9.1



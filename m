X-GM-THRID: 6758181371904
X-Received: by 10.152.21.9 with SMTP id r9mr1787729lae.0.1425584137813;
        Thu, 05 Mar 2015 11:35:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.95.133 with SMTP id dk5ls15787wib.47.gmail; Thu, 05 Mar
 2015 11:35:37 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr4939477wia.7.1425584137512;
        Thu, 05 Mar 2015 11:35:37 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id cl5si636792wib.3.2015.03.05.11.35.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:35:37 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id hm9so17972253wib.2
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 11:35:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=X65v0CTM+d5X/lki9G6C8L+jcuOMxwEwsHsOTzqdbE0=;
        b=cYiDfwHOOAg5eJwTX3sZsu34R/ADWvOCb5s0wKlWxSahQKdCjvfq/W1HMccYHZrg4v
         IpuY99c3fG3pAV2Qn/8HaUUZmuPCm+1cacD0Al3r0b79Pk8ZjHPAPZgW7adTq6VZhRXO
         CocmD0/irGW6brG/8sqbi0ZMJs/cFXs4iBz0YCAPOIOWNAcWN9ZWPEWUacHZd+0itTvI
         8XUmoyUnmcdQI8GwAlsKxhMwg3e/xkM5CFWrUJNN+wEKl92mmT7vG4xrn9nrD2gJOJbT
         xQ4LZkHeEG5jm8U6ruvqnkJ4l6IpHvkLaxj8whCNR2Cfq02JR6eLxhHyh3paUfgEiUJ2
         3bEg==
X-Received: by 10.180.221.232 with SMTP id qh8mr25268256wic.19.1425584137410;
        Thu, 05 Mar 2015 11:35:37 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id lg18sm10143524wic.23.2015.03.05.11.35.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 11:35:36 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 4B08C62672; Thu,  5 Mar 2015 22:35:45 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/7] Staging: fbtft: Clean dev_err() logging
Date: Thu,  5 Mar 2015 22:35:44 +0300
Message-Id: <1425584144-28166-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
 (devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E;
expression  msg;
@@

dev_err(E, msg, __func__);

@script:python b@git rebae -i
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
expression a.E, a.msg;
identifier  b.y;
@@

- dev_err(E, msg, __func__);
+ dev_err(E, y);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/fbtft/fb_ra8875.c    |  3 +--
 drivers/staging/fbtft/fb_ssd1351.c   |  3 +--
 drivers/staging/fbtft/fb_watterott.c |  3 +--
 drivers/staging/fbtft/fbtft-bus.c    |  4 ++--
 drivers/staging/fbtft/fbtft-core.c   | 14 +++++---------
 drivers/staging/fbtft/fbtft-io.c     | 11 ++++-------
 6 files changed, 14 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
index 8df9737..a186458 100644
--- a/drivers/staging/fbtft/fb_ra8875.c
+++ b/drivers/staging/fbtft/fb_ra8875.c
@@ -52,8 +52,7 @@ static int write_spi(struct fbtft_par *par, void *buf, size_t len)
 		"%s(len=%d): ", __func__, len);
 
 	if (!par->spi) {
-		dev_err(par->info->device,
-			"%s: par->spi is unexpectedly NULL\n", __func__);
+		dev_err(par->info->device, "par->spi is unexpectedly NULL\n");
 		return -1;
 	}
 
diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index b59120c..b925dd5 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -220,8 +220,7 @@ static void register_onboard_backlight(struct fbtft_par *par)
 				GFP_KERNEL);
 	if (!bl_ops) {
 		dev_err(par->info->device,
-			"%s: could not allocate memory for backlight operations.\n",
-			__func__);
+			"could not allocate memory for backlight operations.\n");
 		return;
 	}
 
diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 975b579..5e6595f 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -269,8 +269,7 @@ static void register_chip_backlight(struct fbtft_par *par)
 				GFP_KERNEL);
 	if (!bl_ops) {
 		dev_err(par->info->device,
-			"%s: could not allocate memory for backlight operations.\n",
-			__func__);
+			"could not allocate memory for backlight operations.\n");
 		return;
 	}
 
diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
index b3cddb0..4b9a481 100644
--- a/drivers/staging/fbtft/fbtft-bus.c
+++ b/drivers/staging/fbtft/fbtft-bus.c
@@ -196,7 +196,7 @@ int fbtft_write_vmem16_bus9(struct fbtft_par *par, size_t offset, size_t len)
 		__func__, offset, len);
 
 	if (!par->txbuf.buf) {
-		dev_err(par->info->device, "%s: txbuf.buf is NULL\n", __func__);
+		dev_err(par->info->device, "txbuf.buf is NULL\n");
 		return -1;
 	}
 
@@ -232,7 +232,7 @@ EXPORT_SYMBOL(fbtft_write_vmem16_bus9);
 
 int fbtft_write_vmem8_bus8(struct fbtft_par *par, size_t offset, size_t len)
 {
-	dev_err(par->info->device, "%s: function not implemented\n", __func__);
+	dev_err(par->info->device, "function not implemented\n");
 	return -1;
 }
 EXPORT_SYMBOL(fbtft_write_vmem8_bus8);
diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index e8d8d07..f0164218 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -304,8 +304,7 @@ void fbtft_register_backlight(struct fbtft_par *par)
 				GFP_KERNEL);
 	if (!bl_ops) {
 		dev_err(par->info->device,
-			"%s: could not allocate memeory for backlight operations.\n",
-			__func__);
+			"could not allocate memeory for backlight operations.\n");
 		return;
 	}
 
@@ -414,8 +413,7 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
 	ret = par->fbtftops.write_vmem(par, offset, len);
 	if (ret < 0)
 		dev_err(par->info->device,
-			"%s: write_vmem failed to update display buffer\n",
-			__func__);
+			"write_vmem failed to update display buffer\n");
 
 	if (unlikely(timeit)) {
 		getnstimeofday(&ts_end);
@@ -1091,8 +1089,7 @@ static int fbtft_init_display_dt(struct fbtft_par *par)
 			while (p && !(val & 0xFFFF0000)) {
 				if (i > 63) {
 					dev_err(par->info->device,
-					"%s: Maximum register values exceeded\n",
-					__func__);
+						"Maximum register values exceeded\n");
 					return -EINVAL;
 				}
 				buf[i++] = val;
@@ -1216,8 +1213,7 @@ int fbtft_init_display(struct fbtft_par *par)
 			while (par->init_sequence[i] >= 0) {
 				if (j > 63) {
 					dev_err(par->info->device,
-					"%s: Maximum register values exceeded\n",
-					__func__);
+						"Maximum register values exceeded\n");
 					return -EINVAL;
 				}
 				buf[j++] = par->init_sequence[i++];
@@ -1255,7 +1251,7 @@ int fbtft_init_display(struct fbtft_par *par)
 	}
 
 	dev_err(par->info->device,
-		"%s: something is wrong. Shouldn't get here.\n", __func__);
+		"something is wrong. Shouldn't get here.\n");
 	return -EINVAL;
 }
 EXPORT_SYMBOL(fbtft_init_display);
diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
index 9b2f8cf..17ab078 100644
--- a/drivers/staging/fbtft/fbtft-io.c
+++ b/drivers/staging/fbtft/fbtft-io.c
@@ -16,8 +16,7 @@ int fbtft_write_spi(struct fbtft_par *par, void *buf, size_t len)
 		"%s(len=%d): ", __func__, len);
 
 	if (!par->spi) {
-		dev_err(par->info->device,
-			"%s: par->spi is unexpectedly NULL\n", __func__);
+		dev_err(par->info->device, "par->spi is unexpectedly NULL\n");
 		return -1;
 	}
 
@@ -53,8 +52,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par, void *buf, size_t len)
 		"%s(len=%d): ", __func__, len);
 
 	if (!par->extra) {
-		dev_err(par->info->device, "%s: error: par->extra is NULL\n",
-			__func__);
+		dev_err(par->info->device, "error: par->extra is NULL\n");
 		return -EINVAL;
 	}
 	if ((len % 8) != 0) {
@@ -98,8 +96,7 @@ int fbtft_read_spi(struct fbtft_par *par, void *buf, size_t len)
 	struct spi_message	m;
 
 	if (!par->spi) {
-		dev_err(par->info->device,
-			"%s: par->spi is unexpectedly NULL\n", __func__);
+		dev_err(par->info->device, "par->spi is unexpectedly NULL\n");
 		return -ENODEV;
 	}
 
@@ -233,7 +230,7 @@ EXPORT_SYMBOL(fbtft_write_gpio16_wr);
 
 int fbtft_write_gpio16_wr_latched(struct fbtft_par *par, void *buf, size_t len)
 {
-	dev_err(par->info->device, "%s: function not implemented\n", __func__);
+	dev_err(par->info->device, "function not implemented\n");
 	return -1;
 }
 EXPORT_SYMBOL(fbtft_write_gpio16_wr_latched);
-- 
1.9.1



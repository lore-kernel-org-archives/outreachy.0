X-GM-THRID: 6468899055788359680
X-Received: by 10.107.145.198 with SMTP id t189mr679308iod.120.1506157930278;
        Sat, 23 Sep 2017 02:12:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.159.70 with SMTP id i67ls2763339ioe.9.gmail; Sat, 23 Sep
 2017 02:12:09 -0700 (PDT)
X-Received: by 10.36.55.139 with SMTP id r133mr680231itr.52.1506157929512;
        Sat, 23 Sep 2017 02:12:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506157929; cv=none;
        d=google.com; s=arc-20160816;
        b=QgVuVileRHXNK+sJwxZDd1XQzpsOBkl5CN6HSSlVFtYcXRK7m8YhldZLugpPXRIWJn
         53nlETGJJ6uRSYpsftgmeaUbUsaOpmsDiruvcgWFVFHgPVLZYgALCVolUvGbIVSeO64t
         UhbuBGExEVwy428zy4cJvad/XFVrnTi0XScXAI0jPc22WdCI5LyEMELBOxiwHzGX4n/K
         VnbGRDiCti9P/pGiqU01XH8ml1/FgvYgiMWuvn3vU3nNbW6QbtaBd7tq8zT3hMSnZG0x
         Hvf48qplwkf8HnxR1+XENLTkodUJEDAJaOi48kTuA5Cfil17/iNd/5paeWx11qKmJNTD
         sWnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Na4ww7IUOQjSZa2mvbnJV8M+QsMEOlQhoGblclgD59U=;
        b=QXBrB5ZO2tdRxBrNZVd50/zAXLt564Duxb4SmFMGPtY2EMWLC0/brHCQUWyLT3f2Xr
         KS5FN+SYMunRyyBlmeekY/kJgODikNHsogpJzZExgiDKmk9e4SB6+JthbFTfrXbV51wZ
         0gwbKqefeVOt10ZkDNEmf8OOn4fGSqN44qL9AC6haL3+gowcd7DQNPf6yiWo1CjaFZa2
         Xns13CNCS6UyQzUEPTokKOqRO5G6PQFTlRCTGlA4XGvJHm06HIagiwESFUs6ZjpG3Lri
         o5oD+hwL7tipJTfbwGpbZ60ep8fUGcrSdMX6rsRTGn40kmKxy4o36HwM3fFHWmwIgETw
         kH7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gd2zVAu8;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y12si138107pfe.23.2017.09.23.02.12.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 02:12:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gd2zVAu8;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id i130so2009116pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 02:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Na4ww7IUOQjSZa2mvbnJV8M+QsMEOlQhoGblclgD59U=;
        b=gd2zVAu81NJexxU7O7Ds1IluV7tv+L1414aLrpFnCW/MDU5HpxEgVSi8iIslQda1xi
         Asc6JD5PQ/s0uvO/VZPLdgTCqvMtozSEs/o+mFfPf0AWeIxEYMXe8naZmgXLeT+Qv7oJ
         n8OgJr8mXo/WrB/tJa5tzdLuClQM2niiaExmod8ItW2KlO5b/FLm0z/+/613NO0DC75u
         WSYld0ht+tf8RXwJXPpfrfZoljdw+FmkIenfWVVdztacjwgUTXJtEksc8oT4vcEfjhso
         eS2mdm27kyqrWelo1xT4myXZmEmMO58QDarDhMFbI8/yJLi9T5+xoJ0FJqn9YFSMcQLB
         j3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Na4ww7IUOQjSZa2mvbnJV8M+QsMEOlQhoGblclgD59U=;
        b=V07kMhlNfnQ4gQQNNvMQ5wGlI2+flZmOztIx/g0fdRXVBEwbvTH84afVSCfZan09XA
         uRKr2y3InIhjG39ueeDBa464MHfaNHAP5Ib1Eug9XLN/Y6ujQXai6LyaZbGCYpDQ7I7F
         R6yj+fVyr6+WJjEoHCttT9hSuszFaD4241hkl2zbgveEjHwoPe82Zgmy/PWQB90yzfqE
         i/BE1Zn8oq5yfqzLENnmMsmMbetu+vidtTgxGZ5ODsZA0d5ZJXtpq+twJAqdUr/a+GAd
         VRSpdQyW9CmmIaHWspNGOlr5UmhVOMxNwX1GROOxoZRR05NewZmgJvl2AbRxD432n82o
         1lMw==
X-Gm-Message-State: AHPjjUgzwHtC/kQ5/xDgdKMDDA1NS8o8oeZLLWEYNqL51hBxqssy+D02
	cJom+4Pa+D3ZZUYPAf3ExqZBLQ==
X-Google-Smtp-Source: AOwi7QDN2Trwbnh/P7bDXwM8GdD2jQQX79r8t8Tyic/zGc7RRG0aEs0e2p5L1t3TOBusWer2mVCbCQ==
X-Received: by 10.84.128.15 with SMTP id 15mr1671011pla.232.1506157929234;
        Sat, 23 Sep 2017 02:12:09 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id h82sm4129433pfd.148.2017.09.23.02.12.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Sep 2017 02:12:08 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: noralf@tronnes.org
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] drm/tinydrm: Replace dev_error with DRM_DEV_ERROR
Date: Sat, 23 Sep 2017 14:40:02 +0530
Message-Id: <1506157802-6988-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Convert instances of dev_error to DRM_DEV_ERROR as we have
DRM_DEV_ERROR variants of drm print macros.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/gpu/drm/tinydrm/mi0283qt.c |  8 ++++----
 drivers/gpu/drm/tinydrm/repaper.c  | 26 +++++++++++++-------------
 drivers/gpu/drm/tinydrm/st7586.c   |  6 +++---
 3 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
index 7e5bb7d..7dded50 100644
--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
@@ -31,7 +31,7 @@ static int mi0283qt_init(struct mipi_dbi *mipi)
 
 	ret = regulator_enable(mipi->regulator);
 	if (ret) {
-		dev_err(dev, "Failed to enable regulator %d\n", ret);
+		DRM_DEV_ERROR(dev, "Failed to enable regulator %d\n", ret);
 		return ret;
 	}
 
@@ -42,7 +42,7 @@ static int mi0283qt_init(struct mipi_dbi *mipi)
 	mipi_dbi_hw_reset(mipi);
 	ret = mipi_dbi_command(mipi, MIPI_DCS_SOFT_RESET);
 	if (ret) {
-		dev_err(dev, "Error sending command %d\n", ret);
+		DRM_DEV_ERROR(dev, "Error sending command %d\n", ret);
 		regulator_disable(mipi->regulator);
 		return ret;
 	}
@@ -175,13 +175,13 @@ static int mi0283qt_probe(struct spi_device *spi)
 
 	mipi->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(mipi->reset)) {
-		dev_err(dev, "Failed to get gpio 'reset'\n");
+		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
 		return PTR_ERR(mipi->reset);
 	}
 
 	dc = devm_gpiod_get_optional(dev, "dc", GPIOD_OUT_LOW);
 	if (IS_ERR(dc)) {
-		dev_err(dev, "Failed to get gpio 'dc'\n");
+		DRM_DEV_ERROR(dev, "Failed to get gpio 'dc'\n");
 		return PTR_ERR(dc);
 	}
 
diff --git a/drivers/gpu/drm/tinydrm/repaper.c b/drivers/gpu/drm/tinydrm/repaper.c
index 30dc97b..bd152bb 100644
--- a/drivers/gpu/drm/tinydrm/repaper.c
+++ b/drivers/gpu/drm/tinydrm/repaper.c
@@ -473,7 +473,7 @@ static void repaper_get_temperature(struct repaper_epd *epd)
 
 	ret = thermal_zone_get_temp(epd->thermal, &temperature);
 	if (ret) {
-		dev_err(&epd->spi->dev, "Failed to get temperature (%d)\n",
+		DRM_DEV_ERROR(&epd->spi->dev, "Failed to get temperature (%d)\n",
 			ret);
 		return;
 	}
@@ -629,7 +629,7 @@ static int repaper_fb_dirty(struct drm_framebuffer *fb,
 	mutex_unlock(&tdev->dirty_lock);
 
 	if (ret)
-		dev_err(fb->dev->dev, "Failed to update display (%d)\n", ret);
+		DRM_DEV_ERROR(fb->dev->dev, "Failed to update display (%d)\n", ret);
 	kfree(buf);
 
 	return ret;
@@ -703,7 +703,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
 	}
 
 	if (!i) {
-		dev_err(dev, "timeout waiting for panel to become ready.\n");
+		DRM_DEV_ERROR(dev, "timeout waiting for panel to become ready.\n");
 		power_off(epd);
 		return;
 	}
@@ -725,9 +725,9 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
 	ret = repaper_read_val(spi, 0x0f);
 	if (ret < 0 || !(ret & 0x80)) {
 		if (ret < 0)
-			dev_err(dev, "failed to read chip (%d)\n", ret);
+			DRM_DEV_ERROR(dev, "failed to read chip (%d)\n", ret);
 		else
-			dev_err(dev, "panel is reported broken\n");
+			DRM_DEV_ERROR(dev, "panel is reported broken\n");
 		power_off(epd);
 		return;
 	}
@@ -767,7 +767,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
 		/* check DC/DC */
 		ret = repaper_read_val(spi, 0x0f);
 		if (ret < 0) {
-			dev_err(dev, "failed to read chip (%d)\n", ret);
+			DRM_DEV_ERROR(dev, "failed to read chip (%d)\n", ret);
 			power_off(epd);
 			return;
 		}
@@ -779,7 +779,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
 	}
 
 	if (!dc_ok) {
-		dev_err(dev, "dc/dc failed\n");
+		DRM_DEV_ERROR(dev, "dc/dc failed\n");
 		power_off(epd);
 		return;
 	}
@@ -959,7 +959,7 @@ static int repaper_probe(struct spi_device *spi)
 	if (IS_ERR(epd->panel_on)) {
 		ret = PTR_ERR(epd->panel_on);
 		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get gpio 'panel-on'\n");
+			DRM_DEV_ERROR(dev, "Failed to get gpio 'panel-on'\n");
 		return ret;
 	}
 
@@ -967,7 +967,7 @@ static int repaper_probe(struct spi_device *spi)
 	if (IS_ERR(epd->discharge)) {
 		ret = PTR_ERR(epd->discharge);
 		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get gpio 'discharge'\n");
+			DRM_DEV_ERROR(dev, "Failed to get gpio 'discharge'\n");
 		return ret;
 	}
 
@@ -975,7 +975,7 @@ static int repaper_probe(struct spi_device *spi)
 	if (IS_ERR(epd->reset)) {
 		ret = PTR_ERR(epd->reset);
 		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get gpio 'reset'\n");
+			DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
 		return ret;
 	}
 
@@ -983,7 +983,7 @@ static int repaper_probe(struct spi_device *spi)
 	if (IS_ERR(epd->busy)) {
 		ret = PTR_ERR(epd->busy);
 		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get gpio 'busy'\n");
+			DRM_DEV_ERROR(dev, "Failed to get gpio 'busy'\n");
 		return ret;
 	}
 
@@ -991,7 +991,7 @@ static int repaper_probe(struct spi_device *spi)
 					 &thermal_zone)) {
 		epd->thermal = thermal_zone_get_zone_by_name(thermal_zone);
 		if (IS_ERR(epd->thermal)) {
-			dev_err(dev, "Failed to get thermal zone: %s\n",
+			DRM_DEV_ERROR(dev, "Failed to get thermal zone: %s\n",
 				thermal_zone);
 			return PTR_ERR(epd->thermal);
 		}
@@ -1033,7 +1033,7 @@ static int repaper_probe(struct spi_device *spi)
 		if (IS_ERR(epd->border)) {
 			ret = PTR_ERR(epd->border);
 			if (ret != -EPROBE_DEFER)
-				dev_err(dev, "Failed to get gpio 'border'\n");
+				DRM_DEV_ERROR(dev, "Failed to get gpio 'border'\n");
 			return ret;
 		}
 
diff --git a/drivers/gpu/drm/tinydrm/st7586.c b/drivers/gpu/drm/tinydrm/st7586.c
index b439956..14361a5 100644
--- a/drivers/gpu/drm/tinydrm/st7586.c
+++ b/drivers/gpu/drm/tinydrm/st7586.c
@@ -187,7 +187,7 @@ static void st7586_pipe_enable(struct drm_simple_display_pipe *pipe,
 	mipi_dbi_hw_reset(mipi);
 	ret = mipi_dbi_command(mipi, ST7586_AUTO_READ_CTRL, 0x9f);
 	if (ret) {
-		dev_err(dev, "Error sending command %d\n", ret);
+		DRM_DEV_ERROR(dev, "Error sending command %d\n", ret);
 		return;
 	}
 
@@ -355,13 +355,13 @@ static int st7586_probe(struct spi_device *spi)
 
 	mipi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(mipi->reset)) {
-		dev_err(dev, "Failed to get gpio 'reset'\n");
+		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
 		return PTR_ERR(mipi->reset);
 	}
 
 	a0 = devm_gpiod_get(dev, "a0", GPIOD_OUT_LOW);
 	if (IS_ERR(a0)) {
-		dev_err(dev, "Failed to get gpio 'a0'\n");
+		DRM_DEV_ERROR(dev, "Failed to get gpio 'a0'\n");
 		return PTR_ERR(a0);
 	}
 
-- 
1.9.1



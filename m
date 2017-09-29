X-GM-THRID: 6468899055788359680
X-Received: by 10.101.76.1 with SMTP id u1mr915831pgq.79.1506671446889;
        Fri, 29 Sep 2017 00:50:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.122.76 with SMTP id j12ls1671248pgn.22.gmail; Fri, 29 Sep
 2017 00:50:45 -0700 (PDT)
X-Received: by 10.84.160.227 with SMTP id v32mr622048plg.29.1506671445850;
        Fri, 29 Sep 2017 00:50:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506671445; cv=none;
        d=google.com; s=arc-20160816;
        b=xSR/7cq5dcUxS7f6MyYWawhB/ehnBKOeCZdHY6iBucvauI7YEArrK+CnZtUGQTlzb3
         8U6Wi5Eb76SnH5gSmXfP8+JFR4hHQwBZCddXb5r57zSgfF22dLPHBB8xtQlVaWLMWr6x
         xhlMRxqUvlpD4/p7MsNyQPQwlBFPSwKCkWMTaRJwxyhE2Q91RMDi0F9ckJDLkXpMP5ce
         o22AAhx8lu6OzkVduUuc3D0p0WR28H0CLd7ApBDbKqe4qsX2//G3t3lauigjAdDozh3l
         6ikhG5nwzc1qDhxQyydmcu6N1CIsXfLwHYYfi41S6cdI9BOGyckipYQMDcOkBfYMtr29
         yCDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=FW2MAOf4fKQxNuiszKt3k96vC6UiTkx4l7Yu8fpmlzY=;
        b=QhIFpn//QDF1OEP39PTGX4PXrG+3cp2G3JST9d0noJu9k4YGJe40/y3VSjDGXN2DiH
         ypz+/OMiqLbJagxsWlz9kupXAepgLc176/LRytqKwNS3XjIB8T+HYDt0YQB0W6pB0M3K
         2geFeZmIIX8Jo8DVqXprNr7lJ9vnuNLc7OhZm0QM1GHgrayYClu9qZ1w44f0MCtsEpCy
         RM3cCM+Exm5jNZdRwmjTp73GWZFzc6CxO3r0AAd7CfIB0/2MjAR+MrmxH2BXcS25Yx/9
         kVQ0ISUWpuBigsqmrkYNkyRws5QysfdY9gz1BVAlF6yNBT/fHg3Olk5+h/EQlR58j+uS
         QIPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TPQy8GX3;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y12si479338pfe.23.2017.09.29.00.50.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 00:50:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TPQy8GX3;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id u136so789193pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 00:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=FW2MAOf4fKQxNuiszKt3k96vC6UiTkx4l7Yu8fpmlzY=;
        b=TPQy8GX34T9cYzq3Cp3TpEw0mbFC4TBnstGPhIJvScdFivW7Y/v48SpcHZRv/t262b
         QwhKD6kD75q4UZHWqIl1xOoB8dH36GVJlIBs+CfQAM7a2MmeqtA62rX3vofLUg/6CxyR
         QvMR5AOnuvhYh8j76b33yyA6jTBd4I16Kgu2dKm5FUq204PJTzZxNOszsJ2seN9cb6pZ
         /gbKqMJDReHAclhrYMs/aSdaziT5aBAeM5BbeVJ+qbB8mtc2wJKFnx+qAjX2eFAy4Y7h
         J2O5Gbwi/nPsyZ3We10GEoPMaWU4934E2s2/+ZNAz15q9XuzS56Kt3+Cne7l8vzJORey
         aozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=FW2MAOf4fKQxNuiszKt3k96vC6UiTkx4l7Yu8fpmlzY=;
        b=amzqJkOhN9hN4oj7M21n25QsV0zxae+vnuaP6zvBemxHFvCdP4En8+RSBxyoqe3Qj9
         FANhjVCxqC80JIyqP7Khl/xVEnudv5L4x6gWemm66c45X8N3q/8A1P6W2ZbUui9vl5le
         I7SbPsM5G9VFhsWHyQe0Lj31GlnO1UYUtL3CTI52VivHjnFYdj0DRrb4F4hgmKMspBqO
         RhJdJPICwItYf95iAiJguTZUoeh46QYivr0phiJv5EHPb1YCHNuO6RvhOhGXgmSvzzVY
         m2dtWjJ/C4WAoqbshfvWJ3tY7Dn56advI1/NAO65KE5U9BtlKZ1SoLVUsMJD3bdcd0gI
         OKhA==
X-Gm-Message-State: AHPjjUiBHNaPZQfKagDvjP6izYHGZx6RpoQahaOQtuYKuVyTw/6AYWQN
	cF0kPk+wCGqB7KwATvWSRz4=
X-Google-Smtp-Source: AOwi7QCsH7arxlt1FoMl6he/7a45u2ItldoIAz0Uq5L0PkGOOEUkgoiVzMMiuiqBkomRWYRs3yyWsg==
X-Received: by 10.98.247.21 with SMTP id h21mr6580849pfi.233.1506671445518;
        Fri, 29 Sep 2017 00:50:45 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id q136sm6001536pfq.10.2017.09.29.00.50.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Sep 2017 00:50:45 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: noralf@tronnes.org
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] drm/tinydrm: Replace dev_error with DRM_DEV_ERROR
Date: Fri, 29 Sep 2017 13:18:38 +0530
Message-Id: <1506671318-5121-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Convert instances of dev_error to DRM_DEV_ERROR as we have
DRM_DEV_ERROR variants of drm print macros.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v2:
 -Fix alignment issues

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
+		DRM_DEV_ERROR(&epd->spi->dev, "Failed to get temperature (%d)\n", ret);
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
+			DRM_DEV_ERROR(dev, "Failed to get thermal zone: %s\n", thermal_zone);
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



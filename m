X-GM-THRID: 6468899055788359680
X-Received: by 10.101.85.68 with SMTP id t4mr323738pgr.4.1507328393107;
        Fri, 06 Oct 2017 15:19:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.76.133 with SMTP id m5ls6148pgt.21.gmail; Fri, 06 Oct 2017
 15:19:51 -0700 (PDT)
X-Received: by 10.99.183.13 with SMTP id t13mr302579pgf.47.1507328391365;
        Fri, 06 Oct 2017 15:19:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507328391; cv=none;
        d=google.com; s=arc-20160816;
        b=dBOl7PYJEtKMr5r3KwyOnEDTQURMeG3Fqn/0idOThTKUYSfqk0Q/+nxc80xlyQkf4X
         pFoAi2FG/+93iH/0YbBnARtwHaGAqTg8gYyiSxJ69erjaiLNAC7MqziYbWNFLgdoSEAQ
         6DaSfjPB9yj7eiYrlUQ2YFlFH5PYnH0VRew5zwLiS/y2X9shXNJ8z9UwzgvsHV2MyzxS
         9qM3ZnZLz7M9fVu6Yk01yeHeu48xKXL3Pe0+kr9mtCsIqKHX7d+FvNzrU2Dfdwjfllzl
         JBxrHMxpaztNdmocYjWQdWEGBwuxbK42+D9FrpmXKhmUzzKSC/4RpWO3rOQcyEDwnLty
         /fEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=1c3SWui+34B5lxv8RJsvVwwTVw01KSXWDzZRa0dWYpc=;
        b=nFDnSj2f2TAWnGyZ+EaK6KqO117RbSstdfnw5X+fSqLEB5dH4/KcGYbcAuOcHAScnD
         8CO5xk+uvSdHfufVAGnWtJhmZ3qJNvySaJ9VTvs542auKuKm7dSRdO6+PAmAPmnMHyvl
         Jh+kfSw9y4Ms3mVr6SUmGBsxzGBDE5zvNMDITf2YjRkgEbqsmrspJ0zj1XtEy3/fe3eT
         Ibtajb8weFYSLkOGrQlA4Xak3PIgfdGbZ8a9E7YjkVhh1yYe0des0rN7rpW1iYplcl5l
         k2VwBekJ+NydGmDzKSW3VKOh7DNGeXuSF/Hrdl1tXAVReR0nm1GxMYe9BgcuLSHjSuJ4
         kbVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uSrekRQF;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id d207si277047pfd.16.2017.10.06.15.19.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 15:19:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uSrekRQF;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id j3so3842515pga.5
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Oct 2017 15:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1c3SWui+34B5lxv8RJsvVwwTVw01KSXWDzZRa0dWYpc=;
        b=uSrekRQF4maT95hCpKzujlF4kTqi8naU8ssL/vTKVc0JVJujQSLyOZx965Sc0O/n7m
         Lo4JCyTOeXDO5z/Eo2EPcJd4pOoZdjmUx2/eXtkb3Dxc3e4OY3NPCdNAYzhWiHSADbrl
         BQUpYwLdO9aZ9DgLf+gKip8t88OT6F+YGmHLqcEcHagkS4iNzydxP1KsuiFoIrghEzlq
         Ym/QwJW2fYdtUMvMLG6Lu0EAICEFEtQKFNhYZoAox+NNYvaCTBQIsaPeZmuNeRgdrgTn
         iDqZZauNx1YjkL7iBArWTi6lJgHgJvC3qnAdNKhngwgkvYxOf9MLTpz8GTQZGepQ0Pgs
         4tqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1c3SWui+34B5lxv8RJsvVwwTVw01KSXWDzZRa0dWYpc=;
        b=WNasbXOimDa86O6gg2BdwB3G9NXXOmT1ExBBNiHuokiHmwvgCURgRCTiROVlZY8XbW
         iLK9aDV9yUoRj1Z9bWSmIh2AOLcCPSMwv3W92w3V9cUgQmpRRrfCByRXDxh8BnaFr1iE
         pUOf1d4dWCpk+diXtrODgUDAklHn56SUve4lUgU65weY6vDr9e187I226AoMFQFjfH93
         0o0IBcksgqsuq5vi3H6FKuQHhHjTmeNgwAGyh5swEz22g7+4lMcdAFphTtW7m9sElvET
         nvJNBnOwvJkWK/+V8YLt1JEsdv0fkCSy4cLsPgplR+vZmzrZvgHQbrPIwHVI+xAlBiNR
         b3ug==
X-Gm-Message-State: AMCzsaVX8sAahR7BzVyZK0eHSJuy9jvUoFJ74mz43LnNRXO8QU/wz616
	10SKBgAEv+U7LCHPqPX1W6E=
X-Google-Smtp-Source: AOwi7QBTka2KQ8N4I85EkF83CdZCP/ifYHWp8qzvPSorkbkqlvmoZ58LzetwvXPhHOnMwNbbKDKMYw==
X-Received: by 10.98.40.74 with SMTP id o71mr3472530pfo.326.1507328391038;
        Fri, 06 Oct 2017 15:19:51 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id n2sm3790913pgs.89.2017.10.06.15.19.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 15:19:50 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: noralf@tronnes.org
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v3] drm/tinydrm: Replace dev_error with DRM_DEV_ERROR
Date: Sat,  7 Oct 2017 03:47:38 +0530
Message-Id: <20171006221738.30200-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Convert instances of dev_error to DRM_DEV_ERROR as we have
DRM_DEV_ERROR variants of drm print macros.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v3:
 -Solve merge conflicts
Changes in v2:
 -Fix alignment issues
 drivers/gpu/drm/tinydrm/mi0283qt.c |  8 ++++----
 drivers/gpu/drm/tinydrm/repaper.c  | 28 +++++++++++++---------------
 drivers/gpu/drm/tinydrm/st7586.c   |  6 +++---
 3 files changed, 20 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
index 7e5bb7d6f655..7dded506ba8c 100644
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
index 30dc97b3ff21..028d428d4ab9 100644
--- a/drivers/gpu/drm/tinydrm/repaper.c
+++ b/drivers/gpu/drm/tinydrm/repaper.c
@@ -473,8 +473,7 @@ static void repaper_get_temperature(struct repaper_epd *epd)
 
 	ret = thermal_zone_get_temp(epd->thermal, &temperature);
 	if (ret) {
-		dev_err(&epd->spi->dev, "Failed to get temperature (%d)\n",
-			ret);
+		DRM_DEV_ERROR(&epd->spi->dev, "Failed to get temperature (%d)\n", ret);
 		return;
 	}
 
@@ -629,7 +628,7 @@ static int repaper_fb_dirty(struct drm_framebuffer *fb,
 	mutex_unlock(&tdev->dirty_lock);
 
 	if (ret)
-		dev_err(fb->dev->dev, "Failed to update display (%d)\n", ret);
+		DRM_DEV_ERROR(fb->dev->dev, "Failed to update display (%d)\n", ret);
 	kfree(buf);
 
 	return ret;
@@ -703,7 +702,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
 	}
 
 	if (!i) {
-		dev_err(dev, "timeout waiting for panel to become ready.\n");
+		DRM_DEV_ERROR(dev, "timeout waiting for panel to become ready.\n");
 		power_off(epd);
 		return;
 	}
@@ -725,9 +724,9 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
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
@@ -767,7 +766,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
 		/* check DC/DC */
 		ret = repaper_read_val(spi, 0x0f);
 		if (ret < 0) {
-			dev_err(dev, "failed to read chip (%d)\n", ret);
+			DRM_DEV_ERROR(dev, "failed to read chip (%d)\n", ret);
 			power_off(epd);
 			return;
 		}
@@ -779,7 +778,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
 	}
 
 	if (!dc_ok) {
-		dev_err(dev, "dc/dc failed\n");
+		DRM_DEV_ERROR(dev, "dc/dc failed\n");
 		power_off(epd);
 		return;
 	}
@@ -959,7 +958,7 @@ static int repaper_probe(struct spi_device *spi)
 	if (IS_ERR(epd->panel_on)) {
 		ret = PTR_ERR(epd->panel_on);
 		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get gpio 'panel-on'\n");
+			DRM_DEV_ERROR(dev, "Failed to get gpio 'panel-on'\n");
 		return ret;
 	}
 
@@ -967,7 +966,7 @@ static int repaper_probe(struct spi_device *spi)
 	if (IS_ERR(epd->discharge)) {
 		ret = PTR_ERR(epd->discharge);
 		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get gpio 'discharge'\n");
+			DRM_DEV_ERROR(dev, "Failed to get gpio 'discharge'\n");
 		return ret;
 	}
 
@@ -975,7 +974,7 @@ static int repaper_probe(struct spi_device *spi)
 	if (IS_ERR(epd->reset)) {
 		ret = PTR_ERR(epd->reset);
 		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get gpio 'reset'\n");
+			DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
 		return ret;
 	}
 
@@ -983,7 +982,7 @@ static int repaper_probe(struct spi_device *spi)
 	if (IS_ERR(epd->busy)) {
 		ret = PTR_ERR(epd->busy);
 		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get gpio 'busy'\n");
+			DRM_DEV_ERROR(dev, "Failed to get gpio 'busy'\n");
 		return ret;
 	}
 
@@ -991,8 +990,7 @@ static int repaper_probe(struct spi_device *spi)
 					 &thermal_zone)) {
 		epd->thermal = thermal_zone_get_zone_by_name(thermal_zone);
 		if (IS_ERR(epd->thermal)) {
-			dev_err(dev, "Failed to get thermal zone: %s\n",
-				thermal_zone);
+			DRM_DEV_ERROR(dev, "Failed to get thermal zone: %s\n", thermal_zone);
 			return PTR_ERR(epd->thermal);
 		}
 	}
@@ -1033,7 +1031,7 @@ static int repaper_probe(struct spi_device *spi)
 		if (IS_ERR(epd->border)) {
 			ret = PTR_ERR(epd->border);
 			if (ret != -EPROBE_DEFER)
-				dev_err(dev, "Failed to get gpio 'border'\n");
+				DRM_DEV_ERROR(dev, "Failed to get gpio 'border'\n");
 			return ret;
 		}
 
diff --git a/drivers/gpu/drm/tinydrm/st7586.c b/drivers/gpu/drm/tinydrm/st7586.c
index b439956a07f4..14361a5e9deb 100644
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
2.11.0



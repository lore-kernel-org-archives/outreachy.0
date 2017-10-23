X-GM-THRID: 6480148992322699264
X-Received: by 10.176.30.139 with SMTP id o11mr7681826uak.95.1508777260820;
        Mon, 23 Oct 2017 09:47:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.56.51 with SMTP id p48ls4572492uad.9.gmail; Mon, 23 Oct
 2017 09:47:39 -0700 (PDT)
X-Received: by 10.31.172.79 with SMTP id v76mr6872461vke.25.1508777259905;
        Mon, 23 Oct 2017 09:47:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508777259; cv=none;
        d=google.com; s=arc-20160816;
        b=gduC3GtgQj4Sm7KPEnPm4IRsZU6w772iIQ3aevfI9uBN+CSiv8OuUNnzwGmDFOqj0k
         z2gKvAy+1O0EyOjtDZ+qSK+pMKfIu1s2fOPydFSwQ2DLsNffsrIwH9LixVvqJFlnfffl
         f+R2iF8sIAfr56pZbBHcxi2ze4IaN/oFLggdvmm5nflsf86HFC3TvMnNdPyRPUHzAp0D
         qwsnS6reC/8jKEnZz8N7lZJGUXh9FjnsM6PtigqB9TWbmIKHyJMZQAm3NVj5EBrwfSsi
         ZLtZJMjQ6iS6j/9x4eSVbhaFpOamFznAPD6L/kSYop9M/IwF+QkdfDTqyuJOGtwrUXBd
         bMJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:arc-authentication-results;
        bh=cadHMp390jgC+TfgFMylhNSy+GAkBfDRkbz61e+LJ3E=;
        b=JEt9/gpu1h79wkRQ58eehgm4ii4NV3yh3d0AgScIuWJqd+3P1Xo60rnh71BHG6A8jq
         64kUJmSJDi/nO/DkBY4U4yrk6NH1Q6NzPM5gqAeQJXr6eGYI9vqWQJOlvQJ6bz7E87rt
         vHBAR5e31ZSgoK5IhjK1vyZVulYJ8wqje3ho1zknS8j9deCqeJmXGzYl2KzzAPM8Jir8
         NUHTNhdBXwTn2GYUStZlwyb5HQp9+uCCphjbH8ieXRjzudS8iR10IRVj97enjGIJAeRa
         wqHiYMPs5QDQ4WyOxy0cJhA/7OZEJDTaz3D1SY2A/QPnHvqEQNIPlZH4/Zg6fHQu4Fu+
         42tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HNXLJte7;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id d33si684376uai.0.2017.10.23.09.47.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Oct 2017 09:47:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HNXLJte7;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id t188so17523685pfd.10
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Oct 2017 09:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cadHMp390jgC+TfgFMylhNSy+GAkBfDRkbz61e+LJ3E=;
        b=HNXLJte712VFU0GNWqG22dSz39Ebp6Tk19m8ZrUsUWl22znoqL/5w/bdTQi8/509IF
         i5nDkQn3wAjpsxnh9qTS48CTcFCbxZF6phEgh3tA8aqL/McpfKfTGXG3a/emIFVJLAdC
         1vDYF4SLV3HEXY/3UN9eFbecU6XbPvCCWBlUtDUIq/fAUgXS4msiVhbM7Vndf+t5sI0p
         RFXG8xYth2IxIr5d/9YdUXFWl/yNURGMn5XOpqR/mQ21L5Z8eQ4o8b4LOUTwPnE7SdiY
         3Kgm+LruPDjW0jlM4nJ3gvsXDFhTH7xg1fjPXuVwPBgejuUWc9QznjVSn5K+Zyoyz+j0
         42Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cadHMp390jgC+TfgFMylhNSy+GAkBfDRkbz61e+LJ3E=;
        b=REf9TUpNjZLgIsyFHC/igGz+j3RK/TJGQbnu15ZaU6Ms2QpDNsp4Bp/+hbPqZWxC51
         Yg7IjiZcdTnEX/A6HhaUFLVfLltJ06qtO+OeEMG4Qr8Yhh7phq11pEiIxDCeSvLE41UN
         +QnO5Ld68SnGYKzY+pZ2FUTgkmRRPs+/DS676W/0whhxHRzaRDo1e2ulyQjd2vJOU3pa
         G98D+pj/mjOASnh/iMzbY54treisjM9+xHjaXYzZa9A2K+1Z+mzEEXselPQJIa1ljGFa
         eoGpBIIRoBA9O6GyrAP18V8t0f69eMcdwBvY0CPeyrGnBEdLIs6WPpwCC2nNG00SRiB5
         eXMA==
X-Gm-Message-State: AMCzsaV8K8DyqsBODJSWiOz13OxfTMaCpPbIIwrE3+oZD9s6c5L9X37K
	Wb6ie5wDGa+ckLHtu+CPaHU=
X-Google-Smtp-Source: ABhQp+TcQVdMB/Ec4VFkwVbeWi+Gm/Vw04mIylBdKuOkkH8vo08wg/bxNkQ1y3X8sAb5oKNzCIJ8RQ==
X-Received: by 10.98.161.24 with SMTP id b24mr13948274pff.297.1508777259017;
        Mon, 23 Oct 2017 09:47:39 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id d12sm11233792pgt.16.2017.10.23.09.47.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Oct 2017 09:47:38 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: seanpaul@chromium.org,
	outreachy-kernel@googlegroups.com,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [RESEND PATCH] drm: panel: replace dev_info/dev_err/dev_warn  with DRM_DEV_* equivalent
Date: Mon, 23 Oct 2017 22:17:23 +0530
Message-Id: <1508777243-2836-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

For drivers which could have multiple instances, it is necessary to
differentiate between which is which in the logs. Since
DRM_INFO/WARN/ERROR don’t do this, drivers used dev_info/warn/err to
make this differentiation. We now have DRM_DEV_* variants of the drm
print macros, so we can start to convert those drivers back to using
drm-formwatted specific log messages.

This patch is using following Coccinelle script:
@@
@@

(
- dev_info
+ DRM_DEV_INFO
|
- dev_err
+ DRM_DEV_ERROR
|
- dev_dbg
+ DRM_DEV_DEBUG
)

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/gpu/drm/panel/panel-innolux-p079zca.c      |  2 +-
 drivers/gpu/drm/panel/panel-jdi-lt070me05000.c     | 38 +++++++-------
 drivers/gpu/drm/panel/panel-lg-lg4573.c            | 18 +++----
 drivers/gpu/drm/panel/panel-lvds.c                 | 28 +++++-----
 .../gpu/drm/panel/panel-panasonic-vvx10f034n00.c   | 13 ++---
 drivers/gpu/drm/panel/panel-samsung-ld9040.c       | 12 ++---
 drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c      | 14 ++---
 drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c      | 28 +++++-----
 drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c    | 60 +++++++++++++---------
 drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c    | 21 ++++----
 drivers/gpu/drm/panel/panel-simple.c               | 15 +++---
 drivers/gpu/drm/panel/panel-sitronix-st7789v.c     |  8 +--
 12 files changed, 141 insertions(+), 116 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-innolux-p079zca.c b/drivers/gpu/drm/panel/panel-innolux-p079zca.c
index 6ba9344..02e6720 100644
--- a/drivers/gpu/drm/panel/panel-innolux-p079zca.c
+++ b/drivers/gpu/drm/panel/panel-innolux-p079zca.c
@@ -228,7 +228,7 @@ static int innolux_panel_add(struct innolux_panel *innolux)
 						       GPIOD_OUT_HIGH);
 	if (IS_ERR(innolux->enable_gpio)) {
 		err = PTR_ERR(innolux->enable_gpio);
-		dev_dbg(dev, "failed to get enable gpio: %d\n", err);
+		DRM_DEV_DEBUG(dev, "failed to get enable gpio: %d\n", err);
 		innolux->enable_gpio = NULL;
 	}
 
diff --git a/drivers/gpu/drm/panel/panel-jdi-lt070me05000.c b/drivers/gpu/drm/panel/panel-jdi-lt070me05000.c
index 5b2340e..9c29035 100644
--- a/drivers/gpu/drm/panel/panel-jdi-lt070me05000.c
+++ b/drivers/gpu/drm/panel/panel-jdi-lt070me05000.c
@@ -161,7 +161,7 @@ static int jdi_panel_on(struct jdi_panel *jdi)
 
 	ret = mipi_dsi_dcs_set_display_on(dsi);
 	if (ret < 0)
-		dev_err(dev, "failed to set display on: %d\n", ret);
+		DRM_DEV_ERROR(dev, "failed to set display on: %d\n", ret);
 
 	return ret;
 }
@@ -176,11 +176,11 @@ static void jdi_panel_off(struct jdi_panel *jdi)
 
 	ret = mipi_dsi_dcs_set_display_off(dsi);
 	if (ret < 0)
-		dev_err(dev, "failed to set display off: %d\n", ret);
+		DRM_DEV_ERROR(dev, "failed to set display off: %d\n", ret);
 
 	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
 	if (ret < 0)
-		dev_err(dev, "failed to enter sleep mode: %d\n", ret);
+		DRM_DEV_ERROR(dev, "failed to enter sleep mode: %d\n", ret);
 
 	msleep(100);
 }
@@ -213,7 +213,7 @@ static int jdi_panel_unprepare(struct drm_panel *panel)
 
 	ret = regulator_bulk_disable(ARRAY_SIZE(jdi->supplies), jdi->supplies);
 	if (ret < 0)
-		dev_err(dev, "regulator disable failed, %d\n", ret);
+		DRM_DEV_ERROR(dev, "regulator disable failed, %d\n", ret);
 
 	gpiod_set_value(jdi->enable_gpio, 0);
 
@@ -237,7 +237,7 @@ static int jdi_panel_prepare(struct drm_panel *panel)
 
 	ret = regulator_bulk_enable(ARRAY_SIZE(jdi->supplies), jdi->supplies);
 	if (ret < 0) {
-		dev_err(dev, "regulator enable failed, %d\n", ret);
+		DRM_DEV_ERROR(dev, "regulator enable failed, %d\n", ret);
 		return ret;
 	}
 
@@ -254,13 +254,13 @@ static int jdi_panel_prepare(struct drm_panel *panel)
 
 	ret = jdi_panel_init(jdi);
 	if (ret < 0) {
-		dev_err(dev, "failed to init panel: %d\n", ret);
+		DRM_DEV_ERROR(dev, "failed to init panel: %d\n", ret);
 		goto poweroff;
 	}
 
 	ret = jdi_panel_on(jdi);
 	if (ret < 0) {
-		dev_err(dev, "failed to set panel on: %d\n", ret);
+		DRM_DEV_ERROR(dev, "failed to set panel on: %d\n", ret);
 		goto poweroff;
 	}
 
@@ -271,7 +271,7 @@ static int jdi_panel_prepare(struct drm_panel *panel)
 poweroff:
 	ret = regulator_bulk_disable(ARRAY_SIZE(jdi->supplies), jdi->supplies);
 	if (ret < 0)
-		dev_err(dev, "regulator disable failed, %d\n", ret);
+		DRM_DEV_ERROR(dev, "regulator disable failed, %d\n", ret);
 
 	gpiod_set_value(jdi->enable_gpio, 0);
 
@@ -319,9 +319,9 @@ static int jdi_panel_get_modes(struct drm_panel *panel)
 
 	mode = drm_mode_duplicate(panel->drm, &default_mode);
 	if (!mode) {
-		dev_err(dev, "failed to add mode %ux%ux@%u\n",
-			default_mode.hdisplay, default_mode.vdisplay,
-			default_mode.vrefresh);
+		DRM_DEV_ERROR(dev, "failed to add mode %ux%ux@%u\n",
+			      default_mode.hdisplay, default_mode.vdisplay,
+			      default_mode.vrefresh);
 		return -ENOMEM;
 	}
 
@@ -416,35 +416,35 @@ static int jdi_panel_add(struct jdi_panel *jdi)
 	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(jdi->supplies),
 				      jdi->supplies);
 	if (ret < 0) {
-		dev_err(dev, "failed to init regulator, ret=%d\n", ret);
+		DRM_DEV_ERROR(dev, "failed to init regulator, ret=%d\n", ret);
 		return ret;
 	}
 
 	jdi->enable_gpio = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
 	if (IS_ERR(jdi->enable_gpio)) {
 		ret = PTR_ERR(jdi->enable_gpio);
-		dev_err(dev, "cannot get enable-gpio %d\n", ret);
+		DRM_DEV_ERROR(dev, "cannot get enable-gpio %d\n", ret);
 		return ret;
 	}
 
 	jdi->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(jdi->reset_gpio)) {
 		ret = PTR_ERR(jdi->reset_gpio);
-		dev_err(dev, "cannot get reset-gpios %d\n", ret);
+		DRM_DEV_ERROR(dev, "cannot get reset-gpios %d\n", ret);
 		return ret;
 	}
 
 	jdi->dcdc_en_gpio = devm_gpiod_get(dev, "dcdc-en", GPIOD_OUT_LOW);
 	if (IS_ERR(jdi->dcdc_en_gpio)) {
 		ret = PTR_ERR(jdi->dcdc_en_gpio);
-		dev_err(dev, "cannot get dcdc-en-gpio %d\n", ret);
+		DRM_DEV_ERROR(dev, "cannot get dcdc-en-gpio %d\n", ret);
 		return ret;
 	}
 
 	jdi->backlight = drm_panel_create_dsi_backlight(jdi->dsi);
 	if (IS_ERR(jdi->backlight)) {
 		ret = PTR_ERR(jdi->backlight);
-		dev_err(dev, "failed to register backlight %d\n", ret);
+		DRM_DEV_ERROR(dev, "failed to register backlight %d\n", ret);
 		return ret;
 	}
 
@@ -495,12 +495,12 @@ static int jdi_panel_remove(struct mipi_dsi_device *dsi)
 
 	ret = jdi_panel_disable(&jdi->base);
 	if (ret < 0)
-		dev_err(&dsi->dev, "failed to disable panel: %d\n", ret);
+		DRM_DEV_ERROR(&dsi->dev, "failed to disable panel: %d\n", ret);
 
 	ret = mipi_dsi_detach(dsi);
 	if (ret < 0)
-		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n",
-			ret);
+		DRM_DEV_ERROR(&dsi->dev, "failed to detach from DSI host: %d\n",
+			      ret);
 
 	drm_panel_detach(&jdi->base);
 	jdi_panel_del(jdi);
diff --git a/drivers/gpu/drm/panel/panel-lg-lg4573.c b/drivers/gpu/drm/panel/panel-lg-lg4573.c
index 6989238..77c1c87 100644
--- a/drivers/gpu/drm/panel/panel-lg-lg4573.c
+++ b/drivers/gpu/drm/panel/panel-lg-lg4573.c
@@ -45,7 +45,7 @@ static int lg4573_spi_write_u16(struct lg4573 *ctx, u16 data)
 	u16 temp = cpu_to_be16(data);
 	struct spi_message msg;
 
-	dev_dbg(ctx->panel.dev, "writing data: %x\n", data);
+	DRM_DEV_DEBUG(ctx->panel.dev, "writing data: %x\n", data);
 	xfer.tx_buf = &temp;
 	spi_message_init(&msg);
 	spi_message_add_tail(&xfer, &msg);
@@ -112,7 +112,7 @@ static int lg4573_display_mode_settings(struct lg4573 *ctx)
 		0x7206, 0x720C, 0x7200, 0x7200,
 	};
 
-	dev_dbg(ctx->panel.dev, "transfer display mode settings\n");
+	DRM_DEV_DEBUG(ctx->panel.dev, "transfer display mode settings\n");
 	return lg4573_spi_write_u16_array(ctx, display_mode_settings,
 					  ARRAY_SIZE(display_mode_settings));
 }
@@ -128,7 +128,7 @@ static int lg4573_power_settings(struct lg4573 *ctx)
 		0x7263,
 	};
 
-	dev_dbg(ctx->panel.dev, "transfer power settings\n");
+	DRM_DEV_DEBUG(ctx->panel.dev, "transfer power settings\n");
 	return lg4573_spi_write_u16_array(ctx, power_settings,
 					  ARRAY_SIZE(power_settings));
 }
@@ -153,7 +153,7 @@ static int lg4573_gamma_settings(struct lg4573 *ctx)
 		0x7201, 0x7220, 0x7200, 0x7203,
 	};
 
-	dev_dbg(ctx->panel.dev, "transfer gamma settings\n");
+	DRM_DEV_DEBUG(ctx->panel.dev, "transfer gamma settings\n");
 	return lg4573_spi_write_u16_array(ctx, gamma_settings,
 					  ARRAY_SIZE(gamma_settings));
 }
@@ -162,7 +162,7 @@ static int lg4573_init(struct lg4573 *ctx)
 {
 	int ret;
 
-	dev_dbg(ctx->panel.dev, "initializing LCD\n");
+	DRM_DEV_DEBUG(ctx->panel.dev, "initializing LCD\n");
 
 	ret = lg4573_display_mode_settings(ctx);
 	if (ret)
@@ -216,9 +216,9 @@ static int lg4573_get_modes(struct drm_panel *panel)
 
 	mode = drm_mode_duplicate(panel->drm, &default_mode);
 	if (!mode) {
-		dev_err(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
-			default_mode.hdisplay, default_mode.vdisplay,
-			default_mode.vrefresh);
+		DRM_DEV_ERROR(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
+			      default_mode.hdisplay, default_mode.vdisplay,
+			      default_mode.vrefresh);
 		return -ENOMEM;
 	}
 
@@ -255,7 +255,7 @@ static int lg4573_probe(struct spi_device *spi)
 
 	ret = spi_setup(spi);
 	if (ret < 0) {
-		dev_err(&spi->dev, "SPI setup failed: %d\n", ret);
+		DRM_DEV_ERROR(&spi->dev, "SPI setup failed: %d\n", ret);
 		return ret;
 	}
 
diff --git a/drivers/gpu/drm/panel/panel-lvds.c b/drivers/gpu/drm/panel/panel-lvds.c
index e2d57c0..e19ad41 100644
--- a/drivers/gpu/drm/panel/panel-lvds.c
+++ b/drivers/gpu/drm/panel/panel-lvds.c
@@ -143,14 +143,16 @@ static int panel_lvds_parse_dt(struct panel_lvds *lvds)
 
 	ret = of_property_read_u32(np, "width-mm", &lvds->width);
 	if (ret < 0) {
-		dev_err(lvds->dev, "%pOF: invalid or missing %s DT property\n",
-			np, "width-mm");
+		DRM_DEV_ERROR(lvds->dev,
+			      "%pOF: invalid or missing %s DT property\n",
+			      np, "width-mm");
 		return -ENODEV;
 	}
 	ret = of_property_read_u32(np, "height-mm", &lvds->height);
 	if (ret < 0) {
-		dev_err(lvds->dev, "%pOF: invalid or missing %s DT property\n",
-			np, "height-mm");
+		DRM_DEV_ERROR(lvds->dev,
+			      "%pOF: invalid or missing %s DT property\n",
+			      np, "height-mm");
 		return -ENODEV;
 	}
 
@@ -158,8 +160,9 @@ static int panel_lvds_parse_dt(struct panel_lvds *lvds)
 
 	ret = of_property_read_string(np, "data-mapping", &mapping);
 	if (ret < 0) {
-		dev_err(lvds->dev, "%pOF: invalid or missing %s DT property\n",
-			np, "data-mapping");
+		DRM_DEV_ERROR(lvds->dev,
+			      "%pOF: invalid or missing %s DT property\n",
+			      np, "data-mapping");
 		return -ENODEV;
 	}
 
@@ -170,8 +173,9 @@ static int panel_lvds_parse_dt(struct panel_lvds *lvds)
 	} else if (!strcmp(mapping, "vesa-24")) {
 		lvds->bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG;
 	} else {
-		dev_err(lvds->dev, "%pOF: invalid or missing %s DT property\n",
-			np, "data-mapping");
+		DRM_DEV_ERROR(lvds->dev,
+			      "%pOF: invalid or missing %s DT property\n",
+			      np, "data-mapping");
 		return -EINVAL;
 	}
 
@@ -201,8 +205,8 @@ static int panel_lvds_probe(struct platform_device *pdev)
 						     GPIOD_OUT_LOW);
 	if (IS_ERR(lvds->enable_gpio)) {
 		ret = PTR_ERR(lvds->enable_gpio);
-		dev_err(lvds->dev, "failed to request %s GPIO: %d\n",
-			"enable", ret);
+		DRM_DEV_ERROR(lvds->dev, "failed to request %s GPIO: %d\n",
+			      "enable", ret);
 		return ret;
 	}
 
@@ -210,8 +214,8 @@ static int panel_lvds_probe(struct platform_device *pdev)
 						     GPIOD_OUT_HIGH);
 	if (IS_ERR(lvds->reset_gpio)) {
 		ret = PTR_ERR(lvds->reset_gpio);
-		dev_err(lvds->dev, "failed to request %s GPIO: %d\n",
-			"reset", ret);
+		DRM_DEV_ERROR(lvds->dev, "failed to request %s GPIO: %d\n",
+			      "reset", ret);
 		return ret;
 	}
 
diff --git a/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c b/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
index 7f915f7..5e17f84 100644
--- a/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
+++ b/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
@@ -137,7 +137,7 @@ static int wuxga_nt_panel_prepare(struct drm_panel *panel)
 
 	ret = wuxga_nt_panel_on(wuxga_nt);
 	if (ret < 0) {
-		dev_err(panel->dev, "failed to set panel on: %d\n", ret);
+		DRM_DEV_ERROR(panel->dev, "failed to set panel on: %d\n", ret);
 		goto poweroff;
 	}
 
@@ -188,9 +188,9 @@ static int wuxga_nt_panel_get_modes(struct drm_panel *panel)
 
 	mode = drm_mode_duplicate(panel->drm, &default_mode);
 	if (!mode) {
-		dev_err(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
-				default_mode.hdisplay, default_mode.vdisplay,
-				default_mode.vrefresh);
+		DRM_DEV_ERROR(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
+			      default_mode.hdisplay, default_mode.vdisplay,
+			      default_mode.vrefresh);
 		return -ENOMEM;
 	}
 
@@ -299,11 +299,12 @@ static int wuxga_nt_panel_remove(struct mipi_dsi_device *dsi)
 
 	ret = wuxga_nt_panel_disable(&wuxga_nt->base);
 	if (ret < 0)
-		dev_err(&dsi->dev, "failed to disable panel: %d\n", ret);
+		DRM_DEV_ERROR(&dsi->dev, "failed to disable panel: %d\n", ret);
 
 	ret = mipi_dsi_detach(dsi);
 	if (ret < 0)
-		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", ret);
+		DRM_DEV_ERROR(&dsi->dev,
+			      "failed to detach from DSI host: %d\n", ret);
 
 	drm_panel_detach(&wuxga_nt->base);
 	wuxga_nt_panel_del(wuxga_nt);
diff --git a/drivers/gpu/drm/panel/panel-samsung-ld9040.c b/drivers/gpu/drm/panel/panel-samsung-ld9040.c
index 3cf4cf6..a36c2ff 100644
--- a/drivers/gpu/drm/panel/panel-samsung-ld9040.c
+++ b/drivers/gpu/drm/panel/panel-samsung-ld9040.c
@@ -145,7 +145,7 @@ static void ld9040_dcs_write(struct ld9040 *ctx, const u8 *data, size_t len)
 	if (ctx->error < 0 || len == 0)
 		return;
 
-	dev_dbg(ctx->dev, "writing dcs seq: %*ph\n", (int)len, data);
+	DRM_DEV_DEBUG(ctx->dev, "writing dcs seq: %*ph\n", (int)len, data);
 	ret = ld9040_spi_write_word(ctx, *data);
 
 	while (!ret && --len) {
@@ -154,8 +154,8 @@ static void ld9040_dcs_write(struct ld9040 *ctx, const u8 *data, size_t len)
 	}
 
 	if (ret) {
-		dev_err(ctx->dev, "error %d writing dcs seq: %*ph\n", ret,
-			(int)len, data);
+		DRM_DEV_ERROR(ctx->dev, "error %d writing dcs seq: %*ph\n", ret,
+			      (int)len, data);
 		ctx->error = ret;
 	}
 
@@ -338,15 +338,15 @@ static int ld9040_probe(struct spi_device *spi)
 
 	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(ctx->reset_gpio)) {
-		dev_err(dev, "cannot get reset-gpios %ld\n",
-			PTR_ERR(ctx->reset_gpio));
+		DRM_DEV_ERROR(dev, "cannot get reset-gpios %ld\n",
+			      PTR_ERR(ctx->reset_gpio));
 		return PTR_ERR(ctx->reset_gpio);
 	}
 
 	spi->bits_per_word = 9;
 	ret = spi_setup(spi);
 	if (ret < 0) {
-		dev_err(dev, "spi setup failed.\n");
+		DRM_DEV_ERROR(dev, "spi setup failed.\n");
 		return ret;
 	}
 
diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c b/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c
index 797bbc7..583f96f 100644
--- a/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c
+++ b/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c
@@ -454,7 +454,7 @@ static int s6e3ha2_set_brightness(struct backlight_device *bl_dev)
 
 	if (brightness < S6E3HA2_MIN_BRIGHTNESS ||
 		brightness > bl_dev->props.max_brightness) {
-		dev_err(ctx->dev, "Invalid brightness: %u\n", brightness);
+		DRM_DEV_ERROR(ctx->dev, "Invalid brightness: %u\n", brightness);
 		return -EINVAL;
 	}
 
@@ -702,28 +702,28 @@ static int s6e3ha2_probe(struct mipi_dsi_device *dsi)
 	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ctx->supplies),
 				      ctx->supplies);
 	if (ret < 0) {
-		dev_err(dev, "failed to get regulators: %d\n", ret);
+		DRM_DEV_ERROR(dev, "failed to get regulators: %d\n", ret);
 		return ret;
 	}
 
 	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(ctx->reset_gpio)) {
-		dev_err(dev, "cannot get reset-gpios %ld\n",
-			PTR_ERR(ctx->reset_gpio));
+		DRM_DEV_ERROR(dev, "cannot get reset-gpios %ld\n",
+			      PTR_ERR(ctx->reset_gpio));
 		return PTR_ERR(ctx->reset_gpio);
 	}
 
 	ctx->enable_gpio = devm_gpiod_get(dev, "enable", GPIOD_OUT_HIGH);
 	if (IS_ERR(ctx->enable_gpio)) {
-		dev_err(dev, "cannot get enable-gpios %ld\n",
-			PTR_ERR(ctx->enable_gpio));
+		DRM_DEV_ERROR(dev, "cannot get enable-gpios %ld\n",
+			      PTR_ERR(ctx->enable_gpio));
 		return PTR_ERR(ctx->enable_gpio);
 	}
 
 	ctx->bl_dev = backlight_device_register("s6e3ha2", dev, ctx,
 						&s6e3ha2_bl_ops, NULL);
 	if (IS_ERR(ctx->bl_dev)) {
-		dev_err(dev, "failed to register backlight device\n");
+		DRM_DEV_ERROR(dev, "failed to register backlight device\n");
 		return PTR_ERR(ctx->bl_dev);
 	}
 
diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c b/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c
index a188a39..ec677e6 100644
--- a/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c
+++ b/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c
@@ -143,8 +143,9 @@ static void s6e8aa0_dcs_write(struct s6e8aa0 *ctx, const void *data, size_t len)
 
 	ret = mipi_dsi_dcs_write_buffer(dsi, data, len);
 	if (ret < 0) {
-		dev_err(ctx->dev, "error %zd writing dcs seq: %*ph\n", ret,
-			(int)len, data);
+		DRM_DEV_ERROR(ctx->dev,
+			      "error %zd writing dcs seq: %*ph\n", ret,
+			      (int)len, data);
 		ctx->error = ret;
 	}
 }
@@ -159,7 +160,8 @@ static int s6e8aa0_dcs_read(struct s6e8aa0 *ctx, u8 cmd, void *data, size_t len)
 
 	ret = mipi_dsi_dcs_read(dsi, cmd, data, len);
 	if (ret < 0) {
-		dev_err(ctx->dev, "error %d reading dcs seq(%#x)\n", ret, cmd);
+		DRM_DEV_ERROR(ctx->dev,
+			      "error %d reading dcs seq(%#x)\n", ret, cmd);
 		ctx->error = ret;
 	}
 
@@ -810,9 +812,9 @@ static void s6e8aa0_set_maximum_return_packet_size(struct s6e8aa0 *ctx,
 
 	ret = mipi_dsi_set_maximum_return_packet_size(dsi, size);
 	if (ret < 0) {
-		dev_err(ctx->dev,
-			"error %d setting maximum return packet size to %d\n",
-			ret, size);
+		DRM_DEV_ERROR(ctx->dev,
+			      "error %d setting maximum return packet size to %d\n",
+			      ret, size);
 		ctx->error = ret;
 	}
 }
@@ -824,19 +826,21 @@ static void s6e8aa0_read_mtp_id(struct s6e8aa0 *ctx)
 
 	ret = s6e8aa0_dcs_read(ctx, 0xd1, id, ARRAY_SIZE(id));
 	if (ret < ARRAY_SIZE(id) || id[0] == 0x00) {
-		dev_err(ctx->dev, "read id failed\n");
+		DRM_DEV_ERROR(ctx->dev, "read id failed\n");
 		ctx->error = -EIO;
 		return;
 	}
 
-	dev_info(ctx->dev, "ID: 0x%2x, 0x%2x, 0x%2x\n", id[0], id[1], id[2]);
+	DRM_DEV_INFO(ctx->dev,
+		     "ID: 0x%2x, 0x%2x, 0x%2x\n", id[0], id[1], id[2]);
 
 	for (i = 0; i < ARRAY_SIZE(s6e8aa0_variants); ++i) {
 		if (id[1] == s6e8aa0_variants[i].version)
 			break;
 	}
 	if (i >= ARRAY_SIZE(s6e8aa0_variants)) {
-		dev_err(ctx->dev, "unsupported display version %d\n", id[1]);
+		DRM_DEV_ERROR(ctx->dev,
+			      "unsupported display version %d\n", id[1]);
 		ctx->error = -EINVAL;
 		return;
 	}
@@ -1003,14 +1007,14 @@ static int s6e8aa0_probe(struct mipi_dsi_device *dsi)
 	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ctx->supplies),
 				      ctx->supplies);
 	if (ret < 0) {
-		dev_err(dev, "failed to get regulators: %d\n", ret);
+		DRM_DEV_ERROR(dev, "failed to get regulators: %d\n", ret);
 		return ret;
 	}
 
 	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(ctx->reset_gpio)) {
-		dev_err(dev, "cannot get reset-gpios %ld\n",
-			PTR_ERR(ctx->reset_gpio));
+		DRM_DEV_ERROR(dev, "cannot get reset-gpios %ld\n",
+			      PTR_ERR(ctx->reset_gpio));
 		return PTR_ERR(ctx->reset_gpio);
 	}
 
diff --git a/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c b/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c
index 3cce3ca..42a9d4d 100644
--- a/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c
+++ b/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c
@@ -57,14 +57,14 @@ static int sharp_panel_write(struct sharp_panel *sharp, u16 offset, u8 value)
 
 	err = mipi_dsi_generic_write(dsi, payload, sizeof(payload));
 	if (err < 0) {
-		dev_err(&dsi->dev, "failed to write %02x to %04x: %zd\n",
-			value, offset, err);
+		DRM_DEV_ERROR(&dsi->dev, "failed to write %02x to %04x: %zd\n",
+			      value, offset, err);
 		return err;
 	}
 
 	err = mipi_dsi_dcs_nop(dsi);
 	if (err < 0) {
-		dev_err(&dsi->dev, "failed to send DCS nop: %zd\n", err);
+		DRM_DEV_ERROR(&dsi->dev, "failed to send DCS nop: %zd\n", err);
 		return err;
 	}
 
@@ -83,8 +83,9 @@ static __maybe_unused int sharp_panel_read(struct sharp_panel *sharp,
 	err = mipi_dsi_generic_read(sharp->link1, &offset, sizeof(offset),
 				    value, sizeof(*value));
 	if (err < 0)
-		dev_err(&sharp->link1->dev, "failed to read from %04x: %zd\n",
-			offset, err);
+		DRM_DEV_ERROR(&sharp->link1->dev,
+			      "failed to read from %04x: %zd\n",
+			      offset, err);
 
 	return err;
 }
@@ -118,11 +119,13 @@ static int sharp_panel_unprepare(struct drm_panel *panel)
 
 	err = mipi_dsi_dcs_set_display_off(sharp->link1);
 	if (err < 0)
-		dev_err(panel->dev, "failed to set display off: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to set display off: %d\n", err);
 
 	err = mipi_dsi_dcs_enter_sleep_mode(sharp->link1);
 	if (err < 0)
-		dev_err(panel->dev, "failed to enter sleep mode: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to enter sleep mode: %d\n", err);
 
 	msleep(120);
 
@@ -141,26 +144,30 @@ static int sharp_setup_symmetrical_split(struct mipi_dsi_device *left,
 
 	err = mipi_dsi_dcs_set_column_address(left, 0, mode->hdisplay / 2 - 1);
 	if (err < 0) {
-		dev_err(&left->dev, "failed to set column address: %d\n", err);
+		DRM_DEV_ERROR(&left->dev,
+			      "failed to set column address: %d\n", err);
 		return err;
 	}
 
 	err = mipi_dsi_dcs_set_page_address(left, 0, mode->vdisplay - 1);
 	if (err < 0) {
-		dev_err(&left->dev, "failed to set page address: %d\n", err);
+		DRM_DEV_ERROR(&left->dev,
+			      "failed to set page address: %d\n", err);
 		return err;
 	}
 
 	err = mipi_dsi_dcs_set_column_address(right, mode->hdisplay / 2,
 					      mode->hdisplay - 1);
 	if (err < 0) {
-		dev_err(&right->dev, "failed to set column address: %d\n", err);
+		DRM_DEV_ERROR(&right->dev,
+			      "failed to set column address: %d\n", err);
 		return err;
 	}
 
 	err = mipi_dsi_dcs_set_page_address(right, 0, mode->vdisplay - 1);
 	if (err < 0) {
-		dev_err(&right->dev, "failed to set page address: %d\n", err);
+		DRM_DEV_ERROR(&right->dev,
+			      "failed to set page address: %d\n", err);
 		return err;
 	}
 
@@ -190,7 +197,8 @@ static int sharp_panel_prepare(struct drm_panel *panel)
 
 	err = mipi_dsi_dcs_exit_sleep_mode(sharp->link1);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to exit sleep mode: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to exit sleep mode: %d\n", err);
 		goto poweroff;
 	}
 
@@ -206,20 +214,23 @@ static int sharp_panel_prepare(struct drm_panel *panel)
 	/* set left-right mode */
 	err = sharp_panel_write(sharp, 0x1000, 0x2a);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to set left-right mode: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to set left-right mode: %d\n", err);
 		goto poweroff;
 	}
 
 	/* enable command mode */
 	err = sharp_panel_write(sharp, 0x1001, 0x01);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to enable command mode: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to enable command mode: %d\n", err);
 		goto poweroff;
 	}
 
 	err = mipi_dsi_dcs_set_pixel_format(sharp->link1, format);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to set pixel format: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to set pixel format: %d\n", err);
 		goto poweroff;
 	}
 
@@ -233,14 +244,16 @@ static int sharp_panel_prepare(struct drm_panel *panel)
 	err = sharp_setup_symmetrical_split(sharp->link1, sharp->link2,
 					    sharp->mode);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to set up symmetrical split: %d\n",
-			err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to set up symmetrical split: %d\n",
+			      err);
 		goto poweroff;
 	}
 
 	err = mipi_dsi_dcs_set_display_on(sharp->link1);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to set display on: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to set display on: %d\n", err);
 		goto poweroff;
 	}
 
@@ -292,9 +305,9 @@ static int sharp_panel_get_modes(struct drm_panel *panel)
 
 	mode = drm_mode_duplicate(panel->drm, &default_mode);
 	if (!mode) {
-		dev_err(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
-			default_mode.hdisplay, default_mode.vdisplay,
-			default_mode.vrefresh);
+		DRM_DEV_ERROR(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
+			      default_mode.hdisplay, default_mode.vdisplay,
+			      default_mode.vrefresh);
 		return -ENOMEM;
 	}
 
@@ -436,11 +449,12 @@ static int sharp_panel_remove(struct mipi_dsi_device *dsi)
 
 	err = sharp_panel_disable(&sharp->base);
 	if (err < 0)
-		dev_err(&dsi->dev, "failed to disable panel: %d\n", err);
+		DRM_DEV_ERROR(&dsi->dev, "failed to disable panel: %d\n", err);
 
 	err = mipi_dsi_detach(dsi);
 	if (err < 0)
-		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", err);
+		DRM_DEV_ERROR(&dsi->dev,
+			      "failed to detach from DSI host: %d\n", err);
 
 	drm_panel_detach(&sharp->base);
 	sharp_panel_del(sharp);
diff --git a/drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c b/drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c
index 3aeb0bd..e6ed6e7 100644
--- a/drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c
+++ b/drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c
@@ -137,7 +137,7 @@ static int sharp_nt_panel_unprepare(struct drm_panel *panel)
 
 	ret = sharp_nt_panel_off(sharp_nt);
 	if (ret < 0) {
-		dev_err(panel->dev, "failed to set panel off: %d\n", ret);
+		DRM_DEV_ERROR(panel->dev, "failed to set panel off: %d\n", ret);
 		return ret;
 	}
 
@@ -175,13 +175,13 @@ static int sharp_nt_panel_prepare(struct drm_panel *panel)
 
 	ret = sharp_nt_panel_init(sharp_nt);
 	if (ret < 0) {
-		dev_err(panel->dev, "failed to init panel: %d\n", ret);
+		DRM_DEV_ERROR(panel->dev, "failed to init panel: %d\n", ret);
 		goto poweroff;
 	}
 
 	ret = sharp_nt_panel_on(sharp_nt);
 	if (ret < 0) {
-		dev_err(panel->dev, "failed to set panel on: %d\n", ret);
+		DRM_DEV_ERROR(panel->dev, "failed to set panel on: %d\n", ret);
 		goto poweroff;
 	}
 
@@ -232,9 +232,9 @@ static int sharp_nt_panel_get_modes(struct drm_panel *panel)
 
 	mode = drm_mode_duplicate(panel->drm, &default_mode);
 	if (!mode) {
-		dev_err(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
-				default_mode.hdisplay, default_mode.vdisplay,
-				default_mode.vrefresh);
+		DRM_DEV_ERROR(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
+			      default_mode.hdisplay, default_mode.vdisplay,
+			      default_mode.vrefresh);
 		return -ENOMEM;
 	}
 
@@ -270,8 +270,8 @@ static int sharp_nt_panel_add(struct sharp_nt_panel *sharp_nt)
 
 	sharp_nt->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(sharp_nt->reset_gpio)) {
-		dev_err(dev, "cannot get reset-gpios %ld\n",
-			PTR_ERR(sharp_nt->reset_gpio));
+		DRM_DEV_ERROR(dev, "cannot get reset-gpios %ld\n",
+			      PTR_ERR(sharp_nt->reset_gpio));
 		sharp_nt->reset_gpio = NULL;
 	} else {
 		gpiod_set_value(sharp_nt->reset_gpio, 0);
@@ -346,11 +346,12 @@ static int sharp_nt_panel_remove(struct mipi_dsi_device *dsi)
 
 	ret = sharp_nt_panel_disable(&sharp_nt->base);
 	if (ret < 0)
-		dev_err(&dsi->dev, "failed to disable panel: %d\n", ret);
+		DRM_DEV_ERROR(&dsi->dev, "failed to disable panel: %d\n", ret);
 
 	ret = mipi_dsi_detach(dsi);
 	if (ret < 0)
-		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", ret);
+		DRM_DEV_ERROR(&dsi->dev,
+			      "failed to detach from DSI host: %d\n", ret);
 
 	drm_panel_detach(&sharp_nt->base);
 	sharp_nt_panel_del(sharp_nt);
diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 474fa75..07f8c21 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -111,8 +111,8 @@ static int panel_simple_get_fixed_modes(struct panel_simple *panel)
 		videomode_from_timing(dt, &vm);
 		mode = drm_mode_create(drm);
 		if (!mode) {
-			dev_err(drm->dev, "failed to add mode %ux%u\n",
-				dt->hactive.typ, dt->vactive.typ);
+			DRM_DEV_ERROR(drm->dev, "failed to add mode %ux%u\n",
+				      dt->hactive.typ, dt->vactive.typ);
 			continue;
 		}
 
@@ -132,8 +132,8 @@ static int panel_simple_get_fixed_modes(struct panel_simple *panel)
 
 		mode = drm_mode_duplicate(drm, m);
 		if (!mode) {
-			dev_err(drm->dev, "failed to add mode %ux%u@%u\n",
-				m->hdisplay, m->vdisplay, m->vrefresh);
+			DRM_DEV_ERROR(drm->dev, "failed to add mode %ux%u@%u\n",
+				      m->hdisplay, m->vdisplay, m->vrefresh);
 			continue;
 		}
 
@@ -210,7 +210,7 @@ static int panel_simple_prepare(struct drm_panel *panel)
 
 	err = regulator_enable(p->supply);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to enable supply: %d\n", err);
+		DRM_DEV_ERROR(panel->dev, "failed to enable supply: %d\n", err);
 		return err;
 	}
 
@@ -315,7 +315,7 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 						     GPIOD_OUT_LOW);
 	if (IS_ERR(panel->enable_gpio)) {
 		err = PTR_ERR(panel->enable_gpio);
-		dev_err(dev, "failed to request GPIO: %d\n", err);
+		DRM_DEV_ERROR(dev, "failed to request GPIO: %d\n", err);
 		return err;
 	}
 
@@ -2378,7 +2378,8 @@ static int panel_simple_dsi_remove(struct mipi_dsi_device *dsi)
 
 	err = mipi_dsi_detach(dsi);
 	if (err < 0)
-		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", err);
+		DRM_DEV_ERROR(&dsi->dev,
+			      "failed to detach from DSI host: %d\n", err);
 
 	return panel_simple_remove(&dsi->dev);
 }
diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
index 358c64e..b2e4a05 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
@@ -176,9 +176,9 @@ static int st7789v_get_modes(struct drm_panel *panel)
 
 	mode = drm_mode_duplicate(panel->drm, &default_mode);
 	if (!mode) {
-		dev_err(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
-			default_mode.hdisplay, default_mode.vdisplay,
-			default_mode.vrefresh);
+		DRM_DEV_ERROR(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
+			      default_mode.hdisplay, default_mode.vdisplay,
+			      default_mode.vrefresh);
 		return -ENOMEM;
 	}
 
@@ -389,7 +389,7 @@ static int st7789v_probe(struct spi_device *spi)
 
 	ctx->reset = devm_gpiod_get(&spi->dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(ctx->reset)) {
-		dev_err(&spi->dev, "Couldn't get our reset line\n");
+		DRM_DEV_ERROR(&spi->dev, "Couldn't get our reset line\n");
 		return PTR_ERR(ctx->reset);
 	}
 
-- 
2.7.4



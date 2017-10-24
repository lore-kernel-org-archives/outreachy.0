X-GM-THRID: 6480148992322699264
X-Received: by 10.107.12.26 with SMTP id w26mr11954958ioi.104.1508854282525;
        Tue, 24 Oct 2017 07:11:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.120.3 with SMTP id p3ls146963itc.4.gmail; Tue, 24 Oct 2017
 07:11:21 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QiiEGZIpJb9HTKqGdBpjdlKPFN3QXCY64oAABxaawB3jcXfPmd5x5GznoKTMjwfNzNANDE
X-Received: by 10.107.153.129 with SMTP id b123mr9315842ioe.57.1508854281702;
        Tue, 24 Oct 2017 07:11:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854281; cv=none;
        d=google.com; s=arc-20160816;
        b=iOmgucIk/MGVk8gUe45e/GUmgljHG/aC01goX5U3b+9kMiWWiKHxR9S2zsQa0X73+H
         se2xCxsoXP/2Etus0lrmFwK37Kowd4priAgQghJQWjhSdDOsk1QoqyGm4CrZFgTigNDk
         blI6/IWWOCTqFzWTuAweVxilqx0ckKzTu4lc7hEHQXNDvrJCCek/tOXzrY2t2QIe9Fps
         agxKIhWmZcqp3jJnnVg6Rv6A8u3o6mzcDof37Rw9lRxLEdJ5/ryLbLuwwyo+Sfolz3zf
         tVQlT8IFElsyrHrKIiAU+ycBX7x0KjVY/o1+OLwKjCPkJyXCqcNTJjPf6EPn1ufdiU97
         hpyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=guZy3D5vf6DDmyQhfYSretdOnkeJZytVLDV3ioIg+w0=;
        b=ZzxX8ie11oJYU82BWqBeUR/xs8ahcdEZdGRkxILw8YtTaJtm/x/wIqQSoQjQly9cjF
         BudBO7tzgcBCEo92TWJhoZ/0+MoPpgbe/XMY5AktOXz9bCMbWmdlbCLxchEM8luvj5iB
         /v54jYbz3nh4YZwMMpuiniHpoWkJBPGSMWM8XFrdkgLov7l1YSX64J04IEl9AmfXhqce
         ZxIhXdNlCKJ7Ltm/0HaBiIoh0HFtvclqeu1Iz6Jql+ItD1RkLJ4oorpF+dcP/gvPCPFu
         T82DnacGk7MEJUnuGsbaPCMdnGG4mIV+M5biCU1x2ABAE/nkxHadQ+W0CyZQ+S/oA10e
         90qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IQIQg3qy;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id l10si48117ioc.2.2017.10.24.07.11.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IQIQg3qy;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e64so19768384pfk.9
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=guZy3D5vf6DDmyQhfYSretdOnkeJZytVLDV3ioIg+w0=;
        b=IQIQg3qyH6LzobSuk5CpQ6wS4EGuVyZrowzrzdROgz0Ujq+c/Ij0kMDpbhnlPR2cz/
         XqeKBQvd7WyXBMHzAuekY025fRM+JKVC0j8+vMMSRxGXSeiX8F3TJGos2nxXzPCwm2XF
         +xTjWsEqR1wYUeWadNE+rRlSA1/1T57H2rIP0DVd+5nrpehdL7/cB45q+IIQbtZUpjp3
         e0j81JzmugAnAanEemthmzZk/8+b+9sl2uIZSwO95z4+m9dj+9qWXHIU7936Rw6nIjRz
         CyWkeDS6tV5se4Gq5cuZylPd77x2wP6eRODI2SWX5dGww+MQMLcOLlhBmKSqb6LNb4kt
         NxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=guZy3D5vf6DDmyQhfYSretdOnkeJZytVLDV3ioIg+w0=;
        b=o3UYERrZIWw3ltExC2zrVdF92nsaU/juBk/0UzZI5BJg/wYEPA68bLUl8Sw0V89Qov
         EErtKh6Sy+QE9sep3frdagHjHAududELIlc5T1YsoiX2zTcxkShx7mHb6QBexbvhQ4Mn
         7V2kv0bN72MRi6Zwn4CFMuuN+4sTb1J2LvBpzgrD8fBjUAan1XYL0nTRfNsvfBsR+1ci
         lKLnlVWAn++6HTX2QpWsNwF7TLfYYpBXowlHLASorOGQ6UwHHE2fhxR1GN1K6uWJahd7
         0Lsg1lFARfvSnjxPVkAZE9dsG/cosVBG/p00fRYSSWIUFPUoG5sdKKmYoPmGkpwWJhIx
         tUbQ==
X-Gm-Message-State: AMCzsaWEnS7h58BFOkiEQRKvK9Bbk7hVDdoXan7NsBO7KMy5NNW6EgSL
	w0IVAMBstmAtFW0t/AOdPNI=
X-Received: by 10.84.176.131 with SMTP id v3mr13099625plb.208.1508854281268;
        Tue, 24 Oct 2017 07:11:21 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id z89sm981615pff.21.2017.10.24.07.11.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:20 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 02/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in  panel-jdi-lt070me05000
Date: Tue, 24 Oct 2017 19:40:53 +0530
Message-Id: <1508854263-18881-3-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508854263-18881-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508854263-18881-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

For drivers which could have multiple instances, it is necessary to
differentiate between which is which in the logs. Since
DRM_INFO/WARN/ERROR don’t do this, drivers used dev_info/warn/err to
make this differentiation. We now have DRM_DEV_* variants of the drm
print macros, so we can start to convert those drivers back to using
drm-formatted specific log messages.

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
 drivers/gpu/drm/panel/panel-jdi-lt070me05000.c | 38 +++++++++++++-------------
 1 file changed, 19 insertions(+), 19 deletions(-)

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
-- 
2.7.4



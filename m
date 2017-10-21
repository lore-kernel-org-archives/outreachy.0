X-GM-THRID: 6475592721521180672
X-Received: by 10.55.179.133 with SMTP id c127mr6000822qkf.28.1508587061747;
        Sat, 21 Oct 2017 04:57:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.17.4 with SMTP id c4ls804701qtj.4.gmail; Sat, 21 Oct 2017
 04:57:41 -0700 (PDT)
X-Received: by 10.55.162.204 with SMTP id l195mr5610275qke.8.1508587061188;
        Sat, 21 Oct 2017 04:57:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508587061; cv=none;
        d=google.com; s=arc-20160816;
        b=hBGEaxnMrl5PUiGHBktU3oDqV+LQjmwUVHf2V+4gyZ99ZxugPvu0ZuROutRPLuRp+Q
         u6F837uZZYg1WyhHP8nwYex7NCtMsydjbhQAqm6qBsdbS7XcryO8Mkef1SbDkAh8FFJ6
         aCiUGt9CRYxXnZd9buitfcANg5Vy1dCtWHQpdkx+fTlR90EGKZOw8zp5/0TDODiNsZ/s
         dXtV2B/DMv/yMNDd2+iiSKQSpUMnf2jssEbAQsT3mwDG9bGYZuy0VqIrUGGRewVTZETy
         kktTjZHEksAgB+hV+ydvWarB1SryKGQYc+iTspmmt2k0AwVFu7itLVseILsLalSaSlu+
         IVLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=4CttAAP1kOW7Hpxd74lhv4XrJCX6Nt000iT0BY2PlNg=;
        b=WeqRpyjxEGQwWWEsSy9MGaaxKi+roAB/eoKXb9gmWTTPVwZleEUG3SgMyOcCqk9wAG
         irNA3ZzteGSwrIgTJa88nRrvUIj/1BuTcnimrfAzcCmz+mKtDO1SIYrj/l5sCC4ZSPOv
         hUGJ2qG4cAIABUbPzwNwc/xN+zOnwU86Vu0VOti/bTuvOD337ELZzv7J7wRKVk40M5Mp
         BHDRwP+ueEgyuAY6VOAKxi60dQD4+g++gb7BGbByhH0YMVhXvrE9zqjcizhyzAd+LZn/
         nuFdgYTmCyg3hDuDVYk6hQ/rY33N9FWTB+4I5h9Rp0u5O7Tm1elygVumB+t9rNi+UC1n
         q1ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VUg/Uy59;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id f30si175953qtg.5.2017.10.21.04.57.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 04:57:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VUg/Uy59;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id m18so8504005pgd.13
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Oct 2017 04:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4CttAAP1kOW7Hpxd74lhv4XrJCX6Nt000iT0BY2PlNg=;
        b=VUg/Uy59AJjFqlCFbt9rESLmP8+xU8d52AjCkkxSUXrS5IYqaim07zxLGuVlsgJQfQ
         n9hWiqWJiyd/AA5AmIe2pCLWz/CrnnzEEzXeEJxeZDra8tT16tbBKQZXq1VRnFHU9G5b
         sRMICA032/6bybCtJipaM6Z/1AdOYy04GndNwH9qUqT09TT6wawx+ipQb4AoyG0YI6TI
         loJ3kGvzT9Isl9XGmgTJ5GFfgrzVP+lZO4V3Zg1vfEwnQeuphbHijq8HJL1F1N/kAeP1
         FzeNZsZ1x3/2c5Ekkvgq1KXvmzRNfUl4Xlu5QYR1UImfyxGsUdA7B/SKqgr4KfJmvkZE
         FTHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4CttAAP1kOW7Hpxd74lhv4XrJCX6Nt000iT0BY2PlNg=;
        b=fCQrpLgCArJNophEGIKuz5sjzEKdtRljqdbh2Ef5B3IsOb1keUVGFcrg0YEedJSAfv
         uHsq+XIEUXOSJIXleycPvlTx7IJFUlEwjV4yVFO+azsQJ6ZvQoMxojOsy7/3MnasgSjc
         5idXxkpC7ZrMGihcZSDeEMrySZYK769N64Fd8lTTJDfqHDyjiw/WKcgZP5sAqgm/qZob
         +mIXVFN/DgaGOOhoBIRl1yHQACv2+NIK5NAKeDi9J+O6N2pyGpdCxC3vrJSatxfS9FmM
         869sPLXHzp/5DYuD2GtFh4vhdufC2GQWces6Q5AVWcNM1JVxr+OwUCP94sLjA9Ob9Fdz
         o01w==
X-Gm-Message-State: AMCzsaUsYmK/xpxw69SffHHvqTFF+bVL0CAyDtNPwPHXffcj/JwqgYgE
	xSAgzV8Inkqzou5F9/l6DKk=
X-Google-Smtp-Source: ABhQp+Rv+ZUI3pV5kaUqka/fQOfZs+1Nbi/3oLaC5thugSyKsFlynWhvLsEpn8b8UnGRMpiHP72aMw==
X-Received: by 10.99.110.6 with SMTP id j6mr7103931pgc.246.1508587060296;
        Sat, 21 Oct 2017 04:57:40 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.166.123])
        by smtp.gmail.com with ESMTPSA id q77sm5695849pfd.84.2017.10.21.04.57.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 04:57:39 -0700 (PDT)
Date: Sat, 21 Oct 2017 17:27:33 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v14 2/3] drm/tinydrm: Move tinydrm_of_find_backlight to
 backlight.c
Message-ID: <678c3adb07b729acf6e80119ab9adec01d89842f.1508586429.git.meghana.madhyastha@gmail.com>
References: <cover.1508586429.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508586429.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to of_find_backlight and move
it to linux/backlight.c so that it can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v14:
 -s/backlight_get/of_find_backlight/

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 --------------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 drivers/video/backlight/backlight.c            | 37 ++++++++++++++++++++++++
 include/drm/tinydrm/tinydrm-helpers.h          |  2 --
 include/linux/backlight.h                      | 19 ++++++++++++
 5 files changed, 58 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
index a42dee6..cb1a01a 100644
--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
@@ -236,46 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
 }
 EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
 
-/**
- * tinydrm_of_find_backlight - Find backlight device in device-tree
- * @dev: Device
- *
- * This function looks for a DT node pointed to by a property named 'backlight'
- * and uses of_find_backlight_by_node() to get the backlight device.
- * Additionally if the brightness property is zero, it is set to
- * max_brightness.
- *
- * Returns:
- * NULL if there's no backlight property.
- * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
- * is found.
- * If the backlight device is found, a pointer to the structure is returned.
- */
-struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
-{
-	struct backlight_device *backlight;
-	struct device_node *np;
-
-	np = of_parse_phandle(dev->of_node, "backlight", 0);
-	if (!np)
-		return NULL;
-
-	backlight = of_find_backlight_by_node(np);
-	of_node_put(np);
-
-	if (!backlight)
-		return ERR_PTR(-EPROBE_DEFER);
-
-	if (!backlight->props.brightness) {
-		backlight->props.brightness = backlight->props.max_brightness;
-		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
-			      backlight->props.brightness);
-	}
-
-	return backlight;
-}
-EXPORT_SYMBOL(tinydrm_of_find_backlight);
-
 #if IS_ENABLED(CONFIG_SPI)
 
 /**
diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
index 7fd2691..53ab5a0 100644
--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
@@ -12,6 +12,7 @@
 #include <drm/tinydrm/ili9341.h>
 #include <drm/tinydrm/mipi-dbi.h>
 #include <drm/tinydrm/tinydrm-helpers.h>
+#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
@@ -188,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
 	if (IS_ERR(mipi->regulator))
 		return PTR_ERR(mipi->regulator);
 
-	mipi->backlight = tinydrm_of_find_backlight(dev);
+	mipi->backlight = of_find_backlight(dev);
 	if (IS_ERR(mipi->backlight))
 		return PTR_ERR(mipi->backlight);
 
diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
index 8049e76..76d46c3 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -580,6 +580,43 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
 EXPORT_SYMBOL(of_find_backlight_by_node);
 #endif
 
+/**
+ * of_find_backlight - Get backlight device
+ * @dev: Device
+ *
+ * This function looks for a property named 'backlight' on the DT node
+ * connected to @dev and looks up the backlight device.
+ *
+ * Call backlight_put() to drop the reference on the backlight device.
+ *
+ * Returns:
+ * A pointer to the backlight device if found.
+ * Error pointer -EPROBE_DEFER if the DT property is set, but no backlight
+ * device is found.
+ * NULL if there's no backlight property.
+ */
+struct backlight_device *of_find_backlight(struct device *dev)
+{
+	struct backlight_device *bd = NULL;
+	struct device_node *np;
+
+	if (!dev)
+		return NULL;
+
+	if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
+		np = of_parse_phandle(dev->of_node, "backlight", 0);
+		if (np) {
+			bd = of_find_backlight_by_node(np);
+			of_node_put(np);
+			if (!bd)
+				return ERR_PTR(-EPROBE_DEFER);
+		}
+	}
+
+	return bd;
+}
+EXPORT_SYMBOL(of_find_backlight);
+
 static void __exit backlight_class_exit(void)
 {
 	class_destroy(backlight_class);
diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
index f54fae0..0a4ddbc 100644
--- a/include/drm/tinydrm/tinydrm-helpers.h
+++ b/include/drm/tinydrm/tinydrm-helpers.h
@@ -46,8 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
 void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
 			       struct drm_clip_rect *clip);
 
-struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
-
 size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
 bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
 int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index b88fabb..f98b684 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -159,6 +159,16 @@ static inline int backlight_disable(struct backlight_device *bd)
 	return backlight_update_status(bd);
 }
 
+/**
+ * backlight_put - Drop backlight reference
+ * @bd: the backlight device to put
+ */
+static inline void backlight_put(struct backlight_device *bd)
+{
+	if (bd)
+		put_device(&bd->dev);
+}
+
 extern struct backlight_device *backlight_device_register(const char *name,
 	struct device *dev, void *devdata, const struct backlight_ops *ops,
 	const struct backlight_properties *props);
@@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *node)
 }
 #endif
 
+#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
+struct backlight_device *of_find_backlight(struct device *dev);
+#else
+static inline struct backlight_device *of_find_backlight(struct device *dev)
+{
+	return NULL;
+}
+#endif
+
 #endif
-- 
2.7.4



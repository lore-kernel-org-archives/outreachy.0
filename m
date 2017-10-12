X-GM-THRID: 6475592721521180672
X-Received: by 10.129.19.10 with SMTP id 10mr7001171ywt.64.1507823415479;
        Thu, 12 Oct 2017 08:50:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.89.138 with SMTP id n132ls305014ywb.28.gmail; Thu, 12 Oct
 2017 08:50:14 -0700 (PDT)
X-Received: by 10.13.209.6 with SMTP id t6mr7408351ywd.146.1507823414666;
        Thu, 12 Oct 2017 08:50:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507823414; cv=none;
        d=google.com; s=arc-20160816;
        b=j8eE93A1Ozs55dfQR/U5BMqMHGXPayVUy+15It58NrsSGNUbcpdHo2gz96Ln/tZB5f
         nJYe9LanS5QxgKTgi4PNHHvWBeXEb8anDiz4PHqS4dgOfxOwUCGw38jXwe7F0Gda+6wV
         qE8wUoTxpOuBTg/f/QsFFdLOgkb6NvgE6WL1wd6/BtPjWvUa0K5E/67pyyz1EMSKLdM/
         HUtHXpzBoI/363LNE9k1tf2u98uX5OJ7OSjOaIpSTxoyKvAA1nwmqPNuvXjE0tusaZHm
         33LIvaa+aUakmlmD7H3bFdGc6O0rLVbe1oqtN+lQEobdc7W9d+86XKCqmFTVb8x5bKUC
         PD7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:message-id
         :subject:to:from:date:dkim-signature:arc-authentication-results;
        bh=rMCR+anSc6P6CLp8vUNwOIKnw6tXxDeuVX/6uA8ponw=;
        b=zNSD0U+5eKkKBf+3WEOYBVWpQ4VRSsLbc/9GMqsDN23TrZMP8O7nNoDFcbINwyR5cI
         Bvw6qlz/7qX1fEZYmNJ2tgKQVLZnMO1ertCQTpp47eSh3PBdOiTkzs/vPmMC8kUAQXtv
         vqUQwI8qzE9WMTgQQuigTw5rHi+gU5wYK6IPiWWkkopy51FQfYbVT24sA8TdHhFs4JAI
         yMYDOacVIPycOqQZl9cO2txc7ri4TN44hJLbxQOjPH28/H9omGmdDpTmc91bs0wOJN7x
         +HyNzFDbLa1gF5oRHfM9y9rATHasLqrB3xNa9gpxlZ25VQ13aApMZ45amnZ14QEHvL/T
         X7og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cz477Ot+;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id g4si19146ybi.2.2017.10.12.08.50.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 08:50:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cz477Ot+;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id x7so5419129pfa.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 08:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=rMCR+anSc6P6CLp8vUNwOIKnw6tXxDeuVX/6uA8ponw=;
        b=cz477Ot+9QOgYdAaQYxvaqdjPHO4Uxvr35AcRslxximo8iGBHNnxgbfkqixQnfRLwR
         vEA48qfHJMgI2Lg4ZeymKQxFm3CO3Tad8WxJ7rIJdDiqtQbUKc5c5TihcNHwMArFCAoG
         Qx0BBIavlUUk4kp72BVc0Deggaz0DbN1r+SPGwISBl0owStxX0zstUByNj+AAzV2+Hu5
         bTmatmfuEFf+5659Ytvci41+370k/5JsScZWayw10THccwG/bUZz3O+0CY16DDm/pv3+
         CwBRqdpaCtPWedTDGleiM4AbkkFEug73jlsiy2WxYz49DVSVwfB9RUtIHwHvMYHNk6Ou
         tEGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rMCR+anSc6P6CLp8vUNwOIKnw6tXxDeuVX/6uA8ponw=;
        b=NSeL/7ETygTV49nDwt18gpA+ygBAOGK1xCSVM3N/reYJlWVcHHoJFPG2M1EU+5S9WW
         fn3iWfBLa+bxVf4/f7HkAivJa1igHArXhhDs6WUXkAiJDSHeGjLgw/TqFwH5ogisBKlW
         r2alI0oV4RhpWuzBdhU/Xrez94Hz8N41zPd1q9jZ2LLc4LIDrCYna94b37JQbawuSOi3
         erWXhARZhHCaWRs7Glsgi2riULyLWu1Oig8qHQCfk/UDEzbyOMZu6pVV5KVXC1v+EACA
         Gqx7NBGU3srmd9fmmYT2KF5iQDsCdXB0jsgCuxXH5SxTnCvnyHp49vYuZwJlRAoMGIWJ
         eXxw==
X-Gm-Message-State: AMCzsaVMqm6TyoEgJQXYqlzPSZSgKh59bLo7H7nhWnk0Lmt0nSswKWip
	bLuzdYJ4lTbjRHGu0yXNjEg=
X-Google-Smtp-Source: AOwi7QBCbObc9RS3pvFqxThM8noQnd7LmZTI5KeYHaCfSpgfBG9k6UEPUHEgYq6+MYM46mS9HTA2Zw==
X-Received: by 10.84.240.4 with SMTP id y4mr592053plk.22.1507823414203;
        Thu, 12 Oct 2017 08:50:14 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.84.136])
        by smtp.gmail.com with ESMTPSA id c26sm31152463pfl.115.2017.10.12.08.50.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 08:50:13 -0700 (PDT)
Date: Thu, 12 Oct 2017 21:20:06 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v12 2/3] drm/tinydrm: Move tinydrm_of_find_backlight to
 backlight.c
Message-ID: <8cc4a00363779056282ebe4eb75b1049b36e0c21.1507823238.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507821742.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to backlight_get and move it
to linux/backlight.c so that it can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v12:
 -Move backlight_put() to the patch 2/3 from patch 3/3.
 -Remove #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)..#endif
  because the file is not built if it isn't enabled

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 ------------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 drivers/video/backlight/backlight.c            | 43 ++++++++++++++++++++++++++
 include/drm/tinydrm/tinydrm-helpers.h          |  3 --
 include/linux/backlight.h                      |  9 ++++++
 5 files changed, 54 insertions(+), 44 deletions(-)

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
index 7e5bb7d..edf9502 100644
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
@@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
 	if (IS_ERR(mipi->regulator))
 		return PTR_ERR(mipi->regulator);
 
-	mipi->backlight = tinydrm_of_find_backlight(dev);
+	mipi->backlight = backlight_get(dev);
 	if (IS_ERR(mipi->backlight))
 		return PTR_ERR(mipi->backlight);
 
diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
index 8049e76..f3e95b3 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -580,6 +580,49 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
 EXPORT_SYMBOL(of_find_backlight_by_node);
 #endif
 
+/**
+ * backlight_get - Get backlight device
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
+struct backlight_device *backlight_get(struct device *dev)
+{
+	struct backlight_device *bd = NULL;
+	struct device_node *np;
+
+	if (!dev)
+		return NULL;
+
+	if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
+		np = of_parse_phandle(dev->of_node, 'backlight', 0);
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
+EXPORT_SYMBOL(backlight_get);
+
+static inline void backlight_put(struct backlight_device *bd)
+{
+	if (bd)
+		put_device(&bd->dev);
+}
+
 static void __exit backlight_class_exit(void)
 {
 	class_destroy(backlight_class);
diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
index f54fae0..b89d8e4 100644
--- a/include/drm/tinydrm/tinydrm-helpers.h
+++ b/include/drm/tinydrm/tinydrm-helpers.h
@@ -10,7 +10,6 @@
 #ifndef __LINUX_TINYDRM_HELPERS_H
 #define __LINUX_TINYDRM_HELPERS_H
 
-struct backlight_device;
 struct tinydrm_device;
 struct drm_clip_rect;
 struct spi_transfer;
@@ -46,8 +45,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
 void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
 			       struct drm_clip_rect *clip);
 
-struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
-
 size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
 bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
 int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index 355e9f5..1d713b3 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -202,4 +202,13 @@ of_find_backlight_by_node(struct device_node *node)
 }
 #endif
 
+#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
+struct backlight_device *backlight_get(struct device *dev);
+#else
+static inline struct backlight_device *backlight_get(struct device *dev)
+{
+	return NULL;
+}
+#endif
+
 #endif
-- 
2.7.4



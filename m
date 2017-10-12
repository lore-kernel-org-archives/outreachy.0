X-GM-THRID: 6475592721521180672
X-Received: by 10.101.78.202 with SMTP id w10mr321084pgq.105.1507788698219;
        Wed, 11 Oct 2017 23:11:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.43.9 with SMTP id r9ls889634pfr.6.gmail; Wed, 11 Oct 2017
 23:11:37 -0700 (PDT)
X-Received: by 10.99.185.86 with SMTP id v22mr356751pgo.76.1507788697522;
        Wed, 11 Oct 2017 23:11:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507788697; cv=none;
        d=google.com; s=arc-20160816;
        b=J8FFFUDNzf1y1KNI9XwbqKW1kH1/4wOrb8z455YydRzioJ7bxcZXfhJXQOEedQRw+1
         9zgNwd2JiETBio6Q89J/WE5O8Ru+yJcCaUV8N58BsiVPjJtTr5Kld3F3KWaQ9muMvHwb
         7kVg5i2L7wJ75hDDtGURPjHg89HsCjRnPYLqPmF0teLPAdTwqX+ihSYv248EjugMWTsC
         pk4HU5W4Xyo5wh57bbM72jD985MLHJ7Sws+yJv38F76hKCH3bce8yTDJT9+Bm84jKuRJ
         K21L/jMUWO/K0Wl23iwnJa5f9yA/zeNxf4SRFUnYhdg0vrUqCXEB1yIMHwIG6C7zwgzm
         FBDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=SPRfRNYkNrVcAHCA1gJ9rNdNKrfgjcJuBrjSbYq44XE=;
        b=bgRF/6AN3e5DFEdOXW3FroeY1NHzlA9tyRwFlWBZ9h6cuVR2KUD1DFxG2LPJiZo4u4
         NdnULo+1NhoBfENioxrHMEpwsd0NFkcfS72i14RaCKZ2hua58nhQwiQgTXNsL8wH2uyZ
         Vuc/6I4QkghlMOjwk1/cGXjUnIFbxiaehTV82Mmqu5AjcY755rLvU8rhT1SUNeuOYoJe
         wQLJaw9U9dIhLz8XjCJQQhqOskeaF6DDOahVpJ2FbbC3XJj9uAMPQBmoOLcZ2YYpNmqU
         YyLk78uTENeG26FH4vCBJ/faA4OLmNZSV4c+JciMZFPRoimM5xHEkPWnUPCU9o5ahycE
         Gjeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ecyJr0Ux;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id c12si890250pfe.19.2017.10.11.23.11.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 23:11:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ecyJr0Ux;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id h28so4759096pfh.5
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 23:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SPRfRNYkNrVcAHCA1gJ9rNdNKrfgjcJuBrjSbYq44XE=;
        b=ecyJr0Ux3gIwffkzJV3hd5AY97iqR86H0ViinHI0vwtkuzEWaiO03nH4QUCiyyfAOk
         jrmg1d3CuQDtPekGnH/R1cp7IZnO7y2xJss1lPGFWj278SJOAimYnCv5mccidqEe336b
         t0W/HpWePm43yvaW2VPLYc2hXiJQL6OgFVs6v6WTUAgLPGDKBS1HIzXOUEDfPW6NGXBE
         boqBV5sX/6vswYz2dTdazq5Avq2QkbcGqSKbkxXodyiJVlweUOy/g9xpY9rq2JCIZmG7
         aEcIoIx2R+mGwD91n2SEYfkzsRLdFe+JzdGgW1lICy1o12Wt6Uu5HExHito2EXyd1yie
         YLLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SPRfRNYkNrVcAHCA1gJ9rNdNKrfgjcJuBrjSbYq44XE=;
        b=ZVfGtPRbVnJ4p9oxFipD5zoGVeUaFqWQ+zjDsLmhu+mNJgPOnmJXU4lHpdMSLf1t1E
         shpEbYhbJ4oztjBbfFRbVv2e1ddPz1pyYjo7n208RPy0w/S5sBAJNurN2DVdXiYXSvza
         WlvuVCewETTUZ0vUt7B4GDG4NR0gRnEdJ0jX2ryFL5P7zzMWnQEPCLmKF9b8t60K5/MC
         S4fFkjlJbTfh/lRrxOU6+scBMpAwtvT8H7JpxaySJuqHMAl32S7nJKGGLkC2EThvhXyw
         YKdCE7itxhIhK7NiuW+hUp5JCZcj0pcCilv8bkJ5key1WIcp0klI4EhjZLgA6Hd+gbad
         V9ZA==
X-Gm-Message-State: AMCzsaUxZMSOWNNPh178I1+u2h4VVGqDyGNG4X5d1b69CY4+mx6mVYnZ
	C0c7ieZuiVrTwIChjonjSE4SzZwZ
X-Google-Smtp-Source: AOwi7QD0LrqiG6nXa3Yr16tcdXiN4BGl46RNg4Ecb0z/qSIt6yVl0djYsXjidqo5Z4aY4RwdD53ggg==
X-Received: by 10.99.97.149 with SMTP id v143mr1232815pgb.413.1507788697263;
        Wed, 11 Oct 2017 23:11:37 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([111.93.157.115])
        by smtp.gmail.com with ESMTPSA id p77sm30728560pfa.92.2017.10.11.23.11.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 23:11:36 -0700 (PDT)
Date: Thu, 12 Oct 2017 11:41:27 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v9 2/3] drm/tinydrm: Move tinydrm_of_find_backlight to
 backlight.c
Message-ID: <0b55a1849129ec1c63e6389b982605e0b5687811.1507788241.git.meghana.madhyastha@gmail.com>
References: <cover.1507788241.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507788241.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to backlight_get and move it
to linux/backlight.c so that it can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v9:
-None

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 --------------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 drivers/video/backlight/backlight.c            | 40 ++++++++++++++++++++++++++
 include/drm/tinydrm/tinydrm-helpers.h          |  3 --
 include/linux/backlight.h                      |  9 ++++++
 5 files changed, 51 insertions(+), 44 deletions(-)

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
index 8049e76..1debb60 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -580,6 +580,46 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
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
+
+#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
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
+#endif
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



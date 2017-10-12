X-GM-THRID: 6475592721521180672
X-Received: by 10.99.175.29 with SMTP id w29mr406958pge.67.1507801212775;
        Thu, 12 Oct 2017 02:40:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.50.131 with SMTP id y125ls933594pgy.6.gmail; Thu, 12 Oct
 2017 02:40:12 -0700 (PDT)
X-Received: by 10.99.112.65 with SMTP id a1mr405874pgn.96.1507801212136;
        Thu, 12 Oct 2017 02:40:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507801212; cv=none;
        d=google.com; s=arc-20160816;
        b=AvXWaiux52mG0E4UQZdj3KRq4fjWzFiZhl2trdf4rtkIPtnnQR0WBoJFruvq0DzJEO
         dv+IHfn2J1ZEGPQjS9S01e2sIErSDWAw7tYSPOOQdWXUIL4780kUooghZMkaqQMuP0hO
         /5oLaJVKbFKBkZ7JckIcQnFhbD7bY/7EKarOtpq5tf5lighqJghgwkdsfFZB8V8TK+J/
         QlTwkIs9HzmQCFHCO+Z0Jal6VAPpwT7zPXtkKjaxomtgcgzGWuTsmqdE8ie6+AuUraPz
         ccu9NKw5EDGnJ73NTR5qgllLBHrqQbqUKIs3lexQCYcIauTy14QXdGa3w9LSkmIQSI0J
         RZfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=q7/SD2oDCIKi6MeKs555hPCwErefPBzodrBVPuMW2Lw=;
        b=c00UFgnNkCBzIpQzjHu4HmwGJRlTy72k/xpU+y0nxcleQZynSpjF5sO4yVdSNipFNj
         +XSjeTURWRELzmITkI2eiOvGw8GpVn6VMNGBQ2+6MnXFq2NocAWJ19v3O62uHncOK+nN
         sVq6MOOWo4Nwn8k4s3qZFsMAjlRir2f9qX51EeJ+rbJRZxP3algru6I4M1anAAtCRxrV
         Q3qlAeOf9syeAMuArW/D20De2rTYg4A9MMj/Pu280ZxxnUHqNNHr7hB7BKFnABzpnywv
         VKoM2q+YsYGho0BaS/OILd4TDQyyM/IifL/gk08tbYrR3V253rq0vf44YlxDrdkudF7T
         Gibw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bnk0UgSt;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id b184si74119pga.4.2017.10.12.02.40.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:40:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bnk0UgSt;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id b85so5322467pfj.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 02:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=q7/SD2oDCIKi6MeKs555hPCwErefPBzodrBVPuMW2Lw=;
        b=Bnk0UgStSzUPBqlSH+py1RybUDvbROnPxQJUlgnS/iYtYfo3hQwRhd9O7DKN7YJTeN
         S1DapLTY8ZfDqV67AIAEsH6c6D7b5oDU/4T5oDq1frrgkk3S5Jl9Sh2UdKiDnJkWWZ80
         cxoftzbStC8DrXw3LKEy/RJ6j54I7oZKfvZLZp5XNCaeb5FH9QhDrUcjYiYAHBKzo/eS
         qz5HYdesC+Yko8U5/Vr3vh6CO7C8Yz5t2jVf1XQCzVNjWeGs643ybZFuVtrW9vLHC3QL
         AOXK/zGOTG1XdEkXtdwDMymbA3PsIrYQ2MioYZ8dXuWYCt6V4NRvvEARCuopV2Ioi/IW
         mRmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=q7/SD2oDCIKi6MeKs555hPCwErefPBzodrBVPuMW2Lw=;
        b=W0EazcuDqhSwkQcZ7KWe0ZWehqcUddYL94f5vxI4gQNNmCpicQrL8aIql+Ls4gvFZ+
         i14fufM+wMxX1aY+58r4uVzLmFF3jyN2NDxf11l65UH6Gc22ms6pTFk9JZuWE/HWPi3g
         z6XeMj42UmOnwsuE18TDh2MBQw78N5gO1+6JYx4BbEc9Fh6EpXWBuw4XN12Gt6Y8ocJt
         YMiYw1hHYsonjRtw1FjoOdoL9Goc1+TXvOyAkYgHZiuN/1OM9+I3/PKJ6v/zT1UmwOsP
         xzV/IM9LIaXtUmuFoUZCv2tvwo10L201AapVnmNcYkfFbp8brzdzEK42SO86aKgnLeMo
         busA==
X-Gm-Message-State: AMCzsaXefb3aX9pI2wxW9LmaK/An/WCIGfWonJ4wfOJH+ybFd7z8zspp
	kbpsWGFv4temeU9sroYvUy0=
X-Google-Smtp-Source: AOwi7QBx3bOVm31qH1JrGQbbEBbaIhqXqStQeuQodqznToz0L2m2YUZIas6MkPk3QrY4csmx4v+RkQ==
X-Received: by 10.84.137.129 with SMTP id 1mr1752213pln.376.1507801211876;
        Thu, 12 Oct 2017 02:40:11 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([2405:204:5684:94d7:a890:2695:1239:4fc8])
        by smtp.gmail.com with ESMTPSA id x1sm24498830pfk.131.2017.10.12.02.40.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:40:10 -0700 (PDT)
Date: Thu, 12 Oct 2017 15:10:01 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v11 2/3] drm/tinydrm: Move tinydrm_of_find_backlight to
 backlight.c
Message-ID: <1cc5a7d54faf3bc4671050150358086c87364106.1507800970.git.meghana.madhyastha@gmail.com>
References: <cover.1507800970.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507800970.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to backlight_get and move it
to linux/backlight.c so that it can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v11:
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



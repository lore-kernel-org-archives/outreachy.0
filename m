X-GM-THRID: 6475592721521180672
X-Received: by 10.99.101.131 with SMTP id z125mr374941pgb.151.1507800329558;
        Thu, 12 Oct 2017 02:25:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.140.69 with SMTP id q5ls929883pgn.1.gmail; Thu, 12 Oct 2017
 02:25:28 -0700 (PDT)
X-Received: by 10.101.65.3 with SMTP id w3mr408584pgp.50.1507800328843;
        Thu, 12 Oct 2017 02:25:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507800328; cv=none;
        d=google.com; s=arc-20160816;
        b=scf1Swh3vjZ7IBTeewfk+kgxZ7lEW+riif0IrZgswcjxw6aEUFmb66KiR0tTXYc1Jl
         14OXFwlYurLjjtCny7vpDOpicyl6Y2r5/vi7q2FxYR3N7z6GcQEXZrpPbrMl1J/kgLlx
         uHctYh3DVK2fWx8B6oYLu3XU/SG8zcjTlW8MvXu5twa6a3/fNxdtQIjFpqMna/q2a9sT
         tVr56JC6Ru4z/8AUDXMRmSr/D1CAl4Ai6UpRm2bhmAK8sC285ItNOlZzQf1LZr09DYcr
         Ng7fFI6FkPww16Qq6S3p3c4wK2VQVKbTsH7Deqcuch449yWOXn2/FW7tAy4jaJTwWrQ7
         Io6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=lMbvzwVry4g9DEacvOBjb6wROaN2Avy0WIE55vv98ZY=;
        b=FPi+aZuFhudgXf1YUSMJj5oqrqhAgiu3y2upfvr11FvT6C1Mn0LEK1hM1BSI4p6cN4
         +yvVDZDuwt3JwQLPWMYNsY+hiHFpsauZ6OeEMl0aemjjT9lS9r1rKqRIHtOvGRfj7E15
         n2E0+xXbmsBEPqKoJVc99456wqKvfCvnmTcnZIfv5alBLeI6CYmSeoixacYgRlAZKH0j
         t7RRYI59FdSepFzazq9xCrZW01367Rqt6TMsF2AFchw4HBStUNL5DpAm6mlRI0Wq1EKz
         aJE/N1pnEecHdS4MTR57eFtCZP6CPZSWXAlAt1SSoiynkpFiWy0RZk2JqsZJs1WyHXn9
         3Tuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J+ZNg4EI;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id n63si1586685pfb.10.2017.10.12.02.25.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:25:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J+ZNg4EI;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id h28so5244667pfh.5
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 02:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lMbvzwVry4g9DEacvOBjb6wROaN2Avy0WIE55vv98ZY=;
        b=J+ZNg4EIlHYSFJtbLcsODVNJvEoYAnwROElikVg9/joje3FXy4mtRjKpDy/7HjG6CS
         7y7Ea0eNcOFZFQ7O+W3F80ygqLDUAfuwa38E0zPhQdLNQhDFCdEehYr6OlDSK6yKfqBW
         1XC65a7q4/zrdfhvqwpYIZN1fdt5/iaukpXtc7j8vb8kiRuRWYQ1YiVKLJRnv7Vi/v27
         3RnDXHk6sHN5s+8qYR3JO1485h/9bF2cey1Z/KBuYl7gkD6TZ2ojr41Wx8DektNUmmMz
         h6rwISAPQBXs7acoSMAQOgb7lIz3IEnfwmdKVv46aV2fXSAoJHWoPygXYuikMbMDbMfZ
         QC8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lMbvzwVry4g9DEacvOBjb6wROaN2Avy0WIE55vv98ZY=;
        b=Lt6qbqZ2L8BqhytkvLf2vBna0fsWUdvtXUbxuQvQc00xQB5F6yh5zXFpDk3wgLdC9y
         0Gg9tOuSFwUMzDeQUmgrCKb72mOM0oCqpjGVV5/tANkYNdiQsAc+ER9BmRUFgMnANzrl
         SYn3j23sXEUH8mMvWGvlozqRaKM/uoW2Qy+xu9rVYr+P8JDkXo0JBSMWDEB3OJSwnTCP
         ZPnsjxTU8BryJxMJ989vdGUFlk2kC/ablfA6hm3bEkf/6K6zZXu7JT86RmA4KLIT5+pl
         FykdSdW+v2rNgWG5nxHLMmJlRPYZ6RiRg6d48dRrx7PD+x+vk4Q9lQG7hTqu+VD42sST
         pVqQ==
X-Gm-Message-State: AMCzsaXZxhgwuh7SHGIb+qtXRTa119hTghAkcy6BshsuNxKemkW37o3p
	HrOdYj4iXj5X1/7wOlCjDa0=
X-Google-Smtp-Source: AOwi7QA3U/nE/BusEl9Zd57kDDzkQJA7DJDUuS3enUsgBLjbslu8gekm5Hl8hv4ADT5BHUvBnCUSPw==
X-Received: by 10.99.113.92 with SMTP id b28mr1632168pgn.42.1507800328549;
        Thu, 12 Oct 2017 02:25:28 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([2405:204:5684:94d7:a890:2695:1239:4fc8])
        by smtp.gmail.com with ESMTPSA id t2sm30432142pfk.90.2017.10.12.02.25.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:25:27 -0700 (PDT)
Date: Thu, 12 Oct 2017 14:55:18 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v10 2/3] drm/tinydrm: Move tinydrm_of_find_backlight to
 backlight.c
Message-ID: <f68884b3643d41dc0c8548f8d085749592d79fc2.1507799712.git.meghana.madhyastha@gmail.com>
References: <cover.1507799712.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507799712.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to backlight_get and move it
to linux/backlight.c so that it can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v10:
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



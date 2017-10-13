X-GM-THRID: 6475592721521180672
X-Received: by 10.36.124.133 with SMTP id a127mr870363itd.41.1507891312278;
        Fri, 13 Oct 2017 03:41:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.159.65 with SMTP id i62ls1348257ioe.8.gmail; Fri, 13 Oct
 2017 03:41:51 -0700 (PDT)
X-Received: by 10.107.13.213 with SMTP id 204mr630867ion.114.1507891311692;
        Fri, 13 Oct 2017 03:41:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507891311; cv=none;
        d=google.com; s=arc-20160816;
        b=jz+1btbGqFU82P/N2zasU+9KjZl7e0wiBK56Nwq0Cq321ZkFlF79f5acj4mSPaz/79
         rIlmnkIyGntqM7DaKny4XsswAHHlglBQA0anfXAbjYicWXmfHp7JqmPCqfkHfNCZQpIW
         /1oLxaFwcUxnHAUUiYFhCEuXrwZLerFPlZrHHNVjjcBN1B6dv+ET7GZLwtYDhOHuLb+q
         tKXXoHUS0OIHbjyvM0HpscmR47GPIfbKzdpVZ6EzY5CBeyKDHDZ40ltofdoFNP9AMpzh
         yDukHfMJOot8Ja2Uqft+tLUocbhfOLdOATXFkJQPasucLz5KPJtl9JyaR05yP8k/f/H0
         MFGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=Z0zY1f0zvnnWxDOBnsYCmF0Z0LHOLEokexcJ53qyaj4=;
        b=H5zIbVi0E+loN0gy6ai4eBpS/aacUewAks/FipwuvLVHuduUUY0ghNfFlLNTaT7i5n
         rbmp2htfPL6Xfxj0M7YhKRgovbRtPozT5TiX874sa28F4P1o3DnirdXCw7PKUXW1BVdK
         NeB7M1WANP6AIM150Zof+YapZzyikSRjzXmTerl/h0bG7HFtjjL9sL9tW5X04iacu2eL
         +n5RaWwBmEkfXeOkC6w5ZuveGe0VrvLPK5O2anf53axPjVfuoxOUfPd9N7LTUV0xKo2y
         vPpAOnUS4lHdeE8sF6X6V90QvjzbWWWHdSOPMgCKppb9vU7qjAlaA01J5TKPJXPBordZ
         Vkhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kGLImk8h;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c3si26033ioj.2.2017.10.13.03.41.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 03:41:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kGLImk8h;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id z11so9605843pfk.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 03:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Z0zY1f0zvnnWxDOBnsYCmF0Z0LHOLEokexcJ53qyaj4=;
        b=kGLImk8h+qfbFJ/K7CRRn9iO3+E2ALA+z+PnYBc2aIbc8Id7OfeuU9EdZrk42hHdQb
         p2yzF+gpVOHGITJq8wlabU0dPvqS9mtOeCJC0Fd2rrm1c+3UgZDdrkEUpSTDKwBSetXM
         Fzvar0JJBSM348M4YfszeCYzuf0jl4TFEhOCpBa0COzCd3s+kpINxXiOVZ7x6NuqXnoo
         reYZmIqFpdPZD1dDZRd3BNAtfgf3P6GeeZJr+wO6SXs4Zutah/wmddsVlkc8JdT3yX4d
         DlbhGSMgZBNO8Vv014Z2qk3sPolIs0twW6CAyochKncJ+SOyuVcZdLEIN0/QZDbDeEEy
         YeIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Z0zY1f0zvnnWxDOBnsYCmF0Z0LHOLEokexcJ53qyaj4=;
        b=Ao5tMhMXBosDxYxQ2wO8IO8MDsFn21ylyvcbswNxZ3OGPvDwQ3ngor5fxsoZLov+6o
         axuCq8XVWRVyk6JJ8jcBXgW9bGip0h+Y/WzD34m5OIZ8Ahk4y7UgaNShWQn0ULYv9EOI
         eUMbGPjXvzQIF5MGvNVOrOp1GF0nBdRDeFsjSErrar9/n+MmL0QGfZwbrw6fEuTq4XQx
         rcJpUye9T6ZPxKzNB+bRM1/slQDd5ynmuEIz6Djt/VR92K45kVO4R3LMDEsQHE24jrC3
         e7oYld6DAKUVqmhias+AEYMJdTg32Fp74na7xP6sehgTB+gEL6xwHc+PeBRkPlbFmzPn
         B9UA==
X-Gm-Message-State: AMCzsaXlPeTAQDbje5OBWaYaOAL6IdcA6XKy3rgmDoggTcxVwWWZjjm1
	pQ8gs6jZizFqPT7WIJ8ekDk=
X-Google-Smtp-Source: AOwi7QClTYPipf6y39MxkLveWCyM2UPtbVcF1GbfwMSTnqJEyz0pCOZ8nHhiBMfEp6GPeKka/qYg+Q==
X-Received: by 10.159.206.198 with SMTP id x6mr1019546plo.35.1507891311375;
        Fri, 13 Oct 2017 03:41:51 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.84.136])
        by smtp.gmail.com with ESMTPSA id j1sm2011717pfc.169.2017.10.13.03.41.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 03:41:50 -0700 (PDT)
Date: Fri, 13 Oct 2017 16:11:43 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v13 2/3] drm/tinydrm: Move tinydrm_of_find_backlight to
 backlight.c
Message-ID: <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507890285.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to backlight_get and move it
to linux/backlight.c so that it can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v13:
 -Add backlight_put to backlight.h in this patch

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
index 7fd2691..a932185 100644
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
+	mipi->backlight = backlight_get(dev);
 	if (IS_ERR(mipi->backlight))
 		return PTR_ERR(mipi->backlight);
 
diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
index 8049e76..c4e94d0 100644
--- a/drivers/video/backlight/backlight.c
+++ b/drivers/video/backlight/backlight.c
@@ -580,6 +580,43 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
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
+EXPORT_SYMBOL(backlight_get);
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
index b88fabb..987a6d7 100644
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



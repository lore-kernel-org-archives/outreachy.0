X-GM-THRID: 6470705412124442624
X-Received: by 10.159.242.199 with SMTP id x7mr446799plw.16.1506590082290;
        Thu, 28 Sep 2017 02:14:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.80.6 with SMTP id f6ls1022174pgo.19.gmail; Thu, 28 Sep
 2017 02:14:41 -0700 (PDT)
X-Received: by 10.101.68.197 with SMTP id g5mr587314pgs.49.1506590081587;
        Thu, 28 Sep 2017 02:14:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506590081; cv=none;
        d=google.com; s=arc-20160816;
        b=WljSujBSE4SEW4EFgezo73ik1xRA31sO9cK7n5HIO7MNmp4MMjWqlKxiDUe223YGmO
         oMM1jffDZrhBMS+c7getngTGwRv7Za9jTK3gMf20fAxp7UN7nUh05BBET73P5qV5Z0uL
         zll7iyHI0okAjZWIfEHixnZJ/7wCbpSPlLlZFcaociMt+Bo+19czrxOYM64HgED3aKhC
         PB+GS+GbbSAh90rFIpZyLYI3RYQMm8V8X0dkhFhkcMj9ZwQ/B2MC3yycIpjr+bWIwIsk
         kLTpqpgbRY75x4O8bVIvp1Q3i5ZNclaZrxESCpXnGe5OuRtd86cFFYF6Azmpu+oTZiXO
         662Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=EELBLijFiBzHm3zotdliGYVcYhwWfQaxJiKXG+a3Ktc=;
        b=sMmXZ8gHfYUwDeFE8VF+VbYEz20wuJImzcp7YN9yBYp3rqjisfojgqEKLdt4D01G2x
         SVykHiiNq8C+a0/OiI2+mLuA1xM8BUkV2ZXFw4e0AhyModiEF5dsA0JfLWDxmmTAK7PW
         nPOafhxmOPNBZZ/JeIEA0fukXZhr4vbj8+YuuYlwaKodGv6CG0/0zTgc5tol+EhXjszL
         u5mPa6geqA0MqvdGEFi+wAiC95B6QicfR8tgtnR9uaOET2GpbbzZhAIGY65phf4QEFYl
         HN0Xm/vPYwYwg/suwVP6AY3/bfEKwreGH8+tjLS3MZo89PBA0YgjkthZLar57ntohNxb
         memA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FbnoyOWt;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id d207si136080pfd.16.2017.09.28.02.14.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 02:14:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FbnoyOWt;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id i23so980325pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 02:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EELBLijFiBzHm3zotdliGYVcYhwWfQaxJiKXG+a3Ktc=;
        b=FbnoyOWt6aIPXmuhO6ndI4xVxKNUASZVgwNYdMf7TkYwbhiyLnZGfkATv7cyjWBWaV
         SpeYMMaNvpbTktfvrCH5y7MbMWBx1iCRuXYWUB2ZNooaMr4bnZInppLy3lxKIIJ5CuEO
         9Fwzz03na8jzXundHOhdSOJ2yOl/MFsgEqaipDX4zfddTzMV5a3esjWDDee1eYYKn8Mg
         qyhC0ag5BXCrxonLw3/zC86fXsKQDXSZ93GToGYwWngydIySGVU3a6r+bv2Wn57pt7If
         0zOcI598if0eZiJaM+O7Jr/vYErfFeUfs1JUuR6Vgu4lGy63kv2xUsBLUMQUP3dN99h9
         hQsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EELBLijFiBzHm3zotdliGYVcYhwWfQaxJiKXG+a3Ktc=;
        b=qLbBEGBHJ4PxUhm0pzIP9IQ64aZKRcW+0xh07eVpeNU8G3WciI6vrXxWoIpfj5lA5U
         Etr6LvK8pFnWuto9+xyxeJMPhCy3S0QfqXXLguHdILf6j2QL8RNOksyU3fEhdvXtgmyO
         lBTb9VBjl6DcX4+YOzeWevF8pXQnRSSJS9P9054bIFSsP+x+XiKNdgWnMqsuiabWcU+u
         SPVh9WDZDyMcKEfbEe03xIW3OVs8QhFixTEU7ubGQgE1rFDpQDAQqNi16DEHo1ZS276Q
         kjOUrD/nZAzPDn8h3C89T3TY3j6qfD4nzuJHHcXM9cgZcQ5Kdz1UhjdgUvpHpPrGzAO2
         FXgw==
X-Gm-Message-State: AHPjjUjjYfWI6o4l80WCOf+8mq7nrqvSWjxFYLGGAGXbYEQda1Aj3JG+
	JmKPQQJg+LYVwvkpr3Yv7SI=
X-Google-Smtp-Source: AOwi7QAn3uCPBxaZ/1NMnMjNE1xPUnFas7uceB6mGKegLBncpCaVMNhCORl0g/4oA87x/e8eqmr8ZA==
X-Received: by 10.98.252.75 with SMTP id e72mr3706840pfh.47.1506590081293;
        Thu, 28 Sep 2017 02:14:41 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id r66sm2160124pfl.15.2017.09.28.02.14.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 02:14:40 -0700 (PDT)
Date: Thu, 28 Sep 2017 14:44:34 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506589807.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to drm_of_find_backlight
and move it into drm_of.c from tinydrm-helpers.c. This is
because other drivers in the drm subsystem might need to call
this function. In that case and otherwise, it is better from
an organizational point of view to move it into drm_of.c along
with the other _of.c functions.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v3:
-Change it back to a single patch from two patches in v2

 drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 include/drm/drm_of.h                           |  1 +
 include/drm/tinydrm/tinydrm-helpers.h          |  1 -
 5 files changed, 47 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 8dafbdf..d878d3a 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -1,6 +1,7 @@
 #include <linux/component.h>
 #include <linux/export.h>
 #include <linux/list.h>
+#include <linux/backlight.h>
 #include <linux/of_graph.h>
 #include <drm/drmP.h>
 #include <drm/drm_bridge.h>
@@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
 	return ret;
 }
 EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
+
+/**
+ * drm_of_find_backlight - Find backlight device in device-tree
+ * @dev: Device
+ *
+ * This function looks for a DT node pointed to by a property named 'backlight'
+ * and uses of_find_backlight_by_node() to get the backlight device.
+ * Additionally if the brightness property is zero, it is set to
+ * max_brightness.
+ *
+ * Note: It is the responsibility of the caller to call put_device() when
+ * releasing the resource.
+ *
+ * Returns:
+ * NULL if there's no backlight property.
+ * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
+ * is found.
+ * If the backlight device is found, a pointer to the structure is returned.
+ */
+struct backlight_device *drm_of_find_backlight(struct device *dev)
+{
+	struct backlight_device *backlight;
+	struct device_node *np;
+
+	np = of_parse_phandle(dev->of_node, "backlight", 0);
+	if (!np)
+		return NULL;
+
+	backlight = of_find_backlight_by_node(np);
+	of_node_put(np);
+
+	if (!backlight)
+		return ERR_PTR(-EPROBE_DEFER);
+
+	if (!backlight->props.brightness) {
+		backlight->props.brightness = backlight->props.max_brightness;
+		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
+			      backlight->props.brightness);
+	}
+
+	return backlight;
+}
+EXPORT_SYMBOL(drm_of_find_backlight);
diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
index bd6cce0..cd4c6a5 100644
--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
@@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
 EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
 
 /**
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
-/**
  * tinydrm_enable_backlight - Enable backlight helper
  * @backlight: Backlight device
  *
diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
index 7e5bb7d..5e3d635 100644
--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
@@ -12,6 +12,7 @@
 #include <drm/tinydrm/ili9341.h>
 #include <drm/tinydrm/mipi-dbi.h>
 #include <drm/tinydrm/tinydrm-helpers.h>
+#include <drm/drm_of.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
@@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
 	if (IS_ERR(mipi->regulator))
 		return PTR_ERR(mipi->regulator);
 
-	mipi->backlight = tinydrm_of_find_backlight(dev);
+	mipi->backlight = drm_of_find_backlight(dev);
 	if (IS_ERR(mipi->backlight))
 		return PTR_ERR(mipi->backlight);
 
diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
index 104dd51..e8fba5b 100644
--- a/include/drm/drm_of.h
+++ b/include/drm/drm_of.h
@@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
 				int port, int endpoint,
 				struct drm_panel **panel,
 				struct drm_bridge **bridge);
+struct backlight_device *drm_of_find_backlight(struct device *dev);
 #else
 static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
 						  struct device_node *port)
diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
index d554ded..e40ef2d 100644
--- a/include/drm/tinydrm/tinydrm-helpers.h
+++ b/include/drm/tinydrm/tinydrm-helpers.h
@@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
 void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
 			       struct drm_clip_rect *clip);
 
-struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
 int tinydrm_enable_backlight(struct backlight_device *backlight);
 int tinydrm_disable_backlight(struct backlight_device *backlight);
 
-- 
2.7.4



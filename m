X-GM-THRID: 6470705412124442624
X-Received: by 10.98.196.204 with SMTP id h73mr705665pfk.35.1506699011913;
        Fri, 29 Sep 2017 08:30:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.74.206 with SMTP id c75ls2036498pfj.12.gmail; Fri, 29 Sep
 2017 08:30:10 -0700 (PDT)
X-Received: by 10.159.253.67 with SMTP id b3mr723962plx.54.1506699010829;
        Fri, 29 Sep 2017 08:30:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506699010; cv=none;
        d=google.com; s=arc-20160816;
        b=leP02mYc3f5wskprOlFxdUGmKnYPXYfx4QS2YbHkiBy5h87n3QOh92lrMwIEU1OjMW
         qof+vwGlLUkrQe7QEHgJtSMwBYfReQdwDQ8jWINqksDDXl7W8ndvtuHBcsIHOIlRcDUa
         RxtLEVNDOLVgKYH39zmhzlfNTtBg1wBG0uPgSWxpqke82WzzBc0cXSQ0FbyO9OKV1sRo
         pc0ovpIxcGFPOxSvJFPXiwDSvpMwcnEl1c2TJFDqzOtW1gQ/KAVygzKU41T6Y/gaF9oP
         Q4fpYyK2SamYeT/xzuLIbGT4BMnQFIrmPwYVcDaZsNVSypKvnvaQe+1eeeqi+pyDU2ZZ
         ildA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=C3pNM+vkXjSXiAH2aotvQzIGTA/35YvKn13fnJ5E/0Y=;
        b=PHqtJDuOkGdX83G0lHfIeIsGMxeW98/B0tCvnwNrGU7LluXeIctYFWdoh/2KNJCOlK
         KylRah0iBCVABc73tA4iY63E1Pst+psUiADMn2KvURQKivQ/UVmFISetdI1q+pRQ3hkg
         U9lRsy4zlMbL63hW39txJxIp4mNDIrRD1blwsh0A5Q8dM2zUpiVBR4dNa4+pkvW2flu/
         tnva057ut4sa9tbj+G4hlfFYJmCI76Tl3vTdDjoHLHUr35Z5rWZdYOgwFyfcW2SgAtqH
         uP8ntRz2mqwz++n5xrRBjgNL1odSwBYQ/en2MsoKQrxM+wEZbeZyyvXRUw4aJwYUwHDk
         oolg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MvpHMqSM;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c200si520953pfb.14.2017.09.29.08.30.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 08:30:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MvpHMqSM;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so2461pfe.1
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 08:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=C3pNM+vkXjSXiAH2aotvQzIGTA/35YvKn13fnJ5E/0Y=;
        b=MvpHMqSMnWW6lviHSE7RmwQxB7VxEaPEgTi/NofHIT9eN1UaYx7VqSXhesf7Sp79ND
         I0CstyN1Hjj2zev3d4NVVbJU0b9w4RafEh/XQPP4/HS/7MHnNZtNi7QLwWNiG/RGrhmg
         ygG8plMyTGYVQRjpqbUqzZYtMay4gLcIyxqYn4SIAqLtscV/Y3s/pLyC0JTdV21TpP6t
         1Ybt04Zz4ZmhyBRXpzU8TZIVJqqbv/BCw0fjYpEpapzmrP5uFXdQKIwYKUh6RJAl6hdz
         B7wTTC/pGrE0NgeQXMo9aM2wOg4/07ujr7FziEHrXNQBcfMyrUOOzkvWcDM2eWc6ZWWC
         HLFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=C3pNM+vkXjSXiAH2aotvQzIGTA/35YvKn13fnJ5E/0Y=;
        b=p980xNrLyeE/YTDwHiv441ptj2LFrmKyAWJjsMqgnM1+y0O9dYBG90FnNN9ZPHyKia
         9mQRz22xbvHa04dQRMNW5sflaNXrKCmYAXbRt9IPrjXCNeTxFuuBPncD8qlZQutNMtx3
         yrt7kFCysZTTFqdL6HvPrjd7JryhgZliCCPBeI8ppaXFE0Oq+H7iaEW+Mm/fotAVZpzJ
         Ontx52pXNXQBtikM4srMUGPyyHUtbWIJSH+Ao7o3s1fxZKrSuqxAqcY7Yw8YM1RVmy5O
         D0zik9/JvE3gkj/VkCLDM1fcSWDfGeYTiQXLrkbfLlHFsyvSYB6niDw+7g+hIH8Cb1rV
         YoUA==
X-Gm-Message-State: AHPjjUgki7dy/rVwEGKNCvyHUn41HS0W/FonB5YkHnHIvDAiC4F8HUzw
	WCnWCqewA3IrHNz2quhzCtU=
X-Google-Smtp-Source: AOwi7QBYUC9SHWhrSxypCHvOuwN93fky+mKiY5sBFM0IKMOCutK3O+sUkaV+X+nMAiD6//g9wJsMAA==
X-Received: by 10.98.153.198 with SMTP id t67mr7844956pfk.62.1506699010467;
        Fri, 29 Sep 2017 08:30:10 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id z69sm7798353pfl.86.2017.09.29.08.30.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 08:30:09 -0700 (PDT)
Date: Fri, 29 Sep 2017 21:00:02 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 1/3] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <e423bdc15522a0109bb98a479eac70409850c5be.1506698677.git.meghana.madhyastha@gmail.com>
References: <cover.1506698677.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506698677.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to drm_of_find_backlight
and move it into drm_of.c from tinydrm-helpers.c. This is
because other drivers in the drm subsystem might need to call
this function. In that case and otherwise, it is better from
an organizational point of view to move it into drm_of.c along
with the other _of.c functions.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v4:
-None

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



X-GM-THRID: 6470705412124442624
X-Received: by 10.98.74.218 with SMTP id c87mr869047pfj.49.1506762306063;
        Sat, 30 Sep 2017 02:05:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.76.133 with SMTP id m5ls1988853pgt.21.gmail; Sat, 30 Sep
 2017 02:05:05 -0700 (PDT)
X-Received: by 10.99.2.3 with SMTP id 3mr1032243pgc.175.1506762305076;
        Sat, 30 Sep 2017 02:05:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506762305; cv=none;
        d=google.com; s=arc-20160816;
        b=kwFeOQ7zbSKFBEx8pMTtB+wbuOHEq3WOgjXjxpZlpVKrxEaqrjoB6/tNWeXt6guPkv
         OBwhCRc1kci9FBFCoaCdJ7G164lc7LrU7KRd3gwR4kd6MZTjUN8DgWlF3MngzoCl/xPz
         zYN08pnmgy//KEgd30tueXEd+m8lXAq82KkH64Gr/BEmJJKWWrMi15SldTt7QRfJdYA4
         h1dLGyOyRj1gMPrXlp29TY1H/jpW6+Ch3PUgzF2KwGrJhBBHW0tLy5QwzpvGds4uQMJ3
         d0FDSRPMFEdPN1W9GiM/+lh0Z8vVb5RSnl1uQZuZO7fFXUzC1lyllWclKuXv366e1OCY
         OpiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=cAwu7dXfPRSeUA4jnYeWxSPwXy76XK6WAslPICmY/Lk=;
        b=JXYg8y3Ofo9Mpm7mu4Zw0u9jrh35QvsyvFHvfznA40hu4m9KM7tEOGseLbduruHHbQ
         MciUG7worWAqOuW/5PYzAC+aW4smyjYv7NPvxyPCTUbz1JYNGOO2K1Htz/pHc4aFYTAv
         qqJsm2JlS8Ne1B3iGLPzsrU8aR/x4hVT5MG3RpWIiMF7SCR34w/BmyVydn3rCoigSWUp
         gIoAyz9EswkL3M+T8uMMbpeuGdtdYXYYQCFaw1ab1SVHKMRrbYkZXXkhRPXnyJnpy6oC
         xtKQMw/D8ExtJNnNxTTYuvw92TcYD5NeEiEJ7R2I9trf5XZMYY09BkSoowIeR594DmRu
         EFag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ILfYF1ms;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y18si654629pfj.18.2017.09.30.02.05.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:05:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ILfYF1ms;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id m28so1106899pfi.0
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 02:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cAwu7dXfPRSeUA4jnYeWxSPwXy76XK6WAslPICmY/Lk=;
        b=ILfYF1msZwkY8nkKoNxGtfjLLiX3agE4lNdctAxClaQmHDs/H/bpxSiSslOLqpZ+0P
         q8EtRpveKzJgS6cHIN+OKVGzk9K1TMro+K+Qst70ev0H5ncVl7EX0bRRLsVurthAm5cF
         aGTGqmfpex0qJMVX52qXmNnPRkXbXHzG99yTSGeuNX4JorNWjjNI6hHPCLk3+K5iJdR1
         lB3ylcx48RPb8L9zGGSPnBj2u2xXnvk2x8Dj3G3L/K2GrQ7e+KXQNrFs9rj5MiGu9hl6
         6d4r8Bqi5vURHfkc/dpLJzqPe/j/e+nxdqX43KfO8SB5TmnOeWlOx8DTYeBDGwnWYIG6
         Crbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cAwu7dXfPRSeUA4jnYeWxSPwXy76XK6WAslPICmY/Lk=;
        b=PCT+CLiYuofawA8PhLT5jRIjHFyO6wIn4WgjEKHB6bY1A6DBz0CkFZVaC6TBlmDK/t
         WK24lt0usGx6ByrUmKIkL8Z2J51rjT2c1NCCoO/r9lo+4yeJh1G/O9BIcuTpYWVRC1yC
         LW5tL/QnqLdNgyDtuuBcTAe/p8Rcmlv+bQjLjChwCpayhvIuj6bP2DViVBMz4kIvj6q/
         wvoc3v2n/sA+Z76qiFkRycFel9crk5elU40GlPdtgsJjvMNzqoFPfYXuuZBkUgZVWGin
         WpJtYWM2sI5cVVPQDq91xyMALrLCcP8TGMgFMXkCrSXCOSXEH8jRxcn4QFPsh8qtkElD
         nnIQ==
X-Gm-Message-State: AHPjjUiOvMv3nsLvtx9rdUWWW2kdj6o8EbFVN+D40fSvzWnVmldjMUeG
	ob+P916zMUnONTXETiFWNYk=
X-Google-Smtp-Source: AOwi7QCTHm1KG3y1HEqTQwJDoif3HIQ9c/BPnzZSzZ1PBupSBKRzaF1Rmh6gwk1Jhe4IAsBYQDO4uw==
X-Received: by 10.84.128.1 with SMTP id 1mr9283455pla.238.1506762304785;
        Sat, 30 Sep 2017 02:05:04 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id 19sm9531756pfo.140.2017.09.30.02.05.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:05:03 -0700 (PDT)
Date: Sat, 30 Sep 2017 14:34:58 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 1/4] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <e423bdc15522a0109bb98a479eac70409850c5be.1506762028.git.meghana.madhyastha@gmail.com>
References: <cover.1506762028.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506762028.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to drm_of_find_backlight
and move it into drm_of.c from tinydrm-helpers.c. This is
because other drivers in the drm subsystem might need to call
this function. In that case and otherwise, it is better from
an organizational point of view to move it into drm_of.c along
with the other _of.c functions.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v5:
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



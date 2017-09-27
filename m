X-GM-THRID: 6470456120502648832
X-Received: by 10.99.116.93 with SMTP id e29mr349934pgn.153.1506520463318;
        Wed, 27 Sep 2017 06:54:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.195.228 with SMTP id j91ls514344pld.4.gmail; Wed, 27 Sep
 2017 06:54:22 -0700 (PDT)
X-Received: by 10.98.196.204 with SMTP id h73mr263550pfk.35.1506520462231;
        Wed, 27 Sep 2017 06:54:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506520462; cv=none;
        d=google.com; s=arc-20160816;
        b=ajBltK0aS27Pqzl/0xODmmpNam6DeeTh64e0XpcYPar7H9mMSyJ858DB5ROCXKx5ZM
         cQgUK8f3EIK9HrcICrE7tfWux2VHDwIekreE1eifbVXFJ7NQqc9C5VHO24LURMbsLLxp
         +RdB9q3DLt8qWOOgCqinMixwn1VPn2RCXw1OHGAbnkail6YO66u9sPrQCvIJ8TiZDylD
         lKG+WqA0r7g7fgarUh9suagGcwyUc4s75a40AndkPSpnueeBsk3NK1+3Z3cuE2QSyKi9
         fuxKNoJi3HY8FRRMxWKJmZP3k8MgzE+YFixOlTOgZOGMC1fK//nP6ihH6iMc5i6CEBFK
         BsmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=LseAGZBthM5n4XdRS064V1qYk3jzoA2DGh8fLNOo3Io=;
        b=Ng2bK4DKuuUVoTiYWgLTtY3ggG7RGUYJ8APn4iiYPR+ECXreGUS/VTSZInydZAqUDY
         k0uVd++84VZ8YcoI/reJ+8ay6X2Zf3VTbyCWjS5YRe8Sd75To6JN/auvxnG0OzfUhSYI
         ql8JvCAaDkde0JMUsRHW1T1uuhqVJ2I2IzI5/9lUTVGNrMyqNowjIp+DXhirrADZQG+h
         9PuWRVoknJeDiCTfY0lK54ZFD8LAyKLEf1j37MqZgUsMdX9OuQdxxQq9mE42EzOnLZ81
         1ufn3SFFA43vObUBI7cHUlV0bHKdlm3aS0/JQnMyVY7LhCSilo9BpI3xo+x0uIoI0DTs
         r7+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=klSQzApW;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 13si963244pfk.26.2017.09.27.06.54.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 06:54:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=klSQzApW;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id i130so9275569pgc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 06:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=LseAGZBthM5n4XdRS064V1qYk3jzoA2DGh8fLNOo3Io=;
        b=klSQzApW8g8ckrQr9FUm0CB9od14ahsZ9rGPI/XRe2uno32nkTxODhf6007U4wf32k
         nB1NZqZDVrYl3xvDFPd3XwGsK8kMvh90MFqgMYQU2488eiM3y5Qsmj1b5qNYRV1BnuEP
         R8jswvtvOPz4a5CvzfEezMne+Q/NerU1AjaQNvlniUlBW2UiYq2TDZmp3/cIin13XPLG
         QeRndqr9lpPLCsRzJzG5gykVSnUX+ObE6IcU6SC3rbp3Md/W5sg4R402IkuaJSABzgjF
         PITxRAIxS+y7sdsiCSdNDOR4An3/L5Zj+egfhru8EU4Wp36Iigakchvj/UVANtkHL1Hu
         PeFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=LseAGZBthM5n4XdRS064V1qYk3jzoA2DGh8fLNOo3Io=;
        b=uOux27q5T6QiqqBbsred9j66KlfhS6FmR72+dHNgtWVJpRnIlJJzzVQwQaF3QcJboU
         ARwQhhXio7zbRldAUspkiMVTCIpSl4ZkjXFUQ7l9i1HJvK+9+hd8IYugBJylkUu0o86D
         k0+kUMDGhxlmYO3EbIvqDhKb2OYYWGhTRSlGSRhjN8BKGy7fZoJ9osl4E3zaTlT6JKE/
         sl+LvY80kKJdo3Zv77NLGjwYhW9FW837Exz3wCz0UpSsXsSvpCK5ZLd0YPw5uIygrpDP
         OBBAF+esNjbru+JRDPsWj8rKoVcv3p65Ue/3EnVevWsNJO/y7nyi0RVbnIk5roVQCHaw
         KF9w==
X-Gm-Message-State: AHPjjUgu+BTXELCK8tzpZg7uajMNKKcZkJA1oGnq/A2+o+APt17mOJQX
	62dGAYNhqpi0xBczZRfpx4A=
X-Google-Smtp-Source: AOwi7QAOgKG9aun/182kTZD8f439k9sR4QGEc/xaMSkrcLKS5NSObw1Pu+JfoPq98qJdLDvXqoI8hA==
X-Received: by 10.84.129.193 with SMTP id b59mr1340459plb.147.1506520461687;
        Wed, 27 Sep 2017 06:54:21 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id r68sm20462658pfi.7.2017.09.27.06.54.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 06:54:20 -0700 (PDT)
Date: Wed, 27 Sep 2017 19:24:14 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
Message-ID: <20170927135409.GA5027@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to drm_of_find_backlight
and move it into drm_of.c from tinydrm-helpers.c. This is
because other drivers in the drm subsystem might need to call 
this function. In that case and otherwise, it is better from 
an organizational point of view to move it into drm_of.c along 
with the other _of.c functions.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/gpu/drm/drm_of.c                       | 41 ++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -------------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 include/drm/drm_of.h                           |  1 +
 include/drm/tinydrm/tinydrm-helpers.h          |  1 -
 5 files changed, 44 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 8dafbdf..d8cded3 100644
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
@@ -260,3 +261,43 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
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



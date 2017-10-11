X-GM-THRID: 6475592721521180672
X-Received: by 10.99.96.65 with SMTP id u62mr2001543pgb.24.1507716815676;
        Wed, 11 Oct 2017 03:13:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.78.4 with SMTP id r4ls278527pgt.9.gmail; Wed, 11 Oct 2017
 03:13:34 -0700 (PDT)
X-Received: by 10.98.80.77 with SMTP id e74mr1595972pfb.17.1507716814798;
        Wed, 11 Oct 2017 03:13:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507716814; cv=none;
        d=google.com; s=arc-20160816;
        b=srMeswWBOyQGSXX8m/Ot/QRY6QqgMsjnbKF87hp73kMkiektYRUpe4udhojcC2zFDo
         P4nNlOvuDKpcNm5FdrxMTrR9S9xbbYfoMIBf57G4NjuPpxof5B7L2NZI4+GEOGiaN4uG
         a1hLGGfrNcc5ndKIUxUAr3rK0MgcCUkr3B8DT8r3WoPXfYYgf3c4a2JtyB+bY6OX3eDu
         CB1qiMqZHdeTB1fPNUpK9IGSJLNymDnKIeEo5QwuDtTjCoKe53juZfF8Jn2vzJ8btBG6
         xEPFShGx6y+lT9Qpw0IN5YwJHO+R27onwqxCCUbLmyLputM1u6cEdv4Dt4gxQo0o2hSx
         LX6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=yVM28zXGhM3oRE4EcojcMzF6ijlGvxMuPWOjm4rvVT8=;
        b=noeQ+GnehguRE5vDftSsYGaGPsYrFIxPXcr7YjnQjwpL+QmmgAA5CRG9hYQEclpJLO
         velwhmknqQE4Q6iiWZS+J1aJkLfp/sFo738Yo9vx4S5gmRlOgP8MI4Nck5SBDle2etVr
         BfxNYNFQAHopvEPCbwpe7HdtoG3SQuMEpkT8vmO6H0Rh2NaPYlOKtMW1ZHf6ASrBuHDh
         SUWi9oypvvPn4jQUezdgVKYAePWcaHayXKAYE+ph55KLxOjEbAwU8LOBLnlBB20N0aBC
         hkhD7xOJEWJmj7RBrkqoJF9NmvGVum99KBxpCGBgzk8gcXcrYrPL3cmXGqxr3SIRFsEd
         euYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZVTFNgxG;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id w124si1389949pfd.18.2017.10.11.03.13.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 03:13:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZVTFNgxG;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id u27so1710811pgn.1
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 03:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yVM28zXGhM3oRE4EcojcMzF6ijlGvxMuPWOjm4rvVT8=;
        b=ZVTFNgxGwP2gPF2oPryevgbSAAafXpXVzvId08Q2v3A5aPWqNToZT5t9qK/YgiTXIj
         f0CGOf1sQf365WZVug4CAlOSHvvXJY/ESy7or56KEs7067sQaH3d0oGywXd8Qlehh6Zr
         tQ6R1FZNSyNkfhvnWRU9lUtCODzvIo/aq9Hq+gIzok3MNv4cuZvGEVdfkdbnw7j5zITq
         iBRMbDJGkZbUQqD1hi7MA+NNamhOFiQZKxXOWb1T0vsecY7AMpCrMXEIpQkKt9Fndlav
         KyWhjYa6jRocpkQ7XS2wrCFMQRfJr6oZ4Nv8qBRjSBAGixGiPGcSII12pBvS67O7SIUb
         eNKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yVM28zXGhM3oRE4EcojcMzF6ijlGvxMuPWOjm4rvVT8=;
        b=gC8VtrQfBljnnQOxcvoUfXZJ9ALLywqAexT36cRfoEMCLV/72mur3YM67dwx5CAI4N
         bp4RWf6s8IQNRtfDoevy9vjP7gbjFFUVWtDa7jzz9PLQz7BXgNP6hh1CtLI8mM1x52Wv
         b0w3waVODTq+0wzM9DJJ2WH0A1MeGdIZa6awMCSuH8b55s5mi+qtXoKeV6sGkjoyqKT7
         pWLugWIb50rYWZbsCXTWMU6SB/4O2s7IIE8oGfXYtC42d5DneRxCy9nVIefPCWlrCJQ+
         Q/t3Tjj2fOoV0VtF7uA418a6aHY33oa62tCGoiWqX5PiJ68Egf93d/zu6ySrwKS1sQPJ
         w3vA==
X-Gm-Message-State: AMCzsaVPCp6I2nKy6+nUzJTqSZHl3Bt0pm8Kzctyl+UhqukTujl4WkWa
	ieubxLcLmOHJv8CGDFRBbbE=
X-Google-Smtp-Source: AOwi7QBdZZSpaUdSwD9mMNk4g607Yt4BPXbak0pHw1pZW6KDx1fHR+OLPgyGB6JiKgI1+dePKZG00A==
X-Received: by 10.99.160.25 with SMTP id r25mr4873210pge.254.1507716814527;
        Wed, 11 Oct 2017 03:13:34 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([14.139.155.24])
        by smtp.gmail.com with ESMTPSA id o14sm10434688pfa.62.2017.10.11.03.13.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 03:13:33 -0700 (PDT)
Date: Wed, 11 Oct 2017 15:43:27 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v8 2/3] drm/tinydrm: Move tinydrm_of_find_backlight to
 backlight.c
Message-ID: <0b55a1849129ec1c63e6389b982605e0b5687811.1507714297.git.meghana.madhyastha@gmail.com>
References: <cover.1507714297.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507714297.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to backlight_get and move it
to linux/backlight.c so that it can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v8:
-Changed the name of the tinydrm_of_find_backlight to backlight_get and moved it to
 backlight.c

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



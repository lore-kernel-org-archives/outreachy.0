X-GM-THRID: 6470705412124442624
X-Received: by 10.99.149.16 with SMTP id p16mr1083561pgd.111.1506878893243;
        Sun, 01 Oct 2017 10:28:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.232.202 with SMTP id x10ls3429475plm.3.gmail; Sun, 01 Oct
 2017 10:28:12 -0700 (PDT)
X-Received: by 10.99.9.3 with SMTP id 3mr696964pgj.19.1506878892540;
        Sun, 01 Oct 2017 10:28:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506878892; cv=none;
        d=google.com; s=arc-20160816;
        b=ZFcLnHSYVyy4tnrsURaZjHFR/CuaYoTPUNuPEO8LLKK6ueyNY1S6z/n+Wm2FCSLCGO
         b8w/+877SmnXW6bnfB87cG7t6JVYCIcPmmu39NmFlVfks3jVz/aFqBgYKC9m38Wc+uza
         02TTwYfelh1iA8wiXMo2FJ+GOly6AH1WmePMvQxAqv3YPy9DAF2xUjO770ps4jEdW+w+
         GzscpRMkYMgyNFYwRUpPmWwNMJl937mj6TMAUCpEGQqqeQSEf9SaoF2JUsGPp9dCAW3p
         pMB24ElxdQyN44DoYtjU0VM5mEqIn+Bn15EMybN4OT3LVmXiFcDbB6Jbk4PynnUakEys
         ugjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=hTN5NTHKX4XMfuqHljursSD+71/xn9RNefyZ582YUjM=;
        b=Xi6UAEA7fpwQ5WFWdFgoyZ7I82jC1ZWJ3qhj391ax91zlPvKOiHU7muYu9ulApm/to
         0bdqYVCvx7bMoadsDQG2Jsi0nE2DCwxKEhkSIt6CJnehSoYtDAcrzLHjrzMJDArpnbSM
         KmshZDrc1NmaP9Vruwb3p38eq9Q8QrmOHdBjv1VaUAADrHER3MhFl+87FahrL+yM9JK2
         rtuW2DQPWBBPzpTyFGIhVS3w38qJagKEuXARAe8sGQdgZj1NMUpSjftvQ4C1G8B2JSbM
         /wfSV10eUdoHqSggWQLI26KxUaW386kZ5xsrESW7xXjgtGYXMC+VeKd9VmSwaYOeGW1t
         90SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M8weiC5A;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id l10si840924pfc.17.2017.10.01.10.28.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 10:28:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M8weiC5A;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id d8so3611762pgt.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 10:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hTN5NTHKX4XMfuqHljursSD+71/xn9RNefyZ582YUjM=;
        b=M8weiC5AvCGA07BeCXHov+vaqqZtGGiKpyjH7Ilpd2b1Oc+gGS6KKiS3SlWitKKAka
         GVEjSTQv2n7ZGjv65kYqk/Y9lyFQ7cpD+8IZRWrLnjEcfhHr8WS9V30zSLHWpg6EnsZt
         +XconYPaYaCd/jW6KmEl6L/MDHHOFADDJufzlBseBObxEDiKh6CrrypPIS3LNU6/FJo1
         BKOBu2Z4ArT1v/P6xB487SDPrZ23oqn28URa4PMnfkTLyEd3E6qXZ+s2xA9QZTE+0SOV
         U58ZbNC3TVDxv4AHmRN85QXfByGUEX03iCzRb0va0BVMgWAoXwEkEm4Lex+qyJitbNqf
         yV6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hTN5NTHKX4XMfuqHljursSD+71/xn9RNefyZ582YUjM=;
        b=uhlHLzbbiYzOABDD301AUfTMiMTdjJOB8S16aNuagJpzLozK+iWb8DqIUjin6IqxxT
         moZ+9IFRYEv3StzjX6iSBaJisZtvWh3VH/DP7tFaZkOLgxSv+E40dUeTj7uXQ6TFSF45
         9dZCYGghLDqHT95J/5xRArqGZLEWKT69/vZ/HA5n55Be907dkgH1UNtSpig6Gn3zUn8F
         NlFiOiIJ4EKsMkhd1ahx+XDts6jh/b4Rto98sf18sCPnUksYSjlTMtRoweVS6Wzwuc+3
         91WmV9cn0gIzuAunKRCGn3eafLJRCWdzESrHWtP4R7anWgawpDxsZTDdzUti6+kPFC+y
         YWtA==
X-Gm-Message-State: AHPjjUi7RZgXzmIzu7PxwjPJtIDvvF1FG6x+XlEMsl6iZyOonVWLksZh
	msAWIYsYBOK10ee109VSomY=
X-Google-Smtp-Source: AOwi7QBAFVHcUmNelTp8gw7MJvwRjn3NBX/vOkM4umvwl6oXG4hWe9wP2NAxxzWOHUxCH2Nt9G3mCQ==
X-Received: by 10.84.248.66 with SMTP id e2mr12528360pln.384.1506878892258;
        Sun, 01 Oct 2017 10:28:12 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id j83sm16158514pfe.133.2017.10.01.10.28.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 10:28:11 -0700 (PDT)
Date: Sun, 1 Oct 2017 22:58:05 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>,
	Daniel Thompson <daniel.thompson@linaro.org>
Subject: [PATCH v7 2/3] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <f1a6413b6ad47bc380a186dbe6dab390c05a491d.1506878301.git.meghana.madhyastha@gmail.com>
References: <cover.1506878301.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506878301.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to drm_of_find_backlight
and move it into drm_of.c from tinydrm-helpers.c. This is
because other drivers in the drm subsystem might need to call
this function. In that case and otherwise, it is better from
an organizational point of view to move it into drm_of.c along
with the other _of.c functions.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v7:
-Move function declarations back to drm_of.h

 drivers/gpu/drm/drm_of.c                       | 45 ++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
 include/drm/drm_of.h                           |  7 ++++
 include/drm/tinydrm/tinydrm-helpers.h          |  1 -
 5 files changed, 54 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 8dafbdf..7417725 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -1,7 +1,9 @@
 #include <linux/component.h>
 #include <linux/export.h>
 #include <linux/list.h>
+#include <linux/backlight.h>
 #include <linux/of_graph.h>
+#include <drm/drm_of.h>
 #include <drm/drmP.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_crtc.h>
@@ -260,3 +262,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
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
index 104dd51..6e93311 100644
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
@@ -65,6 +66,12 @@ static inline int drm_of_find_panel_or_bridge(const struct device_node *np,
 {
 	return -EINVAL;
 }
+
+static inline struct backlight_device *
+drm_of_find_backlight(struct device *dev)
+{
+	return NULL;
+}
 #endif
 
 static inline int drm_of_encoder_active_endpoint_id(struct device_node *node,
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



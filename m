X-GM-THRID: 6470705412124442624
X-Received: by 10.101.80.140 with SMTP id r12mr580172pgp.32.1506578630307;
        Wed, 27 Sep 2017 23:03:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.123.23 with SMTP id w23ls926697pgc.24.gmail; Wed, 27 Sep
 2017 23:03:49 -0700 (PDT)
X-Received: by 10.99.175.29 with SMTP id w29mr53958pge.58.1506578629463;
        Wed, 27 Sep 2017 23:03:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506578629; cv=none;
        d=google.com; s=arc-20160816;
        b=LjLv+6rxKOZNwHe/SnNqzIPSBKuJFPpMtkfhNTqajGdkMCyQXP3pEIZvHBCT4E/VjP
         r+nhQbQNrIISVEQfha7+qDBLFJLn/WlRmuHB0uPRld7ezS3Gogv8swSvKitswYjD5cmu
         o9Zv3Taggw1ViyT3IdQb/Qubk5tJ1uTwaOrqP5zFrc9DhoFRez6BGGonv8PzNMf4KQlC
         +kFK4CyhpEnjFYhksYU9TpD8JYi/JrxQzusuDSS4FHE5KCHjAAU146wMNrpiz6J1ckft
         VYQaRI1GZ3wuwFlggvN5lqlvAlmyx0Q+rQCi0xrDTTrlgciakmOH8mCYD6ZsKmM5BmN3
         853g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=XGKC1rBwHHRUAwi0kuYLYOnvh0wE6mGmWMgKVPhjy70=;
        b=qcM69L/xaS0Ie9zOdqok5ulxTKbersFCxmys9IsqC8DP+R3wUlfJIzxa5EoOPGwg1f
         yVyUW2fCVzBWo7h0/mraT1whTZwzfRafQbT8Lh7yV7rPXwbWic08YHCGI6oahvV2MPIp
         PRexXptQe+Y/w9JGwaW6+B4JqssoXcElYDTrZHBk17YukxXPctvcche6dYg8WazpKYAo
         zG+X7JAlW7BWCXjrcXYMXJ4QhW/rJOIb+37WwtibAZx5U9Fn3IBdtzEfY9LODu+ldr7w
         U7CbYX83DILsUZWpja8wXGyKJWDHBAhBLE+x/ZpLLBEtvyMsNjA9aMw2aXP4FtSQ9DKe
         Jb1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=be9PpT5S;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 88si101968pfm.20.2017.09.27.23.03.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 23:03:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=be9PpT5S;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id u136so785709pgc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 23:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XGKC1rBwHHRUAwi0kuYLYOnvh0wE6mGmWMgKVPhjy70=;
        b=be9PpT5SV8Q7Ywt4HWcvynQ7CZtdmBtpszS39LH0pv+gCPLw0JffmeVkLiAcrTvKyY
         GpujrDFZIFwyFDbk4gGVxGDV55fNX/kW5aGrMoyO42ibOajqnTDkr3bga1r4Edsb0rVb
         P5y/Q8knoku14G4JAuRwkDPuJzOS94/35X5S2Ajj42dw9WJJZdQhzhfJsAkpB6JaAp1u
         XCG0OkvEjNLIOezJj4aFB1Di/gHH/r4hejs3h5g/nGz5PFLPNY5KgV46npTTkadnArDS
         WqHg3B4VEXYoJIfhiFUJoF/QTeKbRS1GkieCcWbSgQ1qmOEd5Zap/UeHBsGeyZwJkfQX
         16EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XGKC1rBwHHRUAwi0kuYLYOnvh0wE6mGmWMgKVPhjy70=;
        b=qBes0QErygXEafvReJ6kl+g0jGlOyiQa/Paii77AIGwO8sdsk+L5yPNN5b1F3F0dGR
         p10678d0PpCLfXmU5bRBht1YCbWqZkKxbWGovaTPe/Jvw1y2dqpSiQ7hrLgwUk4nP3UZ
         3iOldXm/btVzbPHSrufdp9uie44O18PaQtSy+TnKXCS/gOAi/dXCTXj2FzwECxZMX6e4
         xniMwi10Z3xJ/cVBHVvogyMR+OlS/EJf/FimjHazVrcsXwtm4dRwNRsDxW90VK5tN3/r
         M+UaYvl+ekWZlvcBxBV84gVpGChS6kR23DXdJp7UzmTxRc6cuBHTxZa74NAATNJwMPTW
         ncyQ==
X-Gm-Message-State: AHPjjUhlceyvkYipW5jFwoUTqLJrGEmoF7Q/3bIPNQoysGV5NEsG8utc
	NXzT60hir3uwtqaHyeeC3XU=
X-Google-Smtp-Source: AOwi7QBWDXoc0Q5wNMlU4+ldsMh6TSDh0WpkARR1xOIWG1AMd/vNjnBbntOeXt+z3suJuZ32W8oEGg==
X-Received: by 10.101.69.8 with SMTP id n8mr3297198pgq.167.1506578629185;
        Wed, 27 Sep 2017 23:03:49 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id 133sm1171489pfy.2.2017.09.27.23.03.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 23:03:48 -0700 (PDT)
Date: Thu, 28 Sep 2017 11:33:42 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 1/3] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <8f0715fd6a47362e520895034b1f9b8d09586cd7.1506578051.git.meghana.madhyastha@gmail.com>
References: <cover.1506578051.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506578051.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to drm_of_find_backlight
and move it into drm_of.c from tinydrm-helpers.c. This is
because other drivers in the drm subsystem might need to call
this function. In that case and otherwise, it is better from
an organizational point of view to move it into drm_of.c along
with the other _of.c functions.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v2:
-Added note about it being the callers responsibility to call
put_device.

 drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
 include/drm/drm_of.h                           |  1 +
 include/drm/tinydrm/tinydrm-helpers.h          |  1 -
 4 files changed, 45 insertions(+), 41 deletions(-)

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



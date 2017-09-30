X-GM-THRID: 6470705412124442624
X-Received: by 10.99.94.194 with SMTP id s185mr1020426pgb.63.1506791549571;
        Sat, 30 Sep 2017 10:12:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.229.130 with SMTP id az2ls1027232plb.2.gmail; Sat, 30 Sep
 2017 10:12:28 -0700 (PDT)
X-Received: by 10.99.105.196 with SMTP id e187mr925102pgc.119.1506791548535;
        Sat, 30 Sep 2017 10:12:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506791548; cv=none;
        d=google.com; s=arc-20160816;
        b=HWpE8OR4knpmWEuU6GEKiXhhre6WAM6uASY20UO9I70wtVtdBpTf4xBWoGuaj+Cs5Y
         CFrjIgme43hE8ugtedc9Bh3KZTll+IJIPZWvVuhXXId1dZATE1GkRLZ+qUbWruU7bAZq
         zKiM0kJqRR2JXRPVYWZwOGWPqhRqxY64WzvtODYlsoSbcDnosGkxuLf6lrnTqrQhVLzl
         /IZJT28yKM+5vBd7wE9OnA/ogKv9xIgEzmpU3R+xfzH6ZB6skx42/WoeKsvLGN8dCbur
         +XToxitU+f6ALdWBM7Qk9UfE9RPs7zBNcK+/6TZsBUY8Wx1oQ7Q/IfVoKlBERknOQ5Gb
         KH7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=rAdKNWnwu+WrTLCH5WbtVPfev10X2omB6N0fPB2PQpc=;
        b=s8kjWIALJ+a6Vh5kgVtv8qGYGQMtGzx7aefLqvsE/0ZIH/a09XFeaSVLI6MT9f3RJK
         mYQQPiZPINwfFq3GFthLCbUd8N1fCy2yHnTU73DjuGY2k2yzA6XFyQhC1wIPOc1dKs7r
         +lzTJ/Ir8KyzaTZ2GuGVwrk+9TskzI2cKWJ4nrdlrOknWPVcO7BgDRc2Sj2TChbwuUIA
         gchwUwnXfa/A0UxjUy5+buFy70Oz+0i1ThjArIe94hqLbgoBZ4wEyQa57JpuEd6JKgvS
         g+DTbMzp2vUoi296ipltnGle1XHHIcEB7v5M2xpqPHCyqy7S0KB4rDfJuou1YKD1s4bU
         mPdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RyBEkG+i;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id z74si730481pfj.21.2017.09.30.10.12.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 10:12:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RyBEkG+i;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id u27so1671653pgn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 10:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rAdKNWnwu+WrTLCH5WbtVPfev10X2omB6N0fPB2PQpc=;
        b=RyBEkG+inqiDEcs5qYfem+UvbSeaFffSHl5LrAl5IDdU2flAou9pQn2mY5+Ob9F7AD
         vhHwc5DsQrK1eNa4CX/0+emo7VYvuaq6vzSjzVFeP3yuudA0LfmyYMCtVXEKgCw9Y0S4
         o1t3y9BqlcKU83Elt6rtkIyJl+51uCbme7skI/mOZRzXdmCrSgCrjJ9+L/AARiI1q0GN
         44XZ30A7Q0J42dswBCZ6jQ5pr4xoFpzhd5DuXKNiI/FkQu3WfQvmKOY2U/OSYWlRzGLz
         z8gFj6OHHMIrLwMSjYPfsC5riJImzzwNXpM3TnXiLPfhnyJwBc9OpEQp8jED8rqG/qNS
         Bujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rAdKNWnwu+WrTLCH5WbtVPfev10X2omB6N0fPB2PQpc=;
        b=PZINpeZl3/z4p7KEar6n/FbEdPvtIgkNQE9WdHW8GisGHPWwURCaJZW7DB3p2Adb0L
         jgu03VrshnKkXyt7T+Zvn47fYPtIEPd+MvQmafioXLLEsUnuNtS70bnyq+0wkGWmlT7h
         OujHC/2NThGQSJPo7nopP8PFR9wfNJnPbWqTnmwDsTvNKw6l0sDG2dxBYgouZMFY2IG7
         oyzGVFbDlipC7kpmx+vazyiQF0Qxp9vNYCeEuvY4G3CIpfVIWge16BnJyS952/lShj74
         DlmlKLrEUFcg0Ak1jGG95wuT92oBAKvccf/z7hYXjUlJleotZu4XIsQDTI85a9iSKirJ
         43VQ==
X-Gm-Message-State: AMCzsaWePnieKLbzsnZT9Sr+e5Z42sbHXRXQLHThBhuUMRla1IPZ32/a
	YbpUVpcqzfu0LT4YYhXGSdc=
X-Google-Smtp-Source: AOwi7QCK9nFvIv+kpl6pnlc0FRb8R2pFdVPHXTHS1IhKghqIeyQyPDFTiKy9sEgzU7pihxybfmKgEw==
X-Received: by 10.84.245.137 with SMTP id j9mr3137835pll.423.1506791548255;
        Sat, 30 Sep 2017 10:12:28 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id p70sm12346375pfk.130.2017.09.30.10.12.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 10:12:27 -0700 (PDT)
Date: Sat, 30 Sep 2017 22:42:20 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v6 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <bfad07c542b9f5c892c6beddc4ecc2c3297f1f78.1506786158.git.meghana.madhyastha@gmail.com>
References: <cover.1506786158.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506786158.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Rename tinydrm_of_find_backlight to drm_of_find_backlight
and move it into drm_of.c from tinydrm-helpers.c. This is
because other drivers in the drm subsystem might need to call
this function. In that case and otherwise, it is better from
an organizational point of view to move it into drm_of.c along
with the other _of.c functions.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v6:
-Move function declarations to linux/backlight.h to resolve
 module dependency issues.

 drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
 drivers/gpu/drm/tinydrm/mi0283qt.c             |  2 +-
 include/drm/tinydrm/tinydrm-helpers.h          |  1 -
 include/linux/backlight.h                      | 11 +++++++
 5 files changed, 56 insertions(+), 42 deletions(-)

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
index 7e5bb7d..682b4db 100644
--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
@@ -189,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
 	if (IS_ERR(mipi->regulator))
 		return PTR_ERR(mipi->regulator);
 
-	mipi->backlight = tinydrm_of_find_backlight(dev);
+	mipi->backlight = drm_of_find_backlight(dev);
 	if (IS_ERR(mipi->backlight))
 		return PTR_ERR(mipi->backlight);
 
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
 
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index 5f2fd61..47a095e 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -172,4 +172,15 @@ of_find_backlight_by_node(struct device_node *node)
 }
 #endif
 
+#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
+struct backlight_device *
+drm_of_find_backlight(struct device *dev);
+#else
+static inline struct backlight_device *
+drm_of_find_backlight(struct device *dev)
+{
+	return NULL;
+}
+#endif
+
 #endif
-- 
2.7.4



X-GM-THRID: 6475592721521180672
X-Received: by 10.176.73.44 with SMTP id z41mr4099139uac.43.1508587001752;
        Sat, 21 Oct 2017 04:56:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.1.248 with SMTP id 111ls3072916ual.16.gmail; Sat, 21 Oct
 2017 04:56:40 -0700 (PDT)
X-Received: by 10.31.146.65 with SMTP id u62mr3731470vkd.84.1508587000896;
        Sat, 21 Oct 2017 04:56:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508587000; cv=none;
        d=google.com; s=arc-20160816;
        b=hi5UJTUsqr277IVtq+Bar/zE7aPJmMtuAaS51ORnXRWiPy2aXu+AICKIl8/nEXdRim
         hEpac2R31RIWZjweSTUS+DzO38Y5q1OE1Z0gElRo/eOIWoywQzYV4yArTMyNai5JpDaq
         M9//DkPyKs6YiofelzocZeYX8C0hHG8YwwP1zrW6kVkrNEfebdXCBuSFqomx5CT0vKYu
         fgLx1u4MQoJarz/Z9fJQ3tUi0FBRgKbxO2tnWQwkB0jN3K9IS/X0+5xpBEkBkLWTp1yK
         VCnagCMFsLUc4PklU5++0NBMXkMB2ZC61ki5QbekM1Mj4Vuyw5XV0Q3TNH+8hES8Z7RH
         S1TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=GXi6EzSaWYl7PXhO66b2BWxiuGet6je6GZ55062boNo=;
        b=CsaPxwn5ZVbOt39VkP45Kg+wdzMVUt5psw5/upS9cv+3UX54u33FXK5ecE1LTDb8Tx
         ChdeEyiiL8mFOu9MF2vtHLFh/YY8bvyrv5cvBMba7+GcTAoUeGhTW1REtAXDZ3d1tUUB
         RL4JYNx137hcV+tKfOwj7RQtgOOn1/TGTovv6qUhEb1WaozORJgCmuVWFisX62pisok3
         av26u8w8WxPbTmkBnm5n8cGRdCauMYHKIxkV5tYonxgmMcMhwkMu8HqNFnsVZXKYIvDu
         xmKAwnFQpKQq6hz+pQF/t1fu24qZei6EDJgQe+e1DWSssuSpmQV2VYoswxxA9EZ06teL
         oGkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f5X6ZqT5;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id w196si139347vkd.2.2017.10.21.04.56.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 04:56:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f5X6ZqT5;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id j3so8518750pga.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Oct 2017 04:56:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GXi6EzSaWYl7PXhO66b2BWxiuGet6je6GZ55062boNo=;
        b=f5X6ZqT5zAHTB0/g4grwPSZeXnHg49dbwg5Voj3c2dIJQqLO7DwCBuLoj/fC+usAn2
         XqscgCELMK2GrKxByxL8axDNYUyhAVgkkHamXC8t27TgB7Bl0YUzGnXedJURCo2V4inl
         K2zswTIqzHO7GtZp1JTA435+QDEmGPKvIuOYd937CVXeMnipAXNv2PXhG87xOiiqrb1a
         tP6Q1YnVYlc4zKFteQzX0EKXo3SQZ/niNtT63dMrtuUPMDv6aaInFJmRoMrJWIucXoKb
         pMZGrgVy+4ZYyyCmtl3yp6kWaJgoDeOH2O2o/uw7pXZLsXZ/iuegm7msZ642at70Gp1F
         gcNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GXi6EzSaWYl7PXhO66b2BWxiuGet6je6GZ55062boNo=;
        b=RKDHIcFNvB9m49bEZ8TFkCF31QdbgL/+VX9He32a16sNswYvnKv53EvELX87GUOSF9
         YPgWeKG7++rckcq4V/E7/k/7yMdkub7EwHQ7EXd2z3TLCUSjx60xBm2epn8B9toCbii7
         XfsXkIryNMfxqKPyZQhgF3/cTVlIonh0eboVQYuJmm1saIcBvEaxMYMfisDpletGZ3mz
         Joezf2AIqFvwUxw2vfcj0U0aoQdeBLZXXKjLmGMkM8kFE9i+iIfpU2K9p0R9cGSNnPoS
         vQAqkFnOv2dFe5kR12vq8e5ZQ0Ii5lIh3gD5txrlL05EIChHnTR+4ZcJpxT6B2nEJGlM
         1VCw==
X-Gm-Message-State: AMCzsaWRmCOaBoXDtYxAYg/7tMy2VUEzz4JvW//KtYGvw04SCEZcBYAG
	LslsYf+aLKOZpQxHUt3VxNw=
X-Google-Smtp-Source: ABhQp+S+jX/FwlTmLDigTwW+V8XQHjl5juwmbQKyjiWWWaCQROU9sW5ulbniDYd/WmDLrCZilPsVOQ==
X-Received: by 10.159.249.75 with SMTP id h11mr2218076pls.192.1508586999998;
        Sat, 21 Oct 2017 04:56:39 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.166.123])
        by smtp.gmail.com with ESMTPSA id 19sm5456909pfj.154.2017.10.21.04.56.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 04:56:39 -0700 (PDT)
Date: Sat, 21 Oct 2017 17:26:33 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v14 1/3] drm/tinydrm: Move helper functions from
 tinydrm-helpers to backlight.h
Message-ID: <203e216d74645b795687a29786c97209d1785167.1508586429.git.meghana.madhyastha@gmail.com>
References: <cover.1508586429.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508586429.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the helper functions enable_backlight and disable_backlight
from tinydrm-helpers.c to backlight.h as static inline functions so
that they can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v14:
 - None

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 55 --------------------------
 drivers/gpu/drm/tinydrm/mipi-dbi.c             |  5 ++-
 include/drm/tinydrm/tinydrm-helpers.h          |  2 -
 include/linux/backlight.h                      | 30 ++++++++++++++
 4 files changed, 33 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
index bd6cce0..a42dee6 100644
--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
@@ -276,61 +276,6 @@ struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
 }
 EXPORT_SYMBOL(tinydrm_of_find_backlight);
 
-/**
- * tinydrm_enable_backlight - Enable backlight helper
- * @backlight: Backlight device
- *
- * Returns:
- * Zero on success, negative error code on failure.
- */
-int tinydrm_enable_backlight(struct backlight_device *backlight)
-{
-	unsigned int old_state;
-	int ret;
-
-	if (!backlight)
-		return 0;
-
-	old_state = backlight->props.state;
-	backlight->props.state &= ~BL_CORE_FBBLANK;
-	DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
-		      backlight->props.state);
-
-	ret = backlight_update_status(backlight);
-	if (ret)
-		DRM_ERROR("Failed to enable backlight %d\n", ret);
-
-	return ret;
-}
-EXPORT_SYMBOL(tinydrm_enable_backlight);
-
-/**
- * tinydrm_disable_backlight - Disable backlight helper
- * @backlight: Backlight device
- *
- * Returns:
- * Zero on success, negative error code on failure.
- */
-int tinydrm_disable_backlight(struct backlight_device *backlight)
-{
-	unsigned int old_state;
-	int ret;
-
-	if (!backlight)
-		return 0;
-
-	old_state = backlight->props.state;
-	backlight->props.state |= BL_CORE_FBBLANK;
-	DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
-		      backlight->props.state);
-	ret = backlight_update_status(backlight);
-	if (ret)
-		DRM_ERROR("Failed to disable backlight %d\n", ret);
-
-	return ret;
-}
-EXPORT_SYMBOL(tinydrm_disable_backlight);
-
 #if IS_ENABLED(CONFIG_SPI)
 
 /**
diff --git a/drivers/gpu/drm/tinydrm/mipi-dbi.c b/drivers/gpu/drm/tinydrm/mipi-dbi.c
index d43e992..2561549 100644
--- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
+++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
@@ -12,6 +12,7 @@
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/tinydrm/mipi-dbi.h>
 #include <drm/tinydrm/tinydrm-helpers.h>
+#include <linux/backlight.h>
 #include <linux/debugfs.h>
 #include <linux/dma-buf.h>
 #include <linux/gpio/consumer.h>
@@ -280,7 +281,7 @@ void mipi_dbi_pipe_enable(struct drm_simple_display_pipe *pipe,
 	if (fb)
 		fb->funcs->dirty(fb, NULL, 0, 0, NULL, 0);
 
-	tinydrm_enable_backlight(mipi->backlight);
+	backlight_enable(mipi->backlight);
 }
 EXPORT_SYMBOL(mipi_dbi_pipe_enable);
 
@@ -319,7 +320,7 @@ void mipi_dbi_pipe_disable(struct drm_simple_display_pipe *pipe)
 	mipi->enabled = false;
 
 	if (mipi->backlight)
-		tinydrm_disable_backlight(mipi->backlight);
+		backlight_disable(mipi->backlight);
 	else
 		mipi_dbi_blank(mipi);
 }
diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
index d554ded..f54fae0 100644
--- a/include/drm/tinydrm/tinydrm-helpers.h
+++ b/include/drm/tinydrm/tinydrm-helpers.h
@@ -47,8 +47,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
 			       struct drm_clip_rect *clip);
 
 struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
-int tinydrm_enable_backlight(struct backlight_device *backlight);
-int tinydrm_disable_backlight(struct backlight_device *backlight);
 
 size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
 bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index 5f2fd61..b88fabb 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -129,6 +129,36 @@ static inline int backlight_update_status(struct backlight_device *bd)
 	return ret;
 }
 
+/**
+ * backlight_enable - Enable backlight
+ * @bd: the backlight device to enable
+ */
+static inline int backlight_enable(struct backlight_device *bd)
+{
+	if (!bd)
+		return 0;
+
+	bd->props.power = FB_BLANK_UNBLANK;
+	bd->props.state &= ~BL_CORE_FBBLANK;
+
+	return backlight_update_status(bd);
+}
+
+/**
+ * backlight_disable - Disable backlight
+ * @bd: the backlight device to disable
+ */
+static inline int backlight_disable(struct backlight_device *bd)
+{
+	if (!bd)
+		return 0;
+
+	bd->props.power = FB_BLANK_POWERDOWN;
+	bd->props.state |= BL_CORE_FBBLANK;
+
+	return backlight_update_status(bd);
+}
+
 extern struct backlight_device *backlight_device_register(const char *name,
 	struct device *dev, void *devdata, const struct backlight_ops *ops,
 	const struct backlight_properties *props);
-- 
2.7.4



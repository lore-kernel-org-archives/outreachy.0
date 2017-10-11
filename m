X-GM-THRID: 6475592721521180672
X-Received: by 10.99.121.71 with SMTP id u68mr111273pgc.93.1507716586538;
        Wed, 11 Oct 2017 03:09:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.102.70 with SMTP id a67ls271678pgc.20.gmail; Wed, 11 Oct
 2017 03:09:45 -0700 (PDT)
X-Received: by 10.101.75.78 with SMTP id k14mr1842181pgt.101.1507716585703;
        Wed, 11 Oct 2017 03:09:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507716585; cv=none;
        d=google.com; s=arc-20160816;
        b=NHUQ1VK8Q0B4IvWOEG+JmqonNRmxFTTI+E1z/dXGd8f+0g8B/tdRZrvZ7XF4DhqNpw
         v9ffjGEiSJnggZVHlk0EMaHVB1qJ4+h3OyIHToJ3RUq2Rvv0BLE9+FpoW/i9rNQ021Yb
         e8YNIJ3dxqYKzD/JfksNytHKVlyo7klAd1QOgotDoZb2kt4a3kq6s0ybwpLGan5JRSxn
         lqkx/TUMVWcQRAsNFzmj2qpwck/1eLhhCmuJQ0bRO56j/Jd/KNLWVcerRcqNsJmotAc5
         UfLcLvWtbbwdSvYOF2Uq+AQA3uvITPhXqsu9a62PwzduZbqv0VKA2iK+YLjDYc8IpeTO
         hMXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=iEYvVnKJ44V7opGTYXzQtfT9zb3TCHdw/qbI+RQxObo=;
        b=MGY1cGOl99GrUH0kXf1Bg0fY1+30JLTPldAGRNAGjtHFckDfJ1yQwctPHMWMHpGDFD
         4e86Gh1uRs0FhixFHp8Xb5zDwM2GLyPCt+1Ee2ZDIYhe42zxB/SAjpg+F1ZsolmyCPXm
         ZXXqy497oaT2MuZM/VPTDNfp2Q6eJoxaiwu0hIH8BTGp803JK3OkEuBPyc+wnfbMywWA
         y8dUa8vrUps2nWh3RcOpg+mcit2cOjXq7Va5NolZzBRRJkgVJ2W21iWB3xLTVf1mc3uI
         0/kpCvOFeTwU91hH7cWW1NtBcWQOM98fEA8sYDvaGHsa0jY1rfn3higyW2SqBWkyvAjB
         jY2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cvwD576z;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y12si1681682pfe.23.2017.10.11.03.09.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 03:09:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cvwD576z;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id h28so1933667pfh.5
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 03:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iEYvVnKJ44V7opGTYXzQtfT9zb3TCHdw/qbI+RQxObo=;
        b=cvwD576z3futWneU1Z+u6owYpdwKAGlbmfa6Ob/p8KQEZMlBw4zIVujw6svUMK5Uri
         rafB010hOybWgY+vJzn4FaYNi0FX5YASaaJA4ehXMg/tkgellY3m93QQBDOz8bLgyVHX
         iJ0OFdrBYxJRBgyNuC9Njl53ROVhBIfYWwmF7suER5bLF9ZgmdJ3ZDFbDR66ULN5FOGE
         Aep3GRLTDJqm8Fr8W5vUk9VMD5NMiFtg6insufoTwfgv1jvD1fVjjJB6pCXGd0vHcDU+
         xnQhOhEOexARDQnFbycNvDOO5RUzTuT/oAFV8Bmju5IpRnnotllGBdYkWHNdz94TtAlJ
         7Vzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iEYvVnKJ44V7opGTYXzQtfT9zb3TCHdw/qbI+RQxObo=;
        b=oUo6UJScEvfioT/mmFhz5tx8lKY8KNmxd7pE2YqFOVgrtxUkmV0oti78Z5KkCpgeI5
         emO2IGXCxxH67yPRVoQAMuriW4mr6wf1SEQDtuIwJLFgLfricickqc5LT+ij8xiJicv/
         c+S5drulJPTpkSBXkf6zdA7XXRJIsSIOibct8w27Zq+CnY+DISea7xsdFOFnjYeziWVM
         43BFab84SFGm6QDg8EkPBACdWubhaPnE8Kom9PI+61rj/Df7vV7p5I1NXyEAvoTiWHSi
         YGNWL4G7dX6CrvJTZEo8DnntS1kTgp7eGMSMM2jK59VYtCVrWcDKvAe4bLB9Tsx24s7e
         3vqA==
X-Gm-Message-State: AMCzsaXy6+WcJUuC0rQzYEXiQDRmQNFJ7FznIUV04xe5mUJfprS3LbYC
	LqELVLJyCiKIQ32cFW5PGzQ=
X-Google-Smtp-Source: AOwi7QAqJceS8z/da8CML0540DPLGGSmYAwrGlf7ljMP+InUtkDrLuenD2dZeLUJc439IE4xPUEODA==
X-Received: by 10.99.143.29 with SMTP id n29mr15220141pgd.121.1507716585440;
        Wed, 11 Oct 2017 03:09:45 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([14.139.155.24])
        by smtp.gmail.com with ESMTPSA id s86sm25594744pfi.74.2017.10.11.03.09.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 03:09:44 -0700 (PDT)
Date: Wed, 11 Oct 2017 15:39:39 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v8 1/3] drm/tinydrm: Move helper functions from
 tinydrm-helpers to backlight.h
Message-ID: <539cf63484dd0f6807ff0647af9d5d28bf5f3db7.1507714297.git.meghana.madhyastha@gmail.com>
References: <cover.1507714297.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507714297.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the helper functions enable_backlight and disable_backlight
from tinydrm-helpers.c to backlight.h as static inline functions so
that they can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v8:
-This patch was not present in the earlier versions.

 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 55 --------------------------
 drivers/gpu/drm/tinydrm/mipi-dbi.c             |  3 +-
 include/drm/tinydrm/tinydrm-helpers.h          |  2 -
 include/linux/backlight.h                      | 30 ++++++++++++++
 4 files changed, 32 insertions(+), 58 deletions(-)

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
index 2caeabc..46f0e80 100644
--- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
+++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
@@ -11,6 +11,7 @@
 
 #include <drm/tinydrm/mipi-dbi.h>
 #include <drm/tinydrm/tinydrm-helpers.h>
+#include <linux/backlight.h>
 #include <linux/debugfs.h>
 #include <linux/dma-buf.h>
 #include <linux/gpio/consumer.h>
@@ -279,7 +280,7 @@ void mipi_dbi_pipe_enable(struct drm_simple_display_pipe *pipe,
 	if (fb)
 		fb->funcs->dirty(fb, NULL, 0, 0, NULL, 0);
 
-	tinydrm_enable_backlight(mipi->backlight);
+	enable_backlight(mipi->backlight);
 }
 EXPORT_SYMBOL(mipi_dbi_pipe_enable);
 
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
index 5f2fd61..355e9f5 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -153,6 +153,36 @@ static inline void * bl_get_data(struct backlight_device *bl_dev)
 	return dev_get_drvdata(&bl_dev->dev);
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
 struct generic_bl_info {
 	const char *name;
 	int max_intensity;
-- 
2.7.4



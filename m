X-GM-THRID: 6475592721521180672
X-Received: by 10.84.179.65 with SMTP id a59mr317873plc.60.1507788595942;
        Wed, 11 Oct 2017 23:09:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.234.137 with SMTP id n9ls927853plk.15.gmail; Wed, 11 Oct
 2017 23:09:55 -0700 (PDT)
X-Received: by 10.84.236.5 with SMTP id q5mr325898plk.17.1507788595178;
        Wed, 11 Oct 2017 23:09:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507788595; cv=none;
        d=google.com; s=arc-20160816;
        b=LbsZyVKHOBo6EAsXM9qCBxXhoy0+Dt8pCk28mGZ3oGSP/TYarFE6TRNA11BQbmza4I
         yG7jjjxSjirABFYTwTp9JeiD8s8wCpuwyNtTVQfrnLH3aLA17LF5df54Q4jwZ6hrLZTX
         InEnktMJ02bz94ngKNi4bXAIZpVaWt2Pb4jbg2RzF9qI57VkAc3aM/eIXnU0IVlQdW6n
         A7RIM9Gj91ruyT22ZI4XVh53Y/vhfQ3ZDAdDq6mgsKJ5DGImUEccbOdbSTFSkWzacxAQ
         B7W06K1rbK1NbpRWDhIGsiuy1MYWctANJJ2fiS3tkghJ/uVewzE5mYj8KA7FiPf8LEuY
         6hBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=kJullW0DI5RfceaiPkTdtNmdQ5+54At2yY0ZhdrwiAY=;
        b=LxFfCfOu7OjCnp+Wi2tfvfuR290NPxmzyE87Fy8BFTXc3GDK/eV/JeOPKyvepm9pJa
         UXqt06Qm6aSJqlwqqT9TvFB7WTNi9aZF+uHWS6FVsWhU0Fi1Q9n7KEUYASNQ33GZ3gGS
         XGHTOx8qlKNscaYpCyxlEF0ZnpI8QkPHmQvFgD7789ujUw3lzgGCkP25DuqsGAMqFVgs
         QeBmsxHf0m7IbjGACfUG7k01CT4ldvSGUw2Zamb+iEO2FRAFRtLZ1VnAHxMT59723L6f
         D+Z+wF0q9ZHsCTQWN6kAMHEzusTyHiq+/fzvA+qVyhhMAhWadVHo7SHZg/7Lx4JYM/fx
         FlqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fZ3XBuHR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id b65si728734pfc.13.2017.10.11.23.09.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 23:09:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fZ3XBuHR;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i23so4790117pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 23:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kJullW0DI5RfceaiPkTdtNmdQ5+54At2yY0ZhdrwiAY=;
        b=fZ3XBuHRwDC7ZV5B2zHBAZAsvA8z2kkk2hsKPp9AL3OelKVT+hEKS6GCKlnvVAbs3E
         H3JW44QTsjmkum12PJArf1FUdAICpbJb0iwHw1mO0jF/vrkoby9SZCtY0rTZUdmcc7pC
         Pu8vWyTMaQsmS5WfjrYn+qeEYHBdjLpuZuAIeUpvgohm/ctQvrmtByZhdjGmB9uLGG2c
         dMFnYZF9QPRnwMF9vTZbvFPgpCY2L+rNyeFYWIRUImWU7xyM1j/e7mGtuoXaZSXMUtB8
         4s1/UPrmNoqMDtAundiFtn5chw/iJjzysn5SHfRhr4IXjrFXHRMQyJFoabXb08WTA0pm
         u+dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kJullW0DI5RfceaiPkTdtNmdQ5+54At2yY0ZhdrwiAY=;
        b=ISFwmKoL9FH0YOO2K8zcKCewpW6rtqRXJoVxbY+iLBTkRVloNC5o+L5cBQ342Ynw9c
         Egz8R62K6WOq8ExoLE7TeDDIMO5sB4695dhYzyLMAstH5gYA7qrjMQ8WsX6hkBM4uFEU
         Fl/MUXdimPMlkblk6OxiGkmZzRsGF0/gYk+AVbtTTQHCxw5AFosiA6+aV8kCVqfRej4Y
         QEK3J7YRzz2dQ6oVukSnpyKYdLvkT+eDM1eulVWSGXFAbqmZz63JhY5qOcqbZFZB1mR7
         //m8nGeZBpgYPQQwKBetmTiJZcQZPvLIA9hGtGntbQpoi8eutdZXgdAZFJg8AoJ8jyM9
         ceuw==
X-Gm-Message-State: AMCzsaVUxgLkR1B1VWa6LNJYRsSANA0Np5MvCNHvoGT/SGDuQJn+1Bw+
	FtYh1NpG6WfBxBjkBbF40VzcNnHB
X-Google-Smtp-Source: AOwi7QDOgkfNz+8LNI4JcfhkdKRAZ8HgHmz8ivDc24QErUDvOqC1n0T/vyg6GCiwNMefrqQaawWY1A==
X-Received: by 10.159.216.146 with SMTP id s18mr1228237plp.451.1507788594929;
        Wed, 11 Oct 2017 23:09:54 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([111.93.157.115])
        by smtp.gmail.com with ESMTPSA id t81sm6541791pfg.187.2017.10.11.23.09.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 23:09:54 -0700 (PDT)
Date: Thu, 12 Oct 2017 11:39:39 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v9 1/3] drm/tinydrm: Move helper functions from
 tinydrm-helpers to backlight.h
Message-ID: <539cf63484dd0f6807ff0647af9d5d28bf5f3db7.1507788241.git.meghana.madhyastha@gmail.com>
References: <cover.1507788241.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507788241.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the helper functions enable_backlight and disable_backlight
from tinydrm-helpers.c to backlight.h as static inline functions so
that they can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v9:
-None

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



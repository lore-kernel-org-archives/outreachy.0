X-GM-THRID: 6475592721521180672
X-Received: by 10.84.211.39 with SMTP id b36mr384555pli.13.1507800227112;
        Thu, 12 Oct 2017 02:23:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.49.84 with SMTP id x81ls926145pgx.23.gmail; Thu, 12 Oct
 2017 02:23:46 -0700 (PDT)
X-Received: by 10.99.43.145 with SMTP id r139mr404021pgr.164.1507800226225;
        Thu, 12 Oct 2017 02:23:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507800226; cv=none;
        d=google.com; s=arc-20160816;
        b=V2niZRtjBtm+7HZt8oOdyukqkx0ko/+GKxAYZwCZKaoiYheXU5UxITR+5/I+00e1YL
         ByIKElTwX3tgGdWZaSDTCpuwJ9x5aMYI+Yd2cW0Q6sjzU5TJLPRMRgeG2L1ab6Pqg7sL
         ze8Ua9NfixOFDxDNCIlWCw+Hhpc/vBd0FpTbN0kOW6dXz98LCChiIZEtp8gmUfjIg2mQ
         6OYu3fY2ReAVXKjpqmWIxd5qOhdeLHkEyzFai7cnEKdbJQ/+/XHrhhMoP1vMQXySKrd0
         qTgfQspMRIDlu9zqmfxUeZ7IoFSM7wlreAHw+BnO4Ae4wmaK/fiewRZRo3VlXpioUMoF
         Nocg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=g8JYjX6qhCNmsQ8O2Td7xTnd4giF0Gt4N/ZbrYWfdxM=;
        b=BdAu0pYAmQCTZ4bKx0ExOOuQDCCz1zhRoDxuj1R/c690A0+R480k0jw9zHm19XeqDQ
         Fxls3baw8JxeLmzcui8/7L0H6gf7r7Rci8xMEKHjl/MJEFoybU2hAt8o5cy774DYJh75
         fiP/fQIo4sQ/P8du30j/O684MYTfDCi9bqQ+koK6hWL6rdWHFZcyCI4WEZ6wSpsgIHhw
         3WHXnGSeWqsJyJjJ44OWL4JBCNa1WPqsK6t/C53cN36mY4AYpsD8pUGEA3MoWm441R+q
         REaq1oa6HeRAmOc1jQepEEyxwSGLoDSCax6x1EYN3zAc0LAAV5/mVWJ2tLzHc9QF5N+A
         6fOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XVFBQ5FJ;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id u89si1704087pfi.27.2017.10.12.02.23.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:23:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XVFBQ5FJ;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id b79so4038211pfk.5
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 02:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=g8JYjX6qhCNmsQ8O2Td7xTnd4giF0Gt4N/ZbrYWfdxM=;
        b=XVFBQ5FJBqpgCU5reHdeVGgawfXGAx+4wGlosUyfN8FME61yaMaD0X1mU663Gdz4xF
         DmWMLwp8mN2m+CARYh6ZOVyp/txXF6bceQp1g/pN10fdOaAn6BxP70pyJ/6C77gVKUNh
         /Hbdn1cwizAwIVE+KLhd97aVVzmTXyYcgwMIIXpn0gUVQ6O+toe8VE/9XuuPoGc0yQmi
         FFBn0VEoKIYSRWq0dXgplZz1H50fFYD19KsWTpCtDWbMY07Dml5IHL8bCIgbWPAFwBRy
         MmhcqRrpd/nBuOKzyrn2EI65Tyn1KDn5A4Eml32CCX1ecJ7y+h9tew+P4agOkj9VN1ZJ
         y08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=g8JYjX6qhCNmsQ8O2Td7xTnd4giF0Gt4N/ZbrYWfdxM=;
        b=qq8p+a3/KP680zOnFe+vK5AprlvAhnO45r5KW4dopo2AkqrhID2UfeHhPNpbrPq5sG
         a3M++hBBi/+5785sxrZ5vdaLTYBU3S3ek0A/bpwk1oFAPdqoVdvp+olhc0eiVFL1fFnf
         GXW7TPWHaedb+LutPOzu9t9LmCMMUZSaz2qdO9QBAq0FwO1JyUtDHYSHovWTb9wR6OwX
         FUcwS1omDr07izcHcliRFYMPqe6pE3bWePeE/n9xFtAEH/91RXKv6Q/CY+swnfVP10mT
         fbZ0TcazYCI892+yol/oCp/MFvDZJjmByVyKcS1tSzgI/XgbzhQluGEKmg2JXDSaGKmh
         SaPw==
X-Gm-Message-State: AMCzsaVdatFwq9NDcig1NHXWxD/DZh4wkzQn9batXzhOoW7zDAQdeOlA
	o29Qb57i+p+YB7vkIIbQjlo=
X-Google-Smtp-Source: AOwi7QDWujWcY+MsDi3U4Q4/9oR8sL/QJ+lbgnZgTpd9feLbjCcrxWNuhbzdAmefao9e49yS3DQkOw==
X-Received: by 10.98.185.10 with SMTP id z10mr1677840pfe.8.1507800225910;
        Thu, 12 Oct 2017 02:23:45 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([2405:204:5684:94d7:a890:2695:1239:4fc8])
        by smtp.gmail.com with ESMTPSA id s4sm24031444pgr.32.2017.10.12.02.23.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:23:45 -0700 (PDT)
Date: Thu, 12 Oct 2017 14:53:34 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v10 1/3] drm/tinydrm: Move helper functions from
 tinydrm-helpers to backlight.h
Message-ID: <814048b4764eef8a0d066e922c8672acb8df8547.1507799712.git.meghana.madhyastha@gmail.com>
References: <cover.1507799712.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507799712.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the helper functions enable_backlight and disable_backlight
from tinydrm-helpers.c to backlight.h as static inline functions so
that they can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v10:
-Change from enable_backlight to backlight_enable

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
index 2caeabc..9a7abd1 100644
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
+	backlight_enable(mipi->backlight);
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



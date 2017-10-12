X-GM-THRID: 6475592721521180672
X-Received: by 10.107.169.206 with SMTP id f75mr1808804ioj.119.1507822142452;
        Thu, 12 Oct 2017 08:29:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.192.3 with SMTP id u3ls1118071itf.9.gmail; Thu, 12 Oct 2017
 08:28:41 -0700 (PDT)
X-Received: by 10.107.58.198 with SMTP id h189mr1785472ioa.74.1507822121020;
        Thu, 12 Oct 2017 08:28:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507822120; cv=none;
        d=google.com; s=arc-20160816;
        b=ZUMX7MhyWkyYO1eQPfRxbDofMiqusdmFaQFrzdqErrwAtxZrxOlNIleuUIP/CACp33
         90V8KZFf7GSJsYTDQXXgA6MdJY5r7zwIklS5qa6Xbuq2tdZVbFqGAILe9jKbRKjENP5+
         NOj+E/JdgwgsH6OU6z7mEZwqBhj8OipdeeU1SwRHfs9oVR6nU6bZF37eI7K0tErrVoiR
         YKqzpOT1wZf5J4hfu7XAOUNzFeecNkKXnDQJ0RrUe1ZCag7zdDmEKMsbWGB/E0EWVwd6
         mfi5boseQGGLFIOeyg6M8Egi8AWcIrH27MOZheMLPWwgBtZgxlaMeUfSTO0IWPMQW7nb
         y5uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=85Qar6X7pFDrXd7f/efs49jE6piZ3oR69Duzs3VWcHk=;
        b=iwnJrP5Y0uQfAcdBI08TmgnWAASjoDEcwK6Ju2lxxnHlzwguvOY2ZR9XildKh4jJN5
         Nti70aG8l85TAXcCQucVpO9jDF2fntmf4ZLHqvExiVwT0TQ3jIXF+7V41gXwavUDo2kV
         D0xobLY10gMRapiBXE/1ezOViwqdawCB0uzMGz9Foz7fxB9kQWRhbjXTZhggXKdtrVgg
         1LfiFCIjxYoYn18VEHAsC75j3OZGzcVBSdSweoylsDHN8eBHN0fWSZNXW3Y/51qvODKs
         TtEN1vVX0hkRGgA7L5QFXSh88NmveacBmpG99d7OFnoMs+5HrPf5+KHhpFywI/rW1tpq
         9G3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7l9djnK;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id e85si105505iod.5.2017.10.12.08.28.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 08:28:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7l9djnK;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id m63so5308092pfk.7
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 08:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=85Qar6X7pFDrXd7f/efs49jE6piZ3oR69Duzs3VWcHk=;
        b=o7l9djnKYkF8AX/2QhXvaCPM9rLZFSFxNnV2UQizeLJiEaZ5iiia3p5HsxlRm2Vx+6
         9KD53crSGjmNUD9RUkI08EBm3giigC3DroqZ6jLgLpb4yU7zcONvFFHlb0ZWwm1S7Dy1
         iD6VBRiFzzVNc2CKP+3iC3vZqLNrPBQfKxPSmQjKtI1g5raNeh2cXhWAOFdAqN4x5jpu
         kbUAs92b1xzozWflzs9uEru8Hxrww0Y6MhlUuk5nQfXuPFD70t37FbxtpFWfJXCCsTvz
         kwJ40bjmdcbNLDJp8JRqQnW71UAn/XVbzmwy35qKDIf6bY85NQsPhRtalBW0ryBZnZec
         Tcyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=85Qar6X7pFDrXd7f/efs49jE6piZ3oR69Duzs3VWcHk=;
        b=t3oOpZWKX2EexL58j/8EJgtpgI2FONuRmHOADkMItj9Lh84/vl43XW1W/KBxVq8meV
         aFhXociDS0ZQI11RU7hPaR1saCYYNLHHLIif6wK7QP1Cae0M8PiyinP43s7ADrks6cQy
         2mMpN9oAOJcPQGPvX38fGj7AkEw4JqwtfuuMQaYscNPoNEG3Z216Q57hWJHT+O9GpLJV
         2hc00/OyZp2ylh1wns0vob6yiHd2Vt7DdTkaUN2KNQjH+oaNfFkcZTYh2zyxeuOUsB/i
         7HiU5Z+WeTyhscgAZl9UJPyVMiSECVZTBV8Bib6LFIgPTjzUUeC8URWGEHuqfPy7bPm8
         PluQ==
X-Gm-Message-State: AMCzsaV41jGRGjDTMs7Ru2dyemWd32Svela5B67PC9reh6cdBJjhXFAT
	2aTpjlFPQ01sgy7CXPVWTJI=
X-Google-Smtp-Source: AOwi7QCyPAK2e85iaMXHfCiNGz+QIHdtADo9AMNrB54GyB92gXYhUnAUtH+67sfxb600yuRhVl5SMg==
X-Received: by 10.101.69.76 with SMTP id x12mr557270pgr.284.1507822119243;
        Thu, 12 Oct 2017 08:28:39 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.84.136])
        by smtp.gmail.com with ESMTPSA id s83sm17370223pfg.104.2017.10.12.08.28.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 08:28:38 -0700 (PDT)
Date: Thu, 12 Oct 2017 20:58:27 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v12 1/3] drm/tinydrm: Move helper functions from
 tinydrm-helpers to backlight.h
Message-ID: <b55490e9e10fe0b97e2a79c69015a171913c1c34.1507821742.git.meghana.madhyastha@gmail.com>
References: <cover.1507821742.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507821742.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the helper functions enable_backlight and disable_backlight
from tinydrm-helpers.c to backlight.h as static inline functions so
that they can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v12:
-None

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
index 2caeabc..71b416b 100644
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
 
@@ -318,7 +319,7 @@ void mipi_dbi_pipe_disable(struct drm_simple_display_pipe *pipe)
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



X-GM-THRID: 6475592721521180672
X-Received: by 10.101.76.15 with SMTP id u15mr422346pgq.14.1507801149909;
        Thu, 12 Oct 2017 02:39:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.164.225 with SMTP id l30ls1056950plg.8.gmail; Thu, 12 Oct
 2017 02:39:09 -0700 (PDT)
X-Received: by 10.101.64.204 with SMTP id u12mr414254pgp.43.1507801148950;
        Thu, 12 Oct 2017 02:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507801148; cv=none;
        d=google.com; s=arc-20160816;
        b=qO7l/wbHVOTqU/cqirL3UHxulx9HzCcQWn/I5zWh6X5xwGsSVFxMztwdwg29GFND8t
         Q8AvtavZQ2kg/wj24KbEppp17mfE1bF8RhAa0CmoZReLjwMT4js0iTosewrC9JLpi1xm
         QDo5PRAMyLUaGJS3ltLtEfBoeZ+eEkjhyF4ThgJoJdDqOkL7fdk/R+aj3ASjvVhoA2qH
         MpN/vlqPtctTd8P4p13Lnw0W5oCTtb/9L7n3GgsWpYBju/9cUtc7abW7u5SockhxIrfP
         cVS/46hVsogsA3LGCoIXqJDOTxRg72/fhOo7MMCvmfoChrJ2HRbKhPo2I/3lp6bt5Tzq
         ZLXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=UZ7rYDqo9aEFCFzS0V3RFUCqd2dRhcWgS5CRQgklEfU=;
        b=HC/E3OuwiXbKw5wpcDPanK/hfS0T3lrnatI4pwR9cwre0WSgufDaioVeggwLmQXOEZ
         AsnCAJCDcnMelHsBBElJAR3NMl/UPV0AZ+cRfK+z/WeD1gpVaYmbXK4Rm1lyDglJIsDa
         86JfLBB40BUs+lKI6p3lMAZLKgn6HVAa/tMvZjEzXRzACrVw8Una/sRgkuCfMb6ZiJgQ
         cRlu6iZE6vehEM7jpFltzYNaUb9LQ9JJYOuEVTmQrr2EaAT7nAz2suv7WVSgV64gH0Qu
         lMq534E7/EVcterybYforT9b7WBI3VitktruasmVH9xcDCMoLESG6jhwbe97drk2azSL
         +fVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rn/5I0ho;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id f15si2021plr.1.2017.10.12.02.39.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:39:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rn/5I0ho;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z80so5296723pff.4
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 02:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UZ7rYDqo9aEFCFzS0V3RFUCqd2dRhcWgS5CRQgklEfU=;
        b=rn/5I0hoKNgn6oHGxVEVj4GDyAykg58/8rdzs1cQnGl5pxYW+KSGGHqwVDSblf4QWu
         PyqPYSDAa9acqCxUxPriZbzLCHgGIaoSaDzVfmKmOHn5WYDeJsR73+VRzRn1gi95Nc2V
         8Ti1rL6AmpmVWTKKhUkca4yNCBLsCPyskq5J6FLpSq0OMi407UjM4NQ9EP5b7VfOOCI/
         davpYRLt50jgYJu27p1fjJ1PJAAC86DB/fwXOuUMaJjVqGB5p8zcVI0YhU7ARDMWmwEY
         QSSJMjWx36c5GS626A8ds3PqYI2x0oZKtse8kW0ZkYKolTk2/Iam8EQB4Ttu0gZVyXRZ
         LlAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UZ7rYDqo9aEFCFzS0V3RFUCqd2dRhcWgS5CRQgklEfU=;
        b=MvgBVo5whQj7WMiYMfMNWkxhVbhlxDCbWrGR9um+GIO9cnBVh/blOilvLh+NN93zAD
         wMjhBw2Fa2BnPMgY0eL0n+7wv3PSXO5yH5mlrEYNWyrP7lXjVWZE/ZapQEMzXowioL2H
         GIs28V8UiiH1ecPhmLz6H3/yMPR3l77nU9e5JHijcFhWoQYTWRktx6ft9peVemqYEzvT
         KI/u8cXJwbQFJ/t+GBgnB7FJDQNXCW8KBKGXQRiRZ9eOtZ6XDpyYJXjynygJYbkNWTRH
         +eF/yW8OpDmouSuO/2Mc0smKTshKPOCBtE0/1u1pWOKxHlz+pUBLhpUkivHroBhDsoSy
         nAbA==
X-Gm-Message-State: AMCzsaWRS+AwOmtE/xvbLxV29RlV5f6oQKMJRVTX+rncwKB5YQxWr5b0
	4JZHBiQYNPZyNzn5VaN2lE4=
X-Google-Smtp-Source: AOwi7QA5YYt34bMbaFZwKb2F+klWVBfUIukXBwMiA4n0wk+p30dmaTWqg5r6Y022tAewgSOMiecgxA==
X-Received: by 10.99.175.26 with SMTP id w26mr1657820pge.11.1507801148702;
        Thu, 12 Oct 2017 02:39:08 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([2405:204:5684:94d7:a890:2695:1239:4fc8])
        by smtp.gmail.com with ESMTPSA id g5sm4680667pgo.83.2017.10.12.02.39.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:39:07 -0700 (PDT)
Date: Thu, 12 Oct 2017 15:08:59 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v11 1/3] drm/tinydrm: Move helper functions from
 tinydrm-helpers to backlight.h
Message-ID: <b55490e9e10fe0b97e2a79c69015a171913c1c34.1507800970.git.meghana.madhyastha@gmail.com>
References: <cover.1507800970.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507800970.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the helper functions enable_backlight and disable_backlight
from tinydrm-helpers.c to backlight.h as static inline functions so
that they can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v11:
-Move over tinydrm_disable_backlight to backlight_disable in the caller
in mipi-dbi.c

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



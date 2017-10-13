X-GM-THRID: 6475592721521180672
X-Received: by 10.107.19.206 with SMTP id 75mr612851iot.25.1507891231024;
        Fri, 13 Oct 2017 03:40:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.211 with SMTP id l202ls111410ita.8.canary-gmail; Fri, 13
 Oct 2017 03:40:30 -0700 (PDT)
X-Received: by 10.107.63.130 with SMTP id m124mr635919ioa.43.1507891230329;
        Fri, 13 Oct 2017 03:40:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507891230; cv=none;
        d=google.com; s=arc-20160816;
        b=mRsKrEoOF8MJZAT4lYbIFnQwEtf5KQczrEQ9w0cm8pnIWhWn08fEMfUi5NnydErsMB
         e/sic0Qtc9ahYj8lcfUDhutf27esOFwi7UqWtXVX+Q0wAI7jDQ5Ppd88O631dBZ3d9Eu
         ha3A40OlOwHlMxYUcWHSMixi5d3RRBzaVaIT1QY/92kfZo98MwsRtMWP/1cmCWk4BnPX
         S3qpq5n/ZEGFTqWScUUB3YKt1VKr4Hy9D/HYQVDrWY+N4p8VNpYCU4jovPbRbwTF30Qs
         ulBDTvUy9PSZ5cmGkfhZhZJlQRl/eyUCyPPso3MSkn6cmqRITxo78TaatE5cLui8aiyj
         iQCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=vOoQfUDtWwBZnqevK7Mot40nGTaRl/OXRSP5MQG//6I=;
        b=dUuZPWr4fv6XpIyYzJcNxP2dMXT9WLctBtdJNxHO2MTkUtEFC1pD1NPQj/J/DSvx2d
         F2iL2AtbuFFar8T02XxHJBx1A8N4LIjagPLzZGMOwHZwAZnpzm+XVd9FdVpQOL3qzFNk
         B0fM9/1Bek92PhFcZMlYxjwOFZBYpnIpIT/kuWbJKiQ9N0E4ioZR8N38d7KgFQd6oPZ9
         aa5mnjUKDBarxaA/5mF2X6z9MD53g92x5Le4NDH5bgZzDPl8voj1MboeMDXa7c0Mb2GF
         JQEd3HfZ7cFALOjLP9/9K1UKvybJGUAIMHlausjNbfP2i2N7pMDyQVyMyfN9TRAuncCT
         8tcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NoaHrYWI;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id d125si124119itg.0.2017.10.13.03.40.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 03:40:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NoaHrYWI;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id 17so9576457pfn.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 03:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vOoQfUDtWwBZnqevK7Mot40nGTaRl/OXRSP5MQG//6I=;
        b=NoaHrYWIlqLcJgwkxBKdK9TLSLZOTb6bddtiqxYLvKfvxxzrxSe4zHt5FnpQklMa9A
         P85kmq6DiyHTeqNnmbSCKqfxQ12TeqKTTkfUIQmpAem7AkxHu6Ajnir5RGWFZI6W80jV
         5S6/Rze9WsMkdg3u6Skzpj/0lcNOVHn3XN/eCQoCnZpRLnTxbC4ohj2T+fa/7MxIS2a/
         a3yGVsEGItvHSpcNdKfe4Ly7GLgkvGiHQvmZelhpXiUDt4bf/tC6pCC0m6/DpaPWbX2q
         pmO4fDbDzp4fq5cMl8O5wK21KWaO2NKhAAHjiKw84/LejPpYytIWiAEgRWDrjke5bSUM
         n8cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vOoQfUDtWwBZnqevK7Mot40nGTaRl/OXRSP5MQG//6I=;
        b=HGunZBd1hPzK7lu8s0VyBreFk90YETqbBEiAT3tiWFYPEPTU0VTl3d/PO8trmFVDXE
         Ex3rlNEbegpjcDvblWyuCHd1lhRnzEHlnk8gkLZaoIuSD+4rWYYaRsfv39tjwPoyTxWW
         tOFvvIP2IL+IlQnAjSAPcYiRZIkNgENR/on7sz4IG1C8WbX+93DYbT/6JxzbPT6r/9ix
         Ckn0hYvnAKM0swri4htrxs9T5jwU8Us0o8ov5BOAh9e2pTu8LaSb84k4rQd+x7iG21Bl
         V0+xYjiLnl85jlFYqqIOScT3rZLYwcft2QhByI+vOWjR2Ibsik7dXvQEdWw4xdxvvvwG
         aiSA==
X-Gm-Message-State: AMCzsaXmlb5dGU7/fs1sXHWmGBGcxtaCNtboju+x9osA1xnRYS8MBpRx
	RpqO2pdL/janL71TUqQvEAb1qgNr
X-Google-Smtp-Source: AOwi7QBSeUNxxZ4o8spmJnAmF5jwuCO/Z8lm7sPxgnNYfJjrs0zRbW72lfa51iE8g4qEvavnYQzHQg==
X-Received: by 10.98.219.134 with SMTP id f128mr999244pfg.85.1507891229972;
        Fri, 13 Oct 2017 03:40:29 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.84.136])
        by smtp.gmail.com with ESMTPSA id e4sm1935390pfa.80.2017.10.13.03.40.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 03:40:29 -0700 (PDT)
Date: Fri, 13 Oct 2017 16:10:22 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v13 1/3] drm/tinydrm: Move helper functions from
 tinydrm-helpers to backlight.h
Message-ID: <203e216d74645b795687a29786c97209d1785167.1507890285.git.meghana.madhyastha@gmail.com>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507890285.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the helper functions enable_backlight and disable_backlight
from tinydrm-helpers.c to backlight.h as static inline functions so
that they can be used by other drivers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v13:
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



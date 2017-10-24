X-GM-THRID: 6480148992322699264
X-Received: by 10.107.146.132 with SMTP id u126mr12559512iod.129.1508854294285;
        Tue, 24 Oct 2017 07:11:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.178.205 with SMTP id b196ls67957iof.10.gmail; Tue, 24 Oct
 2017 07:11:33 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QevwPopUiiOHe+8aqzDdDOhq43NlveOxWI9DCIWOO4tWcwFq2mz5Be8L9Wzyf3gXsJsj1z
X-Received: by 10.107.104.8 with SMTP id d8mr12578987ioc.79.1508854293483;
        Tue, 24 Oct 2017 07:11:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854293; cv=none;
        d=google.com; s=arc-20160816;
        b=FDmnnjJZqaKOnGwVk4Iqtg6zv2GkwP+18vWkaWiMRRYqwTKLWEy1Pm9zZkjwximmcy
         tK57T9rVnwsn2bVMGP2wP9/E8AnuabjfV/EFfnvZMNMU0ZB4sg5HNxtXNX5GY581GXAW
         EFg5i2h9O9UkfqOpBj3R25is97CXEUJb0YVvXG7uEJFg+IFRSutEvorLm3NIkVugmyC+
         eN/62WuLcPe2vzNYCxjB6qlaRQLm0VmhJusL0iEmybLmOJl8/PG9VK+62BwtMIK6v4Yh
         frJhezXZjUbU64JdxUCAChk/Ftqj1rH7RcH4o99uOCTuTvEl3CICjRpnULPdsbB7kkUK
         bBmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=EaCj9PooPDSwz5+fjhTmM+pgZzZ/mJ4xDrq3+Sre0uw=;
        b=fhzxrnXVVB5JvXzFYjocjUHIUbPuRI8/SEpqWKby3iNddgFVvEg9wf+jIfnJ9LxCO7
         bt6A3ISfGn8EYNcme1X2kIufYIUbtPhw2nRpuEqhrSlSoCymXRyDPv5U/+43fz3ibUSC
         ydM23CiHGG3Fno8oGJ6tmKGyc9En7zGOcpXWqG0mrbePOWGKKePaKDCbWZnsaVuLhv2a
         FaDLYMrgskYaeQo3kIkH/bxNKO9El2WPxccmu7C1PD94PU8q6wz0/kzKmi0NMJ8qemN5
         o0m5poq2va2zTcQMDA1qkg+o4pCsNx2h8ru6g6JmRUfwpHbsll2iJfbLZkQxbAeFiZzK
         XeEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lALvv70r;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id l10si48223ioc.2.2017.10.24.07.11.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lALvv70r;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id s75so14619626pgs.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EaCj9PooPDSwz5+fjhTmM+pgZzZ/mJ4xDrq3+Sre0uw=;
        b=lALvv70r8T+dAblAC6DSpHl7vYQUmB7IP8/bHEscbnZqY6bdMuCtB+qLX7Lwx1TfSo
         nyWIsL3nYgWzJFXLd70dizZeoRJ6kXODe7HUuVKFrPCjM3Cxiu7apgrmbQ42TZ2XOk1K
         Q7jbYItx1e3cOiOeJWDSimCUcbst8b4b0zVjI5IqP8d6D+2p2fMOI5g/xb+8680cZBts
         8iucc7L5bnE2sqqh8iAUlXEYpZs3K9VWG9kMI0K6JdSmH0CyDG/zutiAeiKEXw8jGVKZ
         1JWjuvHRBdxzm+CZeMCSpZZkhwteLb6O6ULabwDu5Am/6iWGQP5KWuFJTmX+u5oz3Udc
         PENA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EaCj9PooPDSwz5+fjhTmM+pgZzZ/mJ4xDrq3+Sre0uw=;
        b=SApkNlN2h4wvcLxQeW5siV2lH/+PrP3b8DWZ+3eXxq9vV+VoGWPxecQGj9qrliRhsG
         wYOOKziNBMtZCQXMQ91xvX5clbbySH23iYfTkGb/gxvC+DNjdLgzyLQPyxB6ZcfyOX3R
         vE5R94cJ4a0cc5+C73EEVfY16+cQKYAQkbyQCh6ZwDNO6TeqeOkDSOpSTZLc7VE9Tzf3
         LhPbG8hwXryLus/czc/zgEKPREKMggFA9QlmIiZCw04phtW+subginK1vZmLNcDK8by0
         Golqb4uw4y5exkzH85o6IZiyo/EbLBdzTEOULVwf9SaDhGeho86aXUdu5m1BJPWPrrLR
         u3/g==
X-Gm-Message-State: AMCzsaXOSI6NC8dlMR7FbeLdGSKtKY2D8eBj+KpU8833B/o0MF/gMFKd
	4dtsJTzqKVeAjMtnVBv9dNs=
X-Received: by 10.101.67.3 with SMTP id j3mr14638111pgq.278.1508854292825;
        Tue, 24 Oct 2017 07:11:32 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id i11sm1030123pgc.88.2017.10.24.07.11.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:32 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 05/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-lg-lg4573
Date: Tue, 24 Oct 2017 19:40:56 +0530
Message-Id: <1508854263-18881-6-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508854263-18881-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508854263-18881-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

For drivers which could have multiple instances, it is necessary to
differentiate between which is which in the logs. Since
DRM_INFO/WARN/ERROR don’t do this, drivers used dev_info/warn/err to
make this differentiation. We now have DRM_DEV_* variants of the drm
print macros, so we can start to convert those drivers back to using
drm-formatted specific log messages.

This patch is using following Coccinelle script:
@@
@@

(
- dev_info
+ DRM_DEV_INFO
|
- dev_err
+ DRM_DEV_ERROR
|
- dev_dbg
+ DRM_DEV_DEBUG
)

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/gpu/drm/panel/panel-lg-lg4573.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-lg-lg4573.c b/drivers/gpu/drm/panel/panel-lg-lg4573.c
index 6989238..77c1c87 100644
--- a/drivers/gpu/drm/panel/panel-lg-lg4573.c
+++ b/drivers/gpu/drm/panel/panel-lg-lg4573.c
@@ -45,7 +45,7 @@ static int lg4573_spi_write_u16(struct lg4573 *ctx, u16 data)
 	u16 temp = cpu_to_be16(data);
 	struct spi_message msg;
 
-	dev_dbg(ctx->panel.dev, "writing data: %x\n", data);
+	DRM_DEV_DEBUG(ctx->panel.dev, "writing data: %x\n", data);
 	xfer.tx_buf = &temp;
 	spi_message_init(&msg);
 	spi_message_add_tail(&xfer, &msg);
@@ -112,7 +112,7 @@ static int lg4573_display_mode_settings(struct lg4573 *ctx)
 		0x7206, 0x720C, 0x7200, 0x7200,
 	};
 
-	dev_dbg(ctx->panel.dev, "transfer display mode settings\n");
+	DRM_DEV_DEBUG(ctx->panel.dev, "transfer display mode settings\n");
 	return lg4573_spi_write_u16_array(ctx, display_mode_settings,
 					  ARRAY_SIZE(display_mode_settings));
 }
@@ -128,7 +128,7 @@ static int lg4573_power_settings(struct lg4573 *ctx)
 		0x7263,
 	};
 
-	dev_dbg(ctx->panel.dev, "transfer power settings\n");
+	DRM_DEV_DEBUG(ctx->panel.dev, "transfer power settings\n");
 	return lg4573_spi_write_u16_array(ctx, power_settings,
 					  ARRAY_SIZE(power_settings));
 }
@@ -153,7 +153,7 @@ static int lg4573_gamma_settings(struct lg4573 *ctx)
 		0x7201, 0x7220, 0x7200, 0x7203,
 	};
 
-	dev_dbg(ctx->panel.dev, "transfer gamma settings\n");
+	DRM_DEV_DEBUG(ctx->panel.dev, "transfer gamma settings\n");
 	return lg4573_spi_write_u16_array(ctx, gamma_settings,
 					  ARRAY_SIZE(gamma_settings));
 }
@@ -162,7 +162,7 @@ static int lg4573_init(struct lg4573 *ctx)
 {
 	int ret;
 
-	dev_dbg(ctx->panel.dev, "initializing LCD\n");
+	DRM_DEV_DEBUG(ctx->panel.dev, "initializing LCD\n");
 
 	ret = lg4573_display_mode_settings(ctx);
 	if (ret)
@@ -216,9 +216,9 @@ static int lg4573_get_modes(struct drm_panel *panel)
 
 	mode = drm_mode_duplicate(panel->drm, &default_mode);
 	if (!mode) {
-		dev_err(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
-			default_mode.hdisplay, default_mode.vdisplay,
-			default_mode.vrefresh);
+		DRM_DEV_ERROR(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
+			      default_mode.hdisplay, default_mode.vdisplay,
+			      default_mode.vrefresh);
 		return -ENOMEM;
 	}
 
@@ -255,7 +255,7 @@ static int lg4573_probe(struct spi_device *spi)
 
 	ret = spi_setup(spi);
 	if (ret < 0) {
-		dev_err(&spi->dev, "SPI setup failed: %d\n", ret);
+		DRM_DEV_ERROR(&spi->dev, "SPI setup failed: %d\n", ret);
 		return ret;
 	}
 
-- 
2.7.4



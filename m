X-GM-THRID: 6480148992322699264
X-Received: by 10.200.44.69 with SMTP id e5mr13137271qta.17.1508854317826;
        Tue, 24 Oct 2017 07:11:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.197.199 with SMTP id k68ls188919qkl.8.gmail; Tue, 24 Oct
 2017 07:11:57 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RrZidUB3OG9FQ1av/iX9zVZ2NxFhzxoQ2gw6fHRbE5/JXelNeW0o2ycKbX5OQNDzUwmHkk
X-Received: by 10.237.60.59 with SMTP id t56mr13025491qte.43.1508854317328;
        Tue, 24 Oct 2017 07:11:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854317; cv=none;
        d=google.com; s=arc-20160816;
        b=hJDctSJwo/lMD9xM0s4oCdRXdrtj4TO1w7CT7uiOAGuouRVGM3AYgym60Y27txdN4O
         FenQxgJXqvOErRFC7+6wReBLqGxMqnr+Exknyox9RGzAW7orMe+SdRIRYChO9d+DAtTJ
         hpOYn8QGPIJ9CXpHDGDkO/BIfqhJPrjklFLZ6No7X1kBdL6vZG1zzZ93Tzgs4jaqvkFS
         NmeZiM0sZe41FWgvcl/ou/g6B54g8OowzZ/2PItN/Dq27TbBWmLQxnE6Qfo1j17mkmqo
         V2C3OqrzU5TDznlOvJ4c1JaamK3oa4iG/332HrxcqJPg1G4pyOh64JPUGEnVsyr9zDRU
         t4KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ahQWxC5LwPZyOWFEOuMkbB4Ylh3nqAQ/FEup8gPfNrc=;
        b=Axd0L48MjCJgM33IiCBbSf43mGe0Rd3F+dUTzO1j2qbYiZrSVxeeDneTyBldYDxNVw
         whWJs2OQt94rJLHE+IkNAZB/AZVy20w9J/Uhl1F0ulm4hlXX9UgSRKourE1iW7LsCpxo
         eDVStXHwG8BpmAi0YJcNVCig6EYTq/Kf+EVqHsbgwwKyY8yJ5rkLc6iFsxAnXWweCL0b
         FMJFjOQerjko3RAIWrCH/qoqeTqgLi1Lxn093AuJ5OM/4ovMxrSRRF1lyudKkB1J6+4/
         DbbvpD+UjiE2X72ofJUz6hf9KFGpRQ6X0UpOzASJyXkAwPeaVUbmxKJMj1Tpq2wP76lV
         R9kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gf0YKmZ9;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 5si33245qki.1.2017.10.24.07.11.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gf0YKmZ9;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id i5so19775696pfe.6
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ahQWxC5LwPZyOWFEOuMkbB4Ylh3nqAQ/FEup8gPfNrc=;
        b=gf0YKmZ9AFJYo0S/rXMzCPM4x7vJZpFV06MWmbTlcWCFRwzbm0jj4O6SKoFGQZItYq
         lAxeiI1xFsyG5oE0LI0SAspA/T9tgTHQrk34maQ94YT2aUNKXVYigIXSnRw7keYwIKGq
         hoTYenJMnk4cAJDqXLKDh8Osun8k4Tkd3GLUGxakt40KY8o8uJN0nvOwzxblIxF9VIOv
         XRb51CohBX38wMQJdKmfeAvJYpX/uFeebVYaGHc2ctv11l6fwqwoKlzal1Dmu+PXzGXJ
         2Cn9RW2J5ezYI+bVIlcExgy4c51RC/HjCd7NoEMaKLA26ckJdtHzVeQ//4/QbMHpS67A
         +RSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ahQWxC5LwPZyOWFEOuMkbB4Ylh3nqAQ/FEup8gPfNrc=;
        b=fzKbipcl1yAHgiifcXC68/tuXbclj+QmpogRH4JKKztZXmS0C2pHrvisFVMsUZ6n9k
         AuC9GQ7jBUVt7lEF29cPhO3CFdi3BAyWgoGnWu8GD0pqIJsH6SOI8dCGEoDyfvUlM2+g
         RDRjJ2kf7xostYyZ6AoVzM/uP0vOdvlv7sg/Y1JJlYtMEKmheIi13IBxq3hfXDoTGFlI
         nPNXuQNXC5pEY1wgzEe83Q+5DbpB3sIJ7pzSSQpkgn5ks2/Mmd9KLlm8dY1vq+xz3jZM
         s7D0c7gewSA+Ec61myAQrG7BQ7NApvVS3WXAF0UJ59TNN55Cw2/xT0k7IdKCBZ2iZxEx
         hYbA==
X-Gm-Message-State: AMCzsaVDcUt6IPMcq63/QsQve1j+MweGJcGMg70L0gKVIGYubHUnI8jg
	Cc50oIdyJxrj+bqmYQJXoJlCDBnA
X-Received: by 10.101.72.132 with SMTP id n4mr14843309pgs.245.1508854316454;
        Tue, 24 Oct 2017 07:11:56 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id n22sm940666pfa.161.2017.10.24.07.11.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:56 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 11/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-sharp-ls043t1le01
Date: Tue, 24 Oct 2017 19:41:02 +0530
Message-Id: <1508854263-18881-12-git-send-email-aastha.gupta4104@gmail.com>
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
 drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c b/drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c
index 3aeb0bd..e6ed6e7 100644
--- a/drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c
+++ b/drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c
@@ -137,7 +137,7 @@ static int sharp_nt_panel_unprepare(struct drm_panel *panel)
 
 	ret = sharp_nt_panel_off(sharp_nt);
 	if (ret < 0) {
-		dev_err(panel->dev, "failed to set panel off: %d\n", ret);
+		DRM_DEV_ERROR(panel->dev, "failed to set panel off: %d\n", ret);
 		return ret;
 	}
 
@@ -175,13 +175,13 @@ static int sharp_nt_panel_prepare(struct drm_panel *panel)
 
 	ret = sharp_nt_panel_init(sharp_nt);
 	if (ret < 0) {
-		dev_err(panel->dev, "failed to init panel: %d\n", ret);
+		DRM_DEV_ERROR(panel->dev, "failed to init panel: %d\n", ret);
 		goto poweroff;
 	}
 
 	ret = sharp_nt_panel_on(sharp_nt);
 	if (ret < 0) {
-		dev_err(panel->dev, "failed to set panel on: %d\n", ret);
+		DRM_DEV_ERROR(panel->dev, "failed to set panel on: %d\n", ret);
 		goto poweroff;
 	}
 
@@ -232,9 +232,9 @@ static int sharp_nt_panel_get_modes(struct drm_panel *panel)
 
 	mode = drm_mode_duplicate(panel->drm, &default_mode);
 	if (!mode) {
-		dev_err(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
-				default_mode.hdisplay, default_mode.vdisplay,
-				default_mode.vrefresh);
+		DRM_DEV_ERROR(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
+			      default_mode.hdisplay, default_mode.vdisplay,
+			      default_mode.vrefresh);
 		return -ENOMEM;
 	}
 
@@ -270,8 +270,8 @@ static int sharp_nt_panel_add(struct sharp_nt_panel *sharp_nt)
 
 	sharp_nt->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(sharp_nt->reset_gpio)) {
-		dev_err(dev, "cannot get reset-gpios %ld\n",
-			PTR_ERR(sharp_nt->reset_gpio));
+		DRM_DEV_ERROR(dev, "cannot get reset-gpios %ld\n",
+			      PTR_ERR(sharp_nt->reset_gpio));
 		sharp_nt->reset_gpio = NULL;
 	} else {
 		gpiod_set_value(sharp_nt->reset_gpio, 0);
@@ -346,11 +346,12 @@ static int sharp_nt_panel_remove(struct mipi_dsi_device *dsi)
 
 	ret = sharp_nt_panel_disable(&sharp_nt->base);
 	if (ret < 0)
-		dev_err(&dsi->dev, "failed to disable panel: %d\n", ret);
+		DRM_DEV_ERROR(&dsi->dev, "failed to disable panel: %d\n", ret);
 
 	ret = mipi_dsi_detach(dsi);
 	if (ret < 0)
-		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", ret);
+		DRM_DEV_ERROR(&dsi->dev,
+			      "failed to detach from DSI host: %d\n", ret);
 
 	drm_panel_detach(&sharp_nt->base);
 	sharp_nt_panel_del(sharp_nt);
-- 
2.7.4



X-GM-THRID: 6480148992322699264
X-Received: by 10.157.35.29 with SMTP id j29mr9524767otb.105.1508854290106;
        Tue, 24 Oct 2017 07:11:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.144 with SMTP id b16ls119297otb.5.gmail; Tue, 24 Oct
 2017 07:11:29 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RWz50+J9EHxJqL5uvOOJwkFOUdQ/smvAVo2uKyaW4EUuZEvpGzP0Io4ryyyyzcYyUczvOE
X-Received: by 10.157.66.164 with SMTP id r33mr9972004ote.12.1508854289591;
        Tue, 24 Oct 2017 07:11:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854289; cv=none;
        d=google.com; s=arc-20160816;
        b=SzFckuuJGlceMvUieBx7NKEElCX5g6DREtUXSNAtTJvuFzQuchG8atgRhIm8xZwtbj
         GgpHhoVy05YHPZnaH7rnbx3kVFcZ190FyPeaTJEmYhZSOIaYuapFzyAQlrXZrLhPx186
         vWR9IJ92rOO+ehgQvaUOSkBzhxKcLhMw38CfJ8kAyVc+ao1h1gxZAUuIlIMtXHo4bLAn
         KQ/RuZlVQl+shf0y6j7usIr4MnFbzWFB9pW5FIynMvtXVEBaBkf8j4QGCx8Wn+nlwQ9i
         hfhVW1VvPI7EUt0zneJk3tOmLO14VnyhGs/o6hlei7wpZguM/Drw8RkAO7n/7vMy+WJr
         YavA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=C87R3VxQ0HflPJ2zxd3U8MGFULB6ewRqRE8O9ZMRdvw=;
        b=aBgmtTCPcj8yCajRYc9Oa47f0LHBM5tjUVgZnCaphXnvmYG89YsOGO+QrMOyI5dyxc
         TRATxQ1HJYQO09WUUrrok0xXfvIDrsakPWBkZZa747FTzvV+Bd1tgnKJ91FtMu2/l+Zv
         RwhkhIVy1OQzzVg4k2lzgp+sWo04te5hAphb+jcDB1kMtfA+ez5iDqDCucOFuT23adhE
         rtuygGc16+LhElYgiaugUR5tWI1b4vv7nbhdXxRzYFgkL6TFFFXZPg28ImYY7wQltzQ2
         6wfQNmxkWHGtds19A7iRYoTa0OOlLWWfMTo1VlHLwmY+2fk1n2x6proLlW9xbnCmdHnZ
         tFhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eHxe8ohu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id t9si31039ote.1.2017.10.24.07.11.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eHxe8ohu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id b6so19772840pfh.7
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C87R3VxQ0HflPJ2zxd3U8MGFULB6ewRqRE8O9ZMRdvw=;
        b=eHxe8ohuPfB19zcdwOfnx9x/PUK82nZJ7juudNFADO6p/BYDFmbyP60BkRXqLJ8kEn
         DNgpWx/lDfGYbBR9rIilSNfncUph7jyr7SGwOUpkJAgPgGSc2x8wnx2CcTM21Ntm+nKH
         v59T10oatdVEn4D990LP37CuKglozPIOrPCErkLUmHupTWRkXx5O9JdR3RegOP7GN6D6
         3FuPoNXiWgh+vYExtRE5bhEwR7UZb9tY5jPRIfkYXXM4s2w1U8waATk+MdVaUKoIArTo
         IueCu0gAQ58k7XnrgS20+jzNauDxnK8/CmX8Bd87m/J75CN+lVxZvXRzAqrwDcib4mHI
         vJBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C87R3VxQ0HflPJ2zxd3U8MGFULB6ewRqRE8O9ZMRdvw=;
        b=JAo7+NjbHTkILEWoqdRc2YNk9IZ07uhs6U3XDSt0PKt3zrE174lEMpI5bEzrPyXBxA
         oGwh5uR2rEWdwRUnQFPHlL72vReq702nx/QWxACuu2e73gtsu/OwsreKiD7jd7Jqydng
         vtlM6gdDagV0ZRRp6K9JoxIQZcXvPqocJFTSYxf7En07ipcd5LjHuIGzj4oFULMDXMdb
         enmcmpGmC5b/8jpjdY2eVcQ9al3Oim6lU12Rbwz8+V/myr3POAinomlZsdSFeIiXSLfF
         g8MYe2VkEuuPIjQN0ZHImvVm7B7u9HvuT8GV+bqvSRmWZmxzuWhtN/jOw5MMLDggo/YI
         V+hg==
X-Gm-Message-State: AMCzsaW2zaHie7kCn7uFSXN+r3xSR2swcyr5hnCAhyMV6jinOpQKF6fn
	qm+WxFpWPbS67B/iuyeytDihdXWB
X-Received: by 10.99.3.21 with SMTP id 21mr14487109pgd.77.1508854289215;
        Tue, 24 Oct 2017 07:11:29 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id a1sm729080pgu.47.2017.10.24.07.11.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:28 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 04/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-simple
Date: Tue, 24 Oct 2017 19:40:55 +0530
Message-Id: <1508854263-18881-5-git-send-email-aastha.gupta4104@gmail.com>
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
 drivers/gpu/drm/panel/panel-simple.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 474fa75..07f8c21 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -111,8 +111,8 @@ static int panel_simple_get_fixed_modes(struct panel_simple *panel)
 		videomode_from_timing(dt, &vm);
 		mode = drm_mode_create(drm);
 		if (!mode) {
-			dev_err(drm->dev, "failed to add mode %ux%u\n",
-				dt->hactive.typ, dt->vactive.typ);
+			DRM_DEV_ERROR(drm->dev, "failed to add mode %ux%u\n",
+				      dt->hactive.typ, dt->vactive.typ);
 			continue;
 		}
 
@@ -132,8 +132,8 @@ static int panel_simple_get_fixed_modes(struct panel_simple *panel)
 
 		mode = drm_mode_duplicate(drm, m);
 		if (!mode) {
-			dev_err(drm->dev, "failed to add mode %ux%u@%u\n",
-				m->hdisplay, m->vdisplay, m->vrefresh);
+			DRM_DEV_ERROR(drm->dev, "failed to add mode %ux%u@%u\n",
+				      m->hdisplay, m->vdisplay, m->vrefresh);
 			continue;
 		}
 
@@ -210,7 +210,7 @@ static int panel_simple_prepare(struct drm_panel *panel)
 
 	err = regulator_enable(p->supply);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to enable supply: %d\n", err);
+		DRM_DEV_ERROR(panel->dev, "failed to enable supply: %d\n", err);
 		return err;
 	}
 
@@ -315,7 +315,7 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 						     GPIOD_OUT_LOW);
 	if (IS_ERR(panel->enable_gpio)) {
 		err = PTR_ERR(panel->enable_gpio);
-		dev_err(dev, "failed to request GPIO: %d\n", err);
+		DRM_DEV_ERROR(dev, "failed to request GPIO: %d\n", err);
 		return err;
 	}
 
@@ -2378,7 +2378,8 @@ static int panel_simple_dsi_remove(struct mipi_dsi_device *dsi)
 
 	err = mipi_dsi_detach(dsi);
 	if (err < 0)
-		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", err);
+		DRM_DEV_ERROR(&dsi->dev,
+			      "failed to detach from DSI host: %d\n", err);
 
 	return panel_simple_remove(&dsi->dev);
 }
-- 
2.7.4



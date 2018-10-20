X-GM-THRID: 6614501510595215360
X-Received: by 2002:a67:7a02:: with SMTP id v2mr26936868vsc.34.1540058644217;
        Sat, 20 Oct 2018 11:04:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:6604:: with SMTP id a4ls4472060vkc.4.gmail; Sat, 20 Oct
 2018 11:04:03 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61WSw8b+wDivCZPG49Upd8+Wo/Tvwg/XkttyAfLWJUlY1hJ6RzTP40RZ89vD98IKbV6fx2m
X-Received: by 2002:a1f:18d8:: with SMTP id 207mr16361643vky.14.1540058643113;
        Sat, 20 Oct 2018 11:04:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540058643; cv=none;
        d=google.com; s=arc-20160816;
        b=Ok4HVQLGhx9clikxNKes7f3ZbvzlkHRah8wWN3rwpDIOcVxNiljDReFp+MdDs5FoP5
         +3AafysD4zCfczpnMmG1Rtv3rt78hgAg159jSYnA8dt/cTi5Dwcgn8vCin2m9o+x7NIo
         ZiP+NSCzRYRUHiCvmavO1fjWpJQi/Foy5XQZKeg8QQKUWOCnqsLBSrqPkMQyQq+mRLJW
         yWvdXY7wSC6DC3sUispKq0ztjJS3Kvf6CkIN2RGEls1/cv8QdldfaWD8tnJnDJZd5BfL
         UtgyWt+PEIF1Dv7ADcUxHyMya2TskVy/syfdANNyT7AT8g3LpF6NcQHJKAYW6/DuHhaN
         n+rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=WzL0hkXykdOpU/H6pXBKZ5gwa19svK6NxUR+rOSscvw=;
        b=tyzWH/GDBAek5u1bR6XG03l0mT+xNzf3Fg4aq47IdnxuCD9mWZiZB/slUV9SX0mwoK
         nsV+As+Y48932q3wN3vqsB/vvbFV9WQyCuradv55hLD1yhMnQ+gy+w/SxRJ9zWSKkM9n
         WaZofHezlDpedNJ+3q3FFznMlCKDI+sAzr2D7kibSccY5id63Yz38LHS6UzHLhze1+fo
         OrN6Ch626MiE8yj4M+EWhfQlHZPqt3VjNLyu1xFodGOm9jv+O+0QhLlPnAnfRoHbhh1e
         3RgiaDY3RA9LmxT1eEVy+U+3EtfmxJM3DR/13Awj07KatL9ASzpriC2Nl6VBt+GReaze
         SHGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lramNGvI;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id a71si1412911vsb.1.2018.10.20.11.04.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Oct 2018 11:04:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lramNGvI;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id f18-v6so17260838plr.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Oct 2018 11:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WzL0hkXykdOpU/H6pXBKZ5gwa19svK6NxUR+rOSscvw=;
        b=lramNGvIEuHufJCMbeBHV9E+BOuLJDZP+ulTq22yCBwhcA1I2XDL+PFZg3fRMjKBeQ
         Ecu9ZjumMca4ac7v0K41rirBnGCAmUcRCt8H/e6YH2jUB3+HqYQ8dz2DAHjrBTjq6FK9
         glXWwLAg/l5d1BlcYPbX7WI/P4XWDEy2Ukwx4MM5y6vkMcpI+U0wuHNGjQJUuT1xIB18
         +NgOxy8vARr80LlRwK5l4PuG3OAEnanZ/iFY+k34qjHHGFb7Pr1lVih0Crk0VoAOxoVr
         nyGTqQpRjEY2Y5jKo0hZtO2SyOPZ2VTH0ZXnFJ7Ix4cUdrb4nLDCZRqup/JGIB41Xe/o
         naOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WzL0hkXykdOpU/H6pXBKZ5gwa19svK6NxUR+rOSscvw=;
        b=tQqQIwLNTDWgVbF+Jjz0FmqX5D3ALmB8n3UbRCMzGmhOLg9qSYa7l4G8I1r5LRQnaB
         NFjhNhIq6NxhuHJpTLfCHYljcVZ55NwsxAEfI2VpHd+itrG5QhS99zp7zu7VBrn1V433
         TvqjtuPe/kJxa11aI9aVz98U76D/5ZfpM9pGlkkru/zLvNre719OlUaURTaci7deOS6G
         6H5zaphPhdi+WdpuJj8ZslJQBl0gincHWXcOPK6/eRELN2RflNEy0BLxaXav7irJEhiN
         0HtNmd/xqCBUFTm/KK2zOPHEH/pLS2T6Wo+/L2QCyQS0+KFs9Cjd93C172rmPA+ZywpD
         vOTA==
X-Gm-Message-State: ABuFfog4gvX0BIdKc1UIrYUOZekgkQ6L8/fWSBiArOc+3KQ9RdSZv0VS
	LaHK7Sn6XZscJFzJigWgss0=
X-Received: by 2002:a17:902:a40c:: with SMTP id p12-v6mr38969555plq.165.1540058639944;
        Sat, 20 Oct 2018 11:03:59 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.97.10.197])
        by smtp.gmail.com with ESMTPSA id d197-v6sm35962662pga.1.2018.10.20.11.03.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Oct 2018 11:03:59 -0700 (PDT)
Date: Sat, 20 Oct 2018 23:33:54 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: dri-devel@lists.freedesktop.org, daniel.vetter@ffwll.ch,
	robdclark@gmail.com, airlied@linux.ie, sean@poorly.run
Subject: [PATCH DRM] drm: msm: disp: dpu1: Use DRM_DEV_* instead of DPU_*
Message-ID: <20181020180354.GA338@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use DRM_DEV_ERROR/DEBUG instead of DPU_ERROR/DEBUG  to generate
drm-formatted specific log messages in the Kernel log in case of
multiple instances.

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_core_irq.c       |  58 +++----
 drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c      |  60 +++----
 drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c           | 176 ++++++++++-----------
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c        | 134 ++++++++--------
 .../gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c   |  40 ++---
 .../gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c   |  42 ++---
 drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c        |  10 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_cdm.c         |   2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c         |   2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c        |   2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c          |   2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c    |   2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c        |   2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c         |   2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_irq.c            |   4 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |  90 +++++------
 drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c           |  10 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c          | 134 ++++++++--------
 drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c             |  96 +++++------
 drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c           |  32 ++--
 21 files changed, 451 insertions(+), 451 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_core_irq.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_core_irq.c
index 879c13f..b9aa452 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_core_irq.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_core_irq.c
@@ -84,12 +84,12 @@ static int _dpu_core_irq_enable(struct dpu_kms *dpu_kms, int irq_idx)
 	if (!dpu_kms || !dpu_kms->hw_intr ||
 			!dpu_kms->irq_obj.enable_counts ||
 			!dpu_kms->irq_obj.irq_counts) {
-		DPU_ERROR("invalid params\n");
+		DRM_DEV_ERROR("invalid params\n");
 		return -EINVAL;
 	}
 
 	if (irq_idx < 0 || irq_idx >= dpu_kms->hw_intr->irq_idx_tbl_size) {
-		DPU_ERROR("invalid IRQ index: [%d]\n", irq_idx);
+		DRM_DEV_ERROR("invalid IRQ index: [%d]\n", irq_idx);
 		return -EINVAL;
 	}
 
@@ -102,15 +102,15 @@ static int _dpu_core_irq_enable(struct dpu_kms *dpu_kms, int irq_idx)
 				dpu_kms->hw_intr,
 				irq_idx);
 		if (ret)
-			DPU_ERROR("Fail to enable IRQ for irq_idx:%d\n",
+			DRM_DEV_ERROR("Fail to enable IRQ for irq_idx:%d\n",
 					irq_idx);
 
-		DPU_DEBUG("irq_idx=%d ret=%d\n", irq_idx, ret);
+		DRM_DEV_DEBUG("irq_idx=%d ret=%d\n", irq_idx, ret);
 
 		spin_lock_irqsave(&dpu_kms->irq_obj.cb_lock, irq_flags);
 		/* empty callback list but interrupt is enabled */
 		if (list_empty(&dpu_kms->irq_obj.irq_cb_tbl[irq_idx]))
-			DPU_ERROR("irq_idx=%d enabled with no callback\n",
+			DRM_DEV_ERROR("irq_idx=%d enabled with no callback\n",
 					irq_idx);
 		spin_unlock_irqrestore(&dpu_kms->irq_obj.cb_lock, irq_flags);
 	}
@@ -123,7 +123,7 @@ int dpu_core_irq_enable(struct dpu_kms *dpu_kms, int *irq_idxs, u32 irq_count)
 	int i, ret = 0, counts;
 
 	if (!dpu_kms || !irq_idxs || !irq_count) {
-		DPU_ERROR("invalid params\n");
+		DRM_DEV_ERROR("invalid params\n");
 		return -EINVAL;
 	}
 
@@ -147,12 +147,12 @@ static int _dpu_core_irq_disable(struct dpu_kms *dpu_kms, int irq_idx)
 	int ret = 0, enable_count;
 
 	if (!dpu_kms || !dpu_kms->hw_intr || !dpu_kms->irq_obj.enable_counts) {
-		DPU_ERROR("invalid params\n");
+		DRM_DEV_ERROR("invalid params\n");
 		return -EINVAL;
 	}
 
 	if (irq_idx < 0 || irq_idx >= dpu_kms->hw_intr->irq_idx_tbl_size) {
-		DPU_ERROR("invalid IRQ index: [%d]\n", irq_idx);
+		DRM_DEV_ERROR("invalid IRQ index: [%d]\n", irq_idx);
 		return -EINVAL;
 	}
 
@@ -165,9 +165,9 @@ static int _dpu_core_irq_disable(struct dpu_kms *dpu_kms, int irq_idx)
 				dpu_kms->hw_intr,
 				irq_idx);
 		if (ret)
-			DPU_ERROR("Fail to disable IRQ for irq_idx:%d\n",
+			DRM_DEV_ERROR("Fail to disable IRQ for irq_idx:%d\n",
 					irq_idx);
-		DPU_DEBUG("irq_idx=%d ret=%d\n", irq_idx, ret);
+		DRM_DEV_DEBUG("irq_idx=%d ret=%d\n", irq_idx, ret);
 	}
 
 	return ret;
@@ -178,7 +178,7 @@ int dpu_core_irq_disable(struct dpu_kms *dpu_kms, int *irq_idxs, u32 irq_count)
 	int i, ret = 0, counts;
 
 	if (!dpu_kms || !irq_idxs || !irq_count) {
-		DPU_ERROR("invalid params\n");
+		DRM_DEV_ERROR("invalid params\n");
 		return -EINVAL;
 	}
 
@@ -199,7 +199,7 @@ u32 dpu_core_irq_read(struct dpu_kms *dpu_kms, int irq_idx, bool clear)
 		return 0;
 
 	if (irq_idx < 0) {
-		DPU_ERROR("[%pS] invalid irq_idx=%d\n",
+		DRM_DEV_ERROR("[%pS] invalid irq_idx=%d\n",
 				__builtin_return_address(0), irq_idx);
 		return 0;
 	}
@@ -214,12 +214,12 @@ int dpu_core_irq_register_callback(struct dpu_kms *dpu_kms, int irq_idx,
 	unsigned long irq_flags;
 
 	if (!dpu_kms || !dpu_kms->irq_obj.irq_cb_tbl) {
-		DPU_ERROR("invalid params\n");
+		DRM_DEV_ERROR("invalid params\n");
 		return -EINVAL;
 	}
 
 	if (!register_irq_cb || !register_irq_cb->func) {
-		DPU_ERROR("invalid irq_cb:%d func:%d\n",
+		DRM_DEV_ERROR("invalid irq_cb:%d func:%d\n",
 				register_irq_cb != NULL,
 				register_irq_cb ?
 					register_irq_cb->func != NULL : -1);
@@ -227,11 +227,11 @@ int dpu_core_irq_register_callback(struct dpu_kms *dpu_kms, int irq_idx,
 	}
 
 	if (irq_idx < 0 || irq_idx >= dpu_kms->hw_intr->irq_idx_tbl_size) {
-		DPU_ERROR("invalid IRQ index: [%d]\n", irq_idx);
+		DRM_DEV_ERROR("invalid IRQ index: [%d]\n", irq_idx);
 		return -EINVAL;
 	}
 
-	DPU_DEBUG("[%pS] irq_idx=%d\n", __builtin_return_address(0), irq_idx);
+	DRM_DEV_DEBUG("[%pS] irq_idx=%d\n", __builtin_return_address(0), irq_idx);
 
 	spin_lock_irqsave(&dpu_kms->irq_obj.cb_lock, irq_flags);
 	trace_dpu_core_irq_register_callback(irq_idx, register_irq_cb);
@@ -249,12 +249,12 @@ int dpu_core_irq_unregister_callback(struct dpu_kms *dpu_kms, int irq_idx,
 	unsigned long irq_flags;
 
 	if (!dpu_kms || !dpu_kms->irq_obj.irq_cb_tbl) {
-		DPU_ERROR("invalid params\n");
+		DRM_DEV_ERROR("invalid params\n");
 		return -EINVAL;
 	}
 
 	if (!register_irq_cb || !register_irq_cb->func) {
-		DPU_ERROR("invalid irq_cb:%d func:%d\n",
+		DRM_DEV_ERROR("invalid irq_cb:%d func:%d\n",
 				register_irq_cb != NULL,
 				register_irq_cb ?
 					register_irq_cb->func != NULL : -1);
@@ -262,11 +262,11 @@ int dpu_core_irq_unregister_callback(struct dpu_kms *dpu_kms, int irq_idx,
 	}
 
 	if (irq_idx < 0 || irq_idx >= dpu_kms->hw_intr->irq_idx_tbl_size) {
-		DPU_ERROR("invalid IRQ index: [%d]\n", irq_idx);
+		DRM_DEV_ERROR("invalid IRQ index: [%d]\n", irq_idx);
 		return -EINVAL;
 	}
 
-	DPU_DEBUG("[%pS] irq_idx=%d\n", __builtin_return_address(0), irq_idx);
+	DRM_DEV_DEBUG("[%pS] irq_idx=%d\n", __builtin_return_address(0), irq_idx);
 
 	spin_lock_irqsave(&dpu_kms->irq_obj.cb_lock, irq_flags);
 	trace_dpu_core_irq_unregister_callback(irq_idx, register_irq_cb);
@@ -274,7 +274,7 @@ int dpu_core_irq_unregister_callback(struct dpu_kms *dpu_kms, int irq_idx,
 	/* empty callback list but interrupt is still enabled */
 	if (list_empty(&dpu_kms->irq_obj.irq_cb_tbl[irq_idx]) &&
 			atomic_read(&dpu_kms->irq_obj.enable_counts[irq_idx]))
-		DPU_ERROR("irq_idx=%d enabled with no callback\n", irq_idx);
+		DRM_DEV_ERROR("irq_idx=%d enabled with no callback\n", irq_idx);
 	spin_unlock_irqrestore(&dpu_kms->irq_obj.cb_lock, irq_flags);
 
 	return 0;
@@ -320,7 +320,7 @@ static int dpu_debugfs_core_irq_show(struct seq_file *s, void *v)
 	int i, irq_count, enable_count, cb_count;
 
 	if (!irq_obj || !irq_obj->enable_counts || !irq_obj->irq_cb_tbl) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return 0;
 	}
 
@@ -377,13 +377,13 @@ void dpu_core_irq_preinstall(struct dpu_kms *dpu_kms)
 	int i;
 
 	if (!dpu_kms) {
-		DPU_ERROR("invalid dpu_kms\n");
+		DRM_DEV_ERROR("invalid dpu_kms\n");
 		return;
 	} else if (!dpu_kms->dev) {
-		DPU_ERROR("invalid drm device\n");
+		DRM_DEV_ERROR("invalid drm device\n");
 		return;
 	} else if (!dpu_kms->dev->dev_private) {
-		DPU_ERROR("invalid device private\n");
+		DRM_DEV_ERROR("invalid device private\n");
 		return;
 	}
 	priv = dpu_kms->dev->dev_private;
@@ -421,13 +421,13 @@ void dpu_core_irq_uninstall(struct dpu_kms *dpu_kms)
 	int i;
 
 	if (!dpu_kms) {
-		DPU_ERROR("invalid dpu_kms\n");
+		DRM_DEV_ERROR("invalid dpu_kms\n");
 		return;
 	} else if (!dpu_kms->dev) {
-		DPU_ERROR("invalid drm device\n");
+		DRM_DEV_ERROR("invalid drm device\n");
 		return;
 	} else if (!dpu_kms->dev->dev_private) {
-		DPU_ERROR("invalid device private\n");
+		DRM_DEV_ERROR("invalid device private\n");
 		return;
 	}
 	priv = dpu_kms->dev->dev_private;
@@ -436,7 +436,7 @@ void dpu_core_irq_uninstall(struct dpu_kms *dpu_kms)
 	for (i = 0; i < dpu_kms->irq_obj.total_irqs; i++)
 		if (atomic_read(&dpu_kms->irq_obj.enable_counts[i]) ||
 				!list_empty(&dpu_kms->irq_obj.irq_cb_tbl[i]))
-			DPU_ERROR("irq_idx=%d still enabled/registered\n", i);
+			DRM_DEV_ERROR("irq_idx=%d still enabled/registered\n", i);
 
 	dpu_clear_all_irqs(dpu_kms);
 	dpu_disable_all_irqs(dpu_kms);
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c
index 41c5191..5e4aca2 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c
@@ -44,13 +44,13 @@ static struct dpu_kms *_dpu_crtc_get_kms(struct drm_crtc *crtc)
 	struct msm_drm_private *priv;
 
 	if (!crtc->dev || !crtc->dev->dev_private) {
-		DPU_ERROR("invalid device\n");
+		DRM_DEV_ERROR("invalid device\n");
 		return NULL;
 	}
 
 	priv = crtc->dev->dev_private;
 	if (!priv || !priv->kms) {
-		DPU_ERROR("invalid kms\n");
+		DRM_DEV_ERROR("invalid kms\n");
 		return NULL;
 	}
 
@@ -73,7 +73,7 @@ static bool _dpu_core_video_mode_intf_connected(struct drm_crtc *crtc)
 	drm_for_each_crtc(tmp_crtc, crtc->dev) {
 		if ((dpu_crtc_get_intf_mode(tmp_crtc) == INTF_MODE_VIDEO) &&
 				_dpu_core_perf_crtc_is_power_on(tmp_crtc)) {
-			DPU_DEBUG("video interface connected crtc:%d\n",
+			DRM_DEV_DEBUG("video interface connected crtc:%d\n",
 				tmp_crtc->base.id);
 			intf_connected = true;
 			goto end;
@@ -93,7 +93,7 @@ static void _dpu_core_perf_calc_crtc(struct dpu_kms *kms,
 	int i;
 
 	if (!kms || !kms->catalog || !crtc || !state || !perf) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return;
 	}
 
@@ -121,7 +121,7 @@ static void _dpu_core_perf_calc_crtc(struct dpu_kms *kms,
 		perf->core_clk_rate = kms->perf.fix_core_clk_rate;
 	}
 
-	DPU_DEBUG(
+	DRM_DEV_DEBUG(
 		"crtc=%d clk_rate=%llu core_ib=%llu core_ab=%llu llcc_ib=%llu llcc_ab=%llu mem_ib=%llu mem_ab=%llu\n",
 			crtc->base.id, perf->core_clk_rate,
 			perf->max_per_pipe_ib[DPU_POWER_HANDLE_DBUS_ID_MNOC],
@@ -145,13 +145,13 @@ int dpu_core_perf_crtc_check(struct drm_crtc *crtc,
 	int i;
 
 	if (!crtc || !state) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return -EINVAL;
 	}
 
 	kms = _dpu_crtc_get_kms(crtc);
 	if (!kms || !kms->catalog) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return 0;
 	}
 
@@ -177,7 +177,7 @@ int dpu_core_perf_crtc_check(struct drm_crtc *crtc,
 				struct dpu_crtc_state *tmp_cstate =
 					to_dpu_crtc_state(tmp_crtc->state);
 
-				DPU_DEBUG("crtc:%d bw:%llu ctrl:%d\n",
+				DRM_DEV_DEBUG("crtc:%d bw:%llu ctrl:%d\n",
 					tmp_crtc->base.id,
 					tmp_cstate->new_perf.bw_ctl[i],
 					tmp_cstate->bw_control);
@@ -193,7 +193,7 @@ int dpu_core_perf_crtc_check(struct drm_crtc *crtc,
 
 		/* convert bandwidth to kb */
 		bw = DIV_ROUND_UP_ULL(bw_sum_of_intfs, 1000);
-		DPU_DEBUG("calculated bandwidth=%uk\n", bw);
+		DRM_DEV_DEBUG("calculated bandwidth=%uk\n", bw);
 
 		is_video_mode = dpu_crtc_get_intf_mode(crtc) == INTF_MODE_VIDEO;
 		threshold = (is_video_mode ||
@@ -201,15 +201,15 @@ int dpu_core_perf_crtc_check(struct drm_crtc *crtc,
 			kms->catalog->perf.max_bw_low :
 			kms->catalog->perf.max_bw_high;
 
-		DPU_DEBUG("final threshold bw limit = %d\n", threshold);
+		DRM_DEV_DEBUG("final threshold bw limit = %d\n", threshold);
 
 		if (!dpu_cstate->bw_control) {
-			DPU_DEBUG("bypass bandwidth check\n");
+			DRM_DEV_DEBUG("bypass bandwidth check\n");
 		} else if (!threshold) {
-			DPU_ERROR("no bandwidth limits specified\n");
+			DRM_DEV_ERROR("no bandwidth limits specified\n");
 			return -E2BIG;
 		} else if (bw > threshold) {
-			DPU_ERROR("exceeds bandwidth: %ukb > %ukb\n", bw,
+			DRM_DEV_ERROR("exceeds bandwidth: %ukb > %ukb\n", bw,
 					threshold);
 			return -E2BIG;
 		}
@@ -238,7 +238,7 @@ static int _dpu_core_perf_crtc_update_bus(struct dpu_kms *kms,
 				max(perf.max_per_pipe_ib[bus_id],
 				dpu_cstate->new_perf.max_per_pipe_ib[bus_id]);
 
-			DPU_DEBUG("crtc=%d bus_id=%d bw=%llu\n",
+			DRM_DEV_DEBUG("crtc=%d bus_id=%d bw=%llu\n",
 				tmp_crtc->base.id, bus_id,
 				dpu_cstate->new_perf.bw_ctl[bus_id]);
 		}
@@ -263,13 +263,13 @@ void dpu_core_perf_crtc_release_bw(struct drm_crtc *crtc)
 	int i;
 
 	if (!crtc) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 
 	kms = _dpu_crtc_get_kms(crtc);
 	if (!kms || !kms->catalog) {
-		DPU_ERROR("invalid kms\n");
+		DRM_DEV_ERROR("invalid kms\n");
 		return;
 	}
 
@@ -295,7 +295,7 @@ void dpu_core_perf_crtc_release_bw(struct drm_crtc *crtc)
 	/* Release the bandwidth */
 	if (kms->perf.enable_bw_release) {
 		trace_dpu_cmd_release_bw(crtc->base.id);
-		DPU_DEBUG("Release BW crtc=%d\n", crtc->base.id);
+		DRM_DEV_DEBUG("Release BW crtc=%d\n", crtc->base.id);
 		for (i = 0; i < DPU_POWER_HANDLE_DBUS_ID_MAX; i++) {
 			dpu_crtc->cur_perf.bw_ctl[i] = 0;
 			_dpu_core_perf_crtc_update_bus(kms, crtc, i);
@@ -333,7 +333,7 @@ static u64 _dpu_core_perf_get_core_clk_rate(struct dpu_kms *kms)
 	if (kms->perf.perf_tune.mode == DPU_PERF_MODE_FIXED)
 		clk_rate = kms->perf.fix_core_clk_rate;
 
-	DPU_DEBUG("clk:%llu\n", clk_rate);
+	DRM_DEV_DEBUG("clk:%llu\n", clk_rate);
 
 	return clk_rate;
 }
@@ -352,13 +352,13 @@ int dpu_core_perf_crtc_update(struct drm_crtc *crtc,
 	int ret;
 
 	if (!crtc) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return -EINVAL;
 	}
 
 	kms = _dpu_crtc_get_kms(crtc);
 	if (!kms || !kms->catalog) {
-		DPU_ERROR("invalid kms\n");
+		DRM_DEV_ERROR("invalid kms\n");
 		return -EINVAL;
 	}
 	priv = kms->dev->dev_private;
@@ -366,7 +366,7 @@ int dpu_core_perf_crtc_update(struct drm_crtc *crtc,
 	dpu_crtc = to_dpu_crtc(crtc);
 	dpu_cstate = to_dpu_crtc_state(crtc->state);
 
-	DPU_DEBUG("crtc:%d stop_req:%d core_clk:%llu\n",
+	DRM_DEV_DEBUG("crtc:%d stop_req:%d core_clk:%llu\n",
 			crtc->base.id, stop_req, kms->perf.core_clk_rate);
 
 	old = &dpu_crtc->cur_perf;
@@ -389,7 +389,7 @@ int dpu_core_perf_crtc_update(struct drm_crtc *crtc,
 						old->bw_ctl[i]) ||
 				  (new->max_per_pipe_ib[i] <
 						old->max_per_pipe_ib[i])))) {
-				DPU_DEBUG(
+				DRM_DEV_DEBUG(
 					"crtc=%d p=%d new_bw=%llu,old_bw=%llu\n",
 					crtc->base.id, params_changed,
 					new->bw_ctl[i], old->bw_ctl[i]);
@@ -408,7 +408,7 @@ int dpu_core_perf_crtc_update(struct drm_crtc *crtc,
 			update_clk = 1;
 		}
 	} else {
-		DPU_DEBUG("crtc=%d disable\n", crtc->base.id);
+		DRM_DEV_DEBUG("crtc=%d disable\n", crtc->base.id);
 		memset(old, 0, sizeof(*old));
 		memset(new, 0, sizeof(*new));
 		update_bus = ~0;
@@ -425,7 +425,7 @@ int dpu_core_perf_crtc_update(struct drm_crtc *crtc,
 		if (update_bus & BIT(i)) {
 			ret = _dpu_core_perf_crtc_update_bus(kms, crtc, i);
 			if (ret) {
-				DPU_ERROR("crtc-%d: failed to update bw vote for bus-%d\n",
+				DRM_DEV_ERROR("crtc-%d: failed to update bw vote for bus-%d\n",
 					  crtc->base.id, i);
 				return ret;
 			}
@@ -443,13 +443,13 @@ int dpu_core_perf_crtc_update(struct drm_crtc *crtc,
 
 		ret = _dpu_core_perf_set_core_clk_rate(kms, clk_rate);
 		if (ret) {
-			DPU_ERROR("failed to set %s clock rate %llu\n",
+			DRM_DEV_ERROR("failed to set %s clock rate %llu\n",
 					kms->perf.core_clk->clk_name, clk_rate);
 			return ret;
 		}
 
 		kms->perf.core_clk_rate = clk_rate;
-		DPU_DEBUG("update clk rate = %lld HZ\n", clk_rate);
+		DRM_DEV_DEBUG("update clk rate = %lld HZ\n", clk_rate);
 	}
 	return 0;
 }
@@ -550,7 +550,7 @@ int dpu_core_perf_debugfs_init(struct dpu_core_perf *perf,
 
 	priv = perf->dev->dev_private;
 	if (!priv || !priv->kms) {
-		DPU_ERROR("invalid KMS reference\n");
+		DRM_DEV_ERROR("invalid KMS reference\n");
 		return -EINVAL;
 	}
 
@@ -558,7 +558,7 @@ int dpu_core_perf_debugfs_init(struct dpu_core_perf *perf,
 
 	perf->debugfs_root = debugfs_create_dir("core_perf", parent);
 	if (!perf->debugfs_root) {
-		DPU_ERROR("failed to create core perf debugfs\n");
+		DRM_DEV_ERROR("failed to create core perf debugfs\n");
 		return -EINVAL;
 	}
 
@@ -604,7 +604,7 @@ int dpu_core_perf_debugfs_init(struct dpu_core_perf *perf,
 void dpu_core_perf_destroy(struct dpu_core_perf *perf)
 {
 	if (!perf) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return;
 	}
 
@@ -629,7 +629,7 @@ int dpu_core_perf_init(struct dpu_core_perf *perf,
 
 	perf->max_core_clk_rate = core_clk->max_rate;
 	if (!perf->max_core_clk_rate) {
-		DPU_DEBUG("optional max core clk rate, use default\n");
+		DRM_DEV_DEBUG("optional max core clk rate, use default\n");
 		perf->max_core_clk_rate = DPU_PERF_DEFAULT_MAX_CORE_CLK_RATE;
 	}
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
index 80cbf75..b5be9b6 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
@@ -54,12 +54,12 @@ static inline struct dpu_kms *_dpu_crtc_get_kms(struct drm_crtc *crtc)
 	struct msm_drm_private *priv;
 
 	if (!crtc || !crtc->dev || !crtc->dev->dev_private) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return NULL;
 	}
 	priv = crtc->dev->dev_private;
 	if (!priv || !priv->kms) {
-		DPU_ERROR("invalid kms\n");
+		DRM_DEV_ERROR("invalid kms\n");
 		return NULL;
 	}
 
@@ -73,19 +73,19 @@ static inline int _dpu_crtc_power_enable(struct dpu_crtc *dpu_crtc, bool enable)
 	struct dpu_kms *dpu_kms;
 
 	if (!dpu_crtc) {
-		DPU_ERROR("invalid dpu crtc\n");
+		DRM_DEV_ERROR("invalid dpu crtc\n");
 		return -EINVAL;
 	}
 
 	crtc = &dpu_crtc->base;
 	if (!crtc->dev || !crtc->dev->dev_private) {
-		DPU_ERROR("invalid drm device\n");
+		DRM_DEV_ERROR("invalid drm device\n");
 		return -EINVAL;
 	}
 
 	priv = crtc->dev->dev_private;
 	if (!priv->kms) {
-		DPU_ERROR("invalid kms\n");
+		DRM_DEV_ERROR("invalid kms\n");
 		return -EINVAL;
 	}
 
@@ -125,17 +125,17 @@ static void _dpu_crtc_rp_reclaim(struct dpu_crtc_respool *rp, bool force)
 
 	crtc = _dpu_crtc_rp_to_crtc(rp);
 	if (!crtc) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 
-	DPU_DEBUG("crtc%d.%u %s\n", crtc->base.id, rp->sequence_id,
+	DRM_DEV_DEBUG("crtc%d.%u %s\n", crtc->base.id, rp->sequence_id,
 			force ? "destroy" : "free_unused");
 
 	list_for_each_entry_safe(res, next, &rp->res_list, list) {
 		if (!force && !(res->flags & DPU_CRTC_RES_FLAG_FREE))
 			continue;
-		DPU_DEBUG("crtc%d.%u reclaim res:0x%x/0x%llx/%pK/%d\n",
+		DRM_DEV_DEBUG("crtc%d.%u reclaim res:0x%x/0x%llx/%pK/%d\n",
 				crtc->base.id, rp->sequence_id,
 				res->type, res->tag, res->val,
 				atomic_read(&res->refcount));
@@ -180,7 +180,7 @@ static void _dpu_crtc_rp_destroy(struct dpu_crtc_respool *rp)
  */
 static void *_dpu_crtc_hw_blk_get(void *val, u32 type, u64 tag)
 {
-	DPU_DEBUG("res:%d/0x%llx/%pK\n", type, tag, val);
+	DRM_DEV_DEBUG("res:%d/0x%llx/%pK\n", type, tag, val);
 	return dpu_hw_blk_get(val, type, tag);
 }
 
@@ -191,7 +191,7 @@ static void *_dpu_crtc_hw_blk_get(void *val, u32 type, u64 tag)
  */
 static void _dpu_crtc_hw_blk_put(void *val)
 {
-	DPU_DEBUG("res://%pK\n", val);
+	DRM_DEV_DEBUG("res://%pK\n", val);
 	dpu_hw_blk_put(val);
 }
 
@@ -208,17 +208,17 @@ static void _dpu_crtc_rp_duplicate(struct dpu_crtc_respool *rp,
 	struct drm_crtc *crtc;
 
 	if (!rp || !dup_rp || !rp->rp_head) {
-		DPU_ERROR("invalid resource pool\n");
+		DRM_DEV_ERROR("invalid resource pool\n");
 		return;
 	}
 
 	crtc = _dpu_crtc_rp_to_crtc(rp);
 	if (!crtc) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 
-	DPU_DEBUG("crtc%d.%u duplicate\n", crtc->base.id, rp->sequence_id);
+	DRM_DEV_DEBUG("crtc%d.%u duplicate\n", crtc->base.id, rp->sequence_id);
 
 	mutex_lock(rp->rp_lock);
 	dup_rp->sequence_id = rp->sequence_id + 1;
@@ -237,7 +237,7 @@ static void _dpu_crtc_rp_duplicate(struct dpu_crtc_respool *rp,
 		dup_res->val = res->val;
 		dup_res->ops = res->ops;
 		dup_res->flags = DPU_CRTC_RES_FLAG_FREE;
-		DPU_DEBUG("crtc%d.%u dup res:0x%x/0x%llx/%pK/%d\n",
+		DRM_DEV_DEBUG("crtc%d.%u dup res:0x%x/0x%llx/%pK/%d\n",
 				crtc->base.id, dup_rp->sequence_id,
 				dup_res->type, dup_res->tag, dup_res->val,
 				atomic_read(&dup_res->refcount));
@@ -264,7 +264,7 @@ static void _dpu_crtc_rp_reset(struct dpu_crtc_respool *rp,
 		struct mutex *rp_lock, struct list_head *rp_head)
 {
 	if (!rp || !rp_lock || !rp_head) {
-		DPU_ERROR("invalid resource pool\n");
+		DRM_DEV_ERROR("invalid resource pool\n");
 		return;
 	}
 
@@ -284,7 +284,7 @@ static void dpu_crtc_destroy(struct drm_crtc *crtc)
 {
 	struct dpu_crtc *dpu_crtc = to_dpu_crtc(crtc);
 
-	DPU_DEBUG("\n");
+	DRM_DEV_DEBUG("\n");
 
 	if (!crtc)
 		return;
@@ -352,7 +352,7 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 	bool bg_alpha_enable = false;
 
 	if (!dpu_crtc || !mixer) {
-		DPU_ERROR("invalid dpu_crtc or mixer\n");
+		DRM_DEV_ERROR("invalid dpu_crtc or mixer\n");
 		return;
 	}
 
@@ -371,7 +371,7 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 
 		dpu_plane_get_ctl_flush(plane, ctl, &flush_mask);
 
-		DPU_DEBUG("crtc %d stage:%d - plane %d sspp %d fb %d\n",
+		DRM_DEV_DEBUG("crtc %d stage:%d - plane %d sspp %d fb %d\n",
 				crtc->base.id,
 				pstate->stage,
 				plane->base.id,
@@ -380,7 +380,7 @@ static void _dpu_crtc_blend_setup_mixer(struct drm_crtc *crtc,
 
 		format = to_dpu_format(msm_framebuffer_format(pstate->base.fb));
 		if (!format) {
-			DPU_ERROR("invalid format\n");
+			DRM_DEV_ERROR("invalid format\n");
 			return;
 		}
 
@@ -437,16 +437,16 @@ static void _dpu_crtc_blend_setup(struct drm_crtc *crtc)
 	dpu_crtc_state = to_dpu_crtc_state(crtc->state);
 	mixer = dpu_crtc->mixers;
 
-	DPU_DEBUG("%s\n", dpu_crtc->name);
+	DRM_DEV_DEBUG("%s\n", dpu_crtc->name);
 
 	if (dpu_crtc->num_mixers > CRTC_DUAL_MIXERS) {
-		DPU_ERROR("invalid number mixers: %d\n", dpu_crtc->num_mixers);
+		DRM_DEV_ERROR("invalid number mixers: %d\n", dpu_crtc->num_mixers);
 		return;
 	}
 
 	for (i = 0; i < dpu_crtc->num_mixers; i++) {
 		if (!mixer[i].hw_lm || !mixer[i].hw_ctl) {
-			DPU_ERROR("invalid lm or ctl assigned to mixer\n");
+			DRM_DEV_ERROR("invalid lm or ctl assigned to mixer\n");
 			return;
 		}
 		mixer[i].mixer_op_mode = 0;
@@ -473,7 +473,7 @@ static void _dpu_crtc_blend_setup(struct drm_crtc *crtc)
 		/* stage config flush mask */
 		ctl->ops.update_pending_flush(ctl, mixer[i].flush_mask);
 
-		DPU_DEBUG("lm %d, op_mode 0x%X, ctl %d, flush mask 0x%x\n",
+		DRM_DEV_DEBUG("lm %d, op_mode 0x%X, ctl %d, flush mask 0x%x\n",
 			mixer[i].hw_lm->idx - LM_0,
 			mixer[i].mixer_op_mode,
 			ctl->idx - CTL_0,
@@ -515,7 +515,7 @@ enum dpu_intf_mode dpu_crtc_get_intf_mode(struct drm_crtc *crtc)
 	struct drm_encoder *encoder;
 
 	if (!crtc || !crtc->dev) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return INTF_MODE_NONE;
 	}
 
@@ -552,13 +552,13 @@ static void dpu_crtc_frame_event_work(struct kthread_work *work)
 	bool frame_done = false;
 
 	if (!work) {
-		DPU_ERROR("invalid work handle\n");
+		DRM_DEV_ERROR("invalid work handle\n");
 		return;
 	}
 
 	fevent = container_of(work, struct dpu_crtc_frame_event, work);
 	if (!fevent->crtc || !fevent->crtc->state) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 
@@ -567,7 +567,7 @@ static void dpu_crtc_frame_event_work(struct kthread_work *work)
 
 	dpu_kms = _dpu_crtc_get_kms(crtc);
 	if (!dpu_kms) {
-		DPU_ERROR("invalid kms handle\n");
+		DRM_DEV_ERROR("invalid kms handle\n");
 		return;
 	}
 	priv = dpu_kms->dev->dev_private;
@@ -606,7 +606,7 @@ static void dpu_crtc_frame_event_work(struct kthread_work *work)
 	}
 
 	if (fevent->event & DPU_ENCODER_FRAME_EVENT_PANEL_DEAD)
-		DPU_ERROR("crtc%d ts:%lld received panel dead event\n",
+		DRM_DEV_ERROR("crtc%d ts:%lld received panel dead event\n",
 				crtc->base.id, ktime_to_ns(fevent->ts));
 
 	if (frame_done)
@@ -637,7 +637,7 @@ static void dpu_crtc_frame_event_cb(void *data, u32 event)
 	u32 crtc_id;
 
 	if (!crtc || !crtc->dev || !crtc->dev->dev_private) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return;
 	}
 
@@ -673,7 +673,7 @@ void dpu_crtc_complete_commit(struct drm_crtc *crtc,
 		struct drm_crtc_state *old_state)
 {
 	if (!crtc || !crtc->state) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 	trace_dpu_crtc_complete_commit(DRMID(crtc));
@@ -704,7 +704,7 @@ static void _dpu_crtc_setup_mixer_for_encoder(
 
 		/* CTL may be <= LMs, if <, multiple LMs controlled by 1 CTL */
 		if (!dpu_rm_get_hw(rm, &ctl_iter)) {
-			DPU_DEBUG("no ctl assigned to lm %d, using previous\n",
+			DRM_DEV_DEBUG("no ctl assigned to lm %d, using previous\n",
 					mixer->hw_lm->idx - LM_0);
 			mixer->hw_ctl = last_valid_ctl;
 		} else {
@@ -714,7 +714,7 @@ static void _dpu_crtc_setup_mixer_for_encoder(
 
 		/* Shouldn't happen, mixers are always >= ctls */
 		if (!mixer->hw_ctl) {
-			DPU_ERROR("no valid ctls found for lm %d\n",
+			DRM_DEV_ERROR("no valid ctls found for lm %d\n",
 					mixer->hw_lm->idx - LM_0);
 			return;
 		}
@@ -722,9 +722,9 @@ static void _dpu_crtc_setup_mixer_for_encoder(
 		mixer->encoder = enc;
 
 		dpu_crtc->num_mixers++;
-		DPU_DEBUG("setup mixer %d: lm %d\n",
+		DRM_DEV_DEBUG("setup mixer %d: lm %d\n",
 				i, mixer->hw_lm->idx - LM_0);
-		DPU_DEBUG("setup mixer %d: ctl %d\n",
+		DRM_DEV_DEBUG("setup mixer %d: ctl %d\n",
 				i, mixer->hw_ctl->idx - CTL_0);
 	}
 }
@@ -760,7 +760,7 @@ static void _dpu_crtc_setup_lm_bounds(struct drm_crtc *crtc,
 	int i;
 
 	if (!crtc || !state) {
-		DPU_ERROR("invalid args\n");
+		DRM_DEV_ERROR("invalid args\n");
 		return;
 	}
 
@@ -793,17 +793,17 @@ static void dpu_crtc_atomic_begin(struct drm_crtc *crtc,
 	struct dpu_crtc_smmu_state_data *smmu_state;
 
 	if (!crtc) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 
 	if (!crtc->state->enable) {
-		DPU_DEBUG("crtc%d -> enable %d, skip atomic_begin\n",
+		DRM_DEV_DEBUG("crtc%d -> enable %d, skip atomic_begin\n",
 				crtc->base.id, crtc->state->enable);
 		return;
 	}
 
-	DPU_DEBUG("crtc%d\n", crtc->base.id);
+	DRM_DEV_DEBUG("crtc%d\n", crtc->base.id);
 
 	dpu_crtc = to_dpu_crtc(crtc);
 	dev = crtc->dev;
@@ -862,17 +862,17 @@ static void dpu_crtc_atomic_flush(struct drm_crtc *crtc,
 	struct dpu_crtc_state *cstate;
 
 	if (!crtc || !crtc->dev || !crtc->dev->dev_private) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 
 	if (!crtc->state->enable) {
-		DPU_DEBUG("crtc%d -> enable %d, skip atomic_flush\n",
+		DRM_DEV_DEBUG("crtc%d -> enable %d, skip atomic_flush\n",
 				crtc->base.id, crtc->state->enable);
 		return;
 	}
 
-	DPU_DEBUG("crtc%d\n", crtc->base.id);
+	DRM_DEV_DEBUG("crtc%d\n", crtc->base.id);
 
 	dpu_crtc = to_dpu_crtc(crtc);
 	cstate = to_dpu_crtc_state(crtc->state);
@@ -880,14 +880,14 @@ static void dpu_crtc_atomic_flush(struct drm_crtc *crtc,
 	priv = dev->dev_private;
 
 	if (crtc->index >= ARRAY_SIZE(priv->event_thread)) {
-		DPU_ERROR("invalid crtc index[%d]\n", crtc->index);
+		DRM_DEV_ERROR("invalid crtc index[%d]\n", crtc->index);
 		return;
 	}
 
 	event_thread = &priv->event_thread[crtc->index];
 
 	if (dpu_crtc->event) {
-		DPU_DEBUG("already received dpu_crtc->event\n");
+		DRM_DEV_DEBUG("already received dpu_crtc->event\n");
 	} else {
 		spin_lock_irqsave(&dev->event_lock, flags);
 		dpu_crtc->event = crtc->state->event;
@@ -942,14 +942,14 @@ static void dpu_crtc_destroy_state(struct drm_crtc *crtc,
 	struct dpu_crtc_state *cstate;
 
 	if (!crtc || !state) {
-		DPU_ERROR("invalid argument(s)\n");
+		DRM_DEV_ERROR("invalid argument(s)\n");
 		return;
 	}
 
 	dpu_crtc = to_dpu_crtc(crtc);
 	cstate = to_dpu_crtc_state(state);
 
-	DPU_DEBUG("crtc%d\n", crtc->base.id);
+	DRM_DEV_DEBUG("crtc%d\n", crtc->base.id);
 
 	_dpu_crtc_rp_destroy(&cstate->rp);
 
@@ -964,13 +964,13 @@ static int _dpu_crtc_wait_for_frame_done(struct drm_crtc *crtc)
 	int ret, rc = 0;
 
 	if (!crtc) {
-		DPU_ERROR("invalid argument\n");
+		DRM_DEV_ERROR("invalid argument\n");
 		return -EINVAL;
 	}
 	dpu_crtc = to_dpu_crtc(crtc);
 
 	if (!atomic_read(&dpu_crtc->frame_pending)) {
-		DPU_DEBUG("no frames pending\n");
+		DRM_DEV_DEBUG("no frames pending\n");
 		return 0;
 	}
 
@@ -997,7 +997,7 @@ void dpu_crtc_commit_kickoff(struct drm_crtc *crtc)
 	int ret;
 
 	if (!crtc) {
-		DPU_ERROR("invalid argument\n");
+		DRM_DEV_ERROR("invalid argument\n");
 		return;
 	}
 	dev = crtc->dev;
@@ -1005,7 +1005,7 @@ void dpu_crtc_commit_kickoff(struct drm_crtc *crtc)
 	dpu_kms = _dpu_crtc_get_kms(crtc);
 
 	if (!dpu_kms || !dpu_kms->dev || !dpu_kms->dev->dev_private) {
-		DPU_ERROR("invalid argument\n");
+		DRM_DEV_ERROR("invalid argument\n");
 		return;
 	}
 
@@ -1040,7 +1040,7 @@ void dpu_crtc_commit_kickoff(struct drm_crtc *crtc)
 	ret = _dpu_crtc_wait_for_frame_done(crtc);
 	DPU_ATRACE_END("wait_for_frame_done_event");
 	if (ret) {
-		DPU_ERROR("crtc%d wait for frame done failed;frame_pending%d\n",
+		DRM_DEV_ERROR("crtc%d wait for frame done failed;frame_pending%d\n",
 				crtc->base.id,
 				atomic_read(&dpu_crtc->frame_pending));
 		goto end;
@@ -1048,9 +1048,9 @@ void dpu_crtc_commit_kickoff(struct drm_crtc *crtc)
 
 	if (atomic_inc_return(&dpu_crtc->frame_pending) == 1) {
 		/* acquire bandwidth and other resources */
-		DPU_DEBUG("crtc%d first commit\n", crtc->base.id);
+		DRM_DEV_DEBUG("crtc%d first commit\n", crtc->base.id);
 	} else
-		DPU_DEBUG("crtc%d commit\n", crtc->base.id);
+		DRM_DEV_DEBUG("crtc%d commit\n", crtc->base.id);
 
 	dpu_crtc->play_count++;
 
@@ -1083,7 +1083,7 @@ static int _dpu_crtc_vblank_enable_no_lock(
 	struct drm_encoder *enc;
 
 	if (!dpu_crtc) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return -EINVAL;
 	}
 
@@ -1145,14 +1145,14 @@ static void _dpu_crtc_set_suspend(struct drm_crtc *crtc, bool enable)
 	int ret = 0;
 
 	if (!crtc || !crtc->dev || !crtc->dev->dev_private) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 	dpu_crtc = to_dpu_crtc(crtc);
 	priv = crtc->dev->dev_private;
 
 	if (!priv->kms) {
-		DPU_ERROR("invalid crtc kms\n");
+		DRM_DEV_ERROR("invalid crtc kms\n");
 		return;
 	}
 	dpu_kms = to_dpu_kms(priv->kms);
@@ -1167,12 +1167,12 @@ static void _dpu_crtc_set_suspend(struct drm_crtc *crtc, bool enable)
 	 */
 	trace_dpu_crtc_set_suspend(DRMID(&dpu_crtc->base), enable, dpu_crtc);
 	if (dpu_crtc->suspend == enable)
-		DPU_DEBUG("crtc%d suspend already set to %d, ignoring update\n",
+		DRM_DEV_DEBUG("crtc%d suspend already set to %d, ignoring update\n",
 				crtc->base.id, enable);
 	else if (dpu_crtc->enabled && dpu_crtc->vblank_requested) {
 		ret = _dpu_crtc_vblank_enable_no_lock(dpu_crtc, !enable);
 		if (ret)
-			DPU_ERROR("%s vblank enable failed: %d\n",
+			DRM_DEV_ERROR("%s vblank enable failed: %d\n",
 					dpu_crtc->name, ret);
 	}
 
@@ -1191,7 +1191,7 @@ static struct drm_crtc_state *dpu_crtc_duplicate_state(struct drm_crtc *crtc)
 	struct dpu_crtc_state *cstate, *old_cstate;
 
 	if (!crtc || !crtc->state) {
-		DPU_ERROR("invalid argument(s)\n");
+		DRM_DEV_ERROR("invalid argument(s)\n");
 		return NULL;
 	}
 
@@ -1199,7 +1199,7 @@ static struct drm_crtc_state *dpu_crtc_duplicate_state(struct drm_crtc *crtc)
 	old_cstate = to_dpu_crtc_state(crtc->state);
 	cstate = kmemdup(old_cstate, sizeof(*old_cstate), GFP_KERNEL);
 	if (!cstate) {
-		DPU_ERROR("failed to allocate state\n");
+		DRM_DEV_ERROR("failed to allocate state\n");
 		return NULL;
 	}
 
@@ -1223,7 +1223,7 @@ static void dpu_crtc_reset(struct drm_crtc *crtc)
 	struct dpu_crtc_state *cstate;
 
 	if (!crtc) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 
@@ -1240,7 +1240,7 @@ static void dpu_crtc_reset(struct drm_crtc *crtc)
 	dpu_crtc = to_dpu_crtc(crtc);
 	cstate = kzalloc(sizeof(*cstate), GFP_KERNEL);
 	if (!cstate) {
-		DPU_ERROR("failed to allocate state\n");
+		DRM_DEV_ERROR("failed to allocate state\n");
 		return;
 	}
 
@@ -1260,7 +1260,7 @@ static void dpu_crtc_handle_power_event(u32 event_type, void *arg)
 	u32 i, misr_status;
 
 	if (!crtc) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 	dpu_crtc = to_dpu_crtc(crtc);
@@ -1308,7 +1308,7 @@ static void dpu_crtc_handle_power_event(u32 event_type, void *arg)
 		 */
 		break;
 	default:
-		DPU_DEBUG("event:%d not handled\n", event_type);
+		DRM_DEV_DEBUG("event:%d not handled\n", event_type);
 		break;
 	}
 
@@ -1326,7 +1326,7 @@ static void dpu_crtc_disable(struct drm_crtc *crtc)
 	unsigned long flags;
 
 	if (!crtc || !crtc->dev || !crtc->dev->dev_private || !crtc->state) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 	dpu_crtc = to_dpu_crtc(crtc);
@@ -1346,7 +1346,7 @@ static void dpu_crtc_disable(struct drm_crtc *crtc)
 
 	/* wait for frame_event_done completion */
 	if (_dpu_crtc_wait_for_frame_done(crtc))
-		DPU_ERROR("crtc%d wait for frame done failed;frame_pending%d\n",
+		DRM_DEV_ERROR("crtc%d wait for frame done failed;frame_pending%d\n",
 				crtc->base.id,
 				atomic_read(&dpu_crtc->frame_pending));
 
@@ -1355,7 +1355,7 @@ static void dpu_crtc_disable(struct drm_crtc *crtc)
 			dpu_crtc->vblank_requested) {
 		ret = _dpu_crtc_vblank_enable_no_lock(dpu_crtc, false);
 		if (ret)
-			DPU_ERROR("%s vblank enable failed: %d\n",
+			DRM_DEV_ERROR("%s vblank enable failed: %d\n",
 					dpu_crtc->name, ret);
 	}
 	dpu_crtc->enabled = false;
@@ -1406,7 +1406,7 @@ static void dpu_crtc_enable(struct drm_crtc *crtc,
 	int ret;
 
 	if (!crtc || !crtc->dev || !crtc->dev->dev_private) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return;
 	}
 	priv = crtc->dev->dev_private;
@@ -1427,7 +1427,7 @@ static void dpu_crtc_enable(struct drm_crtc *crtc,
 			dpu_crtc->vblank_requested) {
 		ret = _dpu_crtc_vblank_enable_no_lock(dpu_crtc, true);
 		if (ret)
-			DPU_ERROR("%s vblank enable failed: %d\n",
+			DRM_DEV_ERROR("%s vblank enable failed: %d\n",
 					dpu_crtc->name, ret);
 	}
 	dpu_crtc->enabled = true;
@@ -1472,7 +1472,7 @@ static int dpu_crtc_atomic_check(struct drm_crtc *crtc,
 	struct drm_rect crtc_rect = { 0 };
 
 	if (!crtc) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return -EINVAL;
 	}
 
@@ -1482,13 +1482,13 @@ static int dpu_crtc_atomic_check(struct drm_crtc *crtc,
 	cstate = to_dpu_crtc_state(state);
 
 	if (!state->enable || !state->active) {
-		DPU_DEBUG("crtc%d -> enable %d, active %d, skip atomic_check\n",
+		DRM_DEV_DEBUG("crtc%d -> enable %d, active %d, skip atomic_check\n",
 				crtc->base.id, state->enable, state->active);
 		goto end;
 	}
 
 	mode = &state->adjusted_mode;
-	DPU_DEBUG("%s: check", dpu_crtc->name);
+	DRM_DEV_DEBUG("%s: check", dpu_crtc->name);
 
 	/* force a full mode set if active state changed */
 	if (state->active_changed)
@@ -1509,7 +1509,7 @@ static int dpu_crtc_atomic_check(struct drm_crtc *crtc,
 
 		if (IS_ERR_OR_NULL(pstate)) {
 			rc = PTR_ERR(pstate);
-			DPU_ERROR("%s: failed to get plane%d state, %d\n",
+			DRM_DEV_ERROR("%s: failed to get plane%d state, %d\n",
 					dpu_crtc->name, plane->base.id, rc);
 			goto end;
 		}
@@ -1537,8 +1537,8 @@ static int dpu_crtc_atomic_check(struct drm_crtc *crtc,
 		dst = drm_plane_state_dest(pstate);
 		if (!drm_rect_intersect(&clip, &dst) ||
 		    !drm_rect_equals(&clip, &dst)) {
-			DPU_ERROR("invalid vertical/horizontal destination\n");
-			DPU_ERROR("display: " DRM_RECT_FMT " plane: "
+			DRM_DEV_ERROR("invalid vertical/horizontal destination\n");
+			DRM_DEV_ERROR("display: " DRM_RECT_FMT " plane: "
 				  DRM_RECT_FMT "\n", DRM_RECT_ARG(&crtc_rect),
 				  DRM_RECT_ARG(&dst));
 			rc = -E2BIG;
@@ -1551,7 +1551,7 @@ static int dpu_crtc_atomic_check(struct drm_crtc *crtc,
 			dpu_plane_clear_multirect(pipe_staged[i]);
 
 			if (is_dpu_plane_virtual(pipe_staged[i]->plane)) {
-				DPU_ERROR(
+				DRM_DEV_ERROR(
 					"r1 only virt plane:%d not supported\n",
 					pipe_staged[i]->plane->base.id);
 				rc  = -EINVAL;
@@ -1571,13 +1571,13 @@ static int dpu_crtc_atomic_check(struct drm_crtc *crtc,
 
 		/* verify z_pos setting before using it */
 		if (z_pos >= DPU_STAGE_MAX - DPU_STAGE_0) {
-			DPU_ERROR("> %d plane stages assigned\n",
+			DRM_DEV_ERROR("> %d plane stages assigned\n",
 					DPU_STAGE_MAX - DPU_STAGE_0);
 			rc = -EINVAL;
 			goto end;
 		} else if (pstates[i].drm_pstate->crtc_x < mixer_width) {
 			if (left_zpos_cnt == 2) {
-				DPU_ERROR("> 2 planes @ stage %d on left\n",
+				DRM_DEV_ERROR("> 2 planes @ stage %d on left\n",
 					z_pos);
 				rc = -EINVAL;
 				goto end;
@@ -1586,7 +1586,7 @@ static int dpu_crtc_atomic_check(struct drm_crtc *crtc,
 
 		} else {
 			if (right_zpos_cnt == 2) {
-				DPU_ERROR("> 2 planes @ stage %d on right\n",
+				DRM_DEV_ERROR("> 2 planes @ stage %d on right\n",
 					z_pos);
 				rc = -EINVAL;
 				goto end;
@@ -1595,12 +1595,12 @@ static int dpu_crtc_atomic_check(struct drm_crtc *crtc,
 		}
 
 		pstates[i].dpu_pstate->stage = z_pos + DPU_STAGE_0;
-		DPU_DEBUG("%s: zpos %d", dpu_crtc->name, z_pos);
+		DRM_DEV_DEBUG("%s: zpos %d", dpu_crtc->name, z_pos);
 	}
 
 	for (i = 0; i < multirect_count; i++) {
 		if (dpu_plane_validate_multirect_v2(&multirect_plane[i])) {
-			DPU_ERROR(
+			DRM_DEV_ERROR(
 			"multirect validation failed for planes (%d - %d)\n",
 					multirect_plane[i].r0->plane->base.id,
 					multirect_plane[i].r1->plane->base.id);
@@ -1611,7 +1611,7 @@ static int dpu_crtc_atomic_check(struct drm_crtc *crtc,
 
 	rc = dpu_core_perf_crtc_check(crtc, state);
 	if (rc) {
-		DPU_ERROR("crtc%d failed performance check %d\n",
+		DRM_DEV_ERROR("crtc%d failed performance check %d\n",
 				crtc->base.id, rc);
 		goto end;
 	}
@@ -1653,13 +1653,13 @@ static int dpu_crtc_atomic_check(struct drm_crtc *crtc,
 		 * - planes in source split must have same dest yoff and height
 		 */
 		if (right_pid < left_pid) {
-			DPU_ERROR(
+			DRM_DEV_ERROR(
 				"invalid src split cfg. priority mismatch. stage: %d left: %d right: %d\n",
 				stage, left_pid, right_pid);
 			rc = -EINVAL;
 			goto end;
 		} else if (right_rect.x1 != drm_rect_width(&left_rect)) {
-			DPU_ERROR("non-contiguous coordinates for src split. "
+			DRM_DEV_ERROR("non-contiguous coordinates for src split. "
 				  "stage: %d left: " DRM_RECT_FMT " right: "
 				  DRM_RECT_FMT "\n", stage,
 				  DRM_RECT_ARG(&left_rect),
@@ -1668,7 +1668,7 @@ static int dpu_crtc_atomic_check(struct drm_crtc *crtc,
 			goto end;
 		} else if (left_rect.y1 != right_rect.y1 ||
 			   drm_rect_height(&left_rect) != drm_rect_height(&right_rect)) {
-			DPU_ERROR("source split at stage: %d. invalid "
+			DRM_DEV_ERROR("source split at stage: %d. invalid "
 				  "yoff/height: left: " DRM_RECT_FMT " right: "
 				  DRM_RECT_FMT "\n", stage,
 				  DRM_RECT_ARG(&left_rect),
@@ -1690,7 +1690,7 @@ int dpu_crtc_vblank(struct drm_crtc *crtc, bool en)
 	int ret;
 
 	if (!crtc) {
-		DPU_ERROR("invalid crtc\n");
+		DRM_DEV_ERROR("invalid crtc\n");
 		return -EINVAL;
 	}
 	dpu_crtc = to_dpu_crtc(crtc);
@@ -1700,7 +1700,7 @@ int dpu_crtc_vblank(struct drm_crtc *crtc, bool en)
 	if (dpu_crtc->enabled && !dpu_crtc->suspend) {
 		ret = _dpu_crtc_vblank_enable_no_lock(dpu_crtc, en);
 		if (ret)
-			DPU_ERROR("%s vblank enable failed: %d\n",
+			DRM_DEV_ERROR("%s vblank enable failed: %d\n",
 					dpu_crtc->name, ret);
 	}
 	dpu_crtc->vblank_requested = en;
@@ -1847,7 +1847,7 @@ static ssize_t _dpu_crtc_misr_setup(struct file *file,
 	dpu_crtc = file->private_data;
 	buff_copy = min_t(size_t, count, MISR_BUFF_SIZE);
 	if (copy_from_user(buf, user_buf, buff_copy)) {
-		DPU_ERROR("buffer copy failed\n");
+		DRM_DEV_ERROR("buffer copy failed\n");
 		return -EINVAL;
 	}
 
@@ -2133,6 +2133,6 @@ struct drm_crtc *dpu_crtc_init(struct drm_device *dev, struct drm_plane *plane)
 
 	dpu_crtc->phandle = &kms->phandle;
 
-	DPU_DEBUG("%s: successfully initialized crtc\n", dpu_crtc->name);
+	DRM_DEV_DEBUG("%s: successfully initialized crtc\n", dpu_crtc->name);
 	return crtc;
 }
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
index 1b4de34..5ce5d4d 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c
@@ -35,19 +35,19 @@
 #include "dpu_trace.h"
 #include "dpu_core_irq.h"
 
-#define DPU_DEBUG_ENC(e, fmt, ...) DPU_DEBUG("enc%d " fmt,\
+#define DPU_DEBUG_ENC(e, fmt, ...) DRM_DEV_DEBUG("enc%d " fmt,\
 		(e) ? (e)->base.base.id : -1, ##__VA_ARGS__)
 
-#define DPU_ERROR_ENC(e, fmt, ...) DPU_ERROR("enc%d " fmt,\
+#define DPU_ERROR_ENC(e, fmt, ...) DRM_DEV_ERROR("enc%d " fmt,\
 		(e) ? (e)->base.base.id : -1, ##__VA_ARGS__)
 
-#define DPU_DEBUG_PHYS(p, fmt, ...) DPU_DEBUG("enc%d intf%d pp%d " fmt,\
+#define DPU_DEBUG_PHYS(p, fmt, ...) DRM_DEV_DEBUG("enc%d intf%d pp%d " fmt,\
 		(p) ? (p)->parent->base.id : -1, \
 		(p) ? (p)->intf_idx - INTF_0 : -1, \
 		(p) ? ((p)->hw_pp ? (p)->hw_pp->idx - PINGPONG_0 : -1) : -1, \
 		##__VA_ARGS__)
 
-#define DPU_ERROR_PHYS(p, fmt, ...) DPU_ERROR("enc%d intf%d pp%d " fmt,\
+#define DPU_ERROR_PHYS(p, fmt, ...) DRM_DEV_ERROR("enc%d intf%d pp%d " fmt,\
 		(p) ? (p)->parent->base.id : -1, \
 		(p) ? (p)->intf_idx - INTF_0 : -1, \
 		(p) ? ((p)->hw_pp ? (p)->hw_pp->idx - PINGPONG_0 : -1) : -1, \
@@ -225,19 +225,19 @@ static inline int _dpu_encoder_power_enable(struct dpu_encoder_virt *dpu_enc,
 	struct dpu_kms *dpu_kms;
 
 	if (!dpu_enc) {
-		DPU_ERROR("invalid dpu enc\n");
+		DRM_DEV_ERROR("invalid dpu enc\n");
 		return -EINVAL;
 	}
 
 	drm_enc = &dpu_enc->base;
 	if (!drm_enc->dev || !drm_enc->dev->dev_private) {
-		DPU_ERROR("drm device invalid\n");
+		DRM_DEV_ERROR("drm device invalid\n");
 		return -EINVAL;
 	}
 
 	priv = drm_enc->dev->dev_private;
 	if (!priv->kms) {
-		DPU_ERROR("invalid kms\n");
+		DRM_DEV_ERROR("invalid kms\n");
 		return -EINVAL;
 	}
 
@@ -276,7 +276,7 @@ int dpu_encoder_helper_wait_for_irq(struct dpu_encoder_phys *phys_enc,
 	int ret;
 
 	if (!phys_enc || !wait_info || intr_idx >= INTR_IDX_MAX) {
-		DPU_ERROR("invalid params\n");
+		DRM_DEV_ERROR("invalid params\n");
 		return -EINVAL;
 	}
 	irq = &phys_enc->irq[intr_idx];
@@ -351,7 +351,7 @@ int dpu_encoder_helper_register_irq(struct dpu_encoder_phys *phys_enc,
 	int ret = 0;
 
 	if (!phys_enc || intr_idx >= INTR_IDX_MAX) {
-		DPU_ERROR("invalid params\n");
+		DRM_DEV_ERROR("invalid params\n");
 		return -EINVAL;
 	}
 	irq = &phys_enc->irq[intr_idx];
@@ -406,7 +406,7 @@ int dpu_encoder_helper_unregister_irq(struct dpu_encoder_phys *phys_enc,
 	int ret;
 
 	if (!phys_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return -EINVAL;
 	}
 	irq = &phys_enc->irq[intr_idx];
@@ -450,7 +450,7 @@ void dpu_encoder_get_hw_resources(struct drm_encoder *drm_enc,
 	int i = 0;
 
 	if (!hw_res || !drm_enc || !conn_state) {
-		DPU_ERROR("invalid argument(s), drm_enc %d, res %d, state %d\n",
+		DRM_DEV_ERROR("invalid argument(s), drm_enc %d, res %d, state %d\n",
 				drm_enc != 0, hw_res != 0, conn_state != 0);
 		return;
 	}
@@ -476,7 +476,7 @@ static void dpu_encoder_destroy(struct drm_encoder *drm_enc)
 	int i = 0;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 
@@ -517,7 +517,7 @@ void dpu_encoder_helper_split_config(
 	struct msm_display_info *disp_info;
 
 	if (!phys_enc || !phys_enc->hw_mdptop || !phys_enc->parent) {
-		DPU_ERROR("invalid arg(s), encoder %d\n", phys_enc != 0);
+		DRM_DEV_ERROR("invalid arg(s), encoder %d\n", phys_enc != 0);
 		return;
 	}
 
@@ -608,7 +608,7 @@ static int dpu_encoder_virt_atomic_check(
 	int ret = 0;
 
 	if (!drm_enc || !crtc_state || !conn_state) {
-		DPU_ERROR("invalid arg(s), drm_enc %d, crtc/conn state %d/%d\n",
+		DRM_DEV_ERROR("invalid arg(s), drm_enc %d, crtc/conn state %d/%d\n",
 				drm_enc != 0, crtc_state != 0, conn_state != 0);
 		return -EINVAL;
 	}
@@ -685,11 +685,11 @@ static void _dpu_encoder_update_vsync_source(struct dpu_encoder_virt *dpu_enc,
 	int i;
 
 	if (!dpu_enc || !disp_info) {
-		DPU_ERROR("invalid param dpu_enc:%d or disp_info:%d\n",
+		DRM_DEV_ERROR("invalid param dpu_enc:%d or disp_info:%d\n",
 					dpu_enc != NULL, disp_info != NULL);
 		return;
 	} else if (dpu_enc->num_phys_encs > ARRAY_SIZE(dpu_enc->hw_pp)) {
-		DPU_ERROR("invalid num phys enc %d/%d\n",
+		DRM_DEV_ERROR("invalid num phys enc %d/%d\n",
 				dpu_enc->num_phys_encs,
 				(int) ARRAY_SIZE(dpu_enc->hw_pp));
 		return;
@@ -701,13 +701,13 @@ static void _dpu_encoder_update_vsync_source(struct dpu_encoder_virt *dpu_enc,
 
 	dpu_kms = to_dpu_kms(priv->kms);
 	if (!dpu_kms) {
-		DPU_ERROR("invalid dpu_kms\n");
+		DRM_DEV_ERROR("invalid dpu_kms\n");
 		return;
 	}
 
 	hw_mdptop = dpu_kms->hw_mdp;
 	if (!hw_mdptop) {
-		DPU_ERROR("invalid mdptop\n");
+		DRM_DEV_ERROR("invalid mdptop\n");
 		return;
 	}
 
@@ -732,7 +732,7 @@ static void _dpu_encoder_irq_control(struct drm_encoder *drm_enc, bool enable)
 	int i;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 
@@ -762,7 +762,7 @@ static void _dpu_encoder_resource_control_helper(struct drm_encoder *drm_enc,
 	trace_dpu_enc_rc_helper(DRMID(drm_enc), enable);
 
 	if (!dpu_enc->cur_master) {
-		DPU_ERROR("encoder master not set\n");
+		DRM_DEV_ERROR("encoder master not set\n");
 		return;
 	}
 
@@ -793,7 +793,7 @@ static int dpu_encoder_resource_control(struct drm_encoder *drm_enc,
 
 	if (!drm_enc || !drm_enc->dev || !drm_enc->dev->dev_private ||
 			!drm_enc->crtc) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return -EINVAL;
 	}
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
@@ -802,7 +802,7 @@ static int dpu_encoder_resource_control(struct drm_encoder *drm_enc,
 						MSM_DISPLAY_CAP_VID_MODE;
 
 	if (drm_enc->crtc->index >= ARRAY_SIZE(priv->disp_thread)) {
-		DPU_ERROR("invalid crtc index\n");
+		DRM_DEV_ERROR("invalid crtc index\n");
 		return -EINVAL;
 	}
 	disp_thread = &priv->disp_thread[drm_enc->crtc->index];
@@ -1022,7 +1022,7 @@ static void dpu_encoder_virt_mode_set(struct drm_encoder *drm_enc,
 	int i = 0, ret;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 
@@ -1094,20 +1094,20 @@ static void _dpu_encoder_virt_enable_helper(struct drm_encoder *drm_enc)
 	struct dpu_kms *dpu_kms;
 
 	if (!drm_enc || !drm_enc->dev || !drm_enc->dev->dev_private) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return;
 	}
 
 	priv = drm_enc->dev->dev_private;
 	dpu_kms = to_dpu_kms(priv->kms);
 	if (!dpu_kms) {
-		DPU_ERROR("invalid dpu_kms\n");
+		DRM_DEV_ERROR("invalid dpu_kms\n");
 		return;
 	}
 
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
 	if (!dpu_enc || !dpu_enc->cur_master) {
-		DPU_ERROR("invalid dpu encoder/master\n");
+		DRM_DEV_ERROR("invalid dpu encoder/master\n");
 		return;
 	}
 
@@ -1132,7 +1132,7 @@ void dpu_encoder_virt_restore(struct drm_encoder *drm_enc)
 	int i;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
@@ -1157,7 +1157,7 @@ static void dpu_encoder_virt_enable(struct drm_encoder *drm_enc)
 	struct drm_display_mode *cur_mode = NULL;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
@@ -1178,7 +1178,7 @@ static void dpu_encoder_virt_enable(struct drm_encoder *drm_enc)
 	}
 
 	if (!dpu_enc->cur_master) {
-		DPU_ERROR("virt encoder has no master! num_phys %d\n", i);
+		DRM_DEV_ERROR("virt encoder has no master! num_phys %d\n", i);
 		return;
 	}
 
@@ -1221,13 +1221,13 @@ static void dpu_encoder_virt_disable(struct drm_encoder *drm_enc)
 	int i = 0;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	} else if (!drm_enc->dev) {
-		DPU_ERROR("invalid dev\n");
+		DRM_DEV_ERROR("invalid dev\n");
 		return;
 	} else if (!drm_enc->dev->dev_private) {
-		DPU_ERROR("invalid dev_private\n");
+		DRM_DEV_ERROR("invalid dev_private\n");
 		return;
 	}
 
@@ -1255,7 +1255,7 @@ static void dpu_encoder_virt_disable(struct drm_encoder *drm_enc)
 
 	/* after phys waits for frame-done, should be no more frames pending */
 	if (atomic_xchg(&dpu_enc->frame_done_timeout, 0)) {
-		DPU_ERROR("enc%d timeout pending\n", drm_enc->base.id);
+		DRM_DEV_ERROR("enc%d timeout pending\n", drm_enc->base.id);
 		del_timer_sync(&dpu_enc->frame_done_timer);
 	}
 
@@ -1333,7 +1333,7 @@ void dpu_encoder_register_vblank_callback(struct drm_encoder *drm_enc,
 	enable = vbl_cb ? true : false;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	trace_dpu_enc_vblank_cb(DRMID(drm_enc), enable);
@@ -1362,7 +1362,7 @@ void dpu_encoder_register_frame_event_callback(struct drm_encoder *drm_enc,
 	enable = frame_event_cb ? true : false;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	trace_dpu_enc_frame_event_cb(DRMID(drm_enc), enable);
@@ -1428,7 +1428,7 @@ static void dpu_encoder_off_work(struct kthread_work *work)
 			struct dpu_encoder_virt, delayed_off_work.work);
 
 	if (!dpu_enc) {
-		DPU_ERROR("invalid dpu encoder\n");
+		DRM_DEV_ERROR("invalid dpu encoder\n");
 		return;
 	}
 
@@ -1453,19 +1453,19 @@ static inline void _dpu_encoder_trigger_flush(struct drm_encoder *drm_enc,
 	u32 ret = UINT_MAX;
 
 	if (!drm_enc || !phys) {
-		DPU_ERROR("invalid argument(s), drm_enc %d, phys_enc %d\n",
+		DRM_DEV_ERROR("invalid argument(s), drm_enc %d, phys_enc %d\n",
 				drm_enc != 0, phys != 0);
 		return;
 	}
 
 	if (!phys->hw_pp) {
-		DPU_ERROR("invalid pingpong hw\n");
+		DRM_DEV_ERROR("invalid pingpong hw\n");
 		return;
 	}
 
 	ctl = phys->hw_ctl;
 	if (!ctl || !ctl->ops.trigger_flush) {
-		DPU_ERROR("missing trigger cb\n");
+		DRM_DEV_ERROR("missing trigger cb\n");
 		return;
 	}
 
@@ -1490,12 +1490,12 @@ static inline void _dpu_encoder_trigger_flush(struct drm_encoder *drm_enc,
 static inline void _dpu_encoder_trigger_start(struct dpu_encoder_phys *phys)
 {
 	if (!phys) {
-		DPU_ERROR("invalid argument(s)\n");
+		DRM_DEV_ERROR("invalid argument(s)\n");
 		return;
 	}
 
 	if (!phys->hw_pp) {
-		DPU_ERROR("invalid pingpong hw\n");
+		DRM_DEV_ERROR("invalid pingpong hw\n");
 		return;
 	}
 
@@ -1508,7 +1508,7 @@ void dpu_encoder_helper_trigger_start(struct dpu_encoder_phys *phys_enc)
 	struct dpu_hw_ctl *ctl;
 
 	if (!phys_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 
@@ -1551,7 +1551,7 @@ void dpu_encoder_helper_hw_reset(struct dpu_encoder_phys *phys_enc)
 	int rc;
 
 	if (!phys_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	dpu_enc = to_dpu_encoder_virt(phys_enc->parent);
@@ -1588,7 +1588,7 @@ static void _dpu_encoder_kickoff_phys(struct dpu_encoder_virt *dpu_enc)
 	unsigned long lock_flags;
 
 	if (!dpu_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 
@@ -1639,7 +1639,7 @@ void dpu_encoder_trigger_kickoff_pending(struct drm_encoder *drm_enc)
 	struct msm_display_info *disp_info;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
@@ -1676,19 +1676,19 @@ static u32 _dpu_encoder_calculate_linetime(struct dpu_encoder_virt *dpu_enc,
 		return 0;
 
 	if (!dpu_enc->cur_master->ops.get_line_count) {
-		DPU_ERROR("get_line_count function not defined\n");
+		DRM_DEV_ERROR("get_line_count function not defined\n");
 		return 0;
 	}
 
 	pclk_rate = mode->clock; /* pixel clock in kHz */
 	if (pclk_rate == 0) {
-		DPU_ERROR("pclk is 0, cannot calculate line time\n");
+		DRM_DEV_ERROR("pclk is 0, cannot calculate line time\n");
 		return 0;
 	}
 
 	pclk_period = DIV_ROUND_UP_ULL(1000000000ull, pclk_rate);
 	if (pclk_period == 0) {
-		DPU_ERROR("pclk period is 0\n");
+		DRM_DEV_ERROR("pclk period is 0\n");
 		return 0;
 	}
 
@@ -1698,7 +1698,7 @@ static u32 _dpu_encoder_calculate_linetime(struct dpu_encoder_virt *dpu_enc,
 	 */
 	line_time = (pclk_period * mode->htotal) / 1000;
 	if (line_time == 0) {
-		DPU_ERROR("line time calculation is 0\n");
+		DRM_DEV_ERROR("line time calculation is 0\n");
 		return 0;
 	}
 
@@ -1722,7 +1722,7 @@ static int _dpu_encoder_wakeup_time(struct drm_encoder *drm_enc,
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
 
 	if (!drm_enc->crtc || !drm_enc->crtc->state) {
-		DPU_ERROR("crtc/crtc state object is NULL\n");
+		DRM_DEV_ERROR("crtc/crtc state object is NULL\n");
 		return -EINVAL;
 	}
 	mode = &drm_enc->crtc->state->adjusted_mode;
@@ -1740,7 +1740,7 @@ static int _dpu_encoder_wakeup_time(struct drm_encoder *drm_enc,
 		time_to_vsync = line_time * (vtotal - cur_line);
 
 	if (time_to_vsync == 0) {
-		DPU_ERROR("time to vsync should not be zero, vtotal=%d\n",
+		DRM_DEV_ERROR("time to vsync should not be zero, vtotal=%d\n",
 				vtotal);
 		return -EINVAL;
 	}
@@ -1766,19 +1766,19 @@ static void dpu_encoder_vsync_event_handler(struct timer_list *t)
 
 	if (!drm_enc->dev || !drm_enc->dev->dev_private ||
 			!drm_enc->crtc) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return;
 	}
 
 	priv = drm_enc->dev->dev_private;
 
 	if (drm_enc->crtc->index >= ARRAY_SIZE(priv->event_thread)) {
-		DPU_ERROR("invalid crtc index\n");
+		DRM_DEV_ERROR("invalid crtc index\n");
 		return;
 	}
 	event_thread = &priv->event_thread[drm_enc->crtc->index];
 	if (!event_thread) {
-		DPU_ERROR("event_thread not found for crtc:%d\n",
+		DRM_DEV_ERROR("event_thread not found for crtc:%d\n",
 				drm_enc->crtc->index);
 		return;
 	}
@@ -1793,7 +1793,7 @@ static void dpu_encoder_vsync_event_work_handler(struct kthread_work *work)
 	ktime_t wakeup_time;
 
 	if (!dpu_enc) {
-		DPU_ERROR("invalid dpu encoder\n");
+		DRM_DEV_ERROR("invalid dpu encoder\n");
 		return;
 	}
 
@@ -1814,7 +1814,7 @@ void dpu_encoder_prepare_for_kickoff(struct drm_encoder *drm_enc,
 	unsigned int i;
 
 	if (!drm_enc || !params) {
-		DPU_ERROR("invalid args\n");
+		DRM_DEV_ERROR("invalid args\n");
 		return;
 	}
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
@@ -1855,7 +1855,7 @@ void dpu_encoder_kickoff(struct drm_encoder *drm_enc)
 	unsigned int i;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	DPU_ATRACE_BEGIN("encoder_kickoff");
@@ -1897,7 +1897,7 @@ void dpu_encoder_prepare_commit(struct drm_encoder *drm_enc)
 	int i;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
@@ -2085,7 +2085,7 @@ static int _dpu_encoder_init_debugfs(struct drm_encoder *drm_enc)
 	char name[DPU_NAME_SIZE];
 
 	if (!drm_enc || !drm_enc->dev || !drm_enc->dev->dev_private) {
-		DPU_ERROR("invalid encoder or kms\n");
+		DRM_DEV_ERROR("invalid encoder or kms\n");
 		return -EINVAL;
 	}
 
@@ -2215,7 +2215,7 @@ static int dpu_encoder_setup_display(struct dpu_encoder_virt *dpu_enc,
 	struct dpu_enc_phys_init_params phys_params;
 
 	if (!dpu_enc || !dpu_kms) {
-		DPU_ERROR("invalid arg(s), enc %d kms %d\n",
+		DRM_DEV_ERROR("invalid arg(s), enc %d kms %d\n",
 				dpu_enc != 0, dpu_kms != 0);
 		return -EINVAL;
 	}
@@ -2226,7 +2226,7 @@ static int dpu_encoder_setup_display(struct dpu_encoder_virt *dpu_enc,
 	phys_params.parent_ops = &dpu_encoder_parent_ops;
 	phys_params.enc_spinlock = &dpu_enc->enc_spinlock;
 
-	DPU_DEBUG("\n");
+	DRM_DEV_DEBUG("\n");
 
 	if (disp_info->intf_type == DRM_MODE_CONNECTOR_DSI) {
 		*drm_enc_mode = DRM_MODE_ENCODER_DSI;
@@ -2246,7 +2246,7 @@ static int dpu_encoder_setup_display(struct dpu_encoder_virt *dpu_enc,
 
 	dpu_enc->display_num_of_h_tiles = disp_info->num_of_h_tiles;
 
-	DPU_DEBUG("dsi_info->num_of_h_tiles %d\n", disp_info->num_of_h_tiles);
+	DRM_DEV_DEBUG("dsi_info->num_of_h_tiles %d\n", disp_info->num_of_h_tiles);
 
 	if ((disp_info->capabilities & MSM_DISPLAY_CAP_CMD_MODE) ||
 	    (disp_info->capabilities & MSM_DISPLAY_CAP_VID_MODE))
@@ -2271,7 +2271,7 @@ static int dpu_encoder_setup_display(struct dpu_encoder_virt *dpu_enc,
 			phys_params.split_role = ENC_ROLE_SOLO;
 		}
 
-		DPU_DEBUG("h_tile_instance %d = %d, split_role %d\n",
+		DRM_DEV_DEBUG("h_tile_instance %d = %d, split_role %d\n",
 				i, controller_id, phys_params.split_role);
 
 		phys_params.intf_idx = dpu_encoder_get_intf(dpu_kms->catalog,
@@ -2314,7 +2314,7 @@ static void dpu_encoder_frame_done_timeout(struct timer_list *t)
 	u32 event;
 
 	if (!drm_enc->dev || !drm_enc->dev->dev_private) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return;
 	}
 	priv = drm_enc->dev->dev_private;
@@ -2397,7 +2397,7 @@ int dpu_encoder_setup(struct drm_device *dev, struct drm_encoder *enc,
 	return ret;
 
 fail:
-	DPU_ERROR("failed to create encoder\n");
+	DRM_DEV_ERROR("failed to create encoder\n");
 	if (drm_enc)
 		dpu_encoder_destroy(drm_enc);
 
@@ -2436,7 +2436,7 @@ int dpu_encoder_wait_for_event(struct drm_encoder *drm_enc,
 	int i, ret = 0;
 
 	if (!drm_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return -EINVAL;
 	}
 	dpu_enc = to_dpu_encoder_virt(drm_enc);
@@ -2481,7 +2481,7 @@ enum dpu_intf_mode dpu_encoder_get_intf_mode(struct drm_encoder *encoder)
 	int i;
 
 	if (!encoder) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return INTF_MODE_NONE;
 	}
 	dpu_enc = to_dpu_encoder_virt(encoder);
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c
index 3084675..31b48b8 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c
@@ -19,12 +19,12 @@
 #include "dpu_formats.h"
 #include "dpu_trace.h"
 
-#define DPU_DEBUG_CMDENC(e, fmt, ...) DPU_DEBUG("enc%d intf%d " fmt, \
+#define DPU_DEBUG_CMDENC(e, fmt, ...) DRM_DEV_DEBUG("enc%d intf%d " fmt, \
 		(e) && (e)->base.parent ? \
 		(e)->base.parent->base.id : -1, \
 		(e) ? (e)->base.intf_idx - INTF_0 : -1, ##__VA_ARGS__)
 
-#define DPU_ERROR_CMDENC(e, fmt, ...) DPU_ERROR("enc%d intf%d " fmt, \
+#define DPU_ERROR_CMDENC(e, fmt, ...) DRM_DEV_ERROR("enc%d intf%d " fmt, \
 		(e) && (e)->base.parent ? \
 		(e)->base.parent->base.id : -1, \
 		(e) ? (e)->base.intf_idx - INTF_0 : -1, ##__VA_ARGS__)
@@ -201,7 +201,7 @@ static void dpu_encoder_phys_cmd_mode_set(
 	int i, instance;
 
 	if (!phys_enc || !mode || !adj_mode) {
-		DPU_ERROR("invalid args\n");
+		DRM_DEV_ERROR("invalid args\n");
 		return;
 	}
 	phys_enc->cached_mode = *adj_mode;
@@ -286,7 +286,7 @@ static int _dpu_encoder_phys_cmd_wait_for_idle(
 	int ret;
 
 	if (!phys_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return -EINVAL;
 	}
 
@@ -312,7 +312,7 @@ static int dpu_encoder_phys_cmd_control_vblank_irq(
 	int refcount;
 
 	if (!phys_enc || !phys_enc->hw_pp) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return -EINVAL;
 	}
 
@@ -395,7 +395,7 @@ static void dpu_encoder_phys_cmd_tearcheck_config(
 	struct dpu_kms *dpu_kms;
 
 	if (!phys_enc || !phys_enc->hw_pp) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	mode = &phys_enc->cached_mode;
@@ -410,7 +410,7 @@ static void dpu_encoder_phys_cmd_tearcheck_config(
 
 	dpu_kms = phys_enc->dpu_kms;
 	if (!dpu_kms || !dpu_kms->dev || !dpu_kms->dev->dev_private) {
-		DPU_ERROR("invalid device\n");
+		DRM_DEV_ERROR("invalid device\n");
 		return;
 	}
 	priv = dpu_kms->dev->dev_private;
@@ -477,7 +477,7 @@ static void _dpu_encoder_phys_cmd_pingpong_config(
 
 	if (!phys_enc || !phys_enc->hw_ctl || !phys_enc->hw_pp
 			|| !phys_enc->hw_ctl->ops.setup_intf_cfg) {
-		DPU_ERROR("invalid arg(s), enc %d\n", phys_enc != 0);
+		DRM_DEV_ERROR("invalid arg(s), enc %d\n", phys_enc != 0);
 		return;
 	}
 
@@ -506,7 +506,7 @@ static void dpu_encoder_phys_cmd_enable_helper(
 	u32 flush_mask = 0;
 
 	if (!phys_enc || !phys_enc->hw_ctl || !phys_enc->hw_pp) {
-		DPU_ERROR("invalid arg(s), encoder %d\n", phys_enc != 0);
+		DRM_DEV_ERROR("invalid arg(s), encoder %d\n", phys_enc != 0);
 		return;
 	}
 
@@ -531,14 +531,14 @@ static void dpu_encoder_phys_cmd_enable(struct dpu_encoder_phys *phys_enc)
 		to_dpu_encoder_phys_cmd(phys_enc);
 
 	if (!phys_enc || !phys_enc->hw_pp) {
-		DPU_ERROR("invalid phys encoder\n");
+		DRM_DEV_ERROR("invalid phys encoder\n");
 		return;
 	}
 
 	DPU_DEBUG_CMDENC(cmd_enc, "pp %d\n", phys_enc->hw_pp->idx - PINGPONG_0);
 
 	if (phys_enc->enable_state == DPU_ENC_ENABLED) {
-		DPU_ERROR("already enabled\n");
+		DRM_DEV_ERROR("already enabled\n");
 		return;
 	}
 
@@ -587,7 +587,7 @@ static void dpu_encoder_phys_cmd_disable(struct dpu_encoder_phys *phys_enc)
 		to_dpu_encoder_phys_cmd(phys_enc);
 
 	if (!phys_enc || !phys_enc->hw_pp) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	DRM_DEBUG_KMS("id:%u pp:%d state:%d\n", DRMID(phys_enc->parent),
@@ -610,7 +610,7 @@ static void dpu_encoder_phys_cmd_destroy(struct dpu_encoder_phys *phys_enc)
 		to_dpu_encoder_phys_cmd(phys_enc);
 
 	if (!phys_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	kfree(cmd_enc);
@@ -625,12 +625,12 @@ static void dpu_encoder_phys_cmd_get_hw_resources(
 		to_dpu_encoder_phys_cmd(phys_enc);
 
 	if (!phys_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 
 	if ((phys_enc->intf_idx - INTF_0) >= INTF_MAX) {
-		DPU_ERROR("invalid intf idx:%d\n", phys_enc->intf_idx);
+		DRM_DEV_ERROR("invalid intf idx:%d\n", phys_enc->intf_idx);
 		return;
 	}
 
@@ -647,7 +647,7 @@ static void dpu_encoder_phys_cmd_prepare_for_kickoff(
 	int ret;
 
 	if (!phys_enc || !phys_enc->hw_pp) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 	DRM_DEBUG_KMS("id:%u pp:%d pending_cnt:%d\n", DRMID(phys_enc->parent),
@@ -681,7 +681,7 @@ static int _dpu_encoder_phys_cmd_wait_for_ctl_start(
 	int ret;
 
 	if (!phys_enc || !phys_enc->hw_ctl) {
-		DPU_ERROR("invalid argument(s)\n");
+		DRM_DEV_ERROR("invalid argument(s)\n");
 		return -EINVAL;
 	}
 
@@ -827,12 +827,12 @@ struct dpu_encoder_phys *dpu_encoder_phys_cmd_init(
 	struct dpu_encoder_irq *irq;
 	int i, ret = 0;
 
-	DPU_DEBUG("intf %d\n", p->intf_idx - INTF_0);
+	DRM_DEV_DEBUG("intf %d\n", p->intf_idx - INTF_0);
 
 	cmd_enc = kzalloc(sizeof(*cmd_enc), GFP_KERNEL);
 	if (!cmd_enc) {
 		ret = -ENOMEM;
-		DPU_ERROR("failed to allocate\n");
+		DRM_DEV_ERROR("failed to allocate\n");
 		goto fail;
 	}
 	phys_enc = &cmd_enc->base;
@@ -840,7 +840,7 @@ struct dpu_encoder_phys *dpu_encoder_phys_cmd_init(
 	hw_mdp = dpu_rm_get_mdp(&p->dpu_kms->rm);
 	if (IS_ERR_OR_NULL(hw_mdp)) {
 		ret = PTR_ERR(hw_mdp);
-		DPU_ERROR("failed to get mdptop\n");
+		DRM_DEV_ERROR("failed to get mdptop\n");
 		goto fail_mdp_init;
 	}
 	phys_enc->hw_mdptop = hw_mdp;
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c
index 14fc7c2..f645650 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c
@@ -17,13 +17,13 @@
 #include "dpu_formats.h"
 #include "dpu_trace.h"
 
-#define DPU_DEBUG_VIDENC(e, fmt, ...) DPU_DEBUG("enc%d intf%d " fmt, \
+#define DPU_DEBUG_VIDENC(e, fmt, ...) DRM_DEV_DEBUG("enc%d intf%d " fmt, \
 		(e) && (e)->base.parent ? \
 		(e)->base.parent->base.id : -1, \
 		(e) && (e)->hw_intf ? \
 		(e)->hw_intf->idx - INTF_0 : -1, ##__VA_ARGS__)
 
-#define DPU_ERROR_VIDENC(e, fmt, ...) DPU_ERROR("enc%d intf%d " fmt, \
+#define DPU_ERROR_VIDENC(e, fmt, ...) DRM_DEV_ERROR("enc%d intf%d " fmt, \
 		(e) && (e)->base.parent ? \
 		(e)->base.parent->base.id : -1, \
 		(e) && (e)->hw_intf ? \
@@ -56,11 +56,11 @@ static void drm_mode_to_intf_timing_params(
 			|| (mode->vsync_start < mode->vdisplay)
 			|| (mode->hsync_end < mode->hsync_start)
 			|| (mode->vsync_end < mode->vsync_start)) {
-		DPU_ERROR(
+		DRM_DEV_ERROR(
 		    "invalid params - hstart:%d,hend:%d,htot:%d,hdisplay:%d\n",
 				mode->hsync_start, mode->hsync_end,
 				mode->htotal, mode->hdisplay);
-		DPU_ERROR("vstart:%d,vend:%d,vtot:%d,vdisplay:%d\n",
+		DRM_DEV_ERROR("vstart:%d,vend:%d,vtot:%d,vdisplay:%d\n",
 				mode->vsync_start, mode->vsync_end,
 				mode->vtotal, mode->vdisplay);
 		return;
@@ -251,14 +251,14 @@ static void dpu_encoder_phys_vid_setup_timing_engine(
 	struct dpu_hw_intf_cfg intf_cfg = { 0 };
 
 	if (!phys_enc || !phys_enc->hw_ctl->ops.setup_intf_cfg) {
-		DPU_ERROR("invalid encoder %d\n", phys_enc != 0);
+		DRM_DEV_ERROR("invalid encoder %d\n", phys_enc != 0);
 		return;
 	}
 
 	mode = phys_enc->cached_mode;
 	vid_enc = to_dpu_encoder_phys_vid(phys_enc);
 	if (!vid_enc->hw_intf->ops.setup_timing_gen) {
-		DPU_ERROR("timing engine setup is not supported\n");
+		DRM_DEV_ERROR("timing engine setup is not supported\n");
 		return;
 	}
 
@@ -401,7 +401,7 @@ static void dpu_encoder_phys_vid_mode_set(
 	struct dpu_encoder_phys_vid *vid_enc;
 
 	if (!phys_enc || !phys_enc->dpu_kms) {
-		DPU_ERROR("invalid encoder/kms\n");
+		DRM_DEV_ERROR("invalid encoder/kms\n");
 		return;
 	}
 
@@ -441,7 +441,7 @@ static int dpu_encoder_phys_vid_control_vblank_irq(
 	int refcount;
 
 	if (!phys_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return -EINVAL;
 	}
 
@@ -487,7 +487,7 @@ static void dpu_encoder_phys_vid_enable(struct dpu_encoder_phys *phys_enc)
 
 	if (!phys_enc || !phys_enc->parent || !phys_enc->parent->dev ||
 			!phys_enc->parent->dev->dev_private) {
-		DPU_ERROR("invalid encoder/device\n");
+		DRM_DEV_ERROR("invalid encoder/device\n");
 		return;
 	}
 	priv = phys_enc->parent->dev->dev_private;
@@ -496,7 +496,7 @@ static void dpu_encoder_phys_vid_enable(struct dpu_encoder_phys *phys_enc)
 	intf = vid_enc->hw_intf;
 	ctl = phys_enc->hw_ctl;
 	if (!vid_enc->hw_intf || !phys_enc->hw_ctl) {
-		DPU_ERROR("invalid hw_intf %d hw_ctl %d\n",
+		DRM_DEV_ERROR("invalid hw_intf %d hw_ctl %d\n",
 				vid_enc->hw_intf != 0, phys_enc->hw_ctl != 0);
 		return;
 	}
@@ -536,7 +536,7 @@ static void dpu_encoder_phys_vid_destroy(struct dpu_encoder_phys *phys_enc)
 	struct dpu_encoder_phys_vid *vid_enc;
 
 	if (!phys_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 
@@ -553,14 +553,14 @@ static void dpu_encoder_phys_vid_get_hw_resources(
 	struct dpu_encoder_phys_vid *vid_enc;
 
 	if (!phys_enc || !hw_res) {
-		DPU_ERROR("invalid arg(s), enc %d hw_res %d conn_state %d\n",
+		DRM_DEV_ERROR("invalid arg(s), enc %d hw_res %d conn_state %d\n",
 				phys_enc != 0, hw_res != 0, conn_state != 0);
 		return;
 	}
 
 	vid_enc = to_dpu_encoder_phys_vid(phys_enc);
 	if (!vid_enc->hw_intf) {
-		DPU_ERROR("invalid arg(s), hw_intf\n");
+		DRM_DEV_ERROR("invalid arg(s), hw_intf\n");
 		return;
 	}
 
@@ -620,7 +620,7 @@ static void dpu_encoder_phys_vid_prepare_for_kickoff(
 	int rc;
 
 	if (!phys_enc || !params) {
-		DPU_ERROR("invalid encoder/parameters\n");
+		DRM_DEV_ERROR("invalid encoder/parameters\n");
 		return;
 	}
 	vid_enc = to_dpu_encoder_phys_vid(phys_enc);
@@ -651,14 +651,14 @@ static void dpu_encoder_phys_vid_disable(struct dpu_encoder_phys *phys_enc)
 
 	if (!phys_enc || !phys_enc->parent || !phys_enc->parent->dev ||
 			!phys_enc->parent->dev->dev_private) {
-		DPU_ERROR("invalid encoder/device\n");
+		DRM_DEV_ERROR("invalid encoder/device\n");
 		return;
 	}
 	priv = phys_enc->parent->dev->dev_private;
 
 	vid_enc = to_dpu_encoder_phys_vid(phys_enc);
 	if (!vid_enc->hw_intf || !phys_enc->hw_ctl) {
-		DPU_ERROR("invalid hw_intf %d hw_ctl %d\n",
+		DRM_DEV_ERROR("invalid hw_intf %d hw_ctl %d\n",
 				vid_enc->hw_intf != 0, phys_enc->hw_ctl != 0);
 		return;
 	}
@@ -669,7 +669,7 @@ static void dpu_encoder_phys_vid_disable(struct dpu_encoder_phys *phys_enc)
 		return;
 
 	if (phys_enc->enable_state == DPU_ENC_DISABLED) {
-		DPU_ERROR("already disabled\n");
+		DRM_DEV_ERROR("already disabled\n");
 		return;
 	}
 
@@ -707,7 +707,7 @@ static void dpu_encoder_phys_vid_handle_post_kickoff(
 	struct dpu_encoder_phys_vid *vid_enc;
 
 	if (!phys_enc) {
-		DPU_ERROR("invalid encoder\n");
+		DRM_DEV_ERROR("invalid encoder\n");
 		return;
 	}
 
@@ -849,7 +849,7 @@ struct dpu_encoder_phys *dpu_encoder_phys_vid_init(
 	hw_mdp = dpu_rm_get_mdp(&p->dpu_kms->rm);
 	if (IS_ERR_OR_NULL(hw_mdp)) {
 		ret = PTR_ERR(hw_mdp);
-		DPU_ERROR("failed to get mdptop\n");
+		DRM_DEV_ERROR("failed to get mdptop\n");
 		goto fail;
 	}
 	phys_enc->hw_mdptop = hw_mdp;
@@ -871,7 +871,7 @@ struct dpu_encoder_phys *dpu_encoder_phys_vid_init(
 
 	if (!vid_enc->hw_intf) {
 		ret = -EINVAL;
-		DPU_ERROR("failed to get hw_intf\n");
+		DRM_DEV_ERROR("failed to get hw_intf\n");
 		goto fail;
 	}
 
@@ -914,7 +914,7 @@ struct dpu_encoder_phys *dpu_encoder_phys_vid_init(
 	return phys_enc;
 
 fail:
-	DPU_ERROR("failed to create encoder\n");
+	DRM_DEV_ERROR("failed to create encoder\n");
 	if (vid_enc)
 		dpu_encoder_phys_vid_destroy(phys_enc);
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c
index bfcd165..48e2042 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c
@@ -1090,7 +1090,7 @@ const struct dpu_format *dpu_get_dpu_format_ext(
 	 * Currently only support exactly zero or one modifier.
 	 * All planes use the same modifier.
 	 */
-	DPU_DEBUG("plane format modifier 0x%llX\n", modifier);
+	DRM_DEV_DEBUG("plane format modifier 0x%llX\n", modifier);
 
 	switch (modifier) {
 	case 0:
@@ -1100,11 +1100,11 @@ const struct dpu_format *dpu_get_dpu_format_ext(
 	case DRM_FORMAT_MOD_QCOM_COMPRESSED:
 		map = dpu_format_map_ubwc;
 		map_size = ARRAY_SIZE(dpu_format_map_ubwc);
-		DPU_DEBUG("found fmt: %4.4s  DRM_FORMAT_MOD_QCOM_COMPRESSED\n",
+		DRM_DEV_DEBUG("found fmt: %4.4s  DRM_FORMAT_MOD_QCOM_COMPRESSED\n",
 				(char *)&format);
 		break;
 	default:
-		DPU_ERROR("unsupported format modifier %llX\n", modifier);
+		DRM_DEV_ERROR("unsupported format modifier %llX\n", modifier);
 		return NULL;
 	}
 
@@ -1116,10 +1116,10 @@ const struct dpu_format *dpu_get_dpu_format_ext(
 	}
 
 	if (fmt == NULL)
-		DPU_ERROR("unsupported fmt: %4.4s modifier 0x%llX\n",
+		DRM_DEV_ERROR("unsupported fmt: %4.4s modifier 0x%llX\n",
 			(char *)&format, modifier);
 	else
-		DPU_DEBUG("fmt %4.4s mod 0x%llX ubwc %d yuv %d\n",
+		DRM_DEV_DEBUG("fmt %4.4s mod 0x%llX ubwc %d yuv %d\n",
 				(char *)&format, modifier,
 				DPU_FORMAT_IS_UBWC(fmt),
 				DPU_FORMAT_IS_YUV(fmt));
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c
index 44ee063..70624d6 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c
@@ -504,7 +504,7 @@ struct dpu_mdss_cfg *dpu_hw_catalog_init(u32 hw_rev)
 		}
 	}
 
-	DPU_ERROR("unsupported chipset id:%X\n", hw_rev);
+	DRM_DEV_ERROR("unsupported chipset id:%X\n", hw_rev);
 	dpu_hw_catalog_deinit(dpu_cfg);
 	return ERR_PTR(-ENODEV);
 }
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_cdm.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_cdm.c
index 554874b..805c71f 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_cdm.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_cdm.c
@@ -297,7 +297,7 @@ struct dpu_hw_cdm *dpu_hw_cdm_init(enum dpu_cdm idx,
 
 	rc = dpu_hw_blk_init(&c->base, DPU_HW_BLK_CDM, idx, &dpu_hw_ops);
 	if (rc) {
-		DPU_ERROR("failed to init hw blk %d\n", rc);
+		DRM_DEV_ERROR("failed to init hw blk %d\n", rc);
 		goto blk_init_error;
 	}
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
index 06be7cf..87888af 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
@@ -520,7 +520,7 @@ struct dpu_hw_ctl *dpu_hw_ctl_init(enum dpu_ctl idx,
 
 	rc = dpu_hw_blk_init(&c->base, DPU_HW_BLK_CTL, idx, &dpu_hw_ops);
 	if (rc) {
-		DPU_ERROR("failed to init hw blk %d\n", rc);
+		DRM_DEV_ERROR("failed to init hw blk %d\n", rc);
 		goto blk_init_error;
 	}
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c
index d280df5..3542393 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c
@@ -328,7 +328,7 @@ struct dpu_hw_intf *dpu_hw_intf_init(enum dpu_intf idx,
 
 	rc = dpu_hw_blk_init(&c->base, DPU_HW_BLK_INTF, idx, &dpu_hw_ops);
 	if (rc) {
-		DPU_ERROR("failed to init hw blk %d\n", rc);
+		DRM_DEV_ERROR("failed to init hw blk %d\n", rc);
 		goto blk_init_error;
 	}
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c
index 4ab72b0..a5e75a4 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c
@@ -241,7 +241,7 @@ struct dpu_hw_mixer *dpu_hw_lm_init(enum dpu_lm idx,
 
 	rc = dpu_hw_blk_init(&c->base, DPU_HW_BLK_LM, idx, &dpu_hw_ops);
 	if (rc) {
-		DPU_ERROR("failed to init hw blk %d\n", rc);
+		DRM_DEV_ERROR("failed to init hw blk %d\n", rc);
 		goto blk_init_error;
 	}
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c
index cc3a623..79c14d6 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c
@@ -230,7 +230,7 @@ struct dpu_hw_pingpong *dpu_hw_pingpong_init(enum dpu_pingpong idx,
 
 	rc = dpu_hw_blk_init(&c->base, DPU_HW_BLK_PINGPONG, idx, &dpu_hw_ops);
 	if (rc) {
-		DPU_ERROR("failed to init hw blk %d\n", rc);
+		DRM_DEV_ERROR("failed to init hw blk %d\n", rc);
 		goto blk_init_error;
 	}
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c
index c25b52a..be29c8c 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c
@@ -732,7 +732,7 @@ struct dpu_hw_pipe *dpu_hw_sspp_init(enum dpu_sspp idx,
 
 	rc = dpu_hw_blk_init(&hw_pipe->base, DPU_HW_BLK_SSPP, idx, &dpu_hw_ops);
 	if (rc) {
-		DPU_ERROR("failed to init hw blk %d\n", rc);
+		DRM_DEV_ERROR("failed to init hw blk %d\n", rc);
 		goto blk_init_error;
 	}
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c
index db2798e..aec73b6 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c
@@ -375,7 +375,7 @@ struct dpu_hw_mdp *dpu_hw_mdptop_init(enum dpu_mdp idx,
 
 	rc = dpu_hw_blk_init(&mdp->base, DPU_HW_BLK_TOP, idx, &dpu_hw_ops);
 	if (rc) {
-		DPU_ERROR("failed to init hw blk %d\n", rc);
+		DRM_DEV_ERROR("failed to init hw blk %d\n", rc);
 		goto blk_init_error;
 	}
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_irq.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_irq.c
index d5e6ce0..7af43a8 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_irq.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_irq.c
@@ -44,7 +44,7 @@ int dpu_irq_postinstall(struct msm_kms *kms)
 	int rc;
 
 	if (!kms) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return -EINVAL;
 	}
 
@@ -58,7 +58,7 @@ void dpu_irq_uninstall(struct msm_kms *kms)
 	struct dpu_kms *dpu_kms = to_dpu_kms(kms);
 
 	if (!kms) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return;
 	}
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
index 7dd6bd2..b221ff5 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
@@ -82,7 +82,7 @@ static int _dpu_danger_signal_status(struct seq_file *s,
 	int i;
 
 	if (!kms || !kms->dev || !kms->dev->dev_private || !kms->hw_mdp) {
-		DPU_ERROR("invalid arg(s)\n");
+		DRM_DEV_ERROR("invalid arg(s)\n");
 		return 0;
 	}
 
@@ -150,7 +150,7 @@ static int dpu_debugfs_danger_init(struct dpu_kms *dpu_kms,
 	dpu_kms->debugfs_danger = debugfs_create_dir("danger",
 			parent);
 	if (!dpu_kms->debugfs_danger) {
-		DPU_ERROR("failed to create danger debugfs\n");
+		DRM_DEV_ERROR("failed to create danger debugfs\n");
 		return -EINVAL;
 	}
 
@@ -281,7 +281,7 @@ static int _dpu_debugfs_init(struct dpu_kms *dpu_kms)
 
 	rc = dpu_core_perf_debugfs_init(&dpu_kms->perf, dpu_kms->debugfs_root);
 	if (rc) {
-		DPU_ERROR("failed to init perf %d\n", rc);
+		DRM_DEV_ERROR("failed to init perf %d\n", rc);
 		return rc;
 	}
 
@@ -409,19 +409,19 @@ static void dpu_kms_wait_for_commit_done(struct msm_kms *kms,
 	int ret;
 
 	if (!kms || !crtc || !crtc->state) {
-		DPU_ERROR("invalid params\n");
+		DRM_DEV_ERROR("invalid params\n");
 		return;
 	}
 
 	dev = crtc->dev;
 
 	if (!crtc->state->enable) {
-		DPU_DEBUG("[crtc:%d] not enable\n", crtc->base.id);
+		DRM_DEV_DEBUG("[crtc:%d] not enable\n", crtc->base.id);
 		return;
 	}
 
 	if (!crtc->state->active) {
-		DPU_DEBUG("[crtc:%d] not active\n", crtc->base.id);
+		DRM_DEV_DEBUG("[crtc:%d] not active\n", crtc->base.id);
 		return;
 	}
 
@@ -436,7 +436,7 @@ static void dpu_kms_wait_for_commit_done(struct msm_kms *kms,
 		trace_dpu_kms_wait_for_commit_done(DRMID(crtc));
 		ret = dpu_encoder_wait_for_event(encoder, MSM_ENC_COMMIT_DONE);
 		if (ret && ret != -EWOULDBLOCK) {
-			DPU_ERROR("wait for commit done returned %d\n", ret);
+			DRM_DEV_ERROR("wait for commit done returned %d\n", ret);
 			break;
 		}
 	}
@@ -452,7 +452,7 @@ static void _dpu_kms_initialize_dsi(struct drm_device *dev,
 	/*TODO: Support two independent DSI connectors */
 	encoder = dpu_encoder_init(dev, DRM_MODE_CONNECTOR_DSI);
 	if (IS_ERR_OR_NULL(encoder)) {
-		DPU_ERROR("encoder init failed for dsi display\n");
+		DRM_DEV_ERROR("encoder init failed for dsi display\n");
 		return;
 	}
 
@@ -460,13 +460,13 @@ static void _dpu_kms_initialize_dsi(struct drm_device *dev,
 
 	for (i = 0; i < ARRAY_SIZE(priv->dsi); i++) {
 		if (!priv->dsi[i]) {
-			DPU_DEBUG("invalid msm_dsi for ctrl %d\n", i);
+			DRM_DEV_DEBUG("invalid msm_dsi for ctrl %d\n", i);
 			return;
 		}
 
 		rc = msm_dsi_modeset_init(priv->dsi[i], dev, encoder);
 		if (rc) {
-			DPU_ERROR("modeset_init failed for dsi[%d], rc = %d\n",
+			DRM_DEV_ERROR("modeset_init failed for dsi[%d], rc = %d\n",
 				i, rc);
 			continue;
 		}
@@ -499,13 +499,13 @@ static void _dpu_kms_drm_obj_destroy(struct dpu_kms *dpu_kms)
 	int i;
 
 	if (!dpu_kms) {
-		DPU_ERROR("invalid dpu_kms\n");
+		DRM_DEV_ERROR("invalid dpu_kms\n");
 		return;
 	} else if (!dpu_kms->dev) {
-		DPU_ERROR("invalid dev\n");
+		DRM_DEV_ERROR("invalid dev\n");
 		return;
 	} else if (!dpu_kms->dev->dev_private) {
-		DPU_ERROR("invalid dev_private\n");
+		DRM_DEV_ERROR("invalid dev_private\n");
 		return;
 	}
 	priv = dpu_kms->dev->dev_private;
@@ -540,7 +540,7 @@ static int _dpu_kms_drm_obj_init(struct dpu_kms *dpu_kms)
 	int max_crtc_count;
 
 	if (!dpu_kms || !dpu_kms->dev || !dpu_kms->dev->dev) {
-		DPU_ERROR("invalid dpu_kms\n");
+		DRM_DEV_ERROR("invalid dpu_kms\n");
 		return -EINVAL;
 	}
 
@@ -567,7 +567,7 @@ static int _dpu_kms_drm_obj_init(struct dpu_kms *dpu_kms)
 		plane = dpu_plane_init(dev, catalog->sspp[i].id, primary,
 				(1UL << max_crtc_count) - 1, 0);
 		if (IS_ERR(plane)) {
-			DPU_ERROR("dpu_plane_init failed\n");
+			DRM_DEV_ERROR("dpu_plane_init failed\n");
 			ret = PTR_ERR(plane);
 			goto fail;
 		}
@@ -607,7 +607,7 @@ static int dpu_kms_debugfs_init(struct msm_kms *kms, struct drm_minor *minor)
 	int rc;
 
 	if (!dpu_kms || !dpu_kms->dev || !dpu_kms->dev->dev) {
-		DPU_ERROR("invalid dpu_kms\n");
+		DRM_DEV_ERROR("invalid dpu_kms\n");
 		return -EINVAL;
 	}
 
@@ -615,7 +615,7 @@ static int dpu_kms_debugfs_init(struct msm_kms *kms, struct drm_minor *minor)
 
 	rc = _dpu_debugfs_init(dpu_kms);
 	if (rc)
-		DPU_ERROR("dpu_debugfs init failed: %d\n", rc);
+		DRM_DEV_ERROR("dpu_debugfs init failed: %d\n", rc);
 
 	return rc;
 }
@@ -688,7 +688,7 @@ static void dpu_kms_destroy(struct msm_kms *kms)
 	struct dpu_kms *dpu_kms;
 
 	if (!kms) {
-		DPU_ERROR("invalid kms\n");
+		DRM_DEV_ERROR("invalid kms\n");
 		return;
 	}
 
@@ -843,7 +843,7 @@ static void _dpu_kms_set_encoder_mode(struct msm_kms *kms,
 
 	rc = dpu_encoder_setup(encoder->dev, encoder, &info);
 	if (rc)
-		DPU_ERROR("failed to setup DPU encoder %d: rc:%d\n",
+		DRM_DEV_ERROR("failed to setup DPU encoder %d: rc:%d\n",
 			encoder->base.id, rc);
 }
 
@@ -912,7 +912,7 @@ static int _dpu_kms_mmu_init(struct dpu_kms *dpu_kms)
 	ret = aspace->mmu->funcs->attach(aspace->mmu, iommu_ports,
 			ARRAY_SIZE(iommu_ports));
 	if (ret) {
-		DPU_ERROR("failed to attach iommu %d\n", ret);
+		DRM_DEV_ERROR("failed to attach iommu %d\n", ret);
 		msm_gem_address_space_put(aspace);
 		goto fail;
 	}
@@ -968,14 +968,14 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 	int i, rc = -EINVAL;
 
 	if (!kms) {
-		DPU_ERROR("invalid kms\n");
+		DRM_DEV_ERROR("invalid kms\n");
 		goto end;
 	}
 
 	dpu_kms = to_dpu_kms(kms);
 	dev = dpu_kms->dev;
 	if (!dev) {
-		DPU_ERROR("invalid device\n");
+		DRM_DEV_ERROR("invalid device\n");
 		goto end;
 	}
 
@@ -987,14 +987,14 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 
 	priv = dev->dev_private;
 	if (!priv) {
-		DPU_ERROR("invalid private data\n");
+		DRM_DEV_ERROR("invalid private data\n");
 		goto dbg_destroy;
 	}
 
 	dpu_kms->mmio = msm_ioremap(dpu_kms->pdev, "mdp", "mdp");
 	if (IS_ERR(dpu_kms->mmio)) {
 		rc = PTR_ERR(dpu_kms->mmio);
-		DPU_ERROR("mdp register memory map failed: %d\n", rc);
+		DRM_DEV_ERROR("mdp register memory map failed: %d\n", rc);
 		dpu_kms->mmio = NULL;
 		goto error;
 	}
@@ -1004,7 +1004,7 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 	dpu_kms->vbif[VBIF_RT] = msm_ioremap(dpu_kms->pdev, "vbif", "vbif");
 	if (IS_ERR(dpu_kms->vbif[VBIF_RT])) {
 		rc = PTR_ERR(dpu_kms->vbif[VBIF_RT]);
-		DPU_ERROR("vbif register memory map failed: %d\n", rc);
+		DRM_DEV_ERROR("vbif register memory map failed: %d\n", rc);
 		dpu_kms->vbif[VBIF_RT] = NULL;
 		goto error;
 	}
@@ -1012,7 +1012,7 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 	dpu_kms->vbif[VBIF_NRT] = msm_ioremap(dpu_kms->pdev, "vbif_nrt", "vbif_nrt");
 	if (IS_ERR(dpu_kms->vbif[VBIF_NRT])) {
 		dpu_kms->vbif[VBIF_NRT] = NULL;
-		DPU_DEBUG("VBIF NRT is not defined");
+		DRM_DEV_DEBUG("VBIF NRT is not defined");
 	} else {
 		dpu_kms->vbif_len[VBIF_NRT] = dpu_iomap_size(dpu_kms->pdev,
 							     "vbif_nrt");
@@ -1021,7 +1021,7 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 	dpu_kms->reg_dma = msm_ioremap(dpu_kms->pdev, "regdma", "regdma");
 	if (IS_ERR(dpu_kms->reg_dma)) {
 		dpu_kms->reg_dma = NULL;
-		DPU_DEBUG("REG_DMA is not defined");
+		DRM_DEV_DEBUG("REG_DMA is not defined");
 	} else {
 		dpu_kms->reg_dma_len = dpu_iomap_size(dpu_kms->pdev, "regdma");
 	}
@@ -1032,7 +1032,7 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 		rc = PTR_ERR(dpu_kms->core_client);
 		if (!dpu_kms->core_client)
 			rc = -EINVAL;
-		DPU_ERROR("dpu power client create failed: %d\n", rc);
+		DRM_DEV_ERROR("dpu power client create failed: %d\n", rc);
 		dpu_kms->core_client = NULL;
 		goto error;
 	}
@@ -1048,7 +1048,7 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 		rc = PTR_ERR(dpu_kms->catalog);
 		if (!dpu_kms->catalog)
 			rc = -EINVAL;
-		DPU_ERROR("catalog init failed: %d\n", rc);
+		DRM_DEV_ERROR("catalog init failed: %d\n", rc);
 		dpu_kms->catalog = NULL;
 		goto power_error;
 	}
@@ -1061,14 +1061,14 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 	 */
 	rc = _dpu_kms_mmu_init(dpu_kms);
 	if (rc) {
-		DPU_ERROR("dpu_kms_mmu_init failed: %d\n", rc);
+		DRM_DEV_ERROR("dpu_kms_mmu_init failed: %d\n", rc);
 		goto power_error;
 	}
 
 	rc = dpu_rm_init(&dpu_kms->rm, dpu_kms->catalog, dpu_kms->mmio,
 			dpu_kms->dev);
 	if (rc) {
-		DPU_ERROR("rm init failed: %d\n", rc);
+		DRM_DEV_ERROR("rm init failed: %d\n", rc);
 		goto power_error;
 	}
 
@@ -1079,7 +1079,7 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 		rc = PTR_ERR(dpu_kms->hw_mdp);
 		if (!dpu_kms->hw_mdp)
 			rc = -EINVAL;
-		DPU_ERROR("failed to get hw_mdp: %d\n", rc);
+		DRM_DEV_ERROR("failed to get hw_mdp: %d\n", rc);
 		dpu_kms->hw_mdp = NULL;
 		goto power_error;
 	}
@@ -1093,7 +1093,7 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 			rc = PTR_ERR(dpu_kms->hw_vbif[vbif_idx]);
 			if (!dpu_kms->hw_vbif[vbif_idx])
 				rc = -EINVAL;
-			DPU_ERROR("failed to init vbif %d: %d\n", vbif_idx, rc);
+			DRM_DEV_ERROR("failed to init vbif %d: %d\n", vbif_idx, rc);
 			dpu_kms->hw_vbif[vbif_idx] = NULL;
 			goto power_error;
 		}
@@ -1103,14 +1103,14 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 			&dpu_kms->phandle,
 			_dpu_kms_get_clk(dpu_kms, "core"));
 	if (rc) {
-		DPU_ERROR("failed to init perf %d\n", rc);
+		DRM_DEV_ERROR("failed to init perf %d\n", rc);
 		goto perf_err;
 	}
 
 	dpu_kms->hw_intr = dpu_hw_intr_init(dpu_kms->mmio, dpu_kms->catalog);
 	if (IS_ERR_OR_NULL(dpu_kms->hw_intr)) {
 		rc = PTR_ERR(dpu_kms->hw_intr);
-		DPU_ERROR("hw_intr init failed: %d\n", rc);
+		DRM_DEV_ERROR("hw_intr init failed: %d\n", rc);
 		dpu_kms->hw_intr = NULL;
 		goto hw_intr_init_err;
 	}
@@ -1121,7 +1121,7 @@ static int dpu_kms_hw_init(struct msm_kms *kms)
 	 */
 	rc = _dpu_kms_drm_obj_init(dpu_kms);
 	if (rc) {
-		DPU_ERROR("modeset init failed: %d\n", rc);
+		DRM_DEV_ERROR("modeset init failed: %d\n", rc);
 		goto drm_obj_init_err;
 	}
 
@@ -1175,7 +1175,7 @@ struct msm_kms *dpu_kms_init(struct drm_device *dev)
 	int irq;
 
 	if (!dev || !dev->dev_private) {
-		DPU_ERROR("drm device node invalid\n");
+		DRM_DEV_ERROR("drm device node invalid\n");
 		return ERR_PTR(-EINVAL);
 	}
 
@@ -1184,7 +1184,7 @@ struct msm_kms *dpu_kms_init(struct drm_device *dev)
 
 	irq = irq_of_parse_and_map(dpu_kms->pdev->dev.of_node, 0);
 	if (irq < 0) {
-		DPU_ERROR("failed to get irq: %d\n", irq);
+		DRM_DEV_ERROR("failed to get irq: %d\n", irq);
 		return ERR_PTR(irq);
 	}
 	dpu_kms->base.irq = irq;
@@ -1208,7 +1208,7 @@ static int dpu_bind(struct device *dev, struct device *master, void *data)
 	mp = &dpu_kms->mp;
 	ret = msm_dss_parse_clock(pdev, mp);
 	if (ret) {
-		DPU_ERROR("failed to parse clocks, ret=%d\n", ret);
+		DRM_DEV_ERROR("failed to parse clocks, ret=%d\n", ret);
 		return ret;
 	}
 
@@ -1268,18 +1268,18 @@ static int __maybe_unused dpu_runtime_suspend(struct device *dev)
 
 	ddev = dpu_kms->dev;
 	if (!ddev) {
-		DPU_ERROR("invalid drm_device\n");
+		DRM_DEV_ERROR("invalid drm_device\n");
 		goto exit;
 	}
 
 	rc = dpu_power_resource_enable(&dpu_kms->phandle,
 			dpu_kms->core_client, false);
 	if (rc)
-		DPU_ERROR("resource disable failed: %d\n", rc);
+		DRM_DEV_ERROR("resource disable failed: %d\n", rc);
 
 	rc = msm_dss_enable_clk(mp->clk_config, mp->num_clk, false);
 	if (rc)
-		DPU_ERROR("clock disable failed rc:%d\n", rc);
+		DRM_DEV_ERROR("clock disable failed rc:%d\n", rc);
 
 exit:
 	return rc;
@@ -1295,20 +1295,20 @@ static int __maybe_unused dpu_runtime_resume(struct device *dev)
 
 	ddev = dpu_kms->dev;
 	if (!ddev) {
-		DPU_ERROR("invalid drm_device\n");
+		DRM_DEV_ERROR("invalid drm_device\n");
 		goto exit;
 	}
 
 	rc = msm_dss_enable_clk(mp->clk_config, mp->num_clk, true);
 	if (rc) {
-		DPU_ERROR("clock enable failed rc:%d\n", rc);
+		DRM_DEV_ERROR("clock enable failed rc:%d\n", rc);
 		goto exit;
 	}
 
 	rc = dpu_power_resource_enable(&dpu_kms->phandle,
 			dpu_kms->core_client, true);
 	if (rc)
-		DPU_ERROR("resource enable failed: %d\n", rc);
+		DRM_DEV_ERROR("resource enable failed: %d\n", rc);
 
 exit:
 	return rc;
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c
index 9e533b8..ee26c1d 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c
@@ -105,7 +105,7 @@ static int _dpu_mdss_irq_domain_add(struct dpu_mdss *dpu_mdss)
 	domain = irq_domain_add_linear(dev->of_node, 32,
 			&dpu_mdss_irqdomain_ops, dpu_mdss);
 	if (!domain) {
-		DPU_ERROR("failed to add irq_domain\n");
+		DRM_DEV_ERROR("failed to add irq_domain\n");
 		return -EINVAL;
 	}
 
@@ -131,7 +131,7 @@ static int dpu_mdss_enable(struct msm_mdss *mdss)
 
 	ret = msm_dss_enable_clk(mp->clk_config, mp->num_clk, true);
 	if (ret)
-		DPU_ERROR("clock enable failed, ret:%d\n", ret);
+		DRM_DEV_ERROR("clock enable failed, ret:%d\n", ret);
 
 	return ret;
 }
@@ -144,7 +144,7 @@ static int dpu_mdss_disable(struct msm_mdss *mdss)
 
 	ret = msm_dss_enable_clk(mp->clk_config, mp->num_clk, false);
 	if (ret)
-		DPU_ERROR("clock disable failed, ret:%d\n", ret);
+		DRM_DEV_ERROR("clock disable failed, ret:%d\n", ret);
 
 	return ret;
 }
@@ -204,7 +204,7 @@ int dpu_mdss_init(struct drm_device *dev)
 	mp = &dpu_mdss->mp;
 	ret = msm_dss_parse_clock(pdev, mp);
 	if (ret) {
-		DPU_ERROR("failed to parse clocks, ret=%d\n", ret);
+		DRM_DEV_ERROR("failed to parse clocks, ret=%d\n", ret);
 		goto clk_parse_err;
 	}
 
@@ -218,7 +218,7 @@ int dpu_mdss_init(struct drm_device *dev)
 	ret = devm_request_irq(dev->dev, platform_get_irq(pdev, 0),
 			dpu_mdss_irq, 0, "dpu_mdss_isr", dpu_mdss);
 	if (ret) {
-		DPU_ERROR("failed to init irq: %d\n", ret);
+		DRM_DEV_ERROR("failed to init irq: %d\n", ret);
 		goto irq_error;
 	}
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c
index ec959f8..1ce5749 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c
@@ -33,10 +33,10 @@
 #include "dpu_vbif.h"
 #include "dpu_plane.h"
 
-#define DPU_DEBUG_PLANE(pl, fmt, ...) DPU_DEBUG("plane%d " fmt,\
+#define DPU_DEBUG_PLANE(pl, fmt, ...) DRM_DEV_DEBUG("plane%d " fmt,\
 		(pl) ? (pl)->base.base.id : -1, ##__VA_ARGS__)
 
-#define DPU_ERROR_PLANE(pl, fmt, ...) DPU_ERROR("plane%d " fmt,\
+#define DPU_ERROR_PLANE(pl, fmt, ...) DRM_DEV_ERROR("plane%d " fmt,\
 		(pl) ? (pl)->base.base.id : -1, ##__VA_ARGS__)
 
 #define DECIMATED_DIMENSION(dim, deci) (((dim) + ((1 << (deci)) - 1)) >> (deci))
@@ -161,7 +161,7 @@ static inline int _dpu_plane_calc_fill_level(struct drm_plane *plane,
 	u32 total_fl;
 
 	if (!plane || !fmt || !plane->state || !src_width || !fmt->bpp) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return 0;
 	}
 
@@ -172,7 +172,7 @@ static inline int _dpu_plane_calc_fill_level(struct drm_plane *plane,
 	list_for_each_entry(tmp, &pdpu->mplane_list, mplane_list) {
 		if (!dpu_plane_enabled(tmp->base.state))
 			continue;
-		DPU_DEBUG("plane%d/%d src_width:%d/%d\n",
+		DRM_DEV_DEBUG("plane%d/%d src_width:%d/%d\n",
 				pdpu->base.base.id, tmp->base.base.id,
 				src_width,
 				drm_rect_width(&tmp->pipe_cfg.src_rect));
@@ -200,7 +200,7 @@ static inline int _dpu_plane_calc_fill_level(struct drm_plane *plane,
 		}
 	}
 
-	DPU_DEBUG("plane%u: pnum:%d fmt: %4.4s w:%u fl:%u\n",
+	DRM_DEV_DEBUG("plane%u: pnum:%d fmt: %4.4s w:%u fl:%u\n",
 			plane->base.id, pdpu->pipe - SSPP_VIG0,
 			(char *)&fmt->base.pixel_format,
 			src_width, total_fl);
@@ -247,7 +247,7 @@ static void _dpu_plane_set_qos_lut(struct drm_plane *plane,
 	u32 total_fl = 0, lut_usage;
 
 	if (!plane || !fb) {
-		DPU_ERROR("invalid arguments plane %d fb %d\n",
+		DRM_DEV_ERROR("invalid arguments plane %d fb %d\n",
 				plane != 0, fb != 0);
 		return;
 	}
@@ -255,7 +255,7 @@ static void _dpu_plane_set_qos_lut(struct drm_plane *plane,
 	pdpu = to_dpu_plane(plane);
 
 	if (!pdpu->pipe_hw || !pdpu->pipe_sblk || !pdpu->catalog) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return;
 	} else if (!pdpu->pipe_hw->ops.setup_creq_lut) {
 		return;
@@ -285,7 +285,7 @@ static void _dpu_plane_set_qos_lut(struct drm_plane *plane,
 			(fmt) ? fmt->base.pixel_format : 0,
 			pdpu->is_rt_pipe, total_fl, qos_lut, lut_usage);
 
-	DPU_DEBUG("plane%u: pnum:%d fmt: %4.4s rt:%d fl:%u lut:0x%llx\n",
+	DRM_DEV_DEBUG("plane%u: pnum:%d fmt: %4.4s rt:%d fl:%u lut:0x%llx\n",
 			plane->base.id,
 			pdpu->pipe - SSPP_VIG0,
 			fmt ? (char *)&fmt->base.pixel_format : NULL,
@@ -307,14 +307,14 @@ static void _dpu_plane_set_danger_lut(struct drm_plane *plane,
 	u32 danger_lut, safe_lut;
 
 	if (!plane || !fb) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return;
 	}
 
 	pdpu = to_dpu_plane(plane);
 
 	if (!pdpu->pipe_hw || !pdpu->pipe_sblk || !pdpu->catalog) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return;
 	} else if (!pdpu->pipe_hw->ops.setup_danger_safe_lut) {
 		return;
@@ -352,7 +352,7 @@ static void _dpu_plane_set_danger_lut(struct drm_plane *plane,
 			pdpu->pipe_qos_cfg.danger_lut,
 			pdpu->pipe_qos_cfg.safe_lut);
 
-	DPU_DEBUG("plane%u: pnum:%d fmt: %4.4s mode:%d luts[0x%x, 0x%x]\n",
+	DRM_DEV_DEBUG("plane%u: pnum:%d fmt: %4.4s mode:%d luts[0x%x, 0x%x]\n",
 		plane->base.id,
 		pdpu->pipe - SSPP_VIG0,
 		fmt ? (char *)&fmt->base.pixel_format : NULL,
@@ -376,14 +376,14 @@ static void _dpu_plane_set_qos_ctrl(struct drm_plane *plane,
 	struct dpu_plane *pdpu;
 
 	if (!plane) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return;
 	}
 
 	pdpu = to_dpu_plane(plane);
 
 	if (!pdpu->pipe_hw || !pdpu->pipe_sblk) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return;
 	} else if (!pdpu->pipe_hw->ops.setup_qos_ctrl) {
 		return;
@@ -410,7 +410,7 @@ static void _dpu_plane_set_qos_ctrl(struct drm_plane *plane,
 		pdpu->pipe_qos_cfg.danger_safe_en = false;
 	}
 
-	DPU_DEBUG("plane%u: pnum:%d ds:%d vb:%d pri[0x%x, 0x%x] is_rt:%d\n",
+	DRM_DEV_DEBUG("plane%u: pnum:%d ds:%d vb:%d pri[0x%x, 0x%x] is_rt:%d\n",
 		plane->base.id,
 		pdpu->pipe - SSPP_VIG0,
 		pdpu->pipe_qos_cfg.danger_safe_en,
@@ -430,13 +430,13 @@ int dpu_plane_danger_signal_ctrl(struct drm_plane *plane, bool enable)
 	struct dpu_kms *dpu_kms;
 
 	if (!plane || !plane->dev) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return -EINVAL;
 	}
 
 	priv = plane->dev->dev_private;
 	if (!priv || !priv->kms) {
-		DPU_ERROR("invalid KMS reference\n");
+		DRM_DEV_ERROR("invalid KMS reference\n");
 		return -EINVAL;
 	}
 
@@ -468,21 +468,21 @@ static void _dpu_plane_set_ot_limit(struct drm_plane *plane,
 	struct dpu_kms *dpu_kms;
 
 	if (!plane || !plane->dev || !crtc) {
-		DPU_ERROR("invalid arguments plane %d crtc %d\n",
+		DRM_DEV_ERROR("invalid arguments plane %d crtc %d\n",
 				plane != 0, crtc != 0);
 		return;
 	}
 
 	priv = plane->dev->dev_private;
 	if (!priv || !priv->kms) {
-		DPU_ERROR("invalid KMS reference\n");
+		DRM_DEV_ERROR("invalid KMS reference\n");
 		return;
 	}
 
 	dpu_kms = to_dpu_kms(priv->kms);
 	pdpu = to_dpu_plane(plane);
 	if (!pdpu->pipe_hw) {
-		DPU_ERROR("invalid pipe reference\n");
+		DRM_DEV_ERROR("invalid pipe reference\n");
 		return;
 	}
 
@@ -512,20 +512,20 @@ static void _dpu_plane_set_qos_remap(struct drm_plane *plane)
 	struct dpu_kms *dpu_kms;
 
 	if (!plane || !plane->dev) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return;
 	}
 
 	priv = plane->dev->dev_private;
 	if (!priv || !priv->kms) {
-		DPU_ERROR("invalid KMS reference\n");
+		DRM_DEV_ERROR("invalid KMS reference\n");
 		return;
 	}
 
 	dpu_kms = to_dpu_kms(priv->kms);
 	pdpu = to_dpu_plane(plane);
 	if (!pdpu->pipe_hw) {
-		DPU_ERROR("invalid pipe reference\n");
+		DRM_DEV_ERROR("invalid pipe reference\n");
 		return;
 	}
 
@@ -536,7 +536,7 @@ static void _dpu_plane_set_qos_remap(struct drm_plane *plane)
 	qos_params.num = pdpu->pipe_hw->idx - SSPP_VIG0;
 	qos_params.is_rt = pdpu->is_rt_pipe;
 
-	DPU_DEBUG("plane%d pipe:%d vbif:%d xin:%d rt:%d, clk_ctrl:%d\n",
+	DRM_DEV_DEBUG("plane%d pipe:%d vbif:%d xin:%d rt:%d, clk_ctrl:%d\n",
 			plane->base.id, qos_params.num,
 			qos_params.vbif_idx,
 			qos_params.xin_id, qos_params.is_rt,
@@ -556,13 +556,13 @@ static int _dpu_plane_get_aspace(
 	struct dpu_kms *kms;
 
 	if (!pdpu || !pstate || !aspace) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return -EINVAL;
 	}
 
 	kms = _dpu_plane_get_kms(&pdpu->base);
 	if (!kms) {
-		DPU_ERROR("invalid kms\n");
+		DRM_DEV_ERROR("invalid kms\n");
 		return -EINVAL;
 	}
 
@@ -581,7 +581,7 @@ static inline void _dpu_plane_set_scanout(struct drm_plane *plane,
 	int ret;
 
 	if (!plane || !pstate || !pipe_cfg || !fb) {
-		DPU_ERROR(
+		DRM_DEV_ERROR(
 			"invalid arg(s), plane %d state %d cfg %d fb %d\n",
 			plane != 0, pstate != 0, pipe_cfg != 0, fb != 0);
 		return;
@@ -624,7 +624,7 @@ static void _dpu_plane_setup_scaler3(struct dpu_plane *pdpu,
 
 	if (!pdpu || !pstate || !scale_cfg || !fmt || !chroma_subsmpl_h ||
 			!chroma_subsmpl_v) {
-		DPU_ERROR(
+		DRM_DEV_ERROR(
 			"pdpu %d pstate %d scale_cfg %d fmt %d smp_h %d smp_v %d\n",
 			!!pdpu, !!pstate, !!scale_cfg, !!fmt, chroma_subsmpl_h,
 			chroma_subsmpl_v);
@@ -715,7 +715,7 @@ static inline void _dpu_plane_setup_csc(struct dpu_plane *pdpu)
 	};
 
 	if (!pdpu) {
-		DPU_ERROR("invalid plane\n");
+		DRM_DEV_ERROR("invalid plane\n");
 		return;
 	}
 
@@ -738,7 +738,7 @@ static void _dpu_plane_setup_scaler(struct dpu_plane *pdpu,
 	uint32_t chroma_subsmpl_h, chroma_subsmpl_v;
 
 	if (!pdpu || !fmt || !pstate) {
-		DPU_ERROR("invalid arg(s), plane %d fmt %d state %d\n",
+		DRM_DEV_ERROR("invalid arg(s), plane %d fmt %d state %d\n",
 				pdpu != 0, fmt != 0, pstate != 0);
 		return;
 	}
@@ -776,7 +776,7 @@ static int _dpu_plane_color_fill(struct dpu_plane *pdpu,
 	struct dpu_plane_state *pstate;
 
 	if (!pdpu || !pdpu->base.state) {
-		DPU_ERROR("invalid plane\n");
+		DRM_DEV_ERROR("invalid plane\n");
 		return -EINVAL;
 	}
 
@@ -881,7 +881,7 @@ int dpu_plane_validate_multirect_v2(struct dpu_multirect_plane_states *plane)
 		dpu_plane[i] = to_dpu_plane(drm_state[i]->plane);
 
 		if (pstate[i] == NULL) {
-			DPU_ERROR("DPU plane state of plane id %d is NULL\n",
+			DRM_DEV_ERROR("DPU plane state of plane id %d is NULL\n",
 				drm_state[i]->plane->base.id);
 			return -EINVAL;
 		}
@@ -941,7 +941,7 @@ int dpu_plane_validate_multirect_v2(struct dpu_multirect_plane_states *plane)
 		pstate[R0]->multirect_mode = DPU_SSPP_MULTIRECT_TIME_MX;
 		pstate[R1]->multirect_mode = DPU_SSPP_MULTIRECT_TIME_MX;
 	} else {
-		DPU_ERROR(
+		DRM_DEV_ERROR(
 			"No multirect mode possible for the planes (%d - %d)\n",
 			drm_state[R0]->plane->base.id,
 			drm_state[R1]->plane->base.id);
@@ -976,7 +976,7 @@ void dpu_plane_get_ctl_flush(struct drm_plane *plane, struct dpu_hw_ctl *ctl,
 	struct dpu_plane_state *pstate;
 
 	if (!plane || !flush_sspp) {
-		DPU_ERROR("invalid parameters\n");
+		DRM_DEV_ERROR("invalid parameters\n");
 		return;
 	}
 
@@ -1027,7 +1027,7 @@ static int dpu_plane_prepare_fb(struct drm_plane *plane,
 		ret = msm_framebuffer_prepare(new_state->fb,
 				pstate->aspace);
 		if (ret) {
-			DPU_ERROR("failed to prepare framebuffer\n");
+			DRM_DEV_ERROR("failed to prepare framebuffer\n");
 			return ret;
 		}
 	}
@@ -1091,7 +1091,7 @@ static int dpu_plane_sspp_atomic_check(struct drm_plane *plane,
 	int hscale = 1, vscale = 1;
 
 	if (!plane || !state) {
-		DPU_ERROR("invalid arg(s), plane %d state %d\n",
+		DRM_DEV_ERROR("invalid arg(s), plane %d state %d\n",
 				plane != 0, state != 0);
 		ret = -EINVAL;
 		goto exit;
@@ -1205,7 +1205,7 @@ void dpu_plane_flush(struct drm_plane *plane)
 	struct dpu_plane_state *pstate;
 
 	if (!plane || !plane->state) {
-		DPU_ERROR("invalid plane\n");
+		DRM_DEV_ERROR("invalid plane\n");
 		return;
 	}
 
@@ -1259,13 +1259,13 @@ static int dpu_plane_sspp_atomic_update(struct drm_plane *plane,
 	struct drm_rect src, dst;
 
 	if (!plane) {
-		DPU_ERROR("invalid plane\n");
+		DRM_DEV_ERROR("invalid plane\n");
 		return -EINVAL;
 	} else if (!plane->state) {
-		DPU_ERROR("invalid plane state\n");
+		DRM_DEV_ERROR("invalid plane state\n");
 		return -EINVAL;
 	} else if (!old_state) {
-		DPU_ERROR("invalid old state\n");
+		DRM_DEV_ERROR("invalid old state\n");
 		return -EINVAL;
 	}
 
@@ -1398,13 +1398,13 @@ static void _dpu_plane_atomic_disable(struct drm_plane *plane,
 	struct dpu_plane_state *pstate;
 
 	if (!plane) {
-		DPU_ERROR("invalid plane\n");
+		DRM_DEV_ERROR("invalid plane\n");
 		return;
 	} else if (!plane->state) {
-		DPU_ERROR("invalid plane state\n");
+		DRM_DEV_ERROR("invalid plane state\n");
 		return;
 	} else if (!old_state) {
-		DPU_ERROR("invalid old state\n");
+		DRM_DEV_ERROR("invalid old state\n");
 		return;
 	}
 
@@ -1430,10 +1430,10 @@ static void dpu_plane_atomic_update(struct drm_plane *plane,
 	struct drm_plane_state *state;
 
 	if (!plane) {
-		DPU_ERROR("invalid plane\n");
+		DRM_DEV_ERROR("invalid plane\n");
 		return;
 	} else if (!plane->state) {
-		DPU_ERROR("invalid plane state\n");
+		DRM_DEV_ERROR("invalid plane state\n");
 		return;
 	}
 
@@ -1459,7 +1459,7 @@ void dpu_plane_restore(struct drm_plane *plane)
 	struct dpu_plane *pdpu;
 
 	if (!plane || !plane->state) {
-		DPU_ERROR("invalid plane\n");
+		DRM_DEV_ERROR("invalid plane\n");
 		return;
 	}
 
@@ -1498,7 +1498,7 @@ static void dpu_plane_destroy_state(struct drm_plane *plane,
 	struct dpu_plane_state *pstate;
 
 	if (!plane || !state) {
-		DPU_ERROR("invalid arg(s), plane %d state %d\n",
+		DRM_DEV_ERROR("invalid arg(s), plane %d state %d\n",
 				plane != 0, state != 0);
 		return;
 	}
@@ -1520,10 +1520,10 @@ static void dpu_plane_destroy_state(struct drm_plane *plane,
 	struct dpu_plane_state *old_state;
 
 	if (!plane) {
-		DPU_ERROR("invalid plane\n");
+		DRM_DEV_ERROR("invalid plane\n");
 		return NULL;
 	} else if (!plane->state) {
-		DPU_ERROR("invalid plane state\n");
+		DRM_DEV_ERROR("invalid plane state\n");
 		return NULL;
 	}
 
@@ -1550,7 +1550,7 @@ static void dpu_plane_reset(struct drm_plane *plane)
 	struct dpu_plane_state *pstate;
 
 	if (!plane) {
-		DPU_ERROR("invalid plane\n");
+		DRM_DEV_ERROR("invalid plane\n");
 		return;
 	}
 
@@ -1608,10 +1608,10 @@ static void _dpu_plane_set_danger_state(struct dpu_kms *kms, bool enable)
 	drm_for_each_plane(plane, kms->dev) {
 		if (plane->fb && plane->state) {
 			dpu_plane_danger_signal_ctrl(plane, enable);
-			DPU_DEBUG("plane:%d img:%dx%d ",
+			DRM_DEV_DEBUG("plane:%d img:%dx%d ",
 				plane->base.id, plane->fb->width,
 				plane->fb->height);
-			DPU_DEBUG("src[%d,%d,%d,%d] dst[%d,%d,%d,%d]\n",
+			DRM_DEV_DEBUG("src[%d,%d,%d,%d] dst[%d,%d,%d,%d]\n",
 				plane->state->src_x >> 16,
 				plane->state->src_y >> 16,
 				plane->state->src_w >> 16,
@@ -1619,7 +1619,7 @@ static void _dpu_plane_set_danger_state(struct dpu_kms *kms, bool enable)
 				plane->state->crtc_x, plane->state->crtc_y,
 				plane->state->crtc_w, plane->state->crtc_h);
 		} else {
-			DPU_DEBUG("Inactive plane:%d\n", plane->base.id);
+			DRM_DEV_DEBUG("Inactive plane:%d\n", plane->base.id);
 		}
 	}
 }
@@ -1648,12 +1648,12 @@ static ssize_t _dpu_plane_danger_write(struct file *file,
 
 	if (disable_panic) {
 		/* Disable panic signal for all active pipes */
-		DPU_DEBUG("Disabling danger:\n");
+		DRM_DEV_DEBUG("Disabling danger:\n");
 		_dpu_plane_set_danger_state(kms, false);
 		kms->has_danger_ctrl = false;
 	} else {
 		/* Enable panic signal for all active pipes */
-		DPU_DEBUG("Enabling danger:\n");
+		DRM_DEV_DEBUG("Enabling danger:\n");
 		kms->has_danger_ctrl = true;
 		_dpu_plane_set_danger_state(kms, true);
 	}
@@ -1676,13 +1676,13 @@ static int _dpu_plane_init_debugfs(struct drm_plane *plane)
 	const struct dpu_sspp_cfg *cfg = 0;
 
 	if (!plane || !plane->dev) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return -EINVAL;
 	}
 
 	priv = plane->dev->dev_private;
 	if (!priv || !priv->kms) {
-		DPU_ERROR("invalid KMS reference\n");
+		DRM_DEV_ERROR("invalid KMS reference\n");
 		return -EINVAL;
 	}
 
@@ -1840,31 +1840,31 @@ struct drm_plane *dpu_plane_init(struct drm_device *dev,
 	int ret = -EINVAL;
 
 	if (!dev) {
-		DPU_ERROR("[%u]device is NULL\n", pipe);
+		DRM_DEV_ERROR("[%u]device is NULL\n", pipe);
 		goto exit;
 	}
 
 	priv = dev->dev_private;
 	if (!priv) {
-		DPU_ERROR("[%u]private data is NULL\n", pipe);
+		DRM_DEV_ERROR("[%u]private data is NULL\n", pipe);
 		goto exit;
 	}
 
 	if (!priv->kms) {
-		DPU_ERROR("[%u]invalid KMS reference\n", pipe);
+		DRM_DEV_ERROR("[%u]invalid KMS reference\n", pipe);
 		goto exit;
 	}
 	kms = to_dpu_kms(priv->kms);
 
 	if (!kms->catalog) {
-		DPU_ERROR("[%u]invalid catalog reference\n", pipe);
+		DRM_DEV_ERROR("[%u]invalid catalog reference\n", pipe);
 		goto exit;
 	}
 
 	/* create and zero local structure */
 	pdpu = kzalloc(sizeof(*pdpu), GFP_KERNEL);
 	if (!pdpu) {
-		DPU_ERROR("[%u]failed to allocate local plane struct\n", pipe);
+		DRM_DEV_ERROR("[%u]failed to allocate local plane struct\n", pipe);
 		ret = -ENOMEM;
 		goto exit;
 	}
@@ -1885,11 +1885,11 @@ struct drm_plane *dpu_plane_init(struct drm_device *dev,
 	pdpu->pipe_hw = dpu_hw_sspp_init(pipe, kms->mmio, kms->catalog,
 							master_plane_id != 0);
 	if (IS_ERR(pdpu->pipe_hw)) {
-		DPU_ERROR("[%u]SSPP init failed\n", pipe);
+		DRM_DEV_ERROR("[%u]SSPP init failed\n", pipe);
 		ret = PTR_ERR(pdpu->pipe_hw);
 		goto clean_plane;
 	} else if (!pdpu->pipe_hw->cap || !pdpu->pipe_hw->cap->sblk) {
-		DPU_ERROR("[%u]SSPP init returned invalid cfg\n", pipe);
+		DRM_DEV_ERROR("[%u]SSPP init returned invalid cfg\n", pipe);
 		goto clean_sspp;
 	}
 
@@ -1897,7 +1897,7 @@ struct drm_plane *dpu_plane_init(struct drm_device *dev,
 	pdpu->features = pdpu->pipe_hw->cap->features;
 	pdpu->pipe_sblk = pdpu->pipe_hw->cap->sblk;
 	if (!pdpu->pipe_sblk) {
-		DPU_ERROR("[%u]invalid sblk\n", pipe);
+		DRM_DEV_ERROR("[%u]invalid sblk\n", pipe);
 		goto clean_sspp;
 	}
 
@@ -1912,7 +1912,7 @@ struct drm_plane *dpu_plane_init(struct drm_device *dev,
 				ARRAY_SIZE(pdpu->formats));
 
 	if (!pdpu->nformats) {
-		DPU_ERROR("[%u]no valid formats for plane\n", pipe);
+		DRM_DEV_ERROR("[%u]no valid formats for plane\n", pipe);
 		goto clean_sspp;
 	}
 
@@ -1939,7 +1939,7 @@ struct drm_plane *dpu_plane_init(struct drm_device *dev,
 
 	ret = drm_plane_create_zpos_property(plane, 0, 0, zpos_max);
 	if (ret)
-		DPU_ERROR("failed to install zpos property, rc = %d\n", ret);
+		DRM_DEV_ERROR("failed to install zpos property, rc = %d\n", ret);
 
 	/* success! finalize initialization */
 	drm_plane_helper_add(plane, &dpu_plane_helper_funcs);
@@ -1949,7 +1949,7 @@ struct drm_plane *dpu_plane_init(struct drm_device *dev,
 
 	mutex_init(&pdpu->lock);
 
-	DPU_DEBUG("%s created for pipe:%u id:%u virtual:%u\n", pdpu->pipe_name,
+	DRM_DEV_DEBUG("%s created for pipe:%u id:%u virtual:%u\n", pdpu->pipe_name,
 					pipe, plane->base.id, master_plane_id);
 	return plane;
 
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c
index 13c0a36..f1d0f8f 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c
@@ -119,7 +119,7 @@ static void _dpu_rm_print_rsvps(
 	struct dpu_rm_hw_blk *blk;
 	enum dpu_hw_blk_type type;
 
-	DPU_DEBUG("%d\n", stage);
+	DRM_DEV_DEBUG("%d\n", stage);
 
 	list_for_each_entry(rsvp, &rm->rsvps, list) {
 		DRM_DEBUG_KMS("%d rsvp[s%ue%u] topology %d\n", stage, rsvp->seq,
@@ -173,7 +173,7 @@ static bool _dpu_rm_get_hw_locked(struct dpu_rm *rm, struct dpu_rm_hw_iter *i)
 	struct list_head *blk_list;
 
 	if (!rm || !i || i->type >= DPU_HW_BLK_MAX) {
-		DPU_ERROR("invalid rm\n");
+		DRM_DEV_ERROR("invalid rm\n");
 		return false;
 	}
 
@@ -181,7 +181,7 @@ static bool _dpu_rm_get_hw_locked(struct dpu_rm *rm, struct dpu_rm_hw_iter *i)
 	blk_list = &rm->hw_blks[i->type];
 
 	if (i->blk && (&i->blk->list == blk_list)) {
-		DPU_DEBUG("attempt resume iteration past last\n");
+		DRM_DEV_DEBUG("attempt resume iteration past last\n");
 		return false;
 	}
 
@@ -191,20 +191,20 @@ static bool _dpu_rm_get_hw_locked(struct dpu_rm *rm, struct dpu_rm_hw_iter *i)
 		struct dpu_rm_rsvp *rsvp = i->blk->rsvp;
 
 		if (i->blk->type != i->type) {
-			DPU_ERROR("found incorrect block type %d on %d list\n",
+			DRM_DEV_ERROR("found incorrect block type %d on %d list\n",
 					i->blk->type, i->type);
 			return false;
 		}
 
 		if ((i->enc_id == 0) || (rsvp && rsvp->enc_id == i->enc_id)) {
 			i->hw = i->blk->hw;
-			DPU_DEBUG("found type %d id %d for enc %d\n",
+			DRM_DEV_DEBUG("found type %d id %d for enc %d\n",
 					i->type, i->blk->id, i->enc_id);
 			return true;
 		}
 	}
 
-	DPU_DEBUG("no match, type %d for enc %d\n", i->type, i->enc_id);
+	DRM_DEV_DEBUG("no match, type %d for enc %d\n", i->type, i->enc_id);
 
 	return false;
 }
@@ -244,7 +244,7 @@ static void _dpu_rm_hw_destroy(enum dpu_hw_blk_type type, void *hw)
 		/* Top is a singleton, not managed in hw_blks list */
 	case DPU_HW_BLK_MAX:
 	default:
-		DPU_ERROR("unsupported block type %d\n", type);
+		DRM_DEV_ERROR("unsupported block type %d\n", type);
 		break;
 	}
 }
@@ -257,7 +257,7 @@ int dpu_rm_destroy(struct dpu_rm *rm)
 	enum dpu_hw_blk_type type;
 
 	if (!rm) {
-		DPU_ERROR("invalid rm\n");
+		DRM_DEV_ERROR("invalid rm\n");
 		return -EINVAL;
 	}
 
@@ -320,12 +320,12 @@ static int _dpu_rm_hw_blk_create(
 		/* Top is a singleton, not managed in hw_blks list */
 	case DPU_HW_BLK_MAX:
 	default:
-		DPU_ERROR("unsupported block type %d\n", type);
+		DRM_DEV_ERROR("unsupported block type %d\n", type);
 		return -EINVAL;
 	}
 
 	if (IS_ERR_OR_NULL(hw)) {
-		DPU_ERROR("failed hw object creation: type %d, err %ld\n",
+		DRM_DEV_ERROR("failed hw object creation: type %d, err %ld\n",
 				type, PTR_ERR(hw));
 		return -EFAULT;
 	}
@@ -353,7 +353,7 @@ int dpu_rm_init(struct dpu_rm *rm,
 	enum dpu_hw_blk_type type;
 
 	if (!rm || !cat || !mmio || !dev) {
-		DPU_ERROR("invalid kms\n");
+		DRM_DEV_ERROR("invalid kms\n");
 		return -EINVAL;
 	}
 
@@ -373,7 +373,7 @@ int dpu_rm_init(struct dpu_rm *rm,
 	if (IS_ERR_OR_NULL(rm->hw_mdp)) {
 		rc = PTR_ERR(rm->hw_mdp);
 		rm->hw_mdp = NULL;
-		DPU_ERROR("failed: mdp hw not available\n");
+		DRM_DEV_ERROR("failed: mdp hw not available\n");
 		goto fail;
 	}
 
@@ -382,14 +382,14 @@ int dpu_rm_init(struct dpu_rm *rm,
 		struct dpu_lm_cfg *lm = &cat->mixer[i];
 
 		if (lm->pingpong == PINGPONG_MAX) {
-			DPU_DEBUG("skip mixer %d without pingpong\n", lm->id);
+			DRM_DEV_DEBUG("skip mixer %d without pingpong\n", lm->id);
 			continue;
 		}
 
 		rc = _dpu_rm_hw_blk_create(rm, cat, mmio, DPU_HW_BLK_LM,
 				cat->mixer[i].id, &cat->mixer[i]);
 		if (rc) {
-			DPU_ERROR("failed: lm hw not available\n");
+			DRM_DEV_ERROR("failed: lm hw not available\n");
 			goto fail;
 		}
 
@@ -400,7 +400,7 @@ int dpu_rm_init(struct dpu_rm *rm,
 			 * Don't expect to have hw where lm max widths differ.
 			 * If found, take the min.
 			 */
-			DPU_ERROR("unsupported: lm maxwidth differs\n");
+			DRM_DEV_ERROR("unsupported: lm maxwidth differs\n");
 			if (rm->lm_max_width > lm->sblk->maxwidth)
 				rm->lm_max_width = lm->sblk->maxwidth;
 		}
@@ -410,21 +410,21 @@ int dpu_rm_init(struct dpu_rm *rm,
 		rc = _dpu_rm_hw_blk_create(rm, cat, mmio, DPU_HW_BLK_PINGPONG,
 				cat->pingpong[i].id, &cat->pingpong[i]);
 		if (rc) {
-			DPU_ERROR("failed: pp hw not available\n");
+			DRM_DEV_ERROR("failed: pp hw not available\n");
 			goto fail;
 		}
 	}
 
 	for (i = 0; i < cat->intf_count; i++) {
 		if (cat->intf[i].type == INTF_NONE) {
-			DPU_DEBUG("skip intf %d with type none\n", i);
+			DRM_DEV_DEBUG("skip intf %d with type none\n", i);
 			continue;
 		}
 
 		rc = _dpu_rm_hw_blk_create(rm, cat, mmio, DPU_HW_BLK_INTF,
 				cat->intf[i].id, &cat->intf[i]);
 		if (rc) {
-			DPU_ERROR("failed: intf hw not available\n");
+			DRM_DEV_ERROR("failed: intf hw not available\n");
 			goto fail;
 		}
 	}
@@ -433,7 +433,7 @@ int dpu_rm_init(struct dpu_rm *rm,
 		rc = _dpu_rm_hw_blk_create(rm, cat, mmio, DPU_HW_BLK_CTL,
 				cat->ctl[i].id, &cat->ctl[i]);
 		if (rc) {
-			DPU_ERROR("failed: ctl hw not available\n");
+			DRM_DEV_ERROR("failed: ctl hw not available\n");
 			goto fail;
 		}
 	}
@@ -442,7 +442,7 @@ int dpu_rm_init(struct dpu_rm *rm,
 		rc = _dpu_rm_hw_blk_create(rm, cat, mmio, DPU_HW_BLK_CDM,
 				cat->cdm[i].id, &cat->cdm[i]);
 		if (rc) {
-			DPU_ERROR("failed: cdm hw not available\n");
+			DRM_DEV_ERROR("failed: cdm hw not available\n");
 			goto fail;
 		}
 	}
@@ -483,7 +483,7 @@ static bool _dpu_rm_check_lm_and_get_connected_blks(
 
 	*pp = NULL;
 
-	DPU_DEBUG("check lm %d pp %d\n",
+	DRM_DEV_DEBUG("check lm %d pp %d\n",
 			   lm_cfg->id, lm_cfg->pingpong);
 
 	/* Check if this layer mixer is a peer of the proposed primary LM */
@@ -492,7 +492,7 @@ static bool _dpu_rm_check_lm_and_get_connected_blks(
 				to_dpu_hw_mixer(primary_lm->hw)->cap;
 
 		if (!test_bit(lm_cfg->id, &prim_lm_cfg->lm_pair_mask)) {
-			DPU_DEBUG("lm %d not peer of lm %d\n", lm_cfg->id,
+			DRM_DEV_DEBUG("lm %d not peer of lm %d\n", lm_cfg->id,
 					prim_lm_cfg->id);
 			return false;
 		}
@@ -500,7 +500,7 @@ static bool _dpu_rm_check_lm_and_get_connected_blks(
 
 	/* Already reserved? */
 	if (RESERVED_BY_OTHER(lm, rsvp)) {
-		DPU_DEBUG("lm %d already reserved\n", lm_cfg->id);
+		DRM_DEV_DEBUG("lm %d already reserved\n", lm_cfg->id);
 		return false;
 	}
 
@@ -513,12 +513,12 @@ static bool _dpu_rm_check_lm_and_get_connected_blks(
 	}
 
 	if (!*pp) {
-		DPU_ERROR("failed to get pp on lm %d\n", lm_cfg->pingpong);
+		DRM_DEV_ERROR("failed to get pp on lm %d\n", lm_cfg->pingpong);
 		return false;
 	}
 
 	if (RESERVED_BY_OTHER(*pp, rsvp)) {
-		DPU_DEBUG("lm %d pp %d already reserved\n", lm->id,
+		DRM_DEV_DEBUG("lm %d pp %d already reserved\n", lm->id,
 				(*pp)->id);
 		return false;
 	}
@@ -539,7 +539,7 @@ static int _dpu_rm_reserve_lms(
 	int i, rc = 0;
 
 	if (!reqs->topology->num_lm) {
-		DPU_ERROR("invalid number of lm: %d\n", reqs->topology->num_lm);
+		DRM_DEV_ERROR("invalid number of lm: %d\n", reqs->topology->num_lm);
 		return -EINVAL;
 	}
 
@@ -579,7 +579,7 @@ static int _dpu_rm_reserve_lms(
 	}
 
 	if (lm_count != reqs->topology->num_lm) {
-		DPU_DEBUG("unable to find appropriate mixers\n");
+		DRM_DEV_DEBUG("unable to find appropriate mixers\n");
 		return -ENAVAIL;
 	}
 
@@ -619,13 +619,13 @@ static int _dpu_rm_reserve_ctls(
 
 		has_split_display = BIT(DPU_CTL_SPLIT_DISPLAY) & features;
 
-		DPU_DEBUG("ctl %d caps 0x%lX\n", iter.blk->id, features);
+		DRM_DEV_DEBUG("ctl %d caps 0x%lX\n", iter.blk->id, features);
 
 		if (top->needs_split_display != has_split_display)
 			continue;
 
 		ctls[i] = iter.blk;
-		DPU_DEBUG("ctl %d match\n", iter.blk->id);
+		DRM_DEV_DEBUG("ctl %d match\n", iter.blk->id);
 
 		if (++i == top->num_ctl)
 			break;
@@ -679,7 +679,7 @@ static int _dpu_rm_reserve_cdm(
 	}
 
 	if (!iter.hw) {
-		DPU_ERROR("couldn't reserve cdm for type %d id %d\n", type, id);
+		DRM_DEV_ERROR("couldn't reserve cdm for type %d id %d\n", type, id);
 		return -ENAVAIL;
 	}
 
@@ -703,7 +703,7 @@ static int _dpu_rm_reserve_intf(
 			continue;
 
 		if (RESERVED_BY_OTHER(iter.blk, rsvp)) {
-			DPU_ERROR("type %d id %d already reserved\n", type, id);
+			DRM_DEV_ERROR("type %d id %d already reserved\n", type, id);
 			return -ENAVAIL;
 		}
 
@@ -715,7 +715,7 @@ static int _dpu_rm_reserve_intf(
 
 	/* Shouldn't happen since intfs are fixed at probe */
 	if (!iter.hw) {
-		DPU_ERROR("couldn't find type %d id %d\n", type, id);
+		DRM_DEV_ERROR("couldn't find type %d id %d\n", type, id);
 		return -EINVAL;
 	}
 
@@ -765,7 +765,7 @@ static int _dpu_rm_make_next_rsvp(
 
 	ret = _dpu_rm_reserve_lms(rm, rsvp, reqs);
 	if (ret) {
-		DPU_ERROR("unable to find appropriate mixers\n");
+		DRM_DEV_ERROR("unable to find appropriate mixers\n");
 		return ret;
 	}
 
@@ -781,7 +781,7 @@ static int _dpu_rm_make_next_rsvp(
 		_dpu_rm_reserve_ctls(rm, rsvp, &topology);
 	}
 	if (ret) {
-		DPU_ERROR("unable to find appropriate CTL\n");
+		DRM_DEV_ERROR("unable to find appropriate CTL\n");
 		return ret;
 	}
 
@@ -816,7 +816,7 @@ static int _dpu_rm_populate_requirements(
 	}
 
 	if (!reqs->topology) {
-		DPU_ERROR("invalid topology for the display\n");
+		DRM_DEV_ERROR("invalid topology for the display\n");
 		return -EINVAL;
 	}
 
@@ -846,7 +846,7 @@ static struct dpu_rm_rsvp *_dpu_rm_get_rsvp(
 	struct dpu_rm_rsvp *i;
 
 	if (!rm || !enc) {
-		DPU_ERROR("invalid params\n");
+		DRM_DEV_ERROR("invalid params\n");
 		return NULL;
 	}
 
@@ -891,7 +891,7 @@ static void _dpu_rm_release_rsvp(
 	if (!rsvp)
 		return;
 
-	DPU_DEBUG("rel rsvp %d enc %d\n", rsvp->seq, rsvp->enc_id);
+	DRM_DEV_DEBUG("rel rsvp %d enc %d\n", rsvp->seq, rsvp->enc_id);
 
 	list_for_each_entry_safe(rsvp_c, rsvp_n, &rm->rsvps, list) {
 		if (rsvp == rsvp_c) {
@@ -904,13 +904,13 @@ static void _dpu_rm_release_rsvp(
 		list_for_each_entry(blk, &rm->hw_blks[type], list) {
 			if (blk->rsvp == rsvp) {
 				blk->rsvp = NULL;
-				DPU_DEBUG("rel rsvp %d enc %d %d %d\n",
+				DRM_DEV_DEBUG("rel rsvp %d enc %d %d %d\n",
 						rsvp->seq, rsvp->enc_id,
 						blk->type, blk->id);
 			}
 			if (blk->rsvp_nxt == rsvp) {
 				blk->rsvp_nxt = NULL;
-				DPU_DEBUG("rel rsvp_nxt %d enc %d %d %d\n",
+				DRM_DEV_DEBUG("rel rsvp_nxt %d enc %d %d %d\n",
 						rsvp->seq, rsvp->enc_id,
 						blk->type, blk->id);
 			}
@@ -926,7 +926,7 @@ void dpu_rm_release(struct dpu_rm *rm, struct drm_encoder *enc)
 	struct drm_connector *conn;
 
 	if (!rm || !enc) {
-		DPU_ERROR("invalid params\n");
+		DRM_DEV_ERROR("invalid params\n");
 		return;
 	}
 
@@ -934,13 +934,13 @@ void dpu_rm_release(struct dpu_rm *rm, struct drm_encoder *enc)
 
 	rsvp = _dpu_rm_get_rsvp(rm, enc);
 	if (!rsvp) {
-		DPU_ERROR("failed to find rsvp for enc %d\n", enc->base.id);
+		DRM_DEV_ERROR("failed to find rsvp for enc %d\n", enc->base.id);
 		goto end;
 	}
 
 	conn = _dpu_rm_get_connector(enc);
 	if (!conn) {
-		DPU_ERROR("failed to get connector for enc %d\n", enc->base.id);
+		DRM_DEV_ERROR("failed to get connector for enc %d\n", enc->base.id);
 		goto end;
 	}
 
@@ -988,7 +988,7 @@ int dpu_rm_reserve(
 	int ret;
 
 	if (!rm || !enc || !crtc_state || !conn_state) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return -EINVAL;
 	}
 
@@ -1007,7 +1007,7 @@ int dpu_rm_reserve(
 	ret = _dpu_rm_populate_requirements(rm, enc, crtc_state,
 			conn_state, &reqs, topology);
 	if (ret) {
-		DPU_ERROR("failed to populate hw requirements\n");
+		DRM_DEV_ERROR("failed to populate hw requirements\n");
 		goto end;
 	}
 
@@ -1035,7 +1035,7 @@ int dpu_rm_reserve(
 	 * atomic_check phase by using this CLEAR bit
 	 */
 	if (rsvp_cur && test_only && RM_RQ_CLEAR(&reqs)) {
-		DPU_DEBUG("test_only & CLEAR: clear rsvp[s%de%d]\n",
+		DRM_DEV_DEBUG("test_only & CLEAR: clear rsvp[s%de%d]\n",
 				rsvp_cur->seq, rsvp_cur->enc_id);
 		_dpu_rm_release_rsvp(rm, rsvp_cur, conn_state->connector);
 		rsvp_cur = NULL;
@@ -1049,7 +1049,7 @@ int dpu_rm_reserve(
 	_dpu_rm_print_rsvps(rm, DPU_RM_STAGE_AFTER_RSVPNEXT);
 
 	if (ret) {
-		DPU_ERROR("failed to reserve hw resources: %d\n", ret);
+		DRM_DEV_ERROR("failed to reserve hw resources: %d\n", ret);
 		_dpu_rm_release_rsvp(rm, rsvp_nxt, conn_state->connector);
 	} else if (test_only && !RM_RQ_LOCK(&reqs)) {
 		/*
@@ -1057,12 +1057,12 @@ int dpu_rm_reserve(
 		 * However, if the user requests LOCK, then keep the reservation
 		 * made during the atomic_check phase.
 		 */
-		DPU_DEBUG("test_only: discard test rsvp[s%de%d]\n",
+		DRM_DEV_DEBUG("test_only: discard test rsvp[s%de%d]\n",
 				rsvp_nxt->seq, rsvp_nxt->enc_id);
 		_dpu_rm_release_rsvp(rm, rsvp_nxt, conn_state->connector);
 	} else {
 		if (test_only && RM_RQ_LOCK(&reqs))
-			DPU_DEBUG("test_only & LOCK: lock rsvp[s%de%d]\n",
+			DRM_DEV_DEBUG("test_only & LOCK: lock rsvp[s%de%d]\n",
 					rsvp_nxt->seq, rsvp_nxt->enc_id);
 
 		_dpu_rm_release_rsvp(rm, rsvp_cur, conn_state->connector);
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c
index 2955282..a22489a 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c
@@ -31,7 +31,7 @@ static int _dpu_vbif_wait_for_xin_halt(struct dpu_hw_vbif *vbif, u32 xin_id)
 	int rc;
 
 	if (!vbif || !vbif->cap || !vbif->ops.get_halt_ctrl) {
-		DPU_ERROR("invalid arguments vbif %d\n", vbif != 0);
+		DRM_DEV_ERROR("invalid arguments vbif %d\n", vbif != 0);
 		return -EINVAL;
 	}
 
@@ -49,11 +49,11 @@ static int _dpu_vbif_wait_for_xin_halt(struct dpu_hw_vbif *vbif, u32 xin_id)
 
 	if (!status) {
 		rc = -ETIMEDOUT;
-		DPU_ERROR("VBIF %d client %d not halting. TIMEDOUT.\n",
+		DRM_DEV_ERROR("VBIF %d client %d not halting. TIMEDOUT.\n",
 				vbif->idx - VBIF_0, xin_id);
 	} else {
 		rc = 0;
-		DPU_DEBUG("VBIF %d client %d is halted\n",
+		DRM_DEV_DEBUG("VBIF %d client %d is halted\n",
 				vbif->idx - VBIF_0, xin_id);
 	}
 
@@ -94,7 +94,7 @@ static void _dpu_vbif_apply_dynamic_ot_limit(struct dpu_hw_vbif *vbif,
 		}
 	}
 
-	DPU_DEBUG("vbif:%d xin:%d w:%d h:%d fps:%d pps:%llu ot:%u\n",
+	DRM_DEV_DEBUG("vbif:%d xin:%d w:%d h:%d fps:%d pps:%llu ot:%u\n",
 			vbif->idx - VBIF_0, params->xin_id,
 			params->width, params->height, params->frame_rate,
 			pps, *ot_lim);
@@ -113,7 +113,7 @@ static u32 _dpu_vbif_get_ot_limit(struct dpu_hw_vbif *vbif,
 	u32 val;
 
 	if (!vbif || !vbif->cap) {
-		DPU_ERROR("invalid arguments vbif %d\n", vbif != 0);
+		DRM_DEV_ERROR("invalid arguments vbif %d\n", vbif != 0);
 		return -EINVAL;
 	}
 
@@ -140,7 +140,7 @@ static u32 _dpu_vbif_get_ot_limit(struct dpu_hw_vbif *vbif,
 	}
 
 exit:
-	DPU_DEBUG("vbif:%d xin:%d ot_lim:%d\n",
+	DRM_DEV_DEBUG("vbif:%d xin:%d ot_lim:%d\n",
 			vbif->idx - VBIF_0, params->xin_id, ot_lim);
 	return ot_lim;
 }
@@ -162,7 +162,7 @@ void dpu_vbif_set_ot_limit(struct dpu_kms *dpu_kms,
 	int ret, i;
 
 	if (!dpu_kms) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return;
 	}
 	mdp = dpu_kms->hw_mdp;
@@ -174,7 +174,7 @@ void dpu_vbif_set_ot_limit(struct dpu_kms *dpu_kms,
 	}
 
 	if (!vbif || !mdp) {
-		DPU_DEBUG("invalid arguments vbif %d mdp %d\n",
+		DRM_DEV_DEBUG("invalid arguments vbif %d mdp %d\n",
 				vbif != 0, mdp != 0);
 		return;
 	}
@@ -224,7 +224,7 @@ void dpu_vbif_set_qos_remap(struct dpu_kms *dpu_kms,
 	int i;
 
 	if (!dpu_kms || !params || !dpu_kms->hw_mdp) {
-		DPU_ERROR("invalid arguments\n");
+		DRM_DEV_ERROR("invalid arguments\n");
 		return;
 	}
 	mdp = dpu_kms->hw_mdp;
@@ -238,12 +238,12 @@ void dpu_vbif_set_qos_remap(struct dpu_kms *dpu_kms,
 	}
 
 	if (!vbif || !vbif->cap) {
-		DPU_ERROR("invalid vbif %d\n", params->vbif_idx);
+		DRM_DEV_ERROR("invalid vbif %d\n", params->vbif_idx);
 		return;
 	}
 
 	if (!vbif->ops.set_qos_remap || !mdp->ops.setup_clk_force_ctrl) {
-		DPU_DEBUG("qos remap not supported\n");
+		DRM_DEV_DEBUG("qos remap not supported\n");
 		return;
 	}
 
@@ -251,14 +251,14 @@ void dpu_vbif_set_qos_remap(struct dpu_kms *dpu_kms,
 			&vbif->cap->qos_nrt_tbl;
 
 	if (!qos_tbl->npriority_lvl || !qos_tbl->priority_lvl) {
-		DPU_DEBUG("qos tbl not defined\n");
+		DRM_DEV_DEBUG("qos tbl not defined\n");
 		return;
 	}
 
 	forced_on = mdp->ops.setup_clk_force_ctrl(mdp, params->clk_ctrl, true);
 
 	for (i = 0; i < qos_tbl->npriority_lvl; i++) {
-		DPU_DEBUG("vbif:%d xin:%d lvl:%d/%d\n",
+		DRM_DEV_DEBUG("vbif:%d xin:%d lvl:%d/%d\n",
 				params->vbif_idx, params->xin_id, i,
 				qos_tbl->priority_lvl[i]);
 		vbif->ops.set_qos_remap(vbif, params->xin_id, i,
@@ -275,7 +275,7 @@ void dpu_vbif_clear_errors(struct dpu_kms *dpu_kms)
 	u32 i, pnd, src;
 
 	if (!dpu_kms) {
-		DPU_ERROR("invalid argument\n");
+		DRM_DEV_ERROR("invalid argument\n");
 		return;
 	}
 
@@ -297,7 +297,7 @@ void dpu_vbif_init_memtypes(struct dpu_kms *dpu_kms)
 	int i, j;
 
 	if (!dpu_kms) {
-		DPU_ERROR("invalid argument\n");
+		DRM_DEV_ERROR("invalid argument\n");
 		return;
 	}
 
@@ -326,7 +326,7 @@ int dpu_debugfs_vbif_init(struct dpu_kms *dpu_kms, struct dentry *debugfs_root)
 
 	dpu_kms->debugfs_vbif = debugfs_create_dir("vbif", debugfs_root);
 	if (!dpu_kms->debugfs_vbif) {
-		DPU_ERROR("failed to create vbif debugfs\n");
+		DRM_DEV_ERROR("failed to create vbif debugfs\n");
 		return -EINVAL;
 	}
 
-- 
1.9.1



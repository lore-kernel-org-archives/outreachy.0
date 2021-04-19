X-GM-THRID: 6952842807978491904
X-Received: by 2002:a05:600c:2d56:: with SMTP id a22mr21382439wmg.175.1618834869637;
        Mon, 19 Apr 2021 05:21:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1e5:: with SMTP id g5ls7531691wrd.1.gmail; Mon, 19 Apr
 2021 05:21:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwPowEf8xGpvgQyT5Lk8uIwXcEwulJVLgEryxHG8tQbN9ZMbcQcLoznfmvuZCV+3tMUDd+O
X-Received: by 2002:adf:f303:: with SMTP id i3mr14042877wro.213.1618834868282;
        Mon, 19 Apr 2021 05:21:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618834868; cv=none;
        d=google.com; s=arc-20160816;
        b=hAzisZMg1wuvkYsYHWhJBP8v4vWZbpi1/EW0f2U5yrMXCj+/wxbfMcYvNFByT67oAu
         IFkV1SIs3v0wa2h87Zukp7ovjkI54Of0dl0b2HEI9XY9Tghmqu8KCHJY6OS98HHV+fSA
         SPupgKWm9Sl4dOoA1BINCWbxlaREyF+deWjoBZs4dZ/FDd2HtZKb8au7cwq9GXYJ0IBb
         NhAP5d4uH/EoUcrNgIxL8PuN3kNnHTRBZnkYFiNSwhsEL8ODrZjqeovU4dvMPpjZVSlC
         OKMG8CzHkl3IG1UoWcZnSewBEcTo3zVAsDRc1gmPrsfgDJhYBjN4qm889wRW5C0xK3Rk
         Qnvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UviPckuLeSravMJQV4Rt2Fal6QuCweBGlvoxm1zfPVE=;
        b=tL+WjfK+Jv+S68+yz4mVQgMk1PU1mnvwQVvW1qG0+PFJhXtYJznMAzdYeeZ5GInK1C
         wht2ZxCrCn39+atBZuSs+1ETU/5tgsTa8spjY14gUwJxMjYqROKwg7G1wAx5XkDCLjbI
         fuOm/PAN/u93tfutuAmhoeSHZ5d5JDCZV0N4ACNd0wIy5I/Xm0huGHl14CXjplDXDmYu
         ipuvtRCyC6SRTc1SjwfHo5KPD1GZqGtvNvJSw4HENSMrXQvCjxYWDJ32D8qRJZCyUq7g
         zRoBfgCwhqrqzsImPr1sFOZj0LXoAhf14HD5Qa9p79v1QXcr3RF4TqG5kJbMWUtpMKf+
         3i0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ty4sxTB9;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id p189si763179wmp.1.2021.04.19.05.21.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 05:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ty4sxTB9;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x631.google.com with SMTP id g5so45872887ejx.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Apr 2021 05:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UviPckuLeSravMJQV4Rt2Fal6QuCweBGlvoxm1zfPVE=;
        b=ty4sxTB9H3zw0YaUn6F/T9qIvzUW95Ten158eMMyXgRGg98PTvZN4z2z2tjJzLdf4+
         oLVuz1d14MYU5CZHv8iHttlBw/tBMywxPU4V77D7FOO2ZmmW1xmNpY88UBA+cNjJoBsQ
         7adu5Xpsdz4HFnHZzfbFTEcbKmm/aV9ZNkBKrgNtBgYvhi+YWIvyDtFRvQgckvi5ONeB
         Ma3sbqZ5ACrf/cAGRngrQt0JG1ZXZUkwJ6XU4LpGTy7Tbu9LmUpp39T5G/ehM8rOng9i
         y2dr2R8TB/062Nq3WmyWuZAtQZgxpe6XH74pvUWEVyEtcNvcTuY/HCgC0b30VNsMOp2P
         zu9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UviPckuLeSravMJQV4Rt2Fal6QuCweBGlvoxm1zfPVE=;
        b=aT853YBwyTkFGmjXPr2ektlE/eomm3lZTFvdsrRhtRN3zZnEtKRktGKVUF0ranI9xH
         JGWZz7klz39ssOxDroD4pIt37I4V+O0nwjGqHA2fVrxF4/F/0dQWSaJ8pg1L0uLKhRCb
         nMKPm0H55oqayg6HIFeQfPwoLv2e6azL4/wYfA1vfejBuEYWw711pEL2oS/wE6Djl910
         Id2/DmKzcJCiUww3oFlOAf3luiqaIPj2hqoPiEN6j6dNAE7CIhuQyhjH6swn4yIig6MM
         EIzjUpVFJNuIFHC4CCMsSkX1dEJGGOXt8Ab8v06sk2GTjPxAuxBwG8A4FKmF7h7oh+tt
         JEjA==
X-Gm-Message-State: AOAM531NuxHFeQVICmFFHWXKs8HK+XoGfH+38Oh78VlCW4dJUncLXbqN
	3U9PfRpuvoOYa4l3BsC1vHB1yDrKgb66tuem
X-Received: by 2002:a17:906:1b54:: with SMTP id p20mr22128945ejg.477.1618834867802;
        Mon, 19 Apr 2021 05:21:07 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id c19sm12576152edu.20.2021.04.19.05.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 05:21:07 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH 1/2] drm/amd/amdgpu/amdgpu_device.c: Replace drm_modeset_*_all with DRM_MODESET_LOCK_ALL_*
Date: Mon, 19 Apr 2021 14:20:58 +0200
Message-Id: <20210419122059.738-2-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210419122059.738-1-fmdefrancesco@gmail.com>
References: <20210419122059.738-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace the deprecated API with new helpers, according to the TODO list
of the DRM subsystem.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index 6447cd6ca5a8..e1a71579f8e6 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -32,6 +32,7 @@
 #include <linux/slab.h>
 
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_drv.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/amdgpu_drm.h>
 #include <linux/vgaarb.h>
@@ -3694,14 +3695,17 @@ int amdgpu_device_suspend(struct drm_device *dev, bool fbcon)
 
 	if (!amdgpu_device_has_dc_support(adev)) {
 		/* turn off display hw */
-		drm_modeset_lock_all(dev);
+		struct drm_modeset_acquire_ctx ctx;
+		int ret;
+
+		DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
 		drm_connector_list_iter_begin(dev, &iter);
 		drm_for_each_connector_iter(connector, &iter)
 			drm_helper_connector_dpms(connector,
 						  DRM_MODE_DPMS_OFF);
 		drm_connector_list_iter_end(&iter);
-		drm_modeset_unlock_all(dev);
-			/* unpin the front buffers and cursors */
+		DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
+		/* unpin the front buffers and cursors */
 		list_for_each_entry(crtc, &dev->mode_config.crtc_list, head) {
 			struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 			struct drm_framebuffer *fb = crtc->primary->fb;
@@ -3830,19 +3834,21 @@ int amdgpu_device_resume(struct drm_device *dev, bool fbcon)
 	/* blat the mode back in */
 	if (fbcon) {
 		if (!amdgpu_device_has_dc_support(adev)) {
+			struct drm_modeset_acquire_ctx ctx;
+			int ret;
+
 			/* pre DCE11 */
 			drm_helper_resume_force_mode(dev);
 
 			/* turn on display hw */
-			drm_modeset_lock_all(dev);
+			DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
 
 			drm_connector_list_iter_begin(dev, &iter);
 			drm_for_each_connector_iter(connector, &iter)
 				drm_helper_connector_dpms(connector,
 							  DRM_MODE_DPMS_ON);
 			drm_connector_list_iter_end(&iter);
-
-			drm_modeset_unlock_all(dev);
+			DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
 		}
 		amdgpu_fbdev_set_suspend(adev, 0);
 	}
-- 
2.31.1



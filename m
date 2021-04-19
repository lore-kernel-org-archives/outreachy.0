X-GM-THRID: 6952884734330404864
X-Received: by 2002:a05:600c:4f15:: with SMTP id l21mr4362728wmq.34.1618844634589;
        Mon, 19 Apr 2021 08:03:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6804:: with SMTP id w4ls8231984wru.2.gmail; Mon, 19 Apr
 2021 08:03:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzEYnnXtzTy5LwPGZ4B5To9SulgVL9nuwj9KSdYWzPJoDsCjJY7BvRx8+8N12xvt6l1aVbH
X-Received: by 2002:adf:fcce:: with SMTP id f14mr14907947wrs.103.1618844633378;
        Mon, 19 Apr 2021 08:03:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618844633; cv=none;
        d=google.com; s=arc-20160816;
        b=dQ0Dnb/RzAhFFdYo4LmhTgVFI2W1Ia48fp6VE6a2Dd92xiKBp7W5XrfYTfq06cRqwq
         fdBD7Bx7F4pydCZFdzQRi7sJV8olrUDDfm8BX3OLL0XRuxBSm8QdaNPAC+XWxEqGImoc
         FfVSxUHO8WXZz1Od+MCQXuJEVg9Cmquwi5pDKSVkCnsM2o8psk2h44zGtUq+KEExLf6d
         6yDzCwZrDEgrt0Dn4MAfHiA3/Yhuicm4jQvwPONOHL2ozC4rXzBsDoQgQhTCZSJQHhea
         lwSarRl5uLRKdLAAOfLAVLQlfVrwI/OFMUZGiJZSeUIO15hzSlXwQy4cvrHKmHe5eF+r
         gDjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XwQs6URv7HNMupPfMl1z7anTkm71LLarAtVxM5MnJpI=;
        b=DPKSAUt7LI5KNgJA1DAFe2F3/tvcwfhUwHM35vyJjw6joUUdgS6PXdYUHaAugQMKwB
         Y2KFrYytStdOUIOAGOcNLZGG7jsXE4xyiiVJtKHw84HRgEuaZ2zGrTkOOY0a4zPMobWW
         ReFg//HUJaZDz6+XYsRbn4p6eb7IeUFHdElaCfqRJUrFqCz39PKVO4l0ADz6DWllqYnz
         vxF4BGHv8XxBc28NKlM/2y5M9OlJnxsL3/7K5VR/IZvuAok5jiCJt5r2acIEWPQHltIV
         vehaN5fE/ipBHC0SPxKr7+V4l45ySvtyxHUkAOSMuA3+OvBsGWzqfVzDfNH5TQNuWvHB
         QRSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=auTFHlrR;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id s141si58338wme.2.2021.04.19.08.03.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 08:03:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=auTFHlrR;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id r20so3654897ejo.11
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Apr 2021 08:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XwQs6URv7HNMupPfMl1z7anTkm71LLarAtVxM5MnJpI=;
        b=auTFHlrR4AaNfjcuouBHpTCso9BoF7ybZRoVlEHjIjJ8YSyVzAgPIZcxb1xGaJ1i/M
         ttVJazEbUJWItZxQbjJTYM3YtnzSpGlezabHMPHzsfD7d6qGvb3DV7sKkSKVpLIKx0p8
         gQOnOGE2fS1dJpngoIVxaReOliSuBAqwSYK/uml4YReKFtv8ia/cSf7HVQ7zBU1TQ7hS
         xiUt1L9Vuv2MQB+DmFNwVuMLhZ/lsL4/Sd4CDIBVY/WdBjOkHwUupDHNczKuzYaHOOuJ
         BvKmY74kqoRwvDzY722Gg5J5T/fNCXiJEcz8xh0q0MBUodP/3RuCK27y+8q5O4BEpjaS
         mwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XwQs6URv7HNMupPfMl1z7anTkm71LLarAtVxM5MnJpI=;
        b=rC2jFvAmUzNe3ROZrkiSYNdPl50aXvGF4q0ExUVvAXjVGZs/os/+hRQOU6ps0W/C1S
         699sHSwEdg+TnxqaOgGCJBlCJlknx9EFenGv9E9ZUupTu9UYgwmd/k4pXeeA9VHBDzwa
         2ERKkus/Seb932zqjBasI/pVSXNu1Jf00R4A0DLRfI8AE24+xIFEwgK6Sxiu3UYIvcvb
         XnWktACWKfHzvgZUZiSTFYhhHjinddCTsdjXuhrJlORethCwO7bEbih/JiH5unb2cT/n
         2/AqARnkfqOkkLb2xrF9XFJfMDBc2nder53pCuiZ/tjQeeO+PWljs/mcr5xGFkGAeJnY
         gWKg==
X-Gm-Message-State: AOAM533aiiFB+/+BdBkExmzMq2Ag9B5NyCHpM3711GrEna9KZ1glMcSK
	RO3/f6kbM3KFa0zy9WWT/TtBxHTyovaZp+pn
X-Received: by 2002:a17:906:cd17:: with SMTP id oz23mr14866667ejb.375.1618844632930;
        Mon, 19 Apr 2021 08:03:52 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id o5sm1965954edc.8.2021.04.19.08.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 08:03:52 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v2 2/2] drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_*_all with DRM_MODESET_LOCK_ALL_*
Date: Mon, 19 Apr 2021 17:03:41 +0200
Message-Id: <20210419150341.24959-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210419150341.24959-1-fmdefrancesco@gmail.com>
References: <20210419150341.24959-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace the deprecated API with new helpers, according to the TODO list
of the DRM subsystem. The new API has been introduced with commit
b7ea04d299c7: DRM_MODESET_LOCK_ALL_BEGIN() simplifies grabbing all modeset
locks using a local context and has the advantage of reducing boilerplate.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: Added further information to the commit message.

 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index 671ec1002230..0e9b7a180ee7 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -1438,8 +1438,10 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
 
 	if (amdgpu_device_has_dc_support(adev)) {
 		struct drm_crtc *crtc;
+		struct drm_modeset_acquire_ctx ctx;
+		int ret_lock;
 
-		drm_modeset_lock_all(drm_dev);
+		DRM_MODESET_LOCK_ALL_BEGIN(drm_dev, ctx, 0, ret_lock);
 
 		drm_for_each_crtc(crtc, drm_dev) {
 			if (crtc->state->active) {
@@ -1448,7 +1450,7 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
 			}
 		}
 
-		drm_modeset_unlock_all(drm_dev);
+		DRM_MODESET_LOCK_ALL_END(drm_dev, ctx, ret_lock);
 
 	} else {
 		struct drm_connector *list_connector;
-- 
2.31.1



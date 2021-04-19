X-GM-THRID: 6952884734330404864
X-Received: by 2002:a2e:8e68:: with SMTP id t8mr8939651ljk.497.1618844634353;
        Mon, 19 Apr 2021 08:03:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:bc23:: with SMTP id b35ls4446879ljf.7.gmail; Mon, 19 Apr
 2021 08:03:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyqbiqZhfeRvin9tkesOQG2262Hqny+yM77cafHAhGmpwnGVv6j6+mooV1G7/r0n+NdT/XZ
X-Received: by 2002:a2e:9f07:: with SMTP id u7mr8260464ljk.423.1618844631383;
        Mon, 19 Apr 2021 08:03:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618844631; cv=none;
        d=google.com; s=arc-20160816;
        b=kGYE8kjGi8xfItewM8mlfJobm1JXbQn3Nt1nePasktiaYntio/HgNDXkb19Yaddxmh
         PLHu11l/Kt7HMUBL6FtbBARhiG62msLZY6DKQR7X0tKrYqmno5BcEtaHOpekXYFt/1qc
         tt6LnDVM8p7oVQ4Fw17Z2sefEFIXv75tFzPBbbJOp9om5abxHYfv8ey6bVlsPKjt9srn
         ur3rnVB/y0QaMuLBXSD7rzpOPOGvuEX7Pce+1FXYHIBFYhzupcHO1vh0X6RAmVH6hkuJ
         +FTBBxkJOMCIUTTaOZxK5qTpksm7aENHtPkXz1I7xZXchHjxokOjID5JqZOPxTP2Q5DC
         ixJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mME7QStyZ5BrwM08xDu1fxRf1Oo+GkwgOIUtA6qwi38=;
        b=uKWRWJBeohkxAFmkHekywEgwRWTDcMGw+Vu80fQ0wxOkd4YXyxY8PoqDP9QmQR7API
         dZvAbjtIIOxdbBzkm0WtFiVKoIn/lM9xZV57obMRvDU9XRlqc/zXbZ3yBH5qdSKjYG/5
         s/MzNZynCsbMJPRkkBgdvEnSId86J9wOcz8/YBL+6oDUnyIqcNYJHazA7KkRM1SYfZyX
         s1tHDiLU0pzt96Njpw0gLa3QhHjVH8Lu6GBf/vXAfMoFL3jMDDgg2Gks1h3upPO6eent
         YhhnabIKzLAr9WOuJxncfj5ZQgvi8cQP2qCAqDl+clOuw7iuvaRtPPKE6cSSTxNwmRx9
         AM2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GYahGRFx;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id p18si677309lji.8.2021.04.19.08.03.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 08:03:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GYahGRFx;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52a.google.com with SMTP id bx20so39981934edb.12
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Apr 2021 08:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mME7QStyZ5BrwM08xDu1fxRf1Oo+GkwgOIUtA6qwi38=;
        b=GYahGRFxoCkDkptsI0M+C6r0P4ziaDFqoRsOf1IW+3wx7+GhA+uCZZ5M9xi6uqDPx6
         EjYB29JxJlIpiFTDPPUh9QpUb5cRcn3ovDJIgpSyqHSyp4XIKJ1DJoJH7LOO93A7Qjfa
         UYysMxAh9wXFnkbsuZuLcTD7IOastl6LvKt9VUOy/TtM+enEYzlJHnVtSXHfJgiAqlm4
         S58f+WKpFZigkxmDL/nYYjCvOPTCSnJB4dKGqk23u4rvPs8jDbQhAQB7+/NmzL/ZOBHA
         1lSLAR/AHdz1ahdjMmS6cU3t4tX8utrZwG1ePFCYpOvz/qXbhibpW4uYreypUoP+VVBi
         Y4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mME7QStyZ5BrwM08xDu1fxRf1Oo+GkwgOIUtA6qwi38=;
        b=oObLhW6E8DykJo1h9iXn31jYOwtv23M9LFdcbshiEa7IfioK8ARspDWKnKXcpTrLCM
         qB3nd0WNHTc92ZHS8bMHr5vqe9GcPaiktsAD1ATx4ZUDRBJFX0QQ9amwbVWhcfhjRLRN
         UZp4WeGmXLliYCEbhYtgF45CoD0nrNTbvpAoobdmLljMLIyTjdWWE3+CH0axtLs9Sahf
         AYL6J8G7qR8vpOig8TcUnXh4Y/LmMXX0EEISaCesN/7orkrLwFBu0akINXx2SqtcpcHB
         RYzPJelefLjiW4xoIdowTTMe6/UQNi6Nbo3lcSGHWoaYnQI8TVfftduGNwWinuozehyB
         I7tQ==
X-Gm-Message-State: AOAM533hi68SpNtZtm/mwaMo5LZlyCh69nRTZvI8VuKcbSpR52owyPHv
	fmQwcewYDseHW+VHHS5iK6U4OPansRa1ELh2
X-Received: by 2002:a05:6402:278c:: with SMTP id b12mr26387242ede.145.1618844630674;
        Mon, 19 Apr 2021 08:03:50 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id o5sm1965954edc.8.2021.04.19.08.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 08:03:50 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v2 1/2] drm/amd/amdgpu/amdgpu_device.c: Replace drm_modeset_*_all with DRM_MODESET_LOCK_ALL_*
Date: Mon, 19 Apr 2021 17:03:40 +0200
Message-Id: <20210419150341.24959-2-fmdefrancesco@gmail.com>
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

Changes from v1: Added further information in the commit message.

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



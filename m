X-GM-THRID: 6952842807978491904
X-Received: by 2002:a05:6512:3681:: with SMTP id d1mr9137179lfs.495.1618834872348;
        Mon, 19 Apr 2021 05:21:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:c22:: with SMTP id z34ls423977lfu.2.gmail; Mon, 19
 Apr 2021 05:21:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxdGYCmdC7CxqF6EdtRnH+ETDN5j9jB6BL5OyPcBNK+ce3duN270EKeRyFbTHWoMuwG8ix+
X-Received: by 2002:ac2:4a87:: with SMTP id l7mr12352464lfp.586.1618834870737;
        Mon, 19 Apr 2021 05:21:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618834870; cv=none;
        d=google.com; s=arc-20160816;
        b=D3LyCgKe3IED/0zZVmwYHvPIR2uIhunL9bKy2Wii2GpCmqio9s6udcoJqUf24L3NKr
         qtBjyqiMh+smORzJhO9CivysNOH8qBCijsg2eMw3sHkA739FaEDvl5Y86AsfneVFmYB2
         Z/w7cffbtcRFYJhZk+AmhjzG6b5AMMH9owg6J4lcKRVb+a4Fzgf7NqWtxngM/QHs+8Op
         tNkzEjdUw0BR0BlUKILwLHwwXdG+HH8xPikFY/8MakUTHC+CeZDD2ruEd+bX4a2nu680
         W07CZBkBteN3MadvGkJwv9aGBQhie2HAXSOHfsVpppnMZc3om47R4GIXQUe8143YDeH5
         Guww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zhvfaxDa34GkMn7qTdktOnF1iTHsEAngxP1ACkMOLqQ=;
        b=XBO8JRH/JhUrfhyvg5SGbUNz/c3KOvR4VPQbLFaGRIODCKV2o/lUMIQyPIcpJ912cY
         P3PXH/zFxjbZgSCyL+EIDg0ABM4lnfRwa4OWojEbyEeXRh6IsHiqqC/5NeiJC/wCIWbL
         3qKJYPyL9uVrrWxHksuitTOXbPRP78eIUd125AlvP0G5LrLc4K14eqXQEDOq7gcyfB6n
         M8PlLBs3Ycm7igmBbe4aQ/AZeOYUiww5k/z+uXip7rKhIagp2kI0/YE7+szx5vNqJSjE
         vP7ZP8hP+rjlevi8kFqF9MLPycmmd0/xlHLqRQxkypzPvu1aqI+trMCzJdxaPVvfqg94
         pZ7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZbxUu6hM;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id l11si640456lfg.13.2021.04.19.05.21.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 05:21:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZbxUu6hM;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x534.google.com with SMTP id w18so40492938edc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Apr 2021 05:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zhvfaxDa34GkMn7qTdktOnF1iTHsEAngxP1ACkMOLqQ=;
        b=ZbxUu6hMwMC0SgRXkEY5H8EE1dWIT05183i8gpkHVnBdTSY8UWEW8StM/qjxN89Z00
         OAFwd3criUveEqV2uOpU7s6o+juIQ7lf4Z+3eGXFky5EeCeIQ9mad4Xxkm7gEvQiOlHG
         1FgSplZmXousFSMfFZ+vPd2m1rxrWThQBKu/vz8P2SDM5htivQ37w48PJso8kag9qvhZ
         Dckklsx3aotcc1TAAxVlkZqqFq7bCrS+80jSVHdpx6t2xeLXErGqzRoPwTiFKHA54tOi
         f/qYuPfpSyiZ5QVGagTc1iFUV2MoI10QFEH5A/YqgLEPHppikV5c0FNtzOnTp1AoJ/VO
         WOUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zhvfaxDa34GkMn7qTdktOnF1iTHsEAngxP1ACkMOLqQ=;
        b=W2UnRQ0UUACbDZyTG5Mi9zFhUFNN7q8WVIJPcla5Kbo6oA8gjAvHUd1tVVjP3tGGre
         t7z33nW830wCQ28P6Hcot8GtRdVg/ynVChnVbVPLSkT024YnqN1u+KFR6b3Sl5L1KsJj
         iIll0cSGNJFB5W0WvIhixq5yb3bXtSsJ3CsKS4H38Vo8lVxPVWr8kRQm8IBs9JjX875G
         f5S3ppN38ATxxYH9nF7SRKDoJhWxxiVssKbuH2QiXXzvIQKaBoSXtB3TH0jXFTiZlJG6
         /1od+PL9gI3EJB7O6kYBD21A1bjUeVHISk+qw0ILm/oRb+lNNqEheRruV9lv0lGEz88N
         s49Q==
X-Gm-Message-State: AOAM5325Ayx7U5g38lnN9zp67hsQZ188jv+C9icWC/zhuZrakLaMMSL4
	/IuBY6klOF3srMQLbtZNDsHd97iWm0KMuvNd
X-Received: by 2002:aa7:cb97:: with SMTP id r23mr25005111edt.106.1618834870041;
        Mon, 19 Apr 2021 05:21:10 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id c19sm12576152edu.20.2021.04.19.05.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 05:21:09 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH 2/2] drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_*_all with DRM_MODESET_LOCK_ALL_*
Date: Mon, 19 Apr 2021 14:20:59 +0200
Message-Id: <20210419122059.738-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210419122059.738-1-fmdefrancesco@gmail.com>
References: <20210419122059.738-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace the deprecated API with new helpers, according to the TODO list
of the DRM subsystem.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
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



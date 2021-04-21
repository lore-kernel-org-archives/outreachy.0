X-GM-THRID: 6953573775310848000
X-Received: by 2002:a19:480f:: with SMTP id v15mr12707559lfa.13.1619005062720;
        Wed, 21 Apr 2021 04:37:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9b88:: with SMTP id z8ls369289lji.2.gmail; Wed, 21 Apr
 2021 04:37:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyuMwRZuIafsWESp4WBBF8i/3T63IdPz6KCzx6Ekwa/8NZn2pZRMZ+FKt9ppTHgHQnxrv0P
X-Received: by 2002:a2e:b0d5:: with SMTP id g21mr18489631ljl.258.1619005060658;
        Wed, 21 Apr 2021 04:37:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619005060; cv=none;
        d=google.com; s=arc-20160816;
        b=gypcmgxEQ6ItRVOz7xBQY05CwA6XQ6+dRVdeKjrBKnH9+q/fMbjW1PAMtcV6ynNjqS
         A/7nsi8Ivqos/BG7DhL3Us/JZt2oVmJZZi56oF976aXxYY5DxrLz9EbTDmkI6uQc18Oq
         9EfJSz+xkUWJ7Ck2tzAHhh2l53HnBGMD9VuJ9Vbu6mGNGKivjVTa/txPQGKKnkNnewuZ
         dCFodiYB+Q+52rkv9DB0Z3d0btpWP4Kov1xYRvET9rw+OsdLl8yU5vCOr9v1GZ04xbr1
         DXe3GXQ/BorR6HLMmNbLhZ2fYorQQZY4Y96sW6PtifV61+aAk0V1LZWuGaY4OW/BBjvt
         6BIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5XOmtO3aKusCf5Lce/csfkJaMwNoZRDDAdYgLWPv+zg=;
        b=yEPjZQF4rZFCEbEu4PInJBJIyM/Z3uawBD/fKdpC6h6lSjANO79bPjORd6eARTMJTb
         cU8TQdTZXqZp4vu117nJr6w27F+scWSKaDSPidfDnxHsGxfx13O7i7/kxFa5MeBURBiu
         H5DHPmbsY3ArkA1ff8tW26EHEnOmKnNSPVzf3wotNO6bHBBd/fJUImxW46WB8k6DJhOn
         HvUc8poDj38f3V+K7BzEdRhiSEPQZV8HFUk+rxPGYK+O5y+728LNU8bNvfB1acrONswZ
         JuXZjQeDeBLEcedfkJyN0ssM3OyyiIfWB+y/BLjp0ozOIi79XcR0wGwDNnGJLf6MEt0g
         lCRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eWSGEpvK;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id d19si153290ljo.1.2021.04.21.04.37.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 04:37:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eWSGEpvK;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62c.google.com with SMTP id n2so62986511ejy.7
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Apr 2021 04:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5XOmtO3aKusCf5Lce/csfkJaMwNoZRDDAdYgLWPv+zg=;
        b=eWSGEpvKLBek7/lVsE9LjYvp7By04Sr4KhlTSie0P7xukx+mwKDhI0v8poXW2RDY2m
         +BvrL5WD781MJQnlHczy/gLqAQELgitzF7hGxS4jSbAr1Ab9Ra2tFq76qxeCMcjV+CXt
         ONND88WYtVk/N63mIqq/4hU7mObQrq1czFA4Bjm8ZdeY2fURcDQoKKzqAvlXag4WPRc+
         qV4Cr6QR/uuaqn4Ge8aq0nDtHftrIByMex9pznuABAzeZgX/9YZE9XKIKwKNv5Kym70D
         XG78BVjq6gi14vAPzZs+gQKd1f0s1XInNfCUMo7ep7D69GAHBR/G1GJtfkAUgD+WfP28
         EMXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5XOmtO3aKusCf5Lce/csfkJaMwNoZRDDAdYgLWPv+zg=;
        b=VLUFS+jgWq1sWEs8s1rkJqY9Rv/e1LEZPJeqVgQ1ADcqFTyBR+KcVZmVUlmqEvXX0r
         pDW6fqgLD0Rk8EIiMwYUP8AWfXwHyHVY8xyYZ2vf/RLjjbGvK9WQTk/8q8nRgvbPYD8a
         9QQ1gQfs2LxBUx5yOHJfQXh02JKeBmBqYwO9RfijNWpKrXswGTY3+vLPdMZrJ/T5pWdr
         f1kSsmNTT39IOq159sxpNSP9keMsZmjdinAoxu8Devluje5ZgkA/mxTq3/mdxls6CVbe
         wgqL1XTSazw+oKQ4J35gfL9yFLi2pkrS+Ie221H0H/Nbe2cpWpBR+2KZig1FKJ/OYC69
         bM4Q==
X-Gm-Message-State: AOAM530n4FJts+uDfc98FflBE9uic9sxuUnb986CtUHJV7J34Wg/hOCq
	AX7lW76YoOu5hH3IOL3o5X9fNDi0JMFWCJnA
X-Received: by 2002:a17:906:2b03:: with SMTP id a3mr33358442ejg.481.1619005060187;
        Wed, 21 Apr 2021 04:37:40 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id i1sm2735928edt.33.2021.04.21.04.37.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 04:37:39 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v3 1/2] drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_lock_all() with drm_modeset_lock_all_ctx()
Date: Wed, 21 Apr 2021 13:37:15 +0200
Message-Id: <20210421113716.15472-2-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210421113716.15472-1-fmdefrancesco@gmail.com>
References: <20210421113716.15472-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Replace the deprecated API with new helpers, according to the
TODO list of the DRM subsystem.

In this first patch drm_modeset_lock_all() is replaced with
drm_modeset_lock_all_ctx(). Unlike drm_modeset_lock_all(),
the latter doesn’t take the global drm_mode_config.mutex
since that lock isn’t required for modeset state changes.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v2: The work is split in two consecutive logical steps.
Changes from v1: Added further information to the commit message.

 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index 671ec1002230..856903db34c5 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -1438,8 +1438,15 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
 
 	if (amdgpu_device_has_dc_support(adev)) {
 		struct drm_crtc *crtc;
-
-		drm_modeset_lock_all(drm_dev);
+		struct drm_modeset_acquire_ctx ctx;
+		int ret_lock = 0;
+
+retry:
+		drm_modeset_lock_all_ctx(drm_dev, &ctx);
+		if(ret_lock == -EDEADLK) {
+			drm_modeset_backoff(&ctx);
+			goto retry;
+		}
 
 		drm_for_each_crtc(crtc, drm_dev) {
 			if (crtc->state->active) {
@@ -1448,7 +1455,7 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
 			}
 		}
 
-		drm_modeset_unlock_all(drm_dev);
+		drm_modeset_drop_locks(&ctx);
 
 	} else {
 		struct drm_connector *list_connector;
-- 
2.31.1



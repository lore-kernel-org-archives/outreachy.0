X-GM-THRID: 6954012466570330112
X-Received: by 2002:a05:6000:114e:: with SMTP id d14mr5768731wrx.281.1619116768471;
        Thu, 22 Apr 2021 11:39:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls8212340wrx.3.gmail; Thu, 22
 Apr 2021 11:39:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxUunfQElJwUPcwgZJ8/IXItArYwbtRQJaUPW9EIvpq4+EKmUGS450/a0SLDyVPJPiCXUdB
X-Received: by 2002:a5d:6d41:: with SMTP id k1mr6089833wri.66.1619116767142;
        Thu, 22 Apr 2021 11:39:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619116767; cv=none;
        d=google.com; s=arc-20160816;
        b=byXGbdiY/vQROaSVmSParoEbbFsbzV81trtLHYW0tfuW/VpcMxaI0w3ZTO3xhiTwj+
         KtUn8kdZemjZlpDhuPKODXDKqZDG/CUNBdHiVLFk/2lm4SQRpgb0HqkL2Dzlno6edWyw
         Xf+amXwD/jZm6bCAZiiGZYPqnqczdeg1epIjlA1cx7PgSyJcCQO8G1U+rujqCQaGbgWP
         Afj2U9lcccGDWwvBwcoXF28l8Fosa/lfPmIBgL0uDy1QHvCr8Yxf1XXt6jzzPNyZ9M5l
         U3yZQR7pgvzLt5RXqMnQeeBPLg2Sn4GIyTSUdnUWw9ik2xq8xy11X48ScktTnv3uF4vT
         sCGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=xeakXfmAJOS4QPn/pFkDvo7FQKYVhQEklCs4O1KqYzg=;
        b=d6ia+VA8QNLA2lvExcVGREpbtwtIW1WQKBsPTfqXmBdZ4ANqucA+9p5GT3ME5HROSH
         4CivZJeRR2ORoxBkfu2pNSl5pLHkH9h0VFddyxrjjqDxABwqEeXItHYrMBU6pvfHHA0Z
         tpC09BhhN7J4RNQRooCmgl2BrmyVxot8rnnkUSAv1zI3JOBVRlmK9lqbS+s4qsROL+ar
         PjtllRyFQwwgkwlJXBayWAVVr08C2Zv6zwhMO49x2nEhf5GMPqm1zVjmgb3bD5hCw6V+
         nZeSjaTkzTRwdYFNLqvWNC0AS81WgmUbAWB0PsnF7m6jG1ecjiQOFOHnMz5+78ELzMq1
         qocA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Te3StrIu;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id p189si381111wmp.1.2021.04.22.11.39.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 11:39:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) client-ip=2a00:1450:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Te3StrIu;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52b.google.com with SMTP id i3so28994644edt.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Apr 2021 11:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xeakXfmAJOS4QPn/pFkDvo7FQKYVhQEklCs4O1KqYzg=;
        b=Te3StrIurIlXM7JD0tojCAKgXyZmenFjxEvny1HGsbiD5E7hyVbsxG4Aj4pxpRpPbD
         +PyuBGAcSh0IeQpGQpaCI2OSd64pl6ayBmKaG465/3kmXYrlfAiDoAKL6KvwhuAvJV6M
         OxiF52j1YskkcEHtYxLIp8dTvkQRBC8VVMqbeSeL0GSd71w7kZdhCFditMGTuHXjjtwP
         qtWSM4YSG/jU38tDcjNXFFaZk7ER4QPrPFg/GfIJqjF6G6vP3OA+Hj4lFbIMh47fwYz5
         gE+YI74DF3vdpQkbZG1jvWZatfWYnahtIfpib4OazwOIa8IN4a1KsfV24ReaCy1o5802
         bnSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xeakXfmAJOS4QPn/pFkDvo7FQKYVhQEklCs4O1KqYzg=;
        b=uPjJkM5HQLS+K9e0GZYY6JYiSPXVthIFq4eLmgOdfMcj+K6fKVT7bqfWVQ+P1D3Afb
         SIFTHVp/E/BlKS0ew1eCfq7AWIwdla3mP+Xl5lr5ZYy26GU+5pyVvbJQvd24PchOg5dq
         lZoiMzQIO9bqNa1TnkSIErXxa5hQ4GLGF0/MoJPX3WxUP6JCJReIG3GzdZzdLwOe75T4
         rAFYYaa/zEvfuvi0bjY/BDlrkkCMdtEfHWX4xtd8oRARTtMsVdXzGapad4FWDls8gWGj
         9ZXV/HedMRV+/ikGSoB+a4Jyt4at4VJfU3SNA/JtS8Xfr/75Eplibj/ic4TkeXimD6rW
         t9og==
X-Gm-Message-State: AOAM531C87DmGqWfs3mw0wMRYptw0MYPP0blMM9nNxAw7gTF9b7Yx6fH
	GhpwdMKRVRE+dSNy+kr4Kfj+4hiYYq2fDN4x
X-Received: by 2002:aa7:c7da:: with SMTP id o26mr5636731eds.244.1619116766695;
        Thu, 22 Apr 2021 11:39:26 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id c12sm3152896edx.54.2021.04.22.11.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Apr 2021 11:39:26 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Christian Koenig <christian.koenig@amd.com>,
	Huang Rui <ray.huang@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Matthew Wilcox <willy@infradead.org>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v2] drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_lock_all with drm_modeset_lock
Date: Thu, 22 Apr 2021 20:39:19 +0200
Message-Id: <20210422183919.14959-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

drm_modeset_lock_all() is not needed here, so it is replaced with
drm_modeset_lock(). The crtc list around which we are looping never
changes, therefore the only lock we need is to protect access to
crtc->state.

Suggested-by: Daniel Vetter <daniel@ffwll.ch>
Suggested-by: Matthew Wilcox <willy@infradead.org>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---

Changes from v1: Removed unnecessary braces around single statement
block.

 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index 671ec1002230..adfeec2b17c0 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -1439,17 +1439,15 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
 	if (amdgpu_device_has_dc_support(adev)) {
 		struct drm_crtc *crtc;
 
-		drm_modeset_lock_all(drm_dev);
-
 		drm_for_each_crtc(crtc, drm_dev) {
-			if (crtc->state->active) {
+			drm_modeset_lock(&crtc->mutex, NULL);
+			if (crtc->state->active)
 				ret = -EBUSY;
+			drm_modeset_unlock(&crtc->mutex);
+			if (ret < 0)
 				break;
-			}
 		}
 
-		drm_modeset_unlock_all(drm_dev);
-
 	} else {
 		struct drm_connector *list_connector;
 		struct drm_connector_list_iter iter;
-- 
2.31.1



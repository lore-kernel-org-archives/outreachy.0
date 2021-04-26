X-GM-THRID: 6955548350432149504
X-Received: by 2002:a05:6000:1ac5:: with SMTP id i5mr24982799wry.412.1619465338823;
        Mon, 26 Apr 2021 12:28:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:64c2:: with SMTP id y185ls162306wmb.2.canary-gmail; Mon,
 26 Apr 2021 12:28:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzGffwtx7iSGtt4JvGpxC3PWbTtIxjb04CkJIKgF9jq24O7hSaEyl0T1S7+kFA89EECcqQ/
X-Received: by 2002:a05:600c:2148:: with SMTP id v8mr13787832wml.35.1619465337389;
        Mon, 26 Apr 2021 12:28:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619465337; cv=none;
        d=google.com; s=arc-20160816;
        b=PKMCjsQgNowwEzj1cD5Jo2xf74xm2ZEpcaoCaiJ9AryBqFXuluq3Y3ItaiDzxNRTDS
         /5RR6jfdVcmuJ0tWpIbv4WDpV4Ea+KwrDCBnGjCyex0cfCtCuZdtEbJvFI2Vui6oolwY
         yOmsojHB+FYW72q0hx0DXm9EdDb1KXhz5A8aMgext6CILgZRHDPreknuKEhb54wdYOAP
         V5lXv8KPsE2cpy33xKKR2gLds7/IX72zliHFbXX9cQhgMrdfKoND9rB5Lr2gXn1R0p5L
         Qm+Plp1C747E4kb/BTnqWm8zAn8oPzK5D7lCNe9J7nXy2klr2sqVJ3X4KdlCuSVxXUOb
         dPwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=uPSGYcihSYfm5NnA+nu9YTkGLMVNgdMxJvMX/B7FahE=;
        b=ENq/aeqH9XtJ7UUpuEoC6Na9nyJKLOZs7egErG8GymYCqeiagX+roKuNPn5WqCAv/z
         q17oB7T+5HKch6zwbbemtw2FpUEuF4XbUGyAk2fRm9yyBpS0f4oplA4GaCddNn0rOotL
         9pUrdF2cxO9e7d48VHBGdDB+p/fOsmB0K7+8LO3/SYAq/7CExOCYuUddALjyp3bFPURt
         Z+4MxV2qmEK8IwtXBq5xxWFZNPl2i2UWfTefKIMEOBUWSNXiob9lqDkd8wF962Nzblri
         tNyW/YWo9FYUK1sD14TMWyCmPS4fPcbOR1VSjezT/gzF2ZOtLt+sjHSDUeOOqr8A5ZO9
         WIAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ctXrYWq3;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id x11si474450wrn.1.2021.04.26.12.28.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 12:28:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) client-ip=2a00:1450:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ctXrYWq3;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62e.google.com with SMTP id u3so7440380eja.12
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Apr 2021 12:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uPSGYcihSYfm5NnA+nu9YTkGLMVNgdMxJvMX/B7FahE=;
        b=ctXrYWq3oz6pjzAXmFpyJd/LoD0/v+4tl7HlYy8uF5CLLgpv6M8UmNUPLsPomE0iA1
         IbJjJZ6tjjLS4sM55IgbpW9yDGZzZn9pJHHIFxfMVa2gbPU25sdhChZCVgJUZyDvH62f
         IvusHlYK/dmNk4ddrQjOcQclx+tRkOIOBAOx5eh9z4GyeD7KsOwiwr6GEsOB2U1r1ZLy
         fu9vfUQP3WT+EHM1aJ8f2ZuYcJbO63u9p+9s7HLJ/tKORD6z95KhytxfMmgWW55FD4dh
         hCnTI5CqbHAR0XGbUSFIdUl+yXW3JUsNHGjIphoFg2dAlbppxLp6deUJSN56Ovvet3sx
         xZCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uPSGYcihSYfm5NnA+nu9YTkGLMVNgdMxJvMX/B7FahE=;
        b=Abbrzj9hMk6S43ozV5HmWfP/+HY6Erkx9Bf5lOKavQ1dl+Hh5nBo2IXlMSKR/8aTMx
         mN9zIocj7MTqS1EciCfCS5AhOt2qt+WTCrlfBBa3SOS15XuQr52bjlHff0Xw3h5oa+QB
         izXvuKBqzaETi5/omt0B7rmTbxNOEo7vBdiAiiCg9vbEPYKLLZ0XgtRj9Y0k0Se22LqY
         vuv7ymGIooOIvUoFBogZ9/MJhxm8Nm+nKM7Ln7dac0MBxnOLl+YDeiAlVDsHiZJ0/2dd
         9Jb6wkmX2zde9uj3G5OTCGFR6a/k0ETgbgjkXeBrlYRNrnjEMBmShRta29h11w2zolZE
         4Z7Q==
X-Gm-Message-State: AOAM531kbR84DHAcwPnqHxlYzchjYpL1XoDNFOOLDoleiWCExdAGtMW3
	nQYIAt8WYw8/dlWjzSWqdLEuVTaleAH6P9Lx
X-Received: by 2002:a17:906:cb88:: with SMTP id mf8mr20576558ejb.541.1619465336843;
        Mon, 26 Apr 2021 12:28:56 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id p4sm807568ejr.81.2021.04.26.12.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 12:28:55 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Huang Rui <ray.huang@amd.com>,
	VMware Graphics <linux-graphics-maintainer@vmware.com>,
	Roland Scheidegger <sroland@vmware.com>,
	Zack Rusin <zackr@vmware.com>,
	Matthew Wilcox <willy@infradead.org>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v3] drm/amd/amdgpu: Replace drm_modeset_lock_all with drm_modeset_lock
Date: Mon, 26 Apr 2021 21:28:51 +0200
Message-Id: <20210426192851.30155-1-fmdefrancesco@gmail.com>
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

Changes from v2: Drop file name from the Subject. Cc'ed all maintainers.
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



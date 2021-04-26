X-GM-THRID: 6955548350432149504
X-Received: by 2002:a19:4082:: with SMTP id n124mr14220370lfa.154.1619464799928;
        Mon, 26 Apr 2021 12:19:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls1955195lff.3.gmail; Mon, 26
 Apr 2021 12:19:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxhFHLCyLGpxzzTk84PqhIQJa66hiovsR5soJbrM/skdQlt+gNhbdHA+Eydj1MgT7hA1e7v
X-Received: by 2002:a05:6512:3159:: with SMTP id s25mr13160179lfi.416.1619464798257;
        Mon, 26 Apr 2021 12:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619464798; cv=none;
        d=google.com; s=arc-20160816;
        b=Chwb4geiyak8N5BclflhW2jSeovHfVcMhAsyl3VTBRf1/f6IX5gUFUHLi1r5K1gQ9x
         F5i7RqjttmjgHh6NfU6AKz8nGydxClRoSBevQc1qp9kTJSm/G8ugb+0biUqo6zLwDQ8e
         3VHVc26Uol7h1zQgaWakLeBggAbTErkfs64vXUMLS9YMucUNWozQc87U1hKIVi6lLYEw
         kYk5qhC42EgtuLbgOh5V3jHZV1X+zOwXvuq7YUV0chHi7KMm500r42dJ6p1A/LBikIkr
         sFswB2pvOAG51ZwEu+SrQQlCxuX/Vea58GJq6j27nOJDa0ZKJhU20DoK+OkrW9mfy4nn
         joHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=uPSGYcihSYfm5NnA+nu9YTkGLMVNgdMxJvMX/B7FahE=;
        b=tmVHyyMZjP/QPT80StXTgB8Sh0dr5oRM4bTfmn42wYOcqhvx32Xa+Zjc7k0u9oiy9x
         3QovrPZ8RhFBfUpxOOj0xXLNh9VyczR8e+VgmYHhx4+nowdA5BPSCw/2dnaWUSjKDnIp
         a6AgBZhVx+jVy23TiKhxyWQ1cdj2bTT2Q97Lew54M4dtbF80Zhd9tgkggPYKHkwg4SYE
         XqNAhOuJswhW66N1kApDo23YZ4o45iXpCyBPu6IHJTPEJa/QJlimr/U02NhdkU1+CjFJ
         ZLEr02cKfsiwWxRNoiIR9L1ZP09UvSAmmV+RUQ+7X3J+wTCAH6BKOZ9Z8Y8wbxtUmVwQ
         Ka2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WMibWvRW;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id x6si1112954ljh.4.2021.04.26.12.19.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 12:19:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WMibWvRW;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id w3so86150850ejc.4
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Apr 2021 12:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uPSGYcihSYfm5NnA+nu9YTkGLMVNgdMxJvMX/B7FahE=;
        b=WMibWvRWHe9598QLkUkR1PFJFBTq3S8q3+KsuQPGrI1VvjLWu7dAuOSdipKauCEyOs
         EIR/XLrvRe3w1J3V4JvNdHsXbQQFkOyRlaFgbVfw7iLGnVVpLYJday9poK7L/6qDrzeb
         PtXav7gnPmbFWFh9txlaM3yj0I30KBzxf2pzLADRunxi7O2Kx8aAIphhKAF5don1vLRC
         pqGhM37wXjQh/MOx1YgrRYjB6QyASjt9o0OcYSDu4jcJY8RHDu+Sj9Qo7qDHV/1Tg4Hz
         aCr4MmJwR+WWOe9m8F1PLqXmGXDfZvl/tgia+E7ZRagvnAdVZ9XS9au1A/2X2mYNlOog
         KUdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uPSGYcihSYfm5NnA+nu9YTkGLMVNgdMxJvMX/B7FahE=;
        b=P5mIqFH10Dprrd0Aobn8HYU3+DiUELVMWOKNtUouUN+VBuNCa8JQSU/q53SL/udN87
         3f+fco5+j5U81pvUepPyfPFthbe+mes24wpzTiZH5pcPr5/7UkMuW+ePGv0PLX/ALlEV
         C0xMsPRPB0LMnWABER7GiAyoVvUhNs5Tk4uyKXzZJeURv+xzqUPoXBB/anN99fZpQL8a
         kpr3C6l3dBHAmQwKu4Qk4i5LPQWST/R0E7PKbd+6yB+eXoocEMEUV97UtdSug0mjwKqd
         v+2d1pe+nMy7Jlp0pCGMDTFqs026qMV3nxmKSq9glWfzUBsa27kJPOa69LUbhBedAVhe
         FVWg==
X-Gm-Message-State: AOAM533oe6v8z/XYRij+5IFEiPsRZsgyh1wVGxbgrdtNQmtCO+03CYl/
	PfNG3GbOn0e7VZszIHp+ZeCozDYQ7ETZdA93
X-Received: by 2002:a17:906:85da:: with SMTP id i26mr7946351ejy.287.1619464797585;
        Mon, 26 Apr 2021 12:19:57 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id k19sm11878059ejk.117.2021.04.26.12.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 12:19:56 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.fredesktop.org,
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
Date: Mon, 26 Apr 2021 21:19:52 +0200
Message-Id: <20210426191952.24385-1-fmdefrancesco@gmail.com>
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



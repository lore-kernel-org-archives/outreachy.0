X-GM-THRID: 6954012466570330112
X-Received: by 2002:a05:600c:2112:: with SMTP id u18mr23652969wml.33.1619516698269;
        Tue, 27 Apr 2021 02:44:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls5243629wrx.3.gmail; Tue, 27
 Apr 2021 02:44:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwEFgfeGmvRUaVczGn6zzYxFIUxUhlVVsGglidVLeNzWBPcb39jDZv4SiTGSpZYc1OVTz5+
X-Received: by 2002:a05:6000:1091:: with SMTP id y17mr27339377wrw.270.1619516696841;
        Tue, 27 Apr 2021 02:44:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619516696; cv=none;
        d=google.com; s=arc-20160816;
        b=UaIbKZxREmnbxwYgwEo28ypqxOOlMkPzLlOSRcZZdjmiJfby7I8x891k7bdDx4TC7a
         HoTpIkEf97kk4T2HSUlmTpyXdxHL5oASzDRAbyVHe70op74y3IEVBH9Qwi53nBxFciKA
         9H9gV5XzI6omvdxDY7+P8gIQnrxYb9F13mknao7QWQedMia4bkTdHz82XRmuj9zGFZNs
         YJv1cnkPh18keWZFT4sXvRq5ZkM9VZ2RkVT7R5nibnwkWfKglW+tFXspjShfl5lbaMMM
         2cXnQu1xrZKjSLLBl68VWiNRlPbzH6xkEsxDgk2UFzdynQZncZWOClYeFinBgukZNtfJ
         XoTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=n42LGu+VcJUysptGCXvSA/WZLd2LrRzztiVguwQc09Q=;
        b=nnoSpaft4aRXY2r7DWXG8ws/6mnJu7Q9KR0FOjK43Pwpey0NPrgEnUvX5qVcYanppx
         w3kyVxKs9ttuxqoPPvftLpUMV8nw2JGz0QuXhF00gfgKop4Q0jWYcTLJmIYxzqnAhDPZ
         NBb/Xt+ClinWdDTKGtSzcTqVTHn3vHA78ZiNLGx+epvxFu1b7OaA9gGOpURLjwzaeaud
         bEJIDQYbslg9I9QjcMAxOK/aKFUQt5y0Ic/vVY46rZCqzoKge0WSG7x4R1S/HxtjLgR0
         62rR5WzAXmx939cGffOoOQWNo8ye1NG5NnIwDi1c5tHkUwSkrS7NSPJ9sRNSyUKVWBYB
         IG1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XnxbtZIP;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id 7si133236wmg.0.2021.04.27.02.44.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 02:44:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XnxbtZIP;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id j28so5152100edy.9
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 02:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=n42LGu+VcJUysptGCXvSA/WZLd2LrRzztiVguwQc09Q=;
        b=XnxbtZIP9SkSEsgl/ckHpw1mbDkpCAbaBdzHz3ZSFlbx2gsgLrN1J1ZJTdFntFmCDD
         vFj4ZlVGFz/PLNXQLttws2gflfuvezcSTbVLLwKtoa6pbbEJ36wJza1ZQEugP4o7rrim
         MZ5TGnwldkEUDlkjbENXJ08ZpMRalXbMrm5OFzrPX8ZdV+L40u455YOff/d0OiZPybdZ
         Rg/hfYGJviGADJTzeQH9Pqo83jESrLoesmL3sMWkiOhXaVR7tH6o1Wgs+mgsTblxPa7x
         NAVmSz03XdKwT15NB02n2QBfRxTVhFp4VdhSAYthW375amQtjaaXYLWaD5K1j7eQrNa7
         OzAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=n42LGu+VcJUysptGCXvSA/WZLd2LrRzztiVguwQc09Q=;
        b=WxoFzNpPN4M2VviJNRHsy0sFUa+LlkLU/WRbL5PZUlGKoKcAUk2B0nnK+muX4g0VJ4
         rVILDVH6GNk6IisLmT9SeTNVsy3XNb5M5AUOJtC3WyvP//kAbhYtC2vLbiXcPpPnaBZN
         aSE2MKMym4A9f45kHGfNbS2EwZMP854nOXFXw1BRporQ3JfDqJ3h682iwraPzhAJQhrX
         iPYCMuPXuOixpRu6dDfUEOnUKDVWUBSP009RHJgSf32118+ggMhO1o21f1gZjczuD6cQ
         uCBOudke1EVf2YVmVMv3lMJKcanQS4ci4FrRocdw2zYGdxJaFE2lwWobnUGSgHqEVKXx
         q7tA==
X-Gm-Message-State: AOAM530lzC4YyvO7KBwrFy0Ki39Iqx/VNMphm1yppqHQHkihBkHU2/eT
	dDc5KlQqSqG8FR0RKzuEUUjejScu7QPm1Cy/
X-Received: by 2002:a50:eb89:: with SMTP id y9mr3229136edr.172.1619516696345;
        Tue, 27 Apr 2021 02:44:56 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id mf27sm7602704ejb.63.2021.04.27.02.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 02:44:55 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	shaoyunl <shaoyun.liu@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Evan Quan <evan.quan@amd.com>,
	Hawking Zhang <Hawking.Zhang@amd.com>,
	Felix Kuehling <Felix.Kuehling@amd.com>,
	Luben Tuikov <luben.tuikov@amd.com>,
	Aurabindo Pillai <aurabindo.pillai@amd.com>,
	amd-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	Matthew Wilcox <willy@infradead.org>
Subject: [PATCH v4] drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_lock_all with drm_modeset_lock
Date: Tue, 27 Apr 2021 11:44:49 +0200
Message-Id: <20210427094449.14730-1-fmdefrancesco@gmail.com>
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

Changes from v3: CC'ed more (previously missing) maintainers.
Changes from v2: Drop file name from the Subject. Cc'ed all maintainers.
Changes from v1: Removed unnecessary braces around single statement
block.

 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index 80130c1c0c68..39204dbc168b 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -1595,17 +1595,15 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
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



X-GM-THRID: 6952817933661765632
X-Received: by 2002:a17:906:5619:: with SMTP id f25mr20850126ejq.393.1618829076224;
        Mon, 19 Apr 2021 03:44:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:397:: with SMTP id ss23ls7089029ejb.3.gmail; Mon, 19
 Apr 2021 03:44:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwl5BtIQ/D40sgKlJe1NNc2qNNRyGOz4GdLMRRNppGssTsNaPFYJtxBveDAeimHRPz3N4Fa
X-Received: by 2002:a17:906:278e:: with SMTP id j14mr21395920ejc.224.1618829074729;
        Mon, 19 Apr 2021 03:44:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618829074; cv=none;
        d=google.com; s=arc-20160816;
        b=TWcpxJUI3B69fqmJGAXBoiKvLX25WbWckIIfgjP4lUJermb/xvkN9BKEm8kV9zL7Vz
         77mtGPlhX6djhVskhLZEmYwYGPf3f6HMFsMCRLdPXta+/NvHLb1Dd3ArnQM6IE16bhMm
         viF7ADUDl8BXM4spI17Y0WMrw3lZmhNjSR1QpyfE4vzLYin9obiQp3wx15EJLogB8tjd
         G8zyIxQosvXL/Srf65hE6+yuPSgOxOGn8c22IPPzVYnPoowMEnHf5H6PzGnjCtw5q0BE
         eKU9HGlgN+UhZI5qqILuOMiKpRf+UEYEdiiw0Usg930iOzZdAezVhwYkayv327+Mj9nM
         3oEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=prbsc0FyNObzI+Wvj3P6FznlVAvE0zjRobacKBhitVA=;
        b=Ih2dIE8rTE8rWyR6s5xXEZ9pyiOmPKlCiaMAlI+i5o4/MyDF2lJI9z5FXLpGTGT71J
         o2nSf9RfzUg25fU6oeCgNCan4BSVHQfZd20zf/G02cVb9/zH7PiiJ/2Qgt2kOXAQsUor
         W1di1ocKjzmUoEJ6+0fV9DKaR2/OyqSyzoYZhFHG7aCL1Ajvr1moyWFtjYBd7jPiMsKk
         xJrohxJ6+MknpV/4MmAgSiJH3auiNrMPX8z/kFPkzVZW4ewherN/6GvIKy/bjgQWIvFO
         nZs7t9X6wlDAWqaB9T+IyaBpv3OalY++Nkoh/n4JDgNU7wS3fQwcf6JG1wB9W3QMwGU4
         6U5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bcarvalho@bcarvalho-ubuntu.lan>
Received: from bcarvalho-Ubuntu.lan (113.95.37.188.rev.vodafone.pt. [188.37.95.113])
        by gmr-mx.google.com with ESMTPS id re17si350687ejb.1.2021.04.19.03.44.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 03:44:34 -0700 (PDT)
Received-SPF: neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) client-ip=188.37.95.113;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 188.37.95.113 is neither permitted nor denied by best guess record for domain of bcarvalho@bcarvalho-ubuntu.lan) smtp.mailfrom=bcarvalho@bcarvalho-ubuntu.lan;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from bcarvalho-Ubuntu.lan (localhost [127.0.0.1])
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Debian-18) with ESMTP id 13JAiWrm163511;
	Mon, 19 Apr 2021 11:44:32 +0100
Received: (from bcarvalho@localhost)
	by bcarvalho-Ubuntu.lan (8.15.2/8.15.2/Submit) id 13JAiWRD163509;
	Mon, 19 Apr 2021 11:44:32 +0100
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
        airlied@linux.ie, daniel@ffwll.ch, melissa.srw@gmail.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 1/3] drm: drm_atomic_uapi.c: Use tabs for code indents
Date: Mon, 19 Apr 2021 11:44:17 +0100
Message-Id: <dc8286f5590fff609f924845fb622dd5f962a11b.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
References: <cover.1618828127.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove space and use tabs for indent the code to follow the
Linux kernel coding conventions.
Problem found by checkpatch.

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/gpu/drm/drm_atomic_uapi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index 268bb69c2e2f..438e9585b225 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -78,8 +78,8 @@ int drm_atomic_set_mode_for_crtc(struct drm_crtc_state *state,
 		drm_mode_convert_to_umode(&umode, mode);
 		state->mode_blob =
 			drm_property_create_blob(state->crtc->dev,
-		                                 sizeof(umode),
-		                                 &umode);
+						 sizeof(umode),
+						 &umode);
 		if (IS_ERR(state->mode_blob))
 			return PTR_ERR(state->mode_blob);
 
@@ -114,7 +114,7 @@ EXPORT_SYMBOL(drm_atomic_set_mode_for_crtc);
  * Zero on success, error code on failure. Cannot return -EDEADLK.
  */
 int drm_atomic_set_mode_prop_for_crtc(struct drm_crtc_state *state,
-                                      struct drm_property_blob *blob)
+				      struct drm_property_blob *blob)
 {
 	struct drm_crtc *crtc = state->crtc;
 
-- 
2.25.1



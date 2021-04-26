X-GM-THRID: 6954041305879019520
X-Received: by 2002:adf:fdcd:: with SMTP id i13mr24641056wrs.185.1619467257622;
        Mon, 26 Apr 2021 13:00:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls3078095wrx.3.gmail; Mon, 26
 Apr 2021 13:00:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDCeSVK5c11VDH/+3uRRu6l4eNHJKWiP9OziIKP7eaAbmYBVWkEV4PmmDJxNdPSo8BJX/M
X-Received: by 2002:adf:cc89:: with SMTP id p9mr24447259wrj.223.1619467256076;
        Mon, 26 Apr 2021 13:00:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619467256; cv=none;
        d=google.com; s=arc-20160816;
        b=o2VzL0YoxyKomCrZ9M8li4QhOD6EmvjZXJCKuX8ipo7rs6CO8Ym/KJeWKU2UpiCfE8
         byJ0XfwOg3mkH41TAHcDnbzpcF5J5jiaFWzjwIOZkDPph+SwMs4pUWGagDuvdsO063TB
         JJRTKpMED9krLSWNZVDBS8uLKeErQ8E1gr183XomPvx5uJogiZ0X/eR82hT+jlMozysq
         Vs2VkL2sQpccow1BGwuGeDLhGCrUV5i/J6vQHguhzR8kh9o45gNMd9BezHc+nPKdS/8J
         d8SEOKls+4iwkbncac8i/zM5AfMKkOJnVyH920PACY4z9cZDBgtcm0xPWdUHT4MuEpiF
         SwUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=AM0fccZ1AwBF12uWrMCL9HsNLQWbMQpNVOxxiq8KOiw=;
        b=sZduABxby4GHGrXnZfNNVNMKmyt7wj/qEQ8ABxDB8X82TTHYIXhtQtNNm+X00TAcgL
         QKdLi7+fVQAaskdVoogSvX8TrkQ7gjq+AeCy4+6Bojr9vHJCCaSUr3VZQExtY74Je8vn
         17tbKvyg2JXzw0OnzTKnphRxf9uGP/ITWlnzz03tX8GPoPgBAAecKcTFlLf37RVFtPU9
         ASCF6rt0vV+L+fwSMiu4zYPZ1tAJZZNLAnwD9bSKwgkNPq2F2L0ATLjWMudDgZgsDRRE
         O6K+xD8kHBJcT3p3d8DB8I3P8Ol3p1q0HjrFzD3+gh6BZ5tbFmkofFX33+3n3ifMiEpN
         OchA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DDipI45Q;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id a4si1404919wrc.0.2021.04.26.13.00.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 13:00:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DDipI45Q;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x532.google.com with SMTP id z5so30710027edr.11
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Apr 2021 13:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AM0fccZ1AwBF12uWrMCL9HsNLQWbMQpNVOxxiq8KOiw=;
        b=DDipI45QBFz2H8oTFqxGl+X7pU2DH5fwDU12H6PwnXQVPlR/C2RZIUwuyYASOrxXVg
         G78QBdS4bBFvEkfgLHLPWJ55jc11FWQcEzHm8U7b2bzD/8mgn2zsJRgWYW/iuBr+QIed
         aF6kP/EWIqEFwaytN93meLcqZjU2GBh/1ll03sprHBd6VH0WZ8Qe4NWV7+/TI3RQJ7HG
         Va8h3/bLAfS3WZbJ0ACn9nGXrxtDZSheU6tZfDIeME6gALwDpzflWa3tCIg5CJuYlCi0
         t24nxzIMAKOoICy8PP073QB/4nMR85/mnRvHsjiOGtTc0dgaZBRSc1NgHkMvIEeLy7rl
         9X1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AM0fccZ1AwBF12uWrMCL9HsNLQWbMQpNVOxxiq8KOiw=;
        b=JBncfiC2MNjN5Le1/sVJvld3/2ldMDMHs5R8cXF/oiK9oW65uWnxpTp5PdNUhtJyXj
         izMVbazxbyNkRWmOMqEDQV2JGZhe7QSQ8pgvYvn4/H31yX5MhVc47ilzWhQK05HgEqNR
         TuNcJtLdpURHFH/VoEy2f8mPNaNdtowRy3UpiiNylnu4J2BXptd8vza+vH6RB1akWORR
         sLEU5fDt+3EFlsdUF5cc2bXlf/xXBvE3YMFb92ID53xD6M3/EAHXtY0LmjV1vrKMUkdo
         7tOybp1uqlJ1QZdbHCWRN77hAZoEpOnfKBbL88HUQeidjhRE85rswb3pDgcwopIoVyBP
         YNAw==
X-Gm-Message-State: AOAM532lNcOYllRN6ckmH2ApApvGpLHhlBA62iwAWNzdCamhe61ca9MF
	TOp8/j6FDkFRtnHFTo7IUrU/rM6RFCM37IjN
X-Received: by 2002:a50:fd07:: with SMTP id i7mr418582eds.92.1619467255643;
        Mon, 26 Apr 2021 13:00:55 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id me3sm3386590ejb.49.2021.04.26.13.00.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 13:00:55 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v2] drm/drm_file.c: Define drm_send_event_helper() as 'static'
Date: Mon, 26 Apr 2021 22:00:51 +0200
Message-Id: <20210426200051.11530-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

drm_send_event_helper() has not prototype, it has internal linkage and
therefore it should be defined with storage class 'static'.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: As suggested by Daniel Vetter, removed unnecessary
kernel-doc comments.

 drivers/gpu/drm/drm_file.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
index 7efbccffc2ea..a32e0d4f3604 100644
--- a/drivers/gpu/drm/drm_file.c
+++ b/drivers/gpu/drm/drm_file.c
@@ -774,19 +774,15 @@ void drm_event_cancel_free(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drm_event_cancel_free);
 
-/**
+/*
  * drm_send_event_helper - send DRM event to file descriptor
- * @dev: DRM device
- * @e: DRM event to deliver
- * @timestamp: timestamp to set for the fence event in kernel's CLOCK_MONOTONIC
- * time domain
  *
- * This helper function sends the event @e, initialized with
+ * This helper function sends the event e, initialized with
  * drm_event_reserve_init(), to its associated userspace DRM file.
  * The timestamp variant of dma_fence_signal is used when the caller
  * sends a valid timestamp.
  */
-void drm_send_event_helper(struct drm_device *dev,
+static void drm_send_event_helper(struct drm_device *dev,
 			   struct drm_pending_event *e, ktime_t timestamp)
 {
 	assert_spin_locked(&dev->event_lock);
-- 
2.31.1



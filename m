X-GM-THRID: 6954041305879019520
X-Received: by 2002:a17:906:5619:: with SMTP id f25mr4547632ejq.393.1619113913638;
        Thu, 22 Apr 2021 10:51:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:397:: with SMTP id ss23ls3191639ejb.3.gmail; Thu, 22
 Apr 2021 10:51:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyJJfr5Zuexx57JUQOR+iH7jN7/apZnI4stv8BMYuMcmwZEck7yuJ4Xcurxq6vnyWhY20Oo
X-Received: by 2002:a17:906:9bd3:: with SMTP id de19mr4524591ejc.329.1619113912288;
        Thu, 22 Apr 2021 10:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619113912; cv=none;
        d=google.com; s=arc-20160816;
        b=y9xU9g4OQpvv8QqMXEud9hNCTEB9BG6gWnBvPh2vIpa6cZmvSU4EQljSQOE5oKUfWT
         WZOYTCxiWK3slBj+t7WbRtsvrGA2vTVGsUgK6bkpHW3yZqDO0W3AfOvfvGNkJFyl61Mx
         y88xLxiPv0cV8Iz9HKWqwRoCJ8hkSygiOAC7GK/xUI2i91Ww9AK/x3VGu9OuoeKDWmCf
         3O4QODomHn1HOpNI2XHp9335QAPw4/m64dQUIdfL5zkF4oEgtAMuB7F5YCDLbPTqj8Cf
         o254o9UHqipmW8v4Bd99n/jQghVJEGnxUhE3WYde7JYFfMoMysQB/HLcZnw3DONqEPap
         ByoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=pHZSVPByUbrA9Gg8y5xUcqloIpvDd4jTgwpwNHbORV4=;
        b=Hsk7coh0VQx6H8l6NetRfYMPToSB/s8X/LLbve67/KLBLyf3rVpJLcnMpMS2BxTx23
         Ui3UVABSPdE/HkIA4tG2ldTIRB9VXQ7AZF+NA7bbzO4vrbpSeU9KYYo3cJ4jShh2O9pv
         NDFED2pbTt9+Hkkz1VVV+lC0oAF6/lDvZhYd2NrfW7CZgV/vIzVvlOn/2Zy6HYfDtZMJ
         C2a1yVnnlxH5Ct/ezTo0MT9M7WHkfol8610Ul8HTylVsq7ms0l+dzRJuxMyyE7fBaCEG
         UB3hPPgD0XSWv0/2oC4vYnKXgnW+9jIrT/xxb7QpTxgl9zcShoUdVgUvh5ka9u+8AD61
         b+vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="P2M/l+7X";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id co24si464837edb.4.2021.04.22.10.51.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 10:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="P2M/l+7X";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62a.google.com with SMTP id r20so20308781ejo.11
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Apr 2021 10:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pHZSVPByUbrA9Gg8y5xUcqloIpvDd4jTgwpwNHbORV4=;
        b=P2M/l+7Xq3J+vEXbIk9mjSwXyztqvtyfn36ICb7jf07OZ7cA3/WofzdVBQAMU/Qfin
         CtIsTcur0qnh1vFIpUFQM+KDY5brv+LTX1EmRUDbKT022Ldkrd0GYAEGT8s9JdSkxQ03
         3cvxQU7O9nHEFr4C0VYv87MXoCJNeDk9PMjjh5JSU/1jdYgGZCyBU2OTum1u6+X49qKC
         RgAc0Ae8R+o7/zn4QcGVfmG6LhDy8q0tjztuBUfP6mfySJ7fWK6ZygcnxyLxoawI5T8Q
         wmmBveAZLGTM5LLTLtcJCR0V2UTJQ10pf5QTIsUoI7mLx8BGRRzmDmiwF1xVWuM5kehO
         ylhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pHZSVPByUbrA9Gg8y5xUcqloIpvDd4jTgwpwNHbORV4=;
        b=Ky9IZTXAY6sycO8oSe2joea+OG3LAxKQwh3tJoGP/4HmUD3bHZKkyDPTBW/gA5RA0Q
         BJD1EkbSz2JbbMQq9BZelLygdk+FNDxE1pH6V4z9tdixdrteYrCphLEG7iwAP0qdBKiT
         Wph+k7zSzKo9D5YI+dRJxpUwabzBYDmFZfUGQEJ4J+QNM9diItFo5cHGqy/y6DNDmikx
         MngT9yVjTiDawIYpAzjc/bGASpI6jBPfHzWZ152ynA9opYgbE1cAt2dDt4V8RQOv33aa
         LsD85+h4xKn/FiDD9zfIK1hUk7B7GTd1LHZJsqNTwFLtsgfhoSk8lvVRKhaIxnXj1hbo
         5R0Q==
X-Gm-Message-State: AOAM532O73oe49I7K1tnj1uNbSC+WxOQrmdLDnrGXA100EM9G+j0uQp2
	HsOrpERmJcc6tnBYp3o4ztHdDPDKbMOj769W
X-Received: by 2002:a17:907:72cc:: with SMTP id du12mr4529458ejc.436.1619113911829;
        Thu, 22 Apr 2021 10:51:51 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id c19sm2714401edu.20.2021.04.22.10.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Apr 2021 10:51:51 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Christian Koenig <christian.koenig@amd.com>,
	Huang Rui <ray.huang@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] drm/drm_file.c: Define drm_send_event_helper() as 'static'
Date: Thu, 22 Apr 2021 19:51:46 +0200
Message-Id: <20210422175146.29840-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

drm_send_event_helper() has not prototype, it has internal linkage and
therefore it should be defined with storage class 'static'.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/gpu/drm/drm_file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
index 7efbccffc2ea..17f38d873972 100644
--- a/drivers/gpu/drm/drm_file.c
+++ b/drivers/gpu/drm/drm_file.c
@@ -786,7 +786,7 @@ EXPORT_SYMBOL(drm_event_cancel_free);
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



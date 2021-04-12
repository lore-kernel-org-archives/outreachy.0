X-GM-THRID: 6950222578852036608
X-Received: by 2002:a5d:5308:: with SMTP id e8mr16298430wrv.41.1618224796552;
        Mon, 12 Apr 2021 03:53:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6c6a:: with SMTP id r10ls2670911wrz.0.gmail; Mon, 12 Apr
 2021 03:53:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz/KhsfFzL6HkIf4SKXyqtQ0sRxz6hKw2bvenPpn1hNou3z5DV+TBW99bHzCJoHUhhJfO6C
X-Received: by 2002:a5d:6a04:: with SMTP id m4mr22835283wru.421.1618224795168;
        Mon, 12 Apr 2021 03:53:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618224795; cv=none;
        d=google.com; s=arc-20160816;
        b=CkvqlxBk2suqulONzGOCYzJLuU7YunOsqtejdbD0+FwvonavTtD9Xm5npmqmVwYTrI
         hOkOiNeglOsVjt1459VqjonbLtGbQJRs/6ZIfGI5neKvPPgNw3Jz4zF+I4mbUXXMGCzd
         QkjBiNsz0JtRHRAKw/wHjZkjpCG37XhRj15dAhgsTq57CQaNblcp1+kh8K9WEX/6hQHU
         APUKNMDdZimgyitVY4AWSwqqa3vN5jT5enVuyTC1BHT+lHHcn7sY+dHfm1ArHfzHA69G
         se233rVUz8oNp6oJp7U5/dRGsxKMoj/s1+bRNY3erBV68x5ETHFg5BIBsAvz0b88fFcY
         iUVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=49JeyaReyjd8GfvCyaVKkL8+AueTjgTUZSBAlKbchY0=;
        b=T+ESS+TdtinIqLvTUvDkDMnm8r3QwegHv0C6yKDpQbxbTcvIvjQWjEBXHTxnbRxOh8
         g1QytF6tpg7pC9B43M41t5dFoIam+UQOqjslDLYuSxzJpSTa4M2cT2LTXfHIRTLci9SV
         rj7NG+hAASJkpEJTdOcKzdkB5mI+wwmmSe2vibJ6omc5YOaAElBtPZ4G8Pci3Kb/m1Oc
         z1VOR6DcCUN8rYJNFC3X+1Ux76ks4uC7bVhZddvzJZZ8vnqsXfxtSa1VKmodtLPGycQ5
         wro/xEeoTrqiBOZhwDyFXaTTBEkEs01QioZ4md5zCi1r3vlDZBy5qPvo6Zg6vUR7kMYM
         q21w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GIPyjTEX;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com. [2a00:1450:4864:20::635])
        by gmr-mx.google.com with ESMTPS id t124si1194629wmb.3.2021.04.12.03.53.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 03:53:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) client-ip=2a00:1450:4864:20::635;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GIPyjTEX;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x635.google.com with SMTP id u21so19466155ejo.13
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 03:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=49JeyaReyjd8GfvCyaVKkL8+AueTjgTUZSBAlKbchY0=;
        b=GIPyjTEX5TptfP7Krf/8sXk+lMMak+/9pG+SPE/m8FYh+j7Zzi6Etxe19Q90QiXpYQ
         VOGnyA9GIEqWqmTtElzW9sdXv4tsZ7NaZMczEHBaIbYMzoRerf6EZoAuXivYVouhHSKH
         HClRsAoMdgC60J+YSoQLNoEbSXmAX7LTkyOfxI2xEwrmSyKRdgubL5HJ6+ilPpHdqbrj
         lRtoaxUjVboxRKyMQcIypC2ixG8b9pMgi5f/CKFjcSA6mvGjRYMmqJsbViV9StGnwk4v
         0yvMhp41ZCtHirotYJtPLQnN62Fu8RYETUThY4sp31TN6/sn/dcTunxtZlTtzlpebfYB
         JQ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=49JeyaReyjd8GfvCyaVKkL8+AueTjgTUZSBAlKbchY0=;
        b=bWFv2MCpYboSzkX0bNSPEmuGkV+h05AtGdI6yZAsuP4737HATIJAN63mC7R0Mjq4WF
         kA0/xwj4wortYEOmOqZ4Gp5n+9VE2IP83BO/89NwWrWX41mGNlCb3ZEChjG+n4hagjDy
         RVaglcWLIJEa/FhXdRSGyK9DErVGT1Aa5pmJQBEYbjmhBPYq8y6eXsnMvlgzM0v6l0+m
         OP5S3IEIbiHRGBS+tCUJht2ZsLOCoDuhPR/ykkKvC7By65sEWP7pDA7oV0don3pavTvQ
         uGEn95HoCoQGQPDoCJ+vXVsMttZ3qw8qfjvOGFFBcFYk8EXnk5ObxZvmvlEvnVpQI/g4
         oQMQ==
X-Gm-Message-State: AOAM531sqzhOXW+CzflGqtvzFYvdwbuV01R+NKQbv/qRbV3ohVnm25lc
	sIk75Dyp74Yp+wpJZ/8E10w=
X-Received: by 2002:a17:906:94d2:: with SMTP id d18mr19180579ejy.531.1618224794946;
        Mon, 12 Apr 2021 03:53:14 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gb22sm5416452ejc.78.2021.04.12.03.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 03:53:14 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] gpu: drm: Replace bare "unsigned" with "unsigned int"
Date: Mon, 12 Apr 2021 12:53:09 +0200
Message-Id: <20210412105309.27156-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replaced the type "unsigned" with "unsigned int" because it is
preferred. Issue detected by checkpatch.pl.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/gpu/drm/drm_atomic.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 5b4547e0f775..46dceb51c90f 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1302,8 +1302,8 @@ int drm_atomic_check_only(struct drm_atomic_state *state)
 	struct drm_crtc_state *new_crtc_state;
 	struct drm_connector *conn;
 	struct drm_connector_state *conn_state;
-	unsigned requested_crtc = 0;
-	unsigned affected_crtc = 0;
+	unsigned int requested_crtc = 0;
+	unsigned int affected_crtc = 0;
 	int i, ret = 0;
 
 	DRM_DEBUG_ATOMIC("checking %p\n", state);
-- 
2.31.1



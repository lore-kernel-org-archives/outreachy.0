X-GM-THRID: 6952842807978491904
X-Received: by 2002:a05:6402:518c:: with SMTP id q12mr25724978edd.11.1618834866220;
        Mon, 19 Apr 2021 05:21:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:3592:: with SMTP id y18ls1110215edc.0.gmail; Mon,
 19 Apr 2021 05:21:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLWfNRWL+aeVtpvMrYsbMmO19Z4F5hwMORWQyybdq34U3gNHeI2C4rcPg1oZR6Z0HhM4tw
X-Received: by 2002:a05:6402:c7:: with SMTP id i7mr25484736edu.33.1618834864761;
        Mon, 19 Apr 2021 05:21:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618834864; cv=none;
        d=google.com; s=arc-20160816;
        b=EkiiHexudFrMBdNKtO0sLUW9NSvE4Tj8hKBRehkt3fCcKcAOJml75kLJAtuAr34OpK
         ahSvy1KqGWNurZc1zThagshn0sNu9hK0mjJt0L/VGxb1yXt2KGZ0AP/h7LZlI+F3GJcY
         xzUB+PfFG49wwErDZ2A8p+0xLKb6wKMC4WQ6pThRJoht0uHrBikFWMoxNDqSCTl0hR2g
         QXJWzZX/gtR2YWtRpgC1886Gf2KGvALDQ3eTDB0nDLwZt81N75NTPrWWe+aiRflc6+c3
         T8VM7676WjOeM8oIQO5/zcdhp2lG1sI0adIAiYgLeVQEmnXiqok6KMIq23dhqhWwck12
         W/9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1QgzYB7uzPMo34dcMzysoA0LrI1ass47pm3czPSoq1U=;
        b=dEWVhxomF0mtQvtLiOA0r0MdDDIDhuLymtrfzq4jdYf5Ljq1MRYtAAJTaUCqXwh8Pj
         KqtN7F2s2yOvFwJtwa2GcuSMjetOU99d2q4w/IlwpaoWIQooAKmRJbmfZbMnZ6TyzbcQ
         RAquNo56oh2pwQq2Q8SSC5165DQX6gzVwaIz8HwD0VVTB3S8JD4YgDrBg2Z+U+KzolTA
         ASh8NJlSqvWGqfeFAuK2HqziMVXHtaFo7664GFupw1bwQTA0Djbr966koGwp8+Rj9sE+
         6UrMS7kan+AORI2eChBP0zG2km4/enSPfnbR8wJC0eyu7U9Ih3oZR7tV48TlMETOOD6a
         WoxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VAT8FpCt;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id y16si1081878edq.2.2021.04.19.05.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 05:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VAT8FpCt;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x534.google.com with SMTP id g17so39721889edm.6
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Apr 2021 05:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1QgzYB7uzPMo34dcMzysoA0LrI1ass47pm3czPSoq1U=;
        b=VAT8FpCtHRM92sbgVEI8Trx7stn7sJWjJfQnsj+PFm7vd0oZRuN93WUZWluK+YH4Te
         SgxUH1vmjPd92RGWRPDkH4OFJWFXmGs31/jnG/bNP3jCjsgg/0ruK2g2TOCoMJ3K8EdT
         1tUWSg8qbQVMI2fy7NGbowniSqkecU+TXq1+tgzDJuiDs2DNwkbMtRSadocQ88c5cndh
         qxBSY/T85XXfp0yzlnu5EWyQe2tCuqiOEpbcoO3PIl9ELJjhN/iy3wp7OqnWzm16TgnW
         fkRjgMttqt45smvJYyZOIW6TTtqjz246v+7CNCH9dRAMx98c9Eo5FYqx1Ub21sTwlW+v
         Co1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1QgzYB7uzPMo34dcMzysoA0LrI1ass47pm3czPSoq1U=;
        b=ZmGB2kSbv1KO8Jdf5x5kcCXe5R1g9UxSVf0MlgtMazTuYuETPfQhalqHfiff0cR5JF
         SdG4NRhS2xmXJiT7L7IySHfTYDoJAOCK8sThEWQ2snU97z6Z33r3J/eDOpxeTkQGBm3A
         3cwTnYGoJTPj0nqE5mmcM6+HpCvffl9fo27wKPO4YD3Q5ZGHu0Oyr1Mk4h6sIxgbm1WO
         G1ROQE9864IcvCJUk9FAUC3n1ZbbfmDykLiNY3PLswTHH7ok6+rTXJGK19s1d1HAoykH
         FbmlXh6sYPiCtpfi2XwyNGvHC4bDS8+hRFzGAFkSnI7x6LvrXKkKW4Dq0ty2Jj+YNyId
         Us1A==
X-Gm-Message-State: AOAM532R8Od4AglPkocLxDfiePE6EVRUOl5SuDZ9YFnTlAelqvpgCNhk
	sTPE4sNYXCc0x+NVhBJyj/vbchA/m3n8JLzM
X-Received: by 2002:aa7:d917:: with SMTP id a23mr25731646edr.80.1618834864377;
        Mon, 19 Apr 2021 05:21:04 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id c19sm12576152edu.20.2021.04.19.05.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 05:21:03 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH 0/2] drm/amd/amdgpu: Replace drm_modeset_*_all with DRM_MODESET_LOCK_ALL_*
Date: Mon, 19 Apr 2021 14:20:57 +0200
Message-Id: <20210419122059.738-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to the TODO list of the DRM subsystem, replace the deprecated
drm_modeset_*_all() with DRM_MODESET_LOCK_ALL_*().

Fabio M. De Francesco (2):
  drm/amd/amdgpu/amdgpu_device.c: Replace drm_modeset_*_all with
    DRM_MODESET_LOCK_ALL_*
  drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_*_all with
    DRM_MODESET_LOCK_ALL_*

 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 18 ++++++++++++------
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c    |  6 ++++--
 2 files changed, 16 insertions(+), 8 deletions(-)

-- 
2.31.1



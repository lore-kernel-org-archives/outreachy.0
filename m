X-GM-THRID: 6953573775310848000
X-Received: by 2002:a19:b81:: with SMTP id 123mr19437620lfl.553.1619005064880;
        Wed, 21 Apr 2021 04:37:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5624:: with SMTP id b4ls1440934lff.0.gmail; Wed, 21 Apr
 2021 04:37:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwlIg8uaT1UDdjeMZG266fAXPADmuMeAcyM9QEawTLtWZ8MdE5bmzA/fvbQBcZ4sicqaYmQ
X-Received: by 2002:a05:6512:3e1:: with SMTP id n1mr14409022lfq.31.1619005063305;
        Wed, 21 Apr 2021 04:37:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619005063; cv=none;
        d=google.com; s=arc-20160816;
        b=IzN4AyvcCDkzCzfNPPbV5VTkwLYHkp65w72C6rV1sRsaOzwSOPeNCl8lez2f5I16Mu
         I0wF/LSdXjmaS5tv+NKjMjz+LQ0vTjExvD+lWbqkJGiZnFXW5DirRkPeVEmYzeyMPenU
         6sk4Cg24KpK4qSBpEgdZqPxgLgfIFV5MFik2E9QHnzbcnu8qvxQHgntNyJMJALrkUHQr
         Qua7vIqONu8EdDBRCEEpbs9lC6J12UAS8jxdzZjZduVwSig7RE8rgJi8q1VD0jaK49rN
         aN1M2VnkuyqU+kQdPMzSNERv+rgEkEiL91EVmve622bWmWxsNQZItUp3PsW28YMr16C9
         aJIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oWBPUAdz0xbZxQDvlBKt/PfAa9b2el0EabiMcGatIFg=;
        b=hEO6RJMLPd2/rmPNtiYWbXI0lvy8MxiyTlbzh7BQYf2yYK+lK5YjNaTUKna3dYyMvp
         2/t+L7XeMfgdZNeISZbAv+9ZY9t5SMs4GquZOayQcMgmf3MIoiLubGvsqLQoegFRFj1y
         iXN/EmSDBfN5X9KcQIK4uzBDx5yyo3Q0Ddg21LMI++Zb7+IUxAe5Hm6tejxylURL+UIF
         gQoSEJqpya7uS5Qcu+OW8gDnVZlGR/FjS+Dz7/CkZtt88jwgTqBGYbPNqlSD74ifdWyH
         zJboLemUWrck9IoSGGYgpj3rh6ReBrN4rDchx/GRqr3scrIo4eCmxYdlw6LgRcj/eiwC
         77sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YPlvImMq;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id d19si153290ljo.1.2021.04.21.04.37.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 04:37:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YPlvImMq;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62c.google.com with SMTP id n2so62986511ejy.7
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Apr 2021 04:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oWBPUAdz0xbZxQDvlBKt/PfAa9b2el0EabiMcGatIFg=;
        b=YPlvImMqdXUh5dVdxHkCpUAzrYQCivhicmqIMOZYoa2i/zeC0TylT2jZBPn+74Mk9e
         eBS07n08b+dr5GEduJSwYvIs0R8Fw6kfHreHRKK/IsBqeGZVKKkPbzbXEOeaaEhyhJIQ
         erEnNyTGQF32PqP1KxvNcYY44Hx25y2mDcFEQEnSVubq3da6C6ZM60eHPwk5OoC4MdS5
         pkU96+MFndULmjJNKGui5Q7SZKalWkAIOCorFfaqx0tMUVarT3/xEReSit3bWy0MdSKt
         nY+dWIPxk9alVxgebc65IRl65rAvKWKqZ4o6kho9jsFZxll+iCSV4SnN1Kz/jQC/P2yd
         U0hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oWBPUAdz0xbZxQDvlBKt/PfAa9b2el0EabiMcGatIFg=;
        b=mZ8eKygCCvfrPR0e+ETdP3zMQM3+4ZV+VoSSUnroIZdmdmBtPKK/xAGC1wtntL+2A6
         wpAHLoTrvH0kNRE5jIy1UVJs27EjJBhytrHcws7mK2/W/v3zVL6aYi0Bt9SAQ+ou0OxG
         T8PLSkgU5SGIdpyJ30a+3csSpSqU+O2wy9tXzlTpOEmI13gRDbkVO/uafDl8xAKOLHAT
         qWb0LnkO8vxFAbTC9s2nOa3vFZE5mYcFmgdSHc8faNg1kA322juJqr9XhU4bYWzXGsRr
         hHuNhqip0gKXHmoPIc/vHRdLUezMSDSNIVxrrjLQ/3iHjWXS3wYyGJ0T2GYOwN22xChJ
         4Rmg==
X-Gm-Message-State: AOAM530fIeLUTr9LV3rVg/mPitMyR2CNiliqgQjkSl6ibhLXFYhMLi3r
	MoPknkCZA+n+qRATB8EhJz//jrSEGsbT56qV
X-Received: by 2002:a17:906:7188:: with SMTP id h8mr22879487ejk.227.1619005062775;
        Wed, 21 Apr 2021 04:37:42 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id i1sm2735928edt.33.2021.04.21.04.37.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 04:37:42 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v3 2/2] drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_*_all_ctx() with DRM_MODESET_LOCK_ALL_*()
Date: Wed, 21 Apr 2021 13:37:16 +0200
Message-Id: <20210421113716.15472-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210421113716.15472-1-fmdefrancesco@gmail.com>
References: <20210421113716.15472-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This second patch makes use of the API that has been introduced with commit
b7ea04d299c7: DRM_MODESET_LOCK_ALL_BEGIN() simplifies grabbing all modeset
locks using a local context and has the advantage of reducing boilerplate.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v2: The work is split in two consecutive logical steps.
Changes from v1: Added further information to the commit message.

 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index 856903db34c5..43dd77c227ed 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -1441,12 +1441,7 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
 		struct drm_modeset_acquire_ctx ctx;
 		int ret_lock = 0;
 
-retry:
-		drm_modeset_lock_all_ctx(drm_dev, &ctx);
-		if(ret_lock == -EDEADLK) {
-			drm_modeset_backoff(&ctx);
-			goto retry;
-		}
+		DRM_MODESET_LOCK_ALL_BEGIN(drm_dev, ctx, 0, ret_lock);
 
 		drm_for_each_crtc(crtc, drm_dev) {
 			if (crtc->state->active) {
@@ -1455,7 +1450,7 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
 			}
 		}
 
-		drm_modeset_drop_locks(&ctx);
+		DRM_MODESET_LOCK_ALL_END(drm_dev, ctx, ret_lock);
 
 	} else {
 		struct drm_connector *list_connector;
-- 
2.31.1



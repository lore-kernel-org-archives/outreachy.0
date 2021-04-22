X-GM-THRID: 6954012466570330112
X-Received: by 2002:a5d:5711:: with SMTP id a17mr5065529wrv.342.1619107198582;
        Thu, 22 Apr 2021 08:59:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c1c3:: with SMTP id a3ls2932122wmj.0.gmail; Thu, 22 Apr
 2021 08:59:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx9EsEINDfsylKD2r4zrdAFP/DfDn6JJ8oCtEXP4aEIwnFZSjCgDP+yhH3jvkUvifRD7q2q
X-Received: by 2002:a7b:c312:: with SMTP id k18mr4659738wmj.89.1619107197218;
        Thu, 22 Apr 2021 08:59:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619107197; cv=none;
        d=google.com; s=arc-20160816;
        b=bB4vC03HmVUcsCCalGO07E94E98HMtuNhVZgNdj1/6G3jdj62svI2gbPSTcB3qbtCU
         9TD1yGZcOa40vnoXuP3JQvG7+MAH2gVpWAKH9PhuIvX0toY6tP88fFso4Jn5xU78P6JB
         HBN84JqL4P7fXJyzsaudH/O8RVHZC3+KOoB1bX0cZIcnmiDetYE6DZ/j/G+eoEk5ovli
         aRVi1tYIfqSIjKjGRH3OfPhhqdRfJrg2Ge+nauQwl1qPJHQdFeoRaTrtKzXYNtVf0C4/
         yCSsFqJPp4RXMcT/4HSosP+TJlKBANvhQze8TwMuTZJGfSNPbwE2keDZoSdfCnY/Nd9Q
         A+Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1MFsgMi1vScM/Xb4Qn/U8v6SwMwWvXpGL3C1LP/euKw=;
        b=fGltD583mPvUUgcsiDbyzn7fuod9EIU3+hRGH5n4/3mVnadXDeEeWPRY3ZZVs64nKC
         Uud7R/HlyiFwsEMxX4Vb+siRI6PEI8ptmFQYf5FA+RriVG+fLP32NMI7vCHO2XtJ+oMk
         2X4OszTWZu+2LmctJMPbGzcOhz6eNnbjdgZQECjdDxkYRHHeNbf/o3u3aJvviZv/bM8m
         D6eGH5/LI0lAVBhqoXI1JzwwRWDOm1isOL3b8cyae2boK0XbTq/OCaggXmEgEm9He4Q0
         iC3qC/mgR7X0tGZ//jARhJqgNC9DbsWuWxVHKLtrW2Mv6a7D/94Ky6KPdgF5oQKsgWvI
         m3kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VMTL9Pms;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id s8si609877wrn.5.2021.04.22.08.59.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 08:59:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VMTL9Pms;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x634.google.com with SMTP id w23so53766153ejb.9
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Apr 2021 08:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1MFsgMi1vScM/Xb4Qn/U8v6SwMwWvXpGL3C1LP/euKw=;
        b=VMTL9Pmsx8mAuoF2J0RLpSs6vSjUyH+Qb+ikO0dild2RCYQ3a4jdGEB5/vdO4WmL54
         fQ4M9TjDLVcpbyb5dKniDuDZxSdHtqIhMISryjXKCkBbpaemDHnPmqYHXpbopgJeF86k
         g0l08o39WKNbGipu9sZ+c3RgufZts87Rj+DefkBvns/nFM+DNJUNVIWQF1wwf9XIaYUC
         1fcOaGzE44biHaJdvdwCmp4i/q5lvnEXA7PTiGN8FTRg1jJLqAKXKGYOUSqz4igMivnT
         nGhdxYzRv+EscSZEwEkGuKlJl8MPUwKoM7GGeU5wmzBkcfnLiCBibU4/J0bhU6ok0d5r
         u5gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1MFsgMi1vScM/Xb4Qn/U8v6SwMwWvXpGL3C1LP/euKw=;
        b=NqDIM7M1OKTKCXjCogiGPoRRLBBPopBhJHbLXI9NL43XL4ZPmtC/6Xb3Y9GjFB4bZN
         po3DluHXT7Bgxjcf3qNWfE/mu0eWUINL0lCIA9TDbDpcoG8oKpfK3/4So0HgoQ8A9Ws9
         gjNB6assmWS2Ld+9V8WAOpH+5+edb4RLUqo8E6RyfY/xXRvselukrZMYFuMMPpdPwYwa
         6F4SGrtr55juJtiujdRrSMGmOzyG6bX1vdPh6AcW6lJUxXbGZnihsW2ekXBihFlmfBTQ
         qwcXki5ki3Bu3QHrKzFP+TDyjoMCk1wOvO06EoopoLIzuQVZLqFQ4VywFqAgni+6BKaV
         j+nA==
X-Gm-Message-State: AOAM530Am0O3gSad1+EAeHozksOxE3lFWhDA6xlNxY7cFuFJAoYm1rT5
	UytvaQknm1goxQNOoMyA49yRAbgLwGjb0FqU
X-Received: by 2002:a17:906:4ed1:: with SMTP id i17mr4060093ejv.424.1619107196772;
        Thu, 22 Apr 2021 08:59:56 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id q25sm2551608edt.51.2021.04.22.08.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Apr 2021 08:59:56 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>,
	Matthew Wilcox <willy@infradead.org>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_lock_all with drm_modeset_lock
Date: Thu, 22 Apr 2021 17:59:51 +0200
Message-Id: <20210422155951.6314-1-fmdefrancesco@gmail.com>
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
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index 671ec1002230..bce8f6793d8e 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -1439,17 +1439,16 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
 	if (amdgpu_device_has_dc_support(adev)) {
 		struct drm_crtc *crtc;
 
-		drm_modeset_lock_all(drm_dev);
-
 		drm_for_each_crtc(crtc, drm_dev) {
+			drm_modeset_lock(&crtc->mutex, NULL);
 			if (crtc->state->active) {
 				ret = -EBUSY;
-				break;
 			}
+			drm_modeset_unlock(&crtc->mutex);
+			if (ret < 0)
+				break;
 		}
 
-		drm_modeset_unlock_all(drm_dev);
-
 	} else {
 		struct drm_connector *list_connector;
 		struct drm_connector_list_iter iter;
-- 
2.31.1


X-GM-THRID: 6748827844011360256
X-Received: by 2002:adf:f40d:: with SMTP id g13mr3843239wro.368.1571333930455;
        Thu, 17 Oct 2019 10:38:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a517:: with SMTP id i23ls1331929wrb.9.gmail; Thu, 17 Oct
 2019 10:38:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw4TrZa0drkk035au0ZKlgPsRmSn/1ecjd/nfSzHuxwVOqkgh7lAegR4BND+hlbTWvnXjOe
X-Received: by 2002:a5d:5052:: with SMTP id h18mr4309803wrt.143.1571333929442;
        Thu, 17 Oct 2019 10:38:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571333929; cv=none;
        d=google.com; s=arc-20160816;
        b=FGpi8gh3G/qbPP/uPwllg3oRFxJ/dydn50lg/GbgD1HXAAACiOxE2LPozqXYSplZVW
         qhMH4sOuEnEzMPYTpasDvXllvdbmPj/PhLog4jhOELbI7Mo4hZlFvzKTfLkyv0CG36nO
         hMJ95R208Uig/vH8V01L0wpgb+WMo4z97UTwIihHPUVhB+Qe1oXflCbnzwkuF4NyigSu
         hoUal8LmZhe5zifFwihx4/pVJKEVBY7dXfZ0OHLAO50dPoT1Ur8s8QY+VXwdGB8o6b75
         /68+TpqYCpRGXTQGAatUnJT2RSULa0ZUC1/p930Mqeod0M+CWwio9qoi7H9tYdH1kgYf
         +e9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Lip5tfLmtFZDh54RRrzX/tt/7Qrpp2XRfblRWQOMkLs=;
        b=E+TcNvRdAWIo8mYMfnahe8jQC0VYIW2daV823uxdA3PJ54dnR0QWFvw3bRgIDp1vXz
         uFnm5gRziYfigCc7HjeQe1jzTfZMhM1Z8KB9XzA45RHlnl4dSDQKGCgk5oM1oAKYrapf
         E5FvRPLyQJfHhut4xJv125HeYYQ8M3+OlKlTW3UWTwlvjyXMcxq0l4K53CrK+FlcDImg
         SXTjzYJC1Ck6B+e6ZxotMFeeG5P0GFb7GwVxa/6B/ScmYFdXRhuCWkLbsRvcoOrSya0p
         tBNzDi9NowWy1mF6h9BkCv3CF02lTnmzGjzIQ58ui8/QxDJECHj090Y19fRO4+GtjVxS
         8TQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RxsW6mjw;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x8si226506wmk.2.2019.10.17.10.38.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2019 10:38:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RxsW6mjw;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id r17so7531335wme.0
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Oct 2019 10:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lip5tfLmtFZDh54RRrzX/tt/7Qrpp2XRfblRWQOMkLs=;
        b=RxsW6mjwsltv1i0DmYokl0v6P9Mw6+mV4zwVcPwcaj/svOxEqZtmVIVDkJvz0DK9kA
         SpWr4z1/p5LR5qtJz3VrgzyC4x+NcErXxVaKZEIfFakyfIc3rU7SpnBmHzStzniwhWEe
         6SCyios6KUeVQeQxorpNW6UffGI6oanIF0WBpFd8+kKN2OMf7pT/qkfOvUP0ZDJkOsJW
         o+6rMuRYOPsvNV2W8IktUFW+MB9IaXguLKXQZ/EA28U/HvxdJniC4wnEB1tg8kcaFY//
         Z6B02it5WBQh71WW4w3Hr6v0HUcRGLYwC/qnyC4hpJ74S7gUVDkt7gOgiDukBFz3125h
         YWyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lip5tfLmtFZDh54RRrzX/tt/7Qrpp2XRfblRWQOMkLs=;
        b=UOK3ebHfQHW4yt6Jy6ewYj7bWIEquyyOogxLTYSpjFRFCgoKDVroJGWPgHSIexsMmv
         bibrpJ+yAt2sybzT990DYsAZHJd+eTqndb3velAmkv9MjaDBi11Nq/4sQuxivO5hpmZ8
         kCGDIR5FW6Ae/8gvOQCoXTW+7NWyt7sX+l4djrSd0tnoKX0385lbbVF0NMrmioPqdyTJ
         uNndB+WyJw+E+nYkInwzn5dNNarMWHOGufAZ73xtHAVhy/Kpqc5hv0aiPRdlmSRtrRI6
         uPjcnCQvOBsNu52WyqH1l7BfFOVbhFa5xs4VuZXfx53soFkX4umbc9H9YBSJjkoDSRYe
         Av4Q==
X-Gm-Message-State: APjAAAUx3yvIXJaPOzOhq6YE3Ba5n5F8yf6WSqvKUCSO7dIA+iiwZynr
	vR5FG/PMFZBlDEl9DhQbPkxHCOTafM6j
X-Received: by 2002:a1c:48d6:: with SMTP id v205mr3702084wma.35.1571333928697;
        Thu, 17 Oct 2019 10:38:48 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.googlemail.com with ESMTPSA id x9sm3035204wrq.63.2019.10.17.10.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 10:38:48 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: vc04_services: fix warnings of Block comments use of *
Date: Thu, 17 Oct 2019 18:38:37 +0100
Message-Id: <20191017173837.27336-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warnings of Block comments use * on subsequent lines.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../vc04_services/interface/vchi/vchi.h        | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index bdc393d36769..0a353a468f34 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -8,7 +8,7 @@
 #include "interface/vchi/vchi_common.h"
 
 /******************************************************************************
- Global defs
+ * Global defs
  *****************************************************************************/
 
 #define VCHI_BULK_ROUND_UP(x)     ((((unsigned long)(x)) + VCHI_BULK_ALIGN - 1) & ~(VCHI_BULK_ALIGN - 1))
@@ -56,7 +56,8 @@ typedef struct opaque_vchi_instance_handle_t *VCHI_INSTANCE_T;
 typedef struct opaque_vchi_service_handle_t *VCHI_SERVICE_HANDLE_T;
 
 /******************************************************************************
- Global funcs - implementation is specific to which side you are on (local / remote)
+ * Global funcs - implementation is specific to which side you are on
+ * (local / remote)
  *****************************************************************************/
 
 #ifdef __cplusplus
@@ -80,7 +81,7 @@ extern void vchi_free_buffer(VCHI_SERVICE_HANDLE_T handle, void *address);
 extern uint32_t vchi_current_time(VCHI_INSTANCE_T instance_handle);
 
 /******************************************************************************
- Global service API
+ * Global service API
  *****************************************************************************/
 // Routine to destroy a service
 extern int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle);
@@ -153,9 +154,10 @@ extern int32_t vchi_msg_look_ahead(VCHI_SERVICE_HANDLE_T handle,
 				   struct vchi_msg_iter *iter,
 				   VCHI_FLAGS_T flags);
 
-/******************************************************************************
- Global service support API - operations on held messages and message iterators
- *****************************************************************************/
+/*******************************************************************************
+ * Global service support API - operations on held messages
+ * and message iterators
+ ******************************************************************************/
 
 // Routine to get the address of a held message
 extern void *vchi_held_msg_ptr(const struct vchi_held_msg *message);
@@ -196,7 +198,7 @@ extern int32_t vchi_msg_iter_hold_next(struct vchi_msg_iter *iter,
 				       struct vchi_held_msg *message);
 
 /******************************************************************************
- Global bulk API
+ * Global bulk API
  *****************************************************************************/
 
 // Routine to prepare interface for a transfer from the other side
@@ -221,7 +223,7 @@ extern int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
 					void *transfer_handle);
 
 /******************************************************************************
- Configuration plumbing
+ * Configuration plumbing
  *****************************************************************************/
 
 #ifdef __cplusplus
-- 
2.21.0



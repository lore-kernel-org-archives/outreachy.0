X-GM-THRID: 7019786631527792640
X-Received: by 2002:a05:6830:3148:: with SMTP id c8mr11658125ots.351.1634421439094;
        Sat, 16 Oct 2021 14:57:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:4486:: with SMTP id r6ls3846209otv.3.gmail; Sat, 16
 Oct 2021 14:57:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwY6o8SACxFqkjc/a+CJUCYQx7YSzqg4EUGof8cH477VAC4ks8Jenu2iWiB1V17/VLKzPxa
X-Received: by 2002:a9d:5a85:: with SMTP id w5mr14957849oth.73.1634421438452;
        Sat, 16 Oct 2021 14:57:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634421438; cv=none;
        d=google.com; s=arc-20160816;
        b=WRycv66TW8WbRmSvdk1yKp1s5lJ7AcC0mo63UPpASL3hdTBMkRyvusXnns9A9tUiLL
         6WOsUbP9vzf02MVcwV6AYsxSKp7hY4XT+K2kiUNfff/6EKV9jYmdoIN4besiFyBczLvc
         uYRkxilucPextwifEefT+j77hmBd5NU8LdZWaPlzdlwQnK2hrbPrwCchmtsJaHNfBoyc
         NkREH8njzCFRHHin6BjdHj5nnPSHzMZex5ajkUdW7x8BKySFItLJLYnFecuNAyrf40uk
         6s3ugKWByKYXXXwX7g+FgMWNjf1U3cpE1FKZhqGi3/5fnj3At1CzT/kOUbbROEEJK7Qz
         gBeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=lR7v2SeiI/rPTDpitBfRCXahGE0ZCHzarZSpq+/okuQ=;
        b=F+lqk+lIuBITJrS7v/O4Ojhi9QiP/1MQi8QHudHrwzS0R8A9a8BIejvZAt4x1g0zbY
         8PLGWDnvlgZnSRqaH4xnYJugLpAUli9T06RJNVRtFR6b0mSQnEllU4+tTIDsi4tOoHlx
         YhtX6prv/p+YTuR4gR2bdivNyh8UvJ/JBuddi8nrhn2D4O1m+3TEVKhm8qU2sjn6exh1
         Me8DkzeuJDvbiOQOQ8AHhuSd4xO9VpGde9LRnXLNww6eq8UlsY74alEkpQC13Gq6K0kn
         3nIoWGtMz7QaeUWyhcdmJDqNtoLsX66hhO3AdOf7hwp/4V8nMNm1ni6fEmgMM4shyoem
         pnHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="O/rj1uAS";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id v18si795218oie.5.2021.10.16.14.57.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Oct 2021 14:57:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="O/rj1uAS";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1035.google.com with SMTP id gn3so4133601pjb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Oct 2021 14:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lR7v2SeiI/rPTDpitBfRCXahGE0ZCHzarZSpq+/okuQ=;
        b=O/rj1uASFAU7AVI7upqHkb/IgntAN0O5+JJqCM+1f7zJqD5BfrRhNWYIW77zzwENlr
         CKiPr/inPoD1hARjNIKkZBzNsT7DJ7Yg91HSAMfVDXgLdGDoEzSTZ7XQ8qfWKZzCg18Y
         5LEONqJDaVEjTjKN02SJJn/7D+kDM99lU5UbAAeiFazUSi7fNC3ZrDz4lCFRn0/VCvs1
         XTi4uT9Q29IENgEH+dmyU/FlGv4aQcTUfSUIoBslMqW6NoOEWOQP7vUULDiF1m7ph5MH
         /uGAzmXg08Yn94H5zB9TdELb3OwHrYSEXBlLkMMpoJeh36nbgvCEtIWDjbF/dtH6DxvN
         RHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lR7v2SeiI/rPTDpitBfRCXahGE0ZCHzarZSpq+/okuQ=;
        b=54JbJSFB/AvKvyPAlguafcjJqhzG8ClELcHBldTCOo3JgIX91rgIXDfrUq3tAnzhP7
         kUsQpqRgOKnTHj5aOujVNW7pBrbsXncs0Lp4LpCPVgF2bZhe2SLJfVbCJ6dSzcJwPiZC
         H6HS1CKcNW2CE5bxjv3sIgWjgKeMQVMEsV3Xx2P8XInGmCJ5max9bdtFcqjLXU6zlVgv
         aBwf6Pv2ULHxqXbFThvO2Jv7beMgShZbzu5EXeDToMY2gFge82JQeyfAN4pQJQfpDwjR
         1+a1yN7Z4TMhJwW+pAxf7xvrZ7D20fRMzHZxRNwVTU4krPaS1+YQJKY9VTLTPZn72wkk
         Jd6w==
X-Gm-Message-State: AOAM532tRQ5XPKaHE0mmd5bvLU3MQFCF8opzGtMF/jl4ydEJ0BbCQ9+T
	zKbUM+JWBbEjC/HEUBUzj8CctWKtq0w9PA==
X-Received: by 2002:a17:90a:71c5:: with SMTP id m5mr37000621pjs.105.1634421437722;
        Sat, 16 Oct 2021 14:57:17 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id y3sm8630080pjg.7.2021.10.16.14.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Oct 2021 14:57:17 -0700 (PDT)
From: Kushal-kothari <kushalkothari285@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	mike.rapoport@gmail.com,
	kushalkothari2850@gmail.com,
	kushalkothari285@gmail.com,
	outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev,
	nsaenz@kernel.org,
	bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH] staging: vc04_services: Fixed checkpatch warning: MSLEEP: msleep < 20ms can sleep for up to 20ms.
Date: Sun, 17 Oct 2021 03:25:27 +0530
Message-Id: <20211016215527.119189-1-kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Kushal-kothari <kushalkothari285@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 6fbafdfe340f..80a7898c5331 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -857,7 +857,7 @@ vchiq_bulk_transmit(unsigned int handle, const void *data, unsigned int size,
 		if (status != VCHIQ_RETRY)
 			break;
 
-		msleep(1);
+		usleep_range(1000, 2000);
 	}
 
 	return status;
@@ -894,7 +894,7 @@ enum vchiq_status vchiq_bulk_receive(unsigned int handle, void *data,
 		if (status != VCHIQ_RETRY)
 			break;
 
-		msleep(1);
+		usleep_range(1000, 2000);
 	}
 
 	return status;
-- 
2.25.1



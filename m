X-GM-THRID: 6211053698454388736
X-Received: by 10.13.234.137 with SMTP id t131mr3494863ywe.53.1446236485885;
        Fri, 30 Oct 2015 13:21:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.32.35 with SMTP id f3ls503745obi.94.gmail; Fri, 30 Oct
 2015 13:21:25 -0700 (PDT)
X-Received: by 10.182.29.41 with SMTP id g9mr7911200obh.27.1446236485264;
        Fri, 30 Oct 2015 13:21:25 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si928836pbb.0.2015.10.30.13.21.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:21:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so86907398pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 13:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=5kRqsjnkn6ez7KHg3WlSRDUf3Qy3S5QOM6J8TaXsUBc=;
        b=CZlmSO5VBSeVXOG7xG+cmTXpl39xYKic7G9/lyK3U9A1qxtAaAHNTJyXZxlEZXWkMu
         HrLbXpA0MHmy9rNWSr5RiPVvEDF/uQZZ4Adl5vFDz4hZlJN9zzVMcnGTpigSxAiG62fW
         +AeKoV82X6WF1Mild9Rd/JsSSlJZqqbk0mynN5aM+tAqA7ha8cZVx7/O/vMY6eHU69V8
         U2oud+319INunowGo7ZN+WFDTH3EOLSAnF4wTmK3Ucbwvim4zqHDnysmXFjzna3sYskg
         ThRyXrZrB8GP2NUZQ4Gyv2shk/IOf7XTTw4N1bHLhKA41h2ZYf+9PILbeRAyhuEsGqbA
         /p3A==
X-Received: by 10.68.248.6 with SMTP id yi6mr10956274pbc.158.1446236485044;
        Fri, 30 Oct 2015 13:21:25 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pn8sm9812012pbb.16.2015.10.30.13.21.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:21:24 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/5] staging: media: bcm2048: remove unnecessary space after a cast
Date: Fri, 30 Oct 2015 13:21:06 -0700
Message-Id: <9fb6ad7b5bfd83bbd4417040d3780a118548b2ad.1446235583.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
 <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: No space is necessary after a cast

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index f8578fb..199ad37 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -184,8 +184,8 @@
 #define dev_to_v4l2(f)	((f * BCM2048_FREQDEV_UNIT) / BCM2048_FREQV4L2_MULTI)
 #define v4l2_to_dev(f)	((f * BCM2048_FREQV4L2_MULTI) / BCM2048_FREQDEV_UNIT)
 
-#define msb(x)                  ((u8)((u16) x >> 8))
-#define lsb(x)                  ((u8)((u16) x &  0x00FF))
+#define msb(x)                  ((u8)((u16)x >> 8))
+#define lsb(x)                  ((u8)((u16)x &  0x00FF))
 #define compose_u16(msb, lsb)	(((u16)msb << 8) | lsb)
 
 #define BCM2048_DEFAULT_POWERING_DELAY	20
-- 
1.7.9.5



X-GM-THRID: 6211053698454388736
X-Received: by 10.66.248.199 with SMTP id yo7mr1207459pac.38.1446123640872;
        Thu, 29 Oct 2015 06:00:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.19 with SMTP id 19ls399488qgm.67.gmail; Thu, 29 Oct
 2015 06:00:39 -0700 (PDT)
X-Received: by 10.129.103.139 with SMTP id b133mr1231726ywc.24.1446123639812;
        Thu, 29 Oct 2015 06:00:39 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si134145pac.2.2015.10.29.06.00.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hk11so40603660pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 06:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=1At+ibvTtgst5Cna7OKV/CxusLFYKslpJ03Cdg2KFdI=;
        b=J+p8dgY3q8c6ZplNpJlkShXnsIoyWBGuRVZ1ST8QEnKGLM35FcLvgvgz0SgGdRYzVD
         q+pc6J6wk+RP5PjbGpQ7sDkg8C/aCGYYp6lvJ7svQ2jQHWxR2A3UuYd0kCrfbqYWVdKs
         DCxdLnIuMhclJMaKfnr8I1cv5ZHg4Mq9h0Dk2agdK9pVm2jqhFrqAv6mbQtvmSfgcTQy
         BmJb+WUvMW0EUW2DyLexaWEnvVN71OjhllvMmPDlOvBXQCQj3WgIGfbZa/xbMn8oZYOt
         q1MM1cEE+x0OGvjN1VEurKUmgsqCVXJ9HUg804M3W4RPqv0847Q0YRNCi6zjJzroeZ4E
         rzCQ==
X-Received: by 10.68.57.129 with SMTP id i1mr1792731pbq.51.1446123638548;
        Thu, 29 Oct 2015 06:00:38 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pj10sm2342164pbc.59.2015.10.29.06.00.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:38 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: media: bcm2048: remove unnecessary space after a cast
Date: Thu, 29 Oct 2015 06:00:16 -0700
Message-Id: <8c0bac7842560485e15dcdc76eef479913c8ac2e.1446123178.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: No space is necessary after a cast

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 30973cd..a6070f1 100644
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



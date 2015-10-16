X-GM-THRID: 6206326590573379584
X-Received: by 10.107.31.209 with SMTP id f200mr11765364iof.14.1445023016312;
        Fri, 16 Oct 2015 12:16:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.195 with SMTP id w3ls760930obf.75.gmail; Fri, 16 Oct
 2015 12:16:55 -0700 (PDT)
X-Received: by 10.182.181.3 with SMTP id ds3mr5139599obc.5.1445023015937;
        Fri, 16 Oct 2015 12:16:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id pe1si2112762pac.2.2015.10.16.12.16.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 12:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv9so30504399pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 12:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=OyXRC6QvrXCVT8qF/Q5s3lzzCGEvoZfD43Zzm+dzoFE=;
        b=MSmN2Rf5nYjajzGGDmKRpvW7PvO4kXDp02TnTuRptxpm7kYFsDtvDh6UUSr3jm2mHr
         i1ltrg80lcsYh8jPB+v0sdqx/Sx2+FHfvu2eCWuwnYLjOk3RBs5GrS3Iwhe6GGGFXFdR
         wGHp3hQR6zyNkaH0A+IT78zjuc61L67SNJsM3Q/OTZTB46JKlBtA8CaN1q9pNR0n21nt
         G27j/BYY78GhaWNJpxkNieCA67UJb7yh8i+EAmj46vaQkqmsRTq064xiCnhX67DESJUB
         GQAi0knGkJevYrDqGjpObCHDdST61itLD010axMJCM9AaUGjWZNMvUYcvRJrsNQlUSs0
         Qi6g==
X-Received: by 10.66.144.165 with SMTP id sn5mr18644449pab.122.1445023015751;
        Fri, 16 Oct 2015 12:16:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id po7sm22608464pbc.56.2015.10.16.12.16.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 12:16:55 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] Staging: iio: cdc: ad7150: Remove unused macros
Date: Sat, 17 Oct 2015 00:46:45 +0530
Message-Id: <1445023006-10140-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1445023006-10140-1-git-send-email-shraddha.6596@gmail.com>
References: <1445023006-10140-1-git-send-email-shraddha.6596@gmail.com>

Remove the macros since they are not used anywhere throughout the
kernel.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index ff83394..a174c88 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -36,16 +36,6 @@
 #define AD7150_CH2_TIMEOUT         13
 #define AD7150_CH2_SETUP           14
 #define AD7150_CFG                 15
-#define AD7150_CFG_FIX             (1 << 7)
-#define AD7150_PD_TIMER            16
-#define AD7150_CH1_CAPDAC          17
-#define AD7150_CH2_CAPDAC          18
-#define AD7150_SN3                 19
-#define AD7150_SN2                 20
-#define AD7150_SN1                 21
-#define AD7150_SN0                 22
-#define AD7150_ID                  23
-
 /**
  * struct ad7150_chip_info - instance specific chip data
  * @client: i2c client for this device
-- 
2.1.4



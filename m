X-GM-THRID: 6203007824854777856
X-Received: by 10.31.149.200 with SMTP id x191mr2666039vkd.14.1444250304203;
        Wed, 07 Oct 2015 13:38:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.29.36 with SMTP id g4ls1919307igh.31.canary; Wed, 07 Oct
 2015 13:38:23 -0700 (PDT)
X-Received: by 10.66.165.3 with SMTP id yu3mr2633602pab.15.1444250303747;
        Wed, 07 Oct 2015 13:38:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si5355431pbb.2.2015.10.07.13.38.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 13:38:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ex6so31090067pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 13:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1ozlnmGieCKWs1JtX8DuvvnvXZ/67n3iOCqzDovEv58=;
        b=MrZrrv+QM2BN6foi9oP2cQ4I4QkrItBi+xmNaV2aJOv4VTLKrdGCugiusAA8pIK0OY
         hbNGWfxdI3r3eVRxuIyfzx2oEqxxmGt6q4kK8U73YZ3zOVECjCacUI0XCe1Pb/7qMb0B
         l2760TQfCBwJaLq/tkv88YJn77sbFubDRRqONa/FcfEsiYor19h0hVPT4s+d7Y95s0UI
         rlilGTfxCquhT6ctFGDg4q1r/lNV+I1nwuaLCMo3huDDVT3HeT9sQz93YFXu1D2yJ/DX
         GGLbgFpbNZtufumR6sa87JYQB/NvVqYla99kqh8d+rxoiVILXH7GILG1PenxYPusCqqQ
         JxYw==
X-Received: by 10.66.221.104 with SMTP id qd8mr3286570pac.155.1444250303578;
        Wed, 07 Oct 2015 13:38:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rk2sm41084795pbc.75.2015.10.07.13.38.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 13:38:23 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: Jonathan Cameron <jic23@kernel.org>
Subject: [PATCH] Staging: iio: cdc: Remove unused macros
Date: Thu,  8 Oct 2015 02:08:10 +0530
Message-Id: <1444250290-32700-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150205.561582BE.0048,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove the macros since they are not used anywhere throughout the
kernel.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/iio/cdc/ad7746.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 028b4e8..a4bb152 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -27,11 +27,7 @@
 
 #define AD7746_REG_STATUS		0
 #define AD7746_REG_CAP_DATA_HIGH	1
-#define AD7746_REG_CAP_DATA_MID		2
-#define AD7746_REG_CAP_DATA_LOW		3
 #define AD7746_REG_VT_DATA_HIGH		4
-#define AD7746_REG_VT_DATA_MID		5
-#define AD7746_REG_VT_DATA_LOW		6
 #define AD7746_REG_CAP_SETUP		7
 #define AD7746_REG_VT_SETUP		8
 #define AD7746_REG_EXC_SETUP		9
@@ -39,11 +35,8 @@
 #define AD7746_REG_CAPDACA		11
 #define AD7746_REG_CAPDACB		12
 #define AD7746_REG_CAP_OFFH		13
-#define AD7746_REG_CAP_OFFL		14
 #define AD7746_REG_CAP_GAINH		15
-#define AD7746_REG_CAP_GAINL		16
 #define AD7746_REG_VOLT_GAINH		17
-#define AD7746_REG_VOLT_GAINL		18
 
 /* Status Register Bit Designations (AD7746_REG_STATUS) */
 #define AD7746_STATUS_EXCERR		BIT(3)
-- 
2.1.4



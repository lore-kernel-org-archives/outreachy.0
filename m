X-GM-THRID: 6200307025703862272
X-Received: by 10.129.134.129 with SMTP id w123mr3192408ywf.17.1443621475614;
        Wed, 30 Sep 2015 06:57:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.158.170 with SMTP id wv10ls288652obb.40.gmail; Wed, 30 Sep
 2015 06:57:55 -0700 (PDT)
X-Received: by 10.182.215.226 with SMTP id ol2mr3331754obc.11.1443621475100;
        Wed, 30 Sep 2015 06:57:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si125452pbb.0.2015.09.30.06.57.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 06:57:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv12so42458806pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 06:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=T1zNJmvfJ1HUU7oUwcNJbSdN8lMIPDfgBZLy9raA1SE=;
        b=aKniA7nNJZNUOnssksDRIqBEnZl4jVhLsoQitKEh8UX6J4+0O5HI+9Ue6WBhJCzbg5
         Lv8Fx+R2NrBb8eBWtjMHCpGAaOO1hRwm9a/DSxpIEg0amulIN9aIxmzo4naGXd7vz7ca
         ENfo9g+MFfgeMN7mpOoUTkOVq1lrNvp7RAQ0AGX3HOhR4QnfOM/onb3VKxiVSm+6iuhb
         aVWt9rvfGLZ4UMRE1qQUFQaOTYD+pEQA++uF0MpsSDOpF/fytzTFBPF7pQNagunalaxx
         Ah1mbL7eA10R5hdXXuIt64HBWO3JMd3paavw65NorKoSmkwOITaESanVMyj6H+Ci0Vix
         zyzA==
X-Received: by 10.66.139.138 with SMTP id qy10mr5047015pab.97.1443621474958;
        Wed, 30 Sep 2015 06:57:54 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id z13sm918284pas.34.2015.09.30.06.57.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 06:57:53 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: [PATCH] Staging: iio: cdc: Prefer using the BIT macro
Date: Wed, 30 Sep 2015 19:27:43 +0530
Message-Id: <1443621463-8343-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.560BEA61.0031,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Replace bit shifting on 1 with the BIT(x) macro

This was done with coccinelle:
@@ int g; @@

-(1 << g)
+BIT(g)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/iio/cdc/ad7746.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 10fa372..aa97437 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -52,10 +52,10 @@
 #define AD7746_STATUS_RDYCAP		BIT(0)
 
 /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
-#define AD7746_CAPSETUP_CAPEN		(1 << 7)
-#define AD7746_CAPSETUP_CIN2		(1 << 6) /* AD7746 only */
-#define AD7746_CAPSETUP_CAPDIFF		(1 << 5)
-#define AD7746_CAPSETUP_CACHOP		(1 << 0)
+#define AD7746_CAPSETUP_CAPEN		BIT(7)
+#define AD7746_CAPSETUP_CIN2		BIT(6) /* AD7746 only */
+#define AD7746_CAPSETUP_CAPDIFF		BIT(5)
+#define AD7746_CAPSETUP_CACHOP		BIT(0)
 
 /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
 #define AD7746_VTSETUP_VTEN		(1 << 7)
-- 
2.1.4



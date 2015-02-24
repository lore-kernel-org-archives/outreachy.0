X-GM-THRID: 3279011446784
X-Received: by 10.112.161.9 with SMTP id xo9mr2358403lbb.7.1424799417901;
        Tue, 24 Feb 2015 09:36:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.40 with SMTP id n8ls737661wiy.14.gmail; Tue, 24 Feb
 2015 09:36:56 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr2286733wik.5.1424799416116;
        Tue, 24 Feb 2015 09:36:56 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id ev8si939780wib.3.2015.02.24.09.36.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 09:36:56 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x242.google.com with SMTP id l15so2471402wiw.1
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 09:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=3ArJrCr+XJxJTvvRN45JLFP8DfpBMGox9sckejdi70k=;
        b=QZfW+KhNtJ73/HJaGKPm9d7ew6TDMoCWv2tDcWDGuDJJ6p9twthQGlHEUZuj9t3okE
         juR7ckAa6VAkxPaoie6PhjEmiZQvuLIgoTb4m4vRJpwx2uXcnAIiGPFHTvN7r2P8i/BM
         b4hDjdihalpSaZobrYmsUmxXBHJJpv/Nt3t9yCtryXCdcK3oiF3iGKYjjbJP8qNtA32R
         Ot+E7LUoBRoor0tzmb8rshGdd5oULWV3rqCAmCRt24vepLwFYPR/ux1w81ZUCEi4GP93
         dM3Zj4KeE2bu09gXDhlWvo9q6STIR0IXgQe6oJvwAHfOjV9vxUelnYIL+1jIQ1AHBnWb
         LhhA==
X-Received: by 10.194.80.40 with SMTP id o8mr34018938wjx.34.1424799415998;
        Tue, 24 Feb 2015 09:36:55 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id cb9sm4852201wib.10.2015.02.24.09.36.54
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 09:36:55 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: hal: Delete space before ';'
Date: Tue, 24 Feb 2015 19:36:47 +0200
Message-Id: <1424799407-1248-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Space prohibited before semicolon.That's why delete space before
semicolon.It is prohibited by the kernel coding.

This Warning found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/hal/odm_HWConfig.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/odm_HWConfig.c b/drivers/staging/rtl8723au/hal/odm_HWConfig.c
index fb3cc87..7d923e9 100644
--- a/drivers/staging/rtl8723au/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723au/hal/odm_HWConfig.c
@@ -138,16 +138,16 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct dm_odm_t *pDM_Odm,
 			report = (cck_agc_rpt & 0x60)>>5;
 			switch (report) {
 			case 0x3:
-				rx_pwr_all = -46 - ((cck_agc_rpt & 0x1f)<<1) ;
+				rx_pwr_all = -46 - ((cck_agc_rpt & 0x1f)<<1);
 				break;
 			case 0x2:
 				rx_pwr_all = -26 - ((cck_agc_rpt & 0x1f)<<1);
 				break;
 			case 0x1:
-				rx_pwr_all = -12 - ((cck_agc_rpt & 0x1f)<<1) ;
+				rx_pwr_all = -12 - ((cck_agc_rpt & 0x1f)<<1);
 				break;
 			case 0x0:
-				rx_pwr_all = 16 - ((cck_agc_rpt & 0x1f)<<1) ;
+				rx_pwr_all = 16 - ((cck_agc_rpt & 0x1f)<<1);
 				break;
 			}
 		}
-- 
1.9.1



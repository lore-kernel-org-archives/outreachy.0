X-GM-THRID: 2401796882432
X-Received: by 10.66.66.1 with SMTP id b1mr6805947pat.8.1424608673367;
        Sun, 22 Feb 2015 04:37:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.56.227 with SMTP id d3ls528430obq.35.gmail; Sun, 22 Feb
 2015 04:37:53 -0800 (PST)
X-Received: by 10.182.205.232 with SMTP id lj8mr6913828obc.39.1424608673080;
        Sun, 22 Feb 2015 04:37:53 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id re6si3883097pab.1.2015.02.22.04.37.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 04:37:53 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdev10 with SMTP id v10so18888001pde.7
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 04:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oLJHqg0SQ4QwC9RF2ZrTZXGv/MrW9fncZ+wKZyTvkgE=;
        b=ITdiXi0TI47g1Jj2AIw7aBBtxDgRIVYo267ih+Yjr8Mbz4CURumTrKpKeFM3CROAQs
         HYbSgrZ5Gb7361pMSet9mWQViQ+RrU2169d2cMnbMdTM+gSo6C5BQpdRSFr30TkTEELS
         j/Q70r3cUYGAnfNahdFqNAbBimFSCMW/2OgWFCtyeBSUdrzBuv+JLVwYPrRt1kMWtgmd
         8mPDDr5OqNNxU6V/0mvKJuuKSmH5R7q7agsVOv8XSzClrg3oexXEtvNgAwtNOu1tq4y1
         /WwvYvf9bF1ukdEvzaCQx0sNPEUAmBFcfRR3DRf2rvWs1TySFYv55JY+nM97Hc4trf8O
         B28w==
X-Received: by 10.67.5.130 with SMTP id cm2mr11195791pad.110.1424608672964;
        Sun, 22 Feb 2015 04:37:52 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id cf12sm7489297pdb.43.2015.02.22.04.37.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 04:37:51 -0800 (PST)
Date: Sun, 22 Feb 2015 18:07:33 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Fix line over 80 characters
Message-ID: <20150222123733.GA24239@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Added a variable to reduce line size and enhance code readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/bb_cfg.c | 33 +++++++++++++++++----------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
index 1e963bf..262da88 100644
--- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
@@ -511,42 +511,43 @@ static u32 array_phy_reg_pg_8188e[] = {
 static void store_pwrindex_offset(struct adapter *Adapter, u32 regaddr, u32 bitmask, u32 data)
 {
 	struct hal_data_8188e *hal_data = GET_HAL_DATA(Adapter);
+	 u8 pwrGrpCnt = hal_data->pwrGroupCnt;
 
 	if (regaddr == rTxAGC_A_Rate18_06)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][0] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][0] = data;
 	if (regaddr == rTxAGC_A_Rate54_24)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][1] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][1] = data;
 	if (regaddr == rTxAGC_A_CCK1_Mcs32)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][6] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][6] = data;
 	if (regaddr == rTxAGC_B_CCK11_A_CCK2_11 && bitmask == 0xffffff00)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][7] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][7] = data;
 	if (regaddr == rTxAGC_A_Mcs03_Mcs00)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][2] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][2] = data;
 	if (regaddr == rTxAGC_A_Mcs07_Mcs04)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][3] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][3] = data;
 	if (regaddr == rTxAGC_A_Mcs11_Mcs08)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][4] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][4] = data;
 	if (regaddr == rTxAGC_A_Mcs15_Mcs12) {
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][5] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][5] = data;
 		if (hal_data->rf_type == RF_1T1R)
 			hal_data->pwrGroupCnt++;
 	}
 	if (regaddr == rTxAGC_B_Rate18_06)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][8] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][8] = data;
 	if (regaddr == rTxAGC_B_Rate54_24)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][9] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][9] = data;
 	if (regaddr == rTxAGC_B_CCK1_55_Mcs32)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][14] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][14] = data;
 	if (regaddr == rTxAGC_B_CCK11_A_CCK2_11 && bitmask == 0x000000ff)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][15] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][15] = data;
 	if (regaddr == rTxAGC_B_Mcs03_Mcs00)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][10] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][10] = data;
 	if (regaddr == rTxAGC_B_Mcs07_Mcs04)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][11] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][11] = data;
 	if (regaddr == rTxAGC_B_Mcs11_Mcs08)
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][12] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][12] = data;
 	if (regaddr == rTxAGC_B_Mcs15_Mcs12) {
-		hal_data->MCSTxPowerLevelOriginalOffset[hal_data->pwrGroupCnt][13] = data;
+		hal_data->MCSTxPowerLevelOriginalOffset[pwrGrpCnt][13] = data;
 		if (hal_data->rf_type != RF_1T1R)
 			hal_data->pwrGroupCnt++;
 	}
-- 
1.9.1



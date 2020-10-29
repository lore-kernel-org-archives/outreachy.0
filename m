X-GM-THRID: 6889129421220872192
X-Received: by 2002:a63:3302:: with SMTP id z2mr5412573pgz.327.1604000450733;
        Thu, 29 Oct 2020 12:40:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7607:: with SMTP id k7ls1691813pll.10.gmail; Thu, 29
 Oct 2020 12:40:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzbXBkeYpW1YoLXiLoaypJtwoHepUG7ZWusA4biKmeOJbiTSvS8BsoeskmlD/Xsilr6/mdB
X-Received: by 2002:a17:90a:5a83:: with SMTP id n3mr1366222pji.199.1604000448794;
        Thu, 29 Oct 2020 12:40:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604000448; cv=none;
        d=google.com; s=arc-20160816;
        b=rQYGTvRwfPNDrYuc++B3RgJZoKIxPl2CfOQjlA2sGll4oM/D122L7t/11g4zZpH+ve
         g8IVeNz2DdnzCZPCS+BzId/StVN9XqxA06dOCsYFGVd6O/WHX8A1DLgNDKTOxb4qKqBj
         F++++HUtNUO3E9+F5x0S03punhowGKhfuecA7njhhJM4RYzRyYHCg6vs4grwuij2jTma
         DlcxQTG2fo1peij+hpTFAt9CGoi++P5zQDqjHFypQztYxlylL49Gzp7zxsOngGu1NOkk
         /MwGqo3nSJhy3ZrA82M3Pjahv5hLASR+wyopvxY7aD4MTzbfrYnZc8ZE2xst9Ga0PGuD
         SqNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=o/G3S+UbUUv447yGt9gDYYq5eSsTBWPKHSXABvVrxwQ=;
        b=iCk4HKWtDdHFloMIZFg+ZHsDLECHAoNQLv4uo/u5/6el17lprZLHH/llQIOcmuCOCe
         EBEXp516++nNCx62LxQ73eHOv17ImuQNMarPNNOM1jUoPVQCx8zdUDz9d9sc5+F91MLC
         7y3zueZrw6LqmW6WdhOPoerEJarAxta6UEWjYRdb4D24xm20NkJ0QaIUFnngzjmnorCZ
         Ic+Ez5IkDrFeeYDwAUAoy8Dy2nPdhS6hlUY0FdxqIgKcFKtnA8OgSjJhlSyF1pg7pPpf
         PzIS5sADoRlXxWYARioMscyBF1N5zTXPNAB1jS+AhsWBIekVL3EOWs/uauVM13c6x82y
         AiJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t3bf6UGp;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id 191si304362pfu.3.2020.10.29.12.40.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:40:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t3bf6UGp;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id k9so1503923pgt.9
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 12:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=o/G3S+UbUUv447yGt9gDYYq5eSsTBWPKHSXABvVrxwQ=;
        b=t3bf6UGpGX2kQYEHiK3wVWdz7jBW48NpLzarG+yPRCyh9BhKzmlBlbX5BdhTQgj0YO
         hMlxWA1ZldxRqG3mIb+opLP1KcOf1mRoxcHpWS1KePW9K+WKJNswvWOjwc+NZUtd04+g
         vnQnQgM3CDlfd6B7R3CRFhUv6p9x86wSGbc1azJ16BXrN077bUJ8zooWaDfhrVo2roGj
         4rinjpnlT44OIE7qbONEhMAVCxMAzcAD0u3cSNBnep7PZZ1A/lv1Az3eqDbnakZK2Kki
         6+KqWPTP9pptvNgHEvqauj4Pm+ZCNUSAP1OQT6jokDopaiiwgiCNhZpZzhCncRf4w4Io
         4qlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o/G3S+UbUUv447yGt9gDYYq5eSsTBWPKHSXABvVrxwQ=;
        b=ETR11azH8b4AhVGEdc0KSg4ti+Vm/qMADqpy8662DvYVxB15cYniCX5s3/c594IngW
         BJnET6xL8QMzK9AH6XvpczjGdgWXTqSa8TwUM7NtTA+nFEzCgYRLwYJPFiOsVicMTkHW
         W/1VzdytKbqOmNF7TDa+kxlF6CCLSs9Lkor9uCsFifQEBVKhGzjVn6f/1uEP/I+bLG+u
         Ol8axB48GAlVPfX4NbKpPS3agk3ukrXnrRQ0Aam0VpgT7HC5cw2qtA/w5LinS6B6ITkr
         62UbbgnrVF9IfrIoj6IuIOw0UY2bOoOx8rI02DxbHpYwrX8Ok4qDcc2ZF3Nt5qr+fVKY
         280w==
X-Gm-Message-State: AOAM533cRqDv67kmbkB4nr0r/7tH3aiQcyfB4LJGS3wDSo9dkfMN6Xyo
	zVl6uZsovjCXrGbTnUKfZZc=
X-Received: by 2002:a17:90a:1181:: with SMTP id e1mr751602pja.77.1604000448192;
        Thu, 29 Oct 2020 12:40:48 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from localhost.localdomain ([66.181.185.125])
        by smtp.googlemail.com with ESMTPSA id 9sm6397715pjs.1.2020.10.29.12.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 12:40:47 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Amarjargal Gundjalam <amarjargal16@gmail.com>
Subject: [PATCH 4/4] staging: rtl8723bs: hal: use __func__ instead of function name
Date: Fri, 30 Oct 2020 03:40:29 +0800
Message-Id: <20201029194029.141165-5-amarjargal16@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201029194029.141165-1-amarjargal16@gmail.com>
References: <20201029194029.141165-1-amarjargal16@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix following checkpatch warning:
WARNING: Prefer using '"%s...", __func__' to using function's name, in a string"

Signed-off-by: Amarjargal Gundjalam <amarjargal16@gmail.com>
---
 .../staging/rtl8723bs/hal/HalHWImg8723B_BB.c  | 10 +--
 .../staging/rtl8723bs/hal/HalHWImg8723B_MAC.c |  6 +-
 .../staging/rtl8723bs/hal/HalHWImg8723B_RF.c  |  8 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf.c      |  5 +-
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    |  8 +-
 drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c  | 15 ++--
 drivers/staging/rtl8723bs/hal/hal_com.c       |  6 +-
 .../staging/rtl8723bs/hal/hal_com_phycfg.c    | 28 +++---
 drivers/staging/rtl8723bs/hal/hal_intf.c      |  4 +-
 drivers/staging/rtl8723bs/hal/odm.c           |  6 +-
 .../staging/rtl8723bs/hal/odm_CfoTracking.c   | 31 ++++---
 drivers/staging/rtl8723bs/hal/odm_DIG.c       | 85 ++++++++++---------
 .../rtl8723bs/hal/odm_EdcaTurboCheck.c        |  4 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c  |  6 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 31 ++++---
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   |  6 +-
 .../staging/rtl8723bs/hal/rtl8723bs_xmit.c    |  2 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  | 18 ++--
 18 files changed, 146 insertions(+), 133 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
index 19856e806b1f..fcfa4a054639 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c
@@ -38,7 +38,7 @@ static bool CheckPositive(
 		ODM_COMP_INIT,
 		ODM_DBG_TRACE,
 		(
-			"===> [8812A] CheckPositive (cond1, cond2) = (0x%X 0x%X)\n",
+			"===> [8812A] %s (cond1, cond2) = (0x%X 0x%X)\n", __func__,
 			cond1,
 			cond2
 		)
@@ -48,7 +48,7 @@ static bool CheckPositive(
 		ODM_COMP_INIT,
 		ODM_DBG_TRACE,
 		(
-			"===> [8812A] CheckPositive (driver1, driver2) = (0x%X 0x%X)\n",
+			"===> [8812A] %s (driver1, driver2) = (0x%X 0x%X)\n", __func__,
 			driver1,
 			driver2
 		)
@@ -267,7 +267,7 @@ void ODM_ReadAndConfig_MP_8723B_AGC_TAB(PDM_ODM_T pDM_Odm)
 		pDM_Odm,
 		ODM_COMP_INIT,
 		ODM_DBG_LOUD,
-		("===> ODM_ReadAndConfig_MP_8723B_AGC_TAB\n")
+		("===> %s\n", __func__)
 	);
 
 	for (i = 0; i < ArrayLen; i += 2) {
@@ -536,7 +536,7 @@ void ODM_ReadAndConfig_MP_8723B_PHY_REG(PDM_ODM_T pDM_Odm)
 		pDM_Odm,
 		ODM_COMP_INIT,
 		ODM_DBG_LOUD,
-		("===> ODM_ReadAndConfig_MP_8723B_PHY_REG\n")
+		("===> %s\n", __func__)
 	);
 
 	for (i = 0; i < ArrayLen; i += 2) {
@@ -615,7 +615,7 @@ void ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(PDM_ODM_T pDM_Odm)
 		pDM_Odm,
 		ODM_COMP_INIT,
 		ODM_DBG_LOUD,
-		("===> ODM_ReadAndConfig_MP_8723B_PHY_REG_PG\n")
+		("===> %s\n", __func__)
 	);
 
 	pDM_Odm->PhyRegPgVersion = 1;
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
index b80c5b11796b..e4d212fc86a6 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c
@@ -38,7 +38,7 @@ static bool CheckPositive(
 		ODM_COMP_INIT,
 		ODM_DBG_TRACE,
 		(
-			"===> [8812A] CheckPositive (cond1, cond2) = (0x%X 0x%X)\n",
+			"===> [8812A] %s (cond1, cond2) = (0x%X 0x%X)\n", __func__,
 			cond1,
 			cond2
 		)
@@ -48,7 +48,7 @@ static bool CheckPositive(
 		ODM_COMP_INIT,
 		ODM_DBG_TRACE,
 		(
-			"===> [8812A] CheckPositive (driver1, driver2) = (0x%X 0x%X)\n",
+			"===> [8812A] %s (driver1, driver2) = (0x%X 0x%X)\n", __func__,
 			driver1,
 			driver2
 		)
@@ -238,7 +238,7 @@ void ODM_ReadAndConfig_MP_8723B_MAC_REG(PDM_ODM_T pDM_Odm)
 		pDM_Odm,
 		ODM_COMP_INIT,
 		ODM_DBG_LOUD,
-		("===> ODM_ReadAndConfig_MP_8723B_MAC_REG\n")
+		("===> %s\n", __func__)
 	);
 
 	for (i = 0; i < ArrayLen; i += 2) {
diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
index 426f68b8f0d2..f98fe1d08167 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c
@@ -38,7 +38,7 @@ static bool CheckPositive(
 		ODM_COMP_INIT,
 		ODM_DBG_TRACE,
 		(
-			"===> [8812A] CheckPositive (cond1, cond2) = (0x%X 0x%X)\n",
+			"===> [8812A] %s (cond1, cond2) = (0x%X 0x%X)\n", __func__,
 			cond1,
 			cond2
 		)
@@ -48,7 +48,7 @@ static bool CheckPositive(
 		ODM_COMP_INIT,
 		ODM_DBG_TRACE,
 		(
-			"===> [8812A] CheckPositive (driver1, driver2) = (0x%X 0x%X)\n",
+			"===> [8812A] %s (driver1, driver2) = (0x%X 0x%X)\n", __func__,
 			driver1,
 			driver2
 		)
@@ -269,7 +269,7 @@ void ODM_ReadAndConfig_MP_8723B_RadioA(PDM_ODM_T pDM_Odm)
 		pDM_Odm,
 		ODM_COMP_INIT,
 		ODM_DBG_LOUD,
-		("===> ODM_ReadAndConfig_MP_8723B_RadioA\n")
+		("===> %s\n", __func__)
 	);
 
 	for (i = 0; i < ArrayLen; i += 2) {
@@ -764,7 +764,7 @@ void ODM_ReadAndConfig_MP_8723B_TXPWR_LMT(PDM_ODM_T pDM_Odm)
 		pDM_Odm,
 		ODM_COMP_INIT,
 		ODM_DBG_LOUD,
-		("===> ODM_ReadAndConfig_MP_8723B_TXPWR_LMT\n")
+		("===> %s\n", __func__)
 	);
 
 	for (i = 0; i < ARRAY_SIZE(Array_MP_8723B_TXPWR_LMT); i += 7) {
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.c b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
index 7b435840746d..74531ca822d1 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
@@ -113,7 +113,8 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 		ODM_COMP_TX_PWR_TRACK,
 		ODM_DBG_LOUD,
 		(
-			"===>ODM_TXPowerTrackingCallback_ThermalMeter,\npDM_Odm->BbSwingIdxCckBase: %d, pDM_Odm->BbSwingIdxOfdmBase[A]: %d, pDM_Odm->DefaultOfdmIndex: %d\n",
+			"===>%s,\npDM_Odm->BbSwingIdxCckBase: %d, pDM_Odm->BbSwingIdxOfdmBase[A]: %d, pDM_Odm->DefaultOfdmIndex: %d\n",
+			__func__,
 			pDM_Odm->BbSwingIdxCckBase,
 			pDM_Odm->BbSwingIdxOfdmBase[ODM_RF_PATH_A],
 			pDM_Odm->DefaultOfdmIndex
@@ -617,7 +618,7 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 		pDM_Odm,
 		ODM_COMP_TX_PWR_TRACK,
 		ODM_DBG_LOUD,
-		("<===ODM_TXPowerTrackingCallback_ThermalMeter\n")
+		("<===%s\n", __func__)
 	);
 
 	pDM_Odm->RFCalibrateInfo.TXPowercount = 0;
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 4a2de254a519..73c0460327e2 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -1133,7 +1133,7 @@ static void _PHY_PathAFillIQKMatrix8723B(
 		pRFCalibrateInfo->TxIQC_8723B[PATH_S1][IDX_0xC4C][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_ECCAThreshold, bMaskDWord);
 
 		if (bTxOnly) {
-			ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("_PHY_PathAFillIQKMatrix8723B only Tx OK\n"));
+			ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("%s only Tx OK\n", __func__));
 
 			/*  <20130226, Kordan> Saving RxIQC, otherwise not initialized. */
 			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xCA0][KEY] = rOFDM0_RxIQExtAnta;
@@ -1217,7 +1217,7 @@ static void _PHY_PathBFillIQKMatrix8723B(
 		pRFCalibrateInfo->TxIQC_8723B[PATH_S0][IDX_0xC4C][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_ECCAThreshold, bMaskDWord);
 
 		if (bTxOnly) {
-			ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("_PHY_PathBFillIQKMatrix8723B only Tx OK\n"));
+			ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("%s only Tx OK\n", __func__));
 
 			pRFCalibrateInfo->RxIQC_8723B[PATH_S0][IDX_0xC14][KEY] = rOFDM0_XARxIQImbalance;
 /*			pRFCalibrateInfo->RxIQC_8723B[PATH_S0][IDX_0xC14][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XARxIQImbalance, bMaskDWord); */
@@ -1692,7 +1692,7 @@ static void phy_IQCalibrate_8723B(
 		PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_Tone_A, bMaskDWord, 0x01008c00);
 
 	}
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("phy_IQCalibrate_8723B() <==\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("%s() <==\n", __func__));
 
 }
 
@@ -1880,7 +1880,7 @@ void PHY_IQCalibrate_8723B(
 	}
 
 	if (bReCovery) {
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD, ("PHY_IQCalibrate_8723B: Return due to bReCovery!\n"));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD, ("%s: Return due to bReCovery!\n", __func__));
 		_PHY_ReloadADDARegisters8723B(padapter, IQK_BB_REG_92C, pDM_Odm->RFCalibrateInfo.IQK_BB_backup_recover, 9);
 		return;
 	}
diff --git a/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c b/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
index 3b34a516075f..67ee69ea976b 100644
--- a/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
+++ b/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
@@ -57,7 +57,8 @@ u8 HalPwrSeqCmdParsing(
 			_module_hal_init_c_,
 			_drv_info_,
 			(
-				"HalPwrSeqCmdParsing: offset(%#x) cut_msk(%#x) fab_msk(%#x) interface_msk(%#x) base(%#x) cmd(%#x) msk(%#x) value(%#x)\n",
+				"%s: offset(%#x) cut_msk(%#x) fab_msk(%#x) interface_msk(%#x) base(%#x) cmd(%#x) msk(%#x) value(%#x)\n",
+				__func__,
 				GET_PWR_CFG_OFFSET(PwrCfgCmd),
 				GET_PWR_CFG_CUT_MASK(PwrCfgCmd),
 				GET_PWR_CFG_FAB_MASK(PwrCfgCmd),
@@ -80,7 +81,7 @@ u8 HalPwrSeqCmdParsing(
 				RT_TRACE(
 					_module_hal_init_c_,
 					_drv_info_,
-					("HalPwrSeqCmdParsing: PWR_CMD_READ\n")
+					("%s: PWR_CMD_READ\n", __func__)
 				);
 				break;
 
@@ -88,7 +89,7 @@ u8 HalPwrSeqCmdParsing(
 				RT_TRACE(
 					_module_hal_init_c_,
 					_drv_info_,
-					("HalPwrSeqCmdParsing: PWR_CMD_WRITE\n")
+					("%s: PWR_CMD_WRITE\n", __func__)
 				);
 				offset = GET_PWR_CFG_OFFSET(PwrCfgCmd);
 
@@ -127,7 +128,7 @@ u8 HalPwrSeqCmdParsing(
 				RT_TRACE(
 					_module_hal_init_c_,
 					_drv_info_,
-					("HalPwrSeqCmdParsing: PWR_CMD_POLLING\n")
+					("%s: PWR_CMD_POLLING\n", __func__)
 				);
 
 				bPollingBit = false;
@@ -163,7 +164,7 @@ u8 HalPwrSeqCmdParsing(
 				RT_TRACE(
 					_module_hal_init_c_,
 					_drv_info_,
-					("HalPwrSeqCmdParsing: PWR_CMD_DELAY\n")
+					("%s: PWR_CMD_DELAY\n", __func__)
 				);
 				if (GET_PWR_CFG_VALUE(PwrCfgCmd) == PWRSEQ_DELAY_US)
 					udelay(GET_PWR_CFG_OFFSET(PwrCfgCmd));
@@ -176,7 +177,7 @@ u8 HalPwrSeqCmdParsing(
 				RT_TRACE(
 					_module_hal_init_c_,
 					_drv_info_,
-					("HalPwrSeqCmdParsing: PWR_CMD_END\n")
+					("%s: PWR_CMD_END\n", __func__)
 				);
 				return true;
 
@@ -184,7 +185,7 @@ u8 HalPwrSeqCmdParsing(
 				RT_TRACE(
 					_module_hal_init_c_,
 					_drv_err_,
-					("HalPwrSeqCmdParsing: Unknown CMD!!\n")
+					("%s: Unknown CMD!!\n", __func__)
 				);
 				break;
 			}
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index bda4ca01e374..a7027ba54413 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -687,7 +687,7 @@ u8 HwRateToMRate(u8 rate)
 		break;
 
 	default:
-		DBG_871X("HwRateToMRate(): Non supported Rate [%x]!!!\n", rate);
+		DBG_871X("%s(): Non supported Rate [%x]!!!\n", __func__, rate);
 		break;
 	}
 
@@ -1395,8 +1395,8 @@ bool GetHexValueFromString(char *szStr, u32 *pu4bVal, u32 *pu4bMove)
 
 	/*  Check input parameter. */
 	if (!szStr || !pu4bVal || !pu4bMove) {
-		DBG_871X("GetHexValueFromString(): Invalid input arguments! szStr: %p, pu4bVal: %p, pu4bMove: %p\n",
-			 szStr, pu4bVal, pu4bMove);
+		DBG_871X("%s(): Invalid input arguments! szStr: %p, pu4bVal: %p, pu4bMove: %p\n",
+			 __func__, szStr, pu4bVal, pu4bMove);
 		return false;
 	}
 
diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index b4389771391a..5c62f14cfcfd 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -18,7 +18,7 @@ u8 PHY_GetTxPowerByRateBase(struct adapter *Adapter, u8 Band, u8 RfPath,
 	u8	value = 0;
 
 	if (RfPath > ODM_RF_PATH_D) {
-		DBG_871X("Invalid Rf Path %d in PHY_GetTxPowerByRateBase()\n", RfPath);
+		DBG_871X("Invalid Rf Path %d in %s()\n", __func__, RfPath);
 		return 0;
 	}
 
@@ -55,8 +55,8 @@ u8 PHY_GetTxPowerByRateBase(struct adapter *Adapter, u8 Band, u8 RfPath,
 			value = pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][9];
 			break;
 		default:
-			DBG_871X("Invalid RateSection %d in Band 2.4G, Rf Path %d, %dTx in PHY_GetTxPowerByRateBase()\n",
-					 RateSection, RfPath, TxNum);
+			DBG_871X("Invalid RateSection %d in Band 2.4G, Rf Path %d, %dTx in %s()\n",
+					 __func__, RateSection, RfPath, TxNum);
 			break;
 		}
 	} else if (Band == BAND_ON_5G) {
@@ -89,12 +89,12 @@ u8 PHY_GetTxPowerByRateBase(struct adapter *Adapter, u8 Band, u8 RfPath,
 			value = pHalData->TxPwrByRateBase5G[RfPath][TxNum][8];
 			break;
 		default:
-			DBG_871X("Invalid RateSection %d in Band 5G, Rf Path %d, %dTx in PHY_GetTxPowerByRateBase()\n",
-					 RateSection, RfPath, TxNum);
+			DBG_871X("Invalid RateSection %d in Band 5G, Rf Path %d, %dTx in %s()\n",
+					 __func__, RateSection, RfPath, TxNum);
 			break;
 		}
 	} else
-		DBG_871X("Invalid Band %d in PHY_GetTxPowerByRateBase()\n", Band);
+		DBG_871X("Invalid Band %d in %s()\n", __func__, Band);
 
 	return value;
 }
@@ -112,7 +112,7 @@ phy_SetTxPowerByRateBase(
 	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
 
 	if (RfPath > ODM_RF_PATH_D) {
-		DBG_871X("Invalid Rf Path %d in phy_SetTxPowerByRatBase()\n", RfPath);
+		DBG_871X("Invalid Rf Path %d in %s()\n", __func__, RfPath);
 		return;
 	}
 
@@ -149,8 +149,8 @@ phy_SetTxPowerByRateBase(
 			pHalData->TxPwrByRateBase2_4G[RfPath][TxNum][9] = Value;
 			break;
 		default:
-			DBG_871X("Invalid RateSection %d in Band 2.4G, Rf Path %d, %dTx in phy_SetTxPowerByRateBase()\n",
-					 RateSection, RfPath, TxNum);
+			DBG_871X("Invalid RateSection %d in Band 2.4G, Rf Path %d, %dTx in %s()\n",
+					 __func__, RateSection, RfPath, TxNum);
 			break;
 		}
 	} else if (Band == BAND_ON_5G) {
@@ -183,12 +183,12 @@ phy_SetTxPowerByRateBase(
 			pHalData->TxPwrByRateBase5G[RfPath][TxNum][8] = Value;
 			break;
 		default:
-			DBG_871X("Invalid RateSection %d in Band 5G, Rf Path %d, %dTx in phy_SetTxPowerByRateBase()\n",
-					 RateSection, RfPath, TxNum);
+			DBG_871X("Invalid RateSection %d in Band 5G, Rf Path %d, %dTx in %s()\n",
+					 __func__, RateSection, RfPath, TxNum);
 			break;
 		}
 	} else
-		DBG_871X("Invalid Band %d in phy_SetTxPowerByRateBase()\n", Band);
+		DBG_871X("Invalid Band %d in %s()\n", __func__, Band);
 }
 
 static void
@@ -325,7 +325,7 @@ u8 PHY_GetRateSectionIndexOfTxPowerByRate(
 			index = 13;
 			break;
 		default:
-			DBG_871X("Invalid RegAddr 0x3%x in PHY_GetRateSectionIndexOfTxPowerByRate()", RegAddr);
+			DBG_871X("Invalid RegAddr 0x3%x in %s()", __func__, RegAddr);
 			break;
 		}
 	}
@@ -1064,7 +1064,7 @@ u8 PHY_GetTxPowerIndexBase(
 		else if (Rate >= MGN_6M)
 			txPower = pHalData->Index24G_BW40_Base[RFPath][chnlIdx];
 		else
-			DBG_871X("PHY_GetTxPowerIndexBase: INVALID Rate.\n");
+			DBG_871X("%s: INVALID Rate.\n", __func__);
 
 		/* DBG_871X("Base Tx power(RF-%c, Rate #%d, Channel Index %d) = 0x%X\n", */
 		/*		((RFPath == 0)?'A':'B'), Rate, chnlIdx, txPower); */
diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index ac3066a91c84..4808864f55f0 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -105,7 +105,7 @@ uint rtw_hal_init(struct adapter *padapter)
 		rtw_bb_rf_gain_offset(padapter);
 	} else {
 		dvobj->padapters->hw_init_completed = false;
-		DBG_871X("rtw_hal_init: hal__init fail\n");
+		DBG_871X("%s: hal__init fail\n", __func__);
 	}
 
 	RT_TRACE(_module_hal_init_c_, _drv_err_, ("-rtl871x_hal_init:status = 0x%x\n", status));
@@ -125,7 +125,7 @@ uint rtw_hal_deinit(struct adapter *padapter)
 		padapter = dvobj->padapters;
 		padapter->hw_init_completed = false;
 	} else {
-		DBG_871X("\n rtw_hal_deinit: hal_init fail\n");
+		DBG_871X("\n %s: hal_init fail\n", __func__);
 	}
 	return status;
 }
diff --git a/drivers/staging/rtl8723bs/hal/odm.c b/drivers/staging/rtl8723bs/hal/odm.c
index d6dd51aa446c..daa74ccee7e2 100644
--- a/drivers/staging/rtl8723bs/hal/odm.c
+++ b/drivers/staging/rtl8723bs/hal/odm.c
@@ -866,7 +866,7 @@ void odm_CommonInfoSelfUpdate(PDM_ODM_T pDM_Odm)
 
 void odm_CmnInfoInit_Debug(PDM_ODM_T pDM_Odm)
 {
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("odm_CmnInfoInit_Debug ==>\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("%s ==>\n", __func__));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportPlatform =%d\n", pDM_Odm->SupportPlatform));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportAbility = 0x%x\n", pDM_Odm->SupportAbility));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_COMMON, ODM_DBG_LOUD, ("SupportInterface =%d\n", pDM_Odm->SupportInterface));
@@ -1083,9 +1083,9 @@ u32 ODM_Get_Rate_Bitmap(
 void odm_RefreshRateAdaptiveMask(PDM_ODM_T pDM_Odm)
 {
 
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("odm_RefreshRateAdaptiveMask()---------->\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("%s()---------->\n", __func__));
 	if (!(pDM_Odm->SupportAbility & ODM_BB_RA_MASK)) {
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("odm_RefreshRateAdaptiveMask(): Return cos not supported\n"));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("%s(): Return cos not supported\n", __func__));
 		return;
 	}
 	odm_RefreshRateAdaptiveMaskCE(pDM_Odm);
diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index 3ea1972545e5..8cfb46380369 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -31,8 +31,8 @@ static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
 		ODM_COMP_CFO_TRACKING,
 		ODM_DBG_LOUD,
 		(
-			"odm_SetCrystalCap(): CrystalCap = 0x%x\n",
-			CrystalCap
+			"%s(): CrystalCap = 0x%x\n",
+			__func__, CrystalCap
 		)
 	);
 }
@@ -131,7 +131,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 			pDM_Odm,
 			ODM_COMP_CFO_TRACKING,
 			ODM_DBG_LOUD,
-			("ODM_CfoTracking(): Return: SupportAbility ODM_BB_CFO_TRACKING is disabled\n")
+			("%s(): Return: SupportAbility ODM_BB_CFO_TRACKING is disabled\n", __func__)
 		);
 		return;
 	}
@@ -140,7 +140,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 		pDM_Odm,
 		ODM_COMP_CFO_TRACKING,
 		ODM_DBG_LOUD,
-		("ODM_CfoTracking() =========>\n")
+		("%s() =========>\n", __func__)
 	);
 
 	if (!pDM_Odm->bLinked || !pDM_Odm->bOneEntryOnly) {
@@ -151,7 +151,8 @@ void ODM_CfoTracking(void *pDM_VOID)
 			ODM_COMP_CFO_TRACKING,
 			ODM_DBG_LOUD,
 			(
-				"ODM_CfoTracking(): Reset: bLinked = %d, bOneEntryOnly = %d\n",
+				"%s(): Reset: bLinked = %d, bOneEntryOnly = %d\n",
+				__func__,
 				pDM_Odm->bLinked,
 				pDM_Odm->bOneEntryOnly
 			)
@@ -165,7 +166,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 				ODM_COMP_CFO_TRACKING,
 				ODM_DBG_LOUD,
 				(
-					"ODM_CfoTracking(): packet counter doesn't change\n"
+					"%s(): packet counter doesn't change\n", __func__
 				)
 			);
 			return;
@@ -185,7 +186,8 @@ void ODM_CfoTracking(void *pDM_VOID)
 			ODM_COMP_CFO_TRACKING,
 			ODM_DBG_LOUD,
 			(
-				"ODM_CfoTracking(): CFO_kHz_A = %dkHz, CFO_kHz_B = %dkHz, CFO_ave = %dkHz\n",
+				"%s(): CFO_kHz_A = %dkHz, CFO_kHz_B = %dkHz, CFO_ave = %dkHz\n",
+				__func__,
 				CFO_kHz_A,
 				CFO_kHz_B,
 				CFO_ave
@@ -203,7 +205,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 			pCfoTrack->largeCFOHit == 0 &&
 			!pCfoTrack->bAdjust
 		) {
-			ODM_RT_TRACE(pDM_Odm, ODM_COMP_CFO_TRACKING, ODM_DBG_LOUD, ("ODM_CfoTracking(): first large CFO hit\n"));
+			ODM_RT_TRACE(pDM_Odm, ODM_COMP_CFO_TRACKING, ODM_DBG_LOUD, ("%s(): first large CFO hit\n", __func__));
 			pCfoTrack->largeCFOHit = 1;
 			return;
 		} else
@@ -227,7 +229,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 				pDM_Odm,
 				ODM_COMP_CFO_TRACKING,
 				ODM_DBG_LOUD,
-				("ODM_CfoTracking(): Disable CFO tracking for BT!!\n")
+				("%s(): Disable CFO tracking for BT!!\n", __func__)
 			);
 		}
 
@@ -243,8 +245,8 @@ void ODM_CfoTracking(void *pDM_VOID)
 				ODM_COMP_CFO_TRACKING,
 				ODM_DBG_LOUD,
 				(
-					"ODM_CfoTracking(): Crystal cap offset = %d\n",
-					Adjust_Xtal
+					"%s(): Crystal cap offset = %d\n",
+					__func__, Adjust_Xtal
 				)
 			);
 		}
@@ -268,7 +270,8 @@ void ODM_CfoTracking(void *pDM_VOID)
 			ODM_COMP_CFO_TRACKING,
 			ODM_DBG_LOUD,
 			(
-				"ODM_CfoTracking(): Crystal cap = 0x%x, Default Crystal cap = 0x%x\n",
+				"%s(): Crystal cap = 0x%x, Default Crystal cap = 0x%x\n",
+				__func__,
 				pCfoTrack->CrystalCap,
 				pCfoTrack->DefXCap
 			)
@@ -281,7 +284,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 				pDM_Odm,
 				ODM_COMP_CFO_TRACKING,
 				ODM_DBG_LOUD,
-				("ODM_CfoTracking(): Disable ATC!!\n")
+				("%s(): Disable ATC!!\n", __func__)
 			);
 		} else {
 			odm_SetATCStatus(pDM_Odm, true);
@@ -289,7 +292,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 				pDM_Odm,
 				ODM_COMP_CFO_TRACKING,
 				ODM_DBG_LOUD,
-				("ODM_CfoTracking(): Enable ATC!!\n")
+				("%s(): Enable ATC!!\n", __func__)
 			);
 		}
 	}
diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
index 40fe43c62c45..18d88c057b55 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
@@ -242,7 +242,7 @@ void odm_Adaptivity(void *pDM_VOID, u8 IGI)
 		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("Go to odm_DynamicEDCCA()\n"));
 		return;
 	}
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_Adaptivity() =====>\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s() =====>\n", __func__));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("ForceEDCCA =%d, IGI_Base = 0x%x, TH_L2H_ini = %d, TH_EDCCA_HL_diff = %d, AdapEn_RSSI = %d\n",
 		pDM_Odm->ForceEDCCA, pDM_Odm->IGI_Base, pDM_Odm->TH_L2H_ini, pDM_Odm->TH_EDCCA_HL_diff, pDM_Odm->AdapEn_RSSI));
 
@@ -366,7 +366,7 @@ void odm_PauseDIG(
 	pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
 	static bool bPaused;
 
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG() =========>\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s() =========>\n", __func__));
 
 	if (
 		(pDM_Odm->SupportAbility & ODM_BB_ADAPTIVITY) &&
@@ -376,7 +376,7 @@ void odm_PauseDIG(
 			pDM_Odm,
 			ODM_COMP_DIG,
 			ODM_DBG_LOUD,
-			("odm_PauseDIG(): Dynamic adjust threshold in progress !!\n")
+			("%s(): Dynamic adjust threshold in progress !!\n", __func__)
 		);
 		return;
 	}
@@ -389,7 +389,7 @@ void odm_PauseDIG(
 			pDM_Odm,
 			ODM_COMP_DIG,
 			ODM_DBG_LOUD,
-			("odm_PauseDIG(): Return: SupportAbility ODM_BB_DIG or ODM_BB_FA_CNT is disabled\n")
+			("%s(): Return: SupportAbility ODM_BB_DIG or ODM_BB_FA_CNT is disabled\n", __func__)
 		);
 		return;
 	}
@@ -399,18 +399,18 @@ void odm_PauseDIG(
 	case ODM_PAUSE_DIG:
 		/* 2 Disable DIG */
 		ODM_CmnInfoUpdate(pDM_Odm, ODM_CMNINFO_ABILITY, pDM_Odm->SupportAbility & (~ODM_BB_DIG));
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Pause DIG !!\n"));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Pause DIG !!\n", __func__));
 
 		/* 2 Backup IGI value */
 		if (!bPaused) {
 			pDM_DigTable->IGIBackup = pDM_DigTable->CurIGValue;
 			bPaused = true;
 		}
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Backup IGI  = 0x%x\n", pDM_DigTable->IGIBackup));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Backup IGI  = 0x%x\n", __func__, pDM_DigTable->IGIBackup));
 
 		/* 2 Write new IGI value */
 		ODM_Write_DIG(pDM_Odm, IGIValue);
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Write new IGI = 0x%x\n", IGIValue));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Write new IGI = 0x%x\n", __func__, IGIValue));
 		break;
 
 	/* 1 Resume DIG */
@@ -419,16 +419,16 @@ void odm_PauseDIG(
 			/* 2 Write backup IGI value */
 			ODM_Write_DIG(pDM_Odm, pDM_DigTable->IGIBackup);
 			bPaused = false;
-			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Write original IGI = 0x%x\n", pDM_DigTable->IGIBackup));
+			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Write original IGI = 0x%x\n", __func__, pDM_DigTable->IGIBackup));
 
 			/* 2 Enable DIG */
 			ODM_CmnInfoUpdate(pDM_Odm, ODM_CMNINFO_ABILITY, pDM_Odm->SupportAbility | ODM_BB_DIG);
-			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Resume DIG !!\n"));
+			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Resume DIG !!\n", __func__));
 		}
 		break;
 
 	default:
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Wrong  type !!\n"));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Wrong  type !!\n", __func__));
 		break;
 	}
 }
@@ -523,7 +523,7 @@ void odm_DIG(void *pDM_VOID)
 	if (odm_DigAbort(pDM_Odm))
 		return;
 
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG() ===========================>\n\n"));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s() ===========================>\n\n", __func__));
 
 	if (pDM_Odm->adaptivity_flag == true)
 		Adap_IGI_Upper = pDM_Odm->Adaptivity_IGI_upper;
@@ -540,7 +540,7 @@ void odm_DIG(void *pDM_VOID)
 	dm_dig_min = DM_DIG_MIN_NIC;
 	DIG_MaxOfMin = DM_DIG_MAX_AP;
 
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Absolutely upper bound = 0x%x, lower bound = 0x%x\n", dm_dig_max, dm_dig_min));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Absolutely upper bound = 0x%x, lower bound = 0x%x\n", __func__, dm_dig_max, dm_dig_min));
 
 	/* 1 Adjust boundary by RSSI */
 	if (pDM_Odm->bLinked && bPerformance) {
@@ -548,7 +548,7 @@ void odm_DIG(void *pDM_VOID)
 		/* 4 Modify DIG upper bound for 92E, 8723A\B, 8821 & 8812 BT */
 		if (pDM_Odm->bBtLimitedDig == 1) {
 			offset = 10;
-			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Coex. case: Force upper bound to RSSI + %d !!!!!!\n", offset));
+			ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Coex. case: Force upper bound to RSSI + %d !!!!!!\n", __func__, offset));
 		} else
 			offset = 15;
 
@@ -591,8 +591,8 @@ void odm_DIG(void *pDM_VOID)
 					ODM_COMP_ANT_DIV,
 					ODM_DBG_LOUD,
 					(
-						"odm_DIG(): Antenna diversity case: Force lower bound to 0x%x !!!!!!\n",
-						DIG_Dynamic_MIN
+						"%s(): Antenna diversity case: Force lower bound to 0x%x !!!!!!\n",
+						__func__, DIG_Dynamic_MIN
 					)
 				);
 				ODM_RT_TRACE(
@@ -600,8 +600,8 @@ void odm_DIG(void *pDM_VOID)
 					ODM_COMP_ANT_DIV,
 					ODM_DBG_LOUD,
 					(
-						"odm_DIG(): Antenna diversity case: RSSI_max = 0x%x !!!!!!\n",
-						pDM_DigTable->AntDiv_RSSI_max
+						"%s(): Antenna diversity case: RSSI_max = 0x%x !!!!!!\n",
+						__func__, pDM_DigTable->AntDiv_RSSI_max
 					)
 				);
 			}
@@ -612,7 +612,8 @@ void odm_DIG(void *pDM_VOID)
 		ODM_COMP_DIG,
 		ODM_DBG_LOUD,
 		(
-			"odm_DIG(): Adjust boundary by RSSI Upper bound = 0x%x, Lower bound = 0x%x\n",
+			"%s(): Adjust boundary by RSSI Upper bound = 0x%x, Lower bound = 0x%x\n",
+			__func__,
 			pDM_DigTable->rx_gain_range_max,
 			DIG_Dynamic_MIN
 		)
@@ -622,7 +623,8 @@ void odm_DIG(void *pDM_VOID)
 		ODM_COMP_DIG,
 		ODM_DBG_LOUD,
 		(
-			"odm_DIG(): Link status: bLinked = %d, RSSI = %d, bFirstConnect = %d, bFirsrDisConnect = %d\n\n",
+			"%s(): Link status: bLinked = %d, RSSI = %d, bFirstConnect = %d, bFirsrDisConnect = %d\n\n",
+			__func__,
 			pDM_Odm->bLinked,
 			pDM_Odm->RSSI_Min,
 			FirstConnect,
@@ -650,7 +652,8 @@ void odm_DIG(void *pDM_VOID)
 				ODM_COMP_DIG,
 				ODM_DBG_LOUD,
 				(
-					"odm_DIG(): Abnormal #beacon (%d) case in STA mode: Force lower bound to 0x%x !!!!!!\n\n",
+					"%s(): Abnormal #beacon (%d) case in STA mode: Force lower bound to 0x%x !!!!!!\n\n",
+					__func__,
 					pDM_Odm->PhyDbgInfo.NumQryBeaconPkt,
 					pDM_DigTable->rx_gain_range_min
 				)
@@ -666,8 +669,8 @@ void odm_DIG(void *pDM_VOID)
 			ODM_COMP_DIG,
 			ODM_DBG_LOUD,
 			(
-				"odm_DIG(): Abnormal lower bound case: Force lower bound to 0x%x !!!!!!\n\n",
-				pDM_DigTable->rx_gain_range_min
+				"%s(): Abnormal lower bound case: Force lower bound to 0x%x !!!!!!\n\n",
+				__func__, pDM_DigTable->rx_gain_range_min
 			)
 		);
 	}
@@ -675,7 +678,7 @@ void odm_DIG(void *pDM_VOID)
 
 	/* 1 False alarm threshold decision */
 	odm_FAThresholdCheck(pDM_Odm, bDFSBand, bPerformance, RxTp, TxTp, dm_FA_thres);
-	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): False alarm threshold = %d, %d, %d\n\n", dm_FA_thres[0], dm_FA_thres[1], dm_FA_thres[2]));
+	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): False alarm threshold = %d, %d, %d\n\n", __func__, dm_FA_thres[0], dm_FA_thres[1], dm_FA_thres[2]));
 
 	/* 1 Adjust initial gain by false alarm */
 	if (pDM_Odm->bLinked && bPerformance) {
@@ -684,7 +687,7 @@ void odm_DIG(void *pDM_VOID)
 			pDM_Odm,
 			ODM_COMP_DIG,
 			ODM_DBG_LOUD,
-			("odm_DIG(): Adjust IGI after link\n")
+			("%s(): Adjust IGI after link\n", __func__)
 		);
 
 		if (bFirstTpTarget || (FirstConnect && bPerformance)) {
@@ -703,8 +706,8 @@ void odm_DIG(void *pDM_VOID)
 				ODM_COMP_DIG,
 				ODM_DBG_LOUD,
 				(
-					"odm_DIG(): First connect case: IGI does on-shot to 0x%x\n",
-					CurrentIGI
+					"%s(): First connect case: IGI does on-shot to 0x%x\n",
+					__func__, CurrentIGI
 				)
 			);
 
@@ -727,7 +730,8 @@ void odm_DIG(void *pDM_VOID)
 					ODM_COMP_DIG,
 					ODM_DBG_LOUD,
 					(
-						"odm_DIG(): Abnormal #beacon (%d) case: IGI does one-shot to 0x%x\n",
+						"%s(): Abnormal #beacon (%d) case: IGI does one-shot to 0x%x\n",
+						__func__,
 						pDM_Odm->PhyDbgInfo.NumQryBeaconPkt,
 						CurrentIGI
 					)
@@ -740,7 +744,7 @@ void odm_DIG(void *pDM_VOID)
 			pDM_Odm,
 			ODM_COMP_DIG,
 			ODM_DBG_LOUD,
-			("odm_DIG(): Adjust IGI before link\n")
+			("%s(): Adjust IGI before link\n", __func__)
 		);
 
 		if (FirstDisConnect || bFirstCoverage) {
@@ -749,7 +753,7 @@ void odm_DIG(void *pDM_VOID)
 				pDM_Odm,
 				ODM_COMP_DIG,
 				ODM_DBG_LOUD,
-				("odm_DIG(): First disconnect case: IGI does on-shot to lower bound\n")
+				("%s(): First disconnect case: IGI does on-shot to lower bound\n", __func__)
 			);
 		} else {
 			if (pFalseAlmCnt->Cnt_all > dm_FA_thres[2])
@@ -773,7 +777,8 @@ void odm_DIG(void *pDM_VOID)
 		ODM_COMP_DIG,
 		ODM_DBG_LOUD,
 		(
-			"odm_DIG(): CurIGValue = 0x%x, TotalFA = %d\n\n",
+			"%s(): CurIGValue = 0x%x, TotalFA = %d\n\n",
+			__func__,
 			CurrentIGI,
 			pFalseAlmCnt->Cnt_all
 		)
@@ -791,8 +796,8 @@ void odm_DIG(void *pDM_VOID)
 			if (CurrentIGI < pDM_Odm->IGI_LowerBound)
 				CurrentIGI = pDM_Odm->IGI_LowerBound;
 		}
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Adaptivity case: Force upper bound to 0x%x !!!!!!\n", Adap_IGI_Upper));
-		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Adaptivity case: Force lower bound to 0x%x !!!!!!\n\n", pDM_Odm->IGI_LowerBound));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Adaptivity case: Force upper bound to 0x%x !!!!!!\n", __func__, Adap_IGI_Upper));
+		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("%s(): Adaptivity case: Force lower bound to 0x%x !!!!!!\n\n", __func__, pDM_Odm->IGI_LowerBound));
 	}
 
 
@@ -835,7 +840,7 @@ void odm_DIGbyRSSI_LPS(void *pDM_VOID)
 		pDM_Odm,
 		ODM_COMP_DIG,
 		ODM_DBG_LOUD,
-		("odm_DIGbyRSSI_LPS() ==>\n")
+		("%s() ==>\n", __func__)
 	);
 
 	/*  Using FW PS mode to make IGI */
@@ -867,19 +872,19 @@ void odm_DIGbyRSSI_LPS(void *pDM_VOID)
 		pDM_Odm,
 		ODM_COMP_DIG,
 		ODM_DBG_LOUD,
-		("odm_DIGbyRSSI_LPS(): pFalseAlmCnt->Cnt_all = %d\n", pFalseAlmCnt->Cnt_all)
+		("%s(): pFalseAlmCnt->Cnt_all = %d\n", __func__, pFalseAlmCnt->Cnt_all)
 	);
 	ODM_RT_TRACE(
 		pDM_Odm,
 		ODM_COMP_DIG,
 		ODM_DBG_LOUD,
-		("odm_DIGbyRSSI_LPS(): pDM_Odm->RSSI_Min = %d\n", pDM_Odm->RSSI_Min)
+		("%s(): pDM_Odm->RSSI_Min = %d\n", __func__, pDM_Odm->RSSI_Min)
 	);
 	ODM_RT_TRACE(
 		pDM_Odm,
 		ODM_COMP_DIG,
 		ODM_DBG_LOUD,
-		("odm_DIGbyRSSI_LPS(): CurrentIGI = 0x%x\n", CurrentIGI)
+		("%s(): CurrentIGI = 0x%x\n", __func__, CurrentIGI)
 	);
 
 	ODM_Write_DIG(pDM_Odm, CurrentIGI);
@@ -975,7 +980,7 @@ void odm_FalseAlarmCounterStatistics(void *pDM_VOID)
 		pDM_Odm,
 		ODM_COMP_FA_CNT,
 		ODM_DBG_LOUD,
-		("Enter odm_FalseAlarmCounterStatistics\n")
+		("Enter %s\n", __func__)
 	);
 	ODM_RT_TRACE(
 		pDM_Odm,
@@ -1147,7 +1152,7 @@ void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 			pDM_Odm,
 			ODM_COMP_CCK_PD,
 			ODM_DBG_LOUD,
-			("odm_CCKPacketDetectionThresh()  return ==========\n")
+			("%s()  return ==========\n", __func__)
 		);
 		return;
 	}
@@ -1159,7 +1164,7 @@ void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 		pDM_Odm,
 		ODM_COMP_CCK_PD,
 		ODM_DBG_LOUD,
-		("odm_CCKPacketDetectionThresh()  ==========>\n")
+		("%s()  ==========>\n", __func__)
 	);
 
 	if (pDM_Odm->bLinked) {
@@ -1187,7 +1192,7 @@ void odm_CCKPacketDetectionThresh(void *pDM_VOID)
 		ODM_COMP_CCK_PD,
 		ODM_DBG_LOUD,
 		(
-			"odm_CCKPacketDetectionThresh()  CurCCK_CCAThres = 0x%x\n",
+			"%s()  CurCCK_CCAThres = 0x%x\n", __func__,
 			CurCCK_CCAThres
 		)
 	);
diff --git a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
index b7ebce7a6ff9..1152fab3ce45 100644
--- a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
+++ b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c
@@ -61,14 +61,14 @@ void odm_EdcaTurboCheck(void *pDM_VOID)
 	PDM_ODM_T		pDM_Odm = (PDM_ODM_T)pDM_VOID;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD,
-		     ("odm_EdcaTurboCheck ========================>\n"));
+		     ("%s ========================>\n", __func__));
 
 	if (!(pDM_Odm->SupportAbility & ODM_MAC_EDCA_TURBO))
 		return;
 
 	odm_EdcaTurboCheckCE(pDM_Odm);
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD,
-		     ("<========================odm_EdcaTurboCheck\n"));
+		     ("<========================%s\n", __func__));
 }	/*  odm_CheckEdcaTurbo */
 
 void odm_EdcaTurboCheckCE(void *pDM_VOID)
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index 9c190b1024d8..8932ba504764 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -437,7 +437,7 @@ HAL_STATUS ODM_ConfigRFWithHeaderFile(
 )
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
-				("===>ODM_ConfigRFWithHeaderFile (%s)\n", (pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"));
+				("===>%s (%s)\n", __func__, (pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
 				("pDM_Odm->SupportPlatform: 0x%X, pDM_Odm->SupportInterface: 0x%X, pDM_Odm->BoardType: 0x%X\n",
 				pDM_Odm->SupportPlatform, pDM_Odm->SupportInterface, pDM_Odm->BoardType));
@@ -453,7 +453,7 @@ HAL_STATUS ODM_ConfigRFWithHeaderFile(
 HAL_STATUS ODM_ConfigRFWithTxPwrTrackHeaderFile(PDM_ODM_T pDM_Odm)
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
-				 ("===>ODM_ConfigRFWithTxPwrTrackHeaderFile (%s)\n", (pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"));
+				 ("===>%s (%s)\n", __func__, (pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
 				 ("pDM_Odm->SupportPlatform: 0x%X, pDM_Odm->SupportInterface: 0x%X, pDM_Odm->BoardType: 0x%X\n",
 				 pDM_Odm->SupportPlatform, pDM_Odm->SupportInterface, pDM_Odm->BoardType));
@@ -469,7 +469,7 @@ HAL_STATUS ODM_ConfigBBWithHeaderFile(
 )
 {
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
-				("===>ODM_ConfigBBWithHeaderFile (%s)\n", (pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"));
+				("===>%s (%s)\n", __func__, (pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"));
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_INIT, ODM_DBG_LOUD,
 				("pDM_Odm->SupportPlatform: 0x%X, pDM_Odm->SupportInterface: 0x%X, pDM_Odm->BoardType: 0x%X\n",
 				pDM_Odm->SupportPlatform, pDM_Odm->SupportInterface, pDM_Odm->BoardType));
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 1effbc6aa008..3b845138efcf 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -69,7 +69,8 @@ static int _BlockWrite(struct adapter *padapter, void *buffer, u32 buffSize)
 			_module_hal_init_c_,
 			_drv_notice_,
 			(
-				"_BlockWrite: [P1] buffSize(%d) blockSize_p1(%d) blockCount_p1(%d) remainSize_p1(%d)\n",
+				"%s: [P1] buffSize(%d) blockSize_p1(%d) blockCount_p1(%d) remainSize_p1(%d)\n",
+				__func__,
 				buffSize,
 				blockSize_p1,
 				blockCount_p1,
@@ -98,7 +99,8 @@ static int _BlockWrite(struct adapter *padapter, void *buffer, u32 buffSize)
 					_module_hal_init_c_,
 					_drv_notice_,
 					(
-						"_BlockWrite: [P2] buffSize_p2(%d) blockSize_p2(%d) blockCount_p2(%d) remainSize_p2(%d)\n",
+						"%s: [P2] buffSize_p2(%d) blockSize_p2(%d) blockCount_p2(%d) remainSize_p2(%d)\n",
+						__func__,
 						(buffSize-offset),
 						blockSize_p2,
 						blockCount_p2,
@@ -116,7 +118,7 @@ static int _BlockWrite(struct adapter *padapter, void *buffer, u32 buffSize)
 		blockCount_p3 = remainSize_p2 / blockSize_p3;
 
 		RT_TRACE(_module_hal_init_c_, _drv_notice_,
-				("_BlockWrite: [P3] buffSize_p3(%d) blockSize_p3(%d) blockCount_p3(%d)\n",
+				("%s: [P3] buffSize_p3(%d) blockSize_p3(%d) blockCount_p3(%d)\n", __func__,
 				(buffSize-offset), blockSize_p3, blockCount_p3));
 
 		for (i = 0; i < blockCount_p3; i++) {
@@ -181,7 +183,7 @@ static int _WriteFW(struct adapter *padapter, void *buffer, u32 size)
 			goto exit;
 		}
 	}
-	RT_TRACE(_module_hal_init_c_, _drv_info_, ("_WriteFW Done- for Normal chip.\n"));
+	RT_TRACE(_module_hal_init_c_, _drv_info_, ("%s Done- for Normal chip.\n", __func__));
 
 exit:
 	return ret;
@@ -512,7 +514,7 @@ s32 rtl8723b_FirmwareDownload(struct adapter *padapter, bool  bUsedWoWLANFw)
 	kfree(pFirmware);
 release_fw1:
 	kfree(pBTFirmware);
-	DBG_871X(" <=== rtl8723b_FirmwareDownload()\n");
+	DBG_871X(" <=== %s()\n", __func__);
 	return rtStatus;
 }
 
@@ -554,10 +556,10 @@ void SetFwRelatedForWoWLAN8723b(
 	/*  */
 	status = rtl8723b_FirmwareDownload(padapter, bHostIsGoingtoSleep);
 	if (status != _SUCCESS) {
-		DBG_871X("SetFwRelatedForWoWLAN8723b(): Re-Download Firmware failed!!\n");
+		DBG_871X("%s(): Re-Download Firmware failed!!\n", __func__);
 		return;
 	} else {
-		DBG_871X("SetFwRelatedForWoWLAN8723b(): Re-Download Firmware Success !!\n");
+		DBG_871X("%s(): Re-Download Firmware Success !!\n", __func__);
 	}
 	/*  */
 	/*  2. Re-Init the variables about Fw related setting. */
@@ -1991,7 +1993,7 @@ static void ResumeTxBeacon(struct adapter *padapter)
 	/*  2010.03.01. Marked by tynli. No need to call workitem beacause we record the value */
 	/*  which should be read from register to a global variable. */
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("+ResumeTxBeacon\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("+%s\n", __func__));
 
 	pHalData->RegFwHwTxQCtrl |= BIT(6);
 	rtw_write8(padapter, REG_FWHW_TXQ_CTRL+2, pHalData->RegFwHwTxQCtrl);
@@ -2008,7 +2010,7 @@ static void StopTxBeacon(struct adapter *padapter)
 	/*  2010.03.01. Marked by tynli. No need to call workitem beacause we record the value */
 	/*  which should be read from register to a global variable. */
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("+StopTxBeacon\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("+%s\n", __func__));
 
 	pHalData->RegFwHwTxQCtrl &= ~BIT(6);
 	rtw_write8(padapter, REG_FWHW_TXQ_CTRL+2, pHalData->RegFwHwTxQCtrl);
@@ -2362,7 +2364,7 @@ static bool Hal_GetChnlGroup8723B(u8 Channel, u8 *pGroup)
 		else if (Channel >= 12 && Channel <= 14)
 			*pGroup = 4;
 		else
-			RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("==>Hal_GetChnlGroup8723B in 2.4 G, but Channel %d in Group not found\n", Channel));
+			RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("==>%s in 2.4 G, but Channel %d in Group not found\n", __func__, Channel));
 	} else {
 		bIn24G = false;
 
@@ -2395,14 +2397,15 @@ static bool Hal_GetChnlGroup8723B(u8 Channel, u8 *pGroup)
 		else if (Channel >= 173 && Channel <= 177)
 			*pGroup = 13;
 		else
-			RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("==>Hal_GetChnlGroup8723B in 5G, but Channel %d in Group not found\n", Channel));
+			RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("==>%s in 5G, but Channel %d in Group not found\n", __func__, Channel));
 
 	}
 	RT_TRACE(
 		_module_hci_hal_init_c_,
 		_drv_info_,
 		(
-			"<==Hal_GetChnlGroup8723B,  (%s) Channel = %d, Group =%d,\n",
+			"<==%s,  (%s) Channel = %d, Group =%d,\n",
+			__func__,
 			bIn24G ? "2.4G" : "5G",
 			Channel,
 			*pGroup
@@ -3657,7 +3660,7 @@ s32 c2h_handler_8723b(struct adapter *padapter, u8 *buf)
 		break;
 	case C2H_DBG:
 		{
-			RT_TRACE(_module_hal_init_c_, _drv_info_, ("c2h_handler_8723b: %s\n", pC2hEvent->payload));
+			RT_TRACE(_module_hal_init_c_, _drv_info_, ("%s: %s\n", __func__, pC2hEvent->payload));
 		}
 		break;
 
@@ -3751,7 +3754,7 @@ void C2HPacketHandler_8723B(struct adapter *padapter, u8 *pbuffer, u16 length)
 
 	/* DBG_871X("%s C2hEvent.CmdID:%x C2hEvent.CmdLen:%x C2hEvent.CmdSeq:%x\n", */
 	/*		__func__, C2hEvent.CmdID, C2hEvent.CmdLen, C2hEvent.CmdSeq); */
-	RT_PRINT_DATA(_module_hal_init_c_, _drv_notice_, "C2HPacketHandler_8723B(): Command Content:\n", tmpBuf, C2hEvent.CmdLen);
+	RT_PRINT_DATA(_module_hal_init_c_, _drv_notice_, "%s(): Command Content:\n", __func__, tmpBuf, C2hEvent.CmdLen);
 
 	process_c2h_event(padapter, &C2hEvent, tmpBuf);
 	/* c2h_handler_8723b(padapter,&C2hEvent); */
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index a72ed64e5d99..db41a5e8d847 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -659,11 +659,11 @@ void PHY_SetTxPowerLevel8723B(struct adapter *Adapter, u8 Channel)
 		RFPath = pHalData->ant_path;
 	}
 
-	RT_TRACE(_module_hal_init_c_, _drv_info_, ("==>PHY_SetTxPowerLevel8723B()\n"));
+	RT_TRACE(_module_hal_init_c_, _drv_info_, ("==>%s()\n", __func__));
 
 	PHY_SetTxPowerLevelByPath(Adapter, Channel, RFPath);
 
-	RT_TRACE(_module_hal_init_c_, _drv_info_, ("<==PHY_SetTxPowerLevel8723B()\n"));
+	RT_TRACE(_module_hal_init_c_, _drv_info_, ("<==%s()\n", __func__));
 }
 
 void PHY_GetTxPowerLevel8723B(struct adapter *Adapter, s32 *powerlevel)
@@ -834,7 +834,7 @@ static void phy_SwChnl8723B(struct adapter *padapter)
 	PHY_SetRFReg(padapter, ODM_RF_PATH_A, RF_CHNLBW, 0x3FF, pHalData->RfRegChnlVal[0]);
 	PHY_SetRFReg(padapter, ODM_RF_PATH_B, RF_CHNLBW, 0x3FF, pHalData->RfRegChnlVal[0]);
 
-	DBG_8192C("===>phy_SwChnl8723B: Channel = %d\n", channelToSW);
+	DBG_8192C("===>%s: Channel = %d\n", __func__, channelToSW);
 }
 
 static void phy_SwChnlAndSetBwMode8723B(struct adapter *Adapter)
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 36a80533444e..6b07bd104a91 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -572,7 +572,7 @@ s32 rtl8723bs_hal_xmit(
 	err = rtw_xmitframe_enqueue(padapter, pxmitframe);
 	spin_unlock_bh(&pxmitpriv->lock);
 	if (err != _SUCCESS) {
-		RT_TRACE(_module_hal_xmit_c_, _drv_err_, ("rtl8723bs_hal_xmit: enqueue xmitframe fail\n"));
+		RT_TRACE(_module_hal_xmit_c_, _drv_err_, ("%s: enqueue xmitframe fail\n", __func__));
 		rtw_free_xmitframe(pxmitpriv, pxmitframe);
 
 		pxmitpriv->tx_drop++;
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 4a7a0ade29d2..0e7d8865e229 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -686,7 +686,7 @@ static bool HalDetectPwrDownMode(struct adapter *Adapter)
 	else
 		pHalData->pwrdown = false;
 
-	DBG_8192C("HalDetectPwrDownMode(): PDN =%d\n", pHalData->pwrdown);
+	DBG_8192C("%s(): PDN =%d\n", __func__, pHalData->pwrdown);
 
 	return pHalData->pwrdown;
 }	/*  HalDetectPwrDownMode */
@@ -792,7 +792,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 		pHalData->fw_ractrl = false;
 		return ret;
 	} else {
-		RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("rtl8723bs_hal_init(): Download Firmware Success!!\n"));
+		RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("%s(): Download Firmware Success!!\n", __func__));
 		padapter->bFWReady = true;
 		pHalData->fw_ractrl = true;
 	}
@@ -1127,9 +1127,9 @@ static u32 rtl8723bs_inirp_init(struct adapter *padapter)
 
 static u32 rtl8723bs_inirp_deinit(struct adapter *padapter)
 {
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("+rtl8723bs_inirp_deinit\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("+%s\n", __func__));
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("-rtl8723bs_inirp_deinit\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("-%s\n", __func__));
 
 	return _SUCCESS;
 }
@@ -1233,7 +1233,7 @@ static void Hal_EfuseParseMACAddr_8723BS(
 		_module_hci_hal_init_c_,
 		_drv_notice_,
 		(
-			"Hal_EfuseParseMACAddr_8723BS: Permanent Address = %02x-%02x-%02x-%02x-%02x-%02x\n",
+			"%s: Permanent Address = %02x-%02x-%02x-%02x-%02x-%02x\n", __func__,
 			pEEPROM->mac_addr[0],
 			pEEPROM->mac_addr[1],
 			pEEPROM->mac_addr[2],
@@ -1264,7 +1264,7 @@ static void _ReadEfuseInfo8723BS(struct adapter *padapter)
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
 	u8 *hwinfo = NULL;
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("====>_ReadEfuseInfo8723BS()\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("====>%s()\n", __func__));
 
 	/*  */
 	/*  This part read and parse the eeprom/efuse content */
@@ -1304,7 +1304,7 @@ static void _ReadEfuseInfo8723BS(struct adapter *padapter)
 
 	Hal_ReadRFGainOffset(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("<==== _ReadEfuseInfo8723BS()\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("<==== %s()\n", __func__));
 }
 
 static void _ReadPROMContent(struct adapter *padapter)
@@ -1345,7 +1345,7 @@ static s32 _ReadAdapterInfo8723BS(struct adapter *padapter)
 	u8 val8;
 	unsigned long start;
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("+_ReadAdapterInfo8723BS\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("+%s\n", __func__));
 
 	/*  before access eFuse, make sure card enable has been called */
 	if (!padapter->hw_init_completed)
@@ -1371,7 +1371,7 @@ static s32 _ReadAdapterInfo8723BS(struct adapter *padapter)
 	}
 
 
-	MSG_8192C("<==== _ReadAdapterInfo8723BS in %d ms\n", jiffies_to_msecs(jiffies - start));
+	MSG_8192C("<==== %s in %d ms\n", __func__, jiffies_to_msecs(jiffies - start));
 
 	return _SUCCESS;
 }
-- 
2.25.1



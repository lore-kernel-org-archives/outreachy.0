X-GM-THRID: 6806184818941886464
X-Received: by 2002:ac2:4110:: with SMTP id b16mr5946602lfi.211.1585233046156;
        Thu, 26 Mar 2020 07:30:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:89c8:: with SMTP id c8ls187488ljk.7.gmail; Thu, 26 Mar
 2020 07:30:44 -0700 (PDT)
X-Google-Smtp-Source: APiQypKHtPnBcWzNKO46gbMakVSP0jYkYSMKZTsIm5leF8wz0NGA2mpDoLwQ2AG+uZU0lf2LMuRJ
X-Received: by 2002:a2e:9ed6:: with SMTP id h22mr5693797ljk.211.1585233044760;
        Thu, 26 Mar 2020 07:30:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585233044; cv=none;
        d=google.com; s=arc-20160816;
        b=pEf97ssYMrYbQ8XF5azIXloYuL+uhbvWTJUIUbPp/ojjOwdWhOLVHjb9CTbQCGsA0v
         qr9lA/BOjnneBKl+/CpnIrEGskVXnIAqeCcZnEhvlcRiXmHVj7UjIApFsq0/nh1MoMki
         BZS5DnliFp5+Ukc4RXBziCapE85oTVNPpTM+gmwEe96784mmCkn/wH78sChDWHS9EYAN
         u2LYtAHKl96ns1Ktc8o/cjSO52nvMl0MIjhCfnBSJxzmhHIJkuEbCGdOoIb9G43Rq5Fn
         vt9e8natFvUrhP34+Wb6u9DtsaNUCYysnAYZbrYVvMkdzBTMFoJWYYOwJmrFF4RXnm9c
         LcYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=NJqs2uMWTLIeO9ys03Hhi3Brv0dgM0wZHCsou10mPsg=;
        b=D39nrekOHa1KQAE1tdG2z9utlb0qvm7y9n4Tq9kaRd+mKK9v+KFDqLDwm4fpK7CDei
         Jun9nVkVOnzDlVGaZH+hBGt2RIdf/udfbOBCdZ5DJ3oSEADuzLPEoQrbY5SwoBQBLmyC
         EF4DVv4be9EEjYPqA63NQPQjB6ztvPAWle9lYy3Z7+w5cEi9wvggcG4IzBzUpAgQqZKR
         wzAC6K5jff2OUJoaJ7WwvXXo5/kt1eliaslmgA84ApU+xgpnveKnf2LctmtGA0ReHitj
         Rc60+Sq661TKKQO/afhTrsDXVPU34ylSy0i5zSjPFL+bzUN1z08QTIJ96pCRgytNvXZh
         Kxmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id s17si168250ljm.5.2020.03.26.07.30.44
        for <outreachy-kernel@googlegroups.com>;
        Thu, 26 Mar 2020 07:30:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 23930 invoked from network); 26 Mar 2020 14:30:37 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.131.241)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 26 Mar 2020 14:30:37 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: hal: Correct typos in comments
Date: Thu, 26 Mar 2020 20:00:23 +0530
Message-Id: <20200326143023.13681-1-vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typos in comments.
Misspellings found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c | 2 +-
 drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c | 2 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf.c        | 4 ++--
 drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c    | 2 +-
 drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 4 ++--
 drivers/staging/rtl8723bs/hal/odm_debug.h       | 4 ++--
 drivers/staging/rtl8723bs/hal/odm_types.h       | 2 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c  | 2 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c    | 2 +-
 10 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
index dd349c506da8..c60e8c58d9cc 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
@@ -1807,7 +1807,7 @@ static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
 		result = 0;
 		WaitCount = 0;
 	} else {
-		/* accquire the BT TRx retry count from BT_Info byte2 */
+		/* acquire the BT TRx retry count from BT_Info byte2 */
 		retryCount = pCoexSta->btRetryCnt;
 		btInfoExt = pCoexSta->btInfoExt;
 		/* BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], retryCount = %d\n", retryCount)); */
diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index 8dfa9b988e20..2779dba92bab 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
@@ -1646,7 +1646,7 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
 		result = 0;
 		WaitCount = 0;
 	} else {
-		/* accquire the BT TRx retry count from BT_Info byte2 */
+		/* acquire the BT TRx retry count from BT_Info byte2 */
 		retryCount = pCoexSta->btRetryCnt;
 		BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], retryCount = %d\n", retryCount));
 		BTC_PRINT(
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf.c b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
index 357802db9aed..7b435840746d 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf.c
@@ -92,7 +92,7 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 	u8 *deltaSwingTableIdx_TUP_B;
 	u8 *deltaSwingTableIdx_TDOWN_B;
 
-	/* 4 2. Initilization (7 steps in total) */
+	/* 4 2. Initialization (7 steps in total) */
 
 	ConfigureTxpowerTrack(pDM_Odm, &c);
 
@@ -213,7 +213,7 @@ void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
 
 	/* 3 7. If necessary, move the index of swing table to adjust Tx power. */
 	if (delta > 0 && pDM_Odm->RFCalibrateInfo.TxPowerTrackControl) {
-		/* delta" here is used to record the absolute value of differrence. */
+		/* delta" here is used to record the absolute value of difference. */
 		delta =
 			ThermalValue > pHalData->EEPROMThermalMeter ?
 			(ThermalValue - pHalData->EEPROMThermalMeter) :
diff --git a/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c b/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
index c24156873fed..3b34a516075f 100644
--- a/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
+++ b/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
@@ -118,7 +118,7 @@ u8 HalPwrSeqCmdParsing(
 						&GET_PWR_CFG_MASK(PwrCfgCmd)
 					);
 
-					/*  Write the value back to sytem register */
+					/*  Write the value back to system register */
 					rtw_write8(padapter, offset, value);
 				}
 				break;
diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index 7d8f21f32fb9..23df729acb7b 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -365,7 +365,7 @@ void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
 {
 	if (adapter_to_pwrctl(padapter)->bFwCurrentInPSMode == true) {
 		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
-			padapter->HalFunc.hal_dm_watchdog_in_lps(padapter); /* this fuction caller is in interrupt context */
+			padapter->HalFunc.hal_dm_watchdog_in_lps(padapter); /* this function caller is in interrupt context */
 	}
 }
 
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index 9950934c3ab3..9c190b1024d8 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -103,7 +103,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 		pDM_Odm->PhyDbgInfo.NumQryPhyStatusCCK++;
 		/*  */
 		/*  (1)Hardware does not provide RSSI for CCK */
-		/*  (2)PWDB, Average PWDB cacluated by hardware (for rate adaptive) */
+		/*  (2)PWDB, Average PWDB calculated by hardware (for rate adaptive) */
 		/*  */
 
 		cck_agc_rpt = pPhyStaRpt->cck_agc_rpt_ofdm_cfosho_a;
@@ -178,7 +178,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 
 
 		/*  */
-		/*  (2)PWDB, Average PWDB cacluated by hardware (for rate adaptive) */
+		/*  (2)PWDB, Average PWDB calculated by hardware (for rate adaptive) */
 		/*  */
 		rx_pwr_all = (((pPhyStaRpt->cck_sig_qual_ofdm_pwdb_all) >> 1)&0x7f)-110;
 
diff --git a/drivers/staging/rtl8723bs/hal/odm_debug.h b/drivers/staging/rtl8723bs/hal/odm_debug.h
index 3e58cb806c8c..a7381173d1a3 100644
--- a/drivers/staging/rtl8723bs/hal/odm_debug.h
+++ b/drivers/staging/rtl8723bs/hal/odm_debug.h
@@ -13,7 +13,7 @@
 /* Define the debug levels */
 /*  */
 /* 1.	DBG_TRACE and DBG_LOUD are used for normal cases. */
-/* So that, they can help SW engineer to develope or trace states changed */
+/* So that, they can help SW engineer to developed or trace states changed */
 /* and also help HW enginner to trace every operation to and from HW, */
 /* e.g IO, Tx, Rx. */
 /*  */
@@ -34,7 +34,7 @@
 #define ODM_DBG_SERIOUS				2
 
 /*  */
-/* Abnormal, rare, or unexpeted cases. */
+/* Abnormal, rare, or unexpected cases. */
 /* For example, */
 /* IRP/Packet/OID canceled, */
 /* device suprisely unremoved and so on. */
diff --git a/drivers/staging/rtl8723bs/hal/odm_types.h b/drivers/staging/rtl8723bs/hal/odm_types.h
index 28f42c9c3dd7..c79fc1813c3f 100644
--- a/drivers/staging/rtl8723bs/hal/odm_types.h
+++ b/drivers/staging/rtl8723bs/hal/odm_types.h
@@ -28,7 +28,7 @@ typedef enum _HAL_STATUS {
 
 
 /*  */
-/*  Declare for ODM spin lock defintion temporarily fro compile pass. */
+/*  Declare for ODM spin lock definition temporarily from compile pass. */
 /*  */
 typedef enum _RT_SPINLOCK_TYPE {
 	RT_TX_SPINLOCK = 1,
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 1e8b61443408..2b375e75be50 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -192,7 +192,7 @@ static inline union recv_frame *try_alloc_recvframe(struct recv_priv *precvpriv,
 		rtw_enqueue_recvbuf_to_head(precvbuf,
 					    &precvpriv->recv_buf_pending_queue);
 
-		/*  The case of can't allocte recvframe should be temporary, */
+		/*  The case of can't allocate recvframe should be temporary, */
 		/*  schedule again and hope recvframe is available next time. */
 		tasklet_schedule(&precvpriv->recv_tasklet);
 	}
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 4894f7d9a1d4..7853af53051d 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -235,7 +235,7 @@ static void _InitQueueReservedPage(struct adapter *padapter)
 	if (pHalData->OutEpQueueSel & TX_SELE_LQ)
 		numLQ = bWiFiConfig ? WMM_NORMAL_PAGE_NUM_LPQ_8723B : NORMAL_PAGE_NUM_LPQ_8723B;
 
-	/*  NOTE: This step shall be proceed before writting REG_RQPN. */
+	/*  NOTE: This step shall be proceed before writing REG_RQPN. */
 	if (pHalData->OutEpQueueSel & TX_SELE_NQ)
 		numNQ = bWiFiConfig ? WMM_NORMAL_PAGE_NUM_NPQ_8723B : NORMAL_PAGE_NUM_NPQ_8723B;
 
-- 
2.20.1



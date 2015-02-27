X-GM-THRID: 4953939640320
X-Received: by 10.112.146.65 with SMTP id ta1mr2406874lbb.19.1425078882627;
        Fri, 27 Feb 2015 15:14:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.70 with SMTP id p6ls213245wia.42.canary; Fri, 27 Feb
 2015 15:14:42 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr2410750wjb.6.1425078882260;
        Fri, 27 Feb 2015 15:14:42 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id cl5si206424wib.3.2015.02.27.15.14.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 15:14:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id b13so23223989wgh.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 15:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7Qu/eDJOXSmJ2HK24eexktZUuHwJXiokdKa3VUGE7pM=;
        b=Deph7eysYdTPMTyGW4GJO+aYykFwoy7fY3Mdb5km0CIIgu959DyNeJVww1t5UP9R7a
         eBF0l9hYr0wXYdj68Zqz4yEj21qCDHGSy6x0pCixV/DahSrXzhItPt7hJx3pDuo1IrF3
         S8DT6/4ghaINmRMk8NX4egtMntWTCPi8L+YzyPyF82kQSzTYh4WEPZ3k9WTrG9Dnz0Q0
         QymYFBKrXi1rm2d7vT9ImmKBfM0AcABFE6rTXU40xBEUUYI40GGdOK68d7ynF/Ucuced
         LgHsHHuEzN9J6zmEBZlC7rFrZmlC/8hTiAi87g52A8qkh6ZS5if3nAXgWwiK8rwd/iaA
         jnxg==
X-Received: by 10.194.121.136 with SMTP id lk8mr31415992wjb.49.1425078882188;
        Fri, 27 Feb 2015 15:14:42 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id w3sm1912744wia.20.2015.02.27.15.14.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 15:14:41 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 1/2] Staging: rtl8192u: Replace TRUE and FALSE macros
Date: Sat, 28 Feb 2015 00:14:34 +0100
Message-Id: <36fc2a048f9c28c75ff8483cb6f05457b343d3b4.1425078766.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425078766.git.ksenija.stanojevic@gmail.com>
References: <cover.1425078766.git.ksenija.stanojevic@gmail.com>

Replace all occurrences of TRUE and FALSE by true and false
respectively.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: merge 4 patches into one.

 drivers/staging/rtl8192u/r8192U_core.c     | 22 +++++++-------
 drivers/staging/rtl8192u/r8192U_dm.c       | 46 +++++++++++++++---------------
 drivers/staging/rtl8192u/r819xU_firmware.c | 12 ++++----
 drivers/staging/rtl8192u/r819xU_phy.c      |  4 +--
 4 files changed, 42 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 8d27140..9de4412 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -2767,7 +2767,7 @@ static bool rtl8192_adapter_start(struct net_device *dev)
 	//
 #ifdef TO_DO_LIST
 	if (Adapter->ResetProgress == RESET_TYPE_NORESET) {
-		if (pMgntInfo->RegRfOff == TRUE) { /* User disable RF via registry. */
+		if (pMgntInfo->RegRfOff == true) { /* User disable RF via registry. */
 			RT_TRACE((COMP_INIT|COMP_RF), DBG_LOUD, ("InitializeAdapter819xUsb(): Turn off RF for RegRfOff ----------\n"));
 			MgntActSet_RF_State(Adapter, eRfOff, RF_CHANGE_BY_SW);
 			// Those actions will be discard in MgntActSet_RF_State because of the same state
@@ -2814,15 +2814,15 @@ static bool rtl8192_adapter_start(struct net_device *dev)
 		u8 tmpvalue;
 		read_nic_byte(dev, 0x301, &tmpvalue);
 		if (tmpvalue == 0x03) {
-			priv->bDcut = TRUE;
+			priv->bDcut = true;
 			RT_TRACE(COMP_POWER_TRACKING, "D-cut\n");
 		} else {
-			priv->bDcut = FALSE;
+			priv->bDcut = false;
 			RT_TRACE(COMP_POWER_TRACKING, "C-cut\n");
 		}
 		dm_initialize_txpower_tracking(dev);
 
-		if (priv->bDcut == TRUE) {
+		if (priv->bDcut == true) {
 			u32 i, TempCCk;
 			u32 tmpRegA = rtl8192_QueryBBReg(dev, rOFDM0_XATxIQImbalance, bMaskDWord);
 			for (i = 0; i < TxBBGainTableLength; i++) {
@@ -2874,11 +2874,11 @@ static bool HalTxCheckStuck819xUsb(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	u16		RegTxCounter;
-	bool		bStuck = FALSE;
+	bool		bStuck = false;
 	read_nic_word(dev, 0x128, &RegTxCounter);
 	RT_TRACE(COMP_RESET, "%s():RegTxCounter is %d,TxCounter is %d\n", __func__, RegTxCounter, priv->TxCounter);
 	if (priv->TxCounter == RegTxCounter)
-		bStuck = TRUE;
+		bStuck = true;
 
 	priv->TxCounter = RegTxCounter;
 
@@ -2920,7 +2920,7 @@ static bool HalRxCheckStuck819xUsb(struct net_device *dev)
 {
 	u16	RegRxCounter;
 	struct r8192_priv *priv = ieee80211_priv(dev);
-	bool bStuck = FALSE;
+	bool bStuck = false;
 	static u8	rx_chk_cnt;
 	read_nic_word(dev, 0x130, &RegRxCounter);
 	RT_TRACE(COMP_RESET, "%s(): RegRxCounter is %d,RxCounter is %d\n", __func__, RegRxCounter, priv->RxCounter);
@@ -2951,7 +2951,7 @@ static bool HalRxCheckStuck819xUsb(struct net_device *dev)
 	}
 
 	if (priv->RxCounter == RegRxCounter)
-		bStuck = TRUE;
+		bStuck = true;
 
 	priv->RxCounter = RegRxCounter;
 
@@ -2961,10 +2961,10 @@ static bool HalRxCheckStuck819xUsb(struct net_device *dev)
 static RESET_TYPE RxCheckStuck(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
-	bool        bRxCheck = FALSE;
+	bool        bRxCheck = false;
 
 	if (priv->IrpPendingCount > 1)
-		bRxCheck = TRUE;
+		bRxCheck = true;
 
 	if (bRxCheck) {
 		if (HalRxCheckStuck819xUsb(dev)) {
@@ -4208,7 +4208,7 @@ static void TranslateRxSignalStuff819xUsb(struct sk_buff *skb,
 	struct net_device *dev = info->dev;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	bool bpacket_match_bssid, bpacket_toself;
-	bool bPacketBeacon = FALSE, bToSelfBA = FALSE;
+	bool bPacketBeacon = false, bToSelfBA = false;
 	static struct ieee80211_rx_stats  previous_stats;
 	struct ieee80211_hdr_3addr *hdr;//by amy
 	u16 fc, type;
diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index ee6b936..7199616 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -502,7 +502,7 @@ static u8	CCKSwingTable_Ch14[CCK_Table_length][8] = {
 static void dm_TXPowerTrackingCallback_TSSI(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
-	bool						bHighpowerstate, viviflag = FALSE;
+	bool						bHighpowerstate, viviflag = false;
 	DCMD_TXCMD_T			tx_cmd;
 	u8						powerlevelOFDM24G;
 	int						i = 0, j = 0, k = 0;
@@ -558,13 +558,13 @@ static void dm_TXPowerTrackingCallback_TSSI(struct net_device *dev)
 			/* check if the report value is right */
 			for (k = 0; k < 5; k++) {
 				if (tmp_report[k] <= 20) {
-					viviflag = TRUE;
+					viviflag = true;
 					break;
 				}
 			}
-			if (viviflag == TRUE) {
+			if (viviflag == true) {
 				write_nic_byte(dev, 0x1ba, 0);
-				viviflag = FALSE;
+				viviflag = false;
 				RT_TRACE(COMP_POWER_TRACKING, "we filtered the data\n");
 				for (k = 0; k < 5; k++)
 					tmp_report[k] = 0;
@@ -587,7 +587,7 @@ static void dm_TXPowerTrackingCallback_TSSI(struct net_device *dev)
 				delta = TSSI_13dBm - Avg_TSSI_Meas_from_driver;
 
 			if (delta <= E_FOR_TX_POWER_TRACK) {
-				priv->ieee80211->bdynamic_txpower_enable = TRUE;
+				priv->ieee80211->bdynamic_txpower_enable = true;
 				write_nic_byte(dev, 0x1ba, 0);
 				RT_TRACE(COMP_POWER_TRACKING, "tx power track is done\n");
 				RT_TRACE(COMP_POWER_TRACKING, "priv->rfa_txpowertrackingindex = %d\n", priv->rfa_txpowertrackingindex);
@@ -624,10 +624,10 @@ static void dm_TXPowerTrackingCallback_TSSI(struct net_device *dev)
 
 			if (priv->cck_present_attentuation > -1 && priv->cck_present_attentuation < 23) {
 				if (priv->ieee80211->current_network.channel == 14 && !priv->bcck_in_ch14) {
-					priv->bcck_in_ch14 = TRUE;
+					priv->bcck_in_ch14 = true;
 					dm_cck_txpower_adjust(dev, priv->bcck_in_ch14);
 				} else if (priv->ieee80211->current_network.channel != 14 && priv->bcck_in_ch14) {
-					priv->bcck_in_ch14 = FALSE;
+					priv->bcck_in_ch14 = false;
 					dm_cck_txpower_adjust(dev, priv->bcck_in_ch14);
 				} else
 					dm_cck_txpower_adjust(dev, priv->bcck_in_ch14);
@@ -638,7 +638,7 @@ static void dm_TXPowerTrackingCallback_TSSI(struct net_device *dev)
 			RT_TRACE(COMP_POWER_TRACKING, "priv->cck_present_attentuation = %d\n", priv->cck_present_attentuation);
 
 			if (priv->cck_present_attentuation_difference <= -12 || priv->cck_present_attentuation_difference >= 24) {
-				priv->ieee80211->bdynamic_txpower_enable = TRUE;
+				priv->ieee80211->bdynamic_txpower_enable = true;
 				write_nic_byte(dev, 0x1ba, 0);
 				RT_TRACE(COMP_POWER_TRACKING, "tx power track--->limited\n");
 				return;
@@ -651,7 +651,7 @@ static void dm_TXPowerTrackingCallback_TSSI(struct net_device *dev)
 			break;
 		}
 	}
-	priv->ieee80211->bdynamic_txpower_enable = TRUE;
+	priv->ieee80211->bdynamic_txpower_enable = true;
 	write_nic_byte(dev, 0x1ba, 0);
 }
 
@@ -684,7 +684,7 @@ static void dm_TXPowerTrackingCallback_ThermalMeter(struct net_device *dev)
 				break;
 			}
 		}
-		priv->btxpower_trackingInit = TRUE;
+		priv->btxpower_trackingInit = true;
 		/*pHalData->TXPowercount = 0;*/
 		return;
 	}
@@ -734,10 +734,10 @@ static void dm_TXPowerTrackingCallback_ThermalMeter(struct net_device *dev)
 		tmpCCKindex = tmpCCK20Mindex;
 
 	if (priv->ieee80211->current_network.channel == 14 && !priv->bcck_in_ch14) {
-		priv->bcck_in_ch14 = TRUE;
+		priv->bcck_in_ch14 = true;
 		CCKSwingNeedUpdate = 1;
 	} else if (priv->ieee80211->current_network.channel != 14 && priv->bcck_in_ch14) {
-		priv->bcck_in_ch14 = FALSE;
+		priv->bcck_in_ch14 = false;
 		CCKSwingNeedUpdate = 1;
 	}
 
@@ -765,7 +765,7 @@ void dm_txpower_trackingcallback(struct work_struct *work)
 	struct r8192_priv *priv = container_of(dwork, struct r8192_priv, txpower_tracking_wq);
 	struct net_device *dev = priv->ieee80211->dev;
 
-	if (priv->bDcut == TRUE)
+	if (priv->bDcut == true)
 		dm_TXPowerTrackingCallback_TSSI(dev);
 	else
 		dm_TXPowerTrackingCallback_ThermalMeter(dev);
@@ -1273,9 +1273,9 @@ static void dm_InitializeTXPowerTracking_TSSI(struct net_device *dev)
 	priv->cck_txbbgain_ch14_table[22].ccktxbb_valuearray[6] = 0x00;
 	priv->cck_txbbgain_ch14_table[22].ccktxbb_valuearray[7] = 0x00;
 
-	priv->btxpower_tracking = TRUE;
+	priv->btxpower_tracking = true;
 	priv->txpower_count       = 0;
-	priv->btxpower_trackingInit = FALSE;
+	priv->btxpower_trackingInit = false;
 
 }
 
@@ -1289,18 +1289,18 @@ static void dm_InitializeTXPowerTracking_ThermalMeter(struct net_device *dev)
 	 * 3-wire by driver causes RF to go into a wrong state.
 	 */
 	if (priv->ieee80211->FwRWRF)
-		priv->btxpower_tracking = TRUE;
+		priv->btxpower_tracking = true;
 	else
-		priv->btxpower_tracking = FALSE;
+		priv->btxpower_tracking = false;
 	priv->txpower_count       = 0;
-	priv->btxpower_trackingInit = FALSE;
+	priv->btxpower_trackingInit = false;
 }
 
 void dm_initialize_txpower_tracking(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
-	if (priv->bDcut == TRUE)
+	if (priv->bDcut == true)
 		dm_InitializeTXPowerTracking_TSSI(dev);
 	else
 		dm_InitializeTXPowerTracking_ThermalMeter(dev);
@@ -1356,7 +1356,7 @@ static void dm_check_txpower_tracking(struct net_device *dev)
 #ifdef RTL8190P
 	dm_CheckTXPowerTracking_TSSI(dev);
 #else
-	if (priv->bDcut == TRUE)
+	if (priv->bDcut == true)
 		dm_CheckTXPowerTracking_TSSI(dev);
 	else
 		dm_CheckTXPowerTracking_ThermalMeter(dev);
@@ -1466,7 +1466,7 @@ void dm_cck_txpower_adjust(struct net_device *dev, bool binch14)
 {	/*  dm_CCKTxPowerAdjust */
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
-	if (priv->bDcut == TRUE)
+	if (priv->bDcut == true)
 		dm_CCKTxPowerAdjust_TSSI(dev, binch14);
 	else
 		dm_CCKTxPowerAdjust_ThermalMeter(dev, binch14);
@@ -2314,7 +2314,7 @@ static void dm_init_ctstoself(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
 
-	priv->ieee80211->bCTSToSelfEnable = TRUE;
+	priv->ieee80211->bCTSToSelfEnable = true;
 	priv->ieee80211->CTSToSelfTH = CTSToSelfTHVal;
 }
 
@@ -2327,7 +2327,7 @@ static void dm_ctstoself(struct net_device *dev)
 	unsigned long						curTxOkCnt = 0;
 	unsigned long						curRxOkCnt = 0;
 
-	if (priv->ieee80211->bCTSToSelfEnable != TRUE) {
+	if (priv->ieee80211->bCTSToSelfEnable != true) {
 		pHTInfo->IOTAction &= ~HT_IOT_ACT_FORCED_CTS2SELF;
 		return;
 	}
diff --git a/drivers/staging/rtl8192u/r819xU_firmware.c b/drivers/staging/rtl8192u/r819xU_firmware.c
index c230be2..1a3a09f 100644
--- a/drivers/staging/rtl8192u/r819xU_firmware.c
+++ b/drivers/staging/rtl8192u/r819xU_firmware.c
@@ -164,7 +164,7 @@ static bool CPUcheck_maincodeok_turnonCPU(struct net_device *dev)
 
 CPUCheckMainCodeOKAndTurnOnCPU_Fail:
 	RT_TRACE(COMP_ERR, "ERR in %s()\n", __func__);
-	rt_status = FALSE;
+	rt_status = false;
 	return rt_status;
 }
 
@@ -201,7 +201,7 @@ CPUCheckFirmwareReady_Fail:
 bool init_firmware(struct net_device *dev)
 {
 	struct r8192_priv	*priv = ieee80211_priv(dev);
-	bool			rt_status = TRUE;
+	bool			rt_status = true;
 
 	u32			file_length = 0;
 	u8			*mapped_file = NULL;
@@ -281,7 +281,7 @@ bool init_firmware(struct net_device *dev)
 		if (rst_opt == OPT_SYSTEM_RESET)
 			release_firmware(fw_entry);
 
-		if (rt_status != TRUE)
+		if (rt_status != true)
 			goto download_firmware_fail;
 
 		switch (init_step) {
@@ -304,7 +304,7 @@ bool init_firmware(struct net_device *dev)
 
 			/* Check Put Code OK and Turn On CPU */
 			rt_status = CPUcheck_maincodeok_turnonCPU(dev);
-			if (rt_status != TRUE) {
+			if (rt_status != true) {
 				RT_TRACE(COMP_ERR, "CPUcheck_maincodeok_turnonCPU fail!\n");
 				goto download_firmware_fail;
 			}
@@ -318,7 +318,7 @@ bool init_firmware(struct net_device *dev)
 			mdelay(1);
 
 			rt_status = CPUcheck_firmware_ready(dev);
-			if (rt_status != TRUE) {
+			if (rt_status != true) {
 				RT_TRACE(COMP_ERR, "CPUcheck_firmware_ready fail(%d)!\n",rt_status);
 				goto download_firmware_fail;
 			}
@@ -336,7 +336,7 @@ bool init_firmware(struct net_device *dev)
 
 download_firmware_fail:
 	RT_TRACE(COMP_ERR, "ERR in %s()\n", __func__);
-	rt_status = FALSE;
+	rt_status = false;
 	return rt_status;
 
 }
diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 3d4f57d..084e04f 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -1575,10 +1575,10 @@ void rtl8192_SetBWModeWorkItem(struct net_device *dev)
 			 priv->cck_present_attentuation);
 
 		if (priv->chan == 14 && !priv->bcck_in_ch14) {
-			priv->bcck_in_ch14 = TRUE;
+			priv->bcck_in_ch14 = true;
 			dm_cck_txpower_adjust(dev, priv->bcck_in_ch14);
 		} else if (priv->chan != 14 && priv->bcck_in_ch14) {
-			priv->bcck_in_ch14 = FALSE;
+			priv->bcck_in_ch14 = false;
 			dm_cck_txpower_adjust(dev, priv->bcck_in_ch14);
 		} else {
 			dm_cck_txpower_adjust(dev, priv->bcck_in_ch14);
-- 
1.9.1



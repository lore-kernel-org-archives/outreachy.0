X-GM-THRID: 3247770173440
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,352ba3b1521f4ad9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.199.69 with SMTP id ji5mr2319774lbc.0.1424799158529;
        Tue, 24 Feb 2015 09:32:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.34 with SMTP id jt2ls804575wid.17.canary; Tue, 24 Feb
 2015 09:32:36 -0800 (PST)
X-Received: by 10.180.81.34 with SMTP id w2mr2284621wix.2.1424799156812;
        Tue, 24 Feb 2015 09:32:36 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id o3si943833wib.2.2015.02.24.09.32.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 09:32:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id y19so6793523wgg.10
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 09:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=gQPYi//AwFgNjDNDdW1L/zsq2hRdDdpt1DQd3eIwC+U=;
        b=N2OIauENRWnUf18ivtvZX60ej79OTgMlqiNjxeNlbzo7T0nadqpnmZ+CCt72cmhjCB
         PVtWcaIoxF1nfI7yB7n/xzOc9v/gFK/fTcdq5Kl7+7hWkLkPJJDBLw1jq+38VmVyDf+6
         65pY0SsNfza5s703iVbdowV4PsG1pd5e7uUuV91zJjn0lydErTtRe95iDs8649oyy9Us
         yFowb9wssAiiCDe1DaiTsFlUGcVPs3OfPZLlr7LxEM2hSB/ChosQs/hXfqsptmsZJ/fO
         XqW33KfxX2PLn4OKWG5FarmOJ6N+z0wXZhJ72Uzngk3cxef0QJJc0xSj6UnQP+2VGI9e
         3xKw==
X-Received: by 10.180.89.173 with SMTP id bp13mr32236769wib.88.1424799156722;
        Tue, 24 Feb 2015 09:32:36 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id md8sm21425103wic.13.2015.02.24.09.32.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 09:32:36 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 3/6] Staging: rtl8192u: Replace TRUE and FALSE macros
Date: Tue, 24 Feb 2015 18:32:26 +0100
Message-Id: <0c2eddc15c4c507fdc132a98763175a6da316aa7.1424798953.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424798953.git.ksenija.stanojevic@gmail.com>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com>

Replace all occurrences of TRUE and FALSE by true and false
respectively.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 48 ++++++++++++++++++------------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index ee6b936..2657b57 100644
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
@@ -3087,7 +3087,7 @@ static void dm_dynamic_txpower(struct net_device *dev)
 #endif
 
 		rtl8192_phy_setTxPower(dev, priv->ieee80211->current_network.channel);
-		/*pHalData->bStartTxCtrlByTPCNFR = FALSE;    Clear th flag of Set TX Power from Sitesurvey*/
+		/*pHalData->bStartTxCtrlByTPCNFR = false;    Clear th flag of Set TX Power from Sitesurvey*/
 	}
 	priv->bLastDTPFlag_High = priv->bDynamicTxHighPower;
 	priv->bLastDTPFlag_Low = priv->bDynamicTxLowPower;
-- 
1.9.1



X-GM-THRID: 3247770173440
X-Received: by 10.112.138.202 with SMTP id qs10mr2283297lbb.24.1424799285280;
        Tue, 24 Feb 2015 09:34:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.193 with SMTP id v1ls654810lag.102.gmail; Tue, 24 Feb
 2015 09:34:44 -0800 (PST)
X-Received: by 10.152.29.97 with SMTP id j1mr801458lah.3.1424799284850;
        Tue, 24 Feb 2015 09:34:44 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id el6si952389wib.2.2015.02.24.09.34.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 09:34:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id x3so26642294wes.7
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 09:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6drFuq/cTlCdecfm9BPB6/e7D4wt7geJ4cqjY+cmpDg=;
        b=nTQTEHSMNyLmKEAvuY4cGTELTHmHb0SnKPt+8eY+DCO4jAkn2v2EwCjrs/XxAYvBR3
         TLSK0wc5IAYaj0UcflJMSoGgRG0td+4GdauYef3wUtjRaRLge3sZVJKKxv3EGUM9G7mo
         Z/gpvq0Tpo1JT3a9IP/D8mPppEf0bF3W36/ZDA+8wUH/PABvxH2kCbn86ozbuq7mWEln
         n/lvtYJaylFrtA6pb8m35FyY4hZ3m/795o9lmrzTAJTlqealbDoWmWoqQaq7xdAI5oP2
         9sl37S3fypdjzYIAfQt/+mq7BTi7pxgSjfqBGLnHsPTqTLP8p6B++OY8NTOmLwL9/Nfq
         wN0w==
X-Received: by 10.194.59.209 with SMTP id b17mr33186141wjr.67.1424799284752;
        Tue, 24 Feb 2015 09:34:44 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id n6sm61139694wjy.8.2015.02.24.09.34.43
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 09:34:44 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 6/6] Staging: rtl8192u: Repace TRUE and FALSE macros
Date: Tue, 24 Feb 2015 18:34:37 +0100
Message-Id: <845cb1680a078d39efd84a1d9bd5647c44a274ea.1424798953.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424798953.git.ksenija.stanojevic@gmail.com>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com>

Replace all occurrences oof TRUE and FALSE by true and false
respectively.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index e031a25..02707d8 100644
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
-- 
1.9.1



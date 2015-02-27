X-GM-THRID: 4862563581952
X-Received: by 10.112.219.102 with SMTP id pn6mr2311230lbc.12.1425069641178;
        Fri, 27 Feb 2015 12:40:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.135 with SMTP id p7ls190803wic.45.canary; Fri, 27 Feb
 2015 12:40:40 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr2336654wjc.7.1425069640901;
        Fri, 27 Feb 2015 12:40:40 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id by11si209936wib.1.2015.02.27.12.40.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:40:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22f.google.com with SMTP id a1so22675203wgh.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xH8iBbbiH5qJMW9Kb7infkWK4ThjHtPMxmvXg2FRflc=;
        b=xlLhRJLOT9TWWWoJ9twQA+h9DuZ6xzrnJkRnaRonA6lmoq9/vqNS9pfkPPvY8nYSVS
         zxFJ1qSdoosKvb+O+UYaPnSNUei0YYwAL2v8szJguXAqqT7jlzyNG+xkfKp3pDFi7bkP
         v3O+JIHxqdT8DmDcHVsAuV6VekilMaLh5kgjH5bMdGXUhhXbtECQwBXODakX5zUlB96h
         oTOe1QqLEX4WRgf3rma9sv8TtFizsPpAA3oNgi9MhBfHnx81trxxMduJ6nFZasExu5MJ
         tASoVnEnGsPkt81USIi3Sne5FPwhXcQQapsB/LIgYy76c9w69iR5bmTkeWtujzNA53O8
         L0Dg==
X-Received: by 10.194.103.228 with SMTP id fz4mr31314360wjb.82.1425069640840;
        Fri, 27 Feb 2015 12:40:40 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id kr5sm7517700wjc.1.2015.02.27.12.40.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 12:40:40 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/2] Staging: rtl8192u: Rename identifiers
Date: Fri, 27 Feb 2015 21:40:30 +0100
Message-Id: <0f6da26e5c5dd57f4508dc06bae31b4aed52778d.1425069557.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425069557.git.ksenija.stanojevic@gmail.com>
References: <cover.1425069557.git.ksenija.stanojevic@gmail.com>

This patch removes typedef keywords and renames identifiers.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 30 ++++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
index 545f49e..dcf50d4 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
@@ -26,7 +26,8 @@
 #include "r8192U.h"
 #include "r819xU_cmdpkt.h"
 
-rt_status SendTxCommandPacket(struct net_device *dev, void *pData, u32 DataLen)
+enum rt_status SendTxCommandPacket(struct net_device *dev, void *pData,
+				   u32 DataLen)
 {
 	struct r8192_priv   *priv = ieee80211_priv(dev);
 	struct sk_buff	    *skb;
@@ -77,7 +78,8 @@ rt_status SendTxCommandPacket(struct net_device *dev, void *pData, u32 DataLen)
  *  05/12/2008		amy	Create Version 0 porting from windows code.
  *
  *---------------------------------------------------------------------------*/
-static void cmpk_count_txstatistic(struct net_device *dev, cmpk_txfb_t *pstx_fb)
+static void cmpk_count_txstatistic(struct net_device *dev,
+				   struct cmpk_txfb *pstx_fb)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 #ifdef ENABLE_PS
@@ -162,7 +164,7 @@ static void cmpk_count_txstatistic(struct net_device *dev, cmpk_txfb_t *pstx_fb)
 static void cmpk_handle_tx_feedback(struct net_device *dev, u8 *pmsg)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
-	cmpk_txfb_t		rx_tx_fb;
+	struct cmpk_txfb		rx_tx_fb;
 
 	priv->stats.txfeedback++;
 
@@ -171,7 +173,7 @@ static void cmpk_handle_tx_feedback(struct net_device *dev, u8 *pmsg)
 	   windows OS. So we have to read the content byte by byte or transfer
 	   endian type before copy the message copy. */
 	/* Use pointer to transfer structure memory. */
-	memcpy((u8 *)&rx_tx_fb, pmsg, sizeof(cmpk_txfb_t));
+	memcpy((u8 *)&rx_tx_fb, pmsg, sizeof(struct cmpk_txfb));
 	/* 2. Use tx feedback info to count TX statistics. */
 	cmpk_count_txstatistic(dev, &rx_tx_fb);
 	/* Comment previous method for TX statistic function. */
@@ -227,7 +229,7 @@ static void cmdpkt_beacontimerinterrupt_819xusb(struct net_device *dev)
  *---------------------------------------------------------------------------*/
 static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
 {
-	cmpk_intr_sta_t		rx_intr_status;	/* */
+	struct cmpk_intr_sta		rx_intr_status;	/* */
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
 	DMESG("---> cmpk_Handle_Interrupt_Status()\n");
@@ -237,7 +239,7 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
 	   windows OS. So we have to read the content byte by byte or transfer
 	   endian type before copy the message copy. */
 	rx_intr_status.length = pmsg[1];
-	if (rx_intr_status.length != (sizeof(cmpk_intr_sta_t) - 2)) {
+	if (rx_intr_status.length != (sizeof(struct cmpk_intr_sta) - 2)) {
 		DMESG("cmpk_Handle_Interrupt_Status: wrong length!\n");
 		return;
 	}
@@ -293,7 +295,7 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
  *---------------------------------------------------------------------------*/
 static void cmpk_handle_query_config_rx(struct net_device *dev, u8 *pmsg)
 {
-	cmpk_query_cfg_t	rx_query_cfg;
+	struct cmpk_set_cfg rx_query_cfg;
 
 
 	/* 1. Extract TX feedback info from RFD to temp structure buffer. */
@@ -331,7 +333,7 @@ static void cmpk_handle_query_config_rx(struct net_device *dev, u8 *pmsg)
  *
  *---------------------------------------------------------------------------*/
 static void cmpk_count_tx_status(struct net_device *dev,
-				 cmpk_tx_status_t *pstx_status)
+				 struct cmpk_tx_status *pstx_status)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
@@ -395,9 +397,9 @@ static void cmpk_count_tx_status(struct net_device *dev,
  *---------------------------------------------------------------------------*/
 static void cmpk_handle_tx_status(struct net_device *dev, u8 *pmsg)
 {
-	cmpk_tx_status_t	rx_tx_sts;
+	struct cmpk_tx_status	rx_tx_sts;
 
-	memcpy((void *)&rx_tx_sts, (void *)pmsg, sizeof(cmpk_tx_status_t));
+	memcpy((void *)&rx_tx_sts, (void *)pmsg, sizeof(struct cmpk_tx_status));
 	/* 2. Use tx feedback info to count TX statistics. */
 	cmpk_count_tx_status(dev, &rx_tx_sts);
 
@@ -422,9 +424,9 @@ static void cmpk_handle_tx_status(struct net_device *dev, u8 *pmsg)
  *---------------------------------------------------------------------------*/
 static void cmpk_handle_tx_rate_history(struct net_device *dev, u8 *pmsg)
 {
-	cmpk_tx_rahis_t	*ptxrate;
+	struct cmpk_tx_rahis	*ptxrate;
 	u8		i, j;
-	u16		length = sizeof(cmpk_tx_rahis_t);
+	u16		length = sizeof(struct cmpk_tx_rahis);
 	u32		*ptemp;
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
@@ -452,7 +454,7 @@ static void cmpk_handle_tx_rate_history(struct net_device *dev, u8 *pmsg)
 		ptemp[i] = (temp1 << 16) | temp2;
 	}
 
-	ptxrate = (cmpk_tx_rahis_t *)pmsg;
+	ptxrate = (struct cmpk_tx_rahis *)pmsg;
 
 	if (ptxrate == NULL)
 		return;
@@ -532,7 +534,7 @@ u32 cmpk_message_handle_rx(struct net_device *dev,
 
 		case RX_INTERRUPT_STATUS:
 			cmpk_handle_interrupt_status(dev, pcmd_buff);
-			cmd_length = sizeof(cmpk_intr_sta_t);
+			cmd_length = sizeof(struct cmpk_intr_sta);
 			break;
 
 		case BOTH_QUERY_CONFIG:
-- 
1.9.1



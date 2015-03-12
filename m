X-GM-THRID: 7938697592832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d3e814254128ab3e,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.87.166 with SMTP id az6mr1500618wib.1.1426181818058;
        Thu, 12 Mar 2015 10:36:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.24.162 with SMTP id v2ls550768wif.17.gmail; Thu, 12 Mar
 2015 10:36:57 -0700 (PDT)
X-Received: by 10.180.11.34 with SMTP id n2mr7041505wib.2.1426181817759;
        Thu, 12 Mar 2015 10:36:57 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id o3si1588390wib.2.2015.03.12.10.36.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 10:36:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghk14 with SMTP id k14so17969093wgh.7
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 10:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Q9GQGailGYTi3i4dF/CKBz2rm3DBDQoD1BAKhErIgu4=;
        b=zA3c23hde0bndgmPWb2WlZlyLg2dHDXgU4PxfIp4kcYuIWb/xQNkeKTlPUe+0BY4U6
         yOYOoVR1SsHrAgLrJ3iEBjAasKtliWlDwCMhrvD+IKhq6ZgOJrk9HZH79e22ABBjORn3
         smy2OUbZ5mL9im8QtK55F8Sg0oh0xCYT3jW26x+vdJJC4gXBtZ1c3zz6KQUW+K/GtCry
         iRInGpQZGv6DytccGcFHRfDCOLq9+nddIQtSiZA3Hi+bfOa7DFh/2Gu40tgNwJ3SOXQh
         hGN8IT0taIXa6lSn6gwILYwtE0QtRcMLp5Xu2faJu0JR2RXpF9dwU73tmSIb4lIz5u9G
         A/8g==
X-Received: by 10.180.9.134 with SMTP id z6mr11784696wia.81.1426181817676;
        Thu, 12 Mar 2015 10:36:57 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id vh8sm11020035wjc.12.2015.03.12.10.36.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 10:36:56 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>,
	ksenija.stanojevic@gmail.co
Subject: [PATCH v2 2/2] Staging: rtl8192u: Replace types
Date: Thu, 12 Mar 2015 18:36:49 +0100
Message-Id: <30a710d6afe0be094babd21a9d69df3a939655d8.1426181718.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426181718.git.ksenija.stanojevic@gmail.com>
References: <cover.1426181718.git.ksenija.stanojevic@gmail.com>

This patch replaces types made by typedefs in r8192U_cmdpkt.h by struct
definitions. Also where ever struct was added line was aligned and
doesn't exceed 80 character mark and unnecessary tabs were removed.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: change commit message.

 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 35 ++++++++++++++++----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
index 545f49e..d75f671 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
@@ -26,7 +26,7 @@
 #include "r8192U.h"
 #include "r819xU_cmdpkt.h"
 
-rt_status SendTxCommandPacket(struct net_device *dev, void *pData, u32 DataLen)
+enum rt_status SendTxCommandPacket(struct net_device *dev, void *pData, u32 DataLen)
 {
 	struct r8192_priv   *priv = ieee80211_priv(dev);
 	struct sk_buff	    *skb;
@@ -77,7 +77,8 @@ rt_status SendTxCommandPacket(struct net_device *dev, void *pData, u32 DataLen)
  *  05/12/2008		amy	Create Version 0 porting from windows code.
  *
  *---------------------------------------------------------------------------*/
-static void cmpk_count_txstatistic(struct net_device *dev, cmpk_txfb_t *pstx_fb)
+static void cmpk_count_txstatistic(struct net_device *dev,
+				   struct cmpk_txfb *pstx_fb)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 #ifdef ENABLE_PS
@@ -162,7 +163,7 @@ static void cmpk_count_txstatistic(struct net_device *dev, cmpk_txfb_t *pstx_fb)
 static void cmpk_handle_tx_feedback(struct net_device *dev, u8 *pmsg)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
-	cmpk_txfb_t		rx_tx_fb;
+	struct cmpk_txfb rx_tx_fb;
 
 	priv->stats.txfeedback++;
 
@@ -171,7 +172,7 @@ static void cmpk_handle_tx_feedback(struct net_device *dev, u8 *pmsg)
 	   windows OS. So we have to read the content byte by byte or transfer
 	   endian type before copy the message copy. */
 	/* Use pointer to transfer structure memory. */
-	memcpy((u8 *)&rx_tx_fb, pmsg, sizeof(cmpk_txfb_t));
+	memcpy((u8 *)&rx_tx_fb, pmsg, sizeof(struct cmpk_txfb));
 	/* 2. Use tx feedback info to count TX statistics. */
 	cmpk_count_txstatistic(dev, &rx_tx_fb);
 	/* Comment previous method for TX statistic function. */
@@ -227,7 +228,7 @@ static void cmdpkt_beacontimerinterrupt_819xusb(struct net_device *dev)
  *---------------------------------------------------------------------------*/
 static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
 {
-	cmpk_intr_sta_t		rx_intr_status;	/* */
+	struct cmpk_intr_sta rx_intr_status;	/* */
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
 	DMESG("---> cmpk_Handle_Interrupt_Status()\n");
@@ -237,7 +238,7 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
 	   windows OS. So we have to read the content byte by byte or transfer
 	   endian type before copy the message copy. */
 	rx_intr_status.length = pmsg[1];
-	if (rx_intr_status.length != (sizeof(cmpk_intr_sta_t) - 2)) {
+	if (rx_intr_status.length != (sizeof(struct cmpk_intr_sta) - 2)) {
 		DMESG("cmpk_Handle_Interrupt_Status: wrong length!\n");
 		return;
 	}
@@ -293,7 +294,7 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
  *---------------------------------------------------------------------------*/
 static void cmpk_handle_query_config_rx(struct net_device *dev, u8 *pmsg)
 {
-	cmpk_query_cfg_t	rx_query_cfg;
+	struct cmpk_set_cfg rx_query_cfg;
 
 
 	/* 1. Extract TX feedback info from RFD to temp structure buffer. */
@@ -331,7 +332,7 @@ static void cmpk_handle_query_config_rx(struct net_device *dev, u8 *pmsg)
  *
  *---------------------------------------------------------------------------*/
 static void cmpk_count_tx_status(struct net_device *dev,
-				 cmpk_tx_status_t *pstx_status)
+				 struct cmpk_tx_status *pstx_status)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
@@ -395,9 +396,9 @@ static void cmpk_count_tx_status(struct net_device *dev,
  *---------------------------------------------------------------------------*/
 static void cmpk_handle_tx_status(struct net_device *dev, u8 *pmsg)
 {
-	cmpk_tx_status_t	rx_tx_sts;
+	struct cmpk_tx_status rx_tx_sts;
 
-	memcpy((void *)&rx_tx_sts, (void *)pmsg, sizeof(cmpk_tx_status_t));
+	memcpy((void *)&rx_tx_sts, (void *)pmsg, sizeof(struct cmpk_tx_status));
 	/* 2. Use tx feedback info to count TX statistics. */
 	cmpk_count_tx_status(dev, &rx_tx_sts);
 
@@ -422,9 +423,9 @@ static void cmpk_handle_tx_status(struct net_device *dev, u8 *pmsg)
  *---------------------------------------------------------------------------*/
 static void cmpk_handle_tx_rate_history(struct net_device *dev, u8 *pmsg)
 {
-	cmpk_tx_rahis_t	*ptxrate;
+	struct cmpk_tx_rahis *ptxrate;
 	u8		i, j;
-	u16		length = sizeof(cmpk_tx_rahis_t);
+	u16		length = sizeof(struct cmpk_tx_rahis);
 	u32		*ptemp;
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
@@ -452,7 +453,7 @@ static void cmpk_handle_tx_rate_history(struct net_device *dev, u8 *pmsg)
 		ptemp[i] = (temp1 << 16) | temp2;
 	}
 
-	ptxrate = (cmpk_tx_rahis_t *)pmsg;
+	ptxrate = (struct cmpk_tx_rahis *)pmsg;
 
 	if (ptxrate == NULL)
 		return;
@@ -504,7 +505,7 @@ u32 cmpk_message_handle_rx(struct net_device *dev,
 	/* 0. Check inpt arguments. If is is a command queue message or
 	   pointer is null. */
 	if (pstats == NULL)
-		return 0;	/* This is not a command packet. */
+		return U32_FALSE;	/* This is not a command packet. */
 
 	/* 1. Read received command packet message length from RFD. */
 	total_length = pstats->Length;
@@ -532,7 +533,7 @@ u32 cmpk_message_handle_rx(struct net_device *dev,
 
 		case RX_INTERRUPT_STATUS:
 			cmpk_handle_interrupt_status(dev, pcmd_buff);
-			cmd_length = sizeof(cmpk_intr_sta_t);
+			cmd_length = sizeof(struct cmpk_intr_sta);
 			break;
 
 		case BOTH_QUERY_CONFIG:
@@ -560,12 +561,12 @@ u32 cmpk_message_handle_rx(struct net_device *dev,
 
 			RT_TRACE(COMP_ERR, "---->%s():unknown CMD Element\n",
 				 __func__);
-			return 1;	/* This is a command packet. */
+			return U32_TRUE;	/* This is a command packet. */
 		}
 
 		total_length -= cmd_length;
 		pcmd_buff    += cmd_length;
 	}
-	return	1;	/* This is a command packet. */
+	return	U32_TRUE;	/* This is a command packet. */
 
 }
-- 
1.9.1



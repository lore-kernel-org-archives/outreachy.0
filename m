X-GM-THRID: 6296089657344
X-Received: by 10.112.219.102 with SMTP id pn6mr2314312lbc.12.1425652256810;
        Fri, 06 Mar 2015 06:30:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.225 with SMTP id n1ls79313lah.52.gmail; Fri, 06 Mar
 2015 06:30:55 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr2398926lbb.11.1425652255315;
        Fri, 06 Mar 2015 06:30:55 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id bg8si137489wib.3.2015.03.06.06.30.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 06:30:55 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x229.google.com with SMTP id m14so59754451wev.13
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 06:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=qDshv6tiC2cdpslT6DBwHF6ae4vQev/5pDFgxsu+Yg8=;
        b=vPRXussKZtBvRMwOMObFd8mG/lZC5tf9AlM9Nbm+1rzpHKKJTpM3FlceGK6A4zmSUX
         kb2sDaSqlTwUmlFFmCpAPe9rVu8zfCR8FnGJ8A8mY73Nc16lSoA5kAYDEiVa7dgInE9N
         kwxAGutNmb1AycjvAiI72B06XkBlsDqNvaB2acB6TWZPr1m5O8TjF9KBP7+iXfo68oQp
         jP/hydnUG9gIF38gfBaTCfbPWJqI4ezlyXYpl/IYZZZNHb+SYxDsfnlz6y/u/QnyNp6t
         HyjICnsinWQ0XXvYSeHS8LyuqmG/LD3E/35QICB0DCTldr1F3Pw+HDaIyiQHiwGsYGuw
         Hnxg==
X-Received: by 10.180.84.166 with SMTP id a6mr33049381wiz.4.1425652255163;
        Fri, 06 Mar 2015 06:30:55 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id w4sm2484471wib.19.2015.03.06.06.30.54
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Mar 2015 06:30:54 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Change from // to /* */
Date: Fri,  6 Mar 2015 16:30:49 +0200
Message-Id: <1425652249-15016-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove the all '//' and instead of '/* */' put.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 104 +++++++++++-----------
 1 file changed, 52 insertions(+), 52 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 8d4ade4..c0d1468 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -207,8 +207,8 @@ int ieee80211_encrypt_fragment(
 	/* To encrypt, frame format is:
 	 * IV (4 bytes), clear payload (including SNAP), ICV (4 bytes) */
 
-	// PR: FIXME: Copied from hostap. Check fragmentation/MSDU/MPDU encryption.
-	/* Host-based IEEE 802.11 fragmentation for TX is not yet supported, so
+	/* PR: FIXME: Copied from hostap. Check fragmentation/MSDU/MPDU encryption.
+	 * Host-based IEEE 802.11 fragmentation for TX is not yet supported, so
 	 * call both MSDU and MPDU encryption functions from here. */
 	atomic_inc(&crypt->refcnt);
 	res = 0;
@@ -230,7 +230,7 @@ int ieee80211_encrypt_fragment(
 
 
 void ieee80211_txb_free(struct ieee80211_txb *txb) {
-	//int i;
+	/* int i; */
 	if (unlikely(!txb))
 		return;
 	kfree(txb);
@@ -269,8 +269,8 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
 	return txb;
 }
 
-// Classify the to-be send data packet
-// Need to acquire the sent queue index.
+/* Classify the to-be send data packet
+ Need to acquire the sent queue index. */
 static int
 ieee80211_classify(struct sk_buff *skb, struct ieee80211_network *network)
 {
@@ -280,7 +280,7 @@ ieee80211_classify(struct sk_buff *skb, struct ieee80211_network *network)
 	if (eth->h_proto != htons(ETH_P_IP))
 		return 0;
 
-//	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len);
+	/* IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len); */
 	ip = ip_hdr(skb);
 	switch (ip->tos & 0xfc) {
 	case 0x20:
@@ -317,11 +317,11 @@ static void ieee80211_tx_query_agg_cap(struct ieee80211_device *ieee,
 
 	if (is_multicast_ether_addr(hdr->addr1))
 		return;
-	//check packet and mode later
+	/* check packet and mode later */
 #ifdef TO_DO_LIST
 	if(pTcb->PacketLength >= 4096)
 		return;
-	// For RTL819X, if pairwisekey = wep/tkip, we don't aggrregation.
+	/* For RTL819X, if pairwisekey = wep/tkip, we don't aggrregation. */
 	if(!Adapter->HalFunc.GetNmodeSupportBySecCfgHandler(Adapter))
 		return;
 #endif
@@ -383,7 +383,7 @@ static void ieee80211_qurey_ShortPreambleMode(struct ieee80211_device *ieee,
 {
 	tcb_desc->bUseShortPreamble = false;
 	if (tcb_desc->data_rate == 2)
-	{//// 1M can only use Long Preamble. 11B spec
+	{ /* 1M can only use Long Preamble. 11B spec */
 		return;
 	}
 	else if (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE)
@@ -427,9 +427,9 @@ static void ieee80211_query_BandwidthMode(struct ieee80211_device *ieee,
 	if(tcb_desc->bMulticast || tcb_desc->bBroadcast)
 		return;
 
-	if((tcb_desc->data_rate & 0x80)==0) // If using legacy rate, it shall use 20MHz channel.
+	if((tcb_desc->data_rate & 0x80)==0) /* If using legacy rate, it shall use 20MHz channel. */
 		return;
-	//BandWidthAutoSwitch is for auto switch to 20 or 40 in long distance
+	/* BandWidthAutoSwitch is for auto switch to 20 or 40 in long distance */
 	if(pHTInfo->bCurBW40MHz && pHTInfo->bCurTxBW40MHz && !ieee->bandwidth_auto_switch.bforced_tx20Mhz)
 		tcb_desc->bPacketBW = true;
 	return;
@@ -439,25 +439,25 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 					   cb_desc *tcb_desc,
 					   struct sk_buff *skb)
 {
-	// Common Settings
+	/* Common Settings */
 	tcb_desc->bRTSSTBC			= false;
-	tcb_desc->bRTSUseShortGI		= false; // Since protection frames are always sent by legacy rate, ShortGI will never be used.
-	tcb_desc->bCTSEnable			= false; // Most of protection using RTS/CTS
-	tcb_desc->RTSSC				= 0;		// 20MHz: Don't care;  40MHz: Duplicate.
-	tcb_desc->bRTSBW			= false; // RTS frame bandwidth is always 20MHz
+	tcb_desc->bRTSUseShortGI		= false; /* Since protection frames are always sent by legacy rate, ShortGI will never be used. */
+	tcb_desc->bCTSEnable			= false; /* Most of protection using RTS/CTS */
+	tcb_desc->RTSSC				= 0;		/* 20MHz: Don't care;  40MHz: Duplicate. */
+	tcb_desc->bRTSBW			= false; /* RTS frame bandwidth is always 20MHz */
 
-	if(tcb_desc->bBroadcast || tcb_desc->bMulticast)//only unicast frame will use rts/cts
+	if(tcb_desc->bBroadcast || tcb_desc->bMulticast) /* only unicast frame will use rts/cts */
 		return;
 
-	if (is_broadcast_ether_addr(skb->data+16))  //check addr3 as infrastructure add3 is DA.
+	if (is_broadcast_ether_addr(skb->data+16))  /* check addr3 as infrastructure add3 is DA. */
 		return;
 
 	if (ieee->mode < IEEE_N_24G) //b, g mode
 	{
-			// (1) RTS_Threshold is compared to the MPDU, not MSDU.
-			// (2) If there are more than one frag in  this MSDU, only the first frag uses protection frame.
-			//		Other fragments are protected by previous fragment.
-			//		So we only need to check the length of first fragment.
+			/* (1) RTS_Threshold is compared to the MPDU, not MSDU.
+			   (2) If there are more than one frag in  this MSDU, only the first frag uses protection frame.
+					Other fragments are protected by previous fragment.
+					So we only need to check the length of first fragment. */
 		if (skb->len > ieee->rts)
 		{
 			tcb_desc->bRTSEnable = true;
@@ -465,57 +465,57 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 		}
 		else if (ieee->current_network.buseprotection)
 		{
-			// Use CTS-to-SELF in protection mode.
+			/* Use CTS-to-SELF in protection mode. */
 			tcb_desc->bRTSEnable = true;
 			tcb_desc->bCTSEnable = true;
 			tcb_desc->rts_rate = MGN_24M;
 		}
-		//otherwise return;
+		/* otherwise return; */
 		return;
 	}
 	else
-	{// 11n High throughput case.
+	{/* 11n High throughput case. */
 		PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
 		while (true)
 		{
-			//check ERP protection
+			/* check ERP protection */
 			if (ieee->current_network.buseprotection)
-			{// CTS-to-SELF
+			{ /* CTS-to-SELF */
 				tcb_desc->bRTSEnable = true;
 				tcb_desc->bCTSEnable = true;
 				tcb_desc->rts_rate = MGN_24M;
 				break;
 			}
-			//check HT op mode
+			/* check HT op mode */
 			if(pHTInfo->bCurrentHTSupport  && pHTInfo->bEnableHT)
 			{
 				u8 HTOpMode = pHTInfo->CurrentOpMode;
 				if((pHTInfo->bCurBW40MHz && (HTOpMode == 2 || HTOpMode == 3)) ||
 							(!pHTInfo->bCurBW40MHz && HTOpMode == 3) )
 				{
-					tcb_desc->rts_rate = MGN_24M; // Rate is 24Mbps.
+					tcb_desc->rts_rate = MGN_24M; /* Rate is 24Mbps. */
 					tcb_desc->bRTSEnable = true;
 					break;
 				}
 			}
-			//check rts
+			/* check rts */
 			if (skb->len > ieee->rts)
 			{
-				tcb_desc->rts_rate = MGN_24M; // Rate is 24Mbps.
+				tcb_desc->rts_rate = MGN_24M; /* Rate is 24Mbps. */
 				tcb_desc->bRTSEnable = true;
 				break;
 			}
-			//to do list: check MIMO power save condition.
-			//check AMPDU aggregation for TXOP
+			/* to do list: check MIMO power save condition.
+			check AMPDU aggregation for TXOP */
 			if(tcb_desc->bAMPDUEnable)
 			{
-				tcb_desc->rts_rate = MGN_24M; // Rate is 24Mbps.
-				// According to 8190 design, firmware sends CF-End only if RTS/CTS is enabled. However, it degrads
-				// throughput around 10M, so we disable of this mechanism. 2007.08.03 by Emily
+				tcb_desc->rts_rate = MGN_24M; /* Rate is 24Mbps.
+				 According to 8190 design, firmware sends CF-End only if RTS/CTS is enabled. However, it degrads
+				 throughput around 10M, so we disable of this mechanism. 2007.08.03 by Emily */
 				tcb_desc->bRTSEnable = false;
 				break;
 			}
-			//check IOT action
+			/* check IOT action */
 			if(pHTInfo->IOTAction & HT_IOT_ACT_FORCED_CTS2SELF)
 			{
 				tcb_desc->bCTSEnable	= true;
@@ -523,11 +523,11 @@ static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
 				tcb_desc->bRTSEnable = true;
 				break;
 			}
-			// Totally no protection case!!
+			/* Totally no protection case!! */
 			goto NO_PROTECTION;
 		}
 		}
-	// For test , CTS replace with RTS
+	/* For test , CTS replace with RTS */
 	if (0) {
 		tcb_desc->bCTSEnable	= true;
 		tcb_desc->rts_rate = MGN_24M;
@@ -583,7 +583,7 @@ static void ieee80211_query_seqnum(struct ieee80211_device *ieee,
 {
 	if (is_multicast_ether_addr(dst))
 		return;
-	if (IsQoSDataFrame(skb->data)) //we deal qos data only
+	if (IsQoSDataFrame(skb->data)) /* we deal qos data only */
 	{
 		PTX_TS_RECORD pTS = NULL;
 		if (!GetTs(ieee, (PTS_COMMON_INFO *)(&pTS), dst, skb->priority, TX_DIR, true))
@@ -674,7 +674,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 
 			fc = IEEE80211_FTYPE_DATA;
 
-		//if(ieee->current_network.QoS_Enable)
+		/* if(ieee->current_network.QoS_Enable) */
 		if(qos_actived)
 			fc |= IEEE80211_STYPE_QOS_DATA;
 		else
@@ -704,17 +704,17 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 			qos_ctl |= QOS_CTL_NOTCONTAIN_ACK;
 		}
 		else {
-			frag_size = ieee->fts;//default:392
+			frag_size = ieee->fts;/* default:392 */
 			qos_ctl = 0;
 		}
 
-		//if (ieee->current_network.QoS_Enable)
+		/* if (ieee->current_network.QoS_Enable) */
 		if(qos_actived)
 		{
 			hdr_len = IEEE80211_3ADDR_LEN + 2;
 
 			skb->priority = ieee80211_classify(skb, &ieee->current_network);
-			qos_ctl |= skb->priority; //set in the ieee80211_classify
+			qos_ctl |= skb->priority; /* set in the ieee80211_classify */
 			header.qos_ctl = cpu_to_le16(qos_ctl & IEEE80211_QOS_TID);
 		} else {
 			hdr_len = IEEE80211_3ADDR_LEN;
@@ -754,7 +754,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		txb->encrypted = encrypt;
 		txb->payload_size = bytes;
 
-		//if (ieee->current_network.QoS_Enable)
+		/* if (ieee->current_network.QoS_Enable) */
 		if(qos_actived)
 		{
 			txb->queue_index = UP2AC(skb->priority);
@@ -768,7 +768,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 			skb_frag = txb->fragments[i];
 			tcb_desc = (cb_desc *)(skb_frag->cb + MAX_DEV_ADDR_SIZE);
 			if(qos_actived){
-				skb_frag->priority = skb->priority;//UP2AC(skb->priority);
+				skb_frag->priority = skb->priority; /* UP2AC(skb->priority); */
 				tcb_desc->queue_index =  UP2AC(skb->priority);
 			} else {
 				skb_frag->priority = WME_AC_BK;
@@ -801,10 +801,10 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 				/* The last fragment takes the remaining length */
 				bytes = bytes_last_frag;
 			}
-			//if(ieee->current_network.QoS_Enable)
+			/* if(ieee->current_network.QoS_Enable) */
 			if(qos_actived)
 			{
-				// add 1 only indicate to corresponding seq number control 2006/7/12
+				/* add 1 only indicate to corresponding seq number control 2006/7/12 */
 				frag_hdr->seq_ctl = cpu_to_le16(ieee->seq_ctrl[UP2AC(skb->priority)+1]<<4 | i);
 			} else {
 				frag_hdr->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0]<<4 | i);
@@ -864,7 +864,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 	}
 
  success:
-//WB add to fill data tcb_desc here. only first fragment is considered, need to change, and you may remove to other place.
+/* WB add to fill data tcb_desc here. only first fragment is considered, need to change, and you may remove to other place. */
 	if (txb)
 	{
 		cb_desc *tcb_desc = (cb_desc *)(txb->fragments[0]->cb + MAX_DEV_ADDR_SIZE);
@@ -877,7 +877,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		if (tcb_desc->bMulticast ||  tcb_desc->bBroadcast)
 			tcb_desc->data_rate = ieee->basic_rate;
 		else
-			//tcb_desc->data_rate = CURRENT_RATE(ieee->current_network.mode, ieee->rate, ieee->HTCurrentOperaRate);
+			/* tcb_desc->data_rate = CURRENT_RATE(ieee->current_network.mode, ieee->rate, ieee->HTCurrentOperaRate); */
 			tcb_desc->data_rate = CURRENT_RATE(ieee->mode, ieee->rate, ieee->HTCurrentOperaRate);
 		ieee80211_qurey_ShortPreambleMode(ieee, tcb_desc);
 		ieee80211_tx_query_agg_cap(ieee, txb->fragments[0], tcb_desc);
@@ -885,8 +885,8 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		ieee80211_query_BandwidthMode(ieee, tcb_desc);
 		ieee80211_query_protectionmode(ieee, tcb_desc, txb->fragments[0]);
 		ieee80211_query_seqnum(ieee, txb->fragments[0], header.addr1);
-//		IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, txb->fragments[0]->data, txb->fragments[0]->len);
-		//IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, tcb_desc, sizeof(cb_desc));
+		/* IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, txb->fragments[0]->data, txb->fragments[0]->len);
+		IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, tcb_desc, sizeof(cb_desc)); */
 	}
 	spin_unlock_irqrestore(&ieee->lock, flags);
 	dev_kfree_skb_any(skb);
-- 
1.9.1



X-GM-THRID: 6204103069755506688
X-Received: by 10.112.159.4 with SMTP id wy4mr1958218lbb.15.1444505315794;
        Sat, 10 Oct 2015 12:28:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.43.135 with SMTP id r129ls411915lfr.93.gmail; Sat, 10 Oct
 2015 12:28:35 -0700 (PDT)
X-Received: by 10.112.12.132 with SMTP id y4mr3885119lbb.0.1444505315236;
        Sat, 10 Oct 2015 12:28:35 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id c1si177050wiv.3.2015.10.10.12.28.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 12:28:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ge5so106922521wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 12:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=it/VAKkk1rusCiJbH9oUwrQczopf6s7BgQSPDBQnY6Y=;
        b=v5fi1cqGySOqpMHL7Vd6BEvUl6//5Q4C73BNViNf6C2kvaXYGjLQEYKgOR29jtxlLT
         8/LDtpDd1dg9EWzkPO1l5Aa0ZybaH+Kx63DwwOsI5Ix2Xo7mSnQ6CoViElupQ/83kwyy
         //saY/vvhZah+BzJC7PHzTVoEcvf5uyhYP1NrK9+FTCQ0TbFOP1b198AWEUYx3zGML68
         7gVJcN6efDHFqmvnYqg56YACgQix+Sc8oUYleot9tki9+aF3Zs/Go+nyzL3h9gzpi0aP
         DveaCwhuCM8zgEw/diXGw3GVUtx1lZjzKYjhb8JwnvsWPgmo29/nj/ACq48DQby2Fc5k
         O3DA==
X-Received: by 10.194.240.200 with SMTP id wc8mr21658926wjc.21.1444505315115;
        Sat, 10 Oct 2015 12:28:35 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.101.153])
        by smtp.gmail.com with ESMTPSA id h7sm9673447wjz.7.2015.10.10.12.28.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 12:28:34 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 4/6] staging: rtl8192u: Remove unnecessary braces
Date: Sat, 10 Oct 2015 22:27:46 +0300
Message-Id: <5aa48ebd1bd8dc49fe9844d1e9f6dfc8f76c9d51.1444500823.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>

Fix 'braces {} are not necessary for single statement blocks'
and 'braces {} are not necessary for any arm of this statement'
checkpatch warning

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 79 +++++++++--------------
 1 file changed, 31 insertions(+), 48 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 0600e38..e743380 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -516,13 +516,12 @@ static bool AddReorderEntry(PRX_TS_RECORD pTS, PRX_REORDER_ENTRY pReorderEntry)
 {
 	struct list_head *pList = &pTS->RxPendingPktList;
 	while (pList->next != &pTS->RxPendingPktList) {
-		if (SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum)) {
+		if (SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum))
 			pList = pList->next;
-		} else if (SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum)) {
+		else if (SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum))
 			return false;
-		} else {
+		else
 			break;
-		}
 	}
 	pReorderEntry->List.next = pList->next;
 	pReorderEntry->List.next->prev = &pReorderEntry->List;
@@ -598,9 +597,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	bool			bMatchWinStart = false, bPktInBuf = false;
 	IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): Seq is %d, pTS->RxIndicateSeq is %d, WinSize is %d\n", __func__, SeqNum, pTS->RxIndicateSeq, WinSize);
 	/* Rx Reorder initialize condition.*/
-	if (pTS->RxIndicateSeq == 0xffff) {
+	if (pTS->RxIndicateSeq == 0xffff)
 		pTS->RxIndicateSeq = SeqNum;
-	}
 
 	/* Drop out the packet which SeqNum is smaller than WinStart */
 	if (SN_LESS(SeqNum, pTS->RxIndicateSeq)) {
@@ -609,9 +607,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		pHTInfo->RxReorderDropCounter++;
 		{
 			int i;
-			for (i = 0; i < prxb->nr_subframes; i++) {
+			for (i = 0; i < prxb->nr_subframes; i++)
 				dev_kfree_skb(prxb->subframes[i]);
-			}
 			kfree(prxb);
 			prxb = NULL;
 		}
@@ -627,11 +624,10 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		pTS->RxIndicateSeq = (pTS->RxIndicateSeq + 1) % 4096;
 		bMatchWinStart = true;
 	} else if (SN_LESS(WinEnd, SeqNum)) {
-		if (SeqNum >= (WinSize - 1)) {
+		if (SeqNum >= (WinSize - 1))
 			pTS->RxIndicateSeq = SeqNum + 1 - WinSize;
-		} else {
+		else
 			pTS->RxIndicateSeq = 4095 - (WinSize - (SeqNum + 1)) + 1;
-		}
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Window Shift! IndicateSeq: %d, NewSeq: %d\n", pTS->RxIndicateSeq, SeqNum);
 	}
 
@@ -669,9 +665,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 				list_add_tail(&pReorderEntry->List, &ieee->RxReorder_Unused_List);
 				{
 					int i;
-					for (i = 0; i < prxb->nr_subframes; i++) {
+					for (i = 0; i < prxb->nr_subframes; i++)
 						dev_kfree_skb(prxb->subframes[i]);
-					}
 					kfree(prxb);
 					prxb = NULL;
 				}
@@ -688,9 +683,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 			IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): There is no reorder entry!! Packet is dropped!!\n");
 			{
 				int i;
-				for (i = 0; i < prxb->nr_subframes; i++) {
+				for (i = 0; i < prxb->nr_subframes; i++)
 					dev_kfree_skb(prxb->subframes[i]);
-				}
 				kfree(prxb);
 				prxb = NULL;
 			}
@@ -776,13 +770,11 @@ static u8 parse_subframe(struct sk_buff *skb,
 		bIsAggregateFrame = true;
 	}
 
-	if (IEEE80211_QOS_HAS_SEQ(fc)) {
+	if (IEEE80211_QOS_HAS_SEQ(fc))
 		LLCOffset += 2;
-	}
 
-	if (rx_stats->bContainHTC) {
+	if (rx_stats->bContainHTC)
 		LLCOffset += sHTCLng;
-	}
 	//printk("ChkLength = %d\n", LLCOffset);
 	// Null packet, don't indicate it to upper layer
 	ChkLength = LLCOffset;/* + (Frame_WEP(frame)!=0 ?Adapter->MgntInfo.SecurityInfo.EncryptionHeadOverhead:0);*/
@@ -848,13 +840,11 @@ static u8 parse_subframe(struct sk_buff *skb,
 
 			if (skb->len != 0) {
 				nPadding_Length = 4 - ((nSubframe_Length + ETHERNET_HEADER_SIZE) % 4);
-				if (nPadding_Length == 4) {
+				if (nPadding_Length == 4)
 					nPadding_Length = 0;
-				}
 
-				if (skb->len < nPadding_Length) {
+				if (skb->len < nPadding_Length)
 					return 0;
-				}
 
 				skb_pull(skb, nPadding_Length);
 			}
@@ -1256,9 +1246,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		TID = Frame_QoSTID(skb->data);
 		SeqNum = WLAN_GET_SEQ_SEQ(sc);
 		GetTs(ieee, (PTS_COMMON_INFO *) &pTS, hdr->addr2, TID, RX_DIR, true);
-		if (TID != 0 && TID != 3) {
+		if (TID != 0 && TID != 3)
 			ieee->bis_any_nonbepkts = true;
-		}
 	}
 //added by amy for reorder
 	/* skb: hdr + (possible reassembled) full plaintext payload */
@@ -1273,9 +1262,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	/* qos data packets & reserved bit is 1 */
 	if (parse_subframe(skb, rx_stats, rxb, src, dst) == 0) {
 		/* only to free rxb, and not submit the packets to upper layer */
-		for (i = 0; i < rxb->nr_subframes; i++) {
+		for (i = 0; i < rxb->nr_subframes; i++)
 			dev_kfree_skb(rxb->subframes[i]);
-		}
 		kfree(rxb);
 		rxb = NULL;
 		goto rx_dropped;
@@ -1310,9 +1298,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 				stats->rx_packets++;
 				stats->rx_bytes += sub_skb->len;
-				if (is_multicast_ether_addr(dst)) {
+				if (is_multicast_ether_addr(dst))
 					stats->multicast++;
-				}
 
 				/* Indicat the packets to upper layer */
 				//printk("0skb_len(%d)\n", skb->len);
@@ -1567,9 +1554,8 @@ static inline void ieee80211_extract_country_ie(
 			memcpy(network->CountryIeBuf, info_element->data, info_element->len);
 			network->CountryIeLen = info_element->len;
 
-			if (!IS_COUNTRY_IE_VALID(ieee)) {
+			if (!IS_COUNTRY_IE_VALID(ieee))
 				Dot11d_UpdateCountryIe(ieee, addr2, info_element->len, info_element->data);
-			}
 		}
 
 		//
@@ -1577,9 +1563,8 @@ static inline void ieee80211_extract_country_ie(
 		// some AP (e.g. Cisco 1242) don't include country IE in their
 		// probe response frame.
 		//
-		if (IS_EQUAL_CIE_SRC(ieee, addr2)) {
+		if (IS_EQUAL_CIE_SRC(ieee, addr2))
 			UPDATE_CIE_WATCHDOG(ieee);
-		}
 	}
 
 }
@@ -1909,9 +1894,9 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[3] == 0x01) {
 				if (info_element->len == 6) {
 					memcpy(network->CcxRmState, &info_element[4], 2);
-					if (network->CcxRmState[0] != 0) {
+					if (network->CcxRmState[0] != 0)
 						network->bCcxRmEnable = true;
-					} else
+					else
 						network->bCcxRmEnable = false;
 					//
 					// CCXv4 Table 59-1 MBSSID Masks.
@@ -2047,27 +2032,26 @@ static inline u8 ieee80211_SignalStrengthTranslate(
 	u8 RetSS;
 
 	// Step 1. Scale mapping.
-	if (CurrSS >= 71 && CurrSS <= 100) {
+	if (CurrSS >= 71 && CurrSS <= 100)
 		RetSS = 90 + ((CurrSS - 70) / 3);
-	} else if (CurrSS >= 41 && CurrSS <= 70) {
+	else if (CurrSS >= 41 && CurrSS <= 70)
 		RetSS = 78 + ((CurrSS - 40) / 3);
-	} else if (CurrSS >= 31 && CurrSS <= 40) {
+	else if (CurrSS >= 31 && CurrSS <= 40)
 		RetSS = 66 + (CurrSS - 30);
-	} else if (CurrSS >= 21 && CurrSS <= 30) {
+	else if (CurrSS >= 21 && CurrSS <= 30)
 		RetSS = 54 + (CurrSS - 20);
-	} else if (CurrSS >= 5 && CurrSS <= 20) {
+	else if (CurrSS >= 5 && CurrSS <= 20)
 		RetSS = 42 + (((CurrSS - 5) * 2) / 3);
-	} else if (CurrSS == 4) {
+	else if (CurrSS == 4)
 		RetSS = 36;
-	} else if (CurrSS == 3) {
+	else if (CurrSS == 3)
 		RetSS = 27;
-	} else if (CurrSS == 2) {
+	else if (CurrSS == 2)
 		RetSS = 18;
-	} else if (CurrSS == 1) {
+	else if (CurrSS == 1)
 		RetSS = 9;
-	} else {
+	else
 		RetSS = CurrSS;
-	}
 	//RT_TRACE(COMP_DBG, DBG_LOUD, ("##### After Mapping:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS));
 
 	// Step 2. Smoothing.
@@ -2512,9 +2496,8 @@ static inline void ieee80211_process_probe_response(
 	spin_unlock_irqrestore(&ieee->lock, flags);
 	if (is_beacon(beacon->header.frame_ctl) && is_same_network(&ieee->current_network, &network, ieee) && \
 		(ieee->state == IEEE80211_LINKED)) {
-		if (ieee->handle_beacon != NULL) {
+		if (ieee->handle_beacon != NULL)
 			ieee->handle_beacon(ieee->dev, beacon, &ieee->current_network);
-		}
 	}
 }
 
-- 
1.9.1



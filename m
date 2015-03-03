X-GM-THRID: 6296089657344
X-Received: by 10.180.75.232 with SMTP id f8mr3059601wiw.0.1425395651916;
        Tue, 03 Mar 2015 07:14:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.135 with SMTP id t7ls50392lag.45.gmail; Tue, 03 Mar
 2015 07:14:11 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr4747846lbb.13.1425395651383;
        Tue, 03 Mar 2015 07:14:11 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id el6si129723wib.2.2015.03.03.07.14.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 07:14:11 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id em10so23479422wid.5
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 07:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Yn7/DOPUYRKBDIHDYO23VWBFy8y/o5QB0FjQbqPm1Zc=;
        b=VyQv0ovamBoO61CULO7fTgLHYS84ncKzscpgpC0TWcmYZyLQDmOv1NZ1Yds61oWIqA
         bFYB0zN+/+TPSrsJ1amoo7URTYVDQpCY5Wr53OJQ7Xui8V1pTYt/L+KS4LXqSIhQgz4U
         emSppsR5qIt7iwp1Eeo8TvjfngFNSNE59njGltfHgnDla4pJ9feZiodV9hHL0V+DeK8f
         yEYIGuUs4i9SmrfJGHzSbIVDqawJAc4iyMpUzwGetC/ZAzfkvnHnzIONojfHKbdIeq8e
         eLIeJq0/nbZhJCEBRR6Ry2Il8eMWLq+QvaHRV2500vhALi4xhbn03QOFI+wQdwCjwS1D
         P31A==
X-Received: by 10.194.11.9 with SMTP id m9mr28385014wjb.82.1425395651157;
        Tue, 03 Mar 2015 07:14:11 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id p1sm2841944wib.23.2015.03.03.07.14.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 03 Mar 2015 07:14:10 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Change from // to /* */
Date: Tue,  3 Mar 2015 17:14:00 +0200
Message-Id: <1425395640-4151-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove the all '//' and instead of '/* */' put.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 279 +++++++++++-----------
 1 file changed, 140 insertions(+), 139 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 286b71d..32d3ce4 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -221,8 +221,8 @@ ieee80211_rx_frame_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	rx_stats->len = skb->len;
 	ieee80211_rx_mgt(ieee,(struct ieee80211_hdr_4addr *)skb->data,rx_stats);
-	//if ((ieee->state == IEEE80211_LINKED) && (memcmp(hdr->addr3, ieee->current_network.bssid, ETH_ALEN)))
-	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN)))//use ADDR1 to perform address matching for Management frames
+	/* if ((ieee->state == IEEE80211_LINKED) && (memcmp(hdr->addr3, ieee->current_network.bssid, ETH_ALEN))) */
+	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN)))/* use ADDR1 to perform address matching for Management frames */
 	{
 		dev_kfree_skb_any(skb);
 		return 0;
@@ -323,8 +323,8 @@ static int ieee80211_is_eapol_frame(struct ieee80211_device *ieee,
 	if (skb->len < 24 + 8)
 		return 0;
 
-	/* check for port access entity Ethernet type */
-//	pos = skb->data + 24;
+	/* check for port access entity Ethernet type
+	pos = skb->data + 24; */
 	pos = skb->data + hdrlen;
 	ethertype = (pos[6] << 8) | pos[7];
 	if (ethertype == ETH_P_PAE)
@@ -429,18 +429,18 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 	u8 tid;
 
 
-	//TO2DS and QoS
+	/* TO2DS and QoS */
 	if(((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS)&&IEEE80211_QOS_HAS_SEQ(fc)) {
 	  hdr_4addrqos = (struct ieee80211_hdr_4addrqos *)header;
 	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
 	  tid ++;
-	} else if(IEEE80211_QOS_HAS_SEQ(fc)) { //QoS
+	} else if(IEEE80211_QOS_HAS_SEQ(fc)) { /* QoS */
 	  hdr_3addrqos = (struct ieee80211_hdr_3addrqos *)header;
 	  tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
 	  tid ++;
-	} else { // no QoS
+	} else { /* no QoS */
 	  tid = 0;
 	}
 
@@ -457,7 +457,7 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 			if (!memcmp(entry->mac, mac, ETH_ALEN))
 				break;
 		}
-	//	if (memcmp(entry->mac, mac, ETH_ALEN)){
+		/* if (memcmp(entry->mac, mac, ETH_ALEN)){ */
 		if (p == &ieee->ibss_mac_hash[index]) {
 			entry = kmalloc(sizeof(struct ieee_ibss_seq), GFP_ATOMIC);
 			if (!entry) {
@@ -487,19 +487,20 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 		return 0;
 	}
 
-//	if(tid != 0) {
-//		printk(KERN_WARNING ":)))))))))))%x %x %x, fc(%x)\n", tid, *last_seq, seq, header->frame_ctl);
-//	}
+/*	if(tid != 0) {
+		printk(KERN_WARNING ":)))))))))))%x %x %x, fc(%x)\n", tid, *last_seq, seq, header->frame_ctl);
+	}
+*/
 	if ((*last_seq == seq) &&
 	    time_after(*last_time + IEEE_PACKET_RETRY_TIME, jiffies)) {
 		if (*last_frag == frag){
-			//printk(KERN_WARNING "[1] go drop!\n");
+			/* printk(KERN_WARNING "[1] go drop!\n"); */
 			goto drop;
 
 		}
 		if (*last_frag + 1 != frag)
-			/* out-of-order fragment */
-			//printk(KERN_WARNING "[2] go drop!\n");
+			/* out-of-order fragment
+			printk(KERN_WARNING "[2] go drop!\n"); */
 			goto drop;
 	} else
 		*last_seq = seq;
@@ -509,9 +510,9 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 	return 0;
 
 drop:
-//	BUG_ON(!(fc & IEEE80211_FCTL_RETRY));
-//	printk("DUP\n");
-
+/*	BUG_ON(!(fc & IEEE80211_FCTL_RETRY));
+	printk("DUP\n");
+*/
 	return 1;
 }
 
@@ -545,11 +546,11 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
 {
 	u8 i = 0 , j=0;
 	u16 ethertype;
-//	if(index > 1)
-//		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): hahahahhhh, We indicate packet from reorder list, index is %u\n",__func__,index);
+/*	if(index > 1)
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): hahahahhhh, We indicate packet from reorder list, index is %u\n",__func__,index); */
 	for(j = 0; j<index; j++)
 	{
-//added by amy for reorder
+/* added by amy for reorder */
 		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
 		for(i = 0; i<prxb->nr_subframes; i++) {
 			struct sk_buff *sub_skb = prxb->subframes[i];
@@ -573,19 +574,19 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
 				memcpy(skb_push(sub_skb, ETH_ALEN), prxb->src, ETH_ALEN);
 				memcpy(skb_push(sub_skb, ETH_ALEN), prxb->dst, ETH_ALEN);
 			}
-			//stats->rx_packets++;
-			//stats->rx_bytes += sub_skb->len;
+			/* stats->rx_packets++;
+			stats->rx_bytes += sub_skb->len; */
 
 		/* Indicat the packets to upper layer */
 			if (sub_skb) {
-				//printk("0skb_len(%d)\n", skb->len);
+				/* printk("0skb_len(%d)\n", skb->len); */
 				sub_skb->protocol = eth_type_trans(sub_skb, ieee->dev);
 				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
 				sub_skb->dev = ieee->dev;
-				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
-				//skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
+				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient
+				skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
 				ieee->last_rx_ps_time = jiffies;
-				//printk("1skb_len(%d)\n", skb->len);
+				/* printk("1skb_len(%d)\n", skb->len); */
 				netif_rx(sub_skb);
 			}
 		}
@@ -659,11 +660,11 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Packets indication!! IndicateSeq: %d, NewSeq: %d\n",\
 				pTS->RxIndicateSeq, SeqNum);
 		prxbIndicateArray[0] = prxb;
-//		printk("========================>%s(): SeqNum is %d\n",__func__,SeqNum);
+/*		printk("========================>%s(): SeqNum is %d\n",__func__,SeqNum); */
 		index = 1;
 	} else {
-		/* Current packet is going to be inserted into pending list.*/
-		//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
+		/* Current packet is going to be inserted into pending list.
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__); */
 		if(!list_empty(&ieee->RxReorder_Unused_List)) {
 			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(ieee->RxReorder_Unused_List.next,RX_REORDER_ENTRY,List);
 			list_del_init(&pReorderEntry->List);
@@ -671,7 +672,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 			/* Make a reorder entry and insert into a the packet list.*/
 			pReorderEntry->SeqNum = SeqNum;
 			pReorderEntry->prxb = prxb;
-	//		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pREorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum);
+			/* IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pREorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum); */
 
 			if(!AddReorderEntry(pTS, pReorderEntry)) {
 				IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): Duplicate packet is dropped!! IndicateSeq: %d, NewSeq: %d\n",
@@ -729,7 +730,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 
 			IEEE80211_DEBUG(IEEE80211_DL_REORDER,"Packets indication!! IndicateSeq: %d, NewSeq: %d\n",pTS->RxIndicateSeq, SeqNum);
 			prxbIndicateArray[index] = pReorderEntry->prxb;
-		//	printk("========================>%s(): pReorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum);
+			/* printk("========================>%s(): pReorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum); */
 			index++;
 
 			list_add_tail(&pReorderEntry->List,&ieee->RxReorder_Unused_List);
@@ -741,11 +742,11 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 
 	/* Handling pending timer. Set this timer to prevent from long time Rx buffering.*/
 	if(index>0) {
-		// Cancel previous pending timer.
-	//	del_timer_sync(&pTS->RxPktPendingTimer);
+		/* Cancel previous pending timer.
+		del_timer_sync(&pTS->RxPktPendingTimer); */
 		pTS->RxTimeoutIndicateSeq = 0xffff;
 
-		// Indicate packets
+		/* Indicate packets */
 		if(index>REORDER_WIN_SIZE){
 			IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): Rx Reorer buffer full!! \n");
 			return;
@@ -754,7 +755,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	}
 
 	if(bPktInBuf && pTS->RxTimeoutIndicateSeq==0xffff) {
-		// Set new pending timer.
+		/* Set new pending timer. */
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): SET rx timeout timer\n", __func__);
 		pTS->RxTimeoutIndicateSeq = pTS->RxIndicateSeq;
 		if(timer_pending(&pTS->RxPktPendingTimer))
@@ -795,8 +796,8 @@ static u8 parse_subframe(struct sk_buff *skb,
 	if(rx_stats->bContainHTC) {
 		LLCOffset += sHTCLng;
 	}
-	//printk("ChkLength = %d\n", LLCOffset);
-	// Null packet, don't indicate it to upper layer
+	/* printk("ChkLength = %d\n", LLCOffset);
+	 Null packet, don't indicate it to upper layer */
 	ChkLength = LLCOffset;/* + (Frame_WEP(frame)!=0 ?Adapter->MgntInfo.SecurityInfo.EncryptionHeadOverhead:0);*/
 
 	if (skb->len <= ChkLength)
@@ -814,7 +815,7 @@ static u8 parse_subframe(struct sk_buff *skb,
 
 		memcpy(rxb->src,src,ETH_ALEN);
 		memcpy(rxb->dst,dst,ETH_ALEN);
-		//IEEE80211_DEBUG_DATA(IEEE80211_DL_RX,skb->data,skb->len);
+		/* IEEE80211_DEBUG_DATA(IEEE80211_DL_RX,skb->data,skb->len); */
 		return 1;
 	} else {
 		rxb->nr_subframes = 0;
@@ -823,7 +824,7 @@ static u8 parse_subframe(struct sk_buff *skb,
 		while(skb->len > ETHERNET_HEADER_SIZE) {
 			/* Offset 12 denote 2 mac address */
 			nSubframe_Length = *((u16 *)(skb->data + 12));
-			//==m==>change the length order
+			/* ==m==>change the length order */
 			nSubframe_Length = (nSubframe_Length>>8) + (nSubframe_Length<<8);
 
 			if(skb->len<(ETHERNET_HEADER_SIZE + nSubframe_Length)) {
@@ -874,9 +875,9 @@ static u8 parse_subframe(struct sk_buff *skb,
 #ifdef JOHN_NOCPY
 		dev_kfree_skb(skb);
 #endif
-		//{just for debug added by david
-		//printk("AMSDU::rxb->nr_subframes = %d\n",rxb->nr_subframes);
-		//}
+		/* {just for debug added by david
+		printk("AMSDU::rxb->nr_subframes = %d\n",rxb->nr_subframes);
+		} */
 		return rxb->nr_subframes;
 	}
 }
@@ -889,7 +890,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 {
 	struct net_device *dev = ieee->dev;
 	struct ieee80211_hdr_4addr *hdr;
-	//struct ieee80211_hdr_3addrqos *hdr;
+	/* struct ieee80211_hdr_3addrqos *hdr; */
 
 	size_t hdrlen;
 	u16 fc, type, stype, sc;
@@ -897,12 +898,12 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	unsigned int frag;
 	u8 *payload;
 	u16 ethertype;
-	//added by amy for reorder
+	/* added by amy for reorder */
 	u8	TID = 0;
 	u16	SeqNum = 0;
 	PRX_TS_RECORD pTS = NULL;
-	//bool bIsAggregateFrame = false;
-	//added by amy for reorder
+	/* bool bIsAggregateFrame = false;
+	added by amy for reorder */
 #ifdef NOT_YET
 	struct net_device *wds = NULL;
 	struct sk_buff *skb2 = NULL;
@@ -911,7 +912,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	int from_assoc_ap = 0;
 	void *sta = NULL;
 #endif
-//	u16 qos_ctl = 0;
+	/* u16 qos_ctl = 0; */
 	u8 dst[ETH_ALEN];
 	u8 src[ETH_ALEN];
 	u8 bssid[ETH_ALEN];
@@ -920,7 +921,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	int i;
 	struct ieee80211_rxb *rxb = NULL;
-	// cheat the the hdr type
+	/* cheat the the hdr type */
 	hdr = (struct ieee80211_hdr_4addr *)skb->data;
 	stats = &ieee->stats;
 
@@ -946,7 +947,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		rx_stats->bContainHTC = 1;
 	}
 
-	//IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len);
+	/* IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len); */
 #ifdef NOT_YET
 	/* Put this code here so that we avoid duplicating it in all
 	 * Rx paths. - Jean II */
@@ -1013,7 +1014,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	if (skb->len < IEEE80211_DATA_HDR3_LEN)
 		goto rx_dropped;
 
-	// if QoS enabled, should check the sequence for each of the AC
+	/* if QoS enabled, should check the sequence for each of the AC */
 	if( (ieee->pHTInfo->bCurRxReorderEnable == false) || !ieee->current_network.qos_data.active|| !IsDataFrame(skb->data) || IsLegacyDataFrame(skb->data)){
 		if (is_duplicate_packet(ieee, hdr))
 		goto rx_dropped;
@@ -1022,7 +1023,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	else
 	{
 		PRX_TS_RECORD pRxTS = NULL;
-			//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): QOS ENABLE AND RECEIVE QOS DATA , we will get Ts, tid:%d\n",__func__, tid);
+			/* IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): QOS ENABLE AND RECEIVE QOS DATA , we will get Ts, tid:%d\n",__func__, tid); */
 		if(GetTs(
 				ieee,
 				(PTS_COMMON_INFO *) &pRxTS,
@@ -1032,7 +1033,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 				true))
 		{
 
-		//	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pRxTS->RxLastFragNum is %d,frag is %d,pRxTS->RxLastSeqNum is %d,seq is %d\n",__func__,pRxTS->RxLastFragNum,frag,pRxTS->RxLastSeqNum,WLAN_GET_SEQ_SEQ(sc));
+			/* IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pRxTS->RxLastFragNum is %d,frag is %d,pRxTS->RxLastSeqNum is %d,seq is %d\n",__func__,pRxTS->RxLastFragNum,frag,pRxTS->RxLastSeqNum,WLAN_GET_SEQ_SEQ(sc)); */
 			if ((fc & (1<<11)) &&
 			    (frag == pRxTS->RxLastFragNum) &&
 			    (WLAN_GET_SEQ_SEQ(sc) == pRxTS->RxLastSeqNum)) {
@@ -1053,7 +1054,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	if (type == IEEE80211_FTYPE_MGMT) {
 
 
-	//IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len);
+	/* IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len); */
 		if (ieee80211_rx_frame_mgmt(ieee, skb, rx_stats, type, stype))
 			goto rx_dropped;
 		else
@@ -1126,14 +1127,14 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		}
 	}
 #endif
-	//IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len);
-	/* Nullfunc frames may have PS-bit set, so they must be passed to
+	/* IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len);
+	 * Nullfunc frames may have PS-bit set, so they must be passed to
 	 * hostap_handle_sta_rx() before being dropped here. */
 	if (stype != IEEE80211_STYPE_DATA &&
 	    stype != IEEE80211_STYPE_DATA_CFACK &&
 	    stype != IEEE80211_STYPE_DATA_CFPOLL &&
 	    stype != IEEE80211_STYPE_DATA_CFACKPOLL&&
-	    stype != IEEE80211_STYPE_QOS_DATA//add by David,2006.8.4
+	    stype != IEEE80211_STYPE_QOS_DATA /* add by David,2006.8.4 */
 	    ) {
 		if (stype != IEEE80211_STYPE_NULLFUNC)
 			IEEE80211_DEBUG_DROP(
@@ -1158,9 +1159,9 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	hdr = (struct ieee80211_hdr_4addr *) skb->data;
 
-	/* skb: hdr + (possibly fragmented) plaintext payload */
-	// PR: FIXME: hostap has additional conditions in the "if" below:
-	// ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) &&
+	/* skb: hdr + (possibly fragmented) plaintext payload
+	 PR: FIXME: hostap has additional conditions in the "if" below:
+	 ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) && */
 	if ((frag != 0 || (fc & IEEE80211_FCTL_MOREFRAGS))) {
 		int flen;
 		struct sk_buff *frag_skb = ieee80211_frag_cache_get(ieee, hdr);
@@ -1222,7 +1223,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		goto rx_dropped;
 	}
 
-	//added by amy for AP roaming
+	/* added by amy for AP roaming */
 	ieee->LinkDetectInfo.NumRecvDataInPeriod++;
 	ieee->LinkDetectInfo.NumRxOkInPeriod++;
 
@@ -1271,8 +1272,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	if(ieee80211_is_eapol_frame(ieee, skb, hdrlen)) {
 		printk(KERN_WARNING "RX: IEEE802.1X EPAOL frame!\n");
 	}
-*/
-//added by amy for reorder
+
+added by amy for reorder */
 	if(ieee->current_network.qos_data.active && IsQoSDataFrame(skb->data)
 		&& !is_multicast_ether_addr(hdr->addr1))
 	{
@@ -1284,10 +1285,10 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 			ieee->bis_any_nonbepkts = true;
 		}
 	}
-//added by amy for reorder
-	/* skb: hdr + (possible reassembled) full plaintext payload */
+/* added by amy for reorder
+	skb: hdr + (possible reassembled) full plaintext payload */
 	payload = skb->data + hdrlen;
-	//ethertype = (payload[6] << 8) | payload[7];
+	/* ethertype = (payload[6] << 8) | payload[7]; */
 	rxb = kmalloc(sizeof(struct ieee80211_rxb), GFP_ATOMIC);
 	if(rxb == NULL)
 	{
@@ -1306,9 +1307,9 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		goto rx_dropped;
 	}
 
-//added by amy for reorder
+/* added by amy for reorder */
 	if(ieee->pHTInfo->bCurRxReorderEnable == false ||pTS == NULL){
-//added by amy for reorder
+/* added by amy for reorder */
 		for(i = 0; i<rxb->nr_subframes; i++) {
 			struct sk_buff *sub_skb = rxb->subframes[i];
 
@@ -1339,15 +1340,15 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 					stats->multicast++;
 				}
 
-				/* Indicat the packets to upper layer */
-				//printk("0skb_len(%d)\n", skb->len);
+				/* Indicat the packets to upper layer
+				printk("0skb_len(%d)\n", skb->len); */
 				sub_skb->protocol = eth_type_trans(sub_skb, dev);
 				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
 				sub_skb->dev = dev;
-				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
-				//skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
+				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient
+				skb->ip_summed = CHECKSUM_UNNECESSARY;  802.11 crc not sufficient */
 				ieee->last_rx_ps_time = jiffies;
-				//printk("1skb_len(%d)\n", skb->len);
+				/* printk("1skb_len(%d)\n", skb->len); */
 				netif_rx(sub_skb);
 			}
 		}
@@ -1477,8 +1478,8 @@ static int ieee80211_qos_convert_ac_to_parameters(struct
 	int i;
 	struct ieee80211_qos_ac_parameter *ac_params;
 	u8 aci;
-	//u8 cw_min;
-	//u8 cw_max;
+	/* u8 cw_min;
+	u8 cw_max; */
 
 	for (i = 0; i < QOS_QUEUE_NUM; i++) {
 		ac_params = &(param_elm->ac_params_record[i]);
@@ -1571,7 +1572,7 @@ static const char *get_info_element_string(u16 id)
 		MFIE_STRING(MEASURE_REPORT);
 		MFIE_STRING(QUIET);
 		MFIE_STRING(IBSS_DFS);
-	       // MFIE_STRING(ERP_INFO);
+	       /* MFIE_STRING(ERP_INFO); */
 		MFIE_STRING(RSN);
 		MFIE_STRING(RATES_EX);
 		MFIE_STRING(GENERIC);
@@ -1602,11 +1603,11 @@ static inline void ieee80211_extract_country_ie(
 			}
 		}
 
-		//
-		// 070305, rcnjko: I update country IE watch dog here because
-		// some AP (e.g. Cisco 1242) don't include country IE in their
-		// probe response frame.
-		//
+		/*
+		 070305, rcnjko: I update country IE watch dog here because
+		 some AP (e.g. Cisco 1242) don't include country IE in their
+		 probe response frame.
+		*/
 		if(IS_EQUAL_CIE_SRC(ieee, addr2) )
 		{
 			UPDATE_CIE_WATCHDOG(ieee);
@@ -1627,7 +1628,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 	u16	tmp_htinfo_len=0;
 	u16 ht_realtek_agg_len=0;
 	u8  ht_realtek_agg_buf[MAX_IE_LEN];
-//	u16 broadcom_len = 0;
+	/* u16 broadcom_len = 0; */
 #ifdef CONFIG_IEEE80211_DEBUG
 	char rates_str[64];
 	char *p;
@@ -1758,19 +1759,19 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 
 			offset = (info_element->data[2] >> 1)*2;
 
-			//printk("offset1:%x aid:%x\n",offset, ieee->assoc_id);
+			/* printk("offset1:%x aid:%x\n",offset, ieee->assoc_id); */
 
 			if(ieee->assoc_id < 8*offset ||
 				ieee->assoc_id > 8*(offset + info_element->len -3))
 
 				break;
 
-			offset = (ieee->assoc_id / 8) - offset;// + ((aid % 8)? 0 : 1) ;
+			offset = (ieee->assoc_id / 8) - offset; /*  + ((aid % 8)? 0 : 1) ; */
 
 			if(info_element->data[3+offset] & (1<<(ieee->assoc_id%8)))
 				network->dtim_data |= IEEE80211_DTIM_UCAST;
 
-			//IEEE80211_DEBUG_MGMT("MFIE_TYPE_TIM: partially ignored\n");
+			/* IEEE80211_DEBUG_MGMT("MFIE_TYPE_TIM: partially ignored\n"); */
 			break;
 
 		case MFIE_TYPE_ERP:
@@ -1819,7 +1820,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			}
 #endif
 
-			//for HTcap and HTinfo parameters
+			/* for HTcap and HTinfo parameters */
 			if(tmp_htcap_len == 0){
 				if(info_element->len >= 4 &&
 				   info_element->data[0] == 0x00 &&
@@ -1885,7 +1886,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 
 			}
 
-			//if(tmp_htcap_len !=0  ||  tmp_htinfo_len != 0)
+			/* if(tmp_htcap_len !=0  ||  tmp_htinfo_len != 0) */
 			{
 				if((info_element->len >= 3 &&
 					 info_element->data[0] == 0x00 &&
@@ -1913,7 +1914,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			}
 			else
 				network->ralink_cap_exist = false;
-			//added by amy for atheros AP
+			/* added by amy for atheros AP */
 			if((info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x03 &&
@@ -1938,7 +1939,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			}
 			else
 				network->cisco_cap_exist = false;
-			//added by amy for LEAP of cisco
+			/* added by amy for LEAP of cisco */
 			if(info_element->len > 4 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x40 &&
@@ -1954,9 +1955,9 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 					}
 					else
 						network->bCcxRmEnable = false;
-					//
-					// CCXv4 Table 59-1 MBSSID Masks.
-					//
+					/*
+					 CCXv4 Table 59-1 MBSSID Masks.
+					*/
 					network->MBssidMask = network->CcxRmState[1] & 0x07;
 					if(network->MBssidMask != 0)
 					{
@@ -2003,7 +2004,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			       network->rsn_ie_len);
 			break;
 
-			//HT related element.
+			/* HT related element. */
 		case MFIE_TYPE_HT_CAP:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_HT_CAP: %d bytes\n",
 					     info_element->len);
@@ -2014,9 +2015,9 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 					sizeof(network->bssht.bdHTCapBuf):tmp_htcap_len;
 				memcpy(network->bssht.bdHTCapBuf,info_element->data,network->bssht.bdHTCapLen);
 
-				//If peer is HT, but not WMM, call QosSetLegacyWMMParamWithHT()
-				// windows driver will update WMM parameters each beacon received once connected
-				// Linux driver is a bit different.
+				/* If peer is HT, but not WMM, call QosSetLegacyWMMParamWithHT()
+				 windows driver will update WMM parameters each beacon received once connected
+				 Linux driver is a bit different. */
 				network->bssht.bdSupportHT = true;
 			}
 			else
@@ -2043,9 +2044,9 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			{
 				network->bWithAironetIE = true;
 
-				// CCX 1 spec v1.13, A01.1 CKIP Negotiation (page23):
-				// "A Cisco access point advertises support for CKIP in beacon and probe response packets,
-				//  by adding an Aironet element and setting one or both of the CKIP negotiation bits."
+				/* CCX 1 spec v1.13, A01.1 CKIP Negotiation (page23):
+				 "A Cisco access point advertises support for CKIP in beacon and probe response packets,
+				  by adding an Aironet element and setting one or both of the CKIP negotiation bits." */
 				if(	(info_element->data[IE_CISCO_FLAG_POSITION]&SUPPORT_CKIP_MIC)	||
 					(info_element->data[IE_CISCO_FLAG_POSITION]&SUPPORT_CKIP_PK)	)
 				{
@@ -2070,8 +2071,8 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 		case MFIE_TYPE_COUNTRY:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_COUNTRY: %d bytes\n",
 					     info_element->len);
-			//printk("=====>Receive <%s> Country IE\n",network->ssid);
-			ieee80211_extract_country_ie(ieee, info_element, network, network->bssid);//addr2 is same as addr3 when from an AP
+			/* printk("=====>Receive <%s> Country IE\n",network->ssid); */
+			ieee80211_extract_country_ie(ieee, info_element, network, network->bssid);/* addr2 is same as addr3 when from an AP */
 			break;
 /* TODO */
 		default:
@@ -2106,7 +2107,7 @@ static inline u8 ieee80211_SignalStrengthTranslate(
 {
 	u8 RetSS;
 
-	// Step 1. Scale mapping.
+	/* Step 1. Scale mapping. */
 	if(CurrSS >= 71 && CurrSS <= 100)
 	{
 		RetSS = 90 + ((CurrSS - 70) / 3);
@@ -2147,21 +2148,21 @@ static inline u8 ieee80211_SignalStrengthTranslate(
 	{
 		RetSS = CurrSS;
 	}
-	//RT_TRACE(COMP_DBG, DBG_LOUD, ("##### After Mapping:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS));
+	/* RT_TRACE(COMP_DBG, DBG_LOUD, ("##### After Mapping:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS));
 
-	// Step 2. Smoothing.
-
-	//RT_TRACE(COMP_DBG, DBG_LOUD, ("$$$$$ After Smoothing:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS));
+	Step 2. Smoothing.
 
+	RT_TRACE(COMP_DBG, DBG_LOUD, ("$$$$$ After Smoothing:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS));
+	*/
 	return RetSS;
 }
 
 /* 0-100 index */
 static long ieee80211_translate_todbm(u8 signal_strength_index)
 {
-	long	signal_power; // in dBm.
+	long	signal_power; /* in dBm.
 
-	// Translate to dBm (x=0.5y-95).
+	 Translate to dBm (x=0.5y-95). */
 	signal_power = (long)((signal_strength_index + 1) >> 1);
 	signal_power -= 95;
 
@@ -2175,8 +2176,8 @@ static inline int ieee80211_network_init(
 	struct ieee80211_rx_stats *stats)
 {
 #ifdef CONFIG_IEEE80211_DEBUG
-	//char rates_str[64];
-	//char *p;
+	/* char rates_str[64];
+	char *p; */
 #endif
 
 	network->qos_data.active = 0;
@@ -2211,8 +2212,8 @@ static inline int ieee80211_network_init(
 #endif
 	network->CountryIeLen = 0;
 	memset(network->CountryIeBuf, 0, MAX_IE_LEN);
-//Initialize HT parameters
-	//ieee80211_ht_initialize(&network->bssht);
+/* Initialize HT parameters
+	ieee80211_ht_initialize(&network->bssht); */
 	HTInitializeBssDesc(&network->bssht);
 	if (stats->freq == IEEE80211_52GHZ_BAND) {
 		/* for A band (No DS info) */
@@ -2256,7 +2257,7 @@ static inline int ieee80211_network_init(
 		network->flags |= NETWORK_EMPTY_ESSID;
 
 	stats->signal = 30 + (stats->SignalStrength * 70) / 100;
-	//stats->signal = ieee80211_SignalStrengthTranslate(stats->signal);
+	/* stats->signal = ieee80211_SignalStrengthTranslate(stats->signal); */
 	stats->noise = ieee80211_translate_todbm((u8)(100-stats->signal)) -25;
 
 	memcpy(&network->stats, stats, sizeof(network->stats));
@@ -2271,11 +2272,11 @@ static inline int is_same_network(struct ieee80211_network *src,
 	 * and the capability field (in particular IBSS and BSS) all match.
 	 * We treat all <hidden> with the same BSSID and channel
 	 * as one network */
-	return //((src->ssid_len == dst->ssid_len) &&
+	return /* ((src->ssid_len == dst->ssid_len) && */
 		(((src->ssid_len == dst->ssid_len) || (ieee->iw_mode == IW_MODE_INFRA)) &&
 		(src->channel == dst->channel) &&
 		!memcmp(src->bssid, dst->bssid, ETH_ALEN) &&
-		//!memcmp(src->ssid, dst->ssid, src->ssid_len) &&
+		/* !memcmp(src->ssid, dst->ssid, src->ssid_len) && */
 		(!memcmp(src->ssid, dst->ssid, src->ssid_len) || (ieee->iw_mode == IW_MODE_INFRA)) &&
 		((src->capability & WLAN_CAPABILITY_IBSS) ==
 		(dst->capability & WLAN_CAPABILITY_IBSS)) &&
@@ -2338,10 +2339,10 @@ static inline void update_network(struct ieee80211_network *dst,
 	dst->rsn_ie_len = src->rsn_ie_len;
 
 	dst->last_scanned = jiffies;
-	/* qos related parameters */
-	//qos_active = src->qos_data.active;
+	/* qos related parameters 
+	qos_active = src->qos_data.active; */
 	qos_active = dst->qos_data.active;
-	//old_param = dst->qos_data.old_param_count;
+	/*old_param = dst->qos_data.old_param_count; */
 	old_param = dst->qos_data.param_count;
 	if(dst->flags & NETWORK_HAS_QOS_MASK)
 		memcpy(&dst->qos_data, &src->qos_data,
@@ -2365,14 +2366,14 @@ static inline void update_network(struct ieee80211_network *dst,
 	dst->qos_data.old_param_count = old_param;
 
 	/* dst->last_associate is not overwritten */
-	dst->wmm_info = src->wmm_info; //sure to exist in beacon or probe response frame.
+	dst->wmm_info = src->wmm_info; /* sure to exist in beacon or probe response frame. */
 	if(src->wmm_param[0].ac_aci_acm_aifsn|| \
 	   src->wmm_param[1].ac_aci_acm_aifsn|| \
 	   src->wmm_param[2].ac_aci_acm_aifsn|| \
 	   src->wmm_param[3].ac_aci_acm_aifsn) {
 	  memcpy(dst->wmm_param, src->wmm_param, WME_AC_PRAM_LEN);
 	}
-	//dst->QoS_Enable = src->QoS_Enable;
+	/* dst->QoS_Enable = src->QoS_Enable; */
 #ifdef THOMAS_TURBO
 	dst->Turbo_Enable = src->Turbo_Enable;
 #endif
@@ -2380,7 +2381,7 @@ static inline void update_network(struct ieee80211_network *dst,
 	dst->CountryIeLen = src->CountryIeLen;
 	memcpy(dst->CountryIeBuf, src->CountryIeBuf, src->CountryIeLen);
 
-	//added by amy for LEAP
+	/* added by amy for LEAP */
 	dst->bWithAironetIE = src->bWithAironetIE;
 	dst->bCkipSupported = src->bCkipSupported;
 	memcpy(dst->CcxRmState, src->CcxRmState, 2);
@@ -2411,7 +2412,7 @@ static inline void ieee80211_process_probe_response(
 #endif
 	unsigned long flags;
 	short renew;
-	//u8 wmm_info;
+	/* u8 wmm_info; */
 
 	memset(&network, 0, sizeof(struct ieee80211_network));
 	IEEE80211_DEBUG_SCAN(
@@ -2446,20 +2447,20 @@ static inline void ieee80211_process_probe_response(
 		return;
 	}
 
-	// For Asus EeePc request,
-	// (1) if wireless adapter receive get any 802.11d country code in AP beacon,
-	//	   wireless adapter should follow the country code.
-	// (2)  If there is no any country code in beacon,
-	//       then wireless adapter should do active scan from ch1~11 and
-	//       passive scan from ch12~14
-
+	/* For Asus EeePc request,
+	 (1) if wireless adapter receive get any 802.11d country code in AP beacon,
+		   wireless adapter should follow the country code.
+	 (2)  If there is no any country code in beacon,
+	       then wireless adapter should do active scan from ch1~11 and
+	       passive scan from ch12~14
+	*/
 	if (!IsLegalChannel(ieee, network.channel))
 		return;
 	if(ieee->bGlobalDomain)
 	{
 		if (WLAN_FC_GET_STYPE(beacon->header.frame_ctl) == IEEE80211_STYPE_PROBE_RESP)
 		{
-			// Case 1: Country code
+			/* Case 1: Country code */
 			if(IS_COUNTRY_IE_VALID(ieee) )
 			{
 				if (!IsLegalChannel(ieee, network.channel)) {
@@ -2467,10 +2468,10 @@ static inline void ieee80211_process_probe_response(
 					return;
 				}
 			}
-			// Case 2: No any country code.
+			/* Case 2: No any country code. */
 			else
 			{
-				// Filter over channel ch12~14
+				/* Filter over channel ch12~14 */
 				if(network.channel > 11)
 				{
 					printk("GetScanInfo(): For Global Domain, filter probe response at channel(%d).\n", network.channel);
@@ -2480,7 +2481,7 @@ static inline void ieee80211_process_probe_response(
 		}
 		else
 		{
-			// Case 1: Country code
+			/* Case 1: Country code */
 			if(IS_COUNTRY_IE_VALID(ieee) )
 			{
 				if (!IsLegalChannel(ieee, network.channel)) {
@@ -2488,10 +2489,10 @@ static inline void ieee80211_process_probe_response(
 					return;
 				}
 			}
-			// Case 2: No any country code.
+			/* Case 2: No any country code. */
 			else
 			{
-				// Filter over channel ch12~14
+				/* Filter over channel ch12~14 */
 				if(network.channel > 14)
 				{
 					printk("GetScanInfo(): For Global Domain, filter beacon at channel(%d).\n",network.channel);
@@ -2527,7 +2528,7 @@ static inline void ieee80211_process_probe_response(
 			if(ieee->state == IEEE80211_LINKED)
 				ieee->LinkDetectInfo.NumRecvBcnInPeriod++;
 		}
-		else //hidden AP
+		else /* hidden AP */
 			network.flags = (~NETWORK_EMPTY_ESSID & network.flags)|(NETWORK_EMPTY_ESSID & ieee->current_network.flags);
 	}
 
@@ -2586,16 +2587,16 @@ static inline void ieee80211_process_probe_response(
 		 * net and call the new_net handler
 		 */
 		renew = !time_after(target->last_scanned + ieee->scan_age, jiffies);
-		//YJ,add,080819,for hidden ap
+		/* YJ,add,080819,for hidden ap */
 		if(is_beacon(beacon->header.frame_ctl) == 0)
 			network.flags = (~NETWORK_EMPTY_ESSID & network.flags)|(NETWORK_EMPTY_ESSID & target->flags);
-		//if(strncmp(network.ssid, "linksys-c",9) == 0)
-		//	printk("====>2 network.ssid=%s FLAG=%d target.ssid=%s FLAG=%d\n", network.ssid, network.flags, target->ssid, target->flags);
+		/* if(strncmp(network.ssid, "linksys-c",9) == 0)
+			printk("====>2 network.ssid=%s FLAG=%d target.ssid=%s FLAG=%d\n", network.ssid, network.flags, target->ssid, target->flags); */
 		if(((network.flags & NETWORK_EMPTY_ESSID) == NETWORK_EMPTY_ESSID) \
 		    && (((network.ssid_len > 0) && (strncmp(target->ssid, network.ssid, network.ssid_len)))\
 		    ||((ieee->current_network.ssid_len == network.ssid_len)&&(strncmp(ieee->current_network.ssid, network.ssid, network.ssid_len) == 0)&&(ieee->state == IEEE80211_NOLINK))))
 			renew = 1;
-		//YJ,add,080819,for hidden ap,end
+		/* YJ,add,080819,for hidden ap,end */
 
 		update_network(target, &network);
 		if(renew && (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE))
-- 
1.9.1



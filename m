X-GM-THRID: 6204103069755506688
X-Received: by 10.112.144.99 with SMTP id sl3mr3846861lbb.12.1444505311848;
        Sat, 10 Oct 2015 12:28:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.197 with SMTP id c5ls580015wiy.33.canary; Sat, 10 Oct
 2015 12:28:31 -0700 (PDT)
X-Received: by 10.194.240.230 with SMTP id wd6mr3915702wjc.0.1444505311435;
        Sat, 10 Oct 2015 12:28:31 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id m4si174609wib.0.2015.10.10.12.28.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 12:28:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id lk2so105773062wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 12:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=lr3iaW6/f9Qa0Ne0GYbX+G9R/oAJwxqq2nItWR+VLXk=;
        b=xYUzat6hCNkfKaiWec8fT3PC635rtNq/Vr+BJs21SxnZ03qzRTh/8y1WnYThbWTlNB
         8HWTFR3DQ79WkWEB14tcp6oaxf7cgFvDGKDMx6E8qQEo3u51F/aC4A8We9UdeGo5tPEX
         QMgScIiLsoua/You6KlWKt+UDHxgRJYo4Jxv0hX0RAtSw/hzbi63Sy9z7aYwdOHOkYai
         4gt5/rvfiLdYjoPvGYKsEQJD1vdo/E+CyNjJwUkqTaniu51EHBXENmNfz3QFa2CrFomc
         6nHV6nWnrbBPRfH5PlDsMP5uWPci8Jqx5Abfvl11wcCZc9btvmV9XJgBQXY+S2jQybJH
         h5Xg==
X-Received: by 10.194.112.104 with SMTP id ip8mr25167767wjb.85.1444505311315;
        Sat, 10 Oct 2015 12:28:31 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.101.153])
        by smtp.gmail.com with ESMTPSA id h7sm9673447wjz.7.2015.10.10.12.28.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 12:28:30 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 1/6] staging: rtl8192u: Fix spacing errors
Date: Sat, 10 Oct 2015 22:27:43 +0300
Message-Id: <3ea9e0e378e020a8bd1c4265b5d76b9507883e64.1444500823.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>

Fix multiple checkpatch spacing errors

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 382 +++++++++++-----------
 1 file changed, 191 insertions(+), 191 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 0aa9021..1e4604c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -106,16 +106,16 @@ ieee80211_frag_cache_get(struct ieee80211_device *ieee,
 	struct rtl_80211_hdr_4addrqos *hdr_4addrqos;
 	u8 tid;
 
-	if (((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS)&&IEEE80211_QOS_HAS_SEQ(fc)) {
+	if (((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
 	  hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)hdr;
 	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
-	  tid ++;
+	  tid++;
 	} else if (IEEE80211_QOS_HAS_SEQ(fc)) {
 	  hdr_3addrqos = (struct rtl_80211_hdr_3addrqos *)hdr;
 	  tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
-	  tid ++;
+	  tid++;
 	} else {
 	  tid = 0;
 	}
@@ -149,7 +149,7 @@ ieee80211_frag_cache_get(struct ieee80211_device *ieee,
 	} else {
 		/* received a fragment of a frame for which the head fragment
 		 * should have already been received */
-		entry = ieee80211_frag_cache_find(ieee, seq, frag, tid,hdr->addr2,
+		entry = ieee80211_frag_cache_find(ieee, seq, frag, tid, hdr->addr2,
 						  hdr->addr1);
 		if (entry != NULL) {
 			entry->last_frag = frag;
@@ -173,16 +173,16 @@ static int ieee80211_frag_cache_invalidate(struct ieee80211_device *ieee,
 	struct rtl_80211_hdr_4addrqos *hdr_4addrqos;
 	u8 tid;
 
-	if(((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS)&&IEEE80211_QOS_HAS_SEQ(fc)) {
+	if (((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
 	  hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)hdr;
 	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
-	  tid ++;
+	  tid++;
 	} else if (IEEE80211_QOS_HAS_SEQ(fc)) {
 	  hdr_3addrqos = (struct rtl_80211_hdr_3addrqos *)hdr;
 	  tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
-	  tid ++;
+	  tid++;
 	} else {
 	  tid = 0;
 	}
@@ -220,7 +220,7 @@ ieee80211_rx_frame_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb,
 	struct rtl_80211_hdr_3addr *hdr = (struct rtl_80211_hdr_3addr *)skb->data;
 
 	rx_stats->len = skb->len;
-	ieee80211_rx_mgt(ieee,(struct rtl_80211_hdr_4addr *)skb->data,rx_stats);
+	ieee80211_rx_mgt(ieee, (struct rtl_80211_hdr_4addr *)skb->data, rx_stats);
 	/* if ((ieee->state == IEEE80211_LINKED) && (memcmp(hdr->addr3, ieee->current_network.bssid, ETH_ALEN))) */
 	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN)))/* use ADDR1 to perform address matching for Management frames */
 	{
@@ -345,7 +345,7 @@ ieee80211_rx_frame_decrypt(struct ieee80211_device *ieee, struct sk_buff *skb,
 		return 0;
 	if (ieee->hwsec_active)
 	{
-		cb_desc *tcb_desc = (cb_desc *)(skb->cb+ MAX_DEV_ADDR_SIZE);
+		cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 		tcb_desc->bHwSec = 1;
 	}
 	hdr = (struct rtl_80211_hdr_4addr *) skb->data;
@@ -392,7 +392,7 @@ ieee80211_rx_frame_decrypt_msdu(struct ieee80211_device *ieee, struct sk_buff *s
 		return 0;
 	if (ieee->hwsec_active)
 	{
-		cb_desc *tcb_desc = (cb_desc *)(skb->cb+ MAX_DEV_ADDR_SIZE);
+		cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 		tcb_desc->bHwSec = 1;
 	}
 
@@ -430,16 +430,16 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 
 
 	//TO2DS and QoS
-	if(((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS)&&IEEE80211_QOS_HAS_SEQ(fc)) {
+	if (((fc & IEEE80211_FCTL_DSTODS) == IEEE80211_FCTL_DSTODS) && IEEE80211_QOS_HAS_SEQ(fc)) {
 	  hdr_4addrqos = (struct rtl_80211_hdr_4addrqos *)header;
 	  tid = le16_to_cpu(hdr_4addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
-	  tid ++;
-	} else if(IEEE80211_QOS_HAS_SEQ(fc)) { //QoS
+	  tid++;
+	} else if (IEEE80211_QOS_HAS_SEQ(fc)) { //QoS
 	  hdr_3addrqos = (struct rtl_80211_hdr_3addrqos *)header;
 	  tid = le16_to_cpu(hdr_3addrqos->qos_ctl) & IEEE80211_QCTL_TID;
 	  tid = UP2AC(tid);
-	  tid ++;
+	  tid++;
 	} else { // no QoS
 	  tid = 0;
 	}
@@ -457,7 +457,7 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 			if (!memcmp(entry->mac, mac, ETH_ALEN))
 				break;
 		}
-	//	if (memcmp(entry->mac, mac, ETH_ALEN)){
+	//	if (memcmp(entry->mac, mac, ETH_ALEN)) {
 		if (p == &ieee->ibss_mac_hash[index]) {
 			entry = kmalloc(sizeof(struct ieee_ibss_seq), GFP_ATOMIC);
 			if (!entry) {
@@ -487,12 +487,12 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 		return 0;
 	}
 
-//	if(tid != 0) {
+//	if (tid != 0) {
 //		printk(KERN_WARNING ":)))))))))))%x %x %x, fc(%x)\n", tid, *last_seq, seq, header->frame_ctl);
 //	}
 	if ((*last_seq == seq) &&
 	    time_after(*last_time + IEEE_PACKET_RETRY_TIME, jiffies)) {
-		if (*last_frag == frag){
+		if (*last_frag == frag) {
 			//printk(KERN_WARNING "[1] go drop!\n");
 			goto drop;
 
@@ -518,13 +518,13 @@ drop:
 static bool AddReorderEntry(PRX_TS_RECORD pTS, PRX_REORDER_ENTRY pReorderEntry)
 {
 	struct list_head *pList = &pTS->RxPendingPktList;
-	while(pList->next != &pTS->RxPendingPktList)
+	while (pList->next != &pTS->RxPendingPktList)
 	{
-		if( SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
+		if (SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum))
 		{
 			pList = pList->next;
 		}
-		else if( SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
+		else if (SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum))
 		{
 			return false;
 		}
@@ -541,17 +541,17 @@ static bool AddReorderEntry(PRX_TS_RECORD pTS, PRX_REORDER_ENTRY pReorderEntry)
 	return true;
 }
 
-void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_rxb **prxbIndicateArray,u8  index)
+void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_rxb **prxbIndicateArray, u8  index)
 {
-	u8 i = 0 , j=0;
+	u8 i = 0, j = 0;
 	u16 ethertype;
-//	if(index > 1)
-//		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): hahahahhhh, We indicate packet from reorder list, index is %u\n",__func__,index);
-	for(j = 0; j<index; j++)
+//	if (index > 1)
+//		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): hahahahhhh, We indicate packet from reorder list, index is %u\n", __func__,index);
+	for (j = 0; j < index; j++)
 	{
 //added by amy for reorder
 		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
-		for(i = 0; i<prxb->nr_subframes; i++) {
+		for (i = 0; i < prxb->nr_subframes; i++) {
 			struct sk_buff *sub_skb = prxb->subframes[i];
 
 		/* convert hdr + possible LLC headers into Ethernet header */
@@ -603,10 +603,10 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	PRX_REORDER_ENTRY	pReorderEntry = NULL;
 	struct ieee80211_rxb *prxbIndicateArray[REORDER_WIN_SIZE];
 	u8			WinSize = pHTInfo->RxReorderWinSize;
-	u16			WinEnd = (pTS->RxIndicateSeq + WinSize -1)%4096;
+	u16			WinEnd = (pTS->RxIndicateSeq + WinSize - 1)%4096;
 	u8			index = 0;
 	bool			bMatchWinStart = false, bPktInBuf = false;
-	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
+	IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): Seq is %d, pTS->RxIndicateSeq is %d, WinSize is %d\n", __func__, SeqNum, pTS->RxIndicateSeq, WinSize);
 	/* Rx Reorder initialize condition.*/
 	if (pTS->RxIndicateSeq == 0xffff) {
 		pTS->RxIndicateSeq = SeqNum;
@@ -614,12 +614,12 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 
 	/* Drop out the packet which SeqNum is smaller than WinStart */
 	if (SN_LESS(SeqNum, pTS->RxIndicateSeq)) {
-		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"Packet Drop! IndicateSeq: %d, NewSeq: %d\n",
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Packet Drop! IndicateSeq: %d, NewSeq: %d\n",
 				 pTS->RxIndicateSeq, SeqNum);
 		pHTInfo->RxReorderDropCounter++;
 		{
 			int i;
-			for(i =0; i < prxb->nr_subframes; i++) {
+			for (i = 0; i < prxb->nr_subframes; i++) {
 				dev_kfree_skb(prxb->subframes[i]);
 			}
 			kfree(prxb);
@@ -633,16 +633,16 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	 * 1. Incoming SeqNum is equal to WinStart =>Window shift 1
 	 * 2. Incoming SeqNum is larger than the WinEnd => Window shift N
 	 */
-	if(SN_EQUAL(SeqNum, pTS->RxIndicateSeq)) {
+	if (SN_EQUAL(SeqNum, pTS->RxIndicateSeq)) {
 		pTS->RxIndicateSeq = (pTS->RxIndicateSeq + 1) % 4096;
 		bMatchWinStart = true;
-	} else if(SN_LESS(WinEnd, SeqNum)) {
-		if(SeqNum >= (WinSize - 1)) {
-			pTS->RxIndicateSeq = SeqNum + 1 -WinSize;
+	} else if (SN_LESS(WinEnd, SeqNum)) {
+		if (SeqNum >= (WinSize - 1)) {
+			pTS->RxIndicateSeq = SeqNum + 1 - WinSize;
 		} else {
-			pTS->RxIndicateSeq = 4095 - (WinSize - (SeqNum +1)) + 1;
+			pTS->RxIndicateSeq = 4095 - (WinSize - (SeqNum + 1)) + 1;
 		}
-		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Window Shift! IndicateSeq: %d, NewSeq: %d\n",pTS->RxIndicateSeq, SeqNum);
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Window Shift! IndicateSeq: %d, NewSeq: %d\n", pTS->RxIndicateSeq, SeqNum);
 	}
 
 	/*
@@ -654,32 +654,32 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	 * 1. All packets with SeqNum smaller than WinStart => Indicate
 	 * 2. All packets with SeqNum larger than or equal to WinStart => Buffer it.
 	 */
-	if(bMatchWinStart) {
+	if (bMatchWinStart) {
 		/* Current packet is going to be indicated.*/
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Packets indication!! IndicateSeq: %d, NewSeq: %d\n",\
 				pTS->RxIndicateSeq, SeqNum);
 		prxbIndicateArray[0] = prxb;
-//		printk("========================>%s(): SeqNum is %d\n",__func__,SeqNum);
+//		printk("========================>%s(): SeqNum is %d\n", __func__, seqNum);
 		index = 1;
 	} else {
 		/* Current packet is going to be inserted into pending list.*/
-		//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
-		if(!list_empty(&ieee->RxReorder_Unused_List)) {
-			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(ieee->RxReorder_Unused_List.next,RX_REORDER_ENTRY,List);
+		//IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): We RX no ordered packed, insert to ordered list\n", __func__);
+		if (!list_empty(&ieee->RxReorder_Unused_List)) {
+			pReorderEntry = (PRX_REORDER_ENTRY)list_entry(ieee->RxReorder_Unused_List.next, RX_REORDER_ENTRY, List);
 			list_del_init(&pReorderEntry->List);
 
 			/* Make a reorder entry and insert into a the packet list.*/
 			pReorderEntry->SeqNum = SeqNum;
 			pReorderEntry->prxb = prxb;
-	//		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pREorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum);
+	//		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): pREorderEntry->SeqNum is %d\n", __func__,pReorderEntry->SeqNum);
 
-			if(!AddReorderEntry(pTS, pReorderEntry)) {
+			if (!AddReorderEntry(pTS, pReorderEntry)) {
 				IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): Duplicate packet is dropped!! IndicateSeq: %d, NewSeq: %d\n",
 					__func__, pTS->RxIndicateSeq, SeqNum);
-				list_add_tail(&pReorderEntry->List,&ieee->RxReorder_Unused_List);
+				list_add_tail(&pReorderEntry->List, &ieee->RxReorder_Unused_List);
 				{
 					int i;
-					for(i =0; i < prxb->nr_subframes; i++) {
+					for (i = 0; i < prxb->nr_subframes; i++) {
 						dev_kfree_skb(prxb->subframes[i]);
 					}
 					kfree(prxb);
@@ -687,7 +687,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 				}
 			} else {
 				IEEE80211_DEBUG(IEEE80211_DL_REORDER,
-					 "Pkt insert into buffer!! IndicateSeq: %d, NewSeq: %d\n",pTS->RxIndicateSeq, SeqNum);
+					 "Pkt insert into buffer!! IndicateSeq: %d, NewSeq: %d\n", pTS->RxIndicateSeq, SeqNum);
 			}
 		}
 		else {
@@ -699,7 +699,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 			IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): There is no reorder entry!! Packet is dropped!!\n");
 			{
 				int i;
-				for(i =0; i < prxb->nr_subframes; i++) {
+				for (i = 0; i < prxb->nr_subframes; i++) {
 					dev_kfree_skb(prxb->subframes[i]);
 				}
 				kfree(prxb);
@@ -709,30 +709,30 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	}
 
 	/* Check if there is any packet need indicate.*/
-	while(!list_empty(&pTS->RxPendingPktList)) {
-		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
-		pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pTS->RxPendingPktList.prev,RX_REORDER_ENTRY,List);
+	while (!list_empty(&pTS->RxPendingPktList)) {
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): start RREORDER indicate\n", __func__);
+		pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pTS->RxPendingPktList.prev, RX_REORDER_ENTRY, List);
 		if (SN_LESS(pReorderEntry->SeqNum, pTS->RxIndicateSeq) ||
 		    SN_EQUAL(pReorderEntry->SeqNum, pTS->RxIndicateSeq))
 		{
 			/* This protect buffer from overflow. */
 			if (index >= REORDER_WIN_SIZE) {
-				IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): Buffer overflow!! \n");
+				IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): Buffer overflow!!\n");
 				bPktInBuf = true;
 				break;
 			}
 
 			list_del_init(&pReorderEntry->List);
 
-			if(SN_EQUAL(pReorderEntry->SeqNum, pTS->RxIndicateSeq))
+			if (SN_EQUAL(pReorderEntry->SeqNum, pTS->RxIndicateSeq))
 				pTS->RxIndicateSeq = (pTS->RxIndicateSeq + 1) % 4096;
 
-			IEEE80211_DEBUG(IEEE80211_DL_REORDER,"Packets indication!! IndicateSeq: %d, NewSeq: %d\n",pTS->RxIndicateSeq, SeqNum);
+			IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Packets indication!! IndicateSeq: %d, NewSeq: %d\n", pTS->RxIndicateSeq, SeqNum);
 			prxbIndicateArray[index] = pReorderEntry->prxb;
-		//	printk("========================>%s(): pReorderEntry->SeqNum is %d\n",__func__,pReorderEntry->SeqNum);
+		//	printk("========================>%s(): pReorderEntry->SeqNum is %d\n", __func__,pReorderEntry->SeqNum);
 			index++;
 
-			list_add_tail(&pReorderEntry->List,&ieee->RxReorder_Unused_List);
+			list_add_tail(&pReorderEntry->List, &ieee->RxReorder_Unused_List);
 		} else {
 			bPktInBuf = true;
 			break;
@@ -740,24 +740,24 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	}
 
 	/* Handling pending timer. Set this timer to prevent from long time Rx buffering.*/
-	if (index>0) {
+	if (index > 0) {
 		// Cancel previous pending timer.
 	//	del_timer_sync(&pTS->RxPktPendingTimer);
 		pTS->RxTimeoutIndicateSeq = 0xffff;
 
 		// Indicate packets
-		if(index>REORDER_WIN_SIZE){
-			IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): Rx Reorer buffer full!! \n");
+		if (index > REORDER_WIN_SIZE) {
+			IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): Rx Reorer buffer full!!\n");
 			return;
 		}
 		ieee80211_indicate_packets(ieee, prxbIndicateArray, index);
 	}
 
-	if (bPktInBuf && pTS->RxTimeoutIndicateSeq==0xffff) {
+	if (bPktInBuf && pTS->RxTimeoutIndicateSeq == 0xffff) {
 		// Set new pending timer.
-		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): SET rx timeout timer\n", __func__);
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): SET rx timeout timer\n", __func__);
 		pTS->RxTimeoutIndicateSeq = pTS->RxIndicateSeq;
-		if(timer_pending(&pTS->RxPktPendingTimer))
+		if (timer_pending(&pTS->RxPktPendingTimer))
 			del_timer_sync(&pTS->RxPktPendingTimer);
 		pTS->RxPktPendingTimer.expires = jiffies + MSECS(pHTInfo->RxReorderPendingTime);
 		add_timer(&pTS->RxPktPendingTimer);
@@ -771,19 +771,19 @@ static u8 parse_subframe(struct sk_buff *skb,
 	struct rtl_80211_hdr_3addr  *hdr = (struct rtl_80211_hdr_3addr *)skb->data;
 	u16		fc = le16_to_cpu(hdr->frame_ctl);
 
-	u16		LLCOffset= sizeof(struct rtl_80211_hdr_3addr);
+	u16		LLCOffset = sizeof(struct rtl_80211_hdr_3addr);
 	u16		ChkLength;
 	bool		bIsAggregateFrame = false;
 	u16		nSubframe_Length;
 	u8		nPadding_Length = 0;
-	u16		SeqNum=0;
+	u16		SeqNum = 0;
 
 	struct sk_buff *sub_skb;
 	u8             *data_ptr;
 	/* just for debug purpose */
 	SeqNum = WLAN_GET_SEQ_SEQ(le16_to_cpu(hdr->seq_ctl));
 
-	if ((IEEE80211_QOS_HAS_SEQ(fc))&&\
+	if ((IEEE80211_QOS_HAS_SEQ(fc)) && \
 			(((frameqos *)(skb->data + IEEE80211_3ADDR_LEN))->field.reserved)) {
 		bIsAggregateFrame = true;
 	}
@@ -804,7 +804,7 @@ static u8 parse_subframe(struct sk_buff *skb,
 
 	skb_pull(skb, LLCOffset);
 
-	if(!bIsAggregateFrame) {
+	if (!bIsAggregateFrame) {
 		rxb->nr_subframes = 1;
 #ifdef JOHN_NOCPY
 		rxb->subframes[0] = skb;
@@ -812,26 +812,26 @@ static u8 parse_subframe(struct sk_buff *skb,
 		rxb->subframes[0] = skb_copy(skb, GFP_ATOMIC);
 #endif
 
-		memcpy(rxb->src,src,ETH_ALEN);
-		memcpy(rxb->dst,dst,ETH_ALEN);
-		//IEEE80211_DEBUG_DATA(IEEE80211_DL_RX,skb->data,skb->len);
+		memcpy(rxb->src, src, ETH_ALEN);
+		memcpy(rxb->dst, dst, ETH_ALEN);
+		//IEEE80211_DEBUG_DATA(IEEE80211_DL_RX, skb->data, skb->len);
 		return 1;
 	} else {
 		rxb->nr_subframes = 0;
-		memcpy(rxb->src,src,ETH_ALEN);
-		memcpy(rxb->dst,dst,ETH_ALEN);
-		while(skb->len > ETHERNET_HEADER_SIZE) {
+		memcpy(rxb->src, src, ETH_ALEN);
+		memcpy(rxb->dst, dst, ETH_ALEN);
+		while (skb->len > ETHERNET_HEADER_SIZE) {
 			/* Offset 12 denote 2 mac address */
 			nSubframe_Length = *((u16 *)(skb->data + 12));
 			//==m==>change the length order
 			nSubframe_Length = (nSubframe_Length>>8) + (nSubframe_Length<<8);
 
-			if (skb->len<(ETHERNET_HEADER_SIZE + nSubframe_Length)) {
+			if (skb->len < (ETHERNET_HEADER_SIZE + nSubframe_Length)) {
 				printk("%s: A-MSDU parse error!! pRfd->nTotalSubframe : %d\n",\
 						__func__, rxb->nr_subframes);
-				printk("%s: A-MSDU parse error!! Subframe Length: %d\n",__func__, nSubframe_Length);
-				printk("nRemain_Length is %d and nSubframe_Length is : %d\n",skb->len,nSubframe_Length);
-				printk("The Packet SeqNum is %d\n",SeqNum);
+				printk("%s: A-MSDU parse error!! Subframe Length: %d\n", __func__, nSubframe_Length);
+				printk("nRemain_Length is %d and nSubframe_Length is : %d\n", skb->len, nSubframe_Length);
+				printk("The Packet SeqNum is %d\n", SeqNum);
 				return 0;
 			}
 
@@ -940,7 +940,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	if (HTCCheck(ieee, skb->data))
 	{
-		if(net_ratelimit())
+		if (net_ratelimit())
 		printk("find HTCControl\n");
 		hdrlen += 4;
 		rx_stats->bContainHTC = true;
@@ -1014,7 +1014,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		goto rx_dropped;
 
 	// if QoS enabled, should check the sequence for each of the AC
-	if ((!ieee->pHTInfo->bCurRxReorderEnable) || !ieee->current_network.qos_data.active|| !IsDataFrame(skb->data) || IsLegacyDataFrame(skb->data)) {
+	if ((!ieee->pHTInfo->bCurRxReorderEnable) || !ieee->current_network.qos_data.active || !IsDataFrame(skb->data) || IsLegacyDataFrame(skb->data)) {
 		if (is_duplicate_packet(ieee, hdr))
 		goto rx_dropped;
 
@@ -1022,8 +1022,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	else
 	{
 		PRX_TS_RECORD pRxTS = NULL;
-			//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): QOS ENABLE AND RECEIVE QOS DATA , we will get Ts, tid:%d\n",__func__, tid);
-		if(GetTs(
+			//IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): QOS ENABLE AND RECEIVE QOS DATA , we will get Ts, tid:%d\n", __func__, tid);
+		if (GetTs(
 				ieee,
 				(PTS_COMMON_INFO *) &pRxTS,
 				hdr->addr2,
@@ -1032,7 +1032,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 				true))
 		{
 
-		//	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): pRxTS->RxLastFragNum is %d,frag is %d,pRxTS->RxLastSeqNum is %d,seq is %d\n",__func__,pRxTS->RxLastFragNum,frag,pRxTS->RxLastSeqNum,WLAN_GET_SEQ_SEQ(sc));
+		//	IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): pRxTS->RxLastFragNum is %d,frag is %d,pRxTS->RxLastSeqNum is %d, seq is %d\n", __func__,pRxTS->RxLastFragNum,frag,pRxTS->RxLastSeqNum,WLAN_GET_SEQ_SEQ(sc));
 			if ((fc & (1<<11)) &&
 			    (frag == pRxTS->RxLastFragNum) &&
 			    (WLAN_GET_SEQ_SEQ(sc) == pRxTS->RxLastSeqNum)) {
@@ -1046,7 +1046,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		}
 		else
 		{
-			IEEE80211_DEBUG(IEEE80211_DL_ERR, "%s(): No TS!! Skip the check!!\n",__func__);
+			IEEE80211_DEBUG(IEEE80211_DL_ERR, "%s(): No TS!! Skip the check!!\n", __func__);
 			goto rx_dropped;
 		}
 	}
@@ -1132,9 +1132,9 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	if (stype != IEEE80211_STYPE_DATA &&
 	    stype != IEEE80211_STYPE_DATA_CFACK &&
 	    stype != IEEE80211_STYPE_DATA_CFPOLL &&
-	    stype != IEEE80211_STYPE_DATA_CFACKPOLL&&
+	    stype != IEEE80211_STYPE_DATA_CFACKPOLL &&
 	    stype != IEEE80211_STYPE_QOS_DATA//add by David,2006.8.4
-	    ) {
+	  ) {
 		if (stype != IEEE80211_STYPE_NULLFUNC)
 			IEEE80211_DEBUG_DROP(
 				"RX: dropped data frame "
@@ -1268,7 +1268,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		goto rx_dropped;
 	}
 /*
-	if(ieee80211_is_eapol_frame(ieee, skb, hdrlen)) {
+	if (ieee80211_is_eapol_frame(ieee, skb, hdrlen)) {
 		printk(KERN_WARNING "RX: IEEE802.1X EPAOL frame!\n");
 	}
 */
@@ -1278,8 +1278,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	{
 		TID = Frame_QoSTID(skb->data);
 		SeqNum = WLAN_GET_SEQ_SEQ(sc);
-		GetTs(ieee,(PTS_COMMON_INFO *) &pTS,hdr->addr2,TID,RX_DIR,true);
-		if (TID !=0 && TID !=3)
+		GetTs(ieee, (PTS_COMMON_INFO *) &pTS, hdr->addr2, TID, RX_DIR, true);
+		if (TID != 0 && TID != 3)
 		{
 			ieee->bis_any_nonbepkts = true;
 		}
@@ -1291,14 +1291,14 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	rxb = kmalloc(sizeof(struct ieee80211_rxb), GFP_ATOMIC);
 	if (rxb == NULL)
 	{
-		IEEE80211_DEBUG(IEEE80211_DL_ERR,"%s(): kmalloc rxb error\n",__func__);
+		IEEE80211_DEBUG(IEEE80211_DL_ERR, "%s(): kmalloc rxb error\n", __func__);
 		goto rx_dropped;
 	}
 	/* to parse amsdu packets */
 	/* qos data packets & reserved bit is 1 */
 	if (parse_subframe(skb, rx_stats, rxb, src, dst) == 0) {
 		/* only to free rxb, and not submit the packets to upper layer */
-		for(i =0; i < rxb->nr_subframes; i++) {
+		for (i = 0; i < rxb->nr_subframes; i++) {
 			dev_kfree_skb(rxb->subframes[i]);
 		}
 		kfree(rxb);
@@ -1307,9 +1307,9 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	}
 
 //added by amy for reorder
-	if (!ieee->pHTInfo->bCurRxReorderEnable || pTS == NULL){
+	if (!ieee->pHTInfo->bCurRxReorderEnable || pTS == NULL) {
 //added by amy for reorder
-		for(i = 0; i<rxb->nr_subframes; i++) {
+		for (i = 0; i < rxb->nr_subframes; i++) {
 			struct sk_buff *sub_skb = rxb->subframes[i];
 
 			if (sub_skb) {
@@ -1357,7 +1357,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	}
 	else
 	{
-		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): REORDER ENABLE AND PTS not NULL, and we will enter RxReorderIndicatePacket()\n",__func__);
+		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): REORDER ENABLE AND PTS not NULL, and we will enter RxReorderIndicatePacket()\n", __func__);
 		RxReorderIndicatePacket(ieee, rxb, pTS, SeqNum);
 	}
 #ifndef JOHN_NOCPY
@@ -1485,7 +1485,7 @@ static int ieee80211_qos_convert_ac_to_parameters(struct
 
 		aci = (ac_params->aci_aifsn & 0x60) >> 5;
 
-		if(aci >= QOS_QUEUE_NUM)
+		if (aci >= QOS_QUEUE_NUM)
 			continue;
 		qos_param->aifs[aci] = (ac_params->aci_aifsn) & 0x0f;
 
@@ -1591,7 +1591,7 @@ static inline void ieee80211_extract_country_ie(
 {
 	if (IS_DOT11D_ENABLE(ieee))
 	{
-		if (info_element->len!= 0)
+		if (info_element->len != 0)
 		{
 			memcpy(network->CountryIeBuf, info_element->data, info_element->len);
 			network->CountryIeLen = info_element->len;
@@ -1607,7 +1607,7 @@ static inline void ieee80211_extract_country_ie(
 		// some AP (e.g. Cisco 1242) don't include country IE in their
 		// probe response frame.
 		//
-		if (IS_EQUAL_CIE_SRC(ieee, addr2) )
+		if (IS_EQUAL_CIE_SRC(ieee, addr2))
 		{
 			UPDATE_CIE_WATCHDOG(ieee);
 		}
@@ -1623,9 +1623,9 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 {
 	u8 i;
 	short offset;
-	u16	tmp_htcap_len=0;
-	u16	tmp_htinfo_len=0;
-	u16 ht_realtek_agg_len=0;
+	u16	tmp_htcap_len = 0;
+	u16	tmp_htinfo_len = 0;
+	u16 ht_realtek_agg_len = 0;
 	u8  ht_realtek_agg_buf[MAX_IE_LEN];
 //	u16 broadcom_len = 0;
 #ifdef CONFIG_IEEE80211_DEBUG
@@ -1735,14 +1735,14 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			break;
 
 		case MFIE_TYPE_TIM:
-			if(info_element->len < 4)
+			if (info_element->len < 4)
 				break;
 
 			network->tim.tim_count = info_element->data[0];
 			network->tim.tim_period = info_element->data[1];
 
 			network->dtim_period = info_element->data[1];
-			if(ieee->state != IEEE80211_LINKED)
+			if (ieee->state != IEEE80211_LINKED)
 				break;
 
 			network->last_dtim_sta_time[0] = stats->mac_time[0];
@@ -1750,24 +1750,24 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 
 			network->dtim_data = IEEE80211_DTIM_VALID;
 
-			if(info_element->data[0] != 0)
+			if (info_element->data[0] != 0)
 				break;
 
-			if(info_element->data[2] & 1)
+			if (info_element->data[2] & 1)
 				network->dtim_data |= IEEE80211_DTIM_MBCAST;
 
 			offset = (info_element->data[2] >> 1)*2;
 
 			//printk("offset1:%x aid:%x\n",offset, ieee->assoc_id);
 
-			if(ieee->assoc_id < 8*offset ||
-				ieee->assoc_id > 8*(offset + info_element->len -3))
+			if (ieee->assoc_id < 8*offset ||
+				ieee->assoc_id > 8*(offset + info_element->len - 3))
 
 				break;
 
 			offset = (ieee->assoc_id / 8) - offset;// + ((aid % 8)? 0 : 1) ;
 
-			if(info_element->data[3+offset] & (1<<(ieee->assoc_id%8)))
+			if (info_element->data[3+offset] & (1<<(ieee->assoc_id%8)))
 				network->dtim_data |= IEEE80211_DTIM_UCAST;
 
 			//IEEE80211_DEBUG_MGMT("MFIE_TYPE_TIM: partially ignored\n");
@@ -1820,42 +1820,42 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 #endif
 
 			//for HTcap and HTinfo parameters
-			if(tmp_htcap_len == 0){
-				if(info_element->len >= 4 &&
+			if (tmp_htcap_len == 0) {
+				if (info_element->len >= 4 &&
 				   info_element->data[0] == 0x00 &&
 				   info_element->data[1] == 0x90 &&
 				   info_element->data[2] == 0x4c &&
-				   info_element->data[3] == 0x033){
+				   info_element->data[3] == 0x033) {
 
-						tmp_htcap_len = min(info_element->len,(u8)MAX_IE_LEN);
-						if(tmp_htcap_len != 0){
+						tmp_htcap_len = min(info_element->len, (u8)MAX_IE_LEN);
+						if (tmp_htcap_len != 0) {
 							network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-							network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf)?\
+							network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf) ? \
 								sizeof(network->bssht.bdHTCapBuf):tmp_htcap_len;
-							memcpy(network->bssht.bdHTCapBuf,info_element->data,network->bssht.bdHTCapLen);
+							memcpy(network->bssht.bdHTCapBuf, info_element->data, network->bssht.bdHTCapLen);
 						}
 				}
-				if(tmp_htcap_len != 0)
+				if (tmp_htcap_len != 0)
 					network->bssht.bdSupportHT = true;
 				else
 					network->bssht.bdSupportHT = false;
 			}
 
 
-			if(tmp_htinfo_len == 0){
-				if(info_element->len >= 4 &&
+			if (tmp_htinfo_len == 0) {
+				if (info_element->len >= 4 &&
 					info_element->data[0] == 0x00 &&
 					info_element->data[1] == 0x90 &&
 					info_element->data[2] == 0x4c &&
-					info_element->data[3] == 0x034){
+					info_element->data[3] == 0x034) {
 
-						tmp_htinfo_len = min(info_element->len,(u8)MAX_IE_LEN);
-						if(tmp_htinfo_len != 0){
+						tmp_htinfo_len = min(info_element->len, (u8)MAX_IE_LEN);
+						if (tmp_htinfo_len != 0) {
 							network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-							if(tmp_htinfo_len){
-								network->bssht.bdHTInfoLen = tmp_htinfo_len > sizeof(network->bssht.bdHTInfoBuf)?\
+							if (tmp_htinfo_len) {
+								network->bssht.bdHTInfoLen = tmp_htinfo_len > sizeof(network->bssht.bdHTInfoBuf) ? \
 									sizeof(network->bssht.bdHTInfoBuf):tmp_htinfo_len;
-								memcpy(network->bssht.bdHTInfoBuf,info_element->data,network->bssht.bdHTInfoLen);
+								memcpy(network->bssht.bdHTInfoBuf, info_element->data, network->bssht.bdHTInfoLen);
 							}
 
 						}
@@ -1863,29 +1863,29 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				}
 			}
 
-			if(ieee->aggregation){
-				if(network->bssht.bdSupportHT){
-					if(info_element->len >= 4 &&
+			if (ieee->aggregation) {
+				if (network->bssht.bdSupportHT) {
+					if (info_element->len >= 4 &&
 						info_element->data[0] == 0x00 &&
 						info_element->data[1] == 0xe0 &&
 						info_element->data[2] == 0x4c &&
-						info_element->data[3] == 0x02){
+						info_element->data[3] == 0x02) {
 
-						ht_realtek_agg_len = min(info_element->len,(u8)MAX_IE_LEN);
-						memcpy(ht_realtek_agg_buf,info_element->data,info_element->len);
+						ht_realtek_agg_len = min(info_element->len, (u8)MAX_IE_LEN);
+						memcpy(ht_realtek_agg_buf, info_element->data, info_element->len);
 
 					}
-					if(ht_realtek_agg_len >= 5){
+					if (ht_realtek_agg_len >= 5) {
 						network->bssht.bdRT2RTAggregation = true;
 
-						if((ht_realtek_agg_buf[4] == 1) && (ht_realtek_agg_buf[5] & 0x02))
+						if ((ht_realtek_agg_buf[4] == 1) && (ht_realtek_agg_buf[5] & 0x02))
 						network->bssht.bdRT2RTLongSlotTime = true;
 					}
 				}
 
 			}
 
-			//if(tmp_htcap_len !=0  ||  tmp_htinfo_len != 0)
+			//if (tmp_htcap_len !=0  ||  tmp_htinfo_len != 0)
 			{
 				if ((info_element->len >= 3 &&
 					 info_element->data[0] == 0x00 &&
@@ -1898,13 +1898,13 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 					 (info_element->len >= 3 &&
 					 info_element->data[0] == 0x00 &&
 					 info_element->data[1] == 0x10 &&
-					 info_element->data[2] == 0x18)){
+					 info_element->data[2] == 0x18)) {
 
 						network->broadcom_cap_exist = true;
 
 				}
 			}
-			if(info_element->len >= 3 &&
+			if (info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x0c &&
 				info_element->data[2] == 0x43)
@@ -1914,7 +1914,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			else
 				network->ralink_cap_exist = false;
 			//added by amy for atheros AP
-			if((info_element->len >= 3 &&
+			if ((info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x03 &&
 				info_element->data[2] == 0x7f) ||
@@ -1923,13 +1923,13 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[1] == 0x13 &&
 				info_element->data[2] == 0x74))
 			{
-				printk("========>%s(): athros AP is exist\n",__func__);
+				printk("========>%s(): athros AP is exist\n", __func__);
 				network->atheros_cap_exist = true;
 			}
 			else
 				network->atheros_cap_exist = false;
 
-			if(info_element->len >= 3 &&
+			if (info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x40 &&
 				info_element->data[2] == 0x96)
@@ -1945,10 +1945,10 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[2] == 0x96 &&
 				info_element->data[3] == 0x01)
 			{
-				if(info_element->len == 6)
+				if (info_element->len == 6)
 				{
 					memcpy(network->CcxRmState, &info_element[4], 2);
-					if(network->CcxRmState[0] != 0)
+					if (network->CcxRmState[0] != 0)
 					{
 						network->bCcxRmEnable = true;
 					}
@@ -1958,7 +1958,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 					// CCXv4 Table 59-1 MBSSID Masks.
 					//
 					network->MBssidMask = network->CcxRmState[1] & 0x07;
-					if(network->MBssidMask != 0)
+					if (network->MBssidMask != 0)
 					{
 						network->bMBssidValid = true;
 						network->MBssidMask = 0xff << (network->MBssidMask);
@@ -1981,7 +1981,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[2] == 0x96 &&
 				info_element->data[3] == 0x03)
 			{
-				if(info_element->len == 5)
+				if (info_element->len == 5)
 				{
 					network->bWithCcxVerNum = true;
 					network->BssCcxVerNumber = info_element->data[4];
@@ -2007,12 +2007,12 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 		case MFIE_TYPE_HT_CAP:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_HT_CAP: %d bytes\n",
 					     info_element->len);
-			tmp_htcap_len = min(info_element->len,(u8)MAX_IE_LEN);
-			if(tmp_htcap_len != 0){
+			tmp_htcap_len = min(info_element->len, (u8)MAX_IE_LEN);
+			if (tmp_htcap_len != 0) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
-				network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf)?\
+				network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf) ? \
 					sizeof(network->bssht.bdHTCapBuf):tmp_htcap_len;
-				memcpy(network->bssht.bdHTCapBuf,info_element->data,network->bssht.bdHTCapLen);
+				memcpy(network->bssht.bdHTCapBuf, info_element->data, network->bssht.bdHTCapLen);
 
 				//If peer is HT, but not WMM, call QosSetLegacyWMMParamWithHT()
 				// windows driver will update WMM parameters each beacon received once connected
@@ -2027,27 +2027,27 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 		case MFIE_TYPE_HT_INFO:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_HT_INFO: %d bytes\n",
 					     info_element->len);
-			tmp_htinfo_len = min(info_element->len,(u8)MAX_IE_LEN);
-			if(tmp_htinfo_len){
+			tmp_htinfo_len = min(info_element->len, (u8)MAX_IE_LEN);
+			if (tmp_htinfo_len) {
 				network->bssht.bdHTSpecVer = HT_SPEC_VER_IEEE;
-				network->bssht.bdHTInfoLen = tmp_htinfo_len > sizeof(network->bssht.bdHTInfoBuf)?\
+				network->bssht.bdHTInfoLen = tmp_htinfo_len > sizeof(network->bssht.bdHTInfoBuf) ? \
 					sizeof(network->bssht.bdHTInfoBuf):tmp_htinfo_len;
-				memcpy(network->bssht.bdHTInfoBuf,info_element->data,network->bssht.bdHTInfoLen);
+				memcpy(network->bssht.bdHTInfoBuf, info_element->data, network->bssht.bdHTInfoLen);
 			}
 			break;
 
 		case MFIE_TYPE_AIRONET:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_AIRONET: %d bytes\n",
 					     info_element->len);
-			if(info_element->len >IE_CISCO_FLAG_POSITION)
+			if (info_element->len > IE_CISCO_FLAG_POSITION)
 			{
 				network->bWithAironetIE = true;
 
 				// CCX 1 spec v1.13, A01.1 CKIP Negotiation (page23):
 				// "A Cisco access point advertises support for CKIP in beacon and probe response packets,
 				//  by adding an Aironet element and setting one or both of the CKIP negotiation bits."
-				if(	(info_element->data[IE_CISCO_FLAG_POSITION]&SUPPORT_CKIP_MIC)	||
-					(info_element->data[IE_CISCO_FLAG_POSITION]&SUPPORT_CKIP_PK)	)
+				if ((info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_MIC)	||
+					(info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_PK))
 				{
 					network->bCkipSupported = true;
 				}
@@ -2088,7 +2088,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 		    data[info_element->len];
 	}
 
-	if(!network->atheros_cap_exist && !network->broadcom_cap_exist &&
+	if (!network->atheros_cap_exist && !network->broadcom_cap_exist &&
 		!network->cisco_cap_exist && !network->ralink_cap_exist && !network->bssht.bdRT2RTAggregation)
 	{
 		network->unknown_cap_exist = true;
@@ -2107,39 +2107,39 @@ static inline u8 ieee80211_SignalStrengthTranslate(
 	u8 RetSS;
 
 	// Step 1. Scale mapping.
-	if(CurrSS >= 71 && CurrSS <= 100)
+	if (CurrSS >= 71 && CurrSS <= 100)
 	{
 		RetSS = 90 + ((CurrSS - 70) / 3);
 	}
-	else if(CurrSS >= 41 && CurrSS <= 70)
+	else if (CurrSS >= 41 && CurrSS <= 70)
 	{
 		RetSS = 78 + ((CurrSS - 40) / 3);
 	}
-	else if(CurrSS >= 31 && CurrSS <= 40)
+	else if (CurrSS >= 31 && CurrSS <= 40)
 	{
 		RetSS = 66 + (CurrSS - 30);
 	}
-	else if(CurrSS >= 21 && CurrSS <= 30)
+	else if (CurrSS >= 21 && CurrSS <= 30)
 	{
 		RetSS = 54 + (CurrSS - 20);
 	}
-	else if(CurrSS >= 5 && CurrSS <= 20)
+	else if (CurrSS >= 5 && CurrSS <= 20)
 	{
 		RetSS = 42 + (((CurrSS - 5) * 2) / 3);
 	}
-	else if(CurrSS == 4)
+	else if (CurrSS == 4)
 	{
 		RetSS = 36;
 	}
-	else if(CurrSS == 3)
+	else if (CurrSS == 3)
 	{
 		RetSS = 27;
 	}
-	else if(CurrSS == 2)
+	else if (CurrSS == 2)
 	{
 		RetSS = 18;
 	}
-	else if(CurrSS == 1)
+	else if (CurrSS == 1)
 	{
 		RetSS = 9;
 	}
@@ -2224,7 +2224,7 @@ static inline int ieee80211_network_init(
 	network->rsn_ie_len = 0;
 
 	if (ieee80211_parse_info_param
-	    (ieee,beacon->info_element, stats->len - sizeof(*beacon), network, stats))
+	    (ieee, beacon->info_element, stats->len - sizeof(*beacon), network, stats))
 		return 1;
 
 	network->mode = 0;
@@ -2246,10 +2246,10 @@ static inline int ieee80211_network_init(
 		return 1;
 	}
 
-	if(network->bssht.bdSupportHT){
-		if(network->mode == IEEE_A)
+	if (network->bssht.bdSupportHT) {
+		if (network->mode == IEEE_A)
 			network->mode = IEEE_N_5G;
-		else if(network->mode & (IEEE_G | IEEE_B))
+		else if (network->mode & (IEEE_G | IEEE_B))
 			network->mode = IEEE_N_24G;
 	}
 	if (ieee80211_is_empty_essid(network->ssid, network->ssid_len))
@@ -2257,7 +2257,7 @@ static inline int ieee80211_network_init(
 
 	stats->signal = 30 + (stats->SignalStrength * 70) / 100;
 	//stats->signal = ieee80211_SignalStrengthTranslate(stats->signal);
-	stats->noise = ieee80211_translate_todbm((u8)(100-stats->signal)) -25;
+	stats->noise = ieee80211_translate_todbm((u8)(100 - stats->signal)) - 25;
 
 	memcpy(&network->stats, stats, sizeof(network->stats));
 
@@ -2321,10 +2321,10 @@ static inline void update_network(struct ieee80211_network *dst,
 
 	dst->bssht.bdSupportHT = src->bssht.bdSupportHT;
 	dst->bssht.bdRT2RTAggregation = src->bssht.bdRT2RTAggregation;
-	dst->bssht.bdHTCapLen= src->bssht.bdHTCapLen;
-	memcpy(dst->bssht.bdHTCapBuf,src->bssht.bdHTCapBuf,src->bssht.bdHTCapLen);
-	dst->bssht.bdHTInfoLen= src->bssht.bdHTInfoLen;
-	memcpy(dst->bssht.bdHTInfoBuf,src->bssht.bdHTInfoBuf,src->bssht.bdHTInfoLen);
+	dst->bssht.bdHTCapLen = src->bssht.bdHTCapLen;
+	memcpy(dst->bssht.bdHTCapBuf, src->bssht.bdHTCapBuf, src->bssht.bdHTCapLen);
+	dst->bssht.bdHTInfoLen = src->bssht.bdHTInfoLen;
+	memcpy(dst->bssht.bdHTInfoBuf, src->bssht.bdHTInfoBuf, src->bssht.bdHTInfoLen);
 	dst->bssht.bdHTSpecVer = src->bssht.bdHTSpecVer;
 	dst->bssht.bdRT2RTLongSlotTime = src->bssht.bdRT2RTLongSlotTime;
 	dst->broadcom_cap_exist = src->broadcom_cap_exist;
@@ -2343,7 +2343,7 @@ static inline void update_network(struct ieee80211_network *dst,
 	qos_active = dst->qos_data.active;
 	//old_param = dst->qos_data.old_param_count;
 	old_param = dst->qos_data.param_count;
-	if(dst->flags & NETWORK_HAS_QOS_MASK)
+	if (dst->flags & NETWORK_HAS_QOS_MASK)
 		memcpy(&dst->qos_data, &src->qos_data,
 			sizeof(struct ieee80211_qos_data));
 	else {
@@ -2353,7 +2353,7 @@ static inline void update_network(struct ieee80211_network *dst,
 
 	if (dst->qos_data.supported == 1) {
 		dst->QoS_Enable = 1;
-		if(dst->ssid_len)
+		if (dst->ssid_len)
 			IEEE80211_DEBUG_QOS
 				("QoS the network %s is QoS supported\n",
 				dst->ssid);
@@ -2366,9 +2366,9 @@ static inline void update_network(struct ieee80211_network *dst,
 
 	/* dst->last_associate is not overwritten */
 	dst->wmm_info = src->wmm_info; //sure to exist in beacon or probe response frame.
-	if (src->wmm_param[0].aci_aifsn|| \
-	   src->wmm_param[1].aci_aifsn|| \
-	   src->wmm_param[2].aci_aifsn|| \
+	if (src->wmm_param[0].aci_aifsn || \
+	   src->wmm_param[1].aci_aifsn || \
+	   src->wmm_param[2].aci_aifsn || \
 	   src->wmm_param[3].aci_aifsn) {
 	  memcpy(dst->wmm_param, src->wmm_param, WME_AC_PRAM_LEN);
 	}
@@ -2460,7 +2460,7 @@ static inline void ieee80211_process_probe_response(
 		if (WLAN_FC_GET_STYPE(beacon->header.frame_ctl) == IEEE80211_STYPE_PROBE_RESP)
 		{
 			// Case 1: Country code
-			if(IS_COUNTRY_IE_VALID(ieee) )
+			if (IS_COUNTRY_IE_VALID(ieee))
 			{
 				if (!IsLegalChannel(ieee, network.channel)) {
 					printk("GetScanInfo(): For Country code, filter probe response at channel(%d).\n", network.channel);
@@ -2481,10 +2481,10 @@ static inline void ieee80211_process_probe_response(
 		else
 		{
 			// Case 1: Country code
-			if(IS_COUNTRY_IE_VALID(ieee) )
+			if (IS_COUNTRY_IE_VALID(ieee))
 			{
 				if (!IsLegalChannel(ieee, network.channel)) {
-					printk("GetScanInfo(): For Country code, filter beacon at channel(%d).\n",network.channel);
+					printk("GetScanInfo(): For Country code, filter beacon at channel(%d).\n", network.channel);
 					return;
 				}
 			}
@@ -2494,7 +2494,7 @@ static inline void ieee80211_process_probe_response(
 				// Filter over channel ch12~14
 				if (network.channel > 14)
 				{
-					printk("GetScanInfo(): For Global Domain, filter beacon at channel(%d).\n",network.channel);
+					printk("GetScanInfo(): For Global Domain, filter beacon at channel(%d).\n", network.channel);
 					return;
 				}
 			}
@@ -2516,15 +2516,15 @@ static inline void ieee80211_process_probe_response(
 	if (is_same_network(&ieee->current_network, &network, ieee)) {
 		update_network(&ieee->current_network, &network);
 		if ((ieee->current_network.mode == IEEE_N_24G || ieee->current_network.mode == IEEE_G)
-		&& ieee->current_network.berp_info_valid){
-		if(ieee->current_network.erp_value& ERP_UseProtection)
+		&& ieee->current_network.berp_info_valid) {
+		if (ieee->current_network.erp_value & ERP_UseProtection)
 			ieee->current_network.buseprotection = true;
 		else
 			ieee->current_network.buseprotection = false;
 		}
-		if(is_beacon(beacon->header.frame_ctl))
+		if (is_beacon(beacon->header.frame_ctl))
 		{
-			if(ieee->state == IEEE80211_LINKED)
+			if (ieee->state == IEEE80211_LINKED)
 				ieee->LinkDetectInfo.NumRecvBcnInPeriod++;
 		}
 		else //hidden AP
@@ -2570,8 +2570,8 @@ static inline void ieee80211_process_probe_response(
 #endif
 		memcpy(target, &network, sizeof(*target));
 		list_add_tail(&target->list, &ieee->network_list);
-		if(ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE)
-			ieee80211_softmac_new_net(ieee,&network);
+		if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE)
+			ieee80211_softmac_new_net(ieee, &network);
 	} else {
 		IEEE80211_DEBUG_SCAN("Updating '%s' (%pM) via %s.\n",
 				     escape_essid(target->ssid,
@@ -2587,26 +2587,26 @@ static inline void ieee80211_process_probe_response(
 		 */
 		renew = !time_after(target->last_scanned + ieee->scan_age, jiffies);
 		//YJ,add,080819,for hidden ap
-		if(is_beacon(beacon->header.frame_ctl) == 0)
+		if (is_beacon(beacon->header.frame_ctl) == 0)
 			network.flags = (~NETWORK_EMPTY_ESSID & network.flags)|(NETWORK_EMPTY_ESSID & target->flags);
-		//if(strncmp(network.ssid, "linksys-c",9) == 0)
+		//if (strncmp(network.ssid, "linksys-c",9) == 0)
 		//	printk("====>2 network.ssid=%s FLAG=%d target.ssid=%s FLAG=%d\n", network.ssid, network.flags, target->ssid, target->flags);
-		if(((network.flags & NETWORK_EMPTY_ESSID) == NETWORK_EMPTY_ESSID) \
+		if (((network.flags & NETWORK_EMPTY_ESSID) == NETWORK_EMPTY_ESSID) \
 		    && (((network.ssid_len > 0) && (strncmp(target->ssid, network.ssid, network.ssid_len)))\
-		    ||((ieee->current_network.ssid_len == network.ssid_len)&&(strncmp(ieee->current_network.ssid, network.ssid, network.ssid_len) == 0)&&(ieee->state == IEEE80211_NOLINK))))
+		    || ((ieee->current_network.ssid_len == network.ssid_len) && (strncmp(ieee->current_network.ssid, network.ssid, network.ssid_len) == 0) && (ieee->state == IEEE80211_NOLINK))))
 			renew = 1;
 		//YJ,add,080819,for hidden ap,end
 
 		update_network(target, &network);
-		if(renew && (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE))
-			ieee80211_softmac_new_net(ieee,&network);
+		if (renew && (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE))
+			ieee80211_softmac_new_net(ieee, &network);
 	}
 
 	spin_unlock_irqrestore(&ieee->lock, flags);
-	if (is_beacon(beacon->header.frame_ctl)&&is_same_network(&ieee->current_network, &network, ieee)&&\
+	if (is_beacon(beacon->header.frame_ctl) && is_same_network(&ieee->current_network, &network, ieee) && \
 		(ieee->state == IEEE80211_LINKED)) {
 		if (ieee->handle_beacon != NULL) {
-			ieee->handle_beacon(ieee->dev,beacon,&ieee->current_network);
+			ieee->handle_beacon(ieee->dev, beacon, &ieee->current_network);
 		}
 	}
 }
-- 
1.9.1



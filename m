X-GM-THRID: 6204103069755506688
X-Received: by 10.194.156.193 with SMTP id wg1mr3907312wjb.3.1444505313057;
        Sat, 10 Oct 2015 12:28:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.37 with SMTP id en5ls577533wib.52.canary; Sat, 10 Oct
 2015 12:28:32 -0700 (PDT)
X-Received: by 10.180.106.197 with SMTP id gw5mr1121673wib.7.1444505312656;
        Sat, 10 Oct 2015 12:28:32 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id bh7si191833wib.1.2015.10.10.12.28.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 12:28:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id lk2so108420825wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 12:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=yiIiozHqoJ8t7+ybwtQsQvbp1u+U+BqTi4fJ8qE1+Kg=;
        b=lFmOE02XkYG3A8AJb7Tf5+G+ZGNkrO4e991VH83dQsjMt7an38XSbyDHfSCqsLR/Sv
         hHPXFhwiCQWeZrhQAEoY/jEsE9uNYGxm0HcDDQ8Hb5Rx+Md7GSAnnekB7Jp9wXTV9yT+
         dof74hhrcWo4RVNWPE17LhrFebkvGFFrOI4tU8XY6zUY5BiLARuRZ+e0vc1ejFRKe0JF
         wVlUYY8ncnWL9vA7MM44H2SuZMEukuiMM/83OJVzVm2uraFdoUDLXxvwcR3Em/O7jzCJ
         c4CdRRDR7JTdIGjNsFl0PAn6Z6bnL8e5iZ9RpReb5cjUUK/CgijM/c0TzkZFMSkByUcI
         53ug==
X-Received: by 10.180.87.102 with SMTP id w6mr6286977wiz.88.1444505312560;
        Sat, 10 Oct 2015 12:28:32 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.101.153])
        by smtp.gmail.com with ESMTPSA id h7sm9673447wjz.7.2015.10.10.12.28.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 12:28:32 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 2/6] staging: rtl8192u: Move open brace to previous line
Date: Sat, 10 Oct 2015 22:27:44 +0300
Message-Id: <090ef11d2442374986d3f0ff5a1ab4f0cfee2215.1444500823.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1444500823.git.cristina.moraru09@gmail.com>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>

Fix 'that open brace { should be on the previous line'
checkpatch error

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 192 ++++++++--------------
 1 file changed, 64 insertions(+), 128 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 1e4604c..75ca33c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -222,8 +222,7 @@ ieee80211_rx_frame_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb,
 	rx_stats->len = skb->len;
 	ieee80211_rx_mgt(ieee, (struct rtl_80211_hdr_4addr *)skb->data, rx_stats);
 	/* if ((ieee->state == IEEE80211_LINKED) && (memcmp(hdr->addr3, ieee->current_network.bssid, ETH_ALEN))) */
-	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN)))/* use ADDR1 to perform address matching for Management frames */
-	{
+	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN))) { /* use ADDR1 to perform address matching for Management frames */
 		dev_kfree_skb_any(skb);
 		return 0;
 	}
@@ -343,8 +342,7 @@ ieee80211_rx_frame_decrypt(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	if (crypt == NULL || crypt->ops->decrypt_mpdu == NULL)
 		return 0;
-	if (ieee->hwsec_active)
-	{
+	if (ieee->hwsec_active) {
 		cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 		tcb_desc->bHwSec = 1;
 	}
@@ -390,8 +388,7 @@ ieee80211_rx_frame_decrypt_msdu(struct ieee80211_device *ieee, struct sk_buff *s
 
 	if (crypt == NULL || crypt->ops->decrypt_msdu == NULL)
 		return 0;
-	if (ieee->hwsec_active)
-	{
+	if (ieee->hwsec_active) {
 		cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 		tcb_desc->bHwSec = 1;
 	}
@@ -518,18 +515,14 @@ drop:
 static bool AddReorderEntry(PRX_TS_RECORD pTS, PRX_REORDER_ENTRY pReorderEntry)
 {
 	struct list_head *pList = &pTS->RxPendingPktList;
-	while (pList->next != &pTS->RxPendingPktList)
-	{
-		if (SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum))
-		{
+	while (pList->next != &pTS->RxPendingPktList) {
+		if (SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum)) {
 			pList = pList->next;
 		}
-		else if (SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum))
-		{
+		else if (SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next, RX_REORDER_ENTRY, List))->SeqNum)) {
 			return false;
 		}
-		else
-		{
+		else {
 			break;
 		}
 	}
@@ -547,8 +540,7 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
 	u16 ethertype;
 //	if (index > 1)
 //		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): hahahahhhh, We indicate packet from reorder list, index is %u\n", __func__,index);
-	for (j = 0; j < index; j++)
-	{
+	for (j = 0; j < index; j++) {
 //added by amy for reorder
 		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
 		for (i = 0; i < prxb->nr_subframes; i++) {
@@ -713,8 +705,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): start RREORDER indicate\n", __func__);
 		pReorderEntry = (PRX_REORDER_ENTRY)list_entry(pTS->RxPendingPktList.prev, RX_REORDER_ENTRY, List);
 		if (SN_LESS(pReorderEntry->SeqNum, pTS->RxIndicateSeq) ||
-		    SN_EQUAL(pReorderEntry->SeqNum, pTS->RxIndicateSeq))
-		{
+		    SN_EQUAL(pReorderEntry->SeqNum, pTS->RxIndicateSeq)) {
 			/* This protect buffer from overflow. */
 			if (index >= REORDER_WIN_SIZE) {
 				IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): Buffer overflow!!\n");
@@ -938,8 +929,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	frag = WLAN_GET_SEQ_FRAG(sc);
 	hdrlen = ieee80211_get_hdrlen(fc);
 
-	if (HTCCheck(ieee, skb->data))
-	{
+	if (HTCCheck(ieee, skb->data)) {
 		if (net_ratelimit())
 		printk("find HTCControl\n");
 		hdrlen += 4;
@@ -1019,8 +1009,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		goto rx_dropped;
 
 	}
-	else
-	{
+	else {
 		PRX_TS_RECORD pRxTS = NULL;
 			//IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): QOS ENABLE AND RECEIVE QOS DATA , we will get Ts, tid:%d\n", __func__, tid);
 		if (GetTs(
@@ -1029,8 +1018,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 				hdr->addr2,
 				(u8)Frame_QoSTID((u8 *)(skb->data)),
 				RX_DIR,
-				true))
-		{
+				true)) {
 
 		//	IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): pRxTS->RxLastFragNum is %d,frag is %d,pRxTS->RxLastSeqNum is %d, seq is %d\n", __func__,pRxTS->RxLastFragNum,frag,pRxTS->RxLastSeqNum,WLAN_GET_SEQ_SEQ(sc));
 			if ((fc & (1<<11)) &&
@@ -1038,14 +1026,12 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 			    (WLAN_GET_SEQ_SEQ(sc) == pRxTS->RxLastSeqNum)) {
 				goto rx_dropped;
 			}
-			else
-			{
+			else {
 				pRxTS->RxLastFragNum = frag;
 				pRxTS->RxLastSeqNum = WLAN_GET_SEQ_SEQ(sc);
 			}
 		}
-		else
-		{
+		else {
 			IEEE80211_DEBUG(IEEE80211_DL_ERR, "%s(): No TS!! Skip the check!!\n", __func__);
 			goto rx_dropped;
 		}
@@ -1149,8 +1135,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	/* skb: hdr + (possibly fragmented, possibly encrypted) payload */
 
 	if (ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) &&
-	    (keyidx = ieee80211_rx_frame_decrypt(ieee, skb, crypt)) < 0)
-	{
+	    (keyidx = ieee80211_rx_frame_decrypt(ieee, skb, crypt)) < 0) {
 		printk("decrypt frame error\n");
 		goto rx_dropped;
 	}
@@ -1216,8 +1201,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	/* skb: hdr + (possible reassembled) full MSDU payload; possibly still
 	 * encrypted/authenticated */
 	if (ieee->host_decrypt && (fc & IEEE80211_FCTL_WEP) &&
-	    ieee80211_rx_frame_decrypt_msdu(ieee, skb, keyidx, crypt))
-	{
+	    ieee80211_rx_frame_decrypt_msdu(ieee, skb, keyidx, crypt)) {
 		printk("==>decrypt msdu error\n");
 		goto rx_dropped;
 	}
@@ -1274,13 +1258,11 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 */
 //added by amy for reorder
 	if (ieee->current_network.qos_data.active && IsQoSDataFrame(skb->data)
-		&& !is_multicast_ether_addr(hdr->addr1))
-	{
+		&& !is_multicast_ether_addr(hdr->addr1)) {
 		TID = Frame_QoSTID(skb->data);
 		SeqNum = WLAN_GET_SEQ_SEQ(sc);
 		GetTs(ieee, (PTS_COMMON_INFO *) &pTS, hdr->addr2, TID, RX_DIR, true);
-		if (TID != 0 && TID != 3)
-		{
+		if (TID != 0 && TID != 3) {
 			ieee->bis_any_nonbepkts = true;
 		}
 	}
@@ -1289,8 +1271,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	payload = skb->data + hdrlen;
 	//ethertype = (payload[6] << 8) | payload[7];
 	rxb = kmalloc(sizeof(struct ieee80211_rxb), GFP_ATOMIC);
-	if (rxb == NULL)
-	{
+	if (rxb == NULL) {
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "%s(): kmalloc rxb error\n", __func__);
 		goto rx_dropped;
 	}
@@ -1355,8 +1336,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 		rxb = NULL;
 
 	}
-	else
-	{
+	else {
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "%s(): REORDER ENABLE AND PTS not NULL, and we will enter RxReorderIndicatePacket()\n", __func__);
 		RxReorderIndicatePacket(ieee, rxb, pTS, SeqNum);
 	}
@@ -1589,15 +1569,12 @@ static inline void ieee80211_extract_country_ie(
 	u8 *addr2
 )
 {
-	if (IS_DOT11D_ENABLE(ieee))
-	{
-		if (info_element->len != 0)
-		{
+	if (IS_DOT11D_ENABLE(ieee)) {
+		if (info_element->len != 0) {
 			memcpy(network->CountryIeBuf, info_element->data, info_element->len);
 			network->CountryIeLen = info_element->len;
 
-			if (!IS_COUNTRY_IE_VALID(ieee))
-			{
+			if (!IS_COUNTRY_IE_VALID(ieee)) {
 				Dot11d_UpdateCountryIe(ieee, addr2, info_element->len, info_element->data);
 			}
 		}
@@ -1607,8 +1584,7 @@ static inline void ieee80211_extract_country_ie(
 		// some AP (e.g. Cisco 1242) don't include country IE in their
 		// probe response frame.
 		//
-		if (IS_EQUAL_CIE_SRC(ieee, addr2))
-		{
+		if (IS_EQUAL_CIE_SRC(ieee, addr2)) {
 			UPDATE_CIE_WATCHDOG(ieee);
 		}
 	}
@@ -1907,8 +1883,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			if (info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x0c &&
-				info_element->data[2] == 0x43)
-			{
+				info_element->data[2] == 0x43) {
 				network->ralink_cap_exist = true;
 			}
 			else
@@ -1921,8 +1896,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				(info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x13 &&
-				info_element->data[2] == 0x74))
-			{
+				info_element->data[2] == 0x74)) {
 				printk("========>%s(): athros AP is exist\n", __func__);
 				network->atheros_cap_exist = true;
 			}
@@ -1932,8 +1906,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			if (info_element->len >= 3 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x40 &&
-				info_element->data[2] == 0x96)
-			{
+				info_element->data[2] == 0x96) {
 				network->cisco_cap_exist = true;
 			}
 			else
@@ -1943,13 +1916,10 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x40 &&
 				info_element->data[2] == 0x96 &&
-				info_element->data[3] == 0x01)
-			{
-				if (info_element->len == 6)
-				{
+				info_element->data[3] == 0x01) {
+				if (info_element->len == 6) {
 					memcpy(network->CcxRmState, &info_element[4], 2);
-					if (network->CcxRmState[0] != 0)
-					{
+					if (network->CcxRmState[0] != 0) {
 						network->bCcxRmEnable = true;
 					}
 					else
@@ -1958,20 +1928,17 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 					// CCXv4 Table 59-1 MBSSID Masks.
 					//
 					network->MBssidMask = network->CcxRmState[1] & 0x07;
-					if (network->MBssidMask != 0)
-					{
+					if (network->MBssidMask != 0) {
 						network->bMBssidValid = true;
 						network->MBssidMask = 0xff << (network->MBssidMask);
 						cpMacAddr(network->MBssid, network->bssid);
 						network->MBssid[5] &= network->MBssidMask;
 					}
-					else
-					{
+					else {
 						network->bMBssidValid = false;
 					}
 				}
-				else
-				{
+				else {
 					network->bCcxRmEnable = false;
 				}
 			}
@@ -1979,15 +1946,12 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x40 &&
 				info_element->data[2] == 0x96 &&
-				info_element->data[3] == 0x03)
-			{
-				if (info_element->len == 5)
-				{
+				info_element->data[3] == 0x03) {
+				if (info_element->len == 5) {
 					network->bWithCcxVerNum = true;
 					network->BssCcxVerNumber = info_element->data[4];
 				}
-				else
-				{
+				else {
 					network->bWithCcxVerNum = false;
 					network->BssCcxVerNumber = 0;
 				}
@@ -2039,25 +2003,21 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 		case MFIE_TYPE_AIRONET:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_AIRONET: %d bytes\n",
 					     info_element->len);
-			if (info_element->len > IE_CISCO_FLAG_POSITION)
-			{
+			if (info_element->len > IE_CISCO_FLAG_POSITION) {
 				network->bWithAironetIE = true;
 
 				// CCX 1 spec v1.13, A01.1 CKIP Negotiation (page23):
 				// "A Cisco access point advertises support for CKIP in beacon and probe response packets,
 				//  by adding an Aironet element and setting one or both of the CKIP negotiation bits."
 				if ((info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_MIC)	||
-					(info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_PK))
-				{
+					(info_element->data[IE_CISCO_FLAG_POSITION] & SUPPORT_CKIP_PK)) {
 					network->bCkipSupported = true;
 				}
-				else
-				{
+				else {
 					network->bCkipSupported = false;
 				}
 			}
-			else
-			{
+			else {
 				network->bWithAironetIE = false;
 				network->bCkipSupported = false;
 			}
@@ -2089,12 +2049,10 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 	}
 
 	if (!network->atheros_cap_exist && !network->broadcom_cap_exist &&
-		!network->cisco_cap_exist && !network->ralink_cap_exist && !network->bssht.bdRT2RTAggregation)
-	{
+		!network->cisco_cap_exist && !network->ralink_cap_exist && !network->bssht.bdRT2RTAggregation) {
 		network->unknown_cap_exist = true;
 	}
-	else
-	{
+	else {
 		network->unknown_cap_exist = false;
 	}
 	return 0;
@@ -2107,44 +2065,34 @@ static inline u8 ieee80211_SignalStrengthTranslate(
 	u8 RetSS;
 
 	// Step 1. Scale mapping.
-	if (CurrSS >= 71 && CurrSS <= 100)
-	{
+	if (CurrSS >= 71 && CurrSS <= 100) {
 		RetSS = 90 + ((CurrSS - 70) / 3);
 	}
-	else if (CurrSS >= 41 && CurrSS <= 70)
-	{
+	else if (CurrSS >= 41 && CurrSS <= 70) {
 		RetSS = 78 + ((CurrSS - 40) / 3);
 	}
-	else if (CurrSS >= 31 && CurrSS <= 40)
-	{
+	else if (CurrSS >= 31 && CurrSS <= 40) {
 		RetSS = 66 + (CurrSS - 30);
 	}
-	else if (CurrSS >= 21 && CurrSS <= 30)
-	{
+	else if (CurrSS >= 21 && CurrSS <= 30) {
 		RetSS = 54 + (CurrSS - 20);
 	}
-	else if (CurrSS >= 5 && CurrSS <= 20)
-	{
+	else if (CurrSS >= 5 && CurrSS <= 20) {
 		RetSS = 42 + (((CurrSS - 5) * 2) / 3);
 	}
-	else if (CurrSS == 4)
-	{
+	else if (CurrSS == 4) {
 		RetSS = 36;
 	}
-	else if (CurrSS == 3)
-	{
+	else if (CurrSS == 3) {
 		RetSS = 27;
 	}
-	else if (CurrSS == 2)
-	{
+	else if (CurrSS == 2) {
 		RetSS = 18;
 	}
-	else if (CurrSS == 1)
-	{
+	else if (CurrSS == 1) {
 		RetSS = 9;
 	}
-	else
-	{
+	else {
 		RetSS = CurrSS;
 	}
 	//RT_TRACE(COMP_DBG, DBG_LOUD, ("##### After Mapping:  LastSS: %d, CurrSS: %d, RetSS: %d\n", LastSS, CurrSS, RetSS));
@@ -2295,8 +2243,7 @@ static inline void update_network(struct ieee80211_network *dst,
 	dst->rates_len = src->rates_len;
 	memcpy(dst->rates_ex, src->rates_ex, src->rates_ex_len);
 	dst->rates_ex_len = src->rates_ex_len;
-	if (src->ssid_len > 0)
-	{
+	if (src->ssid_len > 0) {
 		memset(dst->ssid, 0, dst->ssid_len);
 		dst->ssid_len = src->ssid_len;
 		memcpy(dst->ssid, src->ssid, src->ssid_len);
@@ -2305,8 +2252,7 @@ static inline void update_network(struct ieee80211_network *dst,
 	dst->flags = src->flags;
 	dst->time_stamp[0] = src->time_stamp[0];
 	dst->time_stamp[1] = src->time_stamp[1];
-	if (src->flags & NETWORK_HAS_ERP_VALUE)
-	{
+	if (src->flags & NETWORK_HAS_ERP_VALUE) {
 		dst->erp_value = src->erp_value;
 		dst->berp_info_valid = src->berp_info_valid = true;
 	}
@@ -2455,45 +2401,36 @@ static inline void ieee80211_process_probe_response(
 
 	if (!IsLegalChannel(ieee, network.channel))
 		return;
-	if (ieee->bGlobalDomain)
-	{
-		if (WLAN_FC_GET_STYPE(beacon->header.frame_ctl) == IEEE80211_STYPE_PROBE_RESP)
-		{
+	if (ieee->bGlobalDomain) {
+		if (WLAN_FC_GET_STYPE(beacon->header.frame_ctl) == IEEE80211_STYPE_PROBE_RESP) {
 			// Case 1: Country code
-			if (IS_COUNTRY_IE_VALID(ieee))
-			{
+			if (IS_COUNTRY_IE_VALID(ieee)) {
 				if (!IsLegalChannel(ieee, network.channel)) {
 					printk("GetScanInfo(): For Country code, filter probe response at channel(%d).\n", network.channel);
 					return;
 				}
 			}
 			// Case 2: No any country code.
-			else
-			{
+			else {
 				// Filter over channel ch12~14
-				if (network.channel > 11)
-				{
+				if (network.channel > 11) {
 					printk("GetScanInfo(): For Global Domain, filter probe response at channel(%d).\n", network.channel);
 					return;
 				}
 			}
 		}
-		else
-		{
+		else {
 			// Case 1: Country code
-			if (IS_COUNTRY_IE_VALID(ieee))
-			{
+			if (IS_COUNTRY_IE_VALID(ieee)) {
 				if (!IsLegalChannel(ieee, network.channel)) {
 					printk("GetScanInfo(): For Country code, filter beacon at channel(%d).\n", network.channel);
 					return;
 				}
 			}
 			// Case 2: No any country code.
-			else
-			{
+			else {
 				// Filter over channel ch12~14
-				if (network.channel > 14)
-				{
+				if (network.channel > 14) {
 					printk("GetScanInfo(): For Global Domain, filter beacon at channel(%d).\n", network.channel);
 					return;
 				}
@@ -2522,8 +2459,7 @@ static inline void ieee80211_process_probe_response(
 		else
 			ieee->current_network.buseprotection = false;
 		}
-		if (is_beacon(beacon->header.frame_ctl))
-		{
+		if (is_beacon(beacon->header.frame_ctl)) {
 			if (ieee->state == IEEE80211_LINKED)
 				ieee->LinkDetectInfo.NumRecvBcnInPeriod++;
 		}
-- 
1.9.1



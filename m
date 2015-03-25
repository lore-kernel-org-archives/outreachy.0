X-GM-THRID: 9831070040064
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,16ca4c52f896ea60
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.181.166 with SMTP id dx6mr2348306lbc.17.1427307461781;
        Wed, 25 Mar 2015 11:17:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.203.228 with SMTP id kt4ls142698lac.81.gmail; Wed, 25 Mar
 2015 11:17:41 -0700 (PDT)
X-Received: by 10.112.219.35 with SMTP id pl3mr2417115lbc.13.1427307461181;
        Wed, 25 Mar 2015 11:17:41 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id el6si993778wib.0.2015.03.25.11.17.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 11:17:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id g7so80450426wib.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 11:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ctg2JyJBWS+6uyYOixGfmI+sV/W0vwBKpe99PPHPOC4=;
        b=uCBjBdesAf+hsqcw6chURaKsTo8z9pNKJfWk8tJ7eO5gvxhmaEre5mMs5E3pz5I4BB
         TYtjZe3fal1qktsynS35/EMHVrnhs/sl7dJZiBchQiG1VGqh5Poc9X0IrhZoYot7bigK
         3A6DQ/1Jko50iQLNInU7vxCqdbMDIgmZQmsNZGPsFTJVsiP3hNSbCwzIRhFDFsbDdtKe
         B1qWq0yuo2/Ilk/LZw/RMtyxwm9tb/8HAcbJEl/Q//datlLP/jfbDWXSQkEiMyFJy8Fo
         vlgUMpQpbNJnNluS2a2x3WulWAK7E173hY+S5ouyVWjgjhtiqlvQl9EJHWPAbB62jhxQ
         K0cA==
X-Received: by 10.180.35.97 with SMTP id g1mr39680600wij.17.1427307461020;
        Wed, 25 Mar 2015 11:17:41 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.49.71])
        by mx.google.com with ESMTPSA id m9sm21734391wiz.24.2015.03.25.11.17.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 11:17:40 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id BAB4CC1FFD; Wed, 25 Mar 2015 08:07:07 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 1/2] Staging: rtl8192u: Add space before open parenthesis
Date: Wed, 25 Mar 2015 08:07:06 +0300
Message-Id: <1427260026-1083-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427259819-1022-1-git-send-email-hamohammed.sa@gmail.com>
References: <1427259819-1022-1-git-send-email-hamohammed.sa@gmail.com>

Space is required before the open parenthesis.
This patch adds space after if to address that issue.
This was done with the help of the following Coccinelle script:

@r@
position p1,p2;
@@
if@p1 (@p2 ...) {
        ...
}
@script:python@
p1 << r.p1;
p2 << r.p2;
@@

l1 = int (p1[0].line)
l2 = int (p2[0].line)
c1 = int (p1[0].column)
c2 = int (p2[0].column)
if (l2 == l1 and c1 + 2 != c2):
  cocci.include_match(False)

@@
position r.p1,r.p2;
@@
- if@p1 (
+ if (
...) {
        ...
}

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c  | 68 +++++++++++-----------
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 40 ++++++-------
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c      |  4 +-
 .../staging/rtl8192u/ieee80211/rtl819x_BAProc.c    | 20 +++----
 .../staging/rtl8192u/ieee80211/rtl819x_HTProc.c    | 18 +++---
 5 files changed, 75 insertions(+), 75 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 0a90450..b4d09b2 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -608,12 +608,12 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	bool			bMatchWinStart = false, bPktInBuf = false;
 	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
 	/* Rx Reorder initialize condition.*/
-	if(pTS->RxIndicateSeq == 0xffff) {
+	if (pTS->RxIndicateSeq == 0xffff) {
 		pTS->RxIndicateSeq = SeqNum;
 	}
 
 	/* Drop out the packet which SeqNum is smaller than WinStart */
-	if(SN_LESS(SeqNum, pTS->RxIndicateSeq)) {
+	if (SN_LESS(SeqNum, pTS->RxIndicateSeq)) {
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"Packet Drop! IndicateSeq: %d, NewSeq: %d\n",
 				 pTS->RxIndicateSeq, SeqNum);
 		pHTInfo->RxReorderDropCounter++;
@@ -716,7 +716,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		    SN_EQUAL(pReorderEntry->SeqNum, pTS->RxIndicateSeq))
 		{
 			/* This protect buffer from overflow. */
-			if(index >= REORDER_WIN_SIZE) {
+			if (index >= REORDER_WIN_SIZE) {
 				IEEE80211_DEBUG(IEEE80211_DL_ERR, "RxReorderIndicatePacket(): Buffer overflow!! \n");
 				bPktInBuf = true;
 				break;
@@ -740,7 +740,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	}
 
 	/* Handling pending timer. Set this timer to prevent from long time Rx buffering.*/
-	if(index>0) {
+	if (index>0) {
 		// Cancel previous pending timer.
 	//	del_timer_sync(&pTS->RxPktPendingTimer);
 		pTS->RxTimeoutIndicateSeq = 0xffff;
@@ -753,7 +753,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		ieee80211_indicate_packets(ieee, prxbIndicateArray, index);
 	}
 
-	if(bPktInBuf && pTS->RxTimeoutIndicateSeq==0xffff) {
+	if (bPktInBuf && pTS->RxTimeoutIndicateSeq==0xffff) {
 		// Set new pending timer.
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): SET rx timeout timer\n", __func__);
 		pTS->RxTimeoutIndicateSeq = pTS->RxIndicateSeq;
@@ -783,16 +783,16 @@ static u8 parse_subframe(struct sk_buff *skb,
 	/* just for debug purpose */
 	SeqNum = WLAN_GET_SEQ_SEQ(le16_to_cpu(hdr->seq_ctl));
 
-	if((IEEE80211_QOS_HAS_SEQ(fc))&&\
+	if ((IEEE80211_QOS_HAS_SEQ(fc))&&\
 			(((frameqos *)(skb->data + IEEE80211_3ADDR_LEN))->field.reserved)) {
 		bIsAggregateFrame = true;
 	}
 
-	if(IEEE80211_QOS_HAS_SEQ(fc)) {
+	if (IEEE80211_QOS_HAS_SEQ(fc)) {
 		LLCOffset += 2;
 	}
 
-	if(rx_stats->bContainHTC) {
+	if (rx_stats->bContainHTC) {
 		LLCOffset += sHTCLng;
 	}
 	//printk("ChkLength = %d\n", LLCOffset);
@@ -826,7 +826,7 @@ static u8 parse_subframe(struct sk_buff *skb,
 			//==m==>change the length order
 			nSubframe_Length = (nSubframe_Length>>8) + (nSubframe_Length<<8);
 
-			if(skb->len<(ETHERNET_HEADER_SIZE + nSubframe_Length)) {
+			if (skb->len<(ETHERNET_HEADER_SIZE + nSubframe_Length)) {
 				printk("%s: A-MSDU parse error!! pRfd->nTotalSubframe : %d\n",\
 						__func__, rxb->nr_subframes);
 				printk("%s: A-MSDU parse error!! Subframe Length: %d\n",__func__, nSubframe_Length);
@@ -852,19 +852,19 @@ static u8 parse_subframe(struct sk_buff *skb,
 			memcpy(data_ptr, skb->data, nSubframe_Length);
 #endif
 			rxb->subframes[rxb->nr_subframes++] = sub_skb;
-			if(rxb->nr_subframes >= MAX_SUBFRAME_COUNT) {
+			if (rxb->nr_subframes >= MAX_SUBFRAME_COUNT) {
 				IEEE80211_DEBUG_RX("ParseSubframe(): Too many Subframes! Packets dropped!\n");
 				break;
 			}
 			skb_pull(skb, nSubframe_Length);
 
-			if(skb->len != 0) {
+			if (skb->len != 0) {
 				nPadding_Length = 4 - ((nSubframe_Length + ETHERNET_HEADER_SIZE) % 4);
-				if(nPadding_Length == 4) {
+				if (nPadding_Length == 4) {
 					nPadding_Length = 0;
 				}
 
-				if(skb->len < nPadding_Length) {
+				if (skb->len < nPadding_Length) {
 					return 0;
 				}
 
@@ -938,7 +938,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	frag = WLAN_GET_SEQ_FRAG(sc);
 	hdrlen = ieee80211_get_hdrlen(fc);
 
-	if(HTCCheck(ieee, skb->data))
+	if (HTCCheck(ieee, skb->data))
 	{
 		if(net_ratelimit())
 		printk("find HTCControl\n");
@@ -1273,13 +1273,13 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	}
 */
 //added by amy for reorder
-	if(ieee->current_network.qos_data.active && IsQoSDataFrame(skb->data)
+	if (ieee->current_network.qos_data.active && IsQoSDataFrame(skb->data)
 		&& !is_multicast_ether_addr(hdr->addr1))
 	{
 		TID = Frame_QoSTID(skb->data);
 		SeqNum = WLAN_GET_SEQ_SEQ(sc);
 		GetTs(ieee,(PTS_COMMON_INFO *) &pTS,hdr->addr2,TID,RX_DIR,true);
-		if(TID !=0 && TID !=3)
+		if (TID !=0 && TID !=3)
 		{
 			ieee->bis_any_nonbepkts = true;
 		}
@@ -1289,7 +1289,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	payload = skb->data + hdrlen;
 	//ethertype = (payload[6] << 8) | payload[7];
 	rxb = kmalloc(sizeof(struct ieee80211_rxb), GFP_ATOMIC);
-	if(rxb == NULL)
+	if (rxb == NULL)
 	{
 		IEEE80211_DEBUG(IEEE80211_DL_ERR,"%s(): kmalloc rxb error\n",__func__);
 		goto rx_dropped;
@@ -1335,7 +1335,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 				stats->rx_packets++;
 				stats->rx_bytes += sub_skb->len;
-				if(is_multicast_ether_addr(dst)) {
+				if (is_multicast_ether_addr(dst)) {
 					stats->multicast++;
 				}
 
@@ -1589,14 +1589,14 @@ static inline void ieee80211_extract_country_ie(
 	u8 *addr2
 )
 {
-	if(IS_DOT11D_ENABLE(ieee))
+	if (IS_DOT11D_ENABLE(ieee))
 	{
-		if(info_element->len!= 0)
+		if (info_element->len!= 0)
 		{
 			memcpy(network->CountryIeBuf, info_element->data, info_element->len);
 			network->CountryIeLen = info_element->len;
 
-			if(!IS_COUNTRY_IE_VALID(ieee))
+			if (!IS_COUNTRY_IE_VALID(ieee))
 			{
 				Dot11d_UpdateCountryIe(ieee, addr2, info_element->len, info_element->data);
 			}
@@ -1607,7 +1607,7 @@ static inline void ieee80211_extract_country_ie(
 		// some AP (e.g. Cisco 1242) don't include country IE in their
 		// probe response frame.
 		//
-		if(IS_EQUAL_CIE_SRC(ieee, addr2) )
+		if (IS_EQUAL_CIE_SRC(ieee, addr2) )
 		{
 			UPDATE_CIE_WATCHDOG(ieee);
 		}
@@ -1887,7 +1887,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 
 			//if(tmp_htcap_len !=0  ||  tmp_htinfo_len != 0)
 			{
-				if((info_element->len >= 3 &&
+				if ((info_element->len >= 3 &&
 					 info_element->data[0] == 0x00 &&
 					 info_element->data[1] == 0x05 &&
 					 info_element->data[2] == 0xb5) ||
@@ -1939,7 +1939,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 			else
 				network->cisco_cap_exist = false;
 			//added by amy for LEAP of cisco
-			if(info_element->len > 4 &&
+			if (info_element->len > 4 &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x40 &&
 				info_element->data[2] == 0x96 &&
@@ -1975,7 +1975,7 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 					network->bCcxRmEnable = false;
 				}
 			}
-			if(info_element->len > 4  &&
+			if (info_element->len > 4  &&
 				info_element->data[0] == 0x00 &&
 				info_element->data[1] == 0x40 &&
 				info_element->data[2] == 0x96 &&
@@ -2295,7 +2295,7 @@ static inline void update_network(struct ieee80211_network *dst,
 	dst->rates_len = src->rates_len;
 	memcpy(dst->rates_ex, src->rates_ex, src->rates_ex_len);
 	dst->rates_ex_len = src->rates_ex_len;
-	if(src->ssid_len > 0)
+	if (src->ssid_len > 0)
 	{
 		memset(dst->ssid, 0, dst->ssid_len);
 		dst->ssid_len = src->ssid_len;
@@ -2351,7 +2351,7 @@ static inline void update_network(struct ieee80211_network *dst,
 		dst->qos_data.param_count = src->qos_data.param_count;
 	}
 
-	if(dst->qos_data.supported == 1) {
+	if (dst->qos_data.supported == 1) {
 		dst->QoS_Enable = 1;
 		if(dst->ssid_len)
 			IEEE80211_DEBUG_QOS
@@ -2366,7 +2366,7 @@ static inline void update_network(struct ieee80211_network *dst,
 
 	/* dst->last_associate is not overwritten */
 	dst->wmm_info = src->wmm_info; //sure to exist in beacon or probe response frame.
-	if(src->wmm_param[0].ac_aci_acm_aifsn|| \
+	if (src->wmm_param[0].ac_aci_acm_aifsn|| \
 	   src->wmm_param[1].ac_aci_acm_aifsn|| \
 	   src->wmm_param[2].ac_aci_acm_aifsn|| \
 	   src->wmm_param[3].ac_aci_acm_aifsn) {
@@ -2455,7 +2455,7 @@ static inline void ieee80211_process_probe_response(
 
 	if (!IsLegalChannel(ieee, network.channel))
 		return;
-	if(ieee->bGlobalDomain)
+	if (ieee->bGlobalDomain)
 	{
 		if (WLAN_FC_GET_STYPE(beacon->header.frame_ctl) == IEEE80211_STYPE_PROBE_RESP)
 		{
@@ -2471,7 +2471,7 @@ static inline void ieee80211_process_probe_response(
 			else
 			{
 				// Filter over channel ch12~14
-				if(network.channel > 11)
+				if (network.channel > 11)
 				{
 					printk("GetScanInfo(): For Global Domain, filter probe response at channel(%d).\n", network.channel);
 					return;
@@ -2492,7 +2492,7 @@ static inline void ieee80211_process_probe_response(
 			else
 			{
 				// Filter over channel ch12~14
-				if(network.channel > 14)
+				if (network.channel > 14)
 				{
 					printk("GetScanInfo(): For Global Domain, filter beacon at channel(%d).\n",network.channel);
 					return;
@@ -2513,9 +2513,9 @@ static inline void ieee80211_process_probe_response(
 
 	spin_lock_irqsave(&ieee->lock, flags);
 
-	if(is_same_network(&ieee->current_network, &network, ieee)) {
+	if (is_same_network(&ieee->current_network, &network, ieee)) {
 		update_network(&ieee->current_network, &network);
-		if((ieee->current_network.mode == IEEE_N_24G || ieee->current_network.mode == IEEE_G)
+		if ((ieee->current_network.mode == IEEE_N_24G || ieee->current_network.mode == IEEE_G)
 		&& ieee->current_network.berp_info_valid){
 		if(ieee->current_network.erp_value& ERP_UseProtection)
 			ieee->current_network.buseprotection = true;
@@ -2605,7 +2605,7 @@ static inline void ieee80211_process_probe_response(
 	spin_unlock_irqrestore(&ieee->lock, flags);
 	if (is_beacon(beacon->header.frame_ctl)&&is_same_network(&ieee->current_network, &network, ieee)&&\
 		(ieee->state == IEEE80211_LINKED)) {
-		if(ieee->handle_beacon != NULL) {
+		if (ieee->handle_beacon != NULL) {
 			ieee->handle_beacon(ieee->dev,beacon,&ieee->current_network);
 		}
 	}
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 66b1587..168ee32 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -609,9 +609,9 @@ EXPORT_SYMBOL(ieee80211_stop_scan);
 /* called with ieee->lock held */
 static void ieee80211_start_scan(struct ieee80211_device *ieee)
 {
-	if(IS_DOT11D_ENABLE(ieee) )
+	if (IS_DOT11D_ENABLE(ieee) )
 	{
-		if(IS_COUNTRY_IE_VALID(ieee))
+		if (IS_COUNTRY_IE_VALID(ieee))
 		{
 			RESET_CIE_WATCHDOG(ieee);
 		}
@@ -629,9 +629,9 @@ static void ieee80211_start_scan(struct ieee80211_device *ieee)
 /* called with wx_sem held */
 void ieee80211_start_scan_syncro(struct ieee80211_device *ieee)
 {
-	if(IS_DOT11D_ENABLE(ieee) )
+	if (IS_DOT11D_ENABLE(ieee) )
 	{
-		if(IS_COUNTRY_IE_VALID(ieee))
+		if (IS_COUNTRY_IE_VALID(ieee))
 		{
 			RESET_CIE_WATCHDOG(ieee);
 		}
@@ -739,7 +739,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 	HTConstructInfoElement(ieee,tmp_ht_info_buf,&tmp_ht_info_len, encrypt);
 
 
-	if(pHTInfo->bRegRT2RTAggregation)
+	if (pHTInfo->bRegRT2RTAggregation)
 	{
 		tmp_generic_ie_buf = ieee->pHTInfo->szRT2RTAggBuffer;
 		tmp_generic_ie_len = sizeof(ieee->pHTInfo->szRT2RTAggBuffer);
@@ -1016,12 +1016,12 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	encrypt = ieee->host_encrypt && crypt && crypt->ops && ((0 == strcmp(crypt->ops->name,"WEP") || wpa_ie_len));
 
 	//Include High Throuput capability && Realtek proprietary
-	if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)
+	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)
 	{
 		ht_cap_buf = (u8 *)&(ieee->pHTInfo->SelfHTCap);
 		ht_cap_len = sizeof(ieee->pHTInfo->SelfHTCap);
 		HTConstructCapabilityElement(ieee, ht_cap_buf, &ht_cap_len, encrypt);
-		if(ieee->pHTInfo->bCurrentRT2RTAggregation)
+		if (ieee->pHTInfo->bCurrentRT2RTAggregation)
 		{
 			realtek_ie_buf = ieee->pHTInfo->szRT2RTAggBuffer;
 			realtek_ie_len = sizeof( ieee->pHTInfo->szRT2RTAggBuffer);
@@ -1034,11 +1034,11 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	}
 
 
-	if(beacon->bCkipSupported)
+	if (beacon->bCkipSupported)
 	{
 		ckip_ie_len = 30+2;
 	}
-	if(beacon->bCcxRmEnable)
+	if (beacon->bCcxRmEnable)
 	{
 		ccxrm_ie_len = 6+2;
 	}
@@ -1141,7 +1141,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 		tag += osCcxAironetIE.Length;
 	}
 
-	if(beacon->bCcxRmEnable)
+	if (beacon->bCcxRmEnable)
 	{
 		static u8 CcxRmCapBuf[] = {0x00, 0x40, 0x96, 0x01, 0x01, 0x00};
 		OCTET_STRING osCcxRmCap;
@@ -1168,8 +1168,8 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 		tag += osCcxVerNum.Length;
 	}
 	//HT cap element
-	if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
-		if(ieee->pHTInfo->ePeerHTSpecVer != HT_SPEC_VER_EWC)
+	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
+		if (ieee->pHTInfo->ePeerHTSpecVer != HT_SPEC_VER_EWC)
 		{
 			tag = skb_put(skb, ht_cap_len);
 			*tag++ = MFIE_TYPE_HT_CAP;
@@ -1187,12 +1187,12 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	}
 
 	tag = skb_put(skb, wmm_info_len);
-	if(wmm_info_len) {
+	if (wmm_info_len) {
 	  ieee80211_WMM_Info(ieee, &tag);
 	}
 #ifdef THOMAS_TURBO
 	tag = skb_put(skb, turbo_info_len);
-	if(turbo_info_len) {
+	if (turbo_info_len) {
 		ieee80211_TURBO_Info(ieee, &tag);
 	}
 #endif
@@ -1358,7 +1358,7 @@ static void ieee80211_associate_complete_wq(struct work_struct *work)
 	}
 	ieee->LinkDetectInfo.SlotNum = 2 * (1 + ieee->current_network.beacon_interval/500);
 	// To prevent the immediately calling watch_dog after association.
-	if(ieee->LinkDetectInfo.NumRecvBcnInPeriod==0||ieee->LinkDetectInfo.NumRecvDataInPeriod==0 )
+	if (ieee->LinkDetectInfo.NumRecvBcnInPeriod==0||ieee->LinkDetectInfo.NumRecvDataInPeriod==0 )
 	{
 		ieee->LinkDetectInfo.NumRecvBcnInPeriod = 1;
 		ieee->LinkDetectInfo.NumRecvDataInPeriod= 1;
@@ -1782,7 +1782,7 @@ static inline void ieee80211_sta_ps(struct ieee80211_device *ieee)
 
 	spin_lock_irqsave(&ieee->lock, flags);
 
-	if((ieee->ps == IEEE80211_PS_DISABLED ||
+	if ((ieee->ps == IEEE80211_PS_DISABLED ||
 		ieee->iw_mode != IW_MODE_INFRA ||
 		ieee->state != IEEE80211_LINKED)){
 
@@ -2024,7 +2024,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 				ieee->softmac_stats.rx_ass_ok++;
 				/* station support qos */
 				/* Let the register setting defaultly with Legacy station */
-				if(ieee->qos_support) {
+				if (ieee->qos_support) {
 					assoc_resp = (struct ieee80211_assoc_response_frame *)skb->data;
 					memset(network, 0, sizeof(*network));
 					if (ieee80211_parse_info_param(ieee,assoc_resp->info_element,\
@@ -2156,7 +2156,7 @@ void ieee80211_softmac_xmit(struct ieee80211_txb *txb, struct ieee80211_device *
 	ieee->stats.tx_bytes += txb->payload_size;
 	ieee->stats.tx_packets++;
 	tcb_desc = (cb_desc *)(txb->fragments[0]->cb + MAX_DEV_ADDR_SIZE);
-	if(tcb_desc->bMulticast) {
+	if (tcb_desc->bMulticast) {
 		ieee->stats.multicast++;
 	}
 	/* if xmit available, just xmit it immediately, else just insert it to the wait queue */
@@ -2460,9 +2460,9 @@ void ieee80211_start_bss(struct ieee80211_device *ieee)
 	// Ref: 802.11d 11.1.3.3
 	// STA shall not start a BSS unless properly formed Beacon frame including a Country IE.
 	//
-	if(IS_DOT11D_ENABLE(ieee) && !IS_COUNTRY_IE_VALID(ieee))
+	if (IS_DOT11D_ENABLE(ieee) && !IS_COUNTRY_IE_VALID(ieee))
 	{
-		if(! ieee->bGlobalDomain)
+		if (! ieee->bGlobalDomain)
 		{
 			return;
 		}
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
index dcfa5ab..77d0a34 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
@@ -345,7 +345,7 @@ void ieee80211_wx_sync_scan_wq(struct work_struct *work)
 	ieee->state = IEEE80211_LINKED;
 	ieee->link_change(ieee->dev);
 	// To prevent the immediately calling watch_dog after scan.
-	if(ieee->LinkDetectInfo.NumRecvBcnInPeriod==0||ieee->LinkDetectInfo.NumRecvDataInPeriod==0 )
+	if (ieee->LinkDetectInfo.NumRecvBcnInPeriod==0||ieee->LinkDetectInfo.NumRecvDataInPeriod==0 )
 	{
 		ieee->LinkDetectInfo.NumRecvBcnInPeriod = 1;
 		ieee->LinkDetectInfo.NumRecvDataInPeriod= 1;
@@ -469,7 +469,7 @@ EXPORT_SYMBOL(ieee80211_wx_get_mode);
 	printk(KERN_INFO"raw TX is %s\n",
 	      ieee->raw_tx ? "enabled" : "disabled");
 
-	if(ieee->iw_mode == IW_MODE_MONITOR)
+	if (ieee->iw_mode == IW_MODE_MONITOR)
 	{
 		if(prev == 0 && ieee->raw_tx){
 			if (ieee->data_hard_resume)
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 1b4623c..618d2cb 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -46,14 +46,14 @@ static u8 TxTsDeleteBA(struct ieee80211_device *ieee, PTX_TS_RECORD pTxTs)
 	u8			bSendDELBA = false;
 
 	// Delete pending BA
-	if(pPendingBa->bValid)
+	if (pPendingBa->bValid)
 	{
 		DeActivateBAEntry(ieee, pPendingBa);
 		bSendDELBA = true;
 	}
 
 	// Delete admitted BA
-	if(pAdmittedBa->bValid)
+	if (pAdmittedBa->bValid)
 	{
 		DeActivateBAEntry(ieee, pAdmittedBa);
 		bSendDELBA = true;
@@ -74,7 +74,7 @@ static u8 RxTsDeleteBA(struct ieee80211_device *ieee, PRX_TS_RECORD pRxTs)
 	PBA_RECORD		pBa = &pRxTs->RxAdmittedBARecord;
 	u8			bSendDELBA = false;
 
-	if(pBa->bValid)
+	if (pBa->bValid)
 	{
 		DeActivateBAEntry(ieee, pBa);
 		bSendDELBA = true;
@@ -363,7 +363,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
 
 	printk("====================>rx ADDBAREQ from :%pM\n", dst);
 //some other capability is not ready now.
-	if(	(ieee->current_network.qos_data.active == 0) ||
+	if ((ieee->current_network.qos_data.active == 0) ||
 		(ieee->pHTInfo->bCurrentHTSupport == false)) //||
 	//	(ieee->pStaQos->bEnableRxImmBA == false)	)
 	{
@@ -373,7 +373,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
 	}
 	// Search for related traffic stream.
 	// If there is no matched TS, reject the ADDBA request.
-	if(	!GetTs(
+	if (!GetTs(
 			ieee,
 			(PTS_COMMON_INFO *)(&pTS),
 			dst,
@@ -390,7 +390,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
 	// We can do much more check here, including BufferSize, AMSDU_Support, Policy, StartSeqCtrl...
 	// I want to check StartSeqCtrl to make sure when we start aggregation!!!
 	//
-	if(pBaParamSet->field.BAPolicy == BA_POLICY_DELAYED)
+	if (pBaParamSet->field.BAPolicy == BA_POLICY_DELAYED)
 	{
 		rc = ADDBA_STATUS_INVALID_PARAM;
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "BA Policy is not correct in %s()\n", __func__);
@@ -522,7 +522,7 @@ int ieee80211_rx_ADDBARsp(struct ieee80211_device *ieee, struct sk_buff *skb)
 		// We can compare the value of BA parameter set that Peer returned and Self sent.
 		// If it is OK, then admitted. Or we can send DELBA to cancel BA mechanism.
 		//
-		if(pBaParamSet->field.BAPolicy == BA_POLICY_DELAYED)
+		if (pBaParamSet->field.BAPolicy == BA_POLICY_DELAYED)
 		{
 			// Since this is a kind of ADDBA failed, we delay next ADDBA process.
 			pTS->bAddBaReqDelayed = true;
@@ -582,7 +582,7 @@ int ieee80211_rx_DELBA(struct ieee80211_device *ieee, struct sk_buff *skb)
 		return -1;
 	}
 
-	if(ieee->current_network.qos_data.active == 0 ||
+	if (ieee->current_network.qos_data.active == 0 ||
 		ieee->pHTInfo->bCurrentHTSupport == false )
 	{
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "received DELBA while QOS or HT is not supported(%d, %d)\n",ieee->current_network.qos_data.active, ieee->pHTInfo->bCurrentHTSupport);
@@ -600,7 +600,7 @@ int ieee80211_rx_DELBA(struct ieee80211_device *ieee, struct sk_buff *skb)
 	{
 		PRX_TS_RECORD	pRxTs;
 
-		if( !GetTs(
+		if (!GetTs(
 				ieee,
 				(PTS_COMMON_INFO *)&pRxTs,
 				dst,
@@ -618,7 +618,7 @@ int ieee80211_rx_DELBA(struct ieee80211_device *ieee, struct sk_buff *skb)
 	{
 		PTX_TS_RECORD	pTxTs;
 
-		if(!GetTs(
+		if (!GetTs(
 			ieee,
 			(PTS_COMMON_INFO *)&pTxTs,
 			dst,
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
index 69b0e30..c2588f8 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
@@ -503,7 +503,7 @@ static u8 HTIOTActIsMgntUseCCK6M(struct ieee80211_network *network)
 	// 2008/01/25 MH Judeg if we need to use OFDM to sned MGNT frame for broadcom AP.
 	// 2008/01/28 MH We must prevent that we select null bssid to link.
 
-	if(network->broadcom_cap_exist)
+	if (network->broadcom_cap_exist)
 	{
 		retValue = 1;
 	}
@@ -620,7 +620,7 @@ void HTConstructCapabilityElement(struct ieee80211_device *ieee, u8 *posHTCap, u
 
 	// 2008.06.12
 	// For RTL819X, if pairwisekey = wep/tkip, ap is ralink, we support only MCS0~7.
-	if(ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev))
+	if (ieee->GetHalfNmodeSupportByAPsHandler(ieee->dev))
 	{
 		int i;
 		for(i = 1; i< 16; i++)
@@ -747,7 +747,7 @@ void HTConstructRT2RTAggElement(struct ieee80211_device *ieee, u8 *posRT2RTAgg,
 	*posRT2RTAgg++ = 0x01;
 	*posRT2RTAgg = 0x10;//*posRT2RTAgg = 0x02;
 
-	if(ieee->bSupportRemoteWakeUp) {
+	if (ieee->bSupportRemoteWakeUp) {
 		*posRT2RTAgg |= 0x08;//RT_HT_CAP_USE_WOW;
 	}
 
@@ -874,12 +874,12 @@ u8 HTGetHighestMCSRate(struct ieee80211_device *ieee, u8 *pMCSRateSet, u8 *pMCSF
 
 	for(i = 0; i < 16; i++)
 	{
-		if(availableMcsRate[i] != 0)
+		if (availableMcsRate[i] != 0)
 		{
 			bitMap = availableMcsRate[i];
 			for(j = 0; j < 8; j++)
 			{
-				if((bitMap%2) != 0)
+				if ((bitMap%2) != 0)
 				{
 					if(HTMcsToDataRate(ieee, (8*i+j)) > HTMcsToDataRate(ieee, mcsRate))
 						mcsRate = (8*i+j);
@@ -1062,7 +1062,7 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 
 	// Lanhsin: mark for tmp to avoid deauth by ap from  s3
 	//if(memcmp(pMgntInfo->Bssid, NETGEAR834Bv2_BROADCOM, 3)==0)
-	if(0)
+	if (0)
 		{
 
 			pHTInfo->bCurrentAMPDUEnable = false;
@@ -1298,7 +1298,7 @@ void HTUpdateSelfAndPeerSetting(struct ieee80211_device *ieee,	struct ieee80211_
 //	PHT_CAPABILITY_ELE		pPeerHTCap = (PHT_CAPABILITY_ELE)pNetwork->bssht.bdHTCapBuf;
 	PHT_INFORMATION_ELE		pPeerHTInfo = (PHT_INFORMATION_ELE)pNetwork->bssht.bdHTInfoBuf;
 
-	if(pHTInfo->bCurrentHTSupport)
+	if (pHTInfo->bCurrentHTSupport)
 	{
 		//
 		// Config current operation mode.
@@ -1323,7 +1323,7 @@ EXPORT_SYMBOL(HTUpdateSelfAndPeerSetting);
 ********************************************************************************************************************/
 u8 HTCCheck(struct ieee80211_device *ieee, u8 *pFrame)
 {
-	if(ieee->pHTInfo->bCurrentHTSupport)
+	if (ieee->pHTInfo->bCurrentHTSupport)
 	{
 		if ((IsQoSDataFrame(pFrame) && Frame_Order(pFrame)) == 1) {
 			IEEE80211_DEBUG(IEEE80211_DL_HT, "HT CONTROL FILED EXIST!!\n");
@@ -1352,7 +1352,7 @@ void HTSetConnectBwMode(struct ieee80211_device *ieee, HT_CHANNEL_WIDTH	Bandwidt
 //		return;
 
 //	spin_lock_irqsave(&(ieee->bw_spinlock), flags);
-	if(pHTInfo->bSwBwInProgress) {
+	if (pHTInfo->bSwBwInProgress) {
 //		spin_unlock_irqrestore(&(ieee->bw_spinlock), flags);
 		return;
 	}
-- 
1.9.1



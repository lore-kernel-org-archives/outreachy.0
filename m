X-GM-THRID: 6109283745792
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9a02d0dfd88299f3,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.95.67 with SMTP id di3mr2628078wjb.0.1425332970091;
        Mon, 02 Mar 2015 13:49:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.76.238 with SMTP id n14ls638027wiw.47.canary; Mon, 02 Mar
 2015 13:49:29 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr2508397wia.7.1425332969779;
        Mon, 02 Mar 2015 13:49:29 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id by11si786638wib.1.2015.03.02.13.49.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 13:49:29 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x233.google.com with SMTP id m14so36076351wev.13
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 13:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/yYRZvf4jBayzmD/a1BM1H6Jn/Dnl25ruEjxPbueYOE=;
        b=nub6HEw/wYEnApphJMg539pKyuULZgf15Ye/WzVzldMBjpZ4CfTK7W8Fr+G0nTUfHC
         hSCBoPzftmn3JsPGMkJfcj29YWeyETaT3vPwnTLbZxKi45EUY4VeJbsE+vJeQKjRKAuB
         6Ce576FttT56Hrl28Yy9tHIEny20bi0DJC6PePXJIfbYqKcDqV2/gcy3h8Uq8WZiCwE9
         qUSDEk6SC4howmQUXUGUCZIdpvSdSb36JcV4DFzilxpH5lDt6dr/f9A0CI8asn2k0d48
         KBoKLsVqlxhoow+iUI7rNKYd/QB1Ht3CZuFB7hRHtAVxGnUKEdVu6EARRN7kuw1DatvR
         UavQ==
X-Received: by 10.194.170.193 with SMTP id ao1mr63290533wjc.52.1425332969634;
        Mon, 02 Mar 2015 13:49:29 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id v6sm17807066wix.8.2015.03.02.13.49.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 13:49:29 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Add spaces around '=,++,&,&&,==,+,||,-,+='
Date: Mon,  2 Mar 2015 23:49:14 +0200
Message-Id: <1425332954-19148-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Spaces required around those '=,++,&,&&,==,+,||,-,+=' . That's why add
spaces around those characters.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 120 ++++++++++-----------
 1 file changed, 60 insertions(+), 60 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index d4150af..76a1a61 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -146,7 +146,7 @@ static void ieee80211_TURBO_Info(struct ieee80211_device *ieee, u8 **tag_p)
 static void enqueue_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb)
 {
 	int nh;
-	nh = (ieee->mgmt_queue_head +1) % MGMT_QUEUE_NUM;
+	nh = (ieee->mgmt_queue_head + 1) % MGMT_QUEUE_NUM;
 
 /*
  * if the queue is full but we have newer frames then
@@ -194,9 +194,9 @@ static u8 MgntQuery_MgntFrameTxRate(struct ieee80211_device *ieee)
 
 	if (rate == 0) {
 		/* 2005.01.26, by rcnjko. */
-		if (ieee->mode == IEEE_A||
-		   ieee->mode== IEEE_N_5G||
-		   (ieee->mode== IEEE_N_24G&&!pHTInfo->bCurSuppCCK))
+		if (ieee->mode == IEEE_A ||
+		   ieee->mode == IEEE_N_5G ||
+		   (ieee->mode == IEEE_N_24G && !pHTInfo->bCurSuppCCK))
 			rate = 0x0c;
 		else
 			rate = 0x02;
@@ -222,7 +222,7 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee
 {
 	unsigned long flags;
 	short single = ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE;
-	struct ieee80211_hdr_3addr  *header=
+	struct ieee80211_hdr_3addr  *header =
 		(struct ieee80211_hdr_3addr  *) skb->data;
 
 	cb_desc *tcb_desc = (cb_desc *)(skb->cb + 8);
@@ -267,8 +267,8 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee
 			ieee->seq_ctrl[0]++;
 
 		/* check whether the managed packet queued greater than 5 */
-		if (!ieee->check_nic_enough_desc(ieee->dev, tcb_desc->queue_index)||\
-				(skb_queue_len(&ieee->skb_waitQ[tcb_desc->queue_index]) != 0)||\
+		if (!ieee->check_nic_enough_desc(ieee->dev, tcb_desc->queue_index) || \
+				(skb_queue_len(&ieee->skb_waitQ[tcb_desc->queue_index]) != 0) || \
 				(ieee->queue_stop) ) {
 			/* insert the skb packet to the management queue */
 			/* as for the completion function, it does not need
@@ -705,14 +705,14 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 	u8 erpinfo_content = 0;
 
 	u8 *tmp_ht_cap_buf;
-	u8 tmp_ht_cap_len=0;
+	u8 tmp_ht_cap_len = 0;
 	u8 *tmp_ht_info_buf;
-	u8 tmp_ht_info_len=0;
+	u8 tmp_ht_info_len = 0;
 	PRT_HIGH_THROUGHPUT	pHTInfo = ieee->pHTInfo;
-	u8 *tmp_generic_ie_buf=NULL;
-	u8 tmp_generic_ie_len=0;
+	u8 *tmp_generic_ie_buf = NULL;
+	u8 tmp_generic_ie_len = 0;
 
-	if (rate_ex_len > 0) rate_ex_len+=2;
+	if (rate_ex_len > 0) rate_ex_len += 2;
 
 	if (ieee->current_network.capability & WLAN_CAPABILITY_IBSS)
 		atim_len = 4;
@@ -731,9 +731,9 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 	encrypt = ieee->host_encrypt && crypt && crypt->ops &&
 		((0 == strcmp(crypt->ops->name, "WEP") || wpa_ie_len));
 	/* HT ralated element */
-	tmp_ht_cap_buf =(u8 *) &(ieee->pHTInfo->SelfHTCap);
+	tmp_ht_cap_buf = (u8 *) &(ieee->pHTInfo->SelfHTCap);
 	tmp_ht_cap_len = sizeof(ieee->pHTInfo->SelfHTCap);
-	tmp_ht_info_buf =(u8 *) &(ieee->pHTInfo->SelfHTInfo);
+	tmp_ht_info_buf = (u8 *) &(ieee->pHTInfo->SelfHTInfo);
 	tmp_ht_info_len = sizeof(ieee->pHTInfo->SelfHTInfo);
 	HTConstructCapabilityElement(ieee, tmp_ht_cap_buf, &tmp_ht_cap_len, encrypt);
 	HTConstructInfoElement(ieee, tmp_ht_info_buf, &tmp_ht_info_len, encrypt);
@@ -797,7 +797,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 	*(tag++) = MFIE_TYPE_RATES;
 	*(tag++) = rate_len-2;
 	memcpy(tag, ieee->current_network.rates, rate_len-2);
-	tag+=rate_len-2;
+	tag += rate_len-2;
 
 	*(tag++) = MFIE_TYPE_DS_SET;
 	*(tag++) = 1;
@@ -809,7 +809,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 
 		put_unaligned_le16(ieee->current_network.atim_window,
 				   (u8 *)tag);
-		tag+=2;
+		tag += 2;
 	}
 
 	if (erp_len) {
@@ -821,7 +821,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 		*(tag++) = MFIE_TYPE_RATES_EX;
 		*(tag++) = rate_ex_len-2;
 		memcpy(tag, ieee->current_network.rates_ex, rate_ex_len-2);
-		tag+=rate_ex_len-2;
+		tag += rate_ex_len-2;
 	}
 
 	if (wpa_ie_len)
@@ -884,7 +884,7 @@ static struct sk_buff *ieee80211_assoc_resp(struct ieee80211_device *ieee,
 
 	assoc->status = 0;
 	assoc->aid = cpu_to_le16(ieee->assoc_id);
-	if (ieee->assoc_id == 0x2007) ieee->assoc_id=0;
+	if (ieee->assoc_id == 0x2007) ieee->assoc_id = 0;
 	else ieee->assoc_id++;
 
 	tag = (u8 *) skb_put(skb, rate_len);
@@ -994,13 +994,13 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	unsigned int wpa_len = beacon->wpa_ie_len;
 	for HT */
 	u8 *ht_cap_buf = NULL;
-	u8 ht_cap_len=0;
-	u8 *realtek_ie_buf=NULL;
-	u8 realtek_ie_len=0;
+	u8 ht_cap_len = 0;
+	u8 *realtek_ie_buf = NULL;
+	u8 realtek_ie_len = 0;
 	int wpa_ie_len= ieee->wpa_ie_len;
-	unsigned int ckip_ie_len=0;
-	unsigned int ccxrm_ie_len=0;
-	unsigned int cxvernum_ie_len=0;
+	unsigned int ckip_ie_len = 0;
+	unsigned int ccxrm_ie_len = 0;
+	unsigned int cxvernum_ie_len = 0;
 	struct ieee80211_crypt_data *crypt;
 	int encrypt;
 
@@ -1016,7 +1016,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	encrypt = ieee->host_encrypt && crypt && crypt->ops && ((0 == strcmp(crypt->ops->name, "WEP") || wpa_ie_len));
 
 	/* Include High Throuput capability && Realtek proprietary */
-	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)
+	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT)
 	{
 		ht_cap_buf = (u8 *)&(ieee->pHTInfo->SelfHTCap);
 		ht_cap_len = sizeof(ieee->pHTInfo->SelfHTCap);
@@ -1046,7 +1046,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 		cxvernum_ie_len = 5+2;
 
 #ifdef THOMAS_TURBO
-	len = sizeof(struct ieee80211_assoc_request_frame)+ 2
+	len = sizeof(struct ieee80211_assoc_request_frame) + 2
 		+ beacon->ssid_len /* essid tagged val */
 		+ rate_len /* rates tagged val */
 		+ wpa_ie_len
@@ -1059,7 +1059,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 		+ cxvernum_ie_len
 		+ ieee->tx_headroom;
 #else
-	len = sizeof(struct ieee80211_assoc_request_frame)+ 2
+	len = sizeof(struct ieee80211_assoc_request_frame) + 2
 		+ beacon->ssid_len /* essid tagged val */
 		+ rate_len /* rates tagged val */
 		+ wpa_ie_len
@@ -1169,14 +1169,14 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 		tag += osCcxVerNum.Length;
 	}
 	/* HT cap element */
-	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT) {
+	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT) {
 		if (ieee->pHTInfo->ePeerHTSpecVer != HT_SPEC_VER_EWC)
 		{
 			tag = skb_put(skb, ht_cap_len);
 			*tag++ = MFIE_TYPE_HT_CAP;
 			*tag++ = ht_cap_len - 2;
-			memcpy(tag, ht_cap_buf, ht_cap_len -2);
-			tag += ht_cap_len -2;
+			memcpy(tag, ht_cap_buf, ht_cap_len - 2);
+			tag += ht_cap_len - 2;
 		}
 	}
 
@@ -1198,21 +1198,21 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	}
 #endif
 
-	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT) {
+	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT) {
 		if (ieee->pHTInfo->ePeerHTSpecVer == HT_SPEC_VER_EWC)
 		{
 			tag = skb_put(skb, ht_cap_len);
 			*tag++ = MFIE_TYPE_GENERIC;
 			*tag++ = ht_cap_len - 2;
 			memcpy(tag, ht_cap_buf, ht_cap_len - 2);
-			tag += ht_cap_len -2;
+			tag += ht_cap_len - 2;
 		}
 
 		if (ieee->pHTInfo->bCurrentRT2RTAggregation) {
 			tag = skb_put(skb, realtek_ie_len);
 			*tag++ = MFIE_TYPE_GENERIC;
 			*tag++ = realtek_ie_len - 2;
-			memcpy(tag, realtek_ie_buf, realtek_ie_len -2 );
+			memcpy(tag, realtek_ie_buf, realtek_ie_len - 2 );
 		}
 	}
 	/* printk("<=====%s(), %p, %p\n", __func__, ieee->dev, ieee->dev->dev_addr);
@@ -1264,7 +1264,7 @@ static void ieee80211_associate_step1(struct ieee80211_device *ieee)
 	IEEE80211_DEBUG_MGMT("Stopping scan\n");
 
 	ieee->softmac_stats.tx_auth_rq++;
-	skb=ieee80211_authentication_req(beacon, ieee, 0);
+	skb = ieee80211_authentication_req(beacon, ieee, 0);
 
 	if (!skb)
 		ieee80211_associate_abort(ieee);
@@ -1324,7 +1324,7 @@ static void ieee80211_associate_step2(struct ieee80211_device *ieee)
 	IEEE80211_DEBUG_MGMT("Sending association request\n");
 
 	ieee->softmac_stats.tx_ass_rq++;
-	skb=ieee80211_association_req(beacon, ieee);
+	skb = ieee80211_association_req(beacon, ieee);
 	if (!skb)
 		ieee80211_associate_abort(ieee);
 	else{
@@ -1346,7 +1346,7 @@ static void ieee80211_associate_complete_wq(struct work_struct *work)
 		ieee->rate = 22;
 		printk(KERN_INFO"Using B rates:%d\n", ieee->rate);
 	}
-	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)
+	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT)
 	{
 		printk("Successfully associated, ht enabled\n");
 		HTOnAssocRsp(ieee);
@@ -1359,10 +1359,10 @@ static void ieee80211_associate_complete_wq(struct work_struct *work)
 	}
 	ieee->LinkDetectInfo.SlotNum = 2 * (1 + ieee->current_network.beacon_interval/500);
 	/* To prevent the immediately calling watch_dog after association. */
-	if (ieee->LinkDetectInfo.NumRecvBcnInPeriod==0||ieee->LinkDetectInfo.NumRecvDataInPeriod==0 )
+	if (ieee->LinkDetectInfo.NumRecvBcnInPeriod == 0 || ieee->LinkDetectInfo.NumRecvDataInPeriod == 0 )
 	{
 		ieee->LinkDetectInfo.NumRecvBcnInPeriod = 1;
-		ieee->LinkDetectInfo.NumRecvDataInPeriod= 1;
+		ieee->LinkDetectInfo.NumRecvDataInPeriod = 1;
 	}
 	ieee->link_change(ieee->dev);
 	if (ieee->is_silent_reset == 0) {
@@ -1438,9 +1438,9 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 		 */
 		apset = ieee->wap_set; /* (memcmp(ieee->current_network.bssid, zero,ETH_ALEN)!=0 ); */
 		ssidset = ieee->ssid_set; /* ieee->current_network.ssid[0] != '\0'; */
-		ssidbroad =  !(net->ssid_len == 0 || net->ssid[0]== '\0');
-		apmatch = (memcmp(ieee->current_network.bssid, net->bssid, ETH_ALEN)==0);
-		ssidmatch = (ieee->current_network.ssid_len == net->ssid_len)&&\
+		ssidbroad =  !(net->ssid_len == 0 || net->ssid[0] == '\0');
+		apmatch = (memcmp(ieee->current_network.bssid, net->bssid, ETH_ALEN) == 0);
+		ssidmatch = (ieee->current_network.ssid_len == net->ssid_len) && \
 				(!strncmp(ieee->current_network.ssid, net->ssid, net->ssid_len));
 
 
@@ -1548,7 +1548,7 @@ static inline u16 auth_parse(struct sk_buff *skb, u8 **challenge, int *chlen)
 	}
 	*challenge = NULL;
 	a = (struct ieee80211_authentication *) skb->data;
-	if (skb->len > (sizeof(struct ieee80211_authentication) +3)) {
+	if (skb->len > (sizeof(struct ieee80211_authentication) + 3)) {
 		t = skb->data + sizeof(struct ieee80211_authentication);
 
 		if (*(t++) == MFIE_TYPE_CHALLENGE) {
@@ -1586,7 +1586,7 @@ static short probe_rq_parse(struct ieee80211_device *ieee, struct sk_buff *skb,
 {
 	u8 *tag;
 	u8 *skbend;
-	u8 *ssid=NULL;
+	u8 *ssid = NULL;
 	u8 ssidlen = 0;
 
 	struct ieee80211_hdr_3addr   *header =
@@ -1652,8 +1652,8 @@ static inline u16 assoc_parse(struct ieee80211_device *ieee, struct sk_buff *skb
 	*aid = le16_to_cpu(response_head->aid) & 0x3fff;
 
 	status_code = le16_to_cpu(response_head->status);
-	if ((status_code==WLAN_STATUS_ASSOC_DENIED_RATES || \
-	   status_code==WLAN_STATUS_CAPS_UNSUPPORTED)&&
+	if ((status_code == WLAN_STATUS_ASSOC_DENIED_RATES || \
+	   status_code == WLAN_STATUS_CAPS_UNSUPPORTED) &&
 	   ((ieee->mode == IEEE_G) &&
 	    (ieee->current_network.mode == IEEE_N_24G) &&
 	    (ieee->AsocRetryCount++ < (RT_ASOC_RETRY_LIMIT-1)))) {
@@ -1743,7 +1743,7 @@ static short ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32 *time_h,
 	printk("VALID\n"); */
 	ieee->current_network.dtim_data = IEEE80211_DTIM_INVALID;
 
-	if (dtim & ((IEEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST)& ieee->ps))
+	if (dtim & ((IEEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST) & ieee->ps))
 		return 2;
 
 	if (!time_after(jiffies, ieee->dev->trans_start + MSECS(timeout)))
@@ -1905,7 +1905,7 @@ static void ieee80211_process_action(struct ieee80211_device *ieee,
 		return;
 	}
 	tmp = *act;
-	act ++;
+	act ++ ;
 	switch (tmp) {
 	case ACT_CAT_BA:
 		if (*act == ACT_ADDBAREQ)
@@ -1929,7 +1929,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 	struct ieee80211_hdr_3addr *header = (struct ieee80211_hdr_3addr *) skb->data;
 	u16 errcode;
 	u8 *challenge;
-	int chlen=0;
+	int chlen = 0;
 	int aid;
 	struct ieee80211_assoc_response_frame *assoc_resp;
 	/* struct ieee80211_info_element *info_element; */
@@ -1963,7 +1963,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 			errcode = assoc_parse(ieee, skb, &aid);
 			if (!errcode) {
-				ieee->state=IEEE80211_LINKED;
+				ieee->state = IEEE80211_LINKED;
 				ieee->assoc_id = aid;
 				ieee->softmac_stats.rx_ass_ok++;
 				/* station support qos */
@@ -2163,7 +2163,7 @@ void ieee80211_softmac_xmit(struct ieee80211_txb *txb, struct ieee80211_device *
 #else
 		if ((skb_queue_len(&ieee->skb_waitQ[queue_index]) != 0) ||
 #endif
-		(!ieee->check_nic_enough_desc(ieee->dev, queue_index))||\
+		(!ieee->check_nic_enough_desc(ieee->dev, queue_index)) || \
 		     (ieee->queue_stop)) {
 			/* insert the skb packet to the wait queue */
 			/* as for the completion function, it does not need
@@ -2693,8 +2693,8 @@ void ieee80211_softmac_init(struct ieee80211_device *ieee)
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc memory for DOT11D\n");
 	/* added for  AP roaming */
 	ieee->LinkDetectInfo.SlotNum = 2;
-	ieee->LinkDetectInfo.NumRecvBcnInPeriod=0;
-	ieee->LinkDetectInfo.NumRecvDataInPeriod=0;
+	ieee->LinkDetectInfo.NumRecvBcnInPeriod = 0;
+	ieee->LinkDetectInfo.NumRecvDataInPeriod = 0;
 
 	ieee->assoc_id = 0;
 	ieee->queue_stop = 0;
@@ -2707,9 +2707,9 @@ void ieee80211_softmac_init(struct ieee80211_device *ieee)
 	ieee->rate = 22;
 	ieee->ps = IEEE80211_PS_DISABLED;
 	ieee->sta_sleep = 0;
-	ieee->Regdot11HTOperationalRateSet[0]= 0xff;/* support MCS 0~7 */
-	ieee->Regdot11HTOperationalRateSet[1]= 0xff;/* support MCS 8~15 */
-	ieee->Regdot11HTOperationalRateSet[4]= 0x01;
+	ieee->Regdot11HTOperationalRateSet[0] = 0xff;/* support MCS 0~7 */
+	ieee->Regdot11HTOperationalRateSet[1] = 0xff;/* support MCS 8~15 */
+	ieee->Regdot11HTOperationalRateSet[4] = 0x01;
 	/* added by amy */
 	ieee->actscanning = false;
 	ieee->beinretry = false;
@@ -2878,7 +2878,7 @@ static int ieee80211_wpa_set_auth_algs(struct ieee80211_device *ieee, int value)
 
 static int ieee80211_wpa_set_param(struct ieee80211_device *ieee, u8 name, u32 value)
 {
-	int ret=0;
+	int ret = 0;
 	unsigned long flags;
 
 	switch (name) {
@@ -2887,7 +2887,7 @@ static int ieee80211_wpa_set_param(struct ieee80211_device *ieee, u8 name, u32 v
 		break;
 
 	case IEEE_PARAM_TKIP_COUNTERMEASURES:
-		ieee->tkip_countermeasures=value;
+		ieee->tkip_countermeasures = value;
 		break;
 
 	case IEEE_PARAM_DROP_UNENCRYPTED: {
@@ -2924,7 +2924,7 @@ static int ieee80211_wpa_set_param(struct ieee80211_device *ieee, u8 name, u32 v
 	}
 
 	case IEEE_PARAM_PRIVACY_INVOKED:
-		ieee->privacy_invoked=value;
+		ieee->privacy_invoked = value;
 		break;
 
 	case IEEE_PARAM_AUTH_ALGS:
@@ -2932,7 +2932,7 @@ static int ieee80211_wpa_set_param(struct ieee80211_device *ieee, u8 name, u32 v
 		break;
 
 	case IEEE_PARAM_IEEE_802_1X:
-		ieee->ieee802_1x=value;
+		ieee->ieee802_1x = value;
 		break;
 	case IEEE_PARAM_WPAX_SELECT:
 		/* added for WPA2 mixed mode */
@@ -3150,7 +3150,7 @@ EXPORT_SYMBOL(SendDisassociation);
 int ieee80211_wpa_supplicant_ioctl(struct ieee80211_device *ieee, struct iw_point *p)
 {
 	struct ieee_param *param;
-	int ret=0;
+	int ret = 0;
 
 	down(&ieee->wx_sem);
 	/* IEEE_DEBUG_INFO("wpa_supplicant: len=%d\n", p->length); */
-- 
1.9.1



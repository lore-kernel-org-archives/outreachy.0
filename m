X-GM-THRID: 5994634543104
X-Received: by 10.112.126.194 with SMTP id na2mr4057093lbb.18.1425316477806;
        Mon, 02 Mar 2015 09:14:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.165 with SMTP id uf5ls483562lac.60.gmail; Mon, 02 Mar
 2015 09:14:36 -0800 (PST)
X-Received: by 10.112.156.65 with SMTP id wc1mr1304130lbb.7.1425316476825;
        Mon, 02 Mar 2015 09:14:36 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id cl5si703970wib.3.2015.03.02.09.14.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:14:36 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id em10so16517791wid.5
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 09:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0WwQn7fnr0dttv5Pbzb9adBBEHrEVp6tIxKvdDwSuQ4=;
        b=tuySjVUMQoCM5dMpwnCXeE0UsjU8OQOWKtBSMgpwfizCC+BXSiVYxhB7YZMvqezpIY
         a9XBKvmrSpF2RL3XCczUMKiH9BQh6Wg2Mb22+LqNxNsRQVtjcoVvzLbmV8FzX9bJUIuX
         1B5Ncfxq/EnVzeEkWwBygN77gEA8iXPXCTBS/PDi++w/TqiRxrNkKUfj+D7tV91ikHTC
         hvlsxQRVRAPmlRtjB5ENSZqFh4ae4Hb85NnOewFl/6iZqadDke43P6jwYKUYH14wdbdx
         eKeH7mweakxK8mr4EuKPPJQD202KGCliRVzAUsNO0dXNQSFqvXACFxS5/GvHUGzxpSpZ
         qZ6A==
X-Received: by 10.180.211.172 with SMTP id nd12mr37383623wic.88.1425316476722;
        Mon, 02 Mar 2015 09:14:36 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id dz6sm16923104wib.0.2015.03.02.09.14.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 09:14:36 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieeee80211: Add sapace before '{' and after '}'
Date: Mon,  2 Mar 2015 19:14:25 +0200
Message-Id: <1425316465-16949-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Space required before the open brace '{' and after the close brace '}'
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 184 ++++++++++-----------
 1 file changed, 92 insertions(+), 92 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 057d4d1..2c53763 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -62,7 +62,7 @@ static void ieee80211_MFIE_Brate(struct ieee80211_device *ieee, u8 **tag_p)
 {
 	u8 *tag = *tag_p;
 
-	if (ieee->modulation & IEEE80211_CCK_MODULATION){
+	if (ieee->modulation & IEEE80211_CCK_MODULATION) {
 		*tag++ = MFIE_TYPE_RATES;
 		*tag++ = 4;
 		*tag++ = IEEE80211_BASIC_RATE_MASK | IEEE80211_CCK_RATE_1MB;
@@ -79,7 +79,7 @@ static void ieee80211_MFIE_Grate(struct ieee80211_device *ieee, u8 **tag_p)
 {
 	u8 *tag = *tag_p;
 
-		if (ieee->modulation & IEEE80211_OFDM_MODULATION){
+		if (ieee->modulation & IEEE80211_OFDM_MODULATION) {
 
 		*tag++ = MFIE_TYPE_RATES_EX;
 		*tag++ = 8;
@@ -192,7 +192,7 @@ static u8 MgntQuery_MgntFrameTxRate(struct ieee80211_device *ieee)
 	else
 		rate = ieee->basic_rate & 0x7f;
 
-	if (rate == 0){
+	if (rate == 0) {
 		/* 2005.01.26, by rcnjko. */
 		if (ieee->mode == IEEE_A||
 		   ieee->mode== IEEE_N_5G||
@@ -237,10 +237,10 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee
 	tcb_desc->bTxDisableRateFallBack = 1;
 	tcb_desc->bTxUseDriverAssingedRate = 1;
 
-	if (single){
-		if (ieee->queue_stop){
+	if (single) {
+		if (ieee->queue_stop) {
 			enqueue_mgmt(ieee, skb);
-		}else{
+		} else {
 			header->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0]<<4);
 
 			if (ieee->seq_ctrl[0] == 0xFFF)
@@ -255,7 +255,7 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee
 		}
 
 		spin_unlock_irqrestore(&ieee->lock, flags);
-	}else{
+	} else {
 		spin_unlock_irqrestore(&ieee->lock, flags);
 		spin_lock_irqsave(&ieee->mgmt_tx_lock, flags);
 
@@ -293,7 +293,7 @@ inline void softmac_ps_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *i
 		(struct ieee80211_hdr_3addr  *) skb->data;
 
 
-	if (single){
+	if (single) {
 
 		header->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0] << 4);
 
@@ -306,7 +306,7 @@ inline void softmac_ps_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *i
 		ieee->dev->trans_start = jiffies;
 		ieee->softmac_data_hard_start_xmit(skb,ieee->dev,ieee->basic_rate);
 
-	}else{
+	} else {
 
 		header->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0] << 4);
 
@@ -369,7 +369,7 @@ static void ieee80211_send_beacon(struct ieee80211_device *ieee)
 	/* unsigned long flags; */
 	skb = ieee80211_get_beacon_(ieee);
 
-	if (skb){
+	if (skb) {
 		softmac_mgmt_xmit(skb, ieee);
 		ieee->softmac_stats.tx_beacons++;
 		/* dev_kfree_skb_any(skb); edit by thomas */
@@ -378,7 +378,7 @@ static void ieee80211_send_beacon(struct ieee80211_device *ieee)
 		(MSECS( ieee->current_network.beacon_interval -5));
 
 	spin_lock_irqsave(&ieee->beacon_lock,flags); */
-	if (ieee->beacon_txing && ieee->ieee_up){
+	if (ieee->beacon_txing && ieee->ieee_up) {
 		/* if(!timer_pending(&ieee->beacon_timer))
 			add_timer(&ieee->beacon_timer); */
 		mod_timer(&ieee->beacon_timer,jiffies+(MSECS(ieee->current_network.beacon_interval-5)));
@@ -404,7 +404,7 @@ static void ieee80211_send_probe(struct ieee80211_device *ieee)
 	struct sk_buff *skb;
 
 	skb = ieee80211_probe_req(ieee);
-	if (skb){
+	if (skb) {
 		softmac_mgmt_xmit(skb, ieee);
 		ieee->softmac_stats.tx_probe_rq++;
 		/* dev_kfree_skb_any(skb); edit by thomas */
@@ -413,7 +413,7 @@ static void ieee80211_send_probe(struct ieee80211_device *ieee)
 
 static void ieee80211_send_probe_requests(struct ieee80211_device *ieee)
 {
-	if (ieee->active_scan && (ieee->softmac_features & IEEE_SOFTMAC_PROBERQ)){
+	if (ieee->active_scan && (ieee->softmac_features & IEEE_SOFTMAC_PROBERQ)) {
 		ieee80211_send_probe(ieee);
 		ieee80211_send_probe(ieee);
 	}
@@ -433,11 +433,11 @@ void ieee80211_softmac_scan_syncro(struct ieee80211_device *ieee)
 	while (1)
 	{
 
-		do{
+		do {
 			ch++;
 			if (ch > MAX_CHANNEL_NUMBER)
 				goto out; /* scan completed */
-		}while (!channel_map[ch]);
+		} while (!channel_map[ch]);
 
 		/* this function can be called in two situations
 		 * 1- We have switched to ad-hoc mode and we are
@@ -478,7 +478,7 @@ void ieee80211_softmac_scan_syncro(struct ieee80211_device *ieee)
 
 	}
 out:
-	if (ieee->state < IEEE80211_LINKED){
+	if (ieee->state < IEEE80211_LINKED) {
 		ieee->actscanning = false;
 		up(&ieee->scan_sem);
 	}
@@ -501,7 +501,7 @@ static void ieee80211_softmac_scan_wq(struct work_struct *work)
 	if (!ieee->ieee_up)
 		return;
 	down(&ieee->scan_sem);
-	do{
+	do {
 		ieee->current_network.channel =
 			(ieee->current_network.channel + 1) % MAX_CHANNEL_NUMBER;
 		if (watchdog++ > MAX_CHANNEL_NUMBER)
@@ -512,7 +512,7 @@ static void ieee80211_softmac_scan_wq(struct work_struct *work)
 				goto out; /* no good chans */
 			}
 		}
-	}while (!channel_map[ieee->current_network.channel]);
+	} while (!channel_map[ieee->current_network.channel]);
 	if (ieee->scanning == 0 )
 		goto out;
 	ieee->set_chan(ieee->dev, ieee->current_network.channel);
@@ -587,7 +587,7 @@ static void ieee80211_softmac_stop_scan(struct ieee80211_device *ieee)
 	down(&ieee->scan_sem);
 	/* spin_lock_irqsave(&ieee->lock, flags); */
 
-	if (ieee->scanning == 1){
+	if (ieee->scanning == 1) {
 		ieee->scanning = 0;
 
 		cancel_delayed_work(&ieee->softmac_scan_wq);
@@ -616,12 +616,12 @@ static void ieee80211_start_scan(struct ieee80211_device *ieee)
 			RESET_CIE_WATCHDOG(ieee);
 		}
 	}
-	if (ieee->softmac_features & IEEE_SOFTMAC_SCAN){
-		if (ieee->scanning == 0){
+	if (ieee->softmac_features & IEEE_SOFTMAC_SCAN) {
+		if (ieee->scanning == 0) {
 			ieee->scanning = 1;
 			queue_delayed_work(ieee->wq, &ieee->softmac_scan_wq, 0);
 		}
-	}else
+	} else
 		ieee->start_scan(ieee->dev);
 
 }
@@ -803,7 +803,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 	*(tag++) = 1;
 	*(tag++) = ieee->current_network.channel;
 
-	if (atim_len){
+	if (atim_len) {
 		*(tag++) = MFIE_TYPE_IBSS_SET;
 		*(tag++) = 2;
 
@@ -812,12 +812,12 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 		tag+=2;
 	}
 
-	if (erp_len){
+	if (erp_len) {
 		*(tag++) = MFIE_TYPE_ERP;
 		*(tag++) = 1;
 		*(tag++) = erpinfo_content;
 	}
-	if (rate_ex_len){
+	if (rate_ex_len) {
 		*(tag++) = MFIE_TYPE_RATES_EX;
 		*(tag++) = rate_ex_len-2;
 		memcpy(tag, ieee->current_network.rates_ex, rate_ex_len-2);
@@ -1169,7 +1169,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 		tag += osCcxVerNum.Length;
 	}
 	/* HT cap element */
-	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
+	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT) {
 		if (ieee->pHTInfo->ePeerHTSpecVer != HT_SPEC_VER_EWC)
 		{
 			tag = skb_put(skb, ht_cap_len);
@@ -1183,7 +1183,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 
 	/* choose what wpa_supplicant gives to associate. */
 	tag = skb_put(skb, wpa_ie_len);
-	if (wpa_ie_len){
+	if (wpa_ie_len) {
 		memcpy(tag, ieee->wpa_ie, ieee->wpa_ie_len);
 	}
 
@@ -1198,7 +1198,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	}
 #endif
 
-	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
+	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT) {
 		if (ieee->pHTInfo->ePeerHTSpecVer == HT_SPEC_VER_EWC)
 		{
 			tag = skb_put(skb, ht_cap_len);
@@ -1208,7 +1208,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 			tag += ht_cap_len -2;
 		}
 
-		if (ieee->pHTInfo->bCurrentRT2RTAggregation){
+		if (ieee->pHTInfo->bCurrentRT2RTAggregation) {
 			tag = skb_put(skb, realtek_ie_len);
 			*tag++ = MFIE_TYPE_GENERIC;
 			*tag++ = realtek_ie_len - 2;
@@ -1234,10 +1234,10 @@ void ieee80211_associate_abort(struct ieee80211_device *ieee)
 	 * Here we will check if there are good nets to associate
 	 * with, so we retry or just get back to NO_LINK and scanning
 	 */
-	if (ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATING){
+	if (ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATING) {
 		IEEE80211_DEBUG_MGMT("Authentication failed\n");
 		ieee->softmac_stats.no_auth_rs++;
-	}else{
+	} else {
 		IEEE80211_DEBUG_MGMT("Association failed\n");
 		ieee->softmac_stats.no_ass_rs++;
 	}
@@ -1274,7 +1274,7 @@ static void ieee80211_associate_step1(struct ieee80211_device *ieee)
 		/* printk(KERN_WARNING "Sending authentication request\n"); */
 		softmac_mgmt_xmit(skb, ieee);
 		/* BUGON when you try to add_timer twice, using mod_timer may be better, john0709 */
-		if (!timer_pending(&ieee->associate_timer)){
+		if (!timer_pending(&ieee->associate_timer)) {
 			ieee->associate_timer.expires = jiffies + (HZ / 2);
 			add_timer(&ieee->associate_timer);
 		}
@@ -1338,11 +1338,11 @@ static void ieee80211_associate_complete_wq(struct work_struct *work)
 	struct ieee80211_device *ieee = container_of(work, struct ieee80211_device, associate_complete_wq);
 	printk(KERN_INFO "Associated successfully\n");
 	if (ieee80211_is_54g(&ieee->current_network) &&
-		(ieee->modulation & IEEE80211_OFDM_MODULATION)){
+		(ieee->modulation & IEEE80211_OFDM_MODULATION)) {
 
 		ieee->rate = 108;
 		printk(KERN_INFO"Using G rates:%d\n", ieee->rate);
-	}else{
+	} else {
 		ieee->rate = 22;
 		printk(KERN_INFO"Using B rates:%d\n", ieee->rate);
 	}
@@ -1365,7 +1365,7 @@ static void ieee80211_associate_complete_wq(struct work_struct *work)
 		ieee->LinkDetectInfo.NumRecvDataInPeriod= 1;
 	}
 	ieee->link_change(ieee->dev);
-	if (ieee->is_silent_reset == 0){
+	if (ieee->is_silent_reset == 0) {
 		printk("============>normal associate\n");
 	notify_wx_assoc_event(ieee);
 	}
@@ -1431,7 +1431,7 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 		return;
 
 
-	if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC){
+	if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC) {
 		/* if the user specified the AP MAC, we need also the essid
 		 * This could be obtained by beacons or, if the network does not
 		 * broadcast it, it can be put manually.
@@ -1459,13 +1459,13 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 				/* if the essid is hidden replace it with the
 				* essid provided by the user.
 				*/
-				if (!ssidbroad){
+				if (!ssidbroad) {
 					strncpy(tmp_ssid, ieee->current_network.ssid, IW_ESSID_MAX_SIZE);
 					tmp_ssid_len = ieee->current_network.ssid_len;
 				}
 				memcpy(&ieee->current_network, net, sizeof(struct ieee80211_network));
 
-				if (!ssidbroad){
+				if (!ssidbroad) {
 					strncpy(ieee->current_network.ssid, tmp_ssid, IW_ESSID_MAX_SIZE);
 					ieee->current_network.ssid_len = tmp_ssid_len;
 				}
@@ -1473,7 +1473,7 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 
 				/* ieee->pHTInfo->IOTAction = 0; */
 				HTResetIOTSetting(ieee->pHTInfo);
-				if (ieee->iw_mode == IW_MODE_INFRA){
+				if (ieee->iw_mode == IW_MODE_INFRA) {
 					/* Join the network for the first time */
 					ieee->AsocRetryCount = 0;
 					/* for HT by amy 080514 */
@@ -1492,13 +1492,13 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 
 					ieee->state = IEEE80211_ASSOCIATING;
 					queue_work(ieee->wq, &ieee->associate_procedure_wq);
-				}else{
+				} else {
 					if (ieee80211_is_54g(&ieee->current_network) &&
-						(ieee->modulation & IEEE80211_OFDM_MODULATION)){
+						(ieee->modulation & IEEE80211_OFDM_MODULATION)) {
 						ieee->rate = 108;
 						ieee->SetWirelessMode(ieee->dev, IEEE_G);
 						printk(KERN_INFO"Using G rates\n");
-					}else{
+					} else {
 						ieee->rate = 22;
 						ieee->SetWirelessMode(ieee->dev, IEEE_B);
 						printk(KERN_INFO"Using B rates\n");
@@ -1542,16 +1542,16 @@ static inline u16 auth_parse(struct sk_buff *skb, u8 **challenge, int *chlen)
 {
 	struct ieee80211_authentication *a;
 	u8 *t;
-	if (skb->len <  (sizeof(struct ieee80211_authentication)-sizeof(struct ieee80211_info_element))){
+	if (skb->len <  (sizeof(struct ieee80211_authentication)-sizeof(struct ieee80211_info_element))) {
 		IEEE80211_DEBUG_MGMT("invalid len in auth resp: %d\n",skb->len);
 		return 0xcafe;
 	}
 	*challenge = NULL;
 	a = (struct ieee80211_authentication *) skb->data;
-	if (skb->len > (sizeof(struct ieee80211_authentication) +3)){
+	if (skb->len > (sizeof(struct ieee80211_authentication) +3)) {
 		t = skb->data + sizeof(struct ieee80211_authentication);
 
-		if (*(t++) == MFIE_TYPE_CHALLENGE){
+		if (*(t++) == MFIE_TYPE_CHALLENGE) {
 			*chlen = *(t++);
 			*challenge = kmemdup(t, *chlen, GFP_ATOMIC);
 			if (!*challenge)
@@ -1568,7 +1568,7 @@ static int auth_rq_parse(struct sk_buff *skb, u8 *dest)
 {
 	struct ieee80211_authentication *a;
 
-	if (skb->len <  (sizeof(struct ieee80211_authentication)-sizeof(struct ieee80211_info_element))){
+	if (skb->len <  (sizeof(struct ieee80211_authentication)-sizeof(struct ieee80211_info_element))) {
 		IEEE80211_DEBUG_MGMT("invalid len in auth request: %d\n",skb->len);
 		return -1;
 	}
@@ -1601,8 +1601,8 @@ static short probe_rq_parse(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	tag = skb->data + sizeof (struct ieee80211_hdr_3addr  );
 
-	while (tag+1 < skbend){
-		if (*tag == 0){
+	while (tag+1 < skbend) {
+		if (*tag == 0) {
 			ssid = tag+2;
 			ssidlen = *(tag+1);
 			break;
@@ -1643,7 +1643,7 @@ static inline u16 assoc_parse(struct ieee80211_device *ieee, struct sk_buff *skb
 	struct ieee80211_assoc_response_frame *response_head;
 	u16 status_code;
 
-	if (skb->len <  sizeof(struct ieee80211_assoc_response_frame)){
+	if (skb->len <  sizeof(struct ieee80211_assoc_response_frame)) {
 		IEEE80211_DEBUG_MGMT("invalid len in auth resp: %d\n", skb->len);
 		return 0xcafe;
 	}
@@ -1658,7 +1658,7 @@ static inline u16 assoc_parse(struct ieee80211_device *ieee, struct sk_buff *skb
 	    (ieee->current_network.mode == IEEE_N_24G) &&
 	    (ieee->AsocRetryCount++ < (RT_ASOC_RETRY_LIMIT-1)))) {
 		 ieee->pHTInfo->IOTAction |= HT_IOT_ACT_PURE_N_MODE;
-	}else {
+	} else {
 		 ieee->AsocRetryCount = 0;
 	}
 
@@ -1673,7 +1673,7 @@ ieee80211_rx_probe_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
 	/* IEEE80211DMESG("Rx probe"); */
 	ieee->softmac_stats.rx_probe_rq++;
 	/* DMESG("Dest is "MACSTR, MAC2STR(dest)); */
-	if (probe_rq_parse(ieee, skb, dest)){
+	if (probe_rq_parse(ieee, skb, dest)) {
 		/* IEEE80211DMESG("Was for me!"); */
 		ieee->softmac_stats.tx_probe_rs++;
 		ieee80211_resp_to_probe(ieee, dest);
@@ -1704,7 +1704,7 @@ ieee80211_rx_assoc_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
 	/* unsigned long flags; */
 
 	ieee->softmac_stats.rx_ass_rq++;
-	if (assoc_rq_parse(skb,dest) != -1){
+	if (assoc_rq_parse(skb,dest) != -1) {
 		ieee80211_resp_to_assoc_rq(ieee, dest);
 	}
 
@@ -1756,13 +1756,13 @@ static short ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32 *time_h,
 		(ieee->mgmt_queue_tail != ieee->mgmt_queue_head))
 		return 0;
 
-	if (time_l){
+	if (time_l) {
 		*time_l = ieee->current_network.last_dtim_sta_time[0]
 			+ (ieee->current_network.beacon_interval
 			* ieee->current_network.dtim_period) * 1000;
 	}
 
-	if (time_h){
+	if (time_h) {
 		*time_h = ieee->current_network.last_dtim_sta_time[1];
 		if (time_l && *time_l < ieee->current_network.last_dtim_sta_time[0])
 			*time_h += 1;
@@ -1800,16 +1800,16 @@ static inline void ieee80211_sta_ps(struct ieee80211_device *ieee)
 	if (sleep == 0)
 		goto out;
 
-	if (sleep == 1){
+	if (sleep == 1) {
 
 		if (ieee->sta_sleep == 1)
 			ieee->enter_sleep_state(ieee->dev, th, tl);
 
-		else if (ieee->sta_sleep == 0){
+		else if (ieee->sta_sleep == 0) {
 			/* printk("send null 1\n"); */
 			spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);
 
-			if (ieee->ps_is_queue_empty(ieee->dev)){
+			if (ieee->ps_is_queue_empty(ieee->dev)) {
 
 
 				ieee->sta_sleep = 2;
@@ -1826,7 +1826,7 @@ static inline void ieee80211_sta_ps(struct ieee80211_device *ieee)
 		}
 
 
-	}else if (sleep == 2){
+	} else if (sleep == 2) {
 /* #warning CHECK_LOCK_HERE */
 		spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);
 
@@ -1842,8 +1842,8 @@ out:
 
 void ieee80211_sta_wakeup(struct ieee80211_device *ieee, short nl)
 {
-	if (ieee->sta_sleep == 0){
-		if (nl){
+	if (ieee->sta_sleep == 0) {
+		if (nl) {
 			printk("Warning: driver is probably failing to report TX ps error\n");
 			ieee->ps_request_tx_ack(ieee->dev);
 			ieee80211_sta_ps_send_null_frame(ieee, 0);
@@ -1857,7 +1857,7 @@ void ieee80211_sta_wakeup(struct ieee80211_device *ieee, short nl)
 
 	ieee->sta_sleep = 0;
 
-	if (nl){
+	if (nl) {
 		ieee->ps_request_tx_ack(ieee->dev);
 		ieee80211_sta_ps_send_null_frame(ieee, 0);
 	}
@@ -1869,9 +1869,9 @@ void ieee80211_ps_tx_ack(struct ieee80211_device *ieee, short success)
 
 	spin_lock_irqsave(&ieee->lock, flags);
 
-	if (ieee->sta_sleep == 2){
+	if (ieee->sta_sleep == 2) {
 		/* Null frame with PS bit set */
-		if (success){
+		if (success) {
 			ieee->sta_sleep = 1;
 			ieee->enter_sleep_state(ieee->dev,ieee->ps_th,ieee->ps_tl);
 		}
@@ -2014,7 +2014,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	case IEEE80211_STYPE_AUTH:
 
-		if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE){
+		if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) {
 			if (ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATING &&
 			ieee->iw_mode == IW_MODE_INFRA){
 
@@ -2022,7 +2022,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 					errcode = auth_parse(skb, &challenge, &chlen);
 					if (!errcode) {
-						if (ieee->open_wep || !challenge){
+						if (ieee->open_wep || !challenge) {
 							ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATED;
 							ieee->softmac_stats.rx_auth_rs_ok++;
 							if (!(ieee->pHTInfo->IOTAction&HT_IOT_ACT_PURE_N_MODE))
@@ -2048,7 +2048,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 								/* N mode setting */
 								ieee->SetWirelessMode(ieee->dev, \
 										ieee->current_network.mode);
-							}else{
+							} else {
 								/* b/g mode setting */
 								/*TODO*/
 								ieee->SetWirelessMode(ieee->dev, IEEE_G);
@@ -2063,16 +2063,16 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 								ieee->bHalfWirelessN24GMode = false;
 
 							ieee80211_associate_step2(ieee);
-						}else{
+						} else {
 							ieee80211_auth_challenge(ieee, challenge, chlen);
 						}
-					}else{
+					} else {
 						ieee->softmac_stats.rx_auth_rs_err++;
 						IEEE80211_DEBUG_MGMT("Authentication response status code 0x%x",errcode);
 						ieee80211_associate_abort(ieee);
 					}
 
-				}else if (ieee->iw_mode == IW_MODE_MASTER){
+				} else if (ieee->iw_mode == IW_MODE_MASTER) {
 					ieee80211_rx_auth_rq(ieee, skb);
 				}
 			}
@@ -2176,7 +2176,7 @@ void ieee80211_softmac_xmit(struct ieee80211_txb *txb, struct ieee80211_device *
 #else
 			skb_queue_tail(&ieee->skb_waitQ[queue_index], txb->fragments[i]);
 #endif
-		}else{
+		} else {
 			ieee->softmac_data_hard_start_xmit(
 					txb->fragments[i],
 					ieee->dev, ieee->rate);
@@ -2200,10 +2200,10 @@ static void ieee80211_resume_tx(struct ieee80211_device *ieee)
 	int i;
 	for (i = ieee->tx_pending.frag; i < ieee->tx_pending.txb->nr_frags; i++) {
 
-		if (ieee->queue_stop){
+		if (ieee->queue_stop) {
 			ieee->tx_pending.frag = i;
 			return;
-		}else{
+		} else {
 
 			ieee->softmac_data_hard_start_xmit(
 				ieee->tx_pending.txb->fragments[i],
@@ -2226,7 +2226,7 @@ void ieee80211_reset_queue(struct ieee80211_device *ieee)
 
 	spin_lock_irqsave(&ieee->lock, flags);
 	init_mgmt_queue(ieee);
-	if (ieee->tx_pending.txb){
+	if (ieee->tx_pending.txb) {
 		ieee80211_txb_free(ieee->tx_pending.txb);
 		ieee->tx_pending.txb = NULL;
 	}
@@ -2248,8 +2248,8 @@ void ieee80211_wake_queue(struct ieee80211_device *ieee)
 
 	ieee->queue_stop = 0;
 
-	if (ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE){
-		while (!ieee->queue_stop && (skb = dequeue_mgmt(ieee))){
+	if (ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE) {
+		while (!ieee->queue_stop && (skb = dequeue_mgmt(ieee))) {
 
 			header = (struct ieee80211_hdr_3addr  *) skb->data;
 
@@ -2267,7 +2267,7 @@ void ieee80211_wake_queue(struct ieee80211_device *ieee)
 	if (!ieee->queue_stop && ieee->tx_pending.txb)
 		ieee80211_resume_tx(ieee);
 
-	if (!ieee->queue_stop && netif_queue_stopped(ieee->dev)){
+	if (!ieee->queue_stop && netif_queue_stopped(ieee->dev)) {
 		ieee->softmac_stats.swtxawake++;
 		netif_wake_queue(ieee->dev);
 	}
@@ -2282,7 +2282,7 @@ void ieee80211_stop_queue(struct ieee80211_device *ieee)
 	/* unsigned long flags;
 	spin_lock_irqsave(&ieee->lock,flags); */
 
-	if (! netif_queue_stopped(ieee->dev)){
+	if (! netif_queue_stopped(ieee->dev)) {
 		netif_stop_queue(ieee->dev);
 		ieee->softmac_stats.swtxstop++;
 	}
@@ -2303,7 +2303,7 @@ void ieee80211_start_master_bss(struct ieee80211_device *ieee)
 {
 	ieee->assoc_id = 1;
 
-	if (ieee->current_network.ssid_len == 0){
+	if (ieee->current_network.ssid_len == 0) {
 		strncpy(ieee->current_network.ssid,
 			IEEE80211_DEFAULT_TX_ESSID,
 			IW_ESSID_MAX_SIZE);
@@ -2327,7 +2327,7 @@ void ieee80211_start_master_bss(struct ieee80211_device *ieee)
 
 static void ieee80211_start_monitor_mode(struct ieee80211_device *ieee)
 {
-	if (ieee->raw_tx){
+	if (ieee->raw_tx) {
 
 		if (ieee->data_hard_resume)
 			ieee->data_hard_resume(ieee->dev);
@@ -2347,13 +2347,13 @@ static void ieee80211_start_ibss_wq(struct work_struct *work)
 	 * (abort) this wq (when syncro scanning) before sleeping
 	 * on the semaphore
 	 */
-	if (!ieee->proto_started){
+	if (!ieee->proto_started) {
 		printk("==========oh driver down return\n");
 		return;
 	}
 	down(&ieee->wx_sem);
 
-	if (ieee->current_network.ssid_len == 0){
+	if (ieee->current_network.ssid_len == 0) {
 		strcpy(ieee->current_network.ssid, IEEE80211_DEFAULT_TX_ESSID);
 		ieee->current_network.ssid_len = strlen(IEEE80211_DEFAULT_TX_ESSID);
 		ieee->ssid_set = 1;
@@ -2384,12 +2384,12 @@ static void ieee80211_start_ibss_wq(struct work_struct *work)
 		ieee80211_start_scan_syncro(ieee);
 
 	/* the network definitively is not here.. create a new cell */
-	if (ieee->state == IEEE80211_NOLINK){
+	if (ieee->state == IEEE80211_NOLINK) {
 		printk("creating new IBSS cell\n");
 		if (!ieee->wap_set)
 			ieee80211_randomize_cell(ieee);
 
-		if (ieee->modulation & IEEE80211_CCK_MODULATION){
+		if (ieee->modulation & IEEE80211_CCK_MODULATION) {
 
 			ieee->current_network.rates_len = 4;
 
@@ -2398,10 +2398,10 @@ static void ieee80211_start_ibss_wq(struct work_struct *work)
 			ieee->current_network.rates[2] = IEEE80211_BASIC_RATE_MASK | IEEE80211_CCK_RATE_5MB;
 			ieee->current_network.rates[3] = IEEE80211_BASIC_RATE_MASK | IEEE80211_CCK_RATE_11MB;
 
-		}else
+		} else
 			ieee->current_network.rates_len = 0;
 
-		if (ieee->modulation & IEEE80211_OFDM_MODULATION){
+		if (ieee->modulation & IEEE80211_OFDM_MODULATION) {
 			ieee->current_network.rates_ex_len = 8;
 
 			ieee->current_network.rates_ex[0] = IEEE80211_BASIC_RATE_MASK | IEEE80211_OFDM_RATE_6MB;
@@ -2414,7 +2414,7 @@ static void ieee80211_start_ibss_wq(struct work_struct *work)
 			ieee->current_network.rates_ex[7] = IEEE80211_BASIC_RATE_MASK | IEEE80211_OFDM_RATE_54MB;
 
 			ieee->rate = 108;
-		}else{
+		} else {
 			ieee->current_network.rates_ex_len = 0;
 			ieee->rate = 22;
 		}
@@ -2481,7 +2481,7 @@ void ieee80211_start_bss(struct ieee80211_device *ieee)
 	 */
 	spin_lock_irqsave(&ieee->lock, flags);
 
-	if (ieee->state == IEEE80211_NOLINK){
+	if (ieee->state == IEEE80211_NOLINK) {
 		ieee->actscanning = true;
 		ieee80211_start_scan(ieee);
 	}
@@ -2635,12 +2635,12 @@ void ieee80211_start_protocol(struct ieee80211_device *ieee)
 
 	ieee->proto_started = 1;
 
-	if (ieee->current_network.channel == 0){
-		do{
+	if (ieee->current_network.channel == 0) {
+		do {
 			ch++;
 			if (ch > MAX_CHANNEL_NUMBER)
 				return; /* no channel found */
-		}while (!GET_DOT11D_INFO(ieee)->channel_map[ch]);
+		} while (!GET_DOT11D_INFO(ieee)->channel_map[ch]);
 		ieee->current_network.channel = ch;
 	}
 
@@ -2856,12 +2856,12 @@ static int ieee80211_wpa_set_auth_algs(struct ieee80211_device *ieee, int value)
 		sec.auth_mode = WLAN_AUTH_SHARED_KEY;
 		ieee->open_wep = 0;
 		ieee->auth_mode = 1;
-	} else if (value & AUTH_ALG_OPEN_SYSTEM){
+	} else if (value & AUTH_ALG_OPEN_SYSTEM) {
 		sec.auth_mode = WLAN_AUTH_OPEN;
 		ieee->open_wep = 1;
 		ieee->auth_mode = 0;
 	}
-	else if (value & IW_AUTH_ALG_LEAP){
+	else if (value & IW_AUTH_ALG_LEAP) {
 		sec.auth_mode = WLAN_AUTH_LEAP;
 		ieee->open_wep = 1;
 		ieee->auth_mode = 2;
-- 
1.9.1



X-GM-THRID: 9831070040064
X-Received: by 10.194.11.70 with SMTP id o6mr2403892wjb.6.1427307634919;
        Wed, 25 Mar 2015 11:20:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.211.171 with SMTP id nd11ls1317213wic.50.canary; Wed, 25
 Mar 2015 11:20:34 -0700 (PDT)
X-Received: by 10.180.211.199 with SMTP id ne7mr4600717wic.5.1427307634581;
        Wed, 25 Mar 2015 11:20:34 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id el6si994527wib.0.2015.03.25.11.20.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 11:20:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id gn9so51432991wib.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 11:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JS32EJ0PUoc26VANkgVI+aYf7VqCGG7QnJycQ2IPQiM=;
        b=TxhUsrRw458nci8xaAE6YDC6a8Dj0PqX7CGm85PAEc4oucBDmiaIy8jW1srz5qLaWc
         ayCwGuluKNKbj4jrVMIl6qhdP4F8kjvSJjM7SYsUDBWYDFBOutxsZ+Xere5FDyTSAUaB
         JFx2EnZ1sOjwgaQozhMa+P9fZn4YS0hLayu7MeGWlQ5GcIBY/5wyCGZAzpDHxELdYU/Z
         FX5j3T59YHQzgcY1EB8clQ7L4AX24zulytoeZqcjhpNiEGG2870ifiYhDPLnmGUPY764
         mUNMkjLDjUmxxt4Odt0hJz1rDPnjU357xamaI55x88IxCil8RRySwkbhWYx9hlM7auoC
         IOeQ==
X-Received: by 10.180.212.40 with SMTP id nh8mr40802107wic.86.1427307634477;
        Wed, 25 Mar 2015 11:20:34 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.49.71])
        by mx.google.com with ESMTPSA id fs8sm21755453wib.8.2015.03.25.11.20.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 11:20:33 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id E0552C1FFD; Wed, 25 Mar 2015 08:10:02 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/2] Staging: rtl8192u: Fix space issues before '(' and after ')'
Date: Wed, 25 Mar 2015 08:09:59 +0300
Message-Id: <1427260199-1139-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427259819-1022-1-git-send-email-hamohammed.sa@gmail.com>
References: <1427259819-1022-1-git-send-email-hamohammed.sa@gmail.com>

Space is required before the open and after the close parenthesis.
This patch adds space after 'if' and before '{'.

This was done with the help of the following Coccinelle script:

@r@
expression E;
position p1,p2,p3;
@@

if@p1 (E) @p3{@p2
        ...
}

@script:python@
p1 << r.p1;
p2 << r.p2;
p3 << r.p3;
@@

l1 = int (p1[0].line)
l2 = int (p2[0].line)
l3 = int (p3[0].line)
c1 = int (p1[0].column_end)
c2 = int (p2[0].column)
c3 = int (p3[0].column)
if (l1 != l2):
  cocci.include_match(False)
if (l2 == l3 and c3 + 2 == c2):
  cocci.include_match(False)

@@
position r.p1,r.p2,r.p3;
expression r.E;
@@

-if@p1 (E) @p3{@p2
+if (E) {
...
}

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 100 ++++++++++-----------
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c      |  18 ++--
 2 files changed, 59 insertions(+), 59 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 168ee32..5433247 100644
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
 
-	if(rate == 0){
+	if (rate == 0) {
 		// 2005.01.26, by rcnjko.
 		if(ieee->mode == IEEE_A||
 		   ieee->mode== IEEE_N_5G||
@@ -369,7 +369,7 @@ static void ieee80211_send_beacon(struct ieee80211_device *ieee)
 	//unsigned long flags;
 	skb = ieee80211_get_beacon_(ieee);
 
-	if (skb){
+	if (skb) {
 		softmac_mgmt_xmit(skb, ieee);
 		ieee->softmac_stats.tx_beacons++;
 		//dev_kfree_skb_any(skb);//edit by thomas
@@ -378,7 +378,7 @@ static void ieee80211_send_beacon(struct ieee80211_device *ieee)
 //		(MSECS( ieee->current_network.beacon_interval -5));
 
 	//spin_lock_irqsave(&ieee->beacon_lock,flags);
-	if(ieee->beacon_txing && ieee->ieee_up){
+	if (ieee->beacon_txing && ieee->ieee_up) {
 //		if(!timer_pending(&ieee->beacon_timer))
 //			add_timer(&ieee->beacon_timer);
 		mod_timer(&ieee->beacon_timer,jiffies+(MSECS(ieee->current_network.beacon_interval-5)));
@@ -404,7 +404,7 @@ static void ieee80211_send_probe(struct ieee80211_device *ieee)
 	struct sk_buff *skb;
 
 	skb = ieee80211_probe_req(ieee);
-	if (skb){
+	if (skb) {
 		softmac_mgmt_xmit(skb, ieee);
 		ieee->softmac_stats.tx_probe_rq++;
 		//dev_kfree_skb_any(skb);//edit by thomas
@@ -413,7 +413,7 @@ static void ieee80211_send_probe(struct ieee80211_device *ieee)
 
 static void ieee80211_send_probe_requests(struct ieee80211_device *ieee)
 {
-	if (ieee->active_scan && (ieee->softmac_features & IEEE_SOFTMAC_PROBERQ)){
+	if (ieee->active_scan && (ieee->softmac_features & IEEE_SOFTMAC_PROBERQ)) {
 		ieee80211_send_probe(ieee);
 		ieee80211_send_probe(ieee);
 	}
@@ -587,7 +587,7 @@ static void ieee80211_softmac_stop_scan(struct ieee80211_device *ieee)
 	down(&ieee->scan_sem);
 //	spin_lock_irqsave(&ieee->lock, flags);
 
-	if (ieee->scanning == 1){
+	if (ieee->scanning == 1) {
 		ieee->scanning = 0;
 
 		cancel_delayed_work(&ieee->softmac_scan_wq);
@@ -617,7 +617,7 @@ static void ieee80211_start_scan(struct ieee80211_device *ieee)
 		}
 	}
 	if (ieee->softmac_features & IEEE_SOFTMAC_SCAN){
-		if (ieee->scanning == 0){
+		if (ieee->scanning == 0) {
 			ieee->scanning = 1;
 			queue_delayed_work(ieee->wq, &ieee->softmac_scan_wq, 0);
 		}
@@ -803,7 +803,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 	*(tag++) = 1;
 	*(tag++) = ieee->current_network.channel;
 
-	if(atim_len){
+	if (atim_len) {
 		*(tag++) = MFIE_TYPE_IBSS_SET;
 		*(tag++) = 2;
 
@@ -812,12 +812,12 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 		tag+=2;
 	}
 
-	if(erp_len){
+	if (erp_len) {
 		*(tag++) = MFIE_TYPE_ERP;
 		*(tag++) = 1;
 		*(tag++) = erpinfo_content;
 	}
-	if(rate_ex_len){
+	if (rate_ex_len) {
 		*(tag++) = MFIE_TYPE_RATES_EX;
 		*(tag++) = rate_ex_len-2;
 		memcpy(tag, ieee->current_network.rates_ex, rate_ex_len-2);
@@ -1029,7 +1029,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 
 		}
 	}
-	if(ieee->qos_support){
+	if (ieee->qos_support) {
 		wmm_info_len = beacon->qos_data.supported?9:0;
 	}
 
@@ -1168,7 +1168,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 		tag += osCcxVerNum.Length;
 	}
 	//HT cap element
-	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
+	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT) {
 		if (ieee->pHTInfo->ePeerHTSpecVer != HT_SPEC_VER_EWC)
 		{
 			tag = skb_put(skb, ht_cap_len);
@@ -1182,7 +1182,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 
 	//choose what wpa_supplicant gives to associate.
 	tag = skb_put(skb, wpa_ie_len);
-	if (wpa_ie_len){
+	if (wpa_ie_len) {
 		memcpy(tag, ieee->wpa_ie, ieee->wpa_ie_len);
 	}
 
@@ -1197,7 +1197,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	}
 #endif
 
-	if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
+	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT) {
 		if(ieee->pHTInfo->ePeerHTSpecVer == HT_SPEC_VER_EWC)
 		{
 			tag = skb_put(skb, ht_cap_len);
@@ -1207,7 +1207,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 			tag += ht_cap_len -2;
 		}
 
-		if(ieee->pHTInfo->bCurrentRT2RTAggregation){
+		if (ieee->pHTInfo->bCurrentRT2RTAggregation) {
 			tag = skb_put(skb, realtek_ie_len);
 			*tag++ = MFIE_TYPE_GENERIC;
 			*tag++ = realtek_ie_len - 2;
@@ -1273,7 +1273,7 @@ static void ieee80211_associate_step1(struct ieee80211_device *ieee)
 		//printk(KERN_WARNING "Sending authentication request\n");
 		softmac_mgmt_xmit(skb, ieee);
 		//BUGON when you try to add_timer twice, using mod_timer may be better, john0709
-		if(!timer_pending(&ieee->associate_timer)){
+		if (!timer_pending(&ieee->associate_timer)) {
 			ieee->associate_timer.expires = jiffies + (HZ / 2);
 			add_timer(&ieee->associate_timer);
 		}
@@ -1430,7 +1430,7 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 		return;
 
 
-	if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC){
+	if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC) {
 		/* if the user specified the AP MAC, we need also the essid
 		 * This could be obtained by beacons or, if the network does not
 		 * broadcast it, it can be put manually.
@@ -1458,13 +1458,13 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
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
@@ -1541,16 +1541,16 @@ static inline u16 auth_parse(struct sk_buff *skb, u8 **challenge, int *chlen)
 {
 	struct ieee80211_authentication *a;
 	u8 *t;
-	if (skb->len <  (sizeof(struct ieee80211_authentication)-sizeof(struct ieee80211_info_element))){
+	if (skb->len < (sizeof(struct ieee80211_authentication) - sizeof(struct ieee80211_info_element))) {
 		IEEE80211_DEBUG_MGMT("invalid len in auth resp: %d\n",skb->len);
 		return 0xcafe;
 	}
 	*challenge = NULL;
 	a = (struct ieee80211_authentication *) skb->data;
-	if(skb->len > (sizeof(struct ieee80211_authentication) +3)){
+	if (skb->len > (sizeof(struct ieee80211_authentication) + 3)) {
 		t = skb->data + sizeof(struct ieee80211_authentication);
 
-		if(*(t++) == MFIE_TYPE_CHALLENGE){
+		if (*(t++) == MFIE_TYPE_CHALLENGE) {
 			*chlen = *(t++);
 			*challenge = kmemdup(t, *chlen, GFP_ATOMIC);
 			if (!*challenge)
@@ -1567,7 +1567,7 @@ static int auth_rq_parse(struct sk_buff *skb, u8 *dest)
 {
 	struct ieee80211_authentication *a;
 
-	if (skb->len <  (sizeof(struct ieee80211_authentication)-sizeof(struct ieee80211_info_element))){
+	if (skb->len < (sizeof(struct ieee80211_authentication) - sizeof(struct ieee80211_info_element))) {
 		IEEE80211_DEBUG_MGMT("invalid len in auth request: %d\n",skb->len);
 		return -1;
 	}
@@ -1601,7 +1601,7 @@ static short probe_rq_parse(struct ieee80211_device *ieee, struct sk_buff *skb,
 	tag = skb->data + sizeof (struct ieee80211_hdr_3addr  );
 
 	while (tag+1 < skbend){
-		if (*tag == 0){
+		if (*tag == 0) {
 			ssid = tag+2;
 			ssidlen = *(tag+1);
 			break;
@@ -1642,7 +1642,7 @@ static inline u16 assoc_parse(struct ieee80211_device *ieee, struct sk_buff *skb
 	struct ieee80211_assoc_response_frame *response_head;
 	u16 status_code;
 
-	if (skb->len <  sizeof(struct ieee80211_assoc_response_frame)){
+	if (skb->len < sizeof(struct ieee80211_assoc_response_frame)) {
 		IEEE80211_DEBUG_MGMT("invalid len in auth resp: %d\n", skb->len);
 		return 0xcafe;
 	}
@@ -1672,7 +1672,7 @@ ieee80211_rx_probe_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
 	//IEEE80211DMESG("Rx probe");
 	ieee->softmac_stats.rx_probe_rq++;
 	//DMESG("Dest is "MACSTR, MAC2STR(dest));
-	if (probe_rq_parse(ieee, skb, dest)){
+	if (probe_rq_parse(ieee, skb, dest)) {
 		//IEEE80211DMESG("Was for me!");
 		ieee->softmac_stats.tx_probe_rs++;
 		ieee80211_resp_to_probe(ieee, dest);
@@ -1703,7 +1703,7 @@ ieee80211_rx_assoc_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
 	//unsigned long flags;
 
 	ieee->softmac_stats.rx_ass_rq++;
-	if (assoc_rq_parse(skb,dest) != -1){
+	if (assoc_rq_parse(skb, dest) != -1) {
 		ieee80211_resp_to_assoc_rq(ieee, dest);
 	}
 
@@ -1755,13 +1755,13 @@ static short ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32 *time_h,
 		(ieee->mgmt_queue_tail != ieee->mgmt_queue_head))
 		return 0;
 
-	if(time_l){
+	if (time_l) {
 		*time_l = ieee->current_network.last_dtim_sta_time[0]
 			+ (ieee->current_network.beacon_interval
 			* ieee->current_network.dtim_period) * 1000;
 	}
 
-	if(time_h){
+	if (time_h) {
 		*time_h = ieee->current_network.last_dtim_sta_time[1];
 		if(time_l && *time_l < ieee->current_network.last_dtim_sta_time[0])
 			*time_h += 1;
@@ -1841,8 +1841,8 @@ out:
 
 void ieee80211_sta_wakeup(struct ieee80211_device *ieee, short nl)
 {
-	if(ieee->sta_sleep == 0){
-		if(nl){
+	if (ieee->sta_sleep == 0) {
+		if (nl) {
 			printk("Warning: driver is probably failing to report TX ps error\n");
 			ieee->ps_request_tx_ack(ieee->dev);
 			ieee80211_sta_ps_send_null_frame(ieee, 0);
@@ -1856,7 +1856,7 @@ void ieee80211_sta_wakeup(struct ieee80211_device *ieee, short nl)
 
 	ieee->sta_sleep = 0;
 
-	if(nl){
+	if (nl) {
 		ieee->ps_request_tx_ack(ieee->dev);
 		ieee80211_sta_ps_send_null_frame(ieee, 0);
 	}
@@ -1870,7 +1870,7 @@ void ieee80211_ps_tx_ack(struct ieee80211_device *ieee, short success)
 
 	if(ieee->sta_sleep == 2){
 		/* Null frame with PS bit set */
-		if(success){
+		if (success) {
 			ieee->sta_sleep = 1;
 			ieee->enter_sleep_state(ieee->dev,ieee->ps_th,ieee->ps_tl);
 		}
@@ -1881,7 +1881,7 @@ void ieee80211_ps_tx_ack(struct ieee80211_device *ieee, short success)
 	/* 21112005 - tx again null without PS bit if lost */
 	else {
 
-		if((ieee->sta_sleep == 0) && !success){
+		if ((ieee->sta_sleep == 0) && !success) {
 			spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);
 			ieee80211_sta_ps_send_null_frame(ieee, 0);
 			spin_unlock_irqrestore(&ieee->mgmt_tx_lock, flags2);
@@ -2070,7 +2070,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	case IEEE80211_STYPE_AUTH:
 
-		if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE){
+		if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) {
 			if (ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATING
 				&& ieee->iw_mode == IW_MODE_INFRA) {
 
@@ -2228,7 +2228,7 @@ void ieee80211_reset_queue(struct ieee80211_device *ieee)
 
 	spin_lock_irqsave(&ieee->lock, flags);
 	init_mgmt_queue(ieee);
-	if (ieee->tx_pending.txb){
+	if (ieee->tx_pending.txb) {
 		ieee80211_txb_free(ieee->tx_pending.txb);
 		ieee->tx_pending.txb = NULL;
 	}
@@ -2250,7 +2250,7 @@ void ieee80211_wake_queue(struct ieee80211_device *ieee)
 
 	ieee->queue_stop = 0;
 
-	if(ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE){
+	if (ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE) {
 		while (!ieee->queue_stop && (skb = dequeue_mgmt(ieee))){
 
 			header = (struct ieee80211_hdr_3addr  *) skb->data;
@@ -2269,7 +2269,7 @@ void ieee80211_wake_queue(struct ieee80211_device *ieee)
 	if (!ieee->queue_stop && ieee->tx_pending.txb)
 		ieee80211_resume_tx(ieee);
 
-	if (!ieee->queue_stop && netif_queue_stopped(ieee->dev)){
+	if (!ieee->queue_stop && netif_queue_stopped(ieee->dev)) {
 		ieee->softmac_stats.swtxawake++;
 		netif_wake_queue(ieee->dev);
 	}
@@ -2284,7 +2284,7 @@ void ieee80211_stop_queue(struct ieee80211_device *ieee)
 	//unsigned long flags;
 	//spin_lock_irqsave(&ieee->lock,flags);
 
-	if (! netif_queue_stopped(ieee->dev)){
+	if (!netif_queue_stopped(ieee->dev)) {
 		netif_stop_queue(ieee->dev);
 		ieee->softmac_stats.swtxstop++;
 	}
@@ -2305,7 +2305,7 @@ void ieee80211_start_master_bss(struct ieee80211_device *ieee)
 {
 	ieee->assoc_id = 1;
 
-	if (ieee->current_network.ssid_len == 0){
+	if (ieee->current_network.ssid_len == 0) {
 		strncpy(ieee->current_network.ssid,
 			IEEE80211_DEFAULT_TX_ESSID,
 			IW_ESSID_MAX_SIZE);
@@ -2329,7 +2329,7 @@ void ieee80211_start_master_bss(struct ieee80211_device *ieee)
 
 static void ieee80211_start_monitor_mode(struct ieee80211_device *ieee)
 {
-	if(ieee->raw_tx){
+	if (ieee->raw_tx) {
 
 		if (ieee->data_hard_resume)
 			ieee->data_hard_resume(ieee->dev);
@@ -2349,13 +2349,13 @@ static void ieee80211_start_ibss_wq(struct work_struct *work)
 	 * (abort) this wq (when syncro scanning) before sleeping
 	 * on the semaphore
 	 */
-	if(!ieee->proto_started){
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
@@ -2386,7 +2386,7 @@ static void ieee80211_start_ibss_wq(struct work_struct *work)
 		ieee80211_start_scan_syncro(ieee);
 
 	/* the network definitively is not here.. create a new cell */
-	if (ieee->state == IEEE80211_NOLINK){
+	if (ieee->state == IEEE80211_NOLINK) {
 		printk("creating new IBSS cell\n");
 		if(!ieee->wap_set)
 			ieee80211_randomize_cell(ieee);
@@ -2483,7 +2483,7 @@ void ieee80211_start_bss(struct ieee80211_device *ieee)
 	 */
 	spin_lock_irqsave(&ieee->lock, flags);
 
-	if (ieee->state == IEEE80211_NOLINK){
+	if (ieee->state == IEEE80211_NOLINK) {
 		ieee->actscanning = true;
 		ieee80211_start_scan(ieee);
 	}
@@ -2637,7 +2637,7 @@ void ieee80211_start_protocol(struct ieee80211_device *ieee)
 
 	ieee->proto_started = 1;
 
-	if (ieee->current_network.channel == 0){
+	if (ieee->current_network.channel == 0) {
 		do{
 			ch++;
 			if (ch > MAX_CHANNEL_NUMBER)
@@ -3141,7 +3141,7 @@ SendDisassociation(
 		struct ieee80211_network *beacon = &ieee->current_network;
 		struct sk_buff *skb;
 		skb = ieee80211_disassociate_skb(beacon,ieee,asRsn);
-		if (skb){
+		if (skb) {
 				softmac_mgmt_xmit(skb, ieee);
 				//dev_kfree_skb_any(skb);//edit by thomas
 		}
@@ -3156,7 +3156,7 @@ int ieee80211_wpa_supplicant_ioctl(struct ieee80211_device *ieee, struct iw_poin
 	down(&ieee->wx_sem);
 	//IEEE_DEBUG_INFO("wpa_supplicant: len=%d\n", p->length);
 
-	if (p->length < sizeof(struct ieee_param) || !p->pointer){
+	if (p->length < sizeof(struct ieee_param) || !p->pointer) {
 		ret = -EINVAL;
 		goto out;
 	}
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
index 77d0a34..714fbca 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
@@ -36,7 +36,7 @@ int ieee80211_wx_set_freq(struct ieee80211_device *ieee, struct iw_request_info
 
 	down(&ieee->wx_sem);
 
-	if(ieee->iw_mode == IW_MODE_INFRA){
+	if (ieee->iw_mode == IW_MODE_INFRA) {
 		ret = -EOPNOTSUPP;
 		goto out;
 	}
@@ -148,12 +148,12 @@ int ieee80211_wx_set_wap(struct ieee80211_device *ieee,
 
 	down(&ieee->wx_sem);
 	/* use ifconfig hw ether */
-	if (ieee->iw_mode == IW_MODE_MASTER){
+	if (ieee->iw_mode == IW_MODE_MASTER) {
 		ret = -1;
 		goto out;
 	}
 
-	if (temp->sa_family != ARPHRD_ETHER){
+	if (temp->sa_family != ARPHRD_ETHER) {
 		ret = -EINVAL;
 		goto out;
 	}
@@ -369,7 +369,7 @@ int ieee80211_wx_set_scan(struct ieee80211_device *ieee, struct iw_request_info
 
 	down(&ieee->wx_sem);
 
-	if (ieee->iw_mode == IW_MODE_MONITOR || !(ieee->proto_started)){
+	if (ieee->iw_mode == IW_MODE_MONITOR || !(ieee->proto_started)) {
 		ret = -1;
 		goto out;
 	}
@@ -400,12 +400,12 @@ int ieee80211_wx_set_essid(struct ieee80211_device *ieee,
 
 	proto_started = ieee->proto_started;
 
-	if (wrqu->essid.length > IW_ESSID_MAX_SIZE){
+	if (wrqu->essid.length > IW_ESSID_MAX_SIZE) {
 		ret= -E2BIG;
 		goto out;
 	}
 
-	if (ieee->iw_mode == IW_MODE_MONITOR){
+	if (ieee->iw_mode == IW_MODE_MONITOR) {
 		ret= -1;
 		goto out;
 	}
@@ -471,7 +471,7 @@ EXPORT_SYMBOL(ieee80211_wx_get_mode);
 
 	if (ieee->iw_mode == IW_MODE_MONITOR)
 	{
-		if(prev == 0 && ieee->raw_tx){
+		if (prev == 0 && ieee->raw_tx) {
 			if (ieee->data_hard_resume)
 				ieee->data_hard_resume(ieee->dev);
 
@@ -522,7 +522,7 @@ int ieee80211_wx_set_power(struct ieee80211_device *ieee,
 	int ret = 0;
 	down(&ieee->wx_sem);
 
-	if (wrqu->power.disabled){
+	if (wrqu->power.disabled) {
 		ieee->ps = IEEE80211_PS_DISABLED;
 		goto exit;
 	}
@@ -572,7 +572,7 @@ int ieee80211_wx_get_power(struct ieee80211_device *ieee,
 {
 	down(&ieee->wx_sem);
 
-	if(ieee->ps == IEEE80211_PS_DISABLED){
+	if (ieee->ps == IEEE80211_PS_DISABLED) {
 		wrqu->power.disabled = 1;
 		goto exit;
 	}
-- 
1.9.1



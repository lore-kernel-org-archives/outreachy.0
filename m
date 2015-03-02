X-GM-THRID: 6089206661120
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fed44d1ee4488716,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.27.134 with SMTP id t6mr579106lag.5.1425329651122;
        Mon, 02 Mar 2015 12:54:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.98 with SMTP id m2ls498852lae.5.gmail; Mon, 02 Mar 2015
 12:54:09 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr4056045lbj.23.1425329649533;
        Mon, 02 Mar 2015 12:54:09 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id el6si747001wib.2.2015.03.02.12.54.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 12:54:09 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wibbs8 with SMTP id bs8so18072997wib.0
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 12:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=b1pJgdxGYL6dR/m0jjq77nIlly5DgzeQqidb7faEfrs=;
        b=kjqHAO/1595801ud0YlEDYNjYNR72DuqifWenTECETmPgCk2HSKwva8MYRDhGP79nL
         NU75oHBHJmcEZjcMNuEILvTtzEDGwbmUyemQcJ+xruDBRk7ORBiC8+su/wma/OPV2QFr
         5Q89U+YC0wX4YF+URTtgd/6pTrrULaq6YMffca4juPG0N55U0dENWmMiXLyD8RSb7cQq
         4cIEdQ0ITETJMMi84+q28hHuHUnN+CdTruHMbUMIsVaBoKnoROU5miFrLIuJPvkBiz2A
         tNSXyHqJzVCKeyKoAZPmTE5nlxbgfpCoON1lIFBbJEpSFwkbvMHjcJCx/qSDroFUfY77
         pduQ==
X-Received: by 10.180.39.33 with SMTP id m1mr39579499wik.26.1425329649408;
        Mon, 02 Mar 2015 12:54:09 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id y3sm20829423wju.14.2015.03.02.12.54.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 12:54:08 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Add space after ','
Date: Mon,  2 Mar 2015 22:53:58 +0200
Message-Id: <1425329638-18459-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Spaces required after that ',' .That's why add space after ','
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 78 +++++++++++-----------
 1 file changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 2c53763..d4150af 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -250,7 +250,7 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee
 
 			/* avoid watchdog triggers */
 			ieee->dev->trans_start = jiffies;
-			ieee->softmac_data_hard_start_xmit(skb,ieee->dev,ieee->basic_rate);
+			ieee->softmac_data_hard_start_xmit(skb, ieee->dev, ieee->basic_rate);
 			/* dev_kfree_skb_any(skb);//edit by thomas */
 		}
 
@@ -267,14 +267,14 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee
 			ieee->seq_ctrl[0]++;
 
 		/* check whether the managed packet queued greater than 5 */
-		if (!ieee->check_nic_enough_desc(ieee->dev,tcb_desc->queue_index)||\
+		if (!ieee->check_nic_enough_desc(ieee->dev, tcb_desc->queue_index)||\
 				(skb_queue_len(&ieee->skb_waitQ[tcb_desc->queue_index]) != 0)||\
 				(ieee->queue_stop) ) {
 			/* insert the skb packet to the management queue */
 			/* as for the completion function, it does not need
 			 * to check it any more.
 			 * */
-			printk("%s():insert to waitqueue!\n",__func__);
+			printk("%s():insert to waitqueue!\n", __func__);
 			skb_queue_tail(&ieee->skb_waitQ[tcb_desc->queue_index], skb);
 		} else {
 			/* printk("TX packet!\n"); */
@@ -304,7 +304,7 @@ inline void softmac_ps_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *i
 
 		/* avoid watchdog triggers */
 		ieee->dev->trans_start = jiffies;
-		ieee->softmac_data_hard_start_xmit(skb,ieee->dev,ieee->basic_rate);
+		ieee->softmac_data_hard_start_xmit(skb, ieee->dev, ieee->basic_rate);
 
 	} else {
 
@@ -339,7 +339,7 @@ inline struct sk_buff *ieee80211_probe_req(struct ieee80211_device *ieee)
 
 	skb_reserve(skb, ieee->tx_headroom);
 
-	req = (struct ieee80211_probe_request *) skb_put(skb,sizeof(struct ieee80211_probe_request));
+	req = (struct ieee80211_probe_request *) skb_put(skb, sizeof(struct ieee80211_probe_request));
 	req->header.frame_ctl = cpu_to_le16(IEEE80211_STYPE_PROBE_REQ);
 	req->header.duration_id = 0; /* FIXME: is this OK ? */
 
@@ -347,15 +347,15 @@ inline struct sk_buff *ieee80211_probe_req(struct ieee80211_device *ieee)
 	memcpy(req->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
 	memset(req->header.addr3, 0xff, ETH_ALEN);
 
-	tag = (u8 *) skb_put(skb,len+2+rate_len);
+	tag = (u8 *) skb_put(skb, len+2+rate_len);
 
 	*tag++ = MFIE_TYPE_SSID;
 	*tag++ = len;
 	memcpy(tag, ieee->current_network.ssid, len);
 	tag += len;
 
-	ieee80211_MFIE_Brate(ieee,&tag);
-	ieee80211_MFIE_Grate(ieee,&tag);
+	ieee80211_MFIE_Brate(ieee, &tag);
+	ieee80211_MFIE_Grate(ieee, &tag);
 	return skb;
 }
 
@@ -381,7 +381,7 @@ static void ieee80211_send_beacon(struct ieee80211_device *ieee)
 	if (ieee->beacon_txing && ieee->ieee_up) {
 		/* if(!timer_pending(&ieee->beacon_timer))
 			add_timer(&ieee->beacon_timer); */
-		mod_timer(&ieee->beacon_timer,jiffies+(MSECS(ieee->current_network.beacon_interval-5)));
+		mod_timer(&ieee->beacon_timer, jiffies+(MSECS(ieee->current_network.beacon_interval-5)));
 	}
 	/* spin_unlock_irqrestore(&ieee->beacon_lock,flags); */
 }
@@ -538,7 +538,7 @@ out:
 static void ieee80211_beacons_start(struct ieee80211_device *ieee)
 {
 	unsigned long flags;
-	spin_lock_irqsave(&ieee->beacon_lock,flags);
+	spin_lock_irqsave(&ieee->beacon_lock, flags);
 
 	ieee->beacon_txing = 1;
 	ieee80211_send_beacon(ieee);
@@ -676,7 +676,7 @@ inline struct sk_buff *ieee80211_authentication_req(struct ieee80211_network *be
 		auth->algorithm = WLAN_AUTH_SHARED_KEY;
 	else if (ieee->auth_mode == 2)
 		auth->algorithm = WLAN_AUTH_OPEN;/* 0x80; */
-	printk("=================>%s():auth->algorithm is %d\n",__func__,auth->algorithm);
+	printk("=================>%s():auth->algorithm is %d\n", __func__, auth->algorithm);
 	auth->transaction = cpu_to_le16(ieee->associate_seq);
 	ieee->associate_seq++;
 
@@ -735,8 +735,8 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 	tmp_ht_cap_len = sizeof(ieee->pHTInfo->SelfHTCap);
 	tmp_ht_info_buf =(u8 *) &(ieee->pHTInfo->SelfHTInfo);
 	tmp_ht_info_len = sizeof(ieee->pHTInfo->SelfHTInfo);
-	HTConstructCapabilityElement(ieee, tmp_ht_cap_buf, &tmp_ht_cap_len,encrypt);
-	HTConstructInfoElement(ieee,tmp_ht_info_buf,&tmp_ht_info_len, encrypt);
+	HTConstructCapabilityElement(ieee, tmp_ht_cap_buf, &tmp_ht_cap_len, encrypt);
+	HTConstructInfoElement(ieee, tmp_ht_info_buf, &tmp_ht_info_len, encrypt);
 
 
 	if (pHTInfo->bRegRT2RTAggregation)
@@ -764,7 +764,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 		return NULL;
 	skb_reserve(skb, ieee->tx_headroom);
 	beacon_buf = (struct ieee80211_probe_response *) skb_put(skb, (beacon_size - ieee->tx_headroom));
-	memcpy (beacon_buf->header.addr1, dest,ETH_ALEN);
+	memcpy (beacon_buf->header.addr1, dest, ETH_ALEN);
 	memcpy (beacon_buf->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
 	memcpy (beacon_buf->header.addr3, ieee->current_network.bssid, ETH_ALEN);
 
@@ -863,7 +863,7 @@ static struct sk_buff *ieee80211_assoc_resp(struct ieee80211_device *ieee,
 		skb_put(skb, sizeof(struct ieee80211_assoc_response_frame));
 
 	assoc->header.frame_ctl = cpu_to_le16(IEEE80211_STYPE_ASSOC_RESP);
-	memcpy(assoc->header.addr1, dest,ETH_ALEN);
+	memcpy(assoc->header.addr1, dest, ETH_ALEN);
 	memcpy(assoc->header.addr3, ieee->dev->dev_addr, ETH_ALEN);
 	memcpy(assoc->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
 	assoc->capability = cpu_to_le16(ieee->iw_mode == IW_MODE_MASTER ?
@@ -935,7 +935,7 @@ static struct sk_buff *ieee80211_null_func(struct ieee80211_device *ieee,
 	if (!skb)
 		return NULL;
 
-	hdr = (struct ieee80211_hdr_3addr *)skb_put(skb,sizeof(struct ieee80211_hdr_3addr));
+	hdr = (struct ieee80211_hdr_3addr *)skb_put(skb, sizeof(struct ieee80211_hdr_3addr));
 
 	memcpy(hdr->addr1, ieee->current_network.bssid, ETH_ALEN);
 	memcpy(hdr->addr2, ieee->dev->dev_addr, ETH_ALEN);
@@ -980,7 +980,7 @@ static void ieee80211_resp_to_probe(struct ieee80211_device *ieee, u8 *dest)
 }
 
 
-inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beacon,struct ieee80211_device *ieee)
+inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beacon, struct ieee80211_device *ieee)
 {
 	struct sk_buff *skb;
 	/* unsigned long flags; */
@@ -1013,7 +1013,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	int len = 0;
 
 	crypt = ieee->crypt[ieee->tx_keyidx];
-	encrypt = ieee->host_encrypt && crypt && crypt->ops && ((0 == strcmp(crypt->ops->name,"WEP") || wpa_ie_len));
+	encrypt = ieee->host_encrypt && crypt && crypt->ops && ((0 == strcmp(crypt->ops->name, "WEP") || wpa_ie_len));
 
 	/* Include High Throuput capability && Realtek proprietary */
 	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)
@@ -1175,7 +1175,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 			tag = skb_put(skb, ht_cap_len);
 			*tag++ = MFIE_TYPE_HT_CAP;
 			*tag++ = ht_cap_len - 2;
-			memcpy(tag, ht_cap_buf,ht_cap_len -2);
+			memcpy(tag, ht_cap_buf, ht_cap_len -2);
 			tag += ht_cap_len -2;
 		}
 	}
@@ -1212,7 +1212,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 			tag = skb_put(skb, realtek_ie_len);
 			*tag++ = MFIE_TYPE_GENERIC;
 			*tag++ = realtek_ie_len - 2;
-			memcpy(tag, realtek_ie_buf,realtek_ie_len -2 );
+			memcpy(tag, realtek_ie_buf, realtek_ie_len -2 );
 		}
 	}
 	/* printk("<=====%s(), %p, %p\n", __func__, ieee->dev, ieee->dev->dev_addr);
@@ -1469,7 +1469,7 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 					strncpy(ieee->current_network.ssid, tmp_ssid, IW_ESSID_MAX_SIZE);
 					ieee->current_network.ssid_len = tmp_ssid_len;
 				}
-				printk(KERN_INFO"Linking with %s,channel:%d, qos:%d, myHT:%d, networkHT:%d\n",ieee->current_network.ssid,ieee->current_network.channel, ieee->current_network.qos_data.supported, ieee->pHTInfo->bEnableHT, ieee->current_network.bssht.bdSupportHT);
+				printk(KERN_INFO"Linking with %s,channel:%d, qos:%d, myHT:%d, networkHT:%d\n", ieee->current_network.ssid, ieee->current_network.channel, ieee->current_network.qos_data.supported, ieee->pHTInfo->bEnableHT, ieee->current_network.bssht.bdSupportHT);
 
 				/* ieee->pHTInfo->IOTAction = 0; */
 				HTResetIOTSetting(ieee->pHTInfo);
@@ -1543,7 +1543,7 @@ static inline u16 auth_parse(struct sk_buff *skb, u8 **challenge, int *chlen)
 	struct ieee80211_authentication *a;
 	u8 *t;
 	if (skb->len <  (sizeof(struct ieee80211_authentication)-sizeof(struct ieee80211_info_element))) {
-		IEEE80211_DEBUG_MGMT("invalid len in auth resp: %d\n",skb->len);
+		IEEE80211_DEBUG_MGMT("invalid len in auth resp: %d\n", skb->len);
 		return 0xcafe;
 	}
 	*challenge = NULL;
@@ -1569,12 +1569,12 @@ static int auth_rq_parse(struct sk_buff *skb, u8 *dest)
 	struct ieee80211_authentication *a;
 
 	if (skb->len <  (sizeof(struct ieee80211_authentication)-sizeof(struct ieee80211_info_element))) {
-		IEEE80211_DEBUG_MGMT("invalid len in auth request: %d\n",skb->len);
+		IEEE80211_DEBUG_MGMT("invalid len in auth request: %d\n", skb->len);
 		return -1;
 	}
 	a = (struct ieee80211_authentication *) skb->data;
 
-	memcpy(dest,a->header.addr2, ETH_ALEN);
+	memcpy(dest, a->header.addr2, ETH_ALEN);
 
 	if (le16_to_cpu(a->algorithm) != WLAN_AUTH_OPEN)
 		return  WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG;
@@ -1595,7 +1595,7 @@ static short probe_rq_parse(struct ieee80211_device *ieee, struct sk_buff *skb,
 	if (skb->len < sizeof (struct ieee80211_hdr_3addr  ))
 		return -1; /* corrupted */
 
-	memcpy(src,header->addr2, ETH_ALEN);
+	memcpy(src, header->addr2, ETH_ALEN);
 
 	skbend = (u8 *)skb->data + skb->len;
 
@@ -1633,7 +1633,7 @@ static int assoc_rq_parse(struct sk_buff *skb, u8 *dest)
 
 	a = (struct ieee80211_assoc_request_frame *) skb->data;
 
-	memcpy(dest,a->header.addr2,ETH_ALEN);
+	memcpy(dest, a->header.addr2, ETH_ALEN);
 
 	return 0;
 }
@@ -1704,7 +1704,7 @@ ieee80211_rx_assoc_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
 	/* unsigned long flags; */
 
 	ieee->softmac_stats.rx_ass_rq++;
-	if (assoc_rq_parse(skb,dest) != -1) {
+	if (assoc_rq_parse(skb, dest) != -1) {
 		ieee80211_resp_to_assoc_rq(ieee, dest);
 	}
 
@@ -1795,7 +1795,7 @@ static inline void ieee80211_sta_ps(struct ieee80211_device *ieee)
 		spin_unlock_irqrestore(&ieee->mgmt_tx_lock, flags2);
 	}
 
-	sleep = ieee80211_sta_ps_sleep(ieee,&th, &tl);
+	sleep = ieee80211_sta_ps_sleep(ieee, &th, &tl);
 	/* 2 wake, 1 sleep, 0 do nothing */
 	if (sleep == 0)
 		goto out;
@@ -1873,7 +1873,7 @@ void ieee80211_ps_tx_ack(struct ieee80211_device *ieee, short success)
 		/* Null frame with PS bit set */
 		if (success) {
 			ieee->sta_sleep = 1;
-			ieee->enter_sleep_state(ieee->dev,ieee->ps_th,ieee->ps_tl);
+			ieee->enter_sleep_state(ieee->dev, ieee->ps_th, ieee->ps_tl);
 		}
 		/* if the card report not success we can't be sure the AP
 		 * has not RXed so we can't assume the AP believe us awake
@@ -1971,9 +1971,9 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 				if (ieee->qos_support) {
 					assoc_resp = (struct ieee80211_assoc_response_frame *)skb->data;
 					memset(network, 0, sizeof(*network));
-					if (ieee80211_parse_info_param(ieee,assoc_resp->info_element,\
+					if (ieee80211_parse_info_param(ieee, assoc_resp->info_element, \
 								rx_stats->len - sizeof(*assoc_resp),\
-								network,rx_stats)){
+								network, rx_stats)){
 						return 1;
 					}
 					else
@@ -2068,7 +2068,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 						}
 					} else {
 						ieee->softmac_stats.rx_auth_rs_err++;
-						IEEE80211_DEBUG_MGMT("Authentication response status code 0x%x",errcode);
+						IEEE80211_DEBUG_MGMT("Authentication response status code 0x%x", errcode);
 						ieee80211_associate_abort(ieee);
 					}
 
@@ -2163,7 +2163,7 @@ void ieee80211_softmac_xmit(struct ieee80211_txb *txb, struct ieee80211_device *
 #else
 		if ((skb_queue_len(&ieee->skb_waitQ[queue_index]) != 0) ||
 #endif
-		(!ieee->check_nic_enough_desc(ieee->dev,queue_index))||\
+		(!ieee->check_nic_enough_desc(ieee->dev, queue_index))||\
 		     (ieee->queue_stop)) {
 			/* insert the skb packet to the wait queue */
 			/* as for the completion function, it does not need
@@ -2260,7 +2260,7 @@ void ieee80211_wake_queue(struct ieee80211_device *ieee)
 			else
 				ieee->seq_ctrl[0]++;
 
-			ieee->softmac_data_hard_start_xmit(skb,ieee->dev,ieee->basic_rate);
+			ieee->softmac_data_hard_start_xmit(skb, ieee->dev, ieee->basic_rate);
 			/* dev_kfree_skb_any(skb); edit by thomas */
 		}
 	}
@@ -2775,7 +2775,7 @@ static int ieee80211_wpa_enable(struct ieee80211_device *ieee, int value)
 {
 	/* This is called when wpa_supplicant loads and closes the driver
 	 * interface. */
-	printk("%s WPA\n",value ? "enabling" : "disabling");
+	printk("%s WPA\n", value ? "enabling" : "disabling");
 	ieee->wpa_enabled = value;
 	return 0;
 }
@@ -2943,7 +2943,7 @@ static int ieee80211_wpa_set_param(struct ieee80211_device *ieee, u8 name, u32 v
 		break;
 
 	default:
-		printk("Unknown WPA param: %d\n",name);
+		printk("Unknown WPA param: %d\n", name);
 		ret = -EOPNOTSUPP;
 	}
 
@@ -3117,7 +3117,7 @@ inline struct sk_buff *ieee80211_disassociate_skb(
 	if (!skb)
 		return NULL;
 
-	disass = (struct ieee80211_disassoc *) skb_put(skb,sizeof(struct ieee80211_disassoc));
+	disass = (struct ieee80211_disassoc *) skb_put(skb, sizeof(struct ieee80211_disassoc));
 	disass->header.frame_ctl = cpu_to_le16(IEEE80211_STYPE_DISASSOC);
 	disass->header.duration_id = 0;
 
@@ -3139,7 +3139,7 @@ SendDisassociation(
 {
 		struct ieee80211_network *beacon = &ieee->current_network;
 		struct sk_buff *skb;
-		skb = ieee80211_disassociate_skb(beacon,ieee,asRsn);
+		skb = ieee80211_disassociate_skb(beacon, ieee, asRsn);
 		if (skb){
 				softmac_mgmt_xmit(skb, ieee);
 				/* dev_kfree_skb_any(skb); edit by thomas */
@@ -3187,7 +3187,7 @@ int ieee80211_wpa_supplicant_ioctl(struct ieee80211_device *ieee, struct iw_poin
 		break;
 
 	default:
-		printk("Unknown WPA supplicant request: %d\n",param->cmd);
+		printk("Unknown WPA supplicant request: %d\n", param->cmd);
 		ret = -EOPNOTSUPP;
 		break;
 	}
-- 
1.9.1



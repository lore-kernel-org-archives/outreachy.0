X-GM-THRID: 6124910673920
X-Received: by 10.152.4.229 with SMTP id n5mr4104407lan.1.1425334629507;
        Mon, 02 Mar 2015 14:17:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.12.167 with SMTP id z7ls656881wib.23.canary; Mon, 02 Mar
 2015 14:17:09 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr4117576wjb.6.1425334629180;
        Mon, 02 Mar 2015 14:17:09 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id o3si752833wib.2.2015.03.02.14.17.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 14:17:09 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22f.google.com with SMTP id l18so36356552wgh.8
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 14:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+qXpOzXtze/4f2Of1mt78k2jiF/NfFknuyGi80H9Oq4=;
        b=YnmCmA0PQv6ciB9K7UgCeBRjuSsPLIhJO88wZ+mjAoMgApABzD2c9wMXT48rvqxYmr
         2uDSKvg3ehTULyCGjoV7libi5VzZ6AvAi+y9kJJQ9xDiU1tujYD7GrpQolEf1LMUdNwJ
         ow1F2HS6j2Plo1EOj2kP+TqieUawMB3fsmd9d5Okgv3yLn4xh4yY+zcg3FuLY5U3onP2
         hHTpLEktvTeFehPNffS5IRK5lwBEGlXyF2F6wA+x037x6dqByj4Bp2SemurxaFtNNkDk
         9O9eb/Lv38h8uq+gczDzs/ApbnMih7jkiiuuvjU++RAAP67vjGOrIj6mz8NnMtPVQLpi
         qUPw==
X-Received: by 10.194.142.205 with SMTP id ry13mr64782842wjb.73.1425334629093;
        Mon, 02 Mar 2015 14:17:09 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id p1sm17855461wib.23.2015.03.02.14.17.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 14:17:08 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: ieee80211: Move '{' up one line
Date: Tue,  3 Mar 2015 00:16:26 +0200
Message-Id: <1425334586-19636-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

That open brace '{' should be on the previous line.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 91 ++++++++--------------
 1 file changed, 31 insertions(+), 60 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 76a1a61..c7eb4ea 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -430,8 +430,7 @@ void ieee80211_softmac_scan_syncro(struct ieee80211_device *ieee)
 	memcpy(channel_map, GET_DOT11D_INFO(ieee)->channel_map, MAX_CHANNEL_NUMBER+1);
 	down(&ieee->scan_sem);
 
-	while (1)
-	{
+	while (1) {
 
 		do {
 			ch++;
@@ -504,8 +503,7 @@ static void ieee80211_softmac_scan_wq(struct work_struct *work)
 	do {
 		ieee->current_network.channel =
 			(ieee->current_network.channel + 1) % MAX_CHANNEL_NUMBER;
-		if (watchdog++ > MAX_CHANNEL_NUMBER)
-		{
+		if (watchdog++ > MAX_CHANNEL_NUMBER) {
 		/* if current channel is not in channel map, set to default channel. */
 			if (!channel_map[ieee->current_network.channel]) {
 				ieee->current_network.channel = 6;
@@ -609,10 +607,8 @@ EXPORT_SYMBOL(ieee80211_stop_scan);
 /* called with ieee->lock held */
 static void ieee80211_start_scan(struct ieee80211_device *ieee)
 {
-	if (IS_DOT11D_ENABLE(ieee) )
-	{
-		if (IS_COUNTRY_IE_VALID(ieee))
-		{
+	if (IS_DOT11D_ENABLE(ieee) ) {
+		if (IS_COUNTRY_IE_VALID(ieee)) {
 			RESET_CIE_WATCHDOG(ieee);
 		}
 	}
@@ -629,10 +625,8 @@ static void ieee80211_start_scan(struct ieee80211_device *ieee)
 /* called with wx_sem held */
 void ieee80211_start_scan_syncro(struct ieee80211_device *ieee)
 {
-	if (IS_DOT11D_ENABLE(ieee) )
-	{
-		if (IS_COUNTRY_IE_VALID(ieee))
-		{
+	if (IS_DOT11D_ENABLE(ieee) ) {
+		if (IS_COUNTRY_IE_VALID(ieee)) {
 			RESET_CIE_WATCHDOG(ieee);
 		}
 	}
@@ -739,8 +733,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 	HTConstructInfoElement(ieee, tmp_ht_info_buf, &tmp_ht_info_len, encrypt);
 
 
-	if (pHTInfo->bRegRT2RTAggregation)
-	{
+	if (pHTInfo->bRegRT2RTAggregation) {
 		tmp_generic_ie_buf = ieee->pHTInfo->szRT2RTAggBuffer;
 		tmp_generic_ie_len = sizeof(ieee->pHTInfo->szRT2RTAggBuffer);
 		HTConstructRT2RTAggElement(ieee, tmp_generic_ie_buf, &tmp_generic_ie_len);
@@ -824,10 +817,9 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 		tag += rate_ex_len-2;
 	}
 
-	if (wpa_ie_len)
-	{
-		if (ieee->iw_mode == IW_MODE_ADHOC)
-		{/* as Windows will set pairwise key same as the group key which is not allowed in Linux, so set this for IOT issue. WB 2008.07.07 */
+	if (wpa_ie_len) {
+		if (ieee->iw_mode == IW_MODE_ADHOC) {
+		/* as Windows will set pairwise key same as the group key which is not allowed in Linux, so set this for IOT issue. WB 2008.07.07 */
 			memcpy(&ieee->wpa_ie[14], &ieee->wpa_ie[8], 4);
 		}
 		memcpy(tag, ieee->wpa_ie, ieee->wpa_ie_len);
@@ -1016,13 +1008,11 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	encrypt = ieee->host_encrypt && crypt && crypt->ops && ((0 == strcmp(crypt->ops->name, "WEP") || wpa_ie_len));
 
 	/* Include High Throuput capability && Realtek proprietary */
-	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT)
-	{
+	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT) {
 		ht_cap_buf = (u8 *)&(ieee->pHTInfo->SelfHTCap);
 		ht_cap_len = sizeof(ieee->pHTInfo->SelfHTCap);
 		HTConstructCapabilityElement(ieee, ht_cap_buf, &ht_cap_len, encrypt);
-		if (ieee->pHTInfo->bCurrentRT2RTAggregation)
-		{
+		if (ieee->pHTInfo->bCurrentRT2RTAggregation) {
 			realtek_ie_buf = ieee->pHTInfo->szRT2RTAggBuffer;
 			realtek_ie_len = sizeof( ieee->pHTInfo->szRT2RTAggBuffer);
 			HTConstructRT2RTAggElement(ieee, realtek_ie_buf, &realtek_ie_len);
@@ -1034,12 +1024,10 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	}
 
 
-	if (beacon->bCkipSupported)
-	{
+	if (beacon->bCkipSupported) {
 		ckip_ie_len = 30+2;
 	}
-	if (beacon->bCcxRmEnable)
-	{
+	if (beacon->bCcxRmEnable) {
 		ccxrm_ie_len = 6+2;
 	}
 	if (beacon->BssCcxVerNumber >= 2)
@@ -1142,8 +1130,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 		tag += osCcxAironetIE.Length;
 	}
 
-	if (beacon->bCcxRmEnable)
-	{
+	if (beacon->bCcxRmEnable) {
 		static u8 CcxRmCapBuf[] = {0x00, 0x40, 0x96, 0x01, 0x01, 0x00};
 		OCTET_STRING osCcxRmCap;
 
@@ -1170,8 +1157,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	}
 	/* HT cap element */
 	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT) {
-		if (ieee->pHTInfo->ePeerHTSpecVer != HT_SPEC_VER_EWC)
-		{
+		if (ieee->pHTInfo->ePeerHTSpecVer != HT_SPEC_VER_EWC) {
 			tag = skb_put(skb, ht_cap_len);
 			*tag++ = MFIE_TYPE_HT_CAP;
 			*tag++ = ht_cap_len - 2;
@@ -1199,8 +1185,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 #endif
 
 	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT) {
-		if (ieee->pHTInfo->ePeerHTSpecVer == HT_SPEC_VER_EWC)
-		{
+		if (ieee->pHTInfo->ePeerHTSpecVer == HT_SPEC_VER_EWC) {
 			tag = skb_put(skb, ht_cap_len);
 			*tag++ = MFIE_TYPE_GENERIC;
 			*tag++ = ht_cap_len - 2;
@@ -1346,21 +1331,18 @@ static void ieee80211_associate_complete_wq(struct work_struct *work)
 		ieee->rate = 22;
 		printk(KERN_INFO"Using B rates:%d\n", ieee->rate);
 	}
-	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT)
-	{
+	if (ieee->pHTInfo->bCurrentHTSupport && ieee->pHTInfo->bEnableHT) {
 		printk("Successfully associated, ht enabled\n");
 		HTOnAssocRsp(ieee);
 	}
-	else
-	{
+	else {
 		printk("Successfully associated, ht not enabled(%d, %d)\n", ieee->pHTInfo->bCurrentHTSupport, ieee->pHTInfo->bEnableHT);
 		memset(ieee->dot11HTOperationalRateSet, 0, 16);
 		/* HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT); */
 	}
 	ieee->LinkDetectInfo.SlotNum = 2 * (1 + ieee->current_network.beacon_interval/500);
 	/* To prevent the immediately calling watch_dog after association. */
-	if (ieee->LinkDetectInfo.NumRecvBcnInPeriod == 0 || ieee->LinkDetectInfo.NumRecvDataInPeriod == 0 )
-	{
+	if (ieee->LinkDetectInfo.NumRecvBcnInPeriod == 0 || ieee->LinkDetectInfo.NumRecvDataInPeriod == 0 ) {
 		ieee->LinkDetectInfo.NumRecvBcnInPeriod = 1;
 		ieee->LinkDetectInfo.NumRecvDataInPeriod = 1;
 	}
@@ -1369,8 +1351,7 @@ static void ieee80211_associate_complete_wq(struct work_struct *work)
 		printk("============>normal associate\n");
 	notify_wx_assoc_event(ieee);
 	}
-	else if (ieee->is_silent_reset == 1)
-	{
+	else if (ieee->is_silent_reset == 1) {
 		printk("==================>silent reset associate\n");
 		ieee->is_silent_reset = 0;
 	}
@@ -1485,8 +1466,7 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 					/*	ieee->pHTInfo->bCurrentHTSupport = true; */
 						HTResetSelfAndSavePeerSetting(ieee, &(ieee->current_network));
 					}
-					else
-					{
+					else {
 						ieee->pHTInfo->bCurrentHTSupport = false;
 					}
 
@@ -1899,8 +1879,7 @@ static void ieee80211_process_action(struct ieee80211_device *ieee,
 	u8 *act = ieee80211_get_payload(header);
 	u8 tmp = 0;
 	/* IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len); */
-	if (act == NULL)
-	{
+	if (act == NULL) {
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "error to get payload of action frame\n");
 		return;
 	}
@@ -1976,8 +1955,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 								network, rx_stats)){
 						return 1;
 					}
-					else
-					{	/* filling the PeerHTCap. //maybe not necessary as we can get its info from current_network. */
+					else {	/* filling the PeerHTCap. //maybe not necessary as we can get its info from current_network. */
 						memcpy(ieee->pHTInfo->PeerHTCapBuf, network->bssht.bdHTCapBuf, network->bssht.bdHTCapLen);
 						memcpy(ieee->pHTInfo->PeerHTInfoBuf, network->bssht.bdHTInfoBuf, network->bssht.bdHTInfoLen);
 					}
@@ -2025,18 +2003,14 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 						if (ieee->open_wep || !challenge) {
 							ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATED;
 							ieee->softmac_stats.rx_auth_rs_ok++;
-							if (!(ieee->pHTInfo->IOTAction&HT_IOT_ACT_PURE_N_MODE))
-							{
-								if (!ieee->GetNmodeSupportBySecCfg(ieee->dev))
-								{
+							if (!(ieee->pHTInfo->IOTAction&HT_IOT_ACT_PURE_N_MODE)) {
+								if (!ieee->GetNmodeSupportBySecCfg(ieee->dev)) {
 											/* WEP or TKIP encryption */
-									if (IsHTHalfNmodeAPs(ieee))
-									{
+									if (IsHTHalfNmodeAPs(ieee)) {
 										bSupportNmode = true;
 										bHalfSupportNmode = true;
 									}
-									else
-									{
+									else {
 										bSupportNmode = false;
 										bHalfSupportNmode = false;
 									}
@@ -2054,8 +2028,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 								ieee->SetWirelessMode(ieee->dev, IEEE_G);
 							}
 
-							if (ieee->current_network.mode == IEEE_N_24G && bHalfSupportNmode == true)
-							{
+							if (ieee->current_network.mode == IEEE_N_24G && bHalfSupportNmode == true) {
 								printk("===============>entern half N mode\n");
 								ieee->bHalfWirelessN24GMode = true;
 							}
@@ -2458,10 +2431,8 @@ void ieee80211_start_bss(struct ieee80211_device *ieee)
 	 Ref: 802.11d 11.1.3.3
 	 STA shall not start a BSS unless properly formed Beacon frame including a Country IE.
 	*/
-	if (IS_DOT11D_ENABLE(ieee) && !IS_COUNTRY_IE_VALID(ieee))
-	{
-		if (! ieee->bGlobalDomain)
-		{
+	if (IS_DOT11D_ENABLE(ieee) && !IS_COUNTRY_IE_VALID(ieee)) {
+		if (! ieee->bGlobalDomain) {
 			return;
 		}
 	}
-- 
1.9.1



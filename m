X-GM-THRID: 6331576754045452288
X-Received: by 10.13.198.195 with SMTP id i186mr2455034ywd.140.1474185090164;
        Sun, 18 Sep 2016 00:51:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.155 with SMTP id h27ls5637767otc.37.gmail; Sun, 18 Sep
 2016 00:51:29 -0700 (PDT)
X-Received: by 10.13.250.129 with SMTP id k123mr12465981ywf.1.1474185089832;
        Sun, 18 Sep 2016 00:51:29 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id h124si5508405pfe.0.2016.09.18.00.51.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 00:51:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so5429782pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 00:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=F16qg2f96PCDiOtDhF89K1ZibMpdV0kVdXN5hLBtlM4=;
        b=p8TVD2+C+DKwtWgE764u/WznhMIIUFeCOvQz7AuFTdSOM9y8PIliA5GbRtbmesMt4g
         wpZj+f9n6DOHgjOVy5n2Kq44H7K4tH8XBzsnLgNzgG6LyCT/OdFsrickFqCAB4Fv9bwt
         eqcT2H1lQP+jmkVuGcN4xR5DNAI+susHMhWLShF6xyRcE/rSoyLhmGY25kseM0D6G3dM
         GGoXDY8MR9pLTuO4/wgIHlTZTIHiJ9LTxTnCebxWdSUlMnevXcZWEP2alhkYOHgTAuXx
         PXl3x96LdyIosEPRul4sT4kdhQfe9JlilgAJtbAIWNTmPnIVo9WhmhYcL8Sjcc44q9Ua
         Xgaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=F16qg2f96PCDiOtDhF89K1ZibMpdV0kVdXN5hLBtlM4=;
        b=bNgU3CGFSa1pclOdbJUJ85+VzT3tuJBy34q67biy/0ItmjftFNh3LLsaW48xTuNZp9
         LUhoT9akeS/4gAihkW3Nlg8H8j5YK7V915tKVsTirVC01qEWAG94QtNo9WRejOvMtr++
         vp/6OBmn7lmvfvisMWN9oZKgrb0VTjCpgElqM0znY/eu8sgHkzuoxw9QWLWFaukK/dgt
         +I4z+r5aZtMu87iCCR8nkWCVvyJERtqaWYLpguOl24+iu18LALa3aDEylEfI0NVYEiJw
         AOzcule8T85s/TMPQbPLTa50Nt3Zsf5I/Y+6tRxE2GR9vFfFZvXa2y6vUUmyI1wCpAJK
         Pi9Q==
X-Gm-Message-State: AE9vXwNuzAoxAuyzzOBon0Bv/mItRZBwtr8i1PdqbPhwlQYHWKt43hnSURq5+LEE2RRcww==
X-Received: by 10.66.161.195 with SMTP id xu3mr36908906pab.68.1474185089553;
        Sun, 18 Sep 2016 00:51:29 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id ps2sm22962573pab.10.2016.09.18.00.51.27
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 00:51:29 -0700 (PDT)
Date: Sun, 18 Sep 2016 13:21:20 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, amitoj1606@gmail.com
Subject: [PATCH 3/3] staging: rtl8188eu: core: Add spaces around operators
Message-ID: <20160918075112.GA4787@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around operators {+, -, &, /, <<, &&}

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 52 ++++++++++++++++-----------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index f5bd0db..a423a6f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -80,7 +80,7 @@ static void update_BCNTIM(struct adapter *padapter)
 			pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
 	if (p && tim_ielen > 0) {
 		tim_ielen += 2;
-		premainder_ie = p+tim_ielen;
+		premainder_ie = p + tim_ielen;
 		tim_ie_offset = (int)(p - pie);
 		remainder_ielen = pnetwork_mlmeext->IELength -
 					tim_ie_offset - tim_ielen;
@@ -186,7 +186,7 @@ void rtw_add_bcn_ie(struct adapter *padapter, struct wlan_bssid_ex *pnetwork,
 	if (p && ielen > 0) {
 		ielen += 2;
 
-		premainder_ie = p+ielen;
+		premainder_ie = p + ielen;
 
 		ie_offset = (int)(p - pie);
 
@@ -195,7 +195,7 @@ void rtw_add_bcn_ie(struct adapter *padapter, struct wlan_bssid_ex *pnetwork,
 		if (bmatch)
 			dst_ie = p;
 		else
-			dst_ie = p+ielen;
+			dst_ie = p + ielen;
 	}
 
 	if (remainder_ielen > 0) {
@@ -235,7 +235,7 @@ void rtw_remove_bcn_ie(struct adapter *padapter, struct wlan_bssid_ex *pnetwork,
 	if (p && ielen > 0) {
 		ielen += 2;
 
-		premainder_ie = p+ielen;
+		premainder_ie = p + ielen;
 
 		ie_offset = (int)(p - pie);
 
@@ -385,8 +385,8 @@ void	expire_timeout_chk(struct adapter *padapter)
 			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
 		} else {
 			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
-			if (psta->sleepq_len > (NR_XMITFRAME/pstapriv->asoc_list_cnt) &&
-			    padapter->xmitpriv.free_xmitframe_cnt < (NR_XMITFRAME/pstapriv->asoc_list_cnt/2)) {
+			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt) &&
+			    padapter->xmitpriv.free_xmitframe_cnt < (NR_XMITFRAME / pstapriv->asoc_list_cnt / 2)) {
 				DBG_88E("%s sta:%pM, sleepq_len:%u, free_xmitframe_cnt:%u, asoc_list_cnt:%u, clear sleep_q\n", __func__,
 					(psta->hwaddr), psta->sleepq_len,
 					padapter->xmitpriv.free_xmitframe_cnt,
@@ -470,7 +470,7 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 	/* b/g mode ra_bitmap */
 	for (i = 0; i < sizeof(psta->bssrateset); i++) {
 		if (psta->bssrateset[i])
-			tx_ra_bitmap |= rtw_get_bit_value_from_ieee_value(psta->bssrateset[i]&0x7f);
+			tx_ra_bitmap |= rtw_get_bit_value_from_ieee_value(psta->bssrateset[i] & 0x7f);
 	}
 	/* n mode ra_bitmap */
 	if (psta_ht->ht_option) {
@@ -482,7 +482,7 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 
 		for (i = 0; i < limit; i++) {
 			if (psta_ht->ht_cap.mcs.rx_mask[i / 8] & BIT(i % 8))
-				tx_ra_bitmap |= BIT(i+12);
+				tx_ra_bitmap |= BIT(i + 12);
 		}
 
 		/* max short GI rate */
@@ -507,19 +507,19 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 	psta->wireless_mode = sta_band;
 
 	raid = networktype_to_raid(sta_band);
-	init_rate = get_highest_rate_idx(tx_ra_bitmap&0x0fffffff)&0x3f;
+	init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
 
 	if (psta->aid < NUM_STA) {
 		u8 arg = 0;
 
-		arg = psta->mac_id&0x1f;
+		arg = psta->mac_id & 0x1f;
 
 		arg |= BIT(7);/* support entry 2~31 */
 
 		if (shortGIrate)
 			arg |= BIT(5);
 
-		tx_ra_bitmap |= ((raid<<28)&0xf0000000);
+		tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
 
 		DBG_88E("%s => mac_id:%d , raid:%d , bitmap = 0x%x, arg = 0x%x\n",
 			__func__, psta->mac_id, raid, tx_ra_bitmap, arg);
@@ -573,7 +573,7 @@ static void update_bmc_sta(struct adapter *padapter)
 		/* b/g mode ra_bitmap */
 		for (i = 0; i < supportRateNum; i++) {
 			if (psta->bssrateset[i])
-				tx_ra_bitmap |= rtw_get_bit_value_from_ieee_value(psta->bssrateset[i]&0x7f);
+				tx_ra_bitmap |= rtw_get_bit_value_from_ieee_value(psta->bssrateset[i] & 0x7f);
 		}
 
 		if (pcur_network->Configuration.DSConfig > 14) {
@@ -587,7 +587,7 @@ static void update_bmc_sta(struct adapter *padapter)
 		}
 
 		raid = networktype_to_raid(network_type);
-		init_rate = get_highest_rate_idx(tx_ra_bitmap&0x0fffffff)&0x3f;
+		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
 
 		/* ap mode */
 		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
@@ -597,7 +597,7 @@ static void update_bmc_sta(struct adapter *padapter)
 
 			arg = psta->mac_id&0x1f;
 			arg |= BIT(7);
-			tx_ra_bitmap |= ((raid<<28)&0xf0000000);
+			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
 			DBG_88E("update_bmc_sta, mask = 0x%x, arg = 0x%x\n", tx_ra_bitmap, arg);
 
 			/* bitmap[0:27] = tx_rate_bitmap */
@@ -636,7 +636,7 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 	struct ht_priv	*phtpriv_ap = &pmlmepriv->htpriv;
 	struct ht_priv	*phtpriv_sta = &psta->htpriv;
 
-	psta->mac_id = psta->aid+1;
+	psta->mac_id = psta->aid + 1;
 	DBG_88E("%s\n", __func__);
 
 	/* ap mode */
@@ -750,7 +750,7 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	/* check if there is wps ie, */
 	/* if there is wpsie in beacon, the hostapd will update beacon twice when stating hostapd, */
 	/* and at first time the security ie (RSN/WPA IE) will not include in beacon. */
-	if (!rtw_get_wps_ie(pnetwork->IEs+_FIXED_IE_LENGTH_, pnetwork->IELength-_FIXED_IE_LENGTH_, NULL, NULL))
+	if (!rtw_get_wps_ie(pnetwork->IEs + _FIXED_IE_LENGTH_, pnetwork->IELength - _FIXED_IE_LENGTH_, NULL, NULL))
 		pmlmeext->bstart_bss = true;
 
 	/* todo: update wmm, ht cap */
@@ -803,7 +803,7 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	/* set channel, bwmode */
 	p = rtw_get_ie((pnetwork->IEs + sizeof(struct ndis_802_11_fixed_ie)), _HT_ADD_INFO_IE_, &ie_len, (pnetwork->IELength - sizeof(struct ndis_802_11_fixed_ie)));
 	if (p && ie_len) {
-		pht_info = (struct HT_info_element *)(p+2);
+		pht_info = (struct HT_info_element *)(p + 2);
 
 		if ((pregpriv->cbw40_enable) &&	 (pht_info->infos[0] & BIT(2))) {
 			/* switch to the 40M Hz mode */
@@ -935,14 +935,14 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/*  get supported rates */
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len, (pbss_network->IELength - _BEACON_IE_OFFSET_));
 	if (p) {
-		memcpy(supportRate, p+2, ie_len);
+		memcpy(supportRate, p + 2, ie_len);
 		supportRateNum = ie_len;
 	}
 
 	/* get ext_supported rates */
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_, &ie_len, pbss_network->IELength - _BEACON_IE_OFFSET_);
 	if (p) {
-		memcpy(supportRate+supportRateNum, p+2, ie_len);
+		memcpy(supportRate + supportRateNum, p + 2, ie_len);
 		supportRateNum += ie_len;
 	}
 
@@ -970,7 +970,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pbss_network->IELength - _BEACON_IE_OFFSET_));
 	if (p && ie_len > 0) {
-		if (rtw_parse_wpa2_ie(p, ie_len+2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
+		if (rtw_parse_wpa2_ie(p, ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
 			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
 
 			psecuritypriv->dot8021xalg = 1;/* psk,  todo:802.1x */
@@ -989,8 +989,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	for (p = ie + _BEACON_IE_OFFSET_;; p += (ie_len + 2)) {
 		p = rtw_get_ie(p, _SSN_IE_1_, &ie_len,
 			       (pbss_network->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2)));
-		if ((p) && (!memcmp(p+2, OUI1, 4))) {
-			if (rtw_parse_wpa_ie(p, ie_len+2, &group_cipher,
+		if ((p) && (!memcmp(p + 2, OUI1, 4))) {
+			if (rtw_parse_wpa_ie(p, ie_len + 2, &group_cipher,
 					     &pairwise_cipher, NULL) == _SUCCESS) {
 				psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
 
@@ -1014,10 +1014,10 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		for (p = ie + _BEACON_IE_OFFSET_;; p += (ie_len + 2)) {
 			p = rtw_get_ie(p, _VENDOR_SPECIFIC_IE_, &ie_len,
 				       (pbss_network->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2)));
-			if ((p) && !memcmp(p+2, WMM_PARA_IE, 6)) {
+			if ((p) && !memcmp(p + 2, WMM_PARA_IE, 6)) {
 				pmlmepriv->qospriv.qos_option = 1;
 
-				*(p+8) |= BIT(7);/* QoS Info, support U-APSD */
+				*(p + 8) |= BIT(7);/* QoS Info, support U-APSD */
 
 				/* disable all ACM bits since the WMM admission control is not supported */
 				*(p + 10) &= ~BIT(4); /* BE */
@@ -1046,7 +1046,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 		if ((psecuritypriv->wpa_pairwise_cipher & WPA_CIPHER_CCMP) ||
 		    (psecuritypriv->wpa2_pairwise_cipher & WPA_CIPHER_CCMP))
-			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY&(0x07<<2));
+			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY & (0x07 << 2));
 		else
 			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY&0x00);
 
@@ -1147,7 +1147,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 
 	DBG_88E("%s(acl_num =%d) =%pM\n", __func__, pacl_list->num, (addr));
 
-	if ((NUM_ACL-1) < pacl_list->num)
+	if ((NUM_ACL - 1) < pacl_list->num)
 		return -1;
 
 	spin_lock_bh(&(pacl_node_q->lock));
-- 
1.9.1



X-GM-THRID: 6809913191851622400
X-Received: by 2002:aca:fcd8:: with SMTP id a207mr3146269oii.56.1585556501171;
        Mon, 30 Mar 2020 01:21:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:b814:: with SMTP id g20ls1628405oop.2.gmail; Mon, 30 Mar
 2020 01:21:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvGVIjv9hz2XyMJ6P60I4C3yL3PmzFcl5enSziNVQRq000uGAeIcqaoDq2Db0noz4S4V2eQ
X-Received: by 2002:a4a:3f19:: with SMTP id e25mr8856644ooa.67.1585556500233;
        Mon, 30 Mar 2020 01:21:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585556500; cv=none;
        d=google.com; s=arc-20160816;
        b=hGS+D0SIMvvZVFeSee28xnQB2PfEyIGzgqRqwD4Q1zItNXIvacj9fjuFb4KaRJKeBY
         HUhQXEeJmrWlg5QFvcPYpig4/rsip+v7wpjkE2XALTBaqNcQDZP14Y+RnS5Bd96/gwVb
         2rV1DlsAh9YslOWb9i1VeIxrpNnv9Ks2ZZDS5pnFW+j96HDT3YEFBwyIroPdA+PwJ0tJ
         vHpLaRfufxzhl09CJS9UHXUMcUd90Fnz/0j/eYeen8aKCgxa+xaBEESez+BFZHe/uipr
         shISfuzhTT7Q1Ldy34PzBzntl41scHoLa/qUKYTiNWkulWvE3eY0qoG2LiN9JkLmO2Ht
         x74A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=CMK8UGqHcZqyDbrsn4ODtQ1q3GPTWBnyX43RGVpr8io=;
        b=ncB9F4fk7KJOfuWGJgu1zq8+N3tCH0cyCsG2yCM15/cicZ3XIoG4n4pZ1fqhgwwA83
         uKeTik/vhWPu77t0aDs16O1Vmkts6R8H0jOIadAt6yIfrtkzLe99roARL/lkk8YpwfXz
         jdRq3sXczx/0dzHIl0Fv3ITjUZgz2m+C6vqCZciavqwh2KvTuudKSG+1ontGmQXQx6cU
         Y0TZA6pMMKrt4J2O9WLXqekgoLbbWfrU8sLgXLjrRpYR7UM8HzXZD2WzcsxcZ+zd/f1e
         T0her4rYRi42Q/VhO0uZWNC1G0/1cxolqz7XQJuM3v1Xfp1VPYFMbNF/d1xAWznSZ/jW
         LAgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mc5T2eIq;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d11si753838otk.5.2020.03.30.01.21.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 01:21:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mc5T2eIq;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id h8so8317307pgs.9
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 01:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CMK8UGqHcZqyDbrsn4ODtQ1q3GPTWBnyX43RGVpr8io=;
        b=mc5T2eIqDeO+szthcKFhMCzdy5ISr8k3/F/hscj1xfNI1qROXyEgJn4a9Q30RTzVeW
         86BthBP8xWE8yEOcsCSgU+q6dUSN/w4ZyZXltvxXT4knaUJ9gn0ofxf57oZzgIhMJlOP
         Mk0bYO70w8dyhNQ0KI3pKdjePqvtq+xPa1L6cNOjbsGaZ+uJl2TXnmYE7ZUsDeK29K4o
         wQg3XVo1uhr7eXnW0T3Z4ayFPF8af5G5AIxhrIbXKr66DULDofzMXqENX3jg9RQIDDvR
         vyTI9Qbyb3yC24MS8dMsxqsGNSbMJw13WtmCJyUZWZ3u72+gXmwne7b82bWQEHSS2dfe
         XAkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CMK8UGqHcZqyDbrsn4ODtQ1q3GPTWBnyX43RGVpr8io=;
        b=saQo7kZ9CvfP73+7NKEq8EfADaL/8SYnJCrNM/EhQtSRVH46d6l4b/6YTpSPkxVAEJ
         sijlMJQrnH29P1EMZn8jH2ldTHEkhsPhcEPssq7TTTSi2bR+QzUXr/ckZe9N1ZDRb6Am
         k08lqredmlHwd+5gA24YRqxLa1xtqOco8DwG/7yCFIulYnKvdcimMca5y3ND+42V5PJB
         2TuN0Zb+Y9IW66QEH3gqAf0u65MYg5A/H5ICK85ox48JKGhGFHuoj5F4hASrd/SNJW+U
         iDCJQ68zqBOXFuKu54XyFZTqK48GRzdldZmz5ccCC6leThz/SMhpcIo34lNoeH+YpCwG
         3FAg==
X-Gm-Message-State: ANhLgQ1b2i9vS2G4tNiCSsMnGHHWlzksmsRVN9lwRs1bsveLV/2UZAG2
	eQ3bdSwCuFvieu2ywzaasMY=
X-Received: by 2002:a65:5647:: with SMTP id m7mr11513117pgs.371.1585556499384;
        Mon, 30 Mar 2020 01:21:39 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.216.19])
        by smtp.googlemail.com with ESMTPSA id v25sm9238049pgl.55.2020.03.30.01.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 01:21:38 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Larry.Finger@lwfinger.net,
	outreachy-kernel@googlegroups.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH 2/2] staging: rtl8188eu: Line over 80 characters
Date: Mon, 30 Mar 2020 13:50:36 +0530
Message-Id: <20200330082036.12928-3-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200330082036.12928-1-debsoumyajit100@gmail.com>
References: <20200330082036.12928-1-debsoumyajit100@gmail.com>

Break various lines into multiple lines to respect the 80 character
width limit.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 62 +++++++++++++++++--------
 1 file changed, 42 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 5b2b4d1d56f6..94cfd45e3eaa 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -264,8 +264,10 @@ void expire_timeout_chk(struct adapter *padapter)
 			list_del_init(&psta->asoc_list);
 			pstapriv->asoc_list_cnt--;
 
-			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
-			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
+			DBG_88E("asoc expire %pM, state = 0x%x\n",
+				(psta->hwaddr), psta->state);
+			updated = ap_free_sta(padapter, psta, true,
+					      WLAN_REASON_DEAUTH_LEAVING);
 		} else {
 			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
 			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt) &&
@@ -294,16 +296,20 @@ void expire_timeout_chk(struct adapter *padapter)
 		for (i = 0; i < chk_alive_num; i++) {
 			int ret = _FAIL;
 
-			psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
+			psta = rtw_get_stainfo_by_offset(pstapriv,
+							 chk_alive_list[i]);
 
 			if (psta->state & WIFI_SLEEP_STATE)
-				ret = issue_nulldata(padapter, psta->hwaddr, 0, 1, 50);
+				ret = issue_nulldata(padapter, psta->hwaddr, 0,
+						     1, 50);
 			else
-				ret = issue_nulldata(padapter, psta->hwaddr, 0, 3, 50);
+				ret = issue_nulldata(padapter, psta->hwaddr, 0,
+						     3, 50);
 
 			psta->keep_alive_trycnt++;
 			if (ret == _SUCCESS) {
-				DBG_88E("asoc check, sta(%pM) is alive\n", (psta->hwaddr));
+				DBG_88E("asoc check, sta(%pM) is alive\n",
+					(psta->hwaddr));
 				psta->expire_to = pstapriv->expire_to;
 				psta->keep_alive_trycnt = 0;
 				continue;
@@ -315,11 +321,13 @@ void expire_timeout_chk(struct adapter *padapter)
 
 			psta->keep_alive_trycnt = 0;
 
-			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
+			DBG_88E("asoc expire %pM, state = 0x%x\n",
+				(psta->hwaddr), psta->state);
 			spin_lock_bh(&pstapriv->asoc_list_lock);
 			list_del_init(&psta->asoc_list);
 			pstapriv->asoc_list_cnt--;
-			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
+			updated = ap_free_sta(padapter, psta, true,
+					      WLAN_REASON_DEAUTH_LEAVING);
 			spin_unlock_bh(&pstapriv->asoc_list_lock);
 		}
 
@@ -431,7 +439,8 @@ static void update_bmc_sta(struct adapter *padapter)
 		supportRateNum = rtw_get_rateset_len((u8 *)&pcur_network->SupportedRates);
 		network_type = rtw_check_network_type((u8 *)&pcur_network->SupportedRates);
 
-		memcpy(psta->bssrateset, &pcur_network->SupportedRates, supportRateNum);
+		memcpy(psta->bssrateset, &pcur_network->SupportedRates,
+		       supportRateNum);
 		psta->bssratelen = supportRateNum;
 
 		/* b/g mode ra_bitmap */
@@ -445,7 +454,8 @@ static void update_bmc_sta(struct adapter *padapter)
 		tx_ra_bitmap = 0xf;
 
 		raid = networktype_to_raid(network_type);
-		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
+		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) &
+						 0x3f;
 
 		/* ap mode */
 		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
@@ -456,7 +466,8 @@ static void update_bmc_sta(struct adapter *padapter)
 			arg = psta->mac_id & 0x1f;
 			arg |= BIT(7);
 			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
-			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__, tx_ra_bitmap, arg);
+			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__,
+				tx_ra_bitmap, arg);
 
 			/* bitmap[0:27] = tx_rate_bitmap */
 			/* bitmap[28:31]= Rate Adaptive id */
@@ -647,7 +658,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
 
 	/* Beacon Control related register */
-	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&bcn_interval));
+	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL,
+			  (u8 *)(&bcn_interval));
 
 	UpdateBrateTbl(padapter, pnetwork->SupportedRates);
 	rtw_hal_set_hwreg(padapter, HW_VAR_BASIC_RATE, pnetwork->SupportedRates);
@@ -657,7 +669,10 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		Switch_DM_Func(padapter, DYNAMIC_ALL_FUNC_ENABLE, true);
 	}
 	/* set channel, bwmode */
-	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)), _HT_ADD_INFO_IE_, &ie_len, (pnetwork->ie_length - sizeof(struct ndis_802_11_fixed_ie)));
+	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)),
+		       HT_ADD_INFO_IE_, &ie_len,
+		       (pnetwork->ie_length -
+			sizeof(struct ndis_802_11_fixed_ie)));
 	if (p && ie_len) {
 		pht_info = (struct HT_info_element *)(p + 2);
 
@@ -682,7 +697,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	 */
 	set_channel_bwmode(padapter, cur_channel, cur_ch_offset, cur_bwmode);
 
-	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode, cur_ch_offset);
+	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode,
+		cur_ch_offset);
 
 	/*  */
 	pmlmeext->cur_channel = cur_channel;
@@ -771,7 +787,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	cap = get_unaligned_le16(ie);
 
 	/* SSID */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len,
+		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
 	if (p && ie_len > 0) {
 		memset(&pbss_network->ssid, 0, sizeof(struct ndis_802_11_ssid));
 		memcpy(pbss_network->ssid.ssid, (p + 2), ie_len);
@@ -781,7 +798,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* channel */
 	channel = 0;
 	pbss_network->Configuration.Length = 0;
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len,
+		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
 	if (p && ie_len > 0)
 		channel = *(p + 2);
 
@@ -789,14 +807,16 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	memset(supportRate, 0, NDIS_802_11_LENGTH_RATES_EX);
 	/*  get supported rates */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len,
+		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
 	if (p) {
 		memcpy(supportRate, p + 2, ie_len);
 		supportRateNum = ie_len;
 	}
 
 	/* get ext_supported rates */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_,
+		       &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p) {
 		memcpy(supportRate + supportRateNum, p + 2, ie_len);
 		supportRateNum += ie_len;
@@ -807,7 +827,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	rtw_set_supported_rate(pbss_network->SupportedRates, network_type);
 
 	/* parsing ERP_IE */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len,
+		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
 	if (p && ie_len > 0)
 		ERP_IE_handler(padapter, (struct ndis_802_11_var_ie *)p);
 
@@ -824,7 +845,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	pairwise_cipher = 0;
 	psecuritypriv->wpa2_group_cipher = _NO_PRIVACY_;
 	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len,
+		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
 	if (p && ie_len > 0) {
 		if (rtw_parse_wpa2_ie(p, ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
 			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
-- 
2.17.1



X-GM-THRID: 6809913191851622400
X-Received: by 2002:a9d:77d1:: with SMTP id w17mr3515700otl.44.1585852100766;
        Thu, 02 Apr 2020 11:28:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5606:: with SMTP id k6ls1964994oib.1.gmail; Thu, 02 Apr
 2020 11:28:19 -0700 (PDT)
X-Google-Smtp-Source: APiQypKblzLuIctR2A52qKGMClfbwpfVSrhCw1Kl9P49GOBIrNlO/OitMdwSIXlkk7wIV23c+P2s
X-Received: by 2002:aca:2806:: with SMTP id 6mr263533oix.135.1585852099696;
        Thu, 02 Apr 2020 11:28:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585852099; cv=none;
        d=google.com; s=arc-20160816;
        b=TvNDKnGxHxfBNGAYHti+pxxgTtTx9udmVQkldH2gfarKvE+Q0cuzM/kwx4uipDBAYv
         9NIb42zolMeCQf6Xk5DDnDlMqqGoHYbWtlnsf4NgqkkSmHs8QlT4U3WdKRKf1gkwISrv
         mS+XwCQ/NaGWsu1hlvXr5xk4/5a+ur6nBD9AHbFG9TvJSO9Lp8dHlkD4cr9eUAfpXyar
         wm2asaqt/JThBdvmRdcAk3N6tU85EDdNtjWwqrmLSeAsMAO0bt48T07Wuw8eil2iEev9
         +ZYPfyGYqhHXePVFGXs13Ke4MES9QuoeEzC9u8lycLO7oebdl2ZsKNIfxRlPM0bzlR/o
         h6eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=FeGukB3sPHFbMlYVJdfZYDZTPTJRHydZh2xHwcsH310=;
        b=0DY0wTiTN5CWlP0NBtGFuTHQ4b0pjedvlzbxPIm3wSESZY9ZPjZj8a8K+vY4AZXO0u
         cmeFjyrxY2Zr6+HrD2eiZ6yeePsatINPN3Y5cC6scFlAp5Nd6+jtiDJGz9OOOXmJXdML
         5zY9qLApGg4qvMNh5rxNTQ5hW0H7MV8MGaANR845u2g3JruBg+tPEHwQXdgkVXw5xLLr
         3XUAVAQ/oavUVls0hnS8bDjU8goHT6uxs11E4Q+XysBY5cMBObv0SwjLT2qqk/7ZcWfi
         FEmOt6a7+I3KWkOMn4YV+LwwZQcB3XAzDZ3WjpVY6QPM2Db/X5nP7yqnntatiqlWCM1w
         rXPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bv8/wBxp";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id p9si209808ota.4.2020.04.02.11.28.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 11:28:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bv8/wBxp";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id c23so2237583pgj.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 11:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FeGukB3sPHFbMlYVJdfZYDZTPTJRHydZh2xHwcsH310=;
        b=bv8/wBxpZTyJaxV3RF39rBWhhrzkeayQRZAyR165aZ6J2H7Z5hrD79wojFp7nXh1P/
         sYWBrFnf2GEm1DRqFsQxU+eFNU57QL/moN/A/cC85c8jZ8nAPWzwrv46s/moGjZPlb33
         glib00jUA7nnWxtqXV6xo/mSTH4LvCHyxmnQEREdNgxbQugYMGg2RErUQKvRWHkgVsDa
         YtU04DXbCmDOdwDPeIjI4V24iqVC3sjcwm/wtSCZMEWlaMlBkSnxXZWMcvblvzp9Ivil
         i8qVIpjIlKnJ9IhKEEdsoFaYKgb5JpyULm3EslsXfZEBarpbfoGbaO9K6b56Uq/LsRJ0
         IO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=FeGukB3sPHFbMlYVJdfZYDZTPTJRHydZh2xHwcsH310=;
        b=Y9hf8z96OyifXbQuIiVBonYY0C5fqKa4kcTDh7cd6wty3OXua+rfVQKdr7377DoG4F
         6CGovCeyjl/wh7r0r8i3GuAfDYnKQVae3/DX0egAxBL2EOhd8uVcXcNZvV1nu9vo5YTw
         y3Dwt+q70h1zhbFOWpHKnzF+WSKoF//VjlM6M3fnHyepptRZHA3mim13OqCy4ku/DR42
         RqxkQGAX7jIn5dwGRAbhY5GNwmhlrrljBgBFeMQwfDgSGyigBUuM4rgqZ0MJb8yhUZNM
         712bwH7FwMpmPMQ+0Kx4f/vU4riYtszgkurDnDS4H+7mkDvzOmU3hXydXCXSfkGLFT3k
         r59A==
X-Gm-Message-State: AGi0PualIXoM4xqaiGM2Z96x1j9Bv1VayKKo8aFpcVrpEMCw7zfOWl4N
	pYpsuE5DKjgW+Y+gTpqNvOezyoANBxrBWQ==
X-Received: by 2002:a65:4249:: with SMTP id d9mr4399094pgq.198.1585852098806;
        Thu, 02 Apr 2020 11:28:18 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([2409:4065:11f:6885:4516:34fe:f4bf:419b])
        by smtp.googlemail.com with ESMTPSA id x189sm4195398pfb.1.2020.04.02.11.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 11:28:18 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	julia.lawall@inria.fr,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v3 3/3] staging: rtl8188eu: Line over 80 characters
Date: Thu,  2 Apr 2020 23:56:21 +0530
Message-Id: <20200402182621.61694-4-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200402182621.61694-1-debsoumyajit100@gmail.com>
References: <20200402182621.61694-1-debsoumyajit100@gmail.com>

Break various lines into multiple lines to respect 80 character width
limit.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 67 +++++++++++++++++--------
 1 file changed, 45 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index bd9a59dd3dd9..c88557c07211 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -264,8 +264,10 @@ void expire_timeout_chk(struct adapter *padapter)
 			list_del_init(&psta->asoc_list);
 			pstapriv->asoc_list_cnt--;
 
-			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
-			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
+			DBG_88E("asoc expire %pM, state = 0x%x\n",
+				psta->hwaddr, psta->state);
+			updated = ap_free_sta(padapter, psta, true,
+					      WLAN_REASON_DEAUTH_LEAVING);
 		} else {
 			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
 			if (psta->sleepq_len > (NR_XMITFRAME / pstapriv->asoc_list_cnt) &&
@@ -294,16 +296,21 @@ void expire_timeout_chk(struct adapter *padapter)
 		for (i = 0; i < chk_alive_num; i++) {
 			int ret = _FAIL;
 
-			psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
+			psta = rtw_get_stainfo_by_offset(pstapriv,
+							 chk_alive_list[i]);
 
-			if (psta->state & WIFI_SLEEP_STATE)
-				ret = issue_nulldata(padapter, psta->hwaddr, 0, 1, 50);
-			else
-				ret = issue_nulldata(padapter, psta->hwaddr, 0, 3, 50);
+			if (psta->state & WIFI_SLEEP_STATE) {
+				ret = issue_nulldata(padapter, psta->hwaddr, 0,
+						     1, 50);
+			} else {
+				ret = issue_nulldata(padapter, psta->hwaddr, 0,
+						     3, 50);
+			}
 
 			psta->keep_alive_trycnt++;
 			if (ret == _SUCCESS) {
-				DBG_88E("asoc check, sta(%pM) is alive\n", (psta->hwaddr));
+				DBG_88E("asoc check, sta(%pM) is alive\n",
+					psta->hwaddr);
 				psta->expire_to = pstapriv->expire_to;
 				psta->keep_alive_trycnt = 0;
 				continue;
@@ -315,11 +322,13 @@ void expire_timeout_chk(struct adapter *padapter)
 
 			psta->keep_alive_trycnt = 0;
 
-			DBG_88E("asoc expire %pM, state = 0x%x\n", psta->hwaddr, psta->state);
+			DBG_88E("asoc expire %pM, state = 0x%x\n",
+				psta->hwaddr, psta->state);
 			spin_lock_bh(&pstapriv->asoc_list_lock);
 			list_del_init(&psta->asoc_list);
 			pstapriv->asoc_list_cnt--;
-			updated = ap_free_sta(padapter, psta, true, WLAN_REASON_DEAUTH_LEAVING);
+			updated = ap_free_sta(padapter, psta, true,
+					      WLAN_REASON_DEAUTH_LEAVING);
 			spin_unlock_bh(&pstapriv->asoc_list_lock);
 		}
 
@@ -431,7 +440,8 @@ static void update_bmc_sta(struct adapter *padapter)
 		supportRateNum = rtw_get_rateset_len((u8 *)&pcur_network->SupportedRates);
 		network_type = rtw_check_network_type((u8 *)&pcur_network->SupportedRates);
 
-		memcpy(psta->bssrateset, &pcur_network->SupportedRates, supportRateNum);
+		memcpy(psta->bssrateset, &pcur_network->SupportedRates,
+		       supportRateNum);
 		psta->bssratelen = supportRateNum;
 
 		/* b/g mode ra_bitmap */
@@ -445,7 +455,8 @@ static void update_bmc_sta(struct adapter *padapter)
 		tx_ra_bitmap = 0xf;
 
 		raid = networktype_to_raid(network_type);
-		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
+		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) &
+			    0x3f;
 
 		/* ap mode */
 		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
@@ -456,7 +467,8 @@ static void update_bmc_sta(struct adapter *padapter)
 			arg = psta->mac_id & 0x1f;
 			arg |= BIT(7);
 			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
-			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__, tx_ra_bitmap, arg);
+			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__,
+				tx_ra_bitmap, arg);
 
 			/* bitmap[0:27] = tx_rate_bitmap */
 			/* bitmap[28:31]= Rate Adaptive id */
@@ -647,7 +659,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
 
 	/* Beacon Control related register */
-	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&bcn_interval));
+	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL,
+			  (u8 *)(&bcn_interval));
 
 	UpdateBrateTbl(padapter, pnetwork->SupportedRates);
 	rtw_hal_set_hwreg(padapter, HW_VAR_BASIC_RATE, pnetwork->SupportedRates);
@@ -657,7 +670,10 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		Switch_DM_Func(padapter, DYNAMIC_ALL_FUNC_ENABLE, true);
 	}
 	/* set channel, bwmode */
-	p = rtw_get_ie(pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie), _HT_ADD_INFO_IE_, &ie_len, pnetwork->ie_length - sizeof(struct ndis_802_11_fixed_ie));
+	p = rtw_get_ie(pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie),
+		       _HT_ADD_INFO_IE_, &ie_len,
+		       pnetwork->ie_length -
+		       sizeof(struct ndis_802_11_fixed_ie));
 	if (p && ie_len) {
 		pht_info = (struct HT_info_element *)(p + 2);
 
@@ -682,7 +698,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	 */
 	set_channel_bwmode(padapter, cur_channel, cur_ch_offset, cur_bwmode);
 
-	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode, cur_ch_offset);
+	DBG_88E("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode,
+		cur_ch_offset);
 
 	/*  */
 	pmlmeext->cur_channel = cur_channel;
@@ -771,7 +788,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	cap = get_unaligned_le16(ie);
 
 	/* SSID */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len,
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0) {
 		memset(&pbss_network->ssid, 0, sizeof(struct ndis_802_11_ssid));
 		memcpy(pbss_network->ssid.ssid, p + 2, ie_len);
@@ -781,7 +799,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* channel */
 	channel = 0;
 	pbss_network->Configuration.Length = 0;
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len,
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0)
 		channel = *(p + 2);
 
@@ -789,14 +808,16 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	memset(supportRate, 0, NDIS_802_11_LENGTH_RATES_EX);
 	/*  get supported rates */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len,
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
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
@@ -807,7 +828,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	rtw_set_supported_rate(pbss_network->SupportedRates, network_type);
 
 	/* parsing ERP_IE */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len,
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0)
 		ERP_IE_handler(padapter, (struct ndis_802_11_var_ie *)p);
 
@@ -824,7 +846,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	pairwise_cipher = 0;
 	psecuritypriv->wpa2_group_cipher = _NO_PRIVACY_;
 	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len,
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0) {
 		if (rtw_parse_wpa2_ie(p, ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
 			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
-- 
2.17.1



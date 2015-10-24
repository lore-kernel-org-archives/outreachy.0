X-GM-THRID: 6209065689827770368
X-Received: by 10.31.108.23 with SMTP id h23mr20306468vkc.4.1445660882307;
        Fri, 23 Oct 2015 21:28:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.73 with SMTP id i70ls187687ioi.5.gmail; Fri, 23 Oct
 2015 21:28:01 -0700 (PDT)
X-Received: by 10.66.248.199 with SMTP id yo7mr6158235pac.38.1445660881885;
        Fri, 23 Oct 2015 21:28:01 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si2619502pbb.0.2015.10.23.21.28.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 21:28:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id rc13so134726981pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 21:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=0Sh/X2zzrluMxZmd6fCeg37m4gS29BIbWLICoN0Jmgo=;
        b=kGNVFOAjnbl5JMg3z/R0vGLKnbPFqU/xTKK6gxRv6mBsCzwiry4kaN7Bynp/mQh6Gp
         xTuQfF6Q8/J6fyW+pCOZqB0jIE8Nxq4MZX4tbkk/Cp4VGCbkD75cx3AG8jCWRL739+E7
         d/Rk/xw8pt0NzjCSfXBHZik4/HQrCdgWsK82LoZ6hjSQswUsu/qcBKPUQ/06x8JnRzul
         UA4bOQCMUXziawZ+rP33CG4NVwFoLO4asgb9qIC2PSzKMkfaitQpURC1JyrpP3zIgO0b
         ijM4tZQIV8ceXl9Zz55QbiACvUtG5wKpx7sQEgz+8WrO1b+Wve+SeNmcZ8ynDhxV9OGI
         ZmmA==
X-Received: by 10.66.193.134 with SMTP id ho6mr8952635pac.52.1445660881753;
        Fri, 23 Oct 2015 21:28:01 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id ff2sm11120200pac.14.2015.10.23.21.28.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Oct 2015 21:28:01 -0700 (PDT)
Date: Fri, 23 Oct 2015 21:28:00 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: r8723au: use kernel preferred style for
 commenting
Message-ID: <86e0a6b5faf8ddcc4fb473823745dfd632bc8c9d.1445653471.git.amsfield22@gmail.com>
References: <cover.1445653471.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445653471.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Reworked comments per kernel coding style to improve readability.

Corrects checkpatch.pl:
WARNING: Block comments use * on subsequent lines
WARNING: line over 80 characters

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 152 +++++++++++++++++++-------------
 1 file changed, 89 insertions(+), 63 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index a0b6845..852f4ae 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -132,11 +132,11 @@ static void update_BCNTIM(struct rtw_adapter *padapter)
 
 	*dst_ie++ = tim_ielen;
 
-	*dst_ie++ = 0;/* DTIM count */
-	*dst_ie++ = 1;/* DTIM period */
+	*dst_ie++ = 0; /* DTIM count */
+	*dst_ie++ = 1; /* DTIM period */
 
-	if (pstapriv->tim_bitmap & BIT(0))/* for bc/mc frames */
-		*dst_ie++ = BIT(0);/* bitmap ctrl */
+	if (pstapriv->tim_bitmap & BIT(0)) /* for bc/mc frames */
+		*dst_ie++ = BIT(0);	   /* bitmap ctrl */
 	else
 		*dst_ie++ = 0;
 
@@ -239,11 +239,16 @@ void	expire_timeout_chk23a(struct rtw_adapter *padapter)
 
 			if (psta->state & WIFI_SLEEP_STATE) {
 				if (!(psta->state & WIFI_STA_ALIVE_CHK_STATE)) {
-					/* to check if alive by another methods if station is at ps mode. */
+					/*
+					 * check if alive by another method
+					 * if station is at ps mode.
+					 */
 					psta->expire_to = pstapriv->expire_to;
 					psta->state |= WIFI_STA_ALIVE_CHK_STATE;
-
-					/* to update bcn with tim_bitmap for this station */
+					/*
+					 * update bcn with tim_bitmap
+					 * for this station
+					 */
 					pstapriv->tim_bitmap |= CHKBIT(psta->aid);
 					update_beacon23a(padapter, WLAN_EID_TIM, NULL, false);
 
@@ -264,7 +269,10 @@ void	expire_timeout_chk23a(struct rtw_adapter *padapter)
 				  psta->hwaddr, psta->state);
 			updated = ap_free_sta23a(padapter, psta, false, WLAN_REASON_DEAUTH_LEAVING);
 		} else {
-			/* TODO: Aging mechanism to digest frames in sleep_q to avoid running out of xmitframe */
+			/*
+			 * TODO: Aging mechanism to digest frames in
+			 * sleep_q to avoid running out of xmitframe
+			 */
 			if (psta->sleepq_len > (NR_XMITFRAME/pstapriv->asoc_list_cnt)
 				&& padapter->xmitpriv.free_xmitframe_cnt < ((NR_XMITFRAME/pstapriv->asoc_list_cnt)/2)
 			) {
@@ -285,13 +293,16 @@ void	expire_timeout_chk23a(struct rtw_adapter *padapter)
 
 		u8 backup_oper_channel = 0;
 		struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-		/* switch to correct channel of current network  before issue keep-alive frames */
+		/*
+		 * switch to correct channel of current
+		 * network before issue keep-alive frames
+		 */
 		if (rtw_get_oper_ch23a(padapter) != pmlmeext->cur_channel) {
 			backup_oper_channel = rtw_get_oper_ch23a(padapter);
 			SelectChannel23a(padapter, pmlmeext->cur_channel);
 		}
 
-	/* issue null data to check sta alive*/
+	/* issue null data to check sta alive */
 	for (i = 0; i < chk_alive_num; i++) {
 
 		int ret = _FAIL;
@@ -332,7 +343,7 @@ void	expire_timeout_chk23a(struct rtw_adapter *padapter)
 
 	}
 
-	if (backup_oper_channel > 0) /* back to the original operation channel */
+	if (backup_oper_channel > 0) /* back to original operation channel */
 		SelectChannel23a(padapter, backup_oper_channel);
 }
 
@@ -369,9 +380,9 @@ void add_RATid23a(struct rtw_adapter *padapter, struct sta_info *psta, u8 rssi_l
 		rf_type = rtl8723a_get_rf_type(padapter);
 
 		if (rf_type == RF_2T2R)
-			limit = 16;/*  2R */
+			limit = 16; /* 2R */
 		else
-			limit = 8;/*   1R */
+			limit = 8;  /* 1R */
 
 		for (i = 0; i < limit; i++) {
 			if (psta_ht->ht_cap.mcs.rx_mask[i / 8] & BIT(i % 8))
@@ -407,7 +418,7 @@ void add_RATid23a(struct rtw_adapter *padapter, struct sta_info *psta, u8 rssi_l
 
 		arg = psta->mac_id&0x1f;
 
-		arg |= BIT(7);/* support entry 2~31 */
+		arg |= BIT(7); /* support entry 2~31 */
 
 		if (shortGIrate == true)
 			arg |= BIT(5);
@@ -446,7 +457,7 @@ static void update_bmc_sta(struct rtw_adapter *padapter)
 	struct sta_info *psta = rtw_get_bcmc_stainfo23a(padapter);
 
 	if (psta) {
-		psta->aid = 0;/* default set to 0 */
+		psta->aid = 0; /* default set to 0 */
 		psta->mac_id = psta->aid + 1;
 
 		psta->qos_option = 0;
@@ -473,7 +484,7 @@ static void update_bmc_sta(struct rtw_adapter *padapter)
 		if (pcur_network->DSConfig > 14) {
 			/* force to A mode. 5G doesn't support CCK rates */
 			network_type = WIRELESS_11A;
-			tx_ra_bitmap = 0x150; /*  6, 12, 24 Mbps */
+			tx_ra_bitmap = 0x150; /* 6, 12, 24 Mbps */
 		} else {
 			/* force to b mode */
 			network_type = WIRELESS_11B;
@@ -516,13 +527,13 @@ static void update_bmc_sta(struct rtw_adapter *padapter)
 		DBG_8723A("add_RATid23a_bmc_sta error!\n");
 }
 
-/* notes: */
-/* AID: 1~MAX for sta and 0 for bc/mc in ap/adhoc mode */
-/* MAC_ID = AID+1 for sta in ap/adhoc mode */
-/* MAC_ID = 1 for bc/mc for sta/ap/adhoc */
-/* MAC_ID = 0 for bssid for sta/ap/adhoc */
-/* CAM_ID = 0~3 for default key, cmd_id = macid + 3, macid = aid+1; */
-
+/*
+ * AID: 1~MAX for sta and 0 for bc/mc in ap/adhoc mode
+ * MAC_ID = AID+1 for sta in ap/adhoc mode
+ * MAC_ID = 1 for bc/mc for sta/ap/adhoc
+ * MAC_ID = 0 for bssid for sta/ap/adhoc
+ * CAM_ID = 0~3 for default key, cmd_id = macid + 3, macid = aid + 1;
+ */
 void update_sta_info23a_apmode23a(struct rtw_adapter *padapter, struct sta_info *psta)
 {
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -556,7 +567,7 @@ void update_sta_info23a_apmode23a(struct rtw_adapter *padapter, struct sta_info
 		if ((phtpriv_sta->ht_cap.cap_info & phtpriv_ap->ht_cap.cap_info) & cpu_to_le16(IEEE80211_HT_CAP_SGI_20|IEEE80211_HT_CAP_SGI_40))
 			phtpriv_sta->sgi = true;
 
-		/*  bwmode */
+		/* bwmode */
 		if ((phtpriv_sta->ht_cap.cap_info & phtpriv_ap->ht_cap.cap_info) & cpu_to_le16(IEEE80211_HT_CAP_SUP_WIDTH_20_40)) {
 			/* phtpriv_sta->bwmode = HT_CHANNEL_WIDTH_40; */
 			phtpriv_sta->bwmode = pmlmeext->cur_bwmode;
@@ -575,10 +586,10 @@ void update_sta_info23a_apmode23a(struct rtw_adapter *padapter, struct sta_info
 	}
 
 	/* Rx AMPDU */
-	send_delba23a(padapter, 0, psta->hwaddr);/*  recipient */
+	send_delba23a(padapter, 0, psta->hwaddr); /* recipient */
 
 	/* TX AMPDU */
-	send_delba23a(padapter, 1, psta->hwaddr);/*  originator */
+	send_delba23a(padapter, 1, psta->hwaddr); /* originator */
 	phtpriv_sta->agg_enable_bitmap = 0x0;/* reset */
 	phtpriv_sta->candidate_tid_bitmap = 0x0;/* reset */
 
@@ -599,11 +610,10 @@ static void update_hw_ht_param(struct rtw_adapter *padapter)
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
 	DBG_8723A("%s\n", __func__);
-
-	/* handle A-MPDU parameter field */
 	/*
-		AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
-		AMPDU_para [4:2]:Min MPDU Start Spacing
+	 * handle A-MPDU parameter field
+	 * AMPDU_para [1:0]:Max AMPDU Len => 0:8k, 1:16k, 2:32k, 3:64k
+	 * AMPDU_para [4:2]:Min MPDU Start Spacing
 	*/
 	max_AMPDU_len = pmlmeinfo->ht_cap.ampdu_params_info &
 		IEEE80211_HT_AMPDU_PARM_FACTOR;
@@ -614,7 +624,7 @@ static void update_hw_ht_param(struct rtw_adapter *padapter)
 	rtl8723a_set_ampdu_min_space(padapter, min_MPDU_spacing);
 	rtl8723a_set_ampdu_factor(padapter, max_AMPDU_len);
 
-	/*  Config SM Power Save setting */
+	/* Config SM Power Save setting */
 	pmlmeinfo->SM_PS = (le16_to_cpu(pmlmeinfo->ht_cap.cap_info) &
 			    IEEE80211_HT_CAP_SM_PS) >> 2;
 	if (pmlmeinfo->SM_PS == WLAN_HT_CAP_SM_PS_STATIC)
@@ -641,9 +651,13 @@ static void start_bss_network(struct rtw_adapter *padapter, u8 *pbuf)
 	cur_bwmode = HT_CHANNEL_WIDTH_20;
 	cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
 
-	/* check if there is wps ie, */
-	/* if there is wpsie in beacon, the hostapd will update beacon twice when stating hostapd, */
-	/* and at first time the security ie (RSN/WPA IE) will not include in beacon. */
+	/*
+	 * check if there is wps ie
+	 * if there is wpsie in beacon the hostapd will
+	 * update beacon twice when stating hostapd
+	 * and at first time the security
+	 * ie (RSN/WPA IE) will not include in beacon
+	 */
 	if (NULL == cfg80211_find_vendor_ie(WLAN_OUI_MICROSOFT,
 					    WLAN_OUI_TYPE_MICROSOFT_WPS,
 					    pnetwork->IEs,
@@ -663,8 +677,11 @@ static void start_bss_network(struct rtw_adapter *padapter, u8 *pbuf)
 	}
 
 	if (pmlmepriv->cur_network.join_res != true) {
-		/* setting only at  first time */
-		/* WEP Key will be set before this function, do not clear CAM. */
+		/*
+		 * setting only at first time
+		 * WEP Key will be set before this
+		 * function, do not clear CAM.
+		 */
 		if (psecuritypriv->dot11PrivacyAlgrthm !=
 		    WLAN_CIPHER_SUITE_WEP40 &&
 		    psecuritypriv->dot11PrivacyAlgrthm !=
@@ -679,13 +696,13 @@ static void start_bss_network(struct rtw_adapter *padapter, u8 *pbuf)
 	hw_var_set_bssid(padapter, pnetwork->MacAddress);
 
 	/* Set EDCA param reg */
-	acparm = 0x002F3217; /*  VO */
+	acparm = 0x002F3217; /* VO */
 	rtl8723a_set_ac_param_vo(padapter, acparm);
-	acparm = 0x005E4317; /*  VI */
+	acparm = 0x005E4317; /* VI */
 	rtl8723a_set_ac_param_vi(padapter, acparm);
 	acparm = 0x005ea42b;
 	rtl8723a_set_ac_param_be(padapter, acparm);
-	acparm = 0x0000A444; /*  BK */
+	acparm = 0x0000A444; /* BK */
 	rtl8723a_set_ac_param_bk(padapter, acparm);
 
 	/* Set Security */
@@ -722,8 +739,10 @@ static void start_bss_network(struct rtw_adapter *padapter, u8 *pbuf)
 			switch (pht_info->ht_param &
 				IEEE80211_HT_PARAM_CHA_SEC_OFFSET) {
 			case IEEE80211_HT_PARAM_CHA_SEC_ABOVE:
-				/* pmlmeext->cur_ch_offset =
-				   HAL_PRIME_CHNL_OFFSET_LOWER; */
+				/*
+				 * pmlmeext->cur_ch_offset =
+				 * HAL_PRIME_CHNL_OFFSET_LOWER;
+				 */
 				cur_ch_offset = HAL_PRIME_CHNL_OFFSET_LOWER;
 				break;
 			case IEEE80211_HT_PARAM_CHA_SEC_BELOW:
@@ -735,7 +754,10 @@ static void start_bss_network(struct rtw_adapter *padapter, u8 *pbuf)
 			}
 		}
 	}
-	/* TODO: need to judge the phy parameters on concurrent mode for single phy */
+	/*
+	 * TODO: need to judge the phy parameters
+	 * on concurrent mode for single phy
+	 */
 	set_channel_bwmode23a(padapter, cur_channel, cur_ch_offset, cur_bwmode);
 
 	DBG_8723A("CH =%d, BW =%d, offset =%d\n", cur_channel, cur_bwmode,
@@ -886,7 +908,7 @@ int rtw_check_beacon_data23a(struct rtw_adapter *padapter,
 					 &pairwise_cipher, NULL) == _SUCCESS) {
 			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
 
-			psecuritypriv->dot8021xalg = 1;/* psk,  todo:802.1x */
+			psecuritypriv->dot8021xalg = 1; /* psk, todo:802.1x */
 			psecuritypriv->wpa_psk |= BIT(1);
 
 			psecuritypriv->wpa2_group_cipher = group_cipher;
@@ -934,7 +956,7 @@ int rtw_check_beacon_data23a(struct rtw_adapter *padapter,
 			if ((p) && !memcmp(p+2, WMM_PARA_IE, 6)) {
 				pmlmepriv->qos_option = 1;
 
-				*(p+8) |= BIT(7);/* QoS Info, support U-APSD */
+				*(p + 8) |= BIT(7);/* QoS Info:support U-APSD */
 
 				/* disable all ACM bits since the WMM admission
 				 * control is not supported
@@ -1286,16 +1308,16 @@ void update_beacon23a(struct rtw_adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 }
 
 /*
-op_mode
-Set to 0 (HT pure) under the following conditions
-	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
-	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
-Set to 1 (HT non-member protection) if there may be non-HT STAs
-	in both the primary and the secondary channel
-Set to 2 if only HT STAs are associated in BSS,
-	however and at least one 20 MHz HT STA is associated
-Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
-	(currently non-GF HT station is considered as non-HT STA also)
+ * op_mode
+ * Set to 0 (HT pure) under the following conditions
+ *	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
+ *	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
+ * Set to 1 (HT non-member protection) if there may be non-HT STAs
+ *	in both the primary and the secondary channel
+ * Set to 2 if only HT STAs are associated in BSS,
+ *	however and at least one 20 MHz HT STA is associated
+ * Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
+ *	(currently non-GF HT station is considered as non-HT STA also)
 */
 static int rtw_ht_operation_update(struct rtw_adapter *padapter)
 {
@@ -1338,7 +1360,8 @@ static int rtw_ht_operation_update(struct rtw_adapter *padapter)
 		op_mode_changes++;
 	}
 
-	/* Note: currently we switch to the MIXED op mode if HT non-greenfield
+	/*
+	 * Note: currently we switch to the MIXED op mode if HT non-greenfield
 	 * station is associated. Probably it's a theoretical case, since
 	 * it looks like all known HT STAs support greenfield.
 	 */
@@ -1389,7 +1412,7 @@ void associated_clients_update23a(struct rtw_adapter *padapter, u8 updated)
 	}
 }
 
-/* called > TSR LEVEL for USB or SDIO Interface*/
+/* called > TSR LEVEL for USB or SDIO Interface */
 void bss_cap_update_on_sta_join23a(struct rtw_adapter *padapter, struct sta_info *psta)
 {
 	u8 beacon_updated = false;
@@ -1607,16 +1630,16 @@ u8 ap_free_sta23a(struct rtw_adapter *padapter, struct sta_info *psta, bool acti
 
 	if (active) {
 		/* tear down Rx AMPDU */
-		send_delba23a(padapter, 0, psta->hwaddr);/*  recipient */
+		send_delba23a(padapter, 0, psta->hwaddr); /* recipient */
 
 		/* tear down TX AMPDU */
-		send_delba23a(padapter, 1, psta->hwaddr);/* originator */
+		send_delba23a(padapter, 1, psta->hwaddr); /* originator */
 
 		issue_deauth23a(padapter, psta->hwaddr, reason);
 	}
 
-	psta->htpriv.agg_enable_bitmap = 0x0;/* reset */
-	psta->htpriv.candidate_tid_bitmap = 0x0;/* reset */
+	psta->htpriv.agg_enable_bitmap = 0x0;	 /* reset */
+	psta->htpriv.candidate_tid_bitmap = 0x0; /* reset */
 
 	/* report_del_sta_event23a(padapter, psta->hwaddr, reason); */
 
@@ -1717,7 +1740,7 @@ int rtw_sta_flush23a(struct rtw_adapter *padapter)
 	return 0;
 }
 
-/* called > TSR LEVEL for USB or SDIO Interface*/
+/* called > TSR LEVEL for USB or SDIO Interface */
 void sta_info_update23a(struct rtw_adapter *padapter, struct sta_info *psta)
 {
 	int flags = psta->flags;
@@ -1746,7 +1769,7 @@ void sta_info_update23a(struct rtw_adapter *padapter, struct sta_info *psta)
 	update_sta_info23a_apmode23a(padapter, psta);
 }
 
-/* called >= TSR LEVEL for USB or SDIO Interface*/
+/* called >= TSR LEVEL for USB or SDIO Interface */
 void ap_sta_info_defer_update23a(struct rtw_adapter *padapter, struct sta_info *psta)
 {
 	if (psta->state & _FW_LINKED) {
@@ -1870,7 +1893,10 @@ void stop_ap_mode23a(struct rtw_adapter *padapter)
 	pmlmepriv->update_bcn = false;
 	pmlmeext->bstart_bss = false;
 
-	/* reset and init security priv , this can refine with rtw_reset_securitypriv23a */
+	/*
+	 * reset and init security priv , this can
+	 * refine with rtw_reset_securitypriv23a
+	 */
 	memset((unsigned char *)&padapter->securitypriv, 0, sizeof(struct security_priv));
 	padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeOpen;
 	padapter->securitypriv.ndisencryptstatus = Ndis802_11WEPDisabled;
-- 
2.1.4



X-GM-THRID: 6809913191851622400
X-Received: by 2002:a05:6102:3104:: with SMTP id e4mr15374141vsh.61.1586172018852;
        Mon, 06 Apr 2020 04:20:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:a645:: with SMTP id r5ls2313259vsh.2.gmail; Mon, 06 Apr
 2020 04:20:17 -0700 (PDT)
X-Google-Smtp-Source: APiQypK2V6N83p09+oWFGZcm429is/qzeWZaieUdROO9aBzuqgFJ2iqhvmVuez8x9n7m0PdQEhq7
X-Received: by 2002:a67:8806:: with SMTP id k6mr15928224vsd.59.1586172017520;
        Mon, 06 Apr 2020 04:20:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586172017; cv=none;
        d=google.com; s=arc-20160816;
        b=qS7Fkvf91N1uTSuWa3WBDQv9zZec6z9oCyWJILBujpxbT2n7vxPpWUYmzkyKTK5/jm
         haztVWXghpfGvpHa537EpdpCRzUIszYZGH3v6O4PHy3nkKOVkukG2sltKevRORjNX7bL
         A+VHby66jPxCw3MHPx0Xyyc9cLCEFJ2o5h8bCZZRYJ5zo1TPr/PtChIXrGgVzCv8aOZB
         ja/aL5wugx22gXV3gUDaqp2xNe8MitY7ag2DCXlMY2RmC3GnQGjM/2wMy8XxSWkX+soy
         yYFGhuaTkGP44SA2+3po4K+XidIx0DuHjEQYVjJaDHBLBV98oJOooDgjCh6+GOSZsa+c
         7/oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Jb2X01LwiL0MKZRO5AQrQKXRxPDsBhC/PyfCiGQwJto=;
        b=TXnKscc35OC+2Ox8ISNuik94ImKxcoYP0zUwy7nhU7H5cxjsAGWCFyWsCfM0q0aD+K
         58KHvRedCuozeDOcEm5Px9/a43UnbKnCY9EFqtvVixar/gNatXgeTAOs674jVPkn3E3R
         sgH7OR3AFFWxx4yjjzZlmP0g0dbSZUUv86vr5kDYB7DveQRwutj5Cp8iRWVyBLggQLZy
         gMEAvCNOGzSZnEru1maZUEPTg+/ONVxjZv6FopsYXKuuLRt6m/NwGHgQ9Pm3mEWKACzi
         OEC9BVSXFFgmZ7UPfX0kWFxdZ2p0/d+RdNJM0CyIhdsF6t4yYuPTHMH4Tmq0UkbUsRhJ
         O0bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="B9zi0o/m";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id g6si1079213uab.1.2020.04.06.04.20.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 04:20:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="B9zi0o/m";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id b72so7354128pfb.11
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 04:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Jb2X01LwiL0MKZRO5AQrQKXRxPDsBhC/PyfCiGQwJto=;
        b=B9zi0o/mS3AJ2AXqByrgcUluwtrMZxhB89ETIPmdGvY7y3k6nNKzacwPWXe5Widohc
         kZ1S66B9kSzAyNlNJEV2PcOIPeoLBtP14/DG3XfT8v5f2VPn9cuTaYCXy2ddXSoFo22G
         D6DY4Qx/ea0I9RD8cAoi/Y1LmSeGqNo0tf7ARl3usxSh8be+u9n/sEtD1dkrVnxPJOQ4
         H7RzX9JsxTkSu2loW+JT12UzQlQ6qUTpUzZ5UG0Ia8FWSd92Jbo1wTdbuemrGaWU4BkR
         t1/Q8QYc5i4OR5LjwTxX3X4yXryPmPNbaVVwYAQuXJiVejlAN9ELlJyc5ddyx/pH+pwx
         yCoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Jb2X01LwiL0MKZRO5AQrQKXRxPDsBhC/PyfCiGQwJto=;
        b=GLtferdJ9wCMZonD9x44vyomXfRdFLdvI5Pwzh3OKKUweWkEzPz6Umj6ZtCTBmLUm8
         j2NTsQpXbc2xaVTwSMei9jOrpG3Y2YJNJ6Q1BPJdKbr1jPsS/zq/65DnJkddBhR7qnWy
         54zpqjR9qUt+MvYyF3sgKDibkoVjEzdxHAVQDSeH6Wjm2e7vHd2Or5UpCSlupyQ5lPBa
         aMmXLVvg06LTNmQoLkYehVKH+t4FGHdDjzGUlcyf9Cls7wrBLFPrYgBJj+dxFfODQ3Xw
         Z6fSjxopvptt4c9oTn01GCqXO9uO7gpFA9WxfevHqW7ERxJfza1gXehsPPzXVGfVXW1e
         rm4Q==
X-Gm-Message-State: AGi0PuaqZ/kGrZozGXTIgaoayfKT1YrA8kb8ENdF+H4YSLuA+uQ4b/J/
	YoFvtVAdBjdAqw3NKjNOcoA=
X-Received: by 2002:a63:2d6:: with SMTP id 205mr21655017pgc.257.1586172016391;
        Mon, 06 Apr 2020 04:20:16 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([2409:4065:11f:6885:99b6:8ae:3f27:d6e4])
        by smtp.googlemail.com with ESMTPSA id t85sm10512845pgb.1.2020.04.06.04.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 04:20:15 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	julia.lawall@inria.fr,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v4 3/3] staging: rtl8188eu: Line over 80 characters
Date: Mon,  6 Apr 2020 16:47:06 +0530
Message-Id: <20200406111706.25957-4-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200406111706.25957-1-debsoumyajit100@gmail.com>
References: <20200406111706.25957-1-debsoumyajit100@gmail.com>

Break various lines into multiple lines to respect 80 character width
limit.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 67 +++++++++++++++++--------
 1 file changed, 45 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 2dd775fbcc4b..817793b9aff2 100644
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
+				ret = issue_nulldata(padapter, psta->hwaddr,
+						     0, 1, 50);
+			} else {
+				ret = issue_nulldata(padapter, psta->hwaddr,
+						     0, 3, 50);
+			}
 
 			psta->keep_alive_trycnt++;
 			if (ret == _SUCCESS) {
-				DBG_88E("asoc check, sta(%pM) is alive\n", (psta->hwaddr));
+				DBG_88E("asoc check, sta(%pM) is alive\n",
+					(psta->hwaddr));
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
+		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
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



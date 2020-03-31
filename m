X-GM-THRID: 6809913191851622400
X-Received: by 2002:a67:f993:: with SMTP id b19mr11480899vsq.117.1585679599596;
        Tue, 31 Mar 2020 11:33:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:5589:: with SMTP id v9ls1620972uaa.11.gmail; Tue, 31 Mar
 2020 11:33:18 -0700 (PDT)
X-Google-Smtp-Source: APiQypIGtzu4WOETa+UvvF8ATEcmgGllu9RMqNT5zgEKIJTzyULiAuDwHi83de1OeFiP2MrDjzLk
X-Received: by 2002:ab0:1c44:: with SMTP id o4mr13417790uaj.59.1585679598073;
        Tue, 31 Mar 2020 11:33:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585679598; cv=none;
        d=google.com; s=arc-20160816;
        b=u6q2vfrfPqEhl8hedgm4CCtAMtiWd7XW9z7VE9s1zOjORdyeHZOQE8Jrr1RcvbjHle
         6xFgZ5m4pIIE96hC7xUwp17HLVSjvB9MFL9jmmHKzhpXZ1kgnuLFp43kDhDgUr3QaRvq
         lPVA+KFocN37M4qq/isoB+7DzbwBYqVtQ5kMafv5eZDe9sfNqMAojz826mO52WEnu5dR
         gm1wbe2yzKpAPxo6arwy4GCADH6n1PE/49u8IZGTPyHcGYnO1cJHqcqLQ7Lu8JBn9CFN
         F8HdjGwAaCScBbzhedPEYKeTG6gY0Nh3NmR3Vh7e7s0s2vrOlNdGTnm+L68rz0gxZykB
         ILMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=0jU7Z8Bob3jCT0fL3zaHFpGq+KWabcKt4dN8dSFFNsY=;
        b=e/U2TCr3byrnpYVPhYB+xh6vSMEMxEar01dk+cJhFR6qL7MmPawM8zYfv9INCseNIh
         sxNrpSeqwsdJTZ3P9K2Zbnh5DqjeJrKXWCpD9IFTRQME/Gqf2zgD/ij3qxeFekUlnony
         xc+Hox6czFncW3b/jETyv1bJGCPJQ55T3rEGfK8umh1jZQjaw2PlszlIPaWxqBiI/dzm
         Em6K5tmNOjrQc+jiWk0+JBFg1YHio/2v5EOtesO4ck2sxw7G20UWH3SnMJhu3wzfm25h
         u7xs++BMO2+lR2ZaI4CpxcQG7yHZ05YDQLGKrciT2c6u8TkHeeMlAp9dBC/cE+Utlj9N
         G8xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INCX527P;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h6si1444150vko.4.2020.03.31.11.33.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 11:33:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INCX527P;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id k191so10703223pgc.13
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 11:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0jU7Z8Bob3jCT0fL3zaHFpGq+KWabcKt4dN8dSFFNsY=;
        b=INCX527Pg3Mk0SbE/o2PdWXKZv1vosBwEv+4GwGVdjwXStMtMjmwfLmRsEcH+nSbza
         TkNzfd7ASv7bl0CqY2iM8i/uXXm57CWPO94QgVhc1IOGRUQIrcWEtFrtVXLHWP8Pcb0h
         4+6Ou/odeDAeLFHC1DHclNAZyg10eiqnWcD9mgmb+bNsV1wbS0mq2XXcfAgmDGarsHUu
         ZgSqlFR3sHthaQYl9Q5ulROaY7OhM4V640YwRAzzeYhegBJS4+cDpYlqFJBPJIbcUR+b
         /a5iZ7KwhuVOlagDiAnGU29u4hl3uoQ6Po4JqLqR8lfgGmkWBUGCIk2TUJb9eEPdaZgA
         xVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=0jU7Z8Bob3jCT0fL3zaHFpGq+KWabcKt4dN8dSFFNsY=;
        b=occR/EAcEJ9j0guxPxbkI6BQdOjMEDd+3De3//29A5GCEFpymrJp8xVQTRhaIAXNcF
         sH3PajSoXi428tg7jcZLesFbcYNMrJ6OqBKhY6FU1++cwZlj0NVtXUbSpPXXvuxF9v5P
         JyIGjHv9DLDLiJT54UT4zVZGK34/FmR+hNyUDKTMXlDjimTodeQo0PpoF96RVTKodF4a
         XFyM/l7LRoLdbgw4q8FiGEzhjJqZJb6XB3Ct+Jzd7CFwPwiHmmpn2TTmOkCqRdvitkGR
         ubWaY9s3LcpZ7NPI1fVsX6e+emM6JOyoqPpH7nKc90YUA9uPkOjGS1sctiNw8IkPeIW+
         iG0A==
X-Gm-Message-State: ANhLgQ3nwlOXnzTF8POr3vHF9n+lQU+oa5TtxOiHBEIhUVv9VdXcCTPI
	UDzDTLeBbUJBq+paljYgKwc=
X-Received: by 2002:aa7:9ec7:: with SMTP id r7mr19759224pfq.191.1585679596984;
        Tue, 31 Mar 2020 11:33:16 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.231.91])
        by smtp.googlemail.com with ESMTPSA id x3sm12908494pfp.167.2020.03.31.11.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 11:33:16 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v2 2/3] staging: rtl8188eu: Line over 80 characters
Date: Wed,  1 Apr 2020 00:02:00 +0530
Message-Id: <20200331183201.18386-3-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200331183201.18386-1-debsoumyajit100@gmail.com>
References: <20200331183201.18386-1-debsoumyajit100@gmail.com>

Break various lines into multiple lines to respect the 80 character
width limit.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 67 +++++++++++++++++--------
 1 file changed, 45 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 5b2b4d1d56f6..6b9410531b15 100644
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
+					(psta->hwaddr));
 				psta->expire_to = pstapriv->expire_to;
 				psta->keep_alive_trycnt = 0;
 				continue;
@@ -315,11 +322,13 @@ void expire_timeout_chk(struct adapter *padapter)
 
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
+							      0x3f;
 
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
-	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)), _HT_ADD_INFO_IE_, &ie_len, (pnetwork->ie_length - sizeof(struct ndis_802_11_fixed_ie)));
+	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)),
+		       HT_ADD_INFO_IE_, &ie_len,
+		       (pnetwork->ie_length -
+			sizeof(struct ndis_802_11_fixed_ie)));
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
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len,
+		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
 	if (p && ie_len > 0) {
 		memset(&pbss_network->ssid, 0, sizeof(struct ndis_802_11_ssid));
 		memcpy(pbss_network->ssid.ssid, (p + 2), ie_len);
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
@@ -807,7 +828,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	rtw_set_supported_rate(pbss_network->SupportedRates, network_type);
 
 	/* parsing ERP_IE */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len,
+		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
 	if (p && ie_len > 0)
 		ERP_IE_handler(padapter, (struct ndis_802_11_var_ie *)p);
 
@@ -824,7 +846,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
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



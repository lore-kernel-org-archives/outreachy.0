X-GM-THRID: 6809913191851622400
X-Received: by 2002:aa7:8f29:: with SMTP id y9mr20624697pfr.19.1586171995497;
        Mon, 06 Apr 2020 04:19:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:af5b:: with SMTP id s27ls10149358pgo.11.gmail; Mon, 06
 Apr 2020 04:19:54 -0700 (PDT)
X-Google-Smtp-Source: APiQypIN2X++DkffdNde8b1va7+auIwWnh+7PFJ+R2LUreoQa2UQggJ+n3vUgOwi6zFylUncmMNW
X-Received: by 2002:a65:6449:: with SMTP id s9mr7919912pgv.97.1586171994044;
        Mon, 06 Apr 2020 04:19:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586171994; cv=none;
        d=google.com; s=arc-20160816;
        b=M5d3osewhI41sJg0dQZm8P8yJsZto3ISZpQZHoSE8hVbeVEFMlEQtwT87MCo0xGBhU
         tuOcRqn4j+P3tPM6DNHpPtuxnnbU4Qyk6NdcOOsZaIZvWXjtbPDEzR8pe7EZC9wdZaQ4
         RAEWIQ6V8pW9M/Y2OyRDv4fyR8drHgMed7USLAq93JoxZuV557WdMeSKBWUyhKH6L324
         YPi/3GNdp5xzeNcOkugHF30tqnGHQtyahJd6I4rBjp2pACWxDOzPtn2GW+Rf/JU4GCJE
         GLmmjT7Lp8+ladX2x9ljvQjbIIK2uNuXRQiG96lxq6fyrSpt2rI6uBKHLmxz/n8RABpR
         m/Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Hsz/N6QXeFg93Y5LV5AI3CjSjBjOXnAp4DSzNK/kdCM=;
        b=aL9CqJT11ThIoV7NByY0AsDKRNoVpJJjGT4EbHIEdduFggQ3WUN4ZpsUUK0+KmEOGA
         j+jJdrxXLAHdqPN4kIHZpuoguIofJjnYsufMS1U8vlEQcFh5/h0ZWyIS44Ws35eZ/+xf
         z15e11ITefUMNMwhbidTOALnILXbSYuf81lOcSzw0ePrjVTp6sD/jNJJuOSacQe1GZdl
         Qo54kBIBvBhL9AUCkuj0hGIRGXooAwTsQvtZTIdZRbFDBSyrdevgP95/BD5c5wzpN+ny
         8ItYqDtmSPLlxBh8pC0kRnQ+eOrXw1s6zaI/V9WjTIVMQNLvn8Hocm8l+ODw6kqXJwIR
         6VXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TovbIWIq;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id ne6si1582091pjb.1.2020.04.06.04.19.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 04:19:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TovbIWIq;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id ng8so6353217pjb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 04:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Hsz/N6QXeFg93Y5LV5AI3CjSjBjOXnAp4DSzNK/kdCM=;
        b=TovbIWIq6l8weNFhVlQgPZXJh5/pxfXm9lyTkMQ6GoeeO1iG8tJI7V2tiXGXubLM8y
         1bHzf2ErYVYYaG7h6LWGdarNpnGFwXybC1pvWbVkzRwHLm2BnBZyw8WIrsqKWo8Cm6a4
         QuEUvkj6pL4PeVmWDzOtPTDDoobi6ekStfhzY2Q+RAuh4Nebsut8ac/X6ImYA/d4urI+
         BZ9vqMB1wH36JxHzQKwK+JFf7LxRXeSve+YjSfrnUS2rZ8+mgslqqnQPpreNSBQx/+P5
         b4NWGfuicKMuB7K8Ipb2w1pqe/qbH5jNTOmQ3F3Qrdt0LC0ApvEdqZ/kL+fMelJEX5pp
         2a9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Hsz/N6QXeFg93Y5LV5AI3CjSjBjOXnAp4DSzNK/kdCM=;
        b=GIcSgSjWc49sQtof+OCqAW4tfGFJ9PnkG4+3XAscJ7jT95suHJyuvYuGoNiH/bqh3y
         25O2LgCxNYLuIkLf4ioNjGCz89S5wfhp0jL0VaFSDMsdHs+lu/QW9OtTgDtu65Sn6UMi
         VsSgwDhb9S2ULsa/7gXhvW1/B18ozKrEO26n0i0ROyKvXkU5LjJgwxEqWeJdQTJNBFj7
         nvPcW8zZDJSO/0TIKrMgyDS+hSq4XyDBNSQ8XYjhxiPG5GnE4QPq/dvsS/FXbGPLedQj
         PQafLxZUhyIEtQjc8Zs9+kvsfERDwuMDHz6HAQNfuFM+/6dDskHQ3h/8nJRYS6/aGUEz
         Fq/Q==
X-Gm-Message-State: AGi0PuZc5K6HseWDGYaGbeSwRAn9sDJGbfIsTeuA7tzO9Acyy32RAOXW
	wusOvPEbILcb6NWuuqV+Qjo=
X-Received: by 2002:a17:90a:faa:: with SMTP id 39mr26920784pjz.190.1586171993678;
        Mon, 06 Apr 2020 04:19:53 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([2409:4065:11f:6885:99b6:8ae:3f27:d6e4])
        by smtp.googlemail.com with ESMTPSA id t85sm10512845pgb.1.2020.04.06.04.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 04:19:53 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	julia.lawall@inria.fr,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v4 2/3] staging: rtl8188eu: Remove unnecessary extra parentheses
Date: Mon,  6 Apr 2020 16:47:05 +0530
Message-Id: <20200406111706.25957-3-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200406111706.25957-1-debsoumyajit100@gmail.com>
References: <20200406111706.25957-1-debsoumyajit100@gmail.com>

Remove unnecessary extra parentheses to improve code readability.

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index eb48095b9de2..2dd775fbcc4b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -315,7 +315,7 @@ void expire_timeout_chk(struct adapter *padapter)
 
 			psta->keep_alive_trycnt = 0;
 
-			DBG_88E("asoc expire %pM, state = 0x%x\n", (psta->hwaddr), psta->state);
+			DBG_88E("asoc expire %pM, state = 0x%x\n", psta->hwaddr, psta->state);
 			spin_lock_bh(&pstapriv->asoc_list_lock);
 			list_del_init(&psta->asoc_list);
 			pstapriv->asoc_list_cnt--;
@@ -657,7 +657,7 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		Switch_DM_Func(padapter, DYNAMIC_ALL_FUNC_ENABLE, true);
 	}
 	/* set channel, bwmode */
-	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)), _HT_ADD_INFO_IE_, &ie_len, (pnetwork->ie_length - sizeof(struct ndis_802_11_fixed_ie)));
+	p = rtw_get_ie(pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie), _HT_ADD_INFO_IE_, &ie_len, pnetwork->ie_length - sizeof(struct ndis_802_11_fixed_ie));
 	if (p && ie_len) {
 		pht_info = (struct HT_info_element *)(p + 2);
 
@@ -771,10 +771,10 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	cap = get_unaligned_le16(ie);
 
 	/* SSID */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0) {
 		memset(&pbss_network->ssid, 0, sizeof(struct ndis_802_11_ssid));
-		memcpy(pbss_network->ssid.ssid, (p + 2), ie_len);
+		memcpy(pbss_network->ssid.ssid, p + 2, ie_len);
 		pbss_network->ssid.ssid_length = ie_len;
 	}
 
@@ -789,7 +789,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	memset(supportRate, 0, NDIS_802_11_LENGTH_RATES_EX);
 	/*  get supported rates */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p) {
 		memcpy(supportRate, p + 2, ie_len);
 		supportRateNum = ie_len;
@@ -807,7 +807,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	rtw_set_supported_rate(pbss_network->SupportedRates, network_type);
 
 	/* parsing ERP_IE */
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0)
 		ERP_IE_handler(padapter, (struct ndis_802_11_var_ie *)p);
 
@@ -824,7 +824,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	pairwise_cipher = 0;
 	psecuritypriv->wpa2_group_cipher = _NO_PRIVACY_;
 	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
-	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0) {
 		if (rtw_parse_wpa2_ie(p, ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
 			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
@@ -844,7 +844,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	psecuritypriv->wpa_pairwise_cipher = _NO_PRIVACY_;
 	for (p = ie + _BEACON_IE_OFFSET_;; p += (ie_len + 2)) {
 		p = rtw_get_ie(p, _SSN_IE_1_, &ie_len,
-			       (pbss_network->ie_length - _BEACON_IE_OFFSET_ - (ie_len + 2)));
+			       pbss_network->ie_length - _BEACON_IE_OFFSET_ - (ie_len + 2));
 		if ((p) && (!memcmp(p + 2, OUI1, 4))) {
 			if (rtw_parse_wpa_ie(p, ie_len + 2, &group_cipher,
 					     &pairwise_cipher, NULL) == _SUCCESS) {
@@ -869,7 +869,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	if (pregistrypriv->wmm_enable) {
 		for (p = ie + _BEACON_IE_OFFSET_;; p += (ie_len + 2)) {
 			p = rtw_get_ie(p, _VENDOR_SPECIFIC_IE_, &ie_len,
-				       (pbss_network->ie_length - _BEACON_IE_OFFSET_ - (ie_len + 2)));
+				       pbss_network->ie_length - _BEACON_IE_OFFSET_ - (ie_len + 2));
 			if ((p) && !memcmp(p + 2, WMM_PARA_IE, 6)) {
 				pmlmepriv->qospriv.qos_option = 1;
 
@@ -892,7 +892,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	}
 	/* parsing HT_CAP_IE */
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _HT_CAPABILITY_IE_, &ie_len,
-		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0) {
 		struct ieee80211_ht_cap *pht_cap = (struct ieee80211_ht_cap *)(p + 2);
 
@@ -916,7 +916,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	/* parsing HT_INFO_IE */
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _HT_ADD_INFO_IE_, &ie_len,
-		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0)
 		pHT_info_ie = p;
 	switch (network_type) {
-- 
2.17.1



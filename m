X-GM-THRID: 6809913191851622400
X-Received: by 2002:a1f:abcc:: with SMTP id u195mr3339873vke.11.1585852077443;
        Thu, 02 Apr 2020 11:27:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c01d:: with SMTP id v29ls701156vsi.6.gmail; Thu, 02 Apr
 2020 11:27:56 -0700 (PDT)
X-Google-Smtp-Source: APiQypJKJe0e9Roi5PA10m2+5Lifus7OnVwJuJagyI7W2yJHDElO7NduEMEvAE5nIHnCFLB/ZTKb
X-Received: by 2002:a67:1587:: with SMTP id 129mr3951477vsv.146.1585852076009;
        Thu, 02 Apr 2020 11:27:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585852076; cv=none;
        d=google.com; s=arc-20160816;
        b=ApuinImKnb9cI+hT9ALdPEGShqBdBi1eLQ+1W4Fju0nsY7wc39kOO1aVJPbUddcOSx
         ZjhsQOTBdGEvMCE430EuvFwtZKDfjLu73jedGNJAL8p0OZVFxUd9qGciiSApnnuF1pcZ
         K1O8G2qBdGnKefwzzDB0gdhaLgwxlmOaIHlZzeI9fRrk+01Wyh2btxVnE1v3HIx6AoLm
         FP3Qmrm6qf86b+Q3q8p6qOBbCKmya5MBh10u73ggTKAImYMNgBY08SKCvFQIqM3Ez4Jm
         zEnvmjuVuv9/k86VIu1i9HpIMLcAH2i3Gzp6WIPVlIw1FnRLcg9GD2pmbK/WKzrLpPjU
         OIdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=BcNiPLnK5Z82396G+c/Mu8zPP9oNVyN0ZTAwy8usQFU=;
        b=nEJNlvZg2sWHyjhz8g/epOUNZ6+Qxs1OT5mxQMGJPQlDJ3xi2GK4mWKNMkMI47/pqP
         3+wyKNuL0YFgGJArox7jkh9dw08s4DEaaUGBmDoiXysUZD32ZhGzDYQvQw8vq6FFmqMZ
         NyDC4YbHd5hMRocp+K65mHAOsy9iHRIHUGrrA0KWiy/HNjpwoUyT8vcj3d08Q0NTVhcE
         E4BrB0XxmeZLmZ77RiY5wKc70eOUljgJ0GvfPWQesqiCDbvryLYTCswyDOGhj4a9wmlF
         1ELhHEOcsFnAof1ovT44uowv9CVXBJb6r/mx5LDWgnoiryk4Y/em5KaTlwLeDBGD2FTh
         wPPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CyDLNr6n;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id g6si418877uab.1.2020.04.02.11.27.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 11:27:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CyDLNr6n;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id k15so2150186pfh.6
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 11:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=BcNiPLnK5Z82396G+c/Mu8zPP9oNVyN0ZTAwy8usQFU=;
        b=CyDLNr6nDzCpFPFg/UxcwGIxNiIdBOYLpB95OeZgGdDG+0nTO0jFisSIM/1HR8uzNk
         5xrdOnplLnYrhS4VjPyNZWU/tGxVaCh2neD344ZyStbHl2v90SoHw/DlUzFIP0rmQ5LG
         7Sr/u3e4qn27FtFeJkAQ5SCu9nIPufl3c5zXIsIrV61STEg3xsq24O2SF8b3+eW0jQ52
         DUvRLgxmhZ3+W7JH3vmZBMEJVo4SXT1EEQYehrwXZc44f2L7bKv9aGKxtrRblqWnaGJM
         +JvXCZR90ywzxPD2QYZG47E1vmCRbOOF87KEHzJxWqNFw9Fy3NuI9cbVLmq/cb7rwqdn
         zqlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=BcNiPLnK5Z82396G+c/Mu8zPP9oNVyN0ZTAwy8usQFU=;
        b=IeMBlsTplHPWUaQx7C6IO9c1hMgwaAGfpTLjmeidY17s75XT5/4QDKLyf0NK5MtvW5
         IGS3ByORQddVqqTL1cuOHLQWWHf+ffQIMr2AOH7P1pVetIQF9sDZNGAvEjum/oB6Dylw
         pVj0LwNzbpuykgpdZdZPVh6KHv114xSANpX68Tk56v30IPt4vf/lGwA8/Gn/xJ/fqPOg
         LUCSKVoY4MJVSspMQpNZdnqnHxKDf3VuQtz73Nx2g1qd7ZNQ9VO1ddCUiPqwqU9xS8vm
         j40hg11Fo0slp6qV21oEbBq03cQTXxzw8ZNphleKyGHXXxZ8n9XcG6lY09tk+6Mej1I+
         lZmA==
X-Gm-Message-State: AGi0PualUSoPs1yrMZys36JjuarfTp8m0o7hl85bXlodUIFaRX/cNc21
	UnbwZ/CS5zZjkA+q5dQG4rBsN7Dscx5lNQ==
X-Received: by 2002:a62:2ad0:: with SMTP id q199mr4632275pfq.48.1585852074986;
        Thu, 02 Apr 2020 11:27:54 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([2409:4065:11f:6885:4516:34fe:f4bf:419b])
        by smtp.googlemail.com with ESMTPSA id x189sm4195398pfb.1.2020.04.02.11.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 11:27:54 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	julia.lawall@inria.fr,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v3 2/3] staging: rtl8188eu: Remove unnecessary extra parentheses
Date: Thu,  2 Apr 2020 23:56:20 +0530
Message-Id: <20200402182621.61694-3-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200402182621.61694-1-debsoumyajit100@gmail.com>
References: <20200402182621.61694-1-debsoumyajit100@gmail.com>

Remove unnecessary extra parentheses to improve code readability.

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 5b2b4d1d56f6..bd9a59dd3dd9 100644
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
-- 
2.17.1



X-GM-THRID: 6809913191851622400
X-Received: by 2002:a05:6e02:5ae:: with SMTP id k14mr18321760ils.9.1585679611158;
        Tue, 31 Mar 2020 11:33:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3a9a:: with SMTP id i26ls6781927ilf.3.gmail; Tue, 31 Mar
 2020 11:33:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvoL42eW49av67IGiEmvgLZmf1XEVNYBrHBORvXIyj9VdZQnvdXlLgJ4Fsx9Db1NaUdkRP9
X-Received: by 2002:a92:b0e:: with SMTP id b14mr18928994ilf.176.1585679609838;
        Tue, 31 Mar 2020 11:33:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585679609; cv=none;
        d=google.com; s=arc-20160816;
        b=l4qLRYcb0Zd3Ens7c0AMss40ArWnowmnGvIbHJy0LrfA5W3FqBwgtjkBGRglTtMbDm
         BVt0s+MI2Kol0DTnrlOmN5IdNgCzh8IF+SlFz9sFYYwvcT8dTyvF9fr14JVT1urmnbbM
         feWO4gA4fP+apcs6JREV8OZOVFIGVvL4MS7b+unfzwICU6dGR8G/QrFd+UzkX/mTLfGw
         ew9xIlkQ9n6UCRNCe5w+lGHSlrl5qDGuFdCK7jMWtjjZPHGldIHzGP/UPOiS3glx7yX+
         EZzNVH2cKIVGnw95FuNoIlN4LqqPYaANVJvyc1+J0ATZe7Ky8pLbO1WoxDTOY+j9Hrcs
         dJxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=7TYHOXYPAYlGsRM0zPkQuYZMG1nbPLxeeHVTx4q9jok=;
        b=aoKGob6n5tvkNUyjPmXy3LVh27Lqn57Rjv0Tgx/U4um8g0OHuKp0SsISLYwIq4aFbB
         zFaI8KIKiYlVZ1BJfVTIPjcZCEIwekRK1siVyA0CNtQa7Ww2sfI1BIVX291ME2kREw1t
         bZxUv90CxhN+wHDa5BqnbliFYcp3oFWdP4Z8YP4dSlq5w/utcrgorXAISnEy46+0HL/N
         lYmWHAcAjpDlrydYxJwZPUj0HJ44Mxkop3PHp24ctzo8gRrgIA0XEcIpn6s+O7bs55Gj
         SCfMQRq/+Z0encBI660acEN+NB3M1jPz/thUhtkxfgjr6eiSSQtq1i+L5rWWMPrPooRS
         EO+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EbCfcCeU;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id 131si1008544iou.1.2020.03.31.11.33.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 11:33:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EbCfcCeU;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id w3so8437439plz.5
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 11:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7TYHOXYPAYlGsRM0zPkQuYZMG1nbPLxeeHVTx4q9jok=;
        b=EbCfcCeUIcoGkEWttlyixxEiQkEg0inXVO+o5rnogNMCOj4OyU24puquwUcQuMvSLL
         or2x5Px6d593dN99kBNonsXrcR3zDH25Ybi3QwHi/Zjmg+1gUNNIaDfK9z4ffkvmu105
         b0PqC3h2WCfM3yYzQTduJy4QmkBFlMv9ifsD018rtZx1mfmHdXqoYiGXydeC3BeNuGwU
         Rj75Sf+l/ADETgC7ANBaUPZ2vmRm1A3Rk7dpM1uTle9hBHcHXtGZQrXwAl8ZFQo8NwhW
         l+ejTLgYeMXDPMgM6sVqjCOH6KypVW5F0l9Z+Ew/mQ0vcpUaZg8x1oQzwRU77WG4O1Ow
         DUzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=7TYHOXYPAYlGsRM0zPkQuYZMG1nbPLxeeHVTx4q9jok=;
        b=q3oWLG8umHilSV1sYSES0G2SZy78YYhwa3EujyW/O2h+b+eaZkajRIM32b/ftTIBJM
         vgT0aoIMW4nVI0azX73lOmbYt24vZ51+gsYwuWXAzT6LP+u2Wep2XltuuzFFdOh4m/GO
         qzCJuHU1Rp7bspDSLfgBO5GfMUboXal/KtHrxN4xzxzldPacypW8Io+ZfcenPnQESfLK
         F5kafFTpvD15kdrleNM9V2VLjjTtBcO1K8qq7EpHeEwOacqVpX8FYYhi5QwtwuPU/tep
         OZk3X3vm4HcELbb0cnM1yWeYVt7RaI2Dx3aGWcyX34pD/B0DeDxeTCUBinhCOKlgiV8I
         TjWQ==
X-Gm-Message-State: AGi0PuYeEgRx8dlGSRFsQKifVAIFjbe7ORbrITj1vGuLihGgbOnx97gE
	Ol9Iw3W+pY4A5cUL7suJepg=
X-Received: by 2002:a17:90b:110f:: with SMTP id gi15mr238385pjb.184.1585679609091;
        Tue, 31 Mar 2020 11:33:29 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.231.91])
        by smtp.googlemail.com with ESMTPSA id x3sm12908494pfp.167.2020.03.31.11.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 11:33:28 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v2 3/3] staging: rtl8188eu: Remove unnecessary extra parentheses
Date: Wed,  1 Apr 2020 00:02:01 +0530
Message-Id: <20200331183201.18386-4-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200331183201.18386-1-debsoumyajit100@gmail.com>
References: <20200331183201.18386-1-debsoumyajit100@gmail.com>

Remove unnecessary extra parentheses to improve code readability.

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 6b9410531b15..9d71a3d2fd19 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -310,7 +310,7 @@ void expire_timeout_chk(struct adapter *padapter)
 			psta->keep_alive_trycnt++;
 			if (ret == _SUCCESS) {
 				DBG_88E("asoc check, sta(%pM) is alive\n",
-					(psta->hwaddr));
+					psta->hwaddr);
 				psta->expire_to = pstapriv->expire_to;
 				psta->keep_alive_trycnt = 0;
 				continue;
@@ -670,10 +670,10 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		Switch_DM_Func(padapter, DYNAMIC_ALL_FUNC_ENABLE, true);
 	}
 	/* set channel, bwmode */
-	p = rtw_get_ie((pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie)),
+	p = rtw_get_ie(pnetwork->ies + sizeof(struct ndis_802_11_fixed_ie),
 		       HT_ADD_INFO_IE_, &ie_len,
-		       (pnetwork->ie_length -
-			sizeof(struct ndis_802_11_fixed_ie)));
+		       pnetwork->ie_length -
+		       sizeof(struct ndis_802_11_fixed_ie));
 	if (p && ie_len) {
 		pht_info = (struct HT_info_element *)(p + 2);
 
@@ -789,10 +789,10 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	/* SSID */
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SSID_IE_, &ie_len,
-		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0) {
 		memset(&pbss_network->ssid, 0, sizeof(struct ndis_802_11_ssid));
-		memcpy(pbss_network->ssid.ssid, (p + 2), ie_len);
+		memcpy(pbss_network->ssid.ssid, p + 2, ie_len);
 		pbss_network->ssid.ssid_length = ie_len;
 	}
 
@@ -800,7 +800,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	channel = 0;
 	pbss_network->Configuration.Length = 0;
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _DSSET_IE_, &ie_len,
-		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0)
 		channel = *(p + 2);
 
@@ -809,7 +809,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	memset(supportRate, 0, NDIS_802_11_LENGTH_RATES_EX);
 	/*  get supported rates */
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_, &ie_len,
-		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p) {
 		memcpy(supportRate, p + 2, ie_len);
 		supportRateNum = ie_len;
@@ -829,7 +829,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	/* parsing ERP_IE */
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _ERPINFO_IE_, &ie_len,
-		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0)
 		ERP_IE_handler(padapter, (struct ndis_802_11_var_ie *)p);
 
@@ -847,7 +847,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	psecuritypriv->wpa2_group_cipher = _NO_PRIVACY_;
 	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
 	p = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len,
-		       (pbss_network->ie_length - _BEACON_IE_OFFSET_));
+		       pbss_network->ie_length - _BEACON_IE_OFFSET_);
 	if (p && ie_len > 0) {
 		if (rtw_parse_wpa2_ie(p, ie_len + 2, &group_cipher, &pairwise_cipher, NULL) == _SUCCESS) {
 			psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_8021X;
-- 
2.17.1



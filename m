X-GM-THRID: 6801960387185999872
X-Received: by 2002:a05:6830:231d:: with SMTP id u29mr10290566ote.1.1583704815122;
        Sun, 08 Mar 2020 15:00:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6759:: with SMTP id w25ls704718otm.10.gmail; Sun, 08 Mar
 2020 15:00:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs7Uvxn8kCVe9EPlE0MURXvyBcc/w0tIs58Fh0t2/PHMEj6JeETDlCIh2Ue5KV9KYVjZ/tJ
X-Received: by 2002:a9d:6752:: with SMTP id w18mr5666433otm.123.1583704813771;
        Sun, 08 Mar 2020 15:00:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583704813; cv=none;
        d=google.com; s=arc-20160816;
        b=Dev0rlHcBirgOGcMKOpGalBkTuSia9Cl+CNDwuUK7Yl+OqgO6G5OkmZOPgcdWz1QSL
         gCyqYMfcVzV1u4gNJ1culwFqTG8XebLwZ0jZyyMFBWRpJWPRiSdkOpPePPTV6jlOZU7C
         YzJ2lFSUHACypzJyzaTCBdsaHwhKgGvSyGAFSVnx/dwLTJFpd9maiNrVmQqtbp6JSKEw
         Xses3QtU144OJOgVD69U6duInv8DFLsxCKydoVUqQmEhyxlCSGRpgwUdEEzqZEMl05OG
         +UXTwJPkyW7Es1wwcIvbjYnO6V1Ovm7VY2ulACfeXKmpnnd6q9BoDMiqhIrWJNKlhWfW
         aF/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=1vU04Lpt7vihpbyCs7noYxRNglJR6y0XiLTgbbtSDfg=;
        b=k14eKla7XaqfKD9dKqE7pqh7rJNru0AD/kOBzhi9QOjRlrfS+9CL6QY3++F3+AqfY7
         WPBz968i58jdsGzey8HxZf8rEVF8qLh7a/Wy4NhMdiDUxRN655YyX7wL76XUyKiqmo2U
         wnFEYU8Ee0piL7ihHcKjgjugqo+d2fpYiN7jrDvKIXpNOV+XGhRhiKgNQ+VSmCYGV5aL
         kfylSXoQ8JinNkCLGdmAuoaPO9/o/000hnsThGRqyM8WQCCNO7SSxppPqmES9RFZt6FZ
         4SxDMClyA1RtaX2PWNMKAEV+RSBwAecHbTlLK6p6dhV3hxMVVMhBQcjDd6yVm9bfS2WJ
         rMqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gjZbJ1d5;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id o10si236928oic.1.2020.03.08.15.00.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 15:00:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gjZbJ1d5;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id ay11so3182583plb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 15:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=1vU04Lpt7vihpbyCs7noYxRNglJR6y0XiLTgbbtSDfg=;
        b=gjZbJ1d5Mxsohp2sbEGVaauftcdhNSpJpz8OswS/tV55pWeYGJoLxWA12b23nGXygX
         vAj5SA5Yadymj0VLaWXDLrTQqCL7NrtQICr7mP4HMhoGGzqV3AtVQlyGgWYSGHTkfMCk
         tw1D/xYQM/rMLi9Y4kaAdBffux8KmBCQUmICRN1E/5S3+XiBu07WXmAfDCF3ATTvmBAZ
         NUfDFJx1aG0bMwlpsy0i0nKiHCyMkmcfJF+P0k7q77Dy0eiTLayA9wu70/SSShiajbu/
         j6rHP45LskH5a3egQwYaaWnUxi9CdyUF/iwerSgzPComTn/mYGQ5iNZMHUhIyNN1KStf
         vtsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=1vU04Lpt7vihpbyCs7noYxRNglJR6y0XiLTgbbtSDfg=;
        b=n1kvrGoIxMx25+mqQAzoCbf0izXIounmqdp6Uxp3qXXWC8/etfJlwHM/NSUhGxL4Zr
         9aHpX10erz8bea/r8YUcBAjYkRYckFZzjeulu7NHUxx8fDlJdWlNj4/igYJP3vrYL8/N
         F60F7ndjUWZZwgYPqg9SXW4pSsKOjC5Cyct1ymWpmlJ3JowyEWOGyNeKM4E5BQGQLT5T
         lCcsR2RvFA09zssFuPYSxn/DMNf/9qPgKu99KzAWDjD/4UGjvFCimeOClkjKkpz7dZMx
         HyQ3BT1odyIvNSi9zq8Hq6pQRgvmN9q9uoGc8mJq86s8d2aH8etjPCotmk75i0FPRdn3
         wXIw==
X-Gm-Message-State: ANhLgQ2OA//dOZ1Rx3cPcB+A6lNQAl/+Aisc8//2r+jXr5vlpZEr4RLt
	NZ4aKwZYZolcrbBfusnAMOU=
X-Received: by 2002:a17:90a:c24e:: with SMTP id d14mr13315254pjx.83.1583704812225;
        Sun, 08 Mar 2020 15:00:12 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([1.23.250.201])
        by smtp.gmail.com with ESMTPSA id y9sm16219939pjj.17.2020.03.08.15.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 15:00:11 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	daniel.baluta@gmail.com,
	nramas@linux.microsoft.com,
	hverkuil@xs4all.nl,
	shreeya.patel23498@gmail.com,
	Larry.Finger@lwfinger.net
Subject: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around operators
Date: Mon,  9 Mar 2020 03:30:04 +0530
Message-Id: <20200308220004.9960-1-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1

Add space around operators for improving the code
readability.

Reported by checkpatch.pl

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 40 +++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 8da955e8343b..9de2d421f6b1 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -149,7 +149,7 @@ static void _rtw_free_network(struct mlme_priv *pmlmepriv, struct wlan_network *
 	    (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)))
 		lifetime = 1;
 	if (!isfreeall) {
-		delta_time = (curr_time - pnetwork->last_scanned)/HZ;
+		delta_time = (curr_time - pnetwork->last_scanned) / HZ;
 		if (delta_time < lifetime)/*  unit:sec */
 			return;
 	}
@@ -249,8 +249,8 @@ void rtw_generate_random_ibss(u8 *pibss)
 	pibss[1] = 0x11;
 	pibss[2] = 0x87;
 	pibss[3] = (u8)(curtime & 0xff);/* p[0]; */
-	pibss[4] = (u8)((curtime>>8) & 0xff);/* p[1]; */
-	pibss[5] = (u8)((curtime>>16) & 0xff);/* p[2]; */
+	pibss[4] = (u8)((curtime >> 8) & 0xff);/* p[1]; */
+	pibss[5] = (u8)((curtime >> 16) & 0xff);/* p[2]; */
 }
 
 u8 *rtw_get_capability_from_ie(u8 *ie)
@@ -357,9 +357,9 @@ void update_network(struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src,
 			rssi_final = rssi_ori;
 	} else {
 		if (sq_smp != 101) { /* from the right channel */
-			ss_final = ((u32)(src->PhyInfo.SignalStrength)+(u32)(dst->PhyInfo.SignalStrength)*4)/5;
-			sq_final = ((u32)(src->PhyInfo.SignalQuality)+(u32)(dst->PhyInfo.SignalQuality)*4)/5;
-			rssi_final = (src->Rssi+dst->Rssi*4)/5;
+			ss_final = ((u32)(src->PhyInfo.SignalStrength) + (u32)(dst->PhyInfo.SignalStrength) * 4) / 5;
+			sq_final = ((u32)(src->PhyInfo.SignalQuality) + (u32)(dst->PhyInfo.SignalQuality) * 4) / 5;
+			rssi_final = (src->Rssi + dst->Rssi * 4) / 5;
 		} else {
 			/* bss info not receiving from the right channel, use the original RX signal infos */
 			ss_final = dst->PhyInfo.SignalStrength;
@@ -510,7 +510,7 @@ static int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *
 	privacy = pnetwork->network.Privacy;
 
 	if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
-		if (rtw_get_wps_ie(pnetwork->network.ies+_FIXED_IE_LENGTH_, pnetwork->network.ie_length-_FIXED_IE_LENGTH_, NULL, &wps_ielen))
+		if (rtw_get_wps_ie(pnetwork->network.ies + _FIXED_IE_LENGTH_, pnetwork->network.ie_length - _FIXED_IE_LENGTH_, NULL, &wps_ielen))
 			return true;
 		else
 			return false;
@@ -925,7 +925,7 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 	switch (pnetwork->network.InfrastructureMode) {
 	case Ndis802_11Infrastructure:
 		if (pmlmepriv->fw_state & WIFI_UNDER_WPS)
-			pmlmepriv->fw_state = WIFI_STATION_STATE|WIFI_UNDER_WPS;
+			pmlmepriv->fw_state = WIFI_STATION_STATE | WIFI_UNDER_WPS;
 		else
 			pmlmepriv->fw_state = WIFI_STATION_STATE;
 		break;
@@ -1097,14 +1097,14 @@ static u8 search_max_mac_id(struct adapter *padapter)
 #if defined(CONFIG_88EU_AP_MODE)
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 		for (aid = pstapriv->max_num_sta; aid > 0; aid--) {
-			if (pstapriv->sta_aid[aid-1])
+			if (pstapriv->sta_aid[aid - 1])
 				break;
 		}
 		mac_id = aid + 1;
 	} else
 #endif
 	{/* adhoc  id =  31~2 */
-		for (mac_id = NUM_STA-1; mac_id >= IBSS_START_MAC_ID; mac_id--) {
+		for (mac_id = NUM_STA - 1; mac_id >= IBSS_START_MAC_ID; mac_id--) {
 			if (pmlmeinfo->FW_sta_info[mac_id].status == 1)
 				break;
 		}
@@ -1123,7 +1123,7 @@ void rtw_stassoc_hw_rpt(struct adapter *adapter, struct sta_info *psta)
 
 	macid = search_max_mac_id(adapter);
 	rtw_hal_set_hwreg(adapter, HW_VAR_TX_RPT_MAX_MACID, (u8 *)&macid);
-	media_status = (psta->mac_id<<8)|1; /*   MACID|OPMODE:1 connect */
+	media_status = (psta->mac_id << 8) | 1; /*   MACID|OPMODE:1 connect */
 	rtw_hal_set_hwreg(adapter, HW_VAR_H2C_MEDIA_STATUS_RPT, (u8 *)&media_status);
 }
 
@@ -1213,7 +1213,7 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
 	if (mac_id >= 0) {
 		u16 media_status;
 
-		media_status = (mac_id<<8)|0; /*   MACID|OPMODE:0 means disconnect */
+		media_status = (mac_id << 8) | 0; /*   MACID|OPMODE:0 means disconnect */
 		/* for STA, AP, ADHOC mode, report disconnect stauts to FW */
 		rtw_hal_set_hwreg(adapter, HW_VAR_H2C_MEDIA_STATUS_RPT, (u8 *)&media_status);
 	}
@@ -1640,7 +1640,7 @@ int rtw_restruct_wmm_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 	for (i = 12; i < in_len; i += (in_ie[i + 1] + 2) /* to the next IE element */) {
 		ielength = initial_out_len;
 
-		if (in_ie[i] == 0xDD && in_ie[i+2] == 0x00 && in_ie[i+3] == 0x50  && in_ie[i+4] == 0xF2 && in_ie[i+5] == 0x02 && i+5 < in_len) {
+		if (in_ie[i] == 0xDD && in_ie[i + 2] == 0x00 && in_ie[i + 3] == 0x50  && in_ie[i + 4] == 0xF2 && in_ie[i + 5] == 0x02 && i + 5 < in_len) {
 			/* WMM element ID and OUI */
 			/* Append WMM IE to the last index of out_ie */
 
@@ -1734,13 +1734,13 @@ int rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 		authmode = _WPA2_IE_ID_;
 
 	if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
-		memcpy(out_ie+ielength, psecuritypriv->wps_ie, psecuritypriv->wps_ie_len);
+		memcpy(out_ie + ielength, psecuritypriv->wps_ie, psecuritypriv->wps_ie_len);
 
 		ielength += psecuritypriv->wps_ie_len;
 	} else if ((authmode == _WPA_IE_ID_) || (authmode == _WPA2_IE_ID_)) {
 		/* copy RSN or SSN */
-		memcpy(&out_ie[ielength], &psecuritypriv->supplicant_ie[0], psecuritypriv->supplicant_ie[1]+2);
-		ielength += psecuritypriv->supplicant_ie[1]+2;
+		memcpy(&out_ie[ielength], &psecuritypriv->supplicant_ie[0], psecuritypriv->supplicant_ie[1] + 2);
+		ielength += psecuritypriv->supplicant_ie[1] + 2;
 		rtw_report_sec_ie(adapter, authmode, psecuritypriv->supplicant_ie);
 	}
 
@@ -1865,7 +1865,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 
 	phtpriv->ht_option = false;
 
-	p = rtw_get_ie(in_ie+12, _HT_CAPABILITY_IE_, &ielen, in_len-12);
+	p = rtw_get_ie(in_ie + 12, _HT_CAPABILITY_IE_, &ielen, in_len - 12);
 
 	if (p && ielen > 0) {
 		struct ieee80211_ht_cap ht_cap;
@@ -1904,16 +1904,16 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 		else
 			ht_cap.ampdu_params_info |= IEEE80211_HT_CAP_AMPDU_DENSITY & 0x00;
 
-		rtw_set_ie(out_ie+out_len, _HT_CAPABILITY_IE_,
+		rtw_set_ie(out_ie + out_len, _HT_CAPABILITY_IE_,
 			   sizeof(struct ieee80211_ht_cap),
 			   (unsigned char *)&ht_cap, pout_len);
 
 		phtpriv->ht_option = true;
 
-		p = rtw_get_ie(in_ie+12, _HT_ADD_INFO_IE_, &ielen, in_len-12);
+		p = rtw_get_ie(in_ie + 12, _HT_ADD_INFO_IE_, &ielen, in_len - 12);
 		if (p && (ielen == sizeof(struct ieee80211_ht_addt_info))) {
 			out_len = *pout_len;
-			rtw_set_ie(out_ie+out_len, _HT_ADD_INFO_IE_, ielen, p+2, pout_len);
+			rtw_set_ie(out_ie + out_len, _HT_ADD_INFO_IE_, ielen, p + 2, pout_len);
 		}
 	}
 	return phtpriv->ht_option;
-- 
2.17.1



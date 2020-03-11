X-GM-THRID: 6802590976179175424
X-Received: by 2002:a67:c31e:: with SMTP id r30mr1911446vsj.197.1583932676598;
        Wed, 11 Mar 2020 06:17:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:dc15:: with SMTP id x21ls265035vsj.2.gmail; Wed, 11 Mar
 2020 06:17:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vubyqJpPT6sNObduwYCPlw2Bjzr0cUYVgYTSCwmj3ZBo5HNPqpyyIlvkC5st6zdFfBpJlIh
X-Received: by 2002:a67:2fd8:: with SMTP id v207mr1809539vsv.233.1583932675047;
        Wed, 11 Mar 2020 06:17:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583932675; cv=none;
        d=google.com; s=arc-20160816;
        b=rv7E2W7HKaEngY1psOlqlW0yV7arevNweS7Z2C0AR6VuIpQpBMJ0ngxBxTigp5k94E
         FX8EH6uF/mq0v3Ez1yON9nhSTEQgQ6d/98XoJtRekrcKVtUjFs0HruFDHCgra8n7nVlE
         EL6Bipo2bYbZhpaRrs9LPQttXw6YdYQ5sdPdH+8GkVOcrd6rXKM6YsotRWocw1OkWTll
         u/XzAv0cLJ3astXpJAIxBwzQPr5ryhXFtoliXUWd2hzbUQ/cTQrP5Fw8XeUV8GUXPgWf
         XzaGWB+Rd2ZVY+seEQIucL9HzzJeHbJqhTJuI+wu2xSVNeGkBNVP3yW0R1vA+xkK8aOH
         8DNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=vrtm4mTBXLkyB+Sw62aumVRdIfeHDvffoJwWFM/8N3Y=;
        b=zwX7cz/SOQcVx16bwbRjAIx6hZvKxayjPh5rs1y0FOZCOhJR3ufkl4DRyy5qRHSfwt
         mJ2jjOXqzRUgTK2HoM+vcX6rIHEk+JMQSW+CXRUEnfP5SpZL4dLufHDpXJLH9PHki3PJ
         lV3hOn+oX07ZGda2t3O3JWBmFsJeeG5+GhO7rtY8RnZm1CYv3SMmqIgixLH1BHmNa/os
         XvNyPMwDjb9vMez8tnhQMiAkAgNMM+Zf0RqBwBqCIsazf4oYBbRSCXCD/zHqDv0KQyIY
         fUZIZlMUZV6DmanY1k7EFWCDdMf3muwgfeRT1f1eAX/pJDXT6L+hOGFb9EzXyKhBFFoU
         0UgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ib3HXPLI;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s124si115499vka.1.2020.03.11.06.17.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 06:17:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ib3HXPLI;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 23so1332616pfj.1
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 06:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=vrtm4mTBXLkyB+Sw62aumVRdIfeHDvffoJwWFM/8N3Y=;
        b=Ib3HXPLIXFOBbWd+GDPehqS/CfQFc0ubSOsPABUHVsJMsJzu7B74aQP8OEzbVXoBdC
         Fsbcx/GcKDDoG4Cbz4wlOLbGgsIxMYbfdokVaCHR5HqmyTPyA8hi+JTKsgQgu1QdvAlR
         R9zzJhro1lKKzRVqYXnTEYQwolr/0e1WfDQSEklDyIqVIY2CnsAvGDPkjOD2t43qYpRJ
         B9LkIseutQRVjumEytN2E3QKCK+5QgrPZo6MsxxL30VcXvP/rhAA/cP4p9/fbdLm+Y5L
         s1/iwO4Tthwtej2xoKeyCO6tNFtk9XcNMQE0VdjRTgJ/i2wFY/eyUY/fUqLS0pznHBOo
         c+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=vrtm4mTBXLkyB+Sw62aumVRdIfeHDvffoJwWFM/8N3Y=;
        b=EtaJScmcP/2TSJTIR3Yx1+16LuLtDcHntWmwdA+fdFIaKwiksH87noOH54x0Gc/YE3
         V0ISplz3CfURS00fGSw15U8YFv4aE2bJv7nbqBWXwdHTXtt8aoVO6gc+k0UHH2d84LMu
         2chz/47P/HGP7a8E+8101w3DAvgvoe27QNApYdu+5+woggzAX7BmchI3joUyRSRl50Bv
         VCAcw8uCC3+Y8jvlM70YADzM/hA64mnWSrEuQ1V3ds2DluXJh9zoc0rh5YiihwHdGfMr
         3NAdjkDm66nq7+lWhzBTdn5LBqWY/vxliJrjIs7FnBntBRZbwnkBnsSbzdaA29KgAcJJ
         qQVA==
X-Gm-Message-State: ANhLgQ2b2VmkWMqKo5uJ1a5P6qowMpbAatKSmh4ow/CBUe3E7pPCN/QP
	Xl3rP28Mfj69T61WLjuRHkZVkneW//E=
X-Received: by 2002:a62:6490:: with SMTP id y138mr2854394pfb.96.1583932673834;
        Wed, 11 Mar 2020 06:17:53 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([2405:204:287:fb4d:18bc:a849:c699:3914])
        by smtp.gmail.com with ESMTPSA id s18sm637434pfe.194.2020.03.11.06.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 06:17:53 -0700 (PDT)
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
Subject: [Outreachy kernel] [PATCH v4] Staging: rtl8188eu: rtw_mlme: Add space around operators
Date: Wed, 11 Mar 2020 18:47:42 +0530
Message-Id: <20200311131742.31068-1-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1

Add space around operators for improving the code
readability.
Reported by checkpatch.pl

git diff -w shows no difference.
diff of the .o files before and after the changes shows no difference.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/core/
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/core$ diff rtw_mlme_old.o rtw_mlme.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/core$

Changes in v4
  - Move important statements into the commit message.
Changes in v3
  - Make the diff output explanation more readable.

Changes in v2
  - Include the file name in Subject to make it more specific.
  - Add the output of diff of the .o files before and after the changes
to show no difference.
  - Add the output of git diff -w to show no difference.

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



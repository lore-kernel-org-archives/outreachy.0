X-GM-THRID: 6617910833765679104
X-Received: by 2002:a9d:2944:: with SMTP id d62mr12726009otb.9.1540852653207;
        Mon, 29 Oct 2018 15:37:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:45c6:: with SMTP id s189-v6ls1946107oia.1.gmail; Mon, 29
 Oct 2018 15:37:32 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dNlFR/UJ0PIVtkoqXOYGQ3jQOQJzzD1leCJ8hHZqdi9PPxhmLuosxyxQtvzoXauqxTfFDb
X-Received: by 2002:aca:34c1:: with SMTP id b184-v6mr13117284oia.30.1540852652293;
        Mon, 29 Oct 2018 15:37:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540852652; cv=none;
        d=google.com; s=arc-20160816;
        b=v59RIX7Q2ZtFwegA0gAxLrNpoT7crZb+6RpyvP8s7yXH3uzX9y9gltGczp4MfiTKkI
         fp0XFEQnhA4bjoyklgV+RXkFevh615uPMfqb4KbvLz2q1ghs8JG0YdtCUW6gicw83qcl
         mPFbHQMsOLNPUsfxlME4uqHUpwQ0mih/tl2OoP/yt0lZdzLePzYLPcq0F7b1s2jW1GeN
         tY6fIp2BCkdoUbLpJMc12akOChMijyuqE4jFaNGQerKRlFHfXFBKADb3OM5naEcq5qou
         2qkk1973sGDv7aknb7SYUaUpojhmaX0zsLbmcoukvPPhnWFAVxEVoUGJIzX2SvkUeHsG
         ZqDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=pOOsEJkYtUdDA+TLjbTUMuB1LeCcNy+wz+U6E839Oy0=;
        b=tzKJ+v1jl1p06UpoaFvuJKJ8ba+oun974yzxDkSvMlSL5VjDnSt3MnZSzA0YtRhtsg
         LdJDNnnIqLUmumKy8hgsFJwHC8mmJlwUCYILCEsDq6AXqEk/HIqt4lVb1hZraptYxNWw
         CoJPdPOY/ydhu/UtsZ+N+pmUy9yH1dTquPG6rN7p37JFt17hajjqo8hml5fiwX2nlgdQ
         GtJgOeNOA1h0a+gOyjokZRJ0IrszL/5+hD85ky9QjVJr+X205g3DJ0Clbey9ES7LECJ3
         7AOel7R0kPqEWq880W3qnLIggtc7pu6KTSy9eKZaq6FjynLEsgicgOr/UxVCnbwBHD84
         xfbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EUm2Ax/j";
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-it1-x144.google.com (mail-it1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id x10si596748otk.5.2018.10.29.15.37.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 15:37:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EUm2Ax/j";
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x144.google.com with SMTP id m15so11523492itl.4
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Oct 2018 15:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pOOsEJkYtUdDA+TLjbTUMuB1LeCcNy+wz+U6E839Oy0=;
        b=EUm2Ax/jVN6V/OsljAiBwBmCiSbx6QgM1173ujYPmIJpGLlmPwtf87mNdpnAsOw6FT
         ZOET5aX+Ic0R0NrWBaMPuRyGhsFzE9GPpN0Ynf8hr4INqG0Accm3Tlh90d6yTS8FL+Cn
         wZNMB30xsy11bpyj0urUks7qEbh02VVpf7IFWLB3+WgkQ0mvwx5DsT3803RVN+wSl52X
         o73OIjJTJurYjE6HXwelQzEAf1HeJ0AAzW/nhNyJO7FBUVblC6Nfq/IT26oXuheAFsLj
         hEfHjfvG3AP/iX+OkgIf7b3HqX9fpZI5ROIwlapHfM+6XhYfK529/xlN9OwNYLXv7hXM
         jFbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pOOsEJkYtUdDA+TLjbTUMuB1LeCcNy+wz+U6E839Oy0=;
        b=Vg2lYx1vnm9h5CxOyIgY+5Y3dwBB7d77fYVuBkyVN9PeZrFek4E7mIc1+lqXW4EY10
         5zZCjo4SS4wAyqiqAlwhqogietT1S0nqOY5coDNCU5e9vMZ9qManJGngV1l3xgOIXZK/
         yrs7VMjFKMcleP2GeBThUX0c1FSNN/sk1x2gBSUrhbHxr1cHqWCvk44pcV1zwR3p+tPX
         FrtS8NcHKsuMU9/IEF/EDHOVQnJU4jQK85Yn1Hn7Gr8eyYAE19F447OKVD5XCBVEll2D
         C+PkTAPaUeqMoFUyYBJ3blh9DmFlUAjxJI0Iu3F97B4TskSp0TLmMQ1Adtdo9S1TDRop
         cQzA==
X-Gm-Message-State: AGRZ1gJNE69Q1fh1gI2GLNjSqxYEfaSV6H1v6derplL5ogFVDF1pFmHg
	nu5qbd5T9JN1RjKzxK2K0kqgmDpP/Vc=
X-Received: by 2002:a24:5452:: with SMTP id t79-v6mr11377568ita.144.1540852651333;
        Mon, 29 Oct 2018 15:37:31 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from ubu-Virtual-Machine (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id q194-v6sm5229897itb.26.2018.10.29.15.37.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 29 Oct 2018 15:37:30 -0700 (PDT)
Date: Mon, 29 Oct 2018 18:37:28 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bastien Nocera <hadess@hadess.net>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 2/2] staging: rtl8723bs: core: cleanup incorrect indentations
Message-ID: <aa90ccf2bfd8a8bcb2741c3eaae82ac881fcdb2e.1540850889.git.kimbrownkd@gmail.com>
References: <cover.1540850888.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540850888.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Cleanup incorrect indentations in if statements and for loops. Add line
breaks when a new indentation increases the line length above 80
characters. This change improves code readability. Issues found by
checkpatch and coccicheck.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       |  2 +-
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  2 +-
 drivers/staging/rtl8723bs/core/rtw_eeprom.c   | 20 ++++----
 .../staging/rtl8723bs/core/rtw_ieee80211.c    | 25 +++++-----
 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 34 +++++++-------
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 14 +++---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  2 +-
 drivers/staging/rtl8723bs/core/rtw_recv.c     |  6 +--
 drivers/staging/rtl8723bs/core/rtw_security.c |  4 +-
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c  |  2 +-
 .../staging/rtl8723bs/core/rtw_wlan_util.c    | 46 +++++++++----------
 drivers/staging/rtl8723bs/core/rtw_xmit.c     |  7 +--
 12 files changed, 83 insertions(+), 81 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 330cd21c21bd..47be24b14523 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1141,7 +1141,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		}
 
 		if ((p == NULL) || (ie_len == 0))
-				break;
+			break;
 	}
 
 	/* wmm */
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 830be63391b7..e2d359ab7f41 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1351,7 +1351,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 		/*&& !MgntInitAdapterInProgress(pMgntInfo)*/) {
 		/*  if we raise bBusyTraffic in last watchdog, using lower threshold. */
 		if (pmlmepriv->LinkDetectInfo.bBusyTraffic)
-				BusyThreshold = BusyThresholdLow;
+			BusyThreshold = BusyThresholdLow;
 
 		if (pmlmepriv->LinkDetectInfo.NumRxOkInPeriod > BusyThreshold ||
 			pmlmepriv->LinkDetectInfo.NumTxOkInPeriod > BusyThreshold) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_eeprom.c b/drivers/staging/rtl8723bs/core/rtw_eeprom.c
index 5eea02cfce1f..f1a788ec2f0d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_eeprom.c
+++ b/drivers/staging/rtl8723bs/core/rtw_eeprom.c
@@ -49,8 +49,8 @@ _func_enter_;
 		if (data & mask)
 			x |= _EEDI;
 		if (padapter->bSurpriseRemoved == true) {
-		RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
-		goto out;
+			RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
+			goto out;
 		}
 		rtw_write8(padapter, EE_9346CR, (u8)x);
 		udelay(CLOCK_RATE);
@@ -84,15 +84,15 @@ _func_enter_;
 	for (i = 0; i < 16; i++) {
 		d = d << 1;
 		up_clk(padapter, &x);
-	if (padapter->bSurpriseRemoved == true) {
-		RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
-		goto out;
-	}
+		if (padapter->bSurpriseRemoved == true) {
+			RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
+			goto out;
+		}
 		x = rtw_read8(padapter, EE_9346CR);
 
 		x &= ~(_EEDI);
 		if (x & _EEDO)
-		d |= 1;
+			d |= 1;
 
 		down_clk(padapter, &x);
 	}
@@ -158,9 +158,9 @@ _func_enter_;
 	}
 	up_clk(padapter, &x);
 		if (padapter->bSurpriseRemoved == true) {
-		RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
-		goto out;
-	}
+			RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
+			goto out;
+		}
 	down_clk(padapter, &x);
 out:
 _func_exit_;
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 33f2649ba2ec..1092bcd34c50 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -670,17 +670,17 @@ int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie,
 		authmode = in_ie[cnt];
 
 		if ((authmode == _WPA_IE_ID_) && (!memcmp(&in_ie[cnt+2], &wpa_oui[0], 4))) {
-				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n", sec_idx, in_ie[cnt+1]+2));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n", sec_idx, in_ie[cnt+1]+2));
 
-				if (wpa_ie) {
+			if (wpa_ie) {
 				memcpy(wpa_ie, &in_ie[cnt], in_ie[cnt+1]+2);
 
 				for (i = 0; i < (in_ie[cnt+1]+2); i = i+8) {
-						RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
+					RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
 									wpa_ie[i], wpa_ie[i+1], wpa_ie[i+2], wpa_ie[i+3], wpa_ie[i+4],
 									wpa_ie[i+5], wpa_ie[i+6], wpa_ie[i+7]));
-					}
 				}
+			}
 
 				*wpa_len = in_ie[cnt+1]+2;
 				cnt += in_ie[cnt+1]+2;  /* get next */
@@ -689,9 +689,10 @@ int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie,
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n get_rsn_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n", sec_idx, in_ie[cnt+1]+2));
 
 				if (rsn_ie) {
-				memcpy(rsn_ie, &in_ie[cnt], in_ie[cnt+1]+2);
+					memcpy(rsn_ie, &in_ie[cnt],
+					       in_ie[cnt+1]+2);
 
-				for (i = 0; i < (in_ie[cnt+1]+2); i = i+8) {
+					for (i = 0; i < (in_ie[cnt+1]+2); i = i+8) {
 						RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
 									rsn_ie[i], rsn_ie[i+1], rsn_ie[i+2], rsn_ie[i+3], rsn_ie[i+4],
 									rsn_ie[i+5], rsn_ie[i+6], rsn_ie[i+7]));
@@ -1215,18 +1216,18 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 	/* parsing HT_CAP_IE */
 	p = rtw_get_ie(pnetwork->network.IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
-			pht_cap = (struct ieee80211_ht_cap *)(p + 2);
-			pnetwork->BcnInfo.ht_cap_info = le16_to_cpu(pht_cap->cap_info);
+		pht_cap = (struct ieee80211_ht_cap *)(p + 2);
+		pnetwork->BcnInfo.ht_cap_info = le16_to_cpu(pht_cap->cap_info);
 	} else {
-			pnetwork->BcnInfo.ht_cap_info = 0;
+		pnetwork->BcnInfo.ht_cap_info = 0;
 	}
 	/* parsing HT_INFO_IE */
 	p = rtw_get_ie(pnetwork->network.IEs + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
-			pht_info = (struct HT_info_element *)(p + 2);
-			pnetwork->BcnInfo.ht_info_infos_0 = pht_info->infos[0];
+		pht_info = (struct HT_info_element *)(p + 2);
+		pnetwork->BcnInfo.ht_info_infos_0 = pht_info->infos[0];
 	} else {
-			pnetwork->BcnInfo.ht_info_infos_0 = 0;
+		pnetwork->BcnInfo.ht_info_infos_0 = 0;
 	}
 }
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 4c5d5cf9dfe0..6c4a1ef69d95 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -442,7 +442,7 @@ int is_same_network(struct wlan_bssid_ex *src, struct wlan_bssid_ex *dst, u8 fea
 	__le16 tmps, tmpd;
 
 	if (rtw_bug_check(dst, src, &s_cap, &d_cap) == false)
-			return false;
+		return false;
 
 	memcpy((u8 *)&tmps, rtw_get_capability_from_ie(src->IEs), 2);
 	memcpy((u8 *)&tmpd, rtw_get_capability_from_ie(dst->IEs), 2);
@@ -772,7 +772,7 @@ int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwor
 		uint ie_len = 0;
 
 		if ((desired_encmode == Ndis802_11EncryptionDisabled) && (privacy != 0))
-	    bselected = false;
+			bselected = false;
 
 		if (psecuritypriv->ndisauthtype == Ndis802_11AuthModeWPA2PSK) {
 			p = rtw_get_ie(pnetwork->network.IEs + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pnetwork->network.IELength - _BEACON_IE_OFFSET_));
@@ -919,7 +919,7 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 					pmlmepriv->fw_state = WIFI_ADHOC_MASTER_STATE;
 
 					if (rtw_createbss_cmd(adapter) != _SUCCESS) {
-					RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error =>rtw_createbss_cmd status FAIL\n"));
+						RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error =>rtw_createbss_cmd status FAIL\n"));
 					}
 
 					pmlmepriv->to_join = false;
@@ -931,7 +931,7 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 			pmlmepriv->to_join = false;
 			s_ret = rtw_select_and_join_from_scanned_queue(pmlmepriv);
 			if (_SUCCESS == s_ret) {
-			     _set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
+				_set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
 			} else if (s_ret == 2) {/* there is no need to wait for join */
 				_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 				rtw_indicate_connect(adapter);
@@ -2396,8 +2396,8 @@ int rtw_restruct_wmm_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 
 		if (in_ie[i] == 0xDD && in_ie[i+2] == 0x00 && in_ie[i+3] == 0x50  && in_ie[i+4] == 0xF2 && in_ie[i+5] == 0x02 && i+5 < in_len) { /* WMM element ID and OUI */
 			for (j = i; j < i + 9; j++) {
-					out_ie[ielength] = in_ie[j];
-					ielength++;
+				out_ie[ielength] = in_ie[j];
+				ielength++;
 			}
 			out_ie[initial_out_len + 1] = 0x07;
 			out_ie[initial_out_len + 6] = 0x00;
@@ -2465,14 +2465,14 @@ static int rtw_append_pmkid(struct adapter *Adapter, int iEntry, u8 *ie, uint ie
 
 	if (ie[13] <= 20) {
 		/*  The RSN IE didn't include the PMK ID, append the PMK information */
-			ie[ie_len] = 1;
-			ie_len++;
-			ie[ie_len] = 0;	/* PMKID count = 0x0100 */
-			ie_len++;
-			memcpy(&ie[ie_len], &psecuritypriv->PMKIDList[iEntry].PMKID, 16);
+		ie[ie_len] = 1;
+		ie_len++;
+		ie[ie_len] = 0;	/* PMKID count = 0x0100 */
+		ie_len++;
+		memcpy(&ie[ie_len], &psecuritypriv->PMKIDList[iEntry].PMKID, 16);
 
-			ie_len += 16;
-			ie[13] += 18;/* PMKID length = 2+16 */
+		ie_len += 16;
+		ie[13] += 18;/* PMKID length = 2+16 */
 
 	}
 	return ie_len;
@@ -2495,9 +2495,9 @@ sint rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in
 	memcpy(out_ie, in_ie, 12);
 	ielength = 12;
 	if ((ndisauthmode == Ndis802_11AuthModeWPA) || (ndisauthmode == Ndis802_11AuthModeWPAPSK))
-			authmode = _WPA_IE_ID_;
+		authmode = _WPA_IE_ID_;
 	if ((ndisauthmode == Ndis802_11AuthModeWPA2) || (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
-			authmode = _WPA2_IE_ID_;
+		authmode = _WPA2_IE_ID_;
 
 	if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
 		memcpy(out_ie+ielength, psecuritypriv->wps_ie, psecuritypriv->wps_ie_len);
@@ -2822,9 +2822,9 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 
 		#ifdef CONFIG_DISABLE_MCS13TO15
 		if (((cbw40_enable == 1) && (operation_bw == CHANNEL_WIDTH_40)) && (pregistrypriv->wifi_spec != 1))
-				set_mcs_rate_by_mask(ht_capie.supp_mcs_set, MCS_RATE_2R_13TO15_OFF);
+			set_mcs_rate_by_mask(ht_capie.supp_mcs_set, MCS_RATE_2R_13TO15_OFF);
 		else
-				set_mcs_rate_by_mask(ht_capie.supp_mcs_set, MCS_RATE_2R);
+			set_mcs_rate_by_mask(ht_capie.supp_mcs_set, MCS_RATE_2R);
 		#else /* CONFIG_DISABLE_MCS13TO15 */
 			set_mcs_rate_by_mask(ht_capie.supp_mcs_set, MCS_RATE_2R);
 		#endif /* CONFIG_DISABLE_MCS13TO15 */
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 69c7abc0e3a5..6fdb7d6b7cdc 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -844,9 +844,9 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
 			if (psta != NULL) {
 				ret = rtw_check_bcn_info(padapter, pframe, len);
 				if (!ret) {
-						DBG_871X_LEVEL(_drv_always_, "ap has changed, disconnect now\n ");
-						receive_disconnect(padapter, pmlmeinfo->network.MacAddress, 0);
-						return _SUCCESS;
+					DBG_871X_LEVEL(_drv_always_, "ap has changed, disconnect now\n ");
+					receive_disconnect(padapter, pmlmeinfo->network.MacAddress, 0);
+					return _SUCCESS;
 				}
 				/* update WMM, ERP in the beacon */
 				/* todo: the timer is used instead of the number of the beacon received */
@@ -5893,9 +5893,9 @@ void link_timer_hdl(struct timer_list *t)
 		if (++pmlmeinfo->reauth_count > REAUTH_LIMIT) {
 			/* if (pmlmeinfo->auth_algo != dot11AuthAlgrthm_Auto) */
 			/*  */
-				pmlmeinfo->state = 0;
-				report_join_res(padapter, -1);
-				return;
+			pmlmeinfo->state = 0;
+			report_join_res(padapter, -1);
+			return;
 			/*  */
 			/* else */
 			/*  */
@@ -6326,7 +6326,7 @@ u8 disconnect_hdl(struct adapter *padapter, unsigned char *pbuf)
 	u8 val8;
 
 	if (is_client_associated_to_ap(padapter)) {
-			issue_deauth_ex(padapter, pnetwork->MacAddress, WLAN_REASON_DEAUTH_LEAVING, param->deauth_timeout_ms/100, 100);
+		issue_deauth_ex(padapter, pnetwork->MacAddress, WLAN_REASON_DEAUTH_LEAVING, param->deauth_timeout_ms/100, 100);
 	}
 
 	if (((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE)) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 59a667753266..64dd9cb8455f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -558,7 +558,7 @@ void LPS_Enter(struct adapter *padapter, const char *msg)
 		return;
 
 	if (PS_RDY_CHECK(dvobj->padapters) == false)
-			return;
+		return;
 
 	if (pwrpriv->bLeisurePs) {
 		/*  Idle for a while if we connect to AP a while ago. */
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 02f821d42658..7d4b20f11a34 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -162,7 +162,7 @@ int rtw_free_recvframe(union recv_frame *precvframe, struct __queue *pfree_recv_
 
 	if (padapter != NULL) {
 		if (pfree_recv_queue == &precvpriv->free_recv_queue)
-				precvpriv->free_recvframe_cnt++;
+			precvpriv->free_recvframe_cnt++;
 	}
 	spin_unlock_bh(&pfree_recv_queue->lock);
 	return _SUCCESS;
@@ -828,8 +828,8 @@ sint sta2sta_data_frame(
 		if (bmcast) {
 			/*  For AP mode, if DA == MCAST, then BSSID should be also MCAST */
 			if (!IS_MCAST(pattrib->bssid)) {
-					ret = _FAIL;
-					goto exit;
+				ret = _FAIL;
+				goto exit;
 			}
 		} else{ /*  not mc-frame */
 			/*  For AP mode, if DA is non-MCAST, then it must be BSSID, and bssid == BSSID */
diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 240818b4a2c9..605e2899225f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1511,7 +1511,7 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	aes128k128d(key, ctr_preload, aes_out);
 	bitwise_xor(aes_out, padded_buffer, chain_buffer);
 	for (j = 0; j < 8; j++)
-		 pframe[payload_index++] = chain_buffer[j];/* for (j = 0; j<8;j++) message[payload_index++] = chain_buffer[j]; */
+		pframe[payload_index++] = chain_buffer[j];/* for (j = 0; j<8;j++) message[payload_index++] = chain_buffer[j]; */
 
 	return _SUCCESS;
 }
@@ -1651,7 +1651,7 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	payload_index = hdrlen + 8; /*  8 is for extiv */
 
 	for (i = 0; i < num_blocks; i++) {
-			construct_ctr_preload(
+		construct_ctr_preload(
 				ctr_preload,
 				a4_exists,
 				qc_exists,
diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index 82716fd5c6f0..3051e69aa22c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -627,7 +627,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 	else if (pacl_list->mode == 2)/* deny unless in accept list */
 		res = match;
 	else
-		 res = true;
+		res = true;
 
 	return res;
 }
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 2c65af319a60..5c8695790a41 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1341,52 +1341,52 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 	/* parsing HT_CAP_IE */
 	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
-			pht_cap = (struct rtw_ieee80211_ht_cap *)(p + 2);
-			ht_cap_info = le16_to_cpu(pht_cap->cap_info);
+		pht_cap = (struct rtw_ieee80211_ht_cap *)(p + 2);
+		ht_cap_info = le16_to_cpu(pht_cap->cap_info);
 	} else {
-			ht_cap_info = 0;
+		ht_cap_info = 0;
 	}
 	/* parsing HT_INFO_IE */
 	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
-			pht_info = (struct HT_info_element *)(p + 2);
-			ht_info_infos_0 = pht_info->infos[0];
+		pht_info = (struct HT_info_element *)(p + 2);
+		ht_info_infos_0 = pht_info->infos[0];
 	} else {
-			ht_info_infos_0 = 0;
+		ht_info_infos_0 = 0;
 	}
 	if (ht_cap_info != cur_network->BcnInfo.ht_cap_info ||
 		((ht_info_infos_0&0x03) != (cur_network->BcnInfo.ht_info_infos_0&0x03))) {
-			DBG_871X("%s bcn now: ht_cap_info:%x ht_info_infos_0:%x\n", __func__,
+		DBG_871X("%s bcn now: ht_cap_info:%x ht_info_infos_0:%x\n", __func__,
 							ht_cap_info, ht_info_infos_0);
-			DBG_871X("%s bcn link: ht_cap_info:%x ht_info_infos_0:%x\n", __func__,
+		DBG_871X("%s bcn link: ht_cap_info:%x ht_info_infos_0:%x\n", __func__,
 							cur_network->BcnInfo.ht_cap_info, cur_network->BcnInfo.ht_info_infos_0);
-			DBG_871X("%s bw mode change\n", __func__);
-			{
-				/* bcn_info_update */
-				cur_network->BcnInfo.ht_cap_info = ht_cap_info;
-				cur_network->BcnInfo.ht_info_infos_0 = ht_info_infos_0;
-				/* to do : need to check that whether modify related register of BB or not */
-			}
-			/* goto _mismatch; */
+		DBG_871X("%s bw mode change\n", __func__);
+		{
+			/* bcn_info_update */
+			cur_network->BcnInfo.ht_cap_info = ht_cap_info;
+			cur_network->BcnInfo.ht_info_infos_0 = ht_info_infos_0;
+			/* to do : need to check that whether modify related register of BB or not */
+		}
+		/* goto _mismatch; */
 	}
 
 	/* Checking for channel */
 	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _DSSET_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 	if (p) {
-			bcn_channel = *(p + 2);
+		bcn_channel = *(p + 2);
 	} else {/* In 5G, some ap do not have DSSET IE checking HT info for channel */
-			rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
+		rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 			if (pht_info) {
-					bcn_channel = pht_info->primary_channel;
+				bcn_channel = pht_info->primary_channel;
 			} else { /* we don't find channel IE, so don't check it */
-					/* DBG_871X("Oops: %s we don't find channel IE, so don't check it\n", __func__); */
-					bcn_channel = Adapter->mlmeextpriv.cur_channel;
+				/* DBG_871X("Oops: %s we don't find channel IE, so don't check it\n", __func__); */
+				bcn_channel = Adapter->mlmeextpriv.cur_channel;
 			}
 	}
 	if (bcn_channel != Adapter->mlmeextpriv.cur_channel) {
-			DBG_871X("%s beacon channel:%d cur channel:%d disconnect\n", __func__,
+		DBG_871X("%s beacon channel:%d cur channel:%d disconnect\n", __func__,
 						   bcn_channel, Adapter->mlmeextpriv.cur_channel);
-			goto _mismatch;
+		goto _mismatch;
 	}
 
 	/* checking SSID */
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index edb678190b4b..baa7b4a88671 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -917,9 +917,10 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 			if (pframe[1]&1) {   /* ToDS == 1 */
 				rtw_secmicappend(&micdata, &pframe[16], 6);  /* DA */
 				if (pframe[1]&2)  /* From Ds == 1 */
-					rtw_secmicappend(&micdata, &pframe[24], 6);
+					rtw_secmicappend(&micdata, &pframe[24],
+							 6);
 				else
-				rtw_secmicappend(&micdata, &pframe[10], 6);
+					rtw_secmicappend(&micdata, &pframe[10], 6);
 			} else {	/* ToDS == 0 */
 				rtw_secmicappend(&micdata, &pframe[4], 6);   /* DA */
 				if (pframe[1]&2)  /* From Ds == 1 */
@@ -970,7 +971,7 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("\n ========last pkt ========\n"));
 			payload = payload-pattrib->last_txcmdsz+8;
 			for (curfragnum = 0; curfragnum < pattrib->last_txcmdsz; curfragnum = curfragnum+8)
-					RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, (" %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x ",
+				RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, (" %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x ",
 					*(payload+curfragnum), *(payload+curfragnum+1), *(payload+curfragnum+2), *(payload+curfragnum+3),
 					*(payload+curfragnum+4), *(payload+curfragnum+5), *(payload+curfragnum+6), *(payload+curfragnum+7)));
 			}
-- 
2.17.1



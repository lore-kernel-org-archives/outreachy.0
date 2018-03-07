X-GM-THRID: 6530108340974911488
X-Received: by 2002:a25:a361:: with SMTP id d88-v6mr4872126ybi.86.1520409328480;
        Tue, 06 Mar 2018 23:55:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.81.2 with SMTP id f2ls50086ywb.1.gmail; Tue, 06 Mar 2018
 23:55:27 -0800 (PST)
X-Google-Smtp-Source: AG47ELswo7HRrocEMWi4t6GT4Y8v88IHPMWmEEJqwjgpW6f41RyUHLJ0l34LgGhwYZwJbsnDG0L1
X-Received: by 10.129.82.15 with SMTP id g15mr10369201ywb.108.1520409327481;
        Tue, 06 Mar 2018 23:55:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520409327; cv=none;
        d=google.com; s=arc-20160816;
        b=HpxyggBrkL0sn5zC/9sb9wwsXVdhQLen8jktTa6UmcTE6Xh4TaX2ek7+97ThuQoMN2
         ijD44KdhVYGEGNv2ZLvjdfaeOfV3wU7sMkUZeBtb84n3ZDi4HIfSlzUKS4lLBOf5+1ge
         KPskogmE+0LX8zvhwQ9cpFDjg1AJsEdsa7KiDqWkw5FAEnpQIQB4dF7kodiqV3aL+hWY
         Ay9lMGeNj4DvjDe/9axHTr7GBCDr5mJM5XkfCUZDo+riX71A9m4dAjtSq6/rKdd/7+XM
         sm4Jl09Rr8sHjFzPTeCSA57asWCWXUNpsrfOJIA/rYpr2+PxRgdfjZe4kw2GoNyq7ONc
         OYxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=0G/+C37lFj64a1tRCCEl1FZbt/sPBI/WxpBV8C4zFfI=;
        b=dov/Ufjb5Q+soXd7t6LuINfZGhMYrNr7hC6/gd8Z2dTCk5f3Mf1GPHZ1ti2D/1eFnC
         ja0/oY3vwVQkcYMs666Wuh2mgcnexYe5QL0SnW58OmD5WsNeAD/B+65nzA04B6ai3QGH
         zoiR3yGpklvskTD99t8nKbZ0AzyrdwXkqkbxDo19OP5q0YV1coAnz5UMoRpVW4wrxKN3
         tbV9JSS7VkhvvIcGAVeSSn69XA39OuDHtdKqPfHQ0iFriwzOhMScdSxEAyQcSWONzdrV
         kdKvVcj4xdo9cxEKt+ts0rOSYMrE2s1ORu7L6YPNZUdi4EklghSV0wOMYPNVk1dIyZun
         HymA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ga2nc14R;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id e64-v6si747572ybb.2.2018.03.06.23.55.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 23:55:27 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ga2nc14R;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x244.google.com with SMTP id v9-v6so872120plp.12
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Mar 2018 23:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0G/+C37lFj64a1tRCCEl1FZbt/sPBI/WxpBV8C4zFfI=;
        b=ga2nc14Rn30fUyZGR8TpTVEZecyn58hEE1ERNIfzuJpc4Sy8RGo96/3Dc3hno039xM
         UdE7TcqcQs+7NBGzdP61eM8EWCcuR6iyDVkdGJgpg+esmKpJp3d8l/JSiLjPoOYyVHHN
         WUyVM/lpLPhSVm/d2si1p8VmXve2cs1Ssk9i7L9phURb3xAzBFZ7omc1ZZDvtaX9/uCP
         2RDVvS+pQ36Iq26AFW97VrgdmIRkjQoxuYX+PX2Ake3V9fnJifAdf1PbbS7s5V8hzgcV
         X8OyOAoxxOsk+he4ZNHP00p/MHJfMamDe3wgjmdO/FOYobIVoyZk3RGkkN0bD1QpGJxX
         COlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0G/+C37lFj64a1tRCCEl1FZbt/sPBI/WxpBV8C4zFfI=;
        b=ejrQxLZNl4zRFPCJUiScuA0pvulVH6VMwqEErDt6uADJmH8oDom5FPSmrqZagbCvN6
         SXZR52Y4Y55/1S8uohIQhbw3JETdpBLUtl/cJr3vqH+f2D7wc4fO8iHHGp6uBDXEjsjQ
         MSBtVZadV5+zsarExhgQX2n3i80sWMi9iDGJbY3PTyoDEa5GG9ZMFMxhUjDg32E1ZgHE
         3sbY5YvOiQ1ocoT8YMfLJ1AgNxELukSJrq/75hmw3XayUJNbEw/R3gMolEGRlkVujfHV
         1gXvuRHhJmbsDDGrMTTRgvBkQmY7ZWnEjpHC88UoPd4xI2QbN1UhjIj5lQI61a6Vtt0i
         1aMg==
X-Gm-Message-State: AElRT7Ey6EuWlA68UxAOHg6Qlh2aHGI4YgF7kw6E9j8Itp7Sii6cfN+6
	nq4L9z1tJimqS6gjj3zY/dsIow==
X-Received: by 2002:a17:902:9a08:: with SMTP id v8-v6mr12006177plp.252.1520409326166;
        Tue, 06 Mar 2018 23:55:26 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-21-83.resnet.ucsb.edu. [169.231.21.83])
        by smtp.gmail.com with ESMTPSA id r30sm35386151pff.7.2018.03.06.23.55.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Mar 2018 23:55:25 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: rtl8188eu: use __func__ instead of function name
Date: Tue,  6 Mar 2018 23:54:51 -0800
Message-Id: <1520409291-61288-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace occurrence of the function name in a string by reference to
__func__, to improve robustness and to conform to the Linux kernel coding
style. Issue found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 12 +++----
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c | 12 +++----
 drivers/staging/rtl8188eu/core/rtw_mlme.c      | 10 +++---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c  | 22 ++++++------
 drivers/staging/rtl8188eu/core/rtw_recv.c      | 44 +++++++++++------------
 drivers/staging/rtl8188eu/core/rtw_security.c  | 10 +++---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c   |  4 +--
 drivers/staging/rtl8188eu/core/rtw_xmit.c      | 50 +++++++++++++-------------
 8 files changed, 82 insertions(+), 82 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index 805470e..0b0fdcc 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -952,7 +952,7 @@ void rtw_macaddr_cfg(u8 *mac_addr)
 		DBG_88E("MAC Address from efuse error, assign default one !!!\n");
 	}
 
-	DBG_88E("rtw_macaddr_cfg MAC Address  = %pM\n", (mac_addr));
+	DBG_88E("%s MAC Address  = %pM\n", __func__, (mac_addr));
 }
 
 static int rtw_get_cipher_info(struct wlan_network *pnetwork)
@@ -965,7 +965,7 @@ static int rtw_get_cipher_info(struct wlan_network *pnetwork)
 	pbuf = rtw_get_wpa_ie(&pnetwork->network.IEs[12], &wpa_ielen, pnetwork->network.IELength - 12);
 
 	if (pbuf && (wpa_ielen > 0)) {
-		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_cipher_info: wpa_ielen: %d", wpa_ielen));
+		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: wpa_ielen: %d", __func__, wpa_ielen));
 		if (_SUCCESS == rtw_parse_wpa_ie(pbuf, wpa_ielen + 2, &group_cipher, &pairwise_cipher, &is8021x)) {
 			pnetwork->BcnInfo.pairwise_cipher = pairwise_cipher;
 			pnetwork->BcnInfo.group_cipher = group_cipher;
@@ -1014,10 +1014,10 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 		pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_OPENSYS;
 	}
 	rtw_get_sec_ie(pnetwork->network.IEs, pnetwork->network.IELength, NULL, &rsn_len, NULL, &wpa_len);
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: ssid =%s\n", pnetwork->network.Ssid.Ssid));
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len));
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: ssid =%s\n", pnetwork->network.Ssid.Ssid));
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: ssid =%s\n", __func__, pnetwork->network.Ssid.Ssid));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: wpa_len =%d rsn_len =%d\n", __func__, wpa_len, rsn_len));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: ssid =%s\n", __func__, pnetwork->network.Ssid.Ssid));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: wpa_len =%d rsn_len =%d\n", __func__, wpa_len, rsn_len));
 
 	if (rsn_len > 0) {
 		pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WPA2;
diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
index 330e4d5..2183c61 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
@@ -207,7 +207,7 @@ u8 rtw_set_802_11_bssid(struct adapter *padapter, u8 *bssid)
 
 exit:
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_,
-		 ("rtw_set_802_11_bssid: status=%d\n", status));
+		 ("%s: status=%d\n", __func__, status));
 
 
 	return status;
@@ -316,7 +316,7 @@ u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid *ssid)
 
 exit:
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_,
-		 ("-rtw_set_802_11_ssid: status =%d\n", status));
+		 ("-%s: status =%d\n", __func__, status));
 	return status;
 }
 
@@ -418,7 +418,7 @@ u8 rtw_set_802_11_bssid_list_scan(struct adapter *padapter, struct ndis_802_11_s
 	u8	res = true;
 
 
-	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("+rtw_set_802_11_bssid_list_scan(), fw_state =%x\n", get_fwstate(pmlmepriv)));
+	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("+%s(), fw_state =%x\n", __func__, get_fwstate(pmlmepriv)));
 
 	if (!padapter) {
 		res = false;
@@ -426,14 +426,14 @@ u8 rtw_set_802_11_bssid_list_scan(struct adapter *padapter, struct ndis_802_11_s
 	}
 	if (!padapter->hw_init_completed) {
 		res = false;
-		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("\n === rtw_set_802_11_bssid_list_scan:hw_init_completed == false ===\n"));
+		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("\n === %s:hw_init_completed == false ===\n", __func__));
 		goto exit;
 	}
 
 	if ((check_fwstate(pmlmepriv, _FW_UNDER_SURVEY|_FW_UNDER_LINKING)) ||
 	    (pmlmepriv->LinkDetectInfo.bBusyTraffic)) {
 		/*  Scan or linking is in progress, do nothing. */
-		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("rtw_set_802_11_bssid_list_scan fail since fw_state = %x\n", get_fwstate(pmlmepriv)));
+		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("%s fail since fw_state = %x\n", __func__, get_fwstate(pmlmepriv)));
 		res = true;
 
 		if (check_fwstate(pmlmepriv,
@@ -473,7 +473,7 @@ u8 rtw_set_802_11_authentication_mode(struct adapter *padapter, enum ndis_802_11
 	psecuritypriv->ndisauthtype = authmode;
 
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
-		 ("rtw_set_802_11_authentication_mode:psecuritypriv->ndisauthtype=%d",
+		 ("%s:psecuritypriv->ndisauthtype=%d", __func__,
 		 psecuritypriv->ndisauthtype));
 
 	if (psecuritypriv->ndisauthtype > 3)
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 1cd49e2..bf0ccd3 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -790,7 +790,7 @@ void rtw_indicate_connect(struct adapter *padapter)
 {
 	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("+rtw_indicate_connect\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("+%s\n", __func__));
 
 	pmlmepriv->to_join = false;
 
@@ -806,7 +806,7 @@ void rtw_indicate_connect(struct adapter *padapter)
 
 	rtw_set_scan_deny(padapter, 3000);
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("-rtw_indicate_connect: fw_state=0x%08x\n", get_fwstate(pmlmepriv)));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("-%s: fw_state=0x%08x\n", __func__, get_fwstate(pmlmepriv)));
 }
 
 /*
@@ -1756,7 +1756,7 @@ int rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 	uint ndissecuritytype = psecuritypriv->ndisencryptstatus;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_,
-		 ("+rtw_restruct_sec_ie: ndisauthmode=%d ndissecuritytype=%d\n",
+		 ("+%s: ndisauthmode=%d ndissecuritytype=%d\n", __func__,
 		  ndisauthmode, ndissecuritytype));
 
 	/* copy fixed ie only */
@@ -1983,7 +1983,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len)
 	if ((!pmlmeinfo->HT_info_enable) || (!pmlmeinfo->HT_caps_enable))
 		return;
 
-	DBG_88E("+rtw_update_ht_cap()\n");
+	DBG_88E("+%s()\n", __func__);
 
 	/* maybe needs check if ap supports rx ampdu. */
 	if ((!phtpriv->ampdu_enable) && (pregistrypriv->ampdu_enable == 1)) {
@@ -2057,7 +2057,7 @@ void rtw_issue_addbareq_cmd(struct adapter *padapter, struct xmit_frame *pxmitfr
 		issued |= (phtpriv->candidate_tid_bitmap >> priority) & 0x1;
 
 		if (issued == 0) {
-			DBG_88E("rtw_issue_addbareq_cmd, p=%d\n", priority);
+			DBG_88E("%s, p=%d\n", __func__, priority);
 			psta->htpriv.candidate_tid_bitmap |= BIT((u8)priority);
 			rtw_addbareq_cmd(padapter, (u8)priority, pattrib->ra);
 		}
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 522b999..19266cf 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -623,7 +623,7 @@ static int issue_probereq(struct adapter *padapter,
 	int	bssrate_len = 0;
 	u8	bc_addr[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+issue_probereq\n"));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+%s\n", __func__));
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
 	if (!pmgntframe)
@@ -2253,7 +2253,7 @@ static void start_create_ibss(struct adapter *padapter)
 			pmlmeinfo->state |= WIFI_FW_ASSOC_SUCCESS;
 		}
 	} else {
-		DBG_88E("start_create_ibss, invalid cap:%x\n", caps);
+		DBG_88E("%s, invalid cap:%x\n", __func__, caps);
 		return;
 	}
 }
@@ -2705,7 +2705,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 	if ((pmlmeinfo->state&0x03) != WIFI_FW_AP_STATE)
 		return _FAIL;
 
-	DBG_88E("+OnAuth\n");
+	DBG_88E("+%s\n", __func__);
 
 	sa = GetAddr2Ptr(pframe);
 
@@ -4144,13 +4144,13 @@ void mgt_dispatcher(struct adapter *padapter, struct recv_frame *precv_frame)
 	struct sta_info *psta = rtw_get_stainfo(&padapter->stapriv, GetAddr2Ptr(pframe));
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-		 ("+mgt_dispatcher: type(0x%x) subtype(0x%x)\n",
+		 ("+%s: type(0x%x) subtype(0x%x)\n", __func__,
 		  (unsigned int)GetFrameType(pframe),
 		  (unsigned int)GetFrameSubType(pframe)));
 
 	if (GetFrameType(pframe) != WIFI_MGT_TYPE) {
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-			 ("mgt_dispatcher: type(0x%x) error!\n",
+			 ("%s: type(0x%x) error!\n", __func__,
 			  (unsigned int)GetFrameType(pframe)));
 		return;
 	}
@@ -4355,7 +4355,7 @@ void report_join_res(struct adapter *padapter, int res)
 	pjoinbss_evt->network.join_res	= res;
 	pjoinbss_evt->network.aid = res;
 
-	DBG_88E("report_join_res(%d)\n", res);
+	DBG_88E("%s(%d)\n", __func__, res);
 
 
 	rtw_joinbss_event_prehandle(padapter, (u8 *)&pjoinbss_evt->network);
@@ -4415,7 +4415,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr,
 
 	pdel_sta_evt->mac_id = mac_id;
 
-	DBG_88E("report_del_sta_event: delete STA, mac_id =%d\n", mac_id);
+	DBG_88E("%s: delete STA, mac_id =%d\n", __func__, mac_id);
 
 	rtw_enqueue_cmd(pcmdpriv, pcmd_obj);
 }
@@ -4460,7 +4460,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr,
 	ether_addr_copy((unsigned char *)(&(padd_sta_evt->macaddr)), MacAddr);
 	padd_sta_evt->cam_id = cam_idx;
 
-	DBG_88E("report_add_sta_event: add STA\n");
+	DBG_88E("%s: add STA\n", __func__);
 
 	rtw_enqueue_cmd(pcmdpriv, pcmd_obj);
 }
@@ -4852,7 +4852,7 @@ void link_timer_hdl(struct timer_list *t)
 	struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
 
 	if (pmlmeinfo->state & WIFI_FW_AUTH_NULL) {
-		DBG_88E("link_timer_hdl:no beacon while connecting\n");
+		DBG_88E("%s:no beacon while connecting\n", __func__);
 		pmlmeinfo->state = WIFI_FW_NULL_STATE;
 		report_join_res(padapter, -3);
 	} else if (pmlmeinfo->state & WIFI_FW_AUTH_STATE) {
@@ -4863,7 +4863,7 @@ void link_timer_hdl(struct timer_list *t)
 			return;
 		}
 
-		DBG_88E("link_timer_hdl: auth timeout and try again\n");
+		DBG_88E("%s: auth timeout and try again\n", __func__);
 		pmlmeinfo->auth_seq = 1;
 		issue_auth(padapter, NULL, 0);
 		set_link_timer(pmlmeext, REAUTH_TO);
@@ -4875,7 +4875,7 @@ void link_timer_hdl(struct timer_list *t)
 			return;
 		}
 
-		DBG_88E("link_timer_hdl: assoc timeout and try again\n");
+		DBG_88E("%s: assoc timeout and try again\n", __func__);
 		issue_assocreq(padapter);
 		set_link_timer(pmlmeext, REASSOC_TO);
 	}
diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index a2ef9ef..c6857a5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -454,7 +454,7 @@ static struct recv_frame *portctrl(struct adapter *adapter,
 
 	prtnframe = NULL;
 
-	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########portctrl:adapter->securitypriv.dot11AuthAlgrthm=%d\n", adapter->securitypriv.dot11AuthAlgrthm));
+	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########%s:adapter->securitypriv.dot11AuthAlgrthm=%d\n", __func__, adapter->securitypriv.dot11AuthAlgrthm));
 
 	if (auth_alg == 2) {
 		/* get ether_type */
@@ -465,7 +465,7 @@ static struct recv_frame *portctrl(struct adapter *adapter,
 		if ((psta != NULL) && (psta->ieee8021x_blocked)) {
 			/* blocked */
 			/* only accept EAPOL frame */
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########portctrl:psta->ieee8021x_blocked==1\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########%s:psta->ieee8021x_blocked==1\n", __func__));
 
 			if (ether_type == eapol_type) {
 				prtnframe = precv_frame;
@@ -477,23 +477,23 @@ static struct recv_frame *portctrl(struct adapter *adapter,
 		} else {
 			/* allowed */
 			/* check decryption status, and decrypt the frame if needed */
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########portctrl:psta->ieee8021x_blocked==0\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########%s:psta->ieee8021x_blocked==0\n", __func__));
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-				 ("portctrl:precv_frame->hdr.attrib.privacy=%x\n",
-				 precv_frame->attrib.privacy));
+				 ("%s:precv_frame->hdr.attrib.privacy=%x\n",
+				  __func__, precv_frame->attrib.privacy));
 
 			if (pattrib->bdecrypted == 0)
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("portctrl:prxstat->decrypted=%x\n", pattrib->bdecrypted));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("%s:prxstat->decrypted=%x\n", __func__, pattrib->bdecrypted));
 
 			prtnframe = precv_frame;
 			/* check is the EAPOL frame or not (Rekey) */
 			if (ether_type == eapol_type) {
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("########portctrl:ether_type==0x888e\n"));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("########%s:ether_type==0x888e\n", __func__));
 				/* check Rekey */
 
 				prtnframe = precv_frame;
 			} else {
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########portctrl:ether_type=0x%04x\n", ether_type));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########%s:ether_type=0x%04x\n", __func__, ether_type));
 			}
 		}
 	} else {
@@ -512,14 +512,14 @@ static int recv_decache(struct recv_frame *precv_frame, u8 bretry,
 		(precv_frame->attrib.frag_num & 0xf);
 
 	if (tid > 15) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("recv_decache, (tid>15)! seq_ctrl=0x%x, tid=0x%x\n", seq_ctrl, tid));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("%s, (tid>15)! seq_ctrl=0x%x, tid=0x%x\n", __func__, seq_ctrl, tid));
 
 		return _FAIL;
 	}
 
 	if (1) {/* if (bretry) */
 		if (seq_ctrl == prxcache->tid_rxseq[tid]) {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("recv_decache, seq_ctrl=0x%x, tid=0x%x, tid_rxseq=0x%x\n", seq_ctrl, tid, prxcache->tid_rxseq[tid]));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("%s, seq_ctrl=0x%x, tid=0x%x, tid_rxseq=0x%x\n", __func__, seq_ctrl, tid, prxcache->tid_rxseq[tid]));
 
 			return _FAIL;
 		}
@@ -718,7 +718,7 @@ int sta2sta_data_frame(struct adapter *adapter, struct recv_frame *precv_frame,
 		*psta = rtw_get_stainfo(pstapriv, sta_addr); /*  get ap_info */
 
 	if (*psta == NULL) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under sta2sta_data_frame ; drop pkt\n"));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under %s ; drop pkt\n", __func__));
 		ret = _FAIL;
 		goto exit;
 	}
@@ -754,7 +754,7 @@ static int ap2sta_data_frame(
 		/*  da should be for me */
 		if ((memcmp(myhwaddr, pattrib->dst, ETH_ALEN)) && (!bmcast)) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-				 (" ap2sta_data_frame:  compare DA fail; DA=%pM\n", (pattrib->dst)));
+				 (" %s:  compare DA fail; DA=%pM\n", __func__, (pattrib->dst)));
 			ret = _FAIL;
 			goto exit;
 		}
@@ -764,7 +764,7 @@ static int ap2sta_data_frame(
 		    !memcmp(mybssid, "\x0\x0\x0\x0\x0\x0", ETH_ALEN) ||
 		     (memcmp(pattrib->bssid, mybssid, ETH_ALEN))) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-				 (" ap2sta_data_frame:  compare BSSID fail ; BSSID=%pM\n", (pattrib->bssid)));
+				 (" %s:  compare BSSID fail ; BSSID=%pM\n", __func__, (pattrib->bssid)));
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("mybssid=%pM\n", (mybssid)));
 
 			if (!bmcast) {
@@ -1009,7 +1009,7 @@ static int validate_recv_mgnt_frame(struct adapter *padapter,
 {
 	struct sta_info *psta;
 
-	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("+validate_recv_mgnt_frame\n"));
+	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("+%s\n", __func__));
 
 	precv_frame = recvframe_chk_defrag(padapter, precv_frame);
 	if (!precv_frame) {
@@ -1141,7 +1141,7 @@ static int validate_recv_data_frame(struct adapter *adapter,
 	}
 
 	if (pattrib->privacy) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("validate_recv_data_frame:pattrib->privacy=%x\n", pattrib->privacy));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("%s:pattrib->privacy=%x\n", __func__, pattrib->privacy));
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n ^^^^^^^^^^^IS_MCAST(pattrib->ra(0x%02x))=%d^^^^^^^^^^^^^^^6\n", pattrib->ra[0], IS_MCAST(pattrib->ra)));
 
 		GET_ENCRY_ALGO(psecuritypriv, psta, pattrib->encrypt, IS_MCAST(pattrib->ra));
@@ -1714,8 +1714,8 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
 
 		if (!SN_LESS(preorder_ctrl->indicate_seq, pattrib->seq_num)) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_,
-				 ("recv_indicatepkts_in_order: indicate=%d seq=%d amsdu=%d\n",
-				  preorder_ctrl->indicate_seq, pattrib->seq_num, pattrib->amsdu));
+				 ("%s: indicate=%d seq=%d amsdu=%d\n",
+				  __func__, preorder_ctrl->indicate_seq, pattrib->seq_num, pattrib->amsdu));
 			plist = plist->next;
 			list_del_init(&(prframe->list));
 
@@ -1762,7 +1762,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 		    (pattrib->ack_policy != 0)) {
 			if ((!padapter->bDriverStopped) &&
 			    (!padapter->bSurpriseRemoved)) {
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@  recv_indicatepkt_reorder -recv_func recv_indicatepkt\n"));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@  %s -recv_func recv_indicatepkt\n", __func__));
 
 				rtw_recv_indicatepkt(padapter, prframe);
 				return _SUCCESS;
@@ -1792,7 +1792,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 	spin_lock_bh(&ppending_recvframe_queue->lock);
 
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_,
-		 ("recv_indicatepkt_reorder: indicate=%d seq=%d\n",
+		 ("%s: indicate=%d seq=%d\n", __func__,
 		  preorder_ctrl->indicate_seq, pattrib->seq_num));
 
 	/* s2. check if winstart_b(indicate_seq) needs to been updated */
@@ -1884,10 +1884,10 @@ static int process_recv_indicatepkts(struct adapter *padapter,
 		if ((!padapter->bDriverStopped) &&
 		    (!padapter->bSurpriseRemoved)) {
 			/* indicate this recv_frame */
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ process_recv_indicatepkts- recv_func recv_indicatepkt\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ %s- recv_func recv_indicatepkt\n", __func__));
 			rtw_recv_indicatepkt(padapter, prframe);
 		} else {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ process_recv_indicatepkts- recv_func free_indicatepkt\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ %s- recv_func free_indicatepkt\n", __func__));
 
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("recv_func:bDriverStopped(%d) OR bSurpriseRemoved(%d)", padapter->bDriverStopped, padapter->bSurpriseRemoved));
 			retval = _FAIL;
@@ -2012,7 +2012,7 @@ s32 rtw_recv_entry(struct recv_frame *precvframe)
 
 	ret = recv_func(padapter, precvframe);
 	if (ret == _FAIL) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("rtw_recv_entry: recv_func return fail!!!\n"));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("%s: recv_func return fail!!!\n", __func__));
 		goto _recv_entry_drop;
 	}
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index f63a6e5..67a2490 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -603,7 +603,7 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 			stainfo = rtw_get_stainfo(&padapter->stapriv, &pattrib->ra[0]);
 
 		if (stainfo != NULL) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_tkip_encrypt: stainfo!= NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
 
 			if (IS_MCAST(pattrib->ra))
 				prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
@@ -643,7 +643,7 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 				}
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_tkip_encrypt: stainfo==NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n", __func__));
 			res = _FAIL;
 		}
 	}
@@ -683,7 +683,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 				}
 				prwskey = psecuritypriv->dot118021XGrpKey[prxattrib->key_index].skey;
 			} else {
-				RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_tkip_decrypt: stainfo!= NULL!!!\n"));
+				RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
 				prwskey = &stainfo->dot118021x_UncstKey.skey[0];
 			}
 
@@ -1246,7 +1246,7 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 			stainfo = rtw_get_stainfo(&padapter->stapriv, &pattrib->ra[0]);
 
 		if (stainfo) {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_encrypt: stainfo!= NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo!= NULL!!!\n", __func__));
 
 			if (IS_MCAST(pattrib->ra))
 				prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
@@ -1266,7 +1266,7 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 				}
 			}
 		} else{
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_encrypt: stainfo==NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n", __func__));
 			res = _FAIL;
 		}
 	}
diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 2fd2a9e..f42aa4e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -194,9 +194,9 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 		_rtw_init_stainfo(psta);
 		memcpy(psta->hwaddr, hwaddr, ETH_ALEN);
 		index = wifi_mac_hash(hwaddr);
-		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_, ("rtw_alloc_stainfo: index=%x", index));
+		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_info_, ("%s: index=%x", __func__, index));
 		if (index >= NUM_STA) {
-			RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_, ("ERROR => rtw_alloc_stainfo: index >= NUM_STA"));
+			RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_, ("ERROR => %s: index >= NUM_STA", __func__));
 			psta = NULL;
 			goto exit;
 		}
diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 1e4ee20..3c03448 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -455,7 +455,7 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 				    ((tmp[21] == 67) && (tmp[23] == 68))) {
 					/*  68 : UDP BOOTP client */
 					/*  67 : UDP BOOTP server */
-					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====================== update_attrib: get DHCP Packet\n"));
+					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====================== %s: get DHCP Packet\n", __func__));
 					/*  Use low rate to send DHCP packet. */
 					pattrib->dhcp_pkt = 1;
 				}
@@ -579,16 +579,16 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 	}
 
 	RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
-		 ("update_attrib: encrypt=%d\n", pattrib->encrypt));
+		 ("%s: encrypt=%d\n", __func__, pattrib->encrypt));
 
 	if (pattrib->encrypt && !psecuritypriv->hw_decrypted) {
 		pattrib->bswenc = true;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
-			 ("update_attrib: encrypt=%d bswenc = true\n",
+			 ("%s: encrypt=%d bswenc = true\n", __func__,
 			  pattrib->encrypt));
 	} else {
 		pattrib->bswenc = false;
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("update_attrib: bswenc = false\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("%s: bswenc = false\n", __func__));
 	}
 
 	update_attrib_phy_info(pattrib, psta);
@@ -690,11 +690,11 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 				}
 			}
 			rtw_secgetmic(&micdata, &mic[0]);
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("xmitframe_addmic: before add mic code!!!\n"));
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("xmitframe_addmic: pattrib->last_txcmdsz=%d!!!\n", pattrib->last_txcmdsz));
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("xmitframe_addmic: mic[0]=0x%.2x , mic[1]=0x%.2x , mic[2]= 0x%.2x, mic[3]=0x%.2x\n\
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: before add mic code!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: pattrib->last_txcmdsz=%d!!!\n", __func__, pattrib->last_txcmdsz));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: mic[0]=0x%.2x , mic[1]=0x%.2x , mic[2]= 0x%.2x, mic[3]=0x%.2x\n\
   mic[4]= 0x%.2x , mic[5]= 0x%.2x , mic[6]= 0x%.2x , mic[7]= 0x%.2x !!!!\n",
-				mic[0], mic[1], mic[2], mic[3], mic[4], mic[5], mic[6], mic[7]));
+				__func__, mic[0], mic[1], mic[2], mic[3], mic[4], mic[5], mic[6], mic[7]));
 			/* add mic code  and add the mic code length in last_txcmdsz */
 
 			memcpy(payload, &mic[0], 8);
@@ -710,7 +710,7 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 					 *(payload + curfragnum + 4), *(payload + curfragnum + 5),
 					 *(payload + curfragnum + 6), *(payload + curfragnum + 7)));
 			} else {
-				RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("xmitframe_addmic: rtw_get_stainfo==NULL!!!\n"));
+				RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
 			}
 	}
 
@@ -724,7 +724,7 @@ static s32 xmitframe_swencrypt(struct adapter *padapter, struct xmit_frame *pxmi
 
 
 	if (pattrib->bswenc) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("### xmitframe_swencrypt\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("### %s\n", __func__));
 		switch (pattrib->encrypt) {
 		case _WEP40_:
 		case _WEP104_:
@@ -972,8 +972,8 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 	mem_start = pbuf_start +	hw_hdr_offset;
 
 	if (rtw_make_wlanhdr(padapter, mem_start, pattrib) == _FAIL) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("rtw_xmitframe_coalesce: rtw_make_wlanhdr fail; drop pkt\n"));
-		DBG_88E("rtw_xmitframe_coalesce: rtw_make_wlanhdr fail; drop pkt\n");
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: rtw_make_wlanhdr fail; drop pkt\n", __func__));
+		DBG_88E("%s: rtw_make_wlanhdr fail; drop pkt\n", __func__);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1017,8 +1017,8 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 			memcpy(pframe, pattrib->iv, pattrib->iv_len);
 
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_notice_,
-				 ("rtw_xmitframe_coalesce: keyid=%d pattrib->iv[3]=%.2x pframe=%.2x %.2x %.2x %.2x\n",
-				  padapter->securitypriv.dot11PrivacyKeyIndex, pattrib->iv[3], *pframe, *(pframe+1), *(pframe+2), *(pframe+3)));
+				 ("%s: keyid=%d pattrib->iv[3]=%.2x pframe=%.2x %.2x %.2x %.2x\n",
+				  __func__, padapter->securitypriv.dot11PrivacyKeyIndex, pattrib->iv[3], *pframe, *(pframe+1), *(pframe+2), *(pframe+3)));
 
 			pframe += pattrib->iv_len;
 
@@ -1345,7 +1345,7 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 
 
 	if (!pxmitframe) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====== rtw_free_xmitframe():pxmitframe == NULL!!!!!!!!!!\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====== %s:pxmitframe == NULL!!!!!!!!!!\n", __func__));
 		goto exit;
 	}
 
@@ -1361,7 +1361,7 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 	list_add_tail(&pxmitframe->list, get_list_head(pfree_xmit_queue));
 
 	pxmitpriv->free_xmitframe_cnt++;
-	RT_TRACE(_module_rtl871x_xmit_c_, _drv_debug_, ("rtw_free_xmitframe():free_xmitframe_cnt=%d\n", pxmitpriv->free_xmitframe_cnt));
+	RT_TRACE(_module_rtl871x_xmit_c_, _drv_debug_, ("%s:free_xmitframe_cnt=%d\n", __func__, pxmitpriv->free_xmitframe_cnt));
 
 	spin_unlock_bh(&pfree_xmit_queue->lock);
 
@@ -1400,7 +1400,7 @@ s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitfram
 {
 	if (rtw_xmit_classifier(padapter, pxmitframe) == _FAIL) {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
-			 ("rtw_xmitframe_enqueue: drop xmit pkt for classifier fail\n"));
+			 ("%s: drop xmit pkt for classifier fail\n", __func__));
 /* 		pxmitframe->pkt = NULL; */
 		return _FAIL;
 	}
@@ -1490,26 +1490,26 @@ struct tx_servq *rtw_get_sta_pending(struct adapter *padapter, struct sta_info *
 	case 2:
 		ptxservq = &psta->sta_xmitpriv.bk_q;
 		*(ac) = 3;
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_get_sta_pending : BK\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("%s : BK\n", __func__));
 		break;
 	case 4:
 	case 5:
 		ptxservq = &psta->sta_xmitpriv.vi_q;
 		*(ac) = 1;
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_get_sta_pending : VI\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("%s : VI\n", __func__));
 		break;
 	case 6:
 	case 7:
 		ptxservq = &psta->sta_xmitpriv.vo_q;
 		*(ac) = 0;
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_get_sta_pending : VO\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("%s : VO\n", __func__));
 		break;
 	case 0:
 	case 3:
 	default:
 		ptxservq = &psta->sta_xmitpriv.be_q;
 		*(ac) = 2;
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_get_sta_pending : BE\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("%s : BE\n", __func__));
 	break;
 	}
 
@@ -1539,8 +1539,8 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 
 	if (!psta) {
 		res = _FAIL;
-		DBG_88E("rtw_xmit_classifier: psta == NULL\n");
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("rtw_xmit_classifier: psta == NULL\n"));
+		DBG_88E("%s: psta == NULL\n", __func__);
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: psta == NULL\n", __func__));
 		goto exit;
 	}
 
@@ -1646,7 +1646,7 @@ s32 rtw_xmit(struct adapter *padapter, struct sk_buff **ppkt)
 
 	pxmitframe = rtw_alloc_xmitframe(pxmitpriv);
 	if (!pxmitframe) {
-		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: no more pxmitframe\n"));
+		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: no more pxmitframe\n", __func__));
 		DBG_88E("DBG_TX_DROP_FRAME %s no more pxmitframe\n", __func__);
 		return -1;
 	}
@@ -1654,7 +1654,7 @@ s32 rtw_xmit(struct adapter *padapter, struct sk_buff **ppkt)
 	res = update_attrib(padapter, *ppkt, &pxmitframe->attrib);
 
 	if (res == _FAIL) {
-		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: update attrib fail\n"));
+		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: update attrib fail\n", __func__));
 		rtw_free_xmitframe(pxmitpriv, pxmitframe);
 		return -1;
 	}
-- 
2.7.4



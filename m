X-GM-THRID: 6529536591554150400
X-Received: by 10.31.6.8 with SMTP id 8mr7591612vkg.55.1520276207918;
        Mon, 05 Mar 2018 10:56:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.35.86 with SMTP id 80ls1760727uae.12.gmail; Mon, 05 Mar
 2018 10:56:46 -0800 (PST)
X-Google-Smtp-Source: AG47ELsXOd9IJG7BSCc9qj6oMjI2kHrB76MNnS/RpJf6wnoWQkq9OScQm8uYmTbhdUp87FHz8n4e
X-Received: by 10.176.27.175 with SMTP id k47mr4643021uai.108.1520276206939;
        Mon, 05 Mar 2018 10:56:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520276206; cv=none;
        d=google.com; s=arc-20160816;
        b=g8Jji0W4PhjRXjqSEh8lES9qEwe28jrP7wcl54Afyu9AW7cNtOW7NNou3rv2JR2zT9
         bJt/rBfWKuB1rIS7owKGyCz7967FQv7EcjKStB4U86HaZCAaPT/ih5nGotF354UWC3WP
         JFAUKV6NsaKsQ1zhkg71RkklGYPF1tAkGhUeuDx2bPF6R4JEVEyUN8o71hh3eW0HWDte
         U/4C9gIfvcdMUdYUsneeP8bYIuKarQ4W73Xaic2CVNEX/zxYZjUKLn1XJlMhax7YNMZy
         vUMBNBbHvahkr+54/AP0K4vGxOia3el6ubaXX14XdovwVMax0FCpY9liLwsvb7+MSuXI
         mJow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=VwmaVrAjRSKrCrq3nwXmysPNeki7MWY4gWse3hRpXvg=;
        b=Lhc01U24kHmmMIs6KoeLwoGnfg8EUx81xBDxrYT1XUeoN890RMybFx4ol0I/ZxGNz9
         vhjzaK8iNi2iELPUKV23aD5xFA3Mj9BbE/0gavuV62cLcRLMKy8Cs3JsLyTfn3CqJr7l
         blNvwjyRpLbeUGUTPoPEzBLwyW9Wt0ZNcrGOmFxFFPp2cnkEnaruNGDb3YCAzDpB87JD
         NUJ4fPIPkUkH8rZB2zKEj7qLq5eGCG2PApLBc1KwZ2wQ8naitw9CyQmbVs0GQjVtqVOP
         lCleSWqRkv2dHEkoQ9gYDU1XMjQzakbEpVzCgg+eSx+F6lnPp1B7mS4hn6GXO3hqYNcN
         Xo9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AmlO8VaQ;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x229.google.com (mail-pg0-x229.google.com. [2607:f8b0:400e:c05::229])
        by gmr-mx.google.com with ESMTPS id c184si972993vkf.5.2018.03.05.10.56.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Mar 2018 10:56:46 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) client-ip=2607:f8b0:400e:c05::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AmlO8VaQ;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x229.google.com with SMTP id q27so7190779pgn.8
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Mar 2018 10:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VwmaVrAjRSKrCrq3nwXmysPNeki7MWY4gWse3hRpXvg=;
        b=AmlO8VaQmmyZciNxfbBdQ8A7653OJtuEpzb7XcdMTCZfuJF9SRW3aP1vTsQxXcpTJl
         C76Tsh5v6yzZPpICW7lvpsUQBICO1MdBnJlyEU1/Pln0Wg2EQQwbaPhEROcjKNoPOhJK
         y4knVopQblvVrTCXDtBFiwZ02JzV4QRnJFfrJTtg8BeOUMQB1HtswU7E9DMq67sxHkZ4
         dw53Nf9322rTktxnUqhYVDkurlJqdSx9XBO/VjQeCK2zdaSzqedcj5yJ4HYYzZz9v03x
         Arj0Wl9XgQAkI9kuSUJ4OqIAYdIg5p6HWAwbPhT+lTXyb7s5AlVphBNihWEY+kpGWcGj
         r2GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VwmaVrAjRSKrCrq3nwXmysPNeki7MWY4gWse3hRpXvg=;
        b=KttlojQGRZ+xO7Cg/1JxAqzGLmCDVqaFinFm4VLU2IBru9qXqjmIzm/rOWYB2ULisB
         FokQa7rwoeqCGlOw3lsKB+ssD6nhhhAV2dDZccjdsO2R1I36B2NLoxLl0t+QVQbUiYIc
         8rti+L/qmWbjRprHJWDQnQ/obJOdqlUf1B+uZqqDnCPYsDsPl+2Gd5GZMv5zAIctwOC/
         Zma46Se1g7LX/ZcYwbNS3ta3xCJY1yuBsIjc6iaPCqzmgBo27W2alstv7urkxkGOOK8q
         zV98Wh+cQmVP2WmTxwkRo59g54GflKI3/3YLig2YM4X5hDoisw/pbNgizaD5xUPhcWP2
         J8Bg==
X-Gm-Message-State: APf1xPCfPXpwRzR0bTF1ofG6pWFk3I72zO1Vb0rVMv8apaHSn3gybemf
	NVzsOdLS4zuZ+redkR/6K5D6Iw==
X-Received: by 10.101.74.74 with SMTP id a10mr13401153pgu.32.1520276206284;
        Mon, 05 Mar 2018 10:56:46 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-21-83.resnet.ucsb.edu. [169.231.21.83])
        by smtp.gmail.com with ESMTPSA id u10sm4560232pgr.83.2018.03.05.10.56.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Mar 2018 10:56:45 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: rtl8188eu: replace NULL comparison with variable
Date: Mon,  5 Mar 2018 10:56:13 -0800
Message-Id: <1520276173-54780-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace NULL comparison of the variable with the variable name or
!variable to conform to the Linux kernel coding style. Issue found using
checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c |  4 +--
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c |  2 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c  | 50 +++++++++++++-------------
 drivers/staging/rtl8188eu/core/rtw_recv.c      | 20 +++++------
 drivers/staging/rtl8188eu/core/rtw_security.c  |  4 +--
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c |  6 ++--
 drivers/staging/rtl8188eu/core/rtw_xmit.c      | 20 +++++------
 7 files changed, 53 insertions(+), 53 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index bb867a9..805470e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -577,7 +577,7 @@ u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen)
 	u8 match = false;
 	u8 eid, wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
 
-	if (ie_ptr == NULL)
+	if (!ie_ptr)
 		return match;
 
 	eid = ie_ptr[0];
@@ -926,7 +926,7 @@ void rtw_macaddr_cfg(u8 *mac_addr)
 {
 	u8 mac[ETH_ALEN];
 
-	if (mac_addr == NULL)
+	if (!mac_addr)
 		return;
 
 	if (rtw_initmac && mac_pton(rtw_initmac, mac)) {
diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
index 767928a..330e4d5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
@@ -420,7 +420,7 @@ u8 rtw_set_802_11_bssid_list_scan(struct adapter *padapter, struct ndis_802_11_s
 
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("+rtw_set_802_11_bssid_list_scan(), fw_state =%x\n", get_fwstate(pmlmepriv)));
 
-	if (padapter == NULL) {
+	if (!padapter) {
 		res = false;
 		goto exit;
 	}
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index bcb6919..522b999 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -163,13 +163,13 @@ struct xmit_frame *alloc_mgtxmitframe(struct xmit_priv *pxmitpriv)
 	struct xmit_buf				*pxmitbuf;
 
 	pmgntframe = rtw_alloc_xmitframe(pxmitpriv);
-	if (pmgntframe == NULL) {
+	if (!pmgntframe) {
 		DBG_88E("%s, alloc xmitframe fail\n", __func__);
 		return NULL;
 	}
 
 	pxmitbuf = rtw_alloc_xmitbuf_ext(pxmitpriv);
-	if (pxmitbuf == NULL) {
+	if (!pxmitbuf) {
 		DBG_88E("%s, alloc xmitbuf fail\n", __func__);
 		rtw_free_xmitframe(pxmitpriv, pmgntframe);
 		return NULL;
@@ -332,7 +332,7 @@ static void issue_beacon(struct adapter *padapter, int timeout_ms)
 	u8	bc_addr[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL) {
+	if (!pmgntframe) {
 		DBG_88E("%s, alloc mgnt frame fail\n", __func__);
 		return;
 	}
@@ -478,7 +478,7 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
 	unsigned int	rate_len;
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL) {
+	if (!pmgntframe) {
 		DBG_88E("%s, alloc mgnt frame fail\n", __func__);
 		return;
 	}
@@ -626,7 +626,7 @@ static int issue_probereq(struct adapter *padapter,
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+issue_probereq\n"));
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		goto exit;
 
 	/* update attribute */
@@ -912,7 +912,7 @@ static void issue_asocrsp(struct adapter *padapter, unsigned short status,
 	DBG_88E("%s\n", __func__);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		return;
 
 	/* update attribute */
@@ -1039,7 +1039,7 @@ static void issue_assocreq(struct adapter *padapter)
 	struct wlan_bssid_ex    *pnetwork = &(pmlmeinfo->network);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		goto exit;
 
 	/* update attribute */
@@ -1133,7 +1133,7 @@ static void issue_assocreq(struct adapter *padapter)
 
 	/* RSN */
 	p = rtw_get_ie((pmlmeinfo->network.IEs + sizeof(struct ndis_802_11_fixed_ie)), _RSN_IE_2_, &ie_len, (pmlmeinfo->network.IELength - sizeof(struct ndis_802_11_fixed_ie)));
-	if (p != NULL)
+	if (p)
 		pframe = rtw_set_ie(pframe, _RSN_IE_2_, ie_len, (p + 2), &(pattrib->pktlen));
 
 	/* HT caps */
@@ -1221,7 +1221,7 @@ static int _issue_nulldata(struct adapter *padapter, unsigned char *da,
 	pnetwork = &(pmlmeinfo->network);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		goto exit;
 
 	/* update attribute */
@@ -1338,7 +1338,7 @@ static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da,
 	DBG_88E("%s\n", __func__);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		goto exit;
 
 	/* update attribute */
@@ -1584,7 +1584,7 @@ static void issue_action_BA(struct adapter *padapter, unsigned char *raddr,
 	DBG_88E("%s, category=%d, action=%d, status=%d\n", __func__, category, action, status);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		return;
 
 	/* update attribute */
@@ -1632,7 +1632,7 @@ static void issue_action_BA(struct adapter *padapter, unsigned char *raddr,
 						  &pattrib->pktlen);
 
 			psta = rtw_get_stainfo(pstapriv, raddr);
-			if (psta != NULL) {
+			if (psta) {
 				start_seq = (psta->sta_xmitpriv.txseq_tid[status & 0x07]&0xfff) + 1;
 
 				DBG_88E("BA_starting_seqctrl=%d for TID=%d\n", start_seq, status & 0x07);
@@ -1743,7 +1743,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 	action = ACT_PUBLIC_BSSCOEXIST;
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		return;
 
 	/* update attribute */
@@ -2091,7 +2091,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 
 	/*  checking SSID */
 	p = rtw_get_ie(bssid->IEs + ie_offset, _SSID_IE_, &len, bssid->IELength - ie_offset);
-	if (p == NULL) {
+	if (!p) {
 		DBG_88E("marc: cannot find SSID for survey event\n");
 		return _FAIL;
 	}
@@ -2122,7 +2122,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 	}
 
 	p = rtw_get_ie(bssid->IEs + ie_offset, _EXT_SUPPORTEDRATES_IE_, &len, bssid->IELength - ie_offset);
-	if (p != NULL) {
+	if (p) {
 		if (len > (NDIS_802_11_LENGTH_RATES_EX-i)) {
 			DBG_88E("%s()-%d: IE too long (%d) for survey event\n", __func__, __LINE__, len);
 			return _FAIL;
@@ -2568,7 +2568,7 @@ static unsigned int OnProbeReq(struct adapter *padapter,
 			len - WLAN_HDR_A3_LEN - _PROBEREQ_IE_OFFSET_);
 
 	/* check (wildcard) SSID */
-	if (p != NULL) {
+	if (p) {
 		if ((ielen != 0 && memcmp((void *)(p+2), (void *)cur->Ssid.Ssid, cur->Ssid.SsidLength)) ||
 		    (ielen == 0 && pmlmeinfo->hidden_ssid_mode))
 			return _SUCCESS;
@@ -2735,11 +2735,11 @@ static unsigned int OnAuth(struct adapter *padapter,
 	}
 
 	pstat = rtw_get_stainfo(pstapriv, sa);
-	if (pstat == NULL) {
+	if (!pstat) {
 		/*  allocate a new one */
 		DBG_88E("going to alloc stainfo for sa=%pM\n", sa);
 		pstat = rtw_alloc_stainfo(pstapriv, sa);
-		if (pstat == NULL) {
+		if (!pstat) {
 			DBG_88E(" Exceed the upper limit of supported clients...\n");
 			status = _STATS_UNABLE_HANDLE_STA_;
 			goto auth_fail;
@@ -2973,7 +2973,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 	}
 
 	pstat = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
-	if (pstat == NULL) {
+	if (!pstat) {
 		status = _RSON_CLS2_;
 		goto asoc_class2_error;
 	}
@@ -3014,7 +3014,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 	/*  checking SSID */
 	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _SSID_IE_, &ie_len,
 		pkt_len - WLAN_HDR_A3_LEN - ie_offset);
-	if (p == NULL)
+	if (!p)
 		status = _STATS_FAILURE_;
 
 	if (ie_len == 0) { /*  broadcast ssid, however it is not allowed in assocreq */
@@ -3122,7 +3122,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		goto OnAssocReqFail;
 
 	pstat->flags &= ~(WLAN_STA_WPS | WLAN_STA_MAYBE_WPS);
-	if (wpa_ie == NULL) {
+	if (!wpa_ie) {
 		if (elems.wps_ie) {
 			DBG_88E("STA included WPS IE in "
 				   "(Re)Association Request - assume WPS is "
@@ -3653,7 +3653,7 @@ static unsigned int OnAction_back(struct adapter *padapter,
 	addr = GetAddr2Ptr(pframe);
 	psta = rtw_get_stainfo(pstapriv, addr);
 
-	if (psta == NULL)
+	if (!psta)
 		return _SUCCESS;
 
 	frame_body = (unsigned char *)(pframe + sizeof(struct ieee80211_hdr_3addr));
@@ -4170,7 +4170,7 @@ void mgt_dispatcher(struct adapter *padapter, struct recv_frame *precv_frame)
 	}
 	ptable += index;
 
-	if (psta != NULL) {
+	if (psta) {
 		if (GetRetry(pframe)) {
 			if (precv_frame->attrib.seq_num ==
 			    psta->RxMgmtFrameSeqNum) {
@@ -4702,7 +4702,7 @@ void linked_status_chk(struct adapter *padapter)
 
 		rx_chk_limit = 4;
 		psta = rtw_get_stainfo(pstapriv, pmlmeinfo->network.MacAddress);
-		if (psta != NULL) {
+		if (psta) {
 			bool is_p2p_enable = false;
 
 			if (!chk_ap_is_alive(padapter, psta))
@@ -4782,7 +4782,7 @@ void linked_status_chk(struct adapter *padapter)
 			if (pmlmeinfo->FW_sta_info[i].status == 1) {
 				psta = pmlmeinfo->FW_sta_info[i].psta;
 
-				if (psta == NULL)
+				if (!psta)
 					continue;
 				if (pmlmeinfo->FW_sta_info[i].rx_pkt == sta_rx_pkts(psta)) {
 					if (pmlmeinfo->FW_sta_info[i].retry < 3) {
diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index fe31ebb..a2ef9ef 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -244,7 +244,7 @@ static int recvframe_chkmic(struct adapter *adapter,
 			  prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
 
 		/* calculate mic code */
-		if (stainfo != NULL) {
+		if (stainfo) {
 			if (IS_MCAST(prxattrib->ra)) {
 				if (!psecuritypriv) {
 					res = _FAIL;
@@ -1012,7 +1012,7 @@ static int validate_recv_mgnt_frame(struct adapter *padapter,
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("+validate_recv_mgnt_frame\n"));
 
 	precv_frame = recvframe_chk_defrag(padapter, precv_frame);
-	if (precv_frame == NULL) {
+	if (!precv_frame) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_,
 			 ("%s: fragment packet\n", __func__));
 		return _SUCCESS;
@@ -1060,7 +1060,7 @@ static int validate_recv_data_frame(struct adapter *adapter,
 	psa = get_sa(ptr);
 	pbssid = get_hdr_bssid(ptr);
 
-	if (pbssid == NULL) {
+	if (!pbssid) {
 		ret = _FAIL;
 		goto exit;
 	}
@@ -1102,7 +1102,7 @@ static int validate_recv_data_frame(struct adapter *adapter,
 	else if (ret == RTW_RX_HANDLED)
 		goto exit;
 
-	if (psta == NULL) {
+	if (!psta) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, (" after to_fr_ds_chk; psta==NULL\n"));
 		ret = _FAIL;
 		goto exit;
@@ -1436,7 +1436,7 @@ struct recv_frame *recvframe_chk_defrag(struct adapter *padapter,
 
 	psta_addr = pfhdr->attrib.ta;
 	psta = rtw_get_stainfo(pstapriv, psta_addr);
-	if (psta == NULL) {
+	if (!psta) {
 		u8 type = GetFrameType(pfhdr->pkt->data);
 
 		if (type != WIFI_DATA_TYPE) {
@@ -1455,7 +1455,7 @@ struct recv_frame *recvframe_chk_defrag(struct adapter *padapter,
 	if (ismfrag == 1) {
 		/* 0~(n-1) fragment frame */
 		/* enqueue to defraf_g */
-		if (pdefrag_q != NULL) {
+		if (pdefrag_q) {
 			if (fragnum == 0) {
 				/* the first fragment */
 				if (!list_empty(&pdefrag_q->queue))
@@ -1482,7 +1482,7 @@ struct recv_frame *recvframe_chk_defrag(struct adapter *padapter,
 	if ((ismfrag == 0) && (fragnum != 0)) {
 		/* the last fragment frame */
 		/* enqueue the last fragment */
-		if (pdefrag_q != NULL) {
+		if (pdefrag_q) {
 			phead = get_list_head(pdefrag_q);
 			list_add_tail(&pfhdr->list, phead);
 
@@ -1928,20 +1928,20 @@ static int recv_func_posthandle(struct adapter *padapter,
 	LedControl8188eu(padapter, LED_CTL_RX);
 
 	prframe = decryptor(padapter, prframe);
-	if (prframe == NULL) {
+	if (!prframe) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("decryptor: drop pkt\n"));
 		ret = _FAIL;
 		goto _recv_data_drop;
 	}
 
 	prframe = recvframe_chk_defrag(padapter, prframe);
-	if (prframe == NULL) {
+	if (!prframe) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chk_defrag: drop pkt\n"));
 		goto _recv_data_drop;
 	}
 
 	prframe = portctrl(padapter, prframe);
-	if (prframe == NULL) {
+	if (!prframe) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("portctrl: drop pkt\n"));
 		ret = _FAIL;
 		goto _recv_data_drop;
diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 68e2c67..f63a6e5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -674,7 +674,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 	/* 4 start to decrypt recvframe */
 	if (prxattrib->encrypt == _TKIP_) {
 		stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
-		if (stainfo != NULL) {
+		if (stainfo) {
 			if (IS_MCAST(prxattrib->ra)) {
 				if (!psecuritypriv->binstallGrpkey) {
 					res = _FAIL;
@@ -1245,7 +1245,7 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 		else
 			stainfo = rtw_get_stainfo(&padapter->stapriv, &pattrib->ra[0]);
 
-		if (stainfo != NULL) {
+		if (stainfo) {
 			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_encrypt: stainfo!= NULL!!!\n"));
 
 			if (IS_MCAST(pattrib->ra))
diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 2db8a5d..9a130cb 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -715,7 +715,7 @@ void HT_caps_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 	struct ht_priv			*phtpriv = &pmlmepriv->htpriv;
 	u8 *HT_cap = (u8 *)(&pmlmeinfo->HT_caps);
 
-	if (pIE == NULL)
+	if (!pIE)
 		return;
 
 	if (!phtpriv->ht_option)
@@ -755,7 +755,7 @@ void HT_info_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 	struct mlme_priv		*pmlmepriv = &padapter->mlmepriv;
 	struct ht_priv			*phtpriv = &pmlmepriv->htpriv;
 
-	if (pIE == NULL)
+	if (!pIE)
 		return;
 
 	if (!phtpriv->ht_option)
@@ -1534,7 +1534,7 @@ int update_sta_support_rate(struct adapter *padapter, u8 *pvar_ie, uint var_ie_l
 	struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
 
 	pIE = (struct ndis_802_11_var_ie *)rtw_get_ie(pvar_ie, _SUPPORTEDRATES_IE_, &ie_len, var_ie_len);
-	if (pIE == NULL)
+	if (!pIE)
 		return _FAIL;
 	if (ie_len > NDIS_802_11_LENGTH_RATES_EX)
 		return _FAIL;
diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 6b32c14..1e4ee20 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -479,7 +479,7 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 		psta = rtw_get_bcmc_stainfo(padapter);
 	} else {
 		psta = rtw_get_stainfo(pstapriv, pattrib->ra);
-		if (psta == NULL) { /*  if we cannot get psta => drrp the pkt */
+		if (!psta) { /*  if we cannot get psta => drrp the pkt */
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra: %pM\n", (pattrib->ra)));
 			res = _FAIL;
 			goto exit;
@@ -622,7 +622,7 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 
 	if (pattrib->encrypt == _TKIP_) {/* if (psecuritypriv->dot11PrivacyAlgrthm == _TKIP_PRIVACY_) */
 		/* encode mic code */
-		if (stainfo != NULL) {
+		if (stainfo) {
 			u8 null_key[16] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
 					   0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
 					   0x0, 0x0};
@@ -957,7 +957,7 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 
 	psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 
-	if (psta == NULL)
+	if (!psta)
 		return _FAIL;
 
 	if (pxmitframe->buf_addr == NULL) {
@@ -1139,7 +1139,7 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 	case AUTO_VCS:
 	default:
 		perp = rtw_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
-		if (perp == NULL) {
+		if (!perp) {
 			pxmitpriv->vcs = NONE_VCS;
 		} else {
 			protection = (*(perp + 2)) & BIT(1);
@@ -1207,7 +1207,7 @@ s32 rtw_free_xmitbuf_ext(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 	struct __queue *pfree_queue = &pxmitpriv->free_xmit_extbuf_queue;
 
 
-	if (pxmitbuf == NULL)
+	if (!pxmitbuf)
 		return _FAIL;
 
 	spin_lock_irqsave(&pfree_queue->lock, irql);
@@ -1253,7 +1253,7 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 	unsigned long irql;
 	struct __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
-	if (pxmitbuf == NULL)
+	if (!pxmitbuf)
 		return _FAIL;
 
 	if (pxmitbuf->sctx) {
@@ -1344,7 +1344,7 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 	struct sk_buff *pndis_pkt = NULL;
 
 
-	if (pxmitframe == NULL) {
+	if (!pxmitframe) {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====== rtw_free_xmitframe():pxmitframe == NULL!!!!!!!!!!\n"));
 		goto exit;
 	}
@@ -1537,7 +1537,7 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 	else
 		psta = rtw_get_stainfo(pstapriv, pattrib->ra);
 
-	if (psta == NULL) {
+	if (!psta) {
 		res = _FAIL;
 		DBG_88E("rtw_xmit_classifier: psta == NULL\n");
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("rtw_xmit_classifier: psta == NULL\n"));
@@ -1645,7 +1645,7 @@ s32 rtw_xmit(struct adapter *padapter, struct sk_buff **ppkt)
 	s32 res;
 
 	pxmitframe = rtw_alloc_xmitframe(pxmitpriv);
-	if (pxmitframe == NULL) {
+	if (!pxmitframe) {
 		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: no more pxmitframe\n"));
 		DBG_88E("DBG_TX_DROP_FRAME %s no more pxmitframe\n", __func__);
 		return -1;
@@ -1698,7 +1698,7 @@ int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fra
 	else
 		psta = rtw_get_stainfo(pstapriv, pattrib->ra);
 
-	if (psta == NULL)
+	if (!psta)
 		return ret;
 
 	if (pattrib->triggered == 1) {
-- 
2.7.4



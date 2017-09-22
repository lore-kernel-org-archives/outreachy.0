X-GM-THRID: 6468588291165782016
X-Received: by 10.223.152.207 with SMTP id w73mr877331wrb.13.1506092705182;
        Fri, 22 Sep 2017 08:05:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.50.138 with SMTP id y132ls212879wmy.9.gmail; Fri, 22 Sep
 2017 08:05:04 -0700 (PDT)
X-Received: by 10.28.142.201 with SMTP id q192mr209154wmd.23.1506092704103;
        Fri, 22 Sep 2017 08:05:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506092704; cv=none;
        d=google.com; s=arc-20160816;
        b=wUJBEsPfABdZV+gqKqtkhMFBZYdbwI1znV6K4WegYnooCf8cUAN0MzMqx/Ga17woN2
         CYhlhzuNwngA2FL6ofQA7mbax7h45sZ9d+qMA9M5/emz+t80Kb4hmHDhJFxhMI+giYgy
         4gP4umBT6uz2iY5YHl6O3ZUmcZsNfBO2kNTZgKmZJ+7y6Z7bjTsBjTLyupeqiB3q4NL/
         Er10Dn9jHkgzSb+9WthqkzYG2K4HmNLj+Q01V+FmhscgXnDQjL5DAAyXYUdc5O79v1Ub
         tiekMsxXSWum3k/uut7OA333R6HR5EAPNcU+wRn3ATGBUs2yYmSfdzFPQgQ5v2CAixTN
         rHtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=xKuRn0QSP59m7M9gJAj8gZOzfK4tLBtHDvuyqQ9gOLY=;
        b=XD+D0aDscGFulTwQWquFRVPr+qFzrJjOjtZP+PEKgLb5/lpybEUktq9e4iLEd0Mlsr
         IevEo9XAtqgCeHmyboXqgQ2X/v1XXY+d8ts54SFuHVsi+Adyja20uRRPorjv0fmK0sZ+
         n8ODwyNI9FcxhdnSOeY3vGblkYstuwtW6X5QHub7e+hsC5vbtwgaxwJMW2S7oxB5BXfB
         BETHi2XGjsKFklKfYDxJQApQ+uQMUmyFE/iPnmXZ8eoQ9UVsJ8BzSVrtHOGIA1s0edMH
         zZiiF6SldleMoRT3HvTSztXhDhmyisw9HqUeQlYkr3EySykGmlWCBc14ZOvP3Rx0Yg0k
         +4WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RUUWvc2U;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id d82si1178wmd.1.2017.09.22.08.05.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 08:05:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RUUWvc2U;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id r136so1554498wmf.3
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 08:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xKuRn0QSP59m7M9gJAj8gZOzfK4tLBtHDvuyqQ9gOLY=;
        b=RUUWvc2Uw3E4RfRmrTkrbG/RPbFwzdvGBctqfxfrhXFzqxjah1aLFOVbJ900fGVSgj
         fSEl85N1surgR77fHOL9CUllmKUGmOLVKmt5wCdbDFh81PkPhX8fcGJ9mNB0HvK6lN9K
         MYNUAcUzUZAzmp4pYNHurHdcvIK6aj45viPxnt+sHKKkvZq1kVc82IZaAeKUhEUnjZEh
         OT5beDRSgW4dbgzxbEUcIjqlvfvhTe+34J0MGIQxcG+qShyV+PjwV7j4v2nVEi5LQqgQ
         Z3fccH9bYSwelzn7IqDL339SuJOojF1pk2BttiuopgYGgz7KGEpCbSdjs+Vn9SefuK3L
         0MBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=xKuRn0QSP59m7M9gJAj8gZOzfK4tLBtHDvuyqQ9gOLY=;
        b=Rb6G5OWIegtdtBYbKGz6BwgCyFY9GJvurtX1kCV4V8zz7ShKdnXhT/SVFFUetAk9W8
         ClkL36a6WxCHu+0soDK8unWrON7TmnJtmNR5DoJQ7IwYc+98+P9yZIvbtsaIiwAB0U5e
         IzVHS+R1OlY0qa5JU8N4Gl1GPnImhg8JwT/ZAC1Xvu6HHQY3SIXJpatrO/mLBqmcQRP2
         7HuukfS1efVoUvrMRiOEiu+1HTsS48vGZurUuHDUkVQIHSKtl6hcYo2LzAh7lLZdlg2t
         YzKqnmQMFyFdMDzqPVKT/+CqEA0fRxekxGv6/ZAmbR16gpi6zPdr79VtBWtInerQwZmL
         OonA==
X-Gm-Message-State: AHPjjUiH0iAGxJhLW9fgVmMu8mQYR/n4PU4NDDZcgQ96cLWlzCPqP8sE
	dBJ+44DNU9xBiOAtH7Jfvj8=
X-Google-Smtp-Source: AOwi7QCJllR/vcoRbShzcMc1i333OpldwL6dhoMM7EeJDYdSmxz/+eniHjMEWc9SHQvVKFmTWrUGnQ==
X-Received: by 10.28.25.129 with SMTP id 123mr4078117wmz.17.1506092703695;
        Fri, 22 Sep 2017 08:05:03 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id p59sm48404wrc.75.2017.09.22.08.05.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Sep 2017 08:05:03 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/2] Staging: rtl8723bs: core: Remove boolean comparison
Date: Fri, 22 Sep 2017 08:04:51 -0700
Message-Id: <f59e77a98ba577daa2598a596214ad05ce136772.1506092223.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506092223.git.georgiana.chelu93@gmail.com>
References: <cover.1506092223.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506092223.git.georgiana.chelu93@gmail.com>
References: <cover.1506092223.git.georgiana.chelu93@gmail.com>

Remove comparison to bool in order to improve
the clearness of the code.

Issue found using coccinelle script.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 64 +++++++++++++--------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 99ed52b..6c59faf 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -510,7 +510,7 @@ void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext)
 	if (!padapter)
 		return;
 
-	if (padapter->bDriverStopped == true) {
+	if (padapter->bDriverStopped) {
 		del_timer_sync(&pmlmeext->survey_timer);
 		del_timer_sync(&pmlmeext->link_timer);
 		/* del_timer_sync(&pmlmeext->ADDBA_timer); */
@@ -582,7 +582,7 @@ void mgt_dispatcher(struct adapter *padapter, union recv_frame *precv_frame)
 
 	switch (GetFrameSubType(pframe)) {
 	case WIFI_AUTH:
-		if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
+		if (check_fwstate(pmlmepriv, WIFI_AP_STATE))
 			ptable->func = &OnAuth;
 		else
 			ptable->func = &OnAuthClient;
@@ -637,8 +637,8 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 	/* DBG_871X("+OnProbeReq\n"); */
 
 #ifdef CONFIG_AUTO_AP_MODE
-	if (check_fwstate(pmlmepriv, _FW_LINKED) == true &&
-			pmlmepriv->cur_network.join_res == true) {
+	if (check_fwstate(pmlmepriv, _FW_LINKED) &&
+			pmlmepriv->cur_network.join_res) {
 		struct sta_info *psta;
 		u8 *mac_addr, *peer_addr;
 		struct sta_priv *pstapriv = &padapter->stapriv;
@@ -752,7 +752,7 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 	/* check (wildcard) SSID */
 	if (p != NULL) {
-		if (is_valid_p2p_probereq == true)
+		if (is_valid_p2p_probereq)
 			goto _issue_probersp;
 
 		if ((ielen != 0 && false == !memcmp((void *)(p+2), (void *)cur->Ssid.Ssid, cur->Ssid.SsidLength))
@@ -761,8 +761,8 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 			return _SUCCESS;
 
 _issue_probersp:
-		if (((check_fwstate(pmlmepriv, _FW_LINKED) == true &&
-			pmlmepriv->cur_network.join_res == true)) || check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
+		if ((check_fwstate(pmlmepriv, _FW_LINKED)  &&
+			pmlmepriv->cur_network.join_res) || check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
 			/* DBG_871X("+issue_probersp during ap mode\n"); */
 			issue_probersp(padapter, get_sa(pframe), is_valid_p2p_probereq);
 		}
@@ -1773,7 +1773,7 @@ unsigned int OnDeAuth(struct adapter *padapter, union recv_frame *precv_frame)
 
 	DBG_871X("%s Reason code(%d)\n", __func__, reason);
 
-	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
+	if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 		struct sta_info *psta;
 		struct sta_priv *pstapriv = &padapter->stapriv;
 
@@ -1848,7 +1848,7 @@ unsigned int OnDisassoc(struct adapter *padapter, union recv_frame *precv_frame)
 
 	DBG_871X("%s Reason code(%d)\n", __func__, reason);
 
-	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
+	if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 		struct sta_info *psta;
 		struct sta_priv *pstapriv = &padapter->stapriv;
 
@@ -1976,7 +1976,7 @@ unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_fra
 			/* process_addba_req(padapter, (u8 *)&(pmlmeinfo->ADDBA_req), GetAddr3Ptr(pframe)); */
 			process_addba_req(padapter, (u8 *)&(pmlmeinfo->ADDBA_req), addr);
 
-			if (pmlmeinfo->bAcceptAddbaReq == true) {
+			if (pmlmeinfo->bAcceptAddbaReq) {
 				issue_action_BA(padapter, addr, RTW_WLAN_ACTION_ADDBA_RESP, 0);
 			} else{
 				issue_action_BA(padapter, addr, RTW_WLAN_ACTION_ADDBA_RESP, 37);/* reject ADDBA Req */
@@ -2350,8 +2350,8 @@ void update_mgntframe_attrib_addr(struct adapter *padapter, struct xmit_frame *p
 
 void dump_mgntframe(struct adapter *padapter, struct xmit_frame *pmgntframe)
 {
-	if (padapter->bSurpriseRemoved == true ||
-		padapter->bDriverStopped == true) {
+	if (padapter->bSurpriseRemoved ||
+		padapter->bDriverStopped) {
 		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
 		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
 		return;
@@ -2368,8 +2368,8 @@ s32 dump_mgntframe_and_wait(struct adapter *padapter, struct xmit_frame *pmgntfr
 	struct xmit_buf *pxmitbuf = pmgntframe->pxmitbuf;
 	struct submit_ctx sctx;
 
-	if (padapter->bSurpriseRemoved == true ||
-		padapter->bDriverStopped == true) {
+	if (padapter->bSurpriseRemoved ||
+		padapter->bDriverStopped) {
 		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
 		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
 		return ret;
@@ -2397,8 +2397,8 @@ s32 dump_mgntframe_and_wait_ack(struct adapter *padapter, struct xmit_frame *pmg
 	u32 timeout_ms = 500;/*   500ms */
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
-	if (padapter->bSurpriseRemoved == true ||
-		padapter->bDriverStopped == true) {
+	if (padapter->bSurpriseRemoved ||
+		padapter->bDriverStopped) {
 		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
 		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
 		return -1;
@@ -3394,7 +3394,7 @@ void issue_assocreq(struct adapter *padapter)
 			pframe = rtw_set_ie(pframe, EID_WPA2, pIE->Length, pIE->data, &(pattrib->pktlen));
 			break;
 		case EID_HTCapability:
-			if (padapter->mlmepriv.htpriv.ht_option == true) {
+			if (padapter->mlmepriv.htpriv.ht_option) {
 				if (!(is_ap_in_tkip(padapter))) {
 					memcpy(&(pmlmeinfo->HT_caps), pIE->data, sizeof(struct HT_caps_element));
 					pframe = rtw_set_ie(pframe, EID_HTCapability, pIE->Length, (u8 *)(&(pmlmeinfo->HT_caps)), &(pattrib->pktlen));
@@ -3403,7 +3403,7 @@ void issue_assocreq(struct adapter *padapter)
 			break;
 
 		case EID_EXTCapability:
-			if (padapter->mlmepriv.htpriv.ht_option == true)
+			if (padapter->mlmepriv.htpriv.ht_option)
 				pframe = rtw_set_ie(pframe, EID_EXTCapability, pIE->Length, pIE->data, &(pattrib->pktlen));
 			break;
 		default:
@@ -4219,7 +4219,7 @@ unsigned int send_delba(struct adapter *padapter, u8 initiator, u8 *addr)
 
 	if (initiator == 0) {/*  recipient */
 		for (tid = 0; tid < MAXTID; tid++) {
-			if (psta->recvreorder_ctrl[tid].enable == true) {
+			if (psta->recvreorder_ctrl[tid].enable) {
 				DBG_871X("rx agg disable tid(%d)\n", tid);
 				issue_action_BA(padapter, addr, RTW_WLAN_ACTION_DELBA, (((tid << 1) | initiator)&0x1F));
 				psta->recvreorder_ctrl[tid].enable = false;
@@ -4408,7 +4408,7 @@ void site_survey(struct adapter *padapter)
 			Restore_DM_Func_Flag(padapter);
 			/* Switch_DM_Func(padapter, DYNAMIC_ALL_FUNC_ENABLE, true); */
 
-			if (is_client_associated_to_ap(padapter) == true)
+			if (is_client_associated_to_ap(padapter))
 				issue_nulldata(padapter, NULL, 0, 3, 500);
 
 			val8 = 0; /* survey done */
@@ -5445,7 +5445,7 @@ static void rtw_mlmeext_disconnect(struct adapter *padapter)
 	pmlmeinfo->state = WIFI_FW_NULL_STATE;
 
 	if (state_backup == WIFI_FW_STATION_STATE) {
-		if (rtw_port_switch_chk(padapter) == true) {
+		if (rtw_port_switch_chk(padapter)) {
 			rtw_hal_set_hwreg(padapter, HW_VAR_PORT_SWITCH, NULL);
 			{
 				struct adapter *port0_iface = dvobj_get_port0_adapter(adapter_to_dvobj(padapter));
@@ -5534,7 +5534,7 @@ void mlmeext_joinbss_event_callback(struct adapter *padapter, int join_res)
 		rtw_hal_macid_wakeup(padapter, psta->mac_id);
 	}
 
-	if (rtw_port_switch_chk(padapter) == true)
+	if (rtw_port_switch_chk(padapter))
 		rtw_hal_set_hwreg(padapter, HW_VAR_PORT_SWITCH, NULL);
 
 	join_type = 2;
@@ -5659,7 +5659,7 @@ void _linked_info_dump(struct adapter *padapter)
 
 		}
 		for (i = 0; i < NUM_STA; i++) {
-			if (pdvobj->macid[i] == true) {
+			if (pdvobj->macid[i]) {
 				if (i != 1) /* skip bc/mc sta */
 					/*   tx info ============ */
 					rtw_hal_get_def_var(padapter, HW_DEF_RA_INFO_DUMP, &i);
@@ -5842,7 +5842,7 @@ void survey_timer_hdl(struct adapter *padapter)
 			pmlmeext->sitesurvey_res.channel_idx++;
 		}
 
-		if (pmlmeext->scan_abort == true) {
+		if (pmlmeext->scan_abort) {
 			{
 				pmlmeext->sitesurvey_res.channel_idx = pmlmeext->sitesurvey_res.ch_num;
 				DBG_871X("%s idx:%d\n", __func__
@@ -5933,7 +5933,7 @@ void addba_timer_hdl(struct sta_info *psta)
 
 	phtpriv = &psta->htpriv;
 
-	if ((phtpriv->ht_option == true) && (phtpriv->ampdu_enable == true)) {
+	if (phtpriv->ht_option && phtpriv->ampdu_enable) {
 		if (phtpriv->candidate_tid_bitmap)
 			phtpriv->candidate_tid_bitmap = 0x0;
 
@@ -5946,7 +5946,7 @@ void sa_query_timer_hdl(struct adapter *padapter)
 	/* disconnect */
 	spin_lock_bh(&pmlmepriv->lock);
 
-	if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
+	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
 		rtw_disassoc_cmd(padapter, 0, true);
 		rtw_indicate_disconnect(padapter);
 		rtw_free_assoc_resources(padapter, 1);
@@ -6084,7 +6084,7 @@ u8 setopmode_hdl(struct adapter *padapter, u8 *pbuf)
 		rtw_auto_ap_start_beacon(padapter);
 #endif
 
-	if (rtw_port_switch_chk(padapter) == true) {
+	if (rtw_port_switch_chk(padapter)) {
 		rtw_hal_set_hwreg(padapter, HW_VAR_PORT_SWITCH, NULL);
 
 		if (psetop->mode == Ndis802_11APMode)
@@ -6358,7 +6358,7 @@ static int rtw_scan_ch_decision(struct adapter *padapter, struct rtw_ieee80211_c
 		set_idx = rtw_ch_set_search_ch(pmlmeext->channel_set, in[i].hw_value);
 		if (in[i].hw_value && !(in[i].flags & RTW_IEEE80211_CHAN_DISABLED)
 			&& set_idx >= 0
-			&& rtw_mlme_band_check(padapter, in[i].hw_value) == true
+			&& rtw_mlme_band_check(padapter, in[i].hw_value)
 		) {
 			if (j >= out_num) {
 				DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" out_num:%u not enough\n",
@@ -6383,7 +6383,7 @@ static int rtw_scan_ch_decision(struct adapter *padapter, struct rtw_ieee80211_c
 
 			DBG_871X(FUNC_ADPT_FMT" ch:%u\n", FUNC_ADPT_ARG(padapter), pmlmeext->channel_set[i].ChannelNum);
 
-			if (rtw_mlme_band_check(padapter, pmlmeext->channel_set[i].ChannelNum) == true) {
+			if (rtw_mlme_band_check(padapter, pmlmeext->channel_set[i].ChannelNum)) {
 
 				if (j >= out_num) {
 					DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" out_num:%u not enough\n",
@@ -6435,7 +6435,7 @@ u8 sitesurvey_cmd_hdl(struct adapter *padapter, u8 *pbuf)
 		pmlmeext->sitesurvey_res.scan_mode = pparm->scan_mode;
 
 		/* issue null data if associating to the AP */
-		if (is_client_associated_to_ap(padapter) == true) {
+		if (is_client_associated_to_ap(padapter)) {
 			pmlmeext->sitesurvey_res.state = SCAN_TXNULL;
 
 			issue_nulldata(padapter, NULL, 1, 3, 500);
@@ -6767,7 +6767,7 @@ u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 			pxmitframe->attrib.triggered = 1;
 
-			if (xmitframe_hiq_filter(pxmitframe) == true)
+			if (xmitframe_hiq_filter(pxmitframe))
 				pxmitframe->attrib.qsel = 0x11;/* HIQ */
 
 			rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
@@ -6809,7 +6809,7 @@ int rtw_chk_start_clnt_join(struct adapter *padapter, u8 *ch, u8 *bw, u8 *offset
 		connect_allow = false;
 	}
 
-	if (connect_allow == true) {
+	if (connect_allow) {
 		DBG_871X("start_join_set_ch_bw: ch =%d, bwmode =%d, ch_offset =%d\n", cur_ch, cur_bw, cur_ch_offset);
 		*ch = cur_ch;
 		*bw = cur_bw;
-- 
2.7.4



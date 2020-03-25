X-GM-THRID: 6808187713389330432
X-Received: by 2002:ac5:c911:: with SMTP id t17mr2945246vkl.81.1585154727185;
        Wed, 25 Mar 2020 09:45:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c01d:: with SMTP id v29ls316545vsi.6.gmail; Wed, 25 Mar
 2020 09:45:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vshPnYWZ8DVQ2BWJo6lJDrqhlQLvvEyLLvSFxs7ezFkS+c/5qYHdtBR439nftZoUy+UHT91
X-Received: by 2002:a67:d491:: with SMTP id g17mr3433802vsj.114.1585154724437;
        Wed, 25 Mar 2020 09:45:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585154724; cv=none;
        d=google.com; s=arc-20160816;
        b=aP/mNexZhbXQyvVvkv57CPdWu0Hnx7V+asPWCO4Lc2Ql8YgdNhU00bgljSRDRT0efh
         76tFXSrmsD3sReghwdSVS5a7GxCzfKp1axeg+PyQ29TDkbpXPpYPzY65532gordml59A
         XAjFNGgqsND9urs/0ZV+A6gWoAnTEMvGWi25x7r4BO7jT0O1P2gEhDdyFiXPH9+qjByV
         a7ermns8OBtfMwNCACXRTzBExg2RQeaTWARmKshKjTGPJtR08o1KAsoSj3WvJfhhf4Zb
         45yBStUbbDSUfmfgJ7fUVg8qVY2DR6PArVkJdNRN0Y2E3BwuclYnrsiaasBWa4v0gaSy
         MYvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=8TyWZF/hKjoYHK9kozfXNfOetaQstcsdqGIUqpxVSWo=;
        b=0FTBE3+Xdb96q1iBbJRvexQ86xzdeQSe3pmQY312NPXUmtXrkvgxv4rCGhlPKjYkap
         176CgHdy6UdpUaPr4ix6Z0Fex0HdWeZrGCMZAj54Cz/ijuhZQIU0EbnYZooF+wbp3OJw
         xtmy130QeLZs9ygcezVLQ3q/DDsAH324YerpCAq4CDPY/c8IMX22kH5Ql1iwqPTdSwc7
         s1rQKJ4S23ptGBY51KqbhGFTvMckGftoSG5zt6iGt3ZS0ZaU6rPnIc3l2FWHtaz4ewTs
         go+w8t1O/lsbgvRoEob3BGXXOImsOfvdmA9vqwdy+7xYaStRbUeV9pqGleaEZh5aEiSh
         /qwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dz9M17el;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v5si737576vsl.0.2020.03.25.09.45.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 09:45:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dz9M17el;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id d25so1305292pfn.6
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 09:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8TyWZF/hKjoYHK9kozfXNfOetaQstcsdqGIUqpxVSWo=;
        b=dz9M17elo03t5YW8wGA9UpAawb+jWBG2PQMy0JsQVilQVNYxCRRmMmW6vE1gCdSSDS
         Jza2UJ9N6RYhJjNNHE8oy9FOE1QT8ZznAsPw4Bh6oAQNyww3L3nP0RrFfvJRJ4Ad+QNL
         cSz90mc4v23Ji7ewYC5gBiL9ZcDGPn7o2AaSXI139hrp9bqtjAuZqumDqh9Qe2TwOHTc
         hw5+PZRHvgWPogxNtkMLafRsqp+fChVnwRYWHNDS+xKqPfKXniWdD2U7d5Y+Sd8z3RH/
         Ykeo1OwGxEaK1ZGEsIqBuc+eOUefbjRuxgO6EvbvMmo2jtgrYa6drp76OUpo9l7yPjKd
         yJYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8TyWZF/hKjoYHK9kozfXNfOetaQstcsdqGIUqpxVSWo=;
        b=D3Ti1v33THwizanzZExOQKz4tofZRZswoKMgwj3D+wD0rW5pYo35NmaDcUseih0nSP
         ELMwcn9z4a5xkexv6Lrr81f/CMOb0Nrema4fbogMtlTBm0ogEaLiaRjvBVZjOmNqapr3
         ZOcyyCgDmWPaklpsHGM2sSKGXRF1das4+b4GSoRgffOzPVblBTAZdOndQ1obYIhn4+Qa
         iGYCHMPll33zNpL2SsS1ceRqrXUWH+rtw2ZnL58WGvlThmnB9n+cmUuM+wRptWpEwzOZ
         QIIc+7WqMG2NCZbcwJWScXWqMdScLNabSD/OZ7SdOw5PtBkG3WFSStWd0z1EbjRpNL5I
         aVng==
X-Gm-Message-State: ANhLgQ3SiepiGn4Hx+KGKWLyM0eHCcY44ZPW4mbl+Tc+LNlz0NxzL5tN
	d/JvqRv9+WJwHgJvY1cmsM40KpSORCI=
X-Received: by 2002:a63:4502:: with SMTP id s2mr3946982pga.391.1585154723293;
        Wed, 25 Mar 2020 09:45:23 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
        by smtp.gmail.com with ESMTPSA id o15sm4815290pjp.41.2020.03.25.09.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 09:45:22 -0700 (PDT)
Date: Wed, 25 Mar 2020 22:14:52 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Add line after variable declarations
Message-ID: <20200325164451.GA17569@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Add whiteline after variable declarations to remove the checkpatch.pl
warning:
WARNING: Missing a blank line after declarations

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index c642825ca8ef..8f9da1d49343 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -219,6 +219,7 @@ static RT_CHANNEL_PLAN_MAP RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03, 0x02};
 int rtw_ch_set_search_ch(RT_CHANNEL_INFO *ch_set, const u32 ch)
 {
 	int i;
+
 	for (i = 0; ch_set[i].ChannelNum != 0; i++) {
 		if (ch == ch_set[i].ChannelNum)
 			break;
@@ -2184,6 +2185,7 @@ unsigned int OnAction_sa_query(struct adapter *padapter, union recv_frame *precv
 	}
 	if (0) {
 		int pp;
+
 		printk("pattrib->pktlen = %d =>", pattrib->pkt_len);
 		for (pp = 0; pp < pattrib->pkt_len; pp++)
 			printk(" %02x ", pframe[pp]);
@@ -2486,6 +2488,7 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 		/* DBG_871X("ie len =%d\n", cur_network->IELength); */
 		{
 			int len_diff;
+
 			memcpy(pframe, cur_network->IEs, cur_network->IELength);
 			len_diff = update_hidden_ssid(
 				pframe+_BEACON_IE_OFFSET_
@@ -2500,6 +2503,7 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 			u8 *wps_ie;
 			uint wps_ielen;
 			u8 sr = 0;
+
 			wps_ie = rtw_get_wps_ie(pmgntframe->buf_addr+TXDESC_OFFSET+sizeof(struct ieee80211_hdr_3addr)+_BEACON_IE_OFFSET_,
 				pattrib->pktlen-sizeof(struct ieee80211_hdr_3addr)-_BEACON_IE_OFFSET_, NULL, &wps_ielen);
 			if (wps_ie && wps_ielen > 0) {
@@ -2700,6 +2704,7 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 			if (ssid_ie &&  cur_network->Ssid.SsidLength) {
 				uint remainder_ielen;
 				u8 *remainder_ie;
+
 				remainder_ie = ssid_ie+2;
 				remainder_ielen = (pframe-remainder_ie);
 
@@ -4280,6 +4285,7 @@ void site_survey(struct adapter *padapter)
 
 	{
 		struct rtw_ieee80211_channel *ch;
+
 		if (pmlmeext->sitesurvey_res.channel_idx < pmlmeext->sitesurvey_res.ch_num) {
 			ch = &pmlmeext->sitesurvey_res.ch[pmlmeext->sitesurvey_res.channel_idx];
 			survey_channel = ch->hw_value;
@@ -4323,6 +4329,7 @@ void site_survey(struct adapter *padapter)
 		if (ScanType == SCAN_ACTIVE) { /* obey the channel plan setting... */
 			{
 				int i;
+
 				for (i = 0; i < RTW_SSID_SCAN_AMOUNT; i++) {
 					if (pmlmeext->sitesurvey_res.ssid[i].SsidLength) {
 						/* IOT issue, When wifi_spec is not set, send one probe req without WPS IE. */
@@ -4351,6 +4358,7 @@ void site_survey(struct adapter *padapter)
 #if defined(CONFIG_SIGNAL_DISPLAY_DBM) && defined(CONFIG_BACKGROUND_NOISE_MONITOR)
 		{
 			struct noise_info info;
+
 			info.bPauseDIG = false;
 			info.IGIValue = 0;
 			info.max_time = channel_scan_time_ms/2;/* ms */
@@ -4518,6 +4526,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 		p = rtw_get_ie(bssid->IEs + ie_offset, _HT_ADD_INFO_IE_, &len, bssid->IELength - ie_offset);
 		if (p) {
 			struct HT_info_element *HT_info = (struct HT_info_element *)(p + 2);
+
 			bssid->Configuration.DSConfig = HT_info->primary_channel;
 		} else { /*  use current channel */
 			bssid->Configuration.DSConfig = rtw_get_oper_ch(padapter);
@@ -4551,6 +4560,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 		p = rtw_get_ie(bssid->IEs + ie_offset, _HT_CAPABILITY_IE_, &len, bssid->IELength - ie_offset);
 		if (p && len > 0) {
 			struct HT_caps_element	*pHT_caps;
+
 			pHT_caps = (struct HT_caps_element	*)(p + 2);
 
 			if (le16_to_cpu(pHT_caps->u.HT_cap_element.HT_caps_info) & BIT(14))
@@ -4584,6 +4594,7 @@ void start_create_ibss(struct adapter *padapter)
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	struct wlan_bssid_ex		*pnetwork = (struct wlan_bssid_ex *)(&(pmlmeinfo->network));
+
 	pmlmeext->cur_channel = (u8)pnetwork->Configuration.DSConfig;
 	pmlmeinfo->bcn_interval = get_beacon_interval(pnetwork);
 
@@ -5388,6 +5399,7 @@ static void rtw_mlmeext_disconnect(struct adapter *padapter)
 	/* wakeup macid after disconnect. */
 	{
 		struct sta_info *psta;
+
 		psta = rtw_get_stainfo(&padapter->stapriv, get_my_bssid(pnetwork));
 		if (psta)
 			rtw_hal_macid_wakeup(padapter, psta->mac_id);
@@ -5425,6 +5437,7 @@ void mlmeext_joinbss_event_callback(struct adapter *padapter, int join_res)
 	struct sta_priv 	*pstapriv = &padapter->stapriv;
 	u8 join_type;
 	struct sta_info *psta;
+
 	if (join_res < 0) {
 		join_type = 1;
 		rtw_hal_set_hwreg(padapter, HW_VAR_MLME_JOIN, (u8 *)(&join_type));
@@ -6047,6 +6060,7 @@ u8 createbss_hdl(struct adapter *padapter, u8 *pbuf)
 
 	if (pmlmeinfo->state == WIFI_FW_AP_STATE) {
 		struct wlan_bssid_ex *network = &padapter->mlmepriv.cur_network.network;
+
 		start_bss_network(padapter, (u8 *)network);
 		return H2C_SUCCESS;
 	}
@@ -6810,6 +6824,7 @@ u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 	if ((padapter->rtw_wdev != NULL) && (padapter->rtw_wdev->wiphy)) {
 		struct regulatory_request request;
+
 		request.initiator = NL80211_REGDOM_SET_BY_DRIVER;
 		rtw_reg_notifier(padapter->rtw_wdev->wiphy, &request);
 	}
-- 
2.17.1



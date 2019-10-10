X-GM-THRID: 6746031998697996288
X-Received: by 2002:a05:6830:10cf:: with SMTP id z15mr4093564oto.326.1570713398840;
        Thu, 10 Oct 2019 06:16:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:d6e:: with SMTP id 101ls726149oti.12.gmail; Thu, 10 Oct
 2019 06:16:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwbOrmLLZNr/slo6LQcSuFa3EWEI+4CsHitkmoK/tgaOsSQmZxyRNwE9bgUG6f5I9Qxb4qq
X-Received: by 2002:a9d:6c5a:: with SMTP id g26mr8034277otq.156.1570713397856;
        Thu, 10 Oct 2019 06:16:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570713397; cv=none;
        d=google.com; s=arc-20160816;
        b=ASL+ZWM69vO5KkCLkmPnf8dc5uON6MiYX+qGI0cbTpj6dvDdr/wZuzfMiWbjdgvsF2
         T0BDLaWwieRhwgyllbXmCShgo8ICBzqf6Ev+/DjAiWh/+KjhbziGwIfcok1lrbHJD4eb
         +Ezz0wxt75aZZWKEGqpplYgmvvxDJfQVfuM2OM/tB5itcA0Mp2FLLBRAhBferozn04C2
         s+B4xk6ieFAQdd2SXS0PZM8HUHsJ4N60/WQiyY+oXtn2luhL/6ocIS5oSSbnPyf6GVrD
         q/FdoKgmUHZ1Ydb7YB1NPglVFtGv97Wj0jBucBoYRgBKLnVGKih6LhGeJ3JMYqaG3rIk
         bfxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IxoUE4+/sRAzielPpETs7vlR47UFCkA9W57udQ/xBUI=;
        b=CWOCkU/aS/413E8lnXseKZ9LP28YJDe3ISpUeKRWFSQ+8uJg7ZzWya8vpFrGDVxiC+
         o3CwN7ZVjfFg466lso7k5ozcbak5OK9p6XgMyCI6yoGHaDkjeKC5/AXS/1if6voPit7U
         KmwMg91H3MGtkOz7IGiPv+dhThhqSbhA+fJAgA3IlHC/6rFTJ9QSL/dLZsbDdxtblVO7
         ZhcBqowo42Q9jYg1CgXygHGbazeuqudrWR8ER+BcIMXsliaKL6HzPwUKJI9Ke+9nPzSs
         2Tb8QEnrC7oo4IoOC82+swRZ64f8RVXK47adGEYFDcNc0qBJ/I2nGQUU/6nq80QjISVG
         HyTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZsliLTYh;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v3si308331oth.4.2019.10.10.06.16.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 06:16:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZsliLTYh;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id h195so3884247pfe.5
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 06:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IxoUE4+/sRAzielPpETs7vlR47UFCkA9W57udQ/xBUI=;
        b=ZsliLTYhMyGj3tNYFkavelsXWrFg2P/ILePoWg0uSFnm2pnTbkrVmxfWTddxcsFk14
         BARsN0La8p7ansr1DapV4TPkO6oEi5I0ONDap+scir4DOhrNmY8TxItIy0NMHKPpPn7/
         Lh/aUNkdUF5aLb/oKzKI/wygJZgmlrrdnlBPOe63selefl4s16ddWdisWOO/kIG4sCOV
         5VcznJXc00hsVCwDOQdfXB7yEorEMCDcd1T8fbrru6wfO+8Hfgii6MOTixCM0LMkx463
         wiHVAlcLSt0fcWjbOGagEptPSb3k/KD2uPDodlJ1bd2VLt5ySG4EAXswxc27FBai4cku
         p6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IxoUE4+/sRAzielPpETs7vlR47UFCkA9W57udQ/xBUI=;
        b=FLUs+9Sp44jOOEuHYXKyE3tHyMrDhbSfGSyvU9P/lcsHKX3Y6KVncj5fC/LPbcEzDy
         j/0WTa4mW7tRAnBFAgNX1MdI26Oq6ZA/eN/hCp7FwSNCRxRROH1wQp+4bhsHrOSuwG06
         ajhd+/5BZlC47Z2FZqo2Gl/fsqz3YfDC7cTSLQUvOwDNeeu2gb+Lurqv65ywSTlLCDgH
         ALP+XTbpD9pmKF6W2Lcos4+tzLQwlN//EYvMSFAK+2/pypjhJTQWzRNjxwyFlnYNRF9m
         a9DPtsW3m9rEJ5aPHGmtuhTCzB8rk1oWuzfAvyRX4X1LfzJdJPv5wtRtJd6aXc26oIJY
         i+HA==
X-Gm-Message-State: APjAAAXm28drhMrvmM/bs3hew/8+beEh4rvuZaBi04B5nOv/gOZkBWzG
	9BOt12Yr4HQ8/xuSZcaJN973SEu6vuaQPA==
X-Received: by 2002:a63:cf4d:: with SMTP id b13mr10812335pgj.396.1570713396728;
        Thu, 10 Oct 2019 06:16:36 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.brck.local ([197.254.95.158])
        by smtp.googlemail.com with ESMTPSA id 2sm8707720pfa.43.2019.10.10.06.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 06:16:36 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v3 4/4] staging: rtl8723bs: Remove unnecessary blank lines
Date: Thu, 10 Oct 2019 16:15:32 +0300
Message-Id: <50abec172689dfa413437589745032d678b82d04.1570712632.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570712632.git.wambui.karugax@gmail.com>
References: <cover.1570712632.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove multiple blank lines in
drivers/staging/rtl8723bs/core/rtw_mlme.c.
Issues reported by checkpatch.pl as:
CHECK: Please don't use multiple blank lines

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 47 -----------------------
 1 file changed, 47 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 7ec693a38396..3030ae5b6b6d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -208,7 +208,6 @@ void _rtw_free_network(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwor
 
 	pmlmepriv->num_of_scanned--;
 
-
 	/* DBG_871X("_rtw_free_network:SSID =%s\n", pnetwork->network.Ssid.Ssid); */
 
 	spin_unlock_bh(&free_queue->lock);
@@ -300,12 +299,8 @@ void rtw_free_network_queue(struct adapter *padapter, u8 isfreeall)
 	spin_unlock_bh(&scanned_queue->lock);
 }
 
-
-
-
 sint rtw_if_up(struct adapter *padapter)
 {
-
 	sint res;
 
 	if (padapter->bDriverStopped || padapter->bSurpriseRemoved ||
@@ -317,7 +312,6 @@ sint rtw_if_up(struct adapter *padapter)
 	return res;
 }
 
-
 void rtw_generate_random_ibss(u8 *pibss)
 {
 	unsigned long curtime = jiffies;
@@ -335,7 +329,6 @@ u8 *rtw_get_capability_from_ie(u8 *ie)
 	return ie + 8 + 2;
 }
 
-
 u16 rtw_get_capability(struct wlan_bssid_ex *bss)
 {
 	__le16	val;
@@ -423,7 +416,6 @@ int is_same_network(struct wlan_bssid_ex *src, struct wlan_bssid_ex *dst, u8 fea
 	memcpy((u8 *)&tmps, rtw_get_capability_from_ie(src->IEs), 2);
 	memcpy((u8 *)&tmpd, rtw_get_capability_from_ie(dst->IEs), 2);
 
-
 	s_cap = le16_to_cpu(tmps);
 	d_cap = le16_to_cpu(tmpd);
 
@@ -465,7 +457,6 @@ struct	wlan_network	*rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
 {
 	struct list_head	*plist, *phead;
 
-
 	struct	wlan_network	*pwlan = NULL;
 	struct	wlan_network	*oldest = NULL;
 
@@ -577,12 +568,8 @@ static void update_current_network(struct adapter *adapter, struct wlan_bssid_ex
 	}
 }
 
-
 /*
-
 Caller must hold pmlmepriv->lock first.
-
-
 */
 void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *target)
 {
@@ -623,7 +610,6 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 
 	}
 
-
 	/* If we didn't find a match, then get a new network slot to initialize
 	 * with this beacon's information */
 	/* if (phead == plist) { */
@@ -759,7 +745,6 @@ int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwor
 		}
 	}
 
-
 	if ((desired_encmode != Ndis802_11EncryptionDisabled) && (privacy == 0)) {
 		DBG_871X("desired_encmode: %d, privacy: %d\n", desired_encmode, privacy);
 		bselected = false;
@@ -770,7 +755,6 @@ int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwor
 			bselected = false;
 	}
 
-
 	return bselected;
 }
 
@@ -780,7 +764,6 @@ void rtw_atimdone_event_callback(struct adapter	*adapter, u8 *pbuf)
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("receive atimdone_event\n"));
 }
 
-
 void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 {
 	u32 len;
@@ -797,7 +780,6 @@ void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 		return;
 	}
 
-
 	spin_lock_bh(&pmlmepriv->lock);
 
 	/*  update IBSS_network 's timestamp */
@@ -830,8 +812,6 @@ void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 	spin_unlock_bh(&pmlmepriv->lock);
 }
 
-
-
 void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 {
 	u8 timer_cancelled = false;
@@ -862,7 +842,6 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 	if (timer_cancelled)
 		_cancel_timer(&pmlmepriv->scan_to_timer, &timer_cancelled);
 
-
 	spin_lock_bh(&pmlmepriv->lock);
 
 	rtw_set_signal_stat_timer(&adapter->recvpriv);
@@ -1002,7 +981,6 @@ static void find_network(struct adapter *adapter)
 	else
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("rtw_free_assoc_resources : pwlan == NULL\n\n"));
 
-
 	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) &&
 	    (adapter->stapriv.asoc_sta_count == 1))
 		rtw_free_network_nolock(adapter, pwlan);
@@ -1181,7 +1159,6 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 		psta->wireless_mode = pmlmeext->cur_wireless_mode;
 		psta->raid = networktype_to_raid_ex(padapter, psta);
 
-
 		/* sta mode */
 		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
 
@@ -1213,7 +1190,6 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 			padapter->securitypriv.wps_ie_len = 0;
 		}
 
-
 		/* for A-MPDU Rx reordering buffer control for bmc_sta & sta_info */
 		/* if A-MPDU Rx is enabled, resetting  rx_ordering_ctrl wstart_b(indicate_seq) to default value = 0xffff */
 		/* todo: check if AP can send A-MPDU packets */
@@ -1230,7 +1206,6 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 			preorder_ctrl->wsize_b = 64;/* max_ampdu_sz;ex. 32(kbytes) -> wsize_b =32 */
 		}
 
-
 		bmc_sta = rtw_get_bcmc_stainfo(padapter);
 		if (bmc_sta) {
 			for (i = 0; i < 16 ; i++) {
@@ -1264,7 +1239,6 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\nfw_state:%x, BSSID:"MAC_FMT"\n"
 		, get_fwstate(pmlmepriv), MAC_ARG(pnetwork->network.MacAddress)));
 
-
 	/*  why not use ptarget_wlan?? */
 	memcpy(&cur_network->network, &pnetwork->network, pnetwork->network.Length);
 	/*  some IEs in pnetwork is wrong, so we should use ptarget_wlan IEs */
@@ -1273,7 +1247,6 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 
 	cur_network->aid = pnetwork->join_res;
 
-
 	rtw_set_signal_stat_timer(&padapter->recvpriv);
 
 	padapter->recvpriv.signal_strength = ptarget_wlan->network.PhyInfo.SignalStrength;
@@ -1341,7 +1314,6 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 
 	rtw_get_encrypt_decrypt_from_registrypriv(adapter);
 
-
 	if (pmlmepriv->assoc_ssid.SsidLength == 0)
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   joinbss event call back  for Any SSid\n"));
 	else
@@ -1403,7 +1375,6 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 				goto ignore_joinbss_callback;
 			}
 
-
 			/* s3. find ptarget_sta & update ptarget_sta after update cur_network only for station mode */
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) == true) {
 				ptarget_sta = rtw_joinbss_update_stainfo(adapter, pnetwork);
@@ -1423,7 +1394,6 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("adhoc mode, fw_state:%x", get_fwstate(pmlmepriv)));
 			}
 
-
 			/* s5. Cancel assoc_timer */
 			_cancel_timer(&pmlmepriv->assoc_timer, &timer_cancelled);
 
@@ -1582,7 +1552,6 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 	if (adapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X)
 		psta->dot118021XPrivacy = adapter->securitypriv.dot11PrivacyAlgrthm;
 
-
 	psta->ieee8021x_blocked = false;
 
 	spin_lock_bh(&pmlmepriv->lock);
@@ -1603,7 +1572,6 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 
 	spin_unlock_bh(&pmlmepriv->lock);
 
-
 	mlmeext_sta_add_event_callback(adapter, psta);
 }
 
@@ -1639,7 +1607,6 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
 	if ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE)
 		return;
 
-
 	mlmeext_sta_del_event_callback(adapter);
 
 	spin_lock_bh(&pmlmepriv->lock);
@@ -1736,7 +1703,6 @@ void rtw_cpwm_event_callback(struct adapter *padapter, u8 *pbuf)
 	cpwm_int_hdl(padapter, preportpwrstate);
 }
 
-
 void rtw_wmm_event_callback(struct adapter *padapter, u8 *pbuf)
 {
 	WMMOnAssocRsp(padapter);
@@ -1899,7 +1865,6 @@ void rtw_dynamic_check_timer_handler(struct adapter *adapter)
 	rtw_auto_scan_handler(adapter);
 }
 
-
 inline bool rtw_is_scan_deny(struct adapter *adapter)
 {
 	struct mlme_priv *mlmepriv = &adapter->mlmepriv;
@@ -2045,7 +2010,6 @@ static int rtw_check_join_candidate(struct mlme_priv *mlme
 	int updated = false;
 	struct adapter *adapter = container_of(mlme, struct adapter, mlmepriv);
 
-
 	/* check bssid, if needed */
 	if (mlme->assoc_by_bssid) {
 		if (memcmp(competitor->network.MacAddress, mlme->assoc_bssid, ETH_ALEN))
@@ -2096,12 +2060,8 @@ static int rtw_check_join_candidate(struct mlme_priv *mlme
 /*
 Calling context:
 The caller of the sub-routine will be in critical section...
-
 The caller must hold the following spinlock
-
 pmlmepriv->lock
-
-
 */
 
 int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
@@ -2208,7 +2168,6 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 	pcmd->rsp = NULL;
 	pcmd->rspsz = 0;
 
-
 	INIT_LIST_HEAD(&pcmd->list);
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("after enqueue set_auth_cmd, auth_mode =%x\n", psecuritypriv->dot11AuthAlgrthm));
@@ -2276,7 +2235,6 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 		goto exit;
 	}
 
-
 	if (enqueue) {
 		pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 		if (!pcmd) {
@@ -2331,7 +2289,6 @@ int rtw_restruct_wmm_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 
 }
 
-
 /*  */
 /*  Ported from 8185: IsInPreAuthKeyList(). (Renamed from SecIsInPreAuthKeyList(), 2006-10-13.) */
 /*  Added by Annie, 2006-05-07. */
@@ -2827,7 +2784,6 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 		/* phtpriv->ampdu_enable = true; */
 	}
 
-
 	/* check Max Rx A-MPDU Size */
 	len = 0;
 	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), _HT_CAPABILITY_IE_, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
@@ -2841,7 +2797,6 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 
 	}
 
-
 	len = 0;
 	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), _HT_ADD_INFO_IE_, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
 	if (p && len > 0) {
@@ -2951,7 +2906,6 @@ void rtw_issue_addbareq_cmd(struct adapter *padapter, struct xmit_frame *pxmitfr
 		return;
 	}
 
-
 	phtpriv = &psta->htpriv;
 
 	if (phtpriv->ht_option && phtpriv->ampdu_enable) {
@@ -2974,7 +2928,6 @@ void rtw_append_exented_cap(struct adapter *padapter, u8 *out_ie, uint *pout_len
 	u8 cap_content[8] = {0};
 	u8 *pframe;
 
-
 	if (phtpriv->bss_coexist)
 		SET_EXT_CAPABILITY_ELE_BSS_COEXIST(cap_content, 1);
 
-- 
2.23.0



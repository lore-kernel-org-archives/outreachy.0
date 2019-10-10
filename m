X-GM-THRID: 6746031998697996288
X-Received: by 2002:aa7:9295:: with SMTP id j21mr10653925pfa.223.1570713369040;
        Thu, 10 Oct 2019 06:16:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a704:: with SMTP id w4ls1228113plq.14.gmail; Thu, 10
 Oct 2019 06:16:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyFsxWppUGIGRAIps9OzxkZeGc5xDR9ykgdmxbBiswbXm5nBuGUjR7uPJMvREGJPM3oRVnf
X-Received: by 2002:a17:90a:fd83:: with SMTP id cx3mr11202019pjb.64.1570713367964;
        Thu, 10 Oct 2019 06:16:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570713367; cv=none;
        d=google.com; s=arc-20160816;
        b=yrzs8FhG15n2Tx6J7I0y3pNDZfz9KZ20ISTpe9dOA9ppF6ezObeXtoHHPfVnLIyEGL
         UDcNfCROCnCuEm7S98/QXR9PoM3P+agmXbvkmJBiSkoWK3Vi9ewnlJA9dfjD8fExcN0P
         rVHRAKUO8P7mSFDeaNAr/i61fFKJfTUQaVizosR0bn6YPdBREcAVN0AalJFBYSYIuvcF
         BjDJJtNkbadsDm0i7+hAHzKqmCt7/2rmdLcIy8mbZzz4INb1BQBsRjP2Ow0GnE8h/yqs
         Bv9FMVMWyDiPHDBLx2CsTubvyKVGI87pMkajhUOS6jKIU9j29l5KoW+LkDICasEP49eb
         hXYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lIJMVh8wrotQtz/zERpg7h3s4iBqQ0bG66y42SxddKc=;
        b=f3j288qsb0g1wsbFi1oSD2Y2g5cVoFNMuS5AX0r2RpUxm+yLTzKd/eP66xrWMklkxg
         e4dg+DzZQNWvGbMVLMbrblkdWfdp1JBTxg7e6hZaaFyGBvf0aJgMUxbM8LoGQsSdMt80
         uNYDW9yQeJ8DABgbdtJNkHJINrldgCEFrOKZytknaC/ItQ+D9pyvl7EQQHo+6AxbcGVn
         x+lh3CL9MAKOfz9DcnQTzuMEI4Yuw1w/JS5+jU4NSEGsZ249KhVIuakJigMRC4SVuDW6
         Gk7Pcf5ynsHU9p5yCUUMLtiH/2o81whn2Sy9oL3ymgeTf688peuSC0tl4GX6qQcqxaxQ
         BULw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ADvVYlJx;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q141si522070pfc.4.2019.10.10.06.16.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 06:16:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ADvVYlJx;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id t3so3646449pga.8
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 06:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lIJMVh8wrotQtz/zERpg7h3s4iBqQ0bG66y42SxddKc=;
        b=ADvVYlJxO0fxoUtY+NMBPBYmgi2E7jzKwoL8Q5kwW2s9SHCmg7Npog1udG0/kMwjzY
         sNjXuX7TA3gqWO7pX7jMjLtPN/ACJO67vvKazrsntrpYNfgVeXwqRH4jIAHEaM3Ova9X
         hBLQHORy4utzsPFtaSCMzNA/l787Jo15wMVl8vUilakpUq1YiUH3OFkzVZRwua+PI9Ej
         KxdML/r+oC81QAoYtYUn9iN8HWaZ2s4fRh6uWqUNCWgRtisG31SAbXyckWiX2sOYkB6M
         O7yUuuokm3+4+IkpPp/Ssqecn234x4/nG5F+nv1TssKTOPfQALWukyH2F37lb1dMptus
         DFMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lIJMVh8wrotQtz/zERpg7h3s4iBqQ0bG66y42SxddKc=;
        b=YAYJjLnWV04CUp+qpP0MpC7Pg0dqPysS11GLrPhyvO6q+dbvIoC84k0pxLSiI58Etc
         sGULxJ2U6K46NefathdXlHIc1dv6OurK7QG0IPNzlZfz0M5i8UfK7CrAhOK6359+AYtJ
         /PMcOOgfjWqsY0hsmS2pSWj1qsiVmEFSdkB3Gc9i9gleZ8JKFm0LaR8PMFOWJD7tjZr0
         pFWvz7vAS878JblXiD0I/t+DZCxBRGFaXpspecbE2t4kaskusBeA5oa8qoGajWF6xYc3
         +zq53OfLigvQa2IKjt0f4RBcHHSBlmbApzQTeSubTtMTWt797jlB2XXF+aGpXjL9COTA
         +qwQ==
X-Gm-Message-State: APjAAAXHiz6sCPF6+jaO75XPVLbL0ajoYCSQUMxq9eAnJgUb0r0sQBEq
	0YRvUOFYF4Fxndpbxp5d4/3WFnR/Wi6WtA==
X-Received: by 2002:a63:155e:: with SMTP id 30mr11369252pgv.204.1570713367363;
        Thu, 10 Oct 2019 06:16:07 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.brck.local ([197.254.95.158])
        by smtp.googlemail.com with ESMTPSA id 2sm8707720pfa.43.2019.10.10.06.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 06:16:06 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v3 1/4] staging: rtl8723bs: Remove comparisons to NULL in conditionals
Date: Thu, 10 Oct 2019 16:15:29 +0300
Message-Id: <f4752d3a49e02193ed7b47a353e18e56d94b5a68.1570712632.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570712632.git.wambui.karugax@gmail.com>
References: <cover.1570712632.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove most comparisons to NULL in conditionals in
drivers/staging/rtl8723bs/core/rtw_mlme.c
Issues reported by checkpatch.pl as:
CHECK: Comparison to NULL could be written

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 50 +++++++++++------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index a03cc005f053..b0018fe7bae3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -40,7 +40,7 @@ int	rtw_init_mlme_priv(struct adapter *padapter)
 
 	pbuf = vzalloc(array_size(MAX_BSS_CNT, sizeof(struct wlan_network)));
 
-	if (pbuf == NULL) {
+	if (!pbuf) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -185,7 +185,7 @@ void _rtw_free_network(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwor
 /* 	_irqL irqL; */
 	struct __queue *free_queue = &(pmlmepriv->free_bss_pool);
 
-	if (pnetwork == NULL)
+	if (!pnetwork)
 		return;
 
 	if (pnetwork->fixed == true)
@@ -220,7 +220,7 @@ void _rtw_free_network_nolock(struct	mlme_priv *pmlmepriv, struct wlan_network *
 
 	struct __queue *free_queue = &(pmlmepriv->free_bss_pool);
 
-	if (pnetwork == NULL)
+	if (!pnetwork)
 		return;
 
 	if (pnetwork->fixed == true)
@@ -633,7 +633,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 			/* If there are no more slots, expire the oldest */
 			/* list_del_init(&oldest->list); */
 			pnetwork = oldest;
-			if (pnetwork == NULL) {
+			if (!pnetwork) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("\n\n\nsomething wrong here\n\n\n"));
 				goto exit;
 			}
@@ -654,7 +654,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 
 			pnetwork = rtw_alloc_network(pmlmepriv); /*  will update scan_time */
 
-			if (pnetwork == NULL) {
+			if (!pnetwork) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("\n\n\nsomething wrong here\n\n\n"));
 				goto exit;
 			}
@@ -738,7 +738,7 @@ int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwor
 	privacy = pnetwork->network.Privacy;
 
 	if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
-		if (rtw_get_wps_ie(pnetwork->network.IEs+_FIXED_IE_LENGTH_, pnetwork->network.IELength-_FIXED_IE_LENGTH_, NULL, &wps_ielen) != NULL)
+		if (rtw_get_wps_ie(pnetwork->network.IEs+_FIXED_IE_LENGTH_, pnetwork->network.IELength-_FIXED_IE_LENGTH_, NULL, &wps_ielen))
 			return true;
 		else
 			return false;
@@ -1166,7 +1166,7 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 
 	psta = rtw_get_stainfo(pstapriv, pnetwork->network.MacAddress);
-	if (psta == NULL) {
+	if (!psta) {
 		psta = rtw_alloc_stainfo(pstapriv, pnetwork->network.MacAddress);
 	}
 
@@ -1413,7 +1413,7 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 			/* s3. find ptarget_sta & update ptarget_sta after update cur_network only for station mode */
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) == true) {
 				ptarget_sta = rtw_joinbss_update_stainfo(adapter, pnetwork);
-				if (ptarget_sta == NULL) {
+				if (!ptarget_sta) {
 					RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Can't update stainfo when joinbss_event callback\n"));
 					spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
 					goto ignore_joinbss_callback;
@@ -1503,7 +1503,7 @@ void rtw_sta_media_status_rpt(struct adapter *adapter, struct sta_info *psta, u3
 {
 	u16 media_status_rpt;
 
-	if (psta == NULL)
+	if (!psta)
 		return;
 
 	media_status_rpt = (u16)((psta->mac_id<<8)|mstatus); /*   MACID|OPMODE:1 connect */
@@ -1561,7 +1561,7 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 
 	/* for AD-HOC mode */
 	psta = rtw_get_stainfo(&adapter->stapriv, pstassoc->macaddr);
-	if (psta != NULL) {
+	if (psta) {
 		/* the sta have been in sta_info_queue => do nothing */
 
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error: rtw_stassoc_event_callback: sta has been in sta_hash_queue\n"));
@@ -1570,7 +1570,7 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 	}
 
 	psta = rtw_alloc_stainfo(&adapter->stapriv, pstassoc->macaddr);
-	if (psta == NULL) {
+	if (!psta) {
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Can't alloc sta_info when rtw_stassoc_event_callback\n"));
 		return;
 	}
@@ -1993,7 +1993,7 @@ int rtw_select_roaming_candidate(struct mlme_priv *mlme)
 	struct	wlan_network	*pnetwork = NULL;
 	struct	wlan_network	*candidate = NULL;
 
-	if (mlme->cur_network_scanned == NULL) {
+	if (!mlme->cur_network_scanned) {
 		rtw_warn_on(1);
 		return ret;
 	}
@@ -2006,7 +2006,7 @@ int rtw_select_roaming_candidate(struct mlme_priv *mlme)
 	while (phead != mlme->pscanned) {
 
 		pnetwork = LIST_CONTAINOR(mlme->pscanned, struct wlan_network, list);
-		if (pnetwork == NULL) {
+		if (!pnetwork) {
 			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s return _FAIL:(pnetwork == NULL)\n", __func__));
 			ret = _FAIL;
 			goto exit;
@@ -2024,7 +2024,7 @@ int rtw_select_roaming_candidate(struct mlme_priv *mlme)
 
 	}
 
-	if (candidate == NULL) {
+	if (!candidate) {
 		DBG_871X("%s: return _FAIL(candidate == NULL)\n", __func__);
 		ret = _FAIL;
 		goto exit;
@@ -2141,7 +2141,7 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 	while (phead != pmlmepriv->pscanned) {
 
 		pnetwork = LIST_CONTAINOR(pmlmepriv->pscanned, struct wlan_network, list);
-		if (pnetwork == NULL) {
+		if (!pnetwork) {
 			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s return _FAIL:(pnetwork == NULL)\n", __func__));
 			ret = _FAIL;
 			goto exit;
@@ -2159,7 +2159,7 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 
 	}
 
-	if (candidate == NULL) {
+	if (!candidate) {
 		DBG_871X("%s: return _FAIL(candidate == NULL)\n", __func__);
 #ifdef CONFIG_WOWLAN
 		_clr_fwstate_(pmlmepriv, _FW_LINKED|_FW_UNDER_LINKING);
@@ -2200,14 +2200,14 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 	sint		res = _SUCCESS;
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;  /* try again */
 		goto exit;
 	}
 
 	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
-	if (psetauthparm == NULL) {
-		kfree(pcmd);
+	if (!psetauthparm) {
+		kfree((unsigned char *)pcmd);
 		res = _FAIL;
 		goto exit;
 	}
@@ -2240,7 +2240,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 	sint	res = _SUCCESS;
 
 	psetkeyparm = rtw_zmalloc(sizeof(struct setkey_parm));
-	if (psetkeyparm == NULL) {
+	if (!psetkeyparm) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -2291,8 +2291,8 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 
 	if (enqueue) {
 		pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
-		if (pcmd == NULL) {
-			kfree(psetkeyparm);
+		if (!pcmd) {
+			kfree((unsigned char *)psetkeyparm);
 			res = _FAIL;  /* try again */
 			goto exit;
 		}
@@ -2672,7 +2672,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 		ht_capie.cap_info |= cpu_to_le16(IEEE80211_HT_CAP_SGI_20);
 
 	/* Get HT BW */
-	if (in_ie == NULL) {
+	if (!in_ie) {
 		/* TDLS: TODO 20/40 issue */
 		if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
 			operation_bw = padapter->mlmeextpriv.cur_bwmode;
@@ -2787,7 +2787,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 
 	phtpriv->ht_option = true;
 
-	if (in_ie != NULL) {
+	if (in_ie) {
 		p = rtw_get_ie(in_ie, _HT_ADD_INFO_IE_, &ielen, in_len);
 		if (p && (ielen == sizeof(struct ieee80211_ht_addt_info))) {
 			out_len = *pout_len;
@@ -2954,7 +2954,7 @@ void rtw_issue_addbareq_cmd(struct adapter *padapter, struct xmit_frame *pxmitfr
 		return;
 	}
 
-	if (psta == NULL) {
+	if (!psta) {
 		DBG_871X("%s, psta ==NUL\n", __func__);
 		return;
 	}
-- 
2.23.0



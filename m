X-GM-THRID: 6387958804710948864
X-Received: by 10.157.13.131 with SMTP id 3mr1982881ots.59.1487312565345;
        Thu, 16 Feb 2017 22:22:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.34 with SMTP id n31ls3846592ota.4.gmail; Thu, 16 Feb
 2017 22:22:44 -0800 (PST)
X-Received: by 10.129.130.6 with SMTP id s6mr2234714ywf.1.1487312562908;
        Thu, 16 Feb 2017 22:22:42 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f7si538970pfk.5.2017.02.16.22.22.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 22:22:42 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 68so3365924pfx.2
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 22:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=oropS0SiYm4O4lpMoRIBU/mO/BIjKdrtmCHtjmNzW6A=;
        b=m9z1ViqJOU87jAZ5+5qgqHXxnEm5G/myG35ZwktzYN9yapsVssTA5twmHLJvRuzhm5
         tD7f5dAElrjG4AgDtVqQLHB6FsSawwN84ygHQY1FWNwYUzJcj3NUmnOS7vmdeGIVbkGh
         9Gf2JMVfQSKoU0X8bUuaiOzV4DzcgGfoQ36mpVbb/BzRm4lMllS/Wxq/7HzDZ+5z4Kv3
         qT60laRu594xtJR3+Y0mslJw5+4Q5zQ4wGv0870ezYZf6T6yVAwCGmcPYUW/3d6s5lMN
         21CO1kgRK6oJc3L6LcwlY0O8Cr0xPlLwINrh1QFVVU/hVY+467pN+ehy1IVFNyU+RP7v
         uNNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=oropS0SiYm4O4lpMoRIBU/mO/BIjKdrtmCHtjmNzW6A=;
        b=BjR3p4YeCFy4VqCFBkDrrx8juC0IWGA3lQ5NVi0iqTJO5s4XvG8V22NqbpnTyuTl+H
         gHBTweMIqctRsK6e0NoSwxgjGGr461oY16RyTD27HVmhcBUMk8btmar7m0YQzY1CiPxX
         JKKSBLSbAIciiQ5DqMp3LaVLSSvERzSoCkq4aS0UX+DsI2dl3UStRSPdRO4bvcIi7TrG
         YVNZJHuBC0PGDUl4dFD5pA9du8rjJhMFR0GwYoJR3AmDA4Y0atB/jnoamYKYiWmFX/Of
         /IRTdvyDQ3hhUL6UZlJO5zlyxfHAv/yuV7XVTOPmbZQNeDWE8TLoZl/oSwQ8yH+8g0N4
         4PKQ==
X-Gm-Message-State: AMke39mYKmsZ6hA3l9S8OK2V15YnL/qxezEpBWe94DaZ9952notmwiJZgX6HURgwQgyPHg==
X-Received: by 10.99.154.9 with SMTP id o9mr7956729pge.69.1487312562541;
        Thu, 16 Feb 2017 22:22:42 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l3sm17141628pgn.10.2017.02.16.22.22.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 22:22:42 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 1/6] staging: rtl8188eu: Replace x==NULL by !x
Date: Fri, 17 Feb 2017 11:50:25 +0530
Message-Id: <940e53f221e79f45abe4931adecb9431b3740078.1487312015.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>

Replace x==NULL by !x, to fix the checkpatch issue
comparsion with NULL could be written as !x.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index a719289..a98a550 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -56,7 +56,7 @@ int rtw_init_mlme_priv(struct adapter *padapter)
 
 	pbuf = vzalloc(MAX_BSS_CNT * (sizeof(struct wlan_network)));
 
-	if (pbuf == NULL) {
+	if (!pbuf) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -148,7 +148,7 @@ static void _rtw_free_network(struct mlme_priv *pmlmepriv, struct wlan_network *
 	u32 lifetime = SCANQUEUE_LIFETIME;
 	struct __queue *free_queue = &(pmlmepriv->free_bss_pool);
 
-	if (pnetwork == NULL)
+	if (!pnetwork)
 		return;
 
 	if (pnetwork->fixed)
@@ -172,7 +172,7 @@ void _rtw_free_network_nolock(struct	mlme_priv *pmlmepriv, struct wlan_network *
 {
 	struct __queue *free_queue = &(pmlmepriv->free_bss_pool);
 
-	if (pnetwork == NULL)
+	if (!pnetwork)
 		return;
 	if (pnetwork->fixed)
 		return;
@@ -347,7 +347,7 @@ struct	wlan_network	*rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
 		pwlan = container_of(plist, struct wlan_network, list);
 
 		if (!pwlan->fixed) {
-			if (oldest == NULL || time_after(oldest->last_scanned, pwlan->last_scanned))
+			if (!oldest || time_after(oldest->last_scanned, pwlan->last_scanned))
 				oldest = pwlan;
 		}
 	}
@@ -458,7 +458,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 
 			pnetwork = rtw_alloc_network(pmlmepriv); /*  will update scan_time */
 
-			if (pnetwork == NULL) {
+			if (!pnetwork) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("\n\n\nsomething wrong here\n\n\n"));
 				goto exit;
 			}
@@ -527,7 +527,7 @@ static int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *
 	privacy = pnetwork->network.Privacy;
 
 	if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
-		if (rtw_get_wps_ie(pnetwork->network.IEs+_FIXED_IE_LENGTH_, pnetwork->network.IELength-_FIXED_IE_LENGTH_, NULL, &wps_ielen) != NULL)
+		if (!rtw_get_wps_ie(pnetwork->network.IEs+_FIXED_IE_LENGTH_, pnetwork->network.IELength-_FIXED_IE_LENGTH_, NULL, &wps_ielen))
 			return true;
 		else
 			return false;
@@ -877,7 +877,7 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	psta = rtw_get_stainfo(pstapriv, pnetwork->network.MacAddress);
-	if (psta == NULL)
+	if (!psta)
 		psta = rtw_alloc_stainfo(pstapriv, pnetwork->network.MacAddress);
 
 	if (psta) { /* update ptarget_sta */
@@ -1075,7 +1075,7 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 			/* s3. find ptarget_sta & update ptarget_sta after update cur_network only for station mode */
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) == true) {
 				ptarget_sta = rtw_joinbss_update_stainfo(adapter, pnetwork);
-				if (ptarget_sta == NULL) {
+				if (!ptarget_sta) {
 					RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Can't update stainfo when joinbss_event callback\n"));
 					spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 					goto ignore_joinbss_callback;
@@ -1145,7 +1145,7 @@ static u8 search_max_mac_id(struct adapter *padapter)
 #if defined(CONFIG_88EU_AP_MODE)
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 		for (aid = (pstapriv->max_num_sta); aid > 0; aid--) {
-			if (pstapriv->sta_aid[aid-1] != NULL)
+			if (!pstapriv->sta_aid[aid-1])
 				break;
 		}
 		mac_id = aid + 1;
@@ -1166,7 +1166,7 @@ void rtw_stassoc_hw_rpt(struct adapter *adapter, struct sta_info *psta)
 	u16 media_status;
 	u8 macid;
 
-	if (psta == NULL)
+	if (!psta)
 		return;
 
 	macid = search_max_mac_id(adapter);
@@ -1198,13 +1198,13 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 #endif
 	/* for AD-HOC mode */
 	psta = rtw_get_stainfo(&adapter->stapriv, pstassoc->macaddr);
-	if (psta != NULL) {
+	if (!psta) {
 		/* the sta have been in sta_info_queue => do nothing */
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error: rtw_stassoc_event_callback: sta has been in sta_hash_queue\n"));
 		return; /* between drv has received this event before and  fw have not yet to set key to CAM_ENTRY) */
 	}
 	psta = rtw_alloc_stainfo(&adapter->stapriv, pstassoc->macaddr);
-	if (psta == NULL) {
+	if (!psta) {
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Can't alloc sta_info when rtw_stassoc_event_callback\n"));
 		return;
 	}
@@ -1521,7 +1521,7 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
 		rtw_check_join_candidate(pmlmepriv, &candidate, pnetwork);
 	}
-	if (candidate == NULL) {
+	if (!candidate) {
 		DBG_88E("%s: return _FAIL(candidate==NULL)\n", __func__);
 		ret = _FAIL;
 		goto exit;
@@ -2072,7 +2072,7 @@ void rtw_issue_addbareq_cmd(struct adapter *padapter, struct xmit_frame *pxmitfr
 	else
 		psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 
-	if (psta == NULL)
+	if (!psta)
 		return;
 
 	phtpriv = &psta->htpriv;
@@ -2104,7 +2104,7 @@ void _rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
 
 	struct wlan_network *pnetwork;
 
-	if (tgt_network != NULL)
+	if (!tgt_network)
 		pnetwork = tgt_network;
 	else
 		pnetwork = &pmlmepriv->cur_network;
-- 
2.7.4



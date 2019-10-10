X-GM-THRID: 6746031998697996288
X-Received: by 2002:aca:5c82:: with SMTP id q124mr7616044oib.19.1570713390331;
        Thu, 10 Oct 2019 06:16:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1343:: with SMTP id r3ls723904otq.2.gmail; Thu, 10
 Oct 2019 06:16:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwyVo9HWJNj9w6W18fGSZm6M69/WtXJsIRwvY8weSjDk/rcXSSRTvlb3yErULB9ssBIPsqo
X-Received: by 2002:a9d:7844:: with SMTP id c4mr3787720otm.273.1570713389169;
        Thu, 10 Oct 2019 06:16:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570713389; cv=none;
        d=google.com; s=arc-20160816;
        b=CWwYqorynOH/+JlW8HKczj3L98/3xNBEji8TfPfBalxV75YZADJXmM1kMTuKaMSgtd
         +0evunYchD7Et0Eoz3XqfL3Hxm/L1wlypL1SJ8Xk8NSA1RHx0gTFXRWVeBjt/czXPHIl
         UAUjG/D+gX2eI5Igqhj2u1zXWAPw5UmI/xih8y4U39qRl/USC05HlCSh4HOoLqNU+ftx
         l+vGOO2GI72M1Q4jwkNi7g2a905Sd8AWlqacBa/XF7nXotDU/NigLuXBf3rMtYjR0e1x
         Wk10/fRr6p5VtyDFAIOVlfxhuJ+j6nY5hhxuOijeSZ6TPDtBvYurzqe0acymBt42h3P3
         adiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=70AN0OqDspO2s8Cthp/jIG3jQlRGAB2TJGjZJMaVVM4=;
        b=j1QbKY+j5sXu8dxpbHTMQvEMfxnvqBu318nEzNmOnxUmYnlYZs/e7NQUi9je1rdPwf
         V5/CAVAulJeH37AGTlDiVVX8FkE+bCya888BMEeYVXrApxwnZG8vtjBBY/S8ItRhVNZC
         vLNwawYtDWsdvvF2+WVbjzOD1eAqJ20r8ZVqxzJeHTc2efU+BRT+A546+J/y+4Df7/sf
         INa44or+9tzi5E3WwFEzULfP7aAaErUXeS+asHa4Yv4Fx/5zqD1ZiWv/oiPSNLEE/Ge9
         eEBftOSNJsJIgcPcKzrobY7pSDHLqPsZT9UZiiq0doOW8mOK+hfVoaJNa5y/8kGOps8H
         zqbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iStjb67B;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id a22si199007otf.3.2019.10.10.06.16.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 06:16:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iStjb67B;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id t10so2778041plr.8
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 06:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=70AN0OqDspO2s8Cthp/jIG3jQlRGAB2TJGjZJMaVVM4=;
        b=iStjb67BpnfaCK1AKeaw1IM7IISTmzHZ8CZp/2MLvPWikIdHJ3MFl1StXdlIvl3fVc
         mncr2MaoncFRSqwpepuTbB14qxecOsII5dTFAuhu7GNZS2UwoIG7obEM6CFPnDdzSJpG
         h6bnta0aDTmbXrCkSPJ6u4LOIdyZlvCDtEH0sHV4mWKamq8yzmLPILQU1RNiKtmLKDAl
         EcjdyrAZORHVo6VYDIoft3BAV4ao3VTk3WH2Ja+f9T0wgAk6FXaYwop9nddylUFLFMEq
         fsW4uUnGQEQTtYinyyiw0tqBINMnjt8HZV7OssXqYO45c18KMyTY4XgejyWGqpk64ysU
         VeqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=70AN0OqDspO2s8Cthp/jIG3jQlRGAB2TJGjZJMaVVM4=;
        b=ifVvh3XAEqz/G1x7rqN5F7OvI3urItq/7V9/9qqQsvZ3IfJVofztiXx0HlyTTJyEMr
         8iR9by8A5BsCVKu5qH3PBTVVJRr7eyX1wex7QwEmKtOIfynj0aZi5kc1YyeBvTJnVY4Y
         q2hCrqXciVdojN8uCttebycGrGW788zOoBAJeHugGK31iHnvfhEYUnE1HtcSbX7pOIcX
         N0GUWxVKmPrdFskG8YJAzBzR+vnzs7rRTsEOQNvDRLu87VBTf8dV4n84LL28hwXlIni/
         CsiCVaqRcnrVe0LptYBSpiSiOSAZmFPm18G1X2AdaDsYKMKrXN2PuiFG9kSnmOIA8fkU
         wVjw==
X-Gm-Message-State: APjAAAVv+TkwS6Xe+bn+cWOP/oa+FhEffu6+LMJlXwEpCN/g7xz8yubC
	pw2nUNSE+Q9ttSzDh8tm/R5zdyxtbI6SLg==
X-Received: by 2002:a17:902:8642:: with SMTP id y2mr8960918plt.187.1570713387507;
        Thu, 10 Oct 2019 06:16:27 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.brck.local ([197.254.95.158])
        by smtp.googlemail.com with ESMTPSA id 2sm8707720pfa.43.2019.10.10.06.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 06:16:27 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v3 3/4] staging: rtl8723bs: Remove comparisons to booleans in conditionals.
Date: Thu, 10 Oct 2019 16:15:31 +0300
Message-Id: <d97eaa803566c15a2658df10cf2ca77acddea7fb.1570712632.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570712632.git.wambui.karugax@gmail.com>
References: <cover.1570712632.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove comparisons to true and false in multiple if statements in
drivers/staging/rtl8723bs/core/rtw_mlme.c
Issues reported by checkpatch.pl as:
CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 29 +++++++++++------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 52f490d5ebfb..7ec693a38396 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -187,7 +187,7 @@ void _rtw_free_network(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwor
 	if (!pnetwork)
 		return;
 
-	if (pnetwork->fixed == true)
+	if (pnetwork->fixed)
 		return;
 
 	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
@@ -222,7 +222,7 @@ void _rtw_free_network_nolock(struct	mlme_priv *pmlmepriv, struct wlan_network *
 	if (!pnetwork)
 		return;
 
-	if (pnetwork->fixed == true)
+	if (pnetwork->fixed)
 		return;
 
 	/* spin_lock_irqsave(&free_queue->lock, irqL); */
@@ -480,7 +480,7 @@ struct	wlan_network	*rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
 
 		pwlan = LIST_CONTAINOR(plist, struct wlan_network, list);
 
-		if (pwlan->fixed != true) {
+		if (!pwlan->fixed) {
 			if (oldest == NULL || time_after(oldest->last_scanned, pwlan->last_scanned))
 				oldest = pwlan;
 		}
@@ -867,7 +867,7 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 
 	rtw_set_signal_stat_timer(&adapter->recvpriv);
 
-	if (pmlmepriv->to_join == true) {
+	if (pmlmepriv->to_join) {
 		if ((check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
 			if (check_fwstate(pmlmepriv, _FW_LINKED) == false) {
 				set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
@@ -1368,7 +1368,7 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 		if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) {
 			/* s1. find ptarget_wlan */
 			if (check_fwstate(pmlmepriv, _FW_LINKED)) {
-				if (the_same_macaddr == true) {
+				if (the_same_macaddr) {
 					ptarget_wlan = rtw_find_network(&pmlmepriv->scanned_queue, cur_network->network.MacAddress);
 				} else {
 					pcur_wlan = rtw_find_network(&pmlmepriv->scanned_queue, cur_network->network.MacAddress);
@@ -1843,7 +1843,7 @@ static void rtw_auto_scan_handler(struct adapter *padapter)
 				goto exit;
 			}
 
-			if (pmlmepriv->LinkDetectInfo.bBusyTraffic == true) {
+			if (pmlmepriv->LinkDetectInfo.bBusyTraffic) {
 				DBG_871X(FUNC_ADPT_FMT" exit BusyTraffic\n", FUNC_ADPT_ARG(padapter));
 				goto exit;
 			}
@@ -1863,20 +1863,20 @@ void rtw_dynamic_check_timer_handler(struct adapter *adapter)
 	if (!adapter)
 		return;
 
-	if (adapter->hw_init_completed == false)
+	if (!adapter->hw_init_completed)
 		return;
 
-	if ((adapter->bDriverStopped == true) || (adapter->bSurpriseRemoved == true))
+	if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
 		return;
 
-	if (adapter->net_closed == true)
+	if (adapter->net_closed)
 		return;
 
 	if (is_primary_adapter(adapter))
 		DBG_871X("IsBtDisabled =%d, IsBtControlLps =%d\n", hal_btcoex_IsBtDisabled(adapter), hal_btcoex_IsBtControlLps(adapter));
 
-	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode == true)
-		&& (hal_btcoex_IsBtControlLps(adapter) == false)
+	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
+		&& !(hal_btcoex_IsBtControlLps(adapter))
 		) {
 		u8 bEnterPS;
 
@@ -2047,7 +2047,7 @@ static int rtw_check_join_candidate(struct mlme_priv *mlme
 
 
 	/* check bssid, if needed */
-	if (mlme->assoc_by_bssid == true) {
+	if (mlme->assoc_by_bssid) {
 		if (memcmp(competitor->network.MacAddress, mlme->assoc_bssid, ETH_ALEN))
 			goto exit;
 	}
@@ -2805,7 +2805,6 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	u8 cbw40_enable = 0;
 
-
 	if (!phtpriv->ht_option)
 		return;
 
@@ -2815,7 +2814,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 	DBG_871X("+rtw_update_ht_cap()\n");
 
 	/* maybe needs check if ap supports rx ampdu. */
-	if ((phtpriv->ampdu_enable == false) && (pregistrypriv->ampdu_enable == 1)) {
+	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {
 		if (pregistrypriv->wifi_spec == 1) {
 			/* remove this part because testbed AP should disable RX AMPDU */
 			/* phtpriv->ampdu_enable = false; */
@@ -2955,7 +2954,7 @@ void rtw_issue_addbareq_cmd(struct adapter *padapter, struct xmit_frame *pxmitfr
 
 	phtpriv = &psta->htpriv;
 
-	if ((phtpriv->ht_option == true) && (phtpriv->ampdu_enable == true)) {
+	if (phtpriv->ht_option && phtpriv->ampdu_enable) {
 		issued = (phtpriv->agg_enable_bitmap>>priority)&0x1;
 		issued |= (phtpriv->candidate_tid_bitmap>>priority)&0x1;
 
-- 
2.23.0



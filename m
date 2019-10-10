X-GM-THRID: 6746031998697996288
X-Received: by 2002:ab0:2a97:: with SMTP id h23mr56818uar.45.1570683076066;
        Wed, 09 Oct 2019 21:51:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:2d8f:: with SMTP id t137ls272530vst.10.gmail; Wed, 09
 Oct 2019 21:51:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxVZISvIbERZTbvvmlHWkMS+mWkVrNJhM9AwnlQhYf62GAzTd9iu30y3TSi3ToZzv6nGDhH
X-Received: by 2002:a67:c995:: with SMTP id y21mr4228173vsk.143.1570683075407;
        Wed, 09 Oct 2019 21:51:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570683075; cv=none;
        d=google.com; s=arc-20160816;
        b=CdCTb5y+LZJmddgiUhY0D5/FXCI90U+REUIYtNvxWHDFxpyt/G4rZ63ldoHCdfjga8
         r6nr9zLDuSvxlYjWTykE0WSfTReAGOZ0sUxllyAKhZGP/DrQ+ruJ/GGu771Lt4YxSg6d
         lU3b9QQyTSK+cafEgjwqc57rBDJd7AQ1c9fVypih6QRpyecictLkF/HHGcndlt08vzMQ
         zAp2V3fv2y2qh8ndjKdvCL63+hUQo1p74udwz6V51xsOAGevsHW0DU1N/nnoW7IwSz/c
         k4ybzNlavwUfRHBDzjhw3bcXpDnBNkxwszsBitP85NpMHRdwLjQAZBGGBfpSfmuyypmd
         kopg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LfoqiSwp30V071fHKA2y9Yd6MO8Rixw4X6avtlAC6tE=;
        b=jT2ZYQh3bpuF2ihOd+SQ7gX3aJaK1d1z2qRe31lm3OD6fzMvyQZA2xzzqH0blqcmlz
         HVsx/Kf2AYjGaGvr2w5LcE5r2CFhqxvFUZ6SRCE/CmepB/o47GlnKchU5LY/XWjRjds/
         f3b1oAQB5k84jsLtpKD/7QiyUEZQDMMgojyO5hEawToQy6Yfyid15XvFJFCGQEIOd4oz
         V8k30MrAP9yr0FSOoFt2qWMcfQUF9jDnsAI6IVPyxv++Q/+svseFynMeoPa0sMip/h1o
         a/v+U5+AWgcC2QC06NxZgGD6PpwT8UKEAIs74Ryfx4+I/0iBGZd0NmiAVBH2gATDeG0m
         iz5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="j/z8tKSb";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p18si260001vsn.1.2019.10.09.21.51.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 21:51:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="j/z8tKSb";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id e1so2852108pgj.6
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 21:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LfoqiSwp30V071fHKA2y9Yd6MO8Rixw4X6avtlAC6tE=;
        b=j/z8tKSbkfVWK1ycRkx/fbToMv4se4n6/lTodHr1FgXFKzJocs1nkuuinslsKcjr/z
         6h9vxr2QRQZkgvzUBwNuK4Y1xlXS4JKhfHDQWqQEONb9rSfk9QCTYL+BhAjNkH3Ze9eH
         5JiwK2r2waLpxn6unnQ8hjUUVAVtvOdFQX1JO/neuIJMzQo+z1KjjO3sWvJRqZCGtIDA
         g8Y9sXfYM+q8jv7gaB7RYAajeUyhr/to/1oeP0K1+RBguWYgJ1lTZM7/Ofxgdj3/09fG
         /Hk8U1oO5EOIp9w8yvlwJxxOZlG+cykXhAk1HtSFYx4c/qHQwYvI1DIqYesbs3/cIfQ3
         hM5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LfoqiSwp30V071fHKA2y9Yd6MO8Rixw4X6avtlAC6tE=;
        b=ZLMk3VZmtDzYQ8A4kc55iKAI+mGTRPZHgYeRNK/Oo2Q+T1sWGgMB5Br+c0RuN1INeX
         jLrD7Y8n9510OuNzB/cI0/VTgAP1YxF+J46vaj6Qp8Ed0a9JRbOEZ+y7A5A3Olu/RZNf
         bNQcXziRvA/n4uV/v7hfbEoKUJlvMaIw5LAZcOAUn9e9QkKlXX2dzh7e3K7tr8mjdd1M
         eQW+OANL1T6Nh1CQTpSDCtpTgzqyN2a/giRaQBGR8Wzovh01pI5oLmGCNs5804ZgC6I/
         YjDu2Mm08n5Vwl7mgulFE2crqiG1Q+ZnQujgeEgFny6Kr3tr9h0Hzm1Ps19AnCFScZRg
         Lmwg==
X-Gm-Message-State: APjAAAVRLtbi5WiJD/8YQYIIC7QuTOHWVSbNCpgMKT0yAebuhqu8JuQh
	sBm3ojM5/Dg0rbkWJnNf0+NBMfyKWycEQA==
X-Received: by 2002:a65:648e:: with SMTP id e14mr8556165pgv.391.1570683074120;
        Wed, 09 Oct 2019 21:51:14 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id q20sm4520090pfl.79.2019.10.09.21.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 21:51:13 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v2 3/4] staging: rtl8723bs: Remove comparisons to booleans in conditionals.
Date: Thu, 10 Oct 2019 07:49:07 +0300
Message-Id: <4af8981347a05f0a25fa1540d8753e7040ea2d85.1570682635.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570682635.git.wambui.karugax@gmail.com>
References: <cover.1570682635.git.wambui.karugax@gmail.com>
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
index b15b761782b8..17da4170e861 100644
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



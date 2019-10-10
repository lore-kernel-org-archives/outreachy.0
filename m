X-GM-THRID: 6746014123494998016
X-Received: by 2002:a25:afd1:: with SMTP id d17mr4523212ybj.470.1570678855526;
        Wed, 09 Oct 2019 20:40:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:6e54:: with SMTP id j81ls407506ybc.11.gmail; Wed, 09 Oct
 2019 20:40:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz8/ohx/fLYeAxhxKApTy+jCJAVAjRUKDf7RVgbQht9ZkhJ19sSnfEXNgCEs5c+74WNG78N
X-Received: by 2002:a5b:392:: with SMTP id k18mr4851192ybp.149.1570678854090;
        Wed, 09 Oct 2019 20:40:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570678854; cv=none;
        d=google.com; s=arc-20160816;
        b=SsL4oXPnC1K5g+2t2bUa9EdRfS0Maif5mJ36+y1Bagw1WbHI87V3cWNxGcED1J5cMz
         lr4me8rlioH8ARFxrdM+Fs2YTyIQyFQj9NVEFoz4d+0v7QYQ76ZHDyRrG1o6C/0ItDfw
         INm+JmMtQTGPABpz97LP3rzk+XPjEe/UqddV3C/Q0oPgHwAgSfUuDJBKhS5k3W8sOfNl
         pDcjIRj8zM9ezB72x4uKa/72zQ6ZvXKEYO80e0ZIr/kWZ7ovlNWZuW3Fmk45Jz+9/gJi
         1yoG4KEhZzQAnfmD9bx+/gCMZH4gE0Tez6Xg96clFLEc6+fIGMlVj8AweLY3v9eLd2tQ
         SmTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LfoqiSwp30V071fHKA2y9Yd6MO8Rixw4X6avtlAC6tE=;
        b=LVyLzE/KO9b+sQCwfQRzdPAHW/k9E+VBcV9vdAjwOb/azNtjIEe+lTznmn00uJOe7d
         DcjwV9BrtAp9QRWXhaulDmP+ORFysF3GtTC1fGgaCuDQA8lXCNnCW4DoSQ00Iuy7v5FQ
         WWlre1EANhx20L0AHOWGsdBAqDpjelazdc8AoThZlvwjFe40Vx6tnluncw8ar+k37sfH
         E1f/N5JzOej5QqKSeazaxF4sA/VI8GaWLj5+YRYOhmCa2Mh2FfVWXXd6IHcSkR7K+AdV
         PZ2fZghyQ+sXTQVi5GyeZ9AeqjFPawR8KUBM7rL5x0MK9KHJAm4VZaOPfZFR66vM1FZJ
         GA6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RXybswv0;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u129si188483ywc.1.2019.10.09.20.40.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 20:40:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RXybswv0;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id r1so1556213pgj.12
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 20:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LfoqiSwp30V071fHKA2y9Yd6MO8Rixw4X6avtlAC6tE=;
        b=RXybswv0h11TANAyo6FyI0kxhdj4T1Xxw95UlLGWssTfNu7ScY+3NviDzOi3V/5FJg
         e22ZhqPoE8UDVA3yPbj5B64+rRRl37EYP+rU70BScXIHWZJmNJPvvAaTnrjPTCEOJSYx
         UJbxqvJqrblxFlZ2vJlX+cwU0i3lYF3w7XhwtTRNA7hEImqQFj1JSxkYnhdCIYRZEz2l
         8n+IcFiOAe4RodcEr8WqJMkBV0Rb/5s4H2Oznd3weDC20mmPLMcURu/GtPIfP26cQmQU
         Hir8gGgMnD75wznt9gcAEqyHySBQM9IUHbj4eej3R3cw1Ur9+jBKRW+kgfm3HvyMX1bu
         SWZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LfoqiSwp30V071fHKA2y9Yd6MO8Rixw4X6avtlAC6tE=;
        b=jgs80Gg/RWONipnWhREZwQ7kvYq/IMpTQPl5+IqLo8GFQjuUOTxNabRzp0dbSJwFmr
         rh2E5+ctW1fqrv8I7DXtuWiTGggxH7SY1Lipx7LAysxq6H9QQL+/sRVVJqL8cM4A9HoK
         JUw8ExShIYK7P9Yfqt+RVoKdBu6XH1akPUzjj1FbgGiCLkyCfdleueWKKCjFehN1OL6I
         ZaFT+5cFqTiKuHqB+K0Qz+iSIwXlzwdmRvg+PhwF3defoOZfIIxMB6ze9IkXgL21dpIi
         PM+q4DO9m9e/CPevvvKN5oDukwtAalwWrQCgGprwabj0NStnSZH4Y7iqHxl796PCppEG
         IL1Q==
X-Gm-Message-State: APjAAAXs6iEMns3WBONa0410QfMSQoY9RClsxxmeO8z/5Pjsu35GrG0p
	e8g1+Pdp5wHbgEYxN/ZQbawjk5gge+mCBQ==
X-Received: by 2002:a62:ae06:: with SMTP id q6mr7757139pff.96.1570678852962;
        Wed, 09 Oct 2019 20:40:52 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id k95sm3517741pje.10.2019.10.09.20.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 20:40:52 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 3/4] staging: rtl8723bs: Remove comparisons to booleans in conditionals.
Date: Thu, 10 Oct 2019 06:39:23 +0300
Message-Id: <4af8981347a05f0a25fa1540d8753e7040ea2d85.1570678371.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570678371.git.wambui.karugax@gmail.com>
References: <cover.1570678371.git.wambui.karugax@gmail.com>
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



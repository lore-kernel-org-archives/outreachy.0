X-GM-THRID: 7021611435626070016
X-Received: by 2002:a05:6638:4090:: with SMTP id m16mr8542736jam.147.1634908433643;
        Fri, 22 Oct 2021 06:13:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:1404:: with SMTP id n4ls2252771ilo.6.gmail; Fri, 22
 Oct 2021 06:13:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxjxrF29/0J54aVgmt1gxCZcDhbramSAtfFKEPPzj5ueHNLqI1xu6jDivH6mUfq/TqcvyCj
X-Received: by 2002:a05:6e02:15c9:: with SMTP id q9mr7802933ilu.298.1634908432818;
        Fri, 22 Oct 2021 06:13:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634908432; cv=none;
        d=google.com; s=arc-20160816;
        b=vvFwNAGhEFClaqNOuINZsOVmWUkETZXr+O6GMn2xScPbcEUd+xy0M/l3fPHD0OgkyK
         wTFmVtfdKtg+3kd7hYubtMZrJcZqkfLb0wYz+ctTtMqUr0IjgpMfPOiEZGXeJahANdt9
         cgNaYkBn0jYFWYbAE4wbcQMyIXCWebskqP2WxuxstPwYphRQ4CXFQq8mNUXidmkxo4nW
         cxX6yM0aWdAfn55Stxh5WIaBb2ewo1uRnhlQzkkfHtCA7Y9qjnsFpuJxnqq4QZXN5Y0/
         rGSZLRMf6D9mJKzD5vSOb1y78eArJ91HuhsvQpTspA2FpcDckWVEDLZk7ZFllLXxbYgv
         XSkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=u6a7WKHMJ5R8DtQaxoIKF/wzUy7PwaZ62DvxqAVWopA=;
        b=OCpozFrdhAtS3RfcKlJ82x+SzEHutOR+re5XilWndEYivRs/O2L7VjPCp6qwpVYVfK
         avlDh8+qrfMohnSK11Ttu3pKWLjCOIWt04n/KNzdJhR4+ts7MwXSLhtaVoM5VJWS623r
         Tss7zTdi3M8w4FKYD02/R6HdvLj9DlY4ZfuD+c7UqVr5du2FSvKLW9k5QGap/JcYIGLP
         KpXcDYHevLOUAysaI5cGVmvT54km/zNT/PIXrqmb2QahQm+q6IybO2OVX0xBEGagR3NT
         xOTyPeNg5kg5zMzqp5jzt0E5yyqQgHz3C1bYXI6mlvqL1Z4ZpXZnMvgo2w53xivOjaiA
         z8zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=BCNmC9LY;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id s3si238544iog.1.2021.10.22.06.13.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 06:13:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=BCNmC9LY;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id g184so3291291pgc.6;
        Fri, 22 Oct 2021 06:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=u6a7WKHMJ5R8DtQaxoIKF/wzUy7PwaZ62DvxqAVWopA=;
        b=BCNmC9LYvoNfaD2JR5FTVBlPk92peRK5um5q45gUh6Lb4XEshTVAvYFA0l9DVtCtCH
         R1hGtD8z1JzPE+CbDdXwk/BMsq3kwG7z/dDgGG+AXGsNBfovAKrOw9hsypH0Ih9Bthf/
         W83kZu/rZzDkR4hlAzy0ZXRKkeGix7/k9YhuLLCszqO6kq+s+bDY7dmIF5X0XmnmVByX
         t4doqwwiLTO2LH0iwfU5XjnGrSCslbYeGM9AxDBXR4Rl0x2WscxXRcBQQQh1oJ/farsF
         w/0R37ZUO7fqGEcRvQKU5Roun0ECl+bwIxXi+0Y7AYBpzyI94RXXohpelYykBFHi+wXC
         hL0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u6a7WKHMJ5R8DtQaxoIKF/wzUy7PwaZ62DvxqAVWopA=;
        b=CTv0kTLh+CAMqS+oHqwLDQb/u8+16dzwgbdxFzFoRc4uhmSzZ9pcw8oL+c8F3cFzRN
         JCosNLy13F8isCnGn0plHj3oE25KZbagRl7uylmMptLwSgbBN24xXy58ydfQOO6UWnK/
         JnjbW2fnBaajw6oQWhaC7mY2+sab13gZKQIxGVTTXQZT/BZus38D6YBCGppLYHdAYnv+
         uJb3ch8+/MgUhyAkmDnbkCQ9mam87u9ggAf0XN6/mGB8xX+pX9d0oUQuvfo4k9XN24JI
         7R3n5powksWv0+iwqevZAk+MYRXcMF3FEuGdTCfoIR45SM3oe03eekH2/Dx4ykIXwJbq
         9n8A==
X-Gm-Message-State: AOAM530l0bkSMcOmvfE/gRDmj/lPXJjasK1C5IuRVOv/VFBCfoHA2S9H
	k++81i6fCWkozxEcX+OaFeU=
X-Received: by 2002:aa7:9258:0:b0:44d:4f03:6a7a with SMTP id 24-20020aa79258000000b0044d4f036a7amr12123410pfp.33.1634908432093;
        Fri, 22 Oct 2021 06:13:52 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id mq3sm11932413pjb.33.2021.10.22.06.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 06:13:51 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: gregkh@linuxfoundation.org
Cc: kushalkothari285@gmail.com,
	kush19992810@gmail.com,
	outreachy-kernel@googlegroups.com,
	fabioaiuto83@gmail.com,
	ross.schm.dev@gmail.com,
	fmdefrancesco@gmail.com,
	marcocesati@gmail.com,
	straube.linux@gmail.com,
	philippesdixon@gmail.com,
	manuelpalenzuelamerino@gmail.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	mike.rapoport@gmail.com,
	kushalkotharitest@googlegroups.com
Subject: [PATCH v3 1/4] staging: rtl8723bs: core: Remove true and false comparison
Date: Fri, 22 Oct 2021 18:43:18 +0530
Message-Id: <7d5df4b8aacd961d0de367cbd73a8b75272652a8.1634906059.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634906059.git.kushalkothari285@gmail.com>
References: <cover.1634906059.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove comparison to true and false in if statement.
Issue found with checkpatch.pl.
CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>

Changes in v3: Enclose the version number inside the square bracket.
Changes in v2: Unnecessary parantheses handled in *v2 staging: rtl8723bs: core: Remove unnecessary parentheses*
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 2624e994513f..acd4e8b1fad5 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -371,7 +371,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
 void rtw_stop_cmd_thread(struct adapter *adapter)
 {
 	if (adapter->cmdThread &&
-		atomic_read(&(adapter->cmdpriv.cmdthd_running)) == true &&
+		atomic_read(&(adapter->cmdpriv.cmdthd_running)) &&
 		adapter->cmdpriv.stop_req == 0) {
 		adapter->cmdpriv.stop_req = 1;
 		complete(&adapter->cmdpriv.cmd_queue_comp);
@@ -542,7 +542,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 	struct cmd_priv 	*pcmdpriv = &padapter->cmdpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
-	if (check_fwstate(pmlmepriv, _FW_LINKED) == true)
+	if (check_fwstate(pmlmepriv, _FW_LINKED))
 		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SCAN, 1);
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
@@ -775,7 +775,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	/*  If not,  we have to copy the connecting AP's MAC address to it so that */
 	/*  the driver just has the bssid information for PMKIDList searching. */
 
-	if (pmlmepriv->assoc_by_bssid == false)
+	if (!pmlmepriv->assoc_by_bssid)
 		memcpy(&pmlmepriv->assoc_bssid[0], &pnetwork->network.mac_address[0], ETH_ALEN);
 
 	psecnetwork->ie_length = rtw_restruct_sec_ie(padapter, &pnetwork->network.ies[0], &psecnetwork->ies[0], pnetwork->network.ie_length);
@@ -1164,7 +1164,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
 	u8 res = _SUCCESS;
 
 	/*  check if allow software config */
-	if (swconfig && rtw_hal_is_disable_sw_channel_plan(padapter) == true) {
+	if (swconfig && rtw_hal_is_disable_sw_channel_plan(padapter)) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -1250,7 +1250,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 	/*  */
 	/*  Determine if our traffic is busy now */
 	/*  */
-	if ((check_fwstate(pmlmepriv, _FW_LINKED) == true)
+	if ((check_fwstate(pmlmepriv, _FW_LINKED))
 		/*&& !MgntInitAdapterInProgress(pMgntInfo)*/) {
 		/*  if we raise bBusyTraffic in last watchdog, using lower threshold. */
 		if (pmlmepriv->LinkDetectInfo.bBusyTraffic)
@@ -1342,7 +1342,7 @@ static void dynamic_chk_wk_hdl(struct adapter *padapter)
 
 	pmlmepriv = &(padapter->mlmepriv);
 
-	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
+	if (check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		expire_timeout_chk(padapter);
 
 	/* for debug purpose */
@@ -1377,8 +1377,8 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type)
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	u8 mstatus;
 
-	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true)
-		|| (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
+	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) ||
+		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE))) {
 		return;
 	}
 
@@ -1386,7 +1386,7 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type)
 	case LPS_CTRL_SCAN:
 		hal_btcoex_ScanNotify(padapter, true);
 
-		if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
+		if (check_fwstate(pmlmepriv, _FW_LINKED)) {
 			/*  connect */
 			LPS_Leave(padapter, "LPS_CTRL_SCAN");
 		}
@@ -1512,7 +1512,7 @@ static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
 	if (dtim <= 0 || dtim > 16)
 		return;
 
-	if (hal_btcoex_IsBtControlLps(padapter) == true)
+	if (hal_btcoex_IsBtControlLps(padapter))
 		return;
 
 	mutex_lock(&pwrpriv->lock);
@@ -1840,7 +1840,7 @@ static void c2h_wk_callback(struct work_struct *work)
 			continue;
 		}
 
-		if (ccx_id_filter(c2h_evt) == true) {
+		if (ccx_id_filter(c2h_evt)) {
 			/* Handle CCX report here */
 			rtw_hal_c2h_handler(adapter, c2h_evt);
 			kfree(c2h_evt);
-- 
2.25.1



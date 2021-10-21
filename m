X-GM-THRID: 7021611435626070016
X-Received: by 2002:a05:6808:1a05:: with SMTP id bk5mr6580344oib.108.1634846326345;
        Thu, 21 Oct 2021 12:58:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:3198:: with SMTP id p24ls1997310ots.1.gmail; Thu,
 21 Oct 2021 12:58:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyV+vqAhVlBGtyRdiAPhea/cDbjlfZhYYNy60JugM39M6vj/Az0abj35idwbcrJw0qA7eJq
X-Received: by 2002:a05:6830:1f27:: with SMTP id e7mr6524280oth.234.1634846324556;
        Thu, 21 Oct 2021 12:58:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634846324; cv=none;
        d=google.com; s=arc-20160816;
        b=lXrmEMQ+fly4M0dYjOYQ8YXUEPOMblg3Wj3QxzGy+gTOM4XnCzyryFMQWEhqDI8YpD
         Y5mnQ4InDwQ9XiTN1BJAGfnSUjDYZ2/sjKOWtDcPT5JDZdecrBnQpZvoCWCxNeYnk20J
         zv50DyMh60l3EU4cRzUKGCU+cGtupl9xvJVL6KpX+fFUyY9qJIGWJtp3oY0fhGYXvN4P
         TyCJMncdqJhhFcSu/3DYIHcDgtPTif1Ejms8yQ0Zhf6WTOBFP6Rz1+oppwWIZiLdczR9
         jRHXDwL2SpdxypkVwwWAqVXaOYSPLt2lClyhGbtBQJXS+/6pmHtemWUfX66Ehal9aGMs
         DjgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TxKGTuMCuJLnvIu5nwkmdwEyk7NIVzbX0WovkNaI9bc=;
        b=nc7C5DfEY7BpxDIWczOLwRO3R0FmhuhhmzfmW0/xwHvP5ZzE4wd+5xCKojMWs2bf4U
         V5gV/XkSZ0KCQF9KYJZz7OjRzCRc/5v6yNjAMrByuPBWTX2qswTllnmsA8h4tsWUuD2M
         YsXSiCM/PRg7DnIO93PQrXzZQdXex+mvohojeOzajqmWovIOe+UbRl72YreURz5A+Wps
         RN8oOttrV7w2qGmzP/q3HAyeYFN7UK35XBmmjS6l0Sx7aBlcEAwoxsi8XbWNPBOX2phy
         8XdcOYFxnpgTYOAe6BRMsGSd5/i7DlEgDP8ZSfCfS5i0kVPW7EZNoU+YKc21Rywb0VOI
         HfLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=clLG4MEO;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id y201si473178oie.4.2021.10.21.12.58.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 12:58:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=clLG4MEO;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42f.google.com with SMTP id o133so1599555pfg.7;
        Thu, 21 Oct 2021 12:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TxKGTuMCuJLnvIu5nwkmdwEyk7NIVzbX0WovkNaI9bc=;
        b=clLG4MEObZ11hc1ypRMrbijIktbe0i04RyctFNG7R6xYHQdCzi1Lp9+TjaoZF93SPu
         uRIjU/onyY6zJOSBcLKx3fvNFqAVD947HHWffIVkgfweMg6renFvXTLbNOxz9d7jLltl
         1xuCbkkJsOrmxD4F0Qyvul6VJ2cIPzAuRXZhChqAqCbRe5EIfbwj+hUAasB3JPgHXc2Q
         Ey3iWKbqFf7OIBEK9oYCgKGZ+ID9tPcFUbRxG4sZDUcpC61qltmqRJ4FE/Olj4Kob9T5
         4igcaSJl64TD4C4MSm8XNISIStPw+Daglm924PSOdjQsw2LwURIdj9oKdWayVF2y5FCE
         qtCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TxKGTuMCuJLnvIu5nwkmdwEyk7NIVzbX0WovkNaI9bc=;
        b=K1agcjF0fKR8ydxG99oT0VbR6hn5eEMy3Z3WFHktLizQ1hH8aTaUQIcEE38P+ms8eg
         3W9WEbwitrX2SHtntmojAAr6ID2mr1Mt/IPBW2vicHmEoDAJW57PYtvMQ5O5V/UY8fi1
         tqr2jlVYf1fuHuvUGTZG8I7Uic9IepSxDAMROcXNvVKvJFE4f8FWFVZA1OtWDzR+DINy
         HfpxRNovNgZIFxqtDMmR0j73i80hcU6GyfEEmzFQv7iUi2liKNvhpo7p36UMJ0Z9Cg8Q
         WFTxUuKMXT+oEZ+Eb6XZ/R6UMt6Fsle0UZkoZuIaqPr5qV4eCmLtr0smxRSlSO0o9bcR
         RJXQ==
X-Gm-Message-State: AOAM5335ODuPiv+rAMUXx7kcdiJs7J8LN28MTEsh6WmLN5/n6y3/hp9I
	i+pxcxvX0kKgPUkneNw8Slg=
X-Received: by 2002:a05:6a00:1911:b0:44d:7f2d:4184 with SMTP id y17-20020a056a00191100b0044d7f2d4184mr7722960pfi.17.1634846324155;
        Thu, 21 Oct 2021 12:58:44 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([2401:4900:1fee:e3e7:7dfb:56c1:efef:3c0f])
        by smtp.googlemail.com with ESMTPSA id v9sm7198898pfc.23.2021.10.21.12.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 12:58:43 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: gregkh@linuxfoundation.org
Cc: fabioaiuto83@gmail.com,
	kushalkothari285@gmail.com,
	ross.schm.dev@gmail.com,
	fmdefrancesco@gmail.com,
	marcocesati@gmail.com,
	straube.linux@gmail.com,
	philippesdixon@gmail.com,
	manuelpalenzuelamerino@gmail.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	mike.rapoport@gmail.com,
	kushalkotharitest@googlegroups.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtl8723bs: core: Remove true and false comparison
Date: Fri, 22 Oct 2021 01:27:50 +0530
Message-Id: <a9b75b3ab7c83dc5cef541301263fe17a704f026.1634845504.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634845504.git.kushalkothari285@gmail.com>
References: <cover.1634845504.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove comparison to true and false in if statement.
Issue found with checkpatch.pl.
CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 2624e994513f..0be3a8dbeec8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -371,7 +371,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
 void rtw_stop_cmd_thread(struct adapter *adapter)
 {
 	if (adapter->cmdThread &&
-		atomic_read(&(adapter->cmdpriv.cmdthd_running)) == true &&
+		atomic_read(&adapter->cmdpriv.cmdthd_running) &&
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
+	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ||
+		check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
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



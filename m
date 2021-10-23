X-GM-THRID: 7021611435626070016
X-Received: by 2002:a05:620a:28c9:: with SMTP id l9mr3705082qkp.360.1634974644051;
        Sat, 23 Oct 2021 00:37:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:27d8:: with SMTP id m24ls5957495qtg.6.gmail; Sat, 23 Oct
 2021 00:37:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxSiuQJd/Z0yVd/qntFy8xXgXtJA6o5llYDeAYtv3gc8W4Y1tO4z/QR7SNJOEyvWoMixEX1
X-Received: by 2002:a05:622a:174b:: with SMTP id l11mr4872394qtk.306.1634974643114;
        Sat, 23 Oct 2021 00:37:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634974643; cv=none;
        d=google.com; s=arc-20160816;
        b=WERT8gHARVhzJRustYjYofA8V4zrXflH4aI0dZdOMj9ozD5ikxtZXkRVo37CLL4o7h
         WCwE6cKXzw/x0QXLPp4JeaHgfuFrc/C4qe2F9IO0gcqbXEa2J3fnWOFmM36gv8a2J3H1
         2/Fs3ah8EBE4Y0ptRa9jWnl4uRIsOwpIZ5fF2J/kni4/SG6IFMrVXiF68zKD/mEP/FvB
         Z/cfde312jieUM2YMFJO6FShpLlGXNsg0IZm7KjKv0LLsxxPCS4mDNw+U2xZ4+9qdyTe
         eTqQKtPikDNJloDurahze9dVB7xQasuu4lh5nhn+/DGeTX8yJD+CmDiM2K5b9yDfwtZF
         kFFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Q5L97OuwvQtPMGsCqSSGgMgXb4wrKIfzBKtlfkqJvOI=;
        b=ol12/ROEKcmCFX0/VDOaBIUy5F/bU/LRI2MFNhRSIZp1krWYannUVK3Ja0jkRh0ktd
         CnsQLYoTfP3GTOU9a0xsxQAOAsqydrrWpIQ/GtM93t4Ir7uqtDgekzRiQywE50ZI+jBt
         pi6FYXAizetZjgLO/17HqctNdnQH0ll7mSkd7yDLB//bEQTs1lnGJIJ82Ymq8YaoScDm
         I1HKF+Mg9m+BOXLvtmkbxii7G94+VOjXHvJ4CjPmbfnmIxb0Pz/J+0gjhb00YBH2JbzW
         lv8RBwy4VjOMOqCdQMAic221NAsXeRbt3v5aGrmB6P3e5L+o0KB70oKuBsrvZr2XhQoI
         htWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lLTSW56+;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id w22si99623qkp.7.2021.10.23.00.37.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Oct 2021 00:37:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lLTSW56+;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62f.google.com with SMTP id c4so409403plg.13;
        Sat, 23 Oct 2021 00:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Q5L97OuwvQtPMGsCqSSGgMgXb4wrKIfzBKtlfkqJvOI=;
        b=lLTSW56+Lh2AK6bcA539cCpPFy2XFgZpbl6+f59UyIzQ+qx/kT774kanb0VHOOOXB3
         zXlA/az5KJhmCXh7+5t3uRBFYOriWC/tAaWrmAOItPBTndXeUXg9m1JbaZqKR2WgccTK
         nzT2KTpuXKDPiCqgWySnX2vh84/W5IkVJotbqJoTz/c/rU5Z+gyN0ZauXBMy8tWKfvIZ
         dQ/mZyLkJJJUn7wuCNO8f/pEEoOTcFVv25rrE5+pzNPcwOrCuoU3ormiBzw2mfN6Vox6
         Qakj/tV4L9jmDPky9A2JLAUggGL1xQczFDe5eNuRPBLrs7gX8IZu12g/ZOHx/2K5wW4Z
         a62g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q5L97OuwvQtPMGsCqSSGgMgXb4wrKIfzBKtlfkqJvOI=;
        b=VXTyDd8PAQApt3owOq7M/doJO//dRj62eXdm7MdY7VLMz+ZXFWHX5xhClz27f1lhki
         56XFixSawp+YMZ7vHr0PZgnALatiET015ySl2ypbnEo+vbZTsvNsogdavtgL60gKzMUS
         v1n4qdhyqMevdZlkjJJrxQNa9pjexFwkEue5VbPpawD0lSywQARbGx6+bG3+v9FUxHnn
         TjfWnpWN2BMGypZkdSAGDzl9QmpZcKj/GYohLIjvcDtM93dc/xNKrsS3FNak+fA5GUOn
         ClTcD8guuWniuQCR/6JntzCnvBUh0hnJUibUq3MV0F820H45i8FccAJKjs9eGJWY1icQ
         Ho6A==
X-Gm-Message-State: AOAM531dhmeuxFD7baXKmBOdNetxfF9TsBAMpI0Dk2N3l/sB2J+WfTkQ
	03jy3ssdvI0d0DImTtS8OUk=
X-Received: by 2002:a17:90b:3144:: with SMTP id ip4mr5458803pjb.23.1634974642253;
        Sat, 23 Oct 2021 00:37:22 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([2401:4900:5173:67c9:d8e4:2819:8ee8:8de4])
        by smtp.googlemail.com with ESMTPSA id c4sm13949791pfv.144.2021.10.23.00.37.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Oct 2021 00:37:21 -0700 (PDT)
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
Subject: [PATCH v4 1/4] staging: rtl8723bs: core: Remove true and false comparison
Date: Sat, 23 Oct 2021 13:05:47 +0530
Message-Id: <47dd38847c4e36742f88f4493773fef602ca079b.1634967010.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634967010.git.kushalkothari285@gmail.com>
References: <cover.1634967010.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove comparison to true and false in if statement.
Issue found with checkpatch.pl.
CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---

Changes in v4: move these version notes
Changes in v3: Enclose the version number inside the square bracket.
Changes in v2: Unnecessary parantheses handled in *v2 staging: rtl8723bs: core: Remove unnecessary parentheses*

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



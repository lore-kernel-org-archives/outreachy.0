X-GM-THRID: 7021853580963348480
X-Received: by 2002:ac8:5755:: with SMTP id 21mr12163782qtx.353.1634902700195;
        Fri, 22 Oct 2021 04:38:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:4692:: with SMTP id bq18ls2254624qkb.0.gmail; Fri,
 22 Oct 2021 04:38:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzdo1h/BanZxW9+x4nvq4Tchx9XToGzLTauAZ/juPXoOTp281DeRddThizJtvewd4HaoPko
X-Received: by 2002:a05:620a:2490:: with SMTP id i16mr9517430qkn.112.1634902699230;
        Fri, 22 Oct 2021 04:38:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634902699; cv=none;
        d=google.com; s=arc-20160816;
        b=tvqQqQBETJx2Q629e2a4m0+w7T1Yhjr/7wPOBAdukwUMb6xDv6GamaCE/ughsItQ3m
         fmOQk9h3RjSBK2u45Nq6q/FxNUkSk8ifKTEeK5I5CnBVtAADdcYSVE54kYhaUecXRS+8
         JGlzZy9Ad/tmOdPtGu0nm7GyR65lKi50fmOYe9CxNYoeGptAaRg/bMO0x9lGOUFEuRj5
         yjn+d4X0wbTqVbbB4u0gVtLiV1qknyDA7PmWw/RNexGECf/ONVlEVSgNgbpdYZhFlv24
         vAgfZNF4YlnBIgShqUO9PkxuJk+Ue4jXqaS6gbB2YR85aZl6QeQZpSDlpAnbuu8/j2zG
         65uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5gmoLFk4n1jtdQMycoy/0qBfbW+iXOZK7CnuhDsqeK8=;
        b=0ujHIlsaWlplHpbQ0JhP9NzSC3IgCkLjKm2C3FDlIhz0w6Q64q0Ack/k2mnEC4IIkp
         Ka98r2pLfWL+gFJw3/Gem6Yaf3z3Du8Ml3Klg0mMUtPYRfMPrnkULakZ3g44ixMjrmoy
         LwDAHsLs0qov+iptlMaI0mch90eu9qDBU1Var5Qcm6J3Q/srHcen4nUlLyN1KfQaHOkR
         UlU386OVYTv30e6P7vcfBxTuP7oLKZzIcMKSH4DcaFxq7SpXTZEKa+jdlk46K+R4AGkZ
         nM1045Xt1u2cfVqoxRAO5OMC11QP5RKHX4qDqIlb2jWZNN46+DCTfHPhe1hS/2k8kY6x
         R0jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=qh+sEeiH;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id z23si416942qko.6.2021.10.22.04.38.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 04:38:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=qh+sEeiH;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x629.google.com with SMTP id s1so2478623plg.12;
        Fri, 22 Oct 2021 04:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5gmoLFk4n1jtdQMycoy/0qBfbW+iXOZK7CnuhDsqeK8=;
        b=qh+sEeiHgK2IzhM+mJbWR94BHxnfFA/aDIoc7DuG/5eT+xXKKuDicEmeG3zXOypUr6
         SxGxiEUVn70747PR4TO+3FtHmK468+ktkNZXxOnwp74EOK5IGV6kok4yH4M7LUtgHSeD
         H1vcQpui2sTCfkTXWGblhnLpTxeldhRNu6J0u8L9eFAg8V8hUpjmAzT51e69cm5pjcsC
         70ukYoHj2XX44/GLGkp1pWMk43pdIvS1Vpnr7tyQLDytk7SjfgJJG5GpfgieXW9+nnfi
         9/qvii21BcYGkVJVqJioYjJ0N6uwmrLH+lTnuobJwCxPFz1vIeqI49RulijWpF4z65EA
         KEeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5gmoLFk4n1jtdQMycoy/0qBfbW+iXOZK7CnuhDsqeK8=;
        b=CkVcQh7WXTFSckEyWTgpqoR8HBJ99SvQLG3Akkh0j9f84Q5Ltd0eGjGET8VXWYyOVO
         JLPD304A7q11aSf5y2emiyvz9nVuLACN3mCeCXPaTVLB0cDg7EuWAlj/1z+weqTR0FTE
         KQEc454Z7k9pOhyT5CKvTSLPrSJ1dYJTsSFqBO2dLnLluqfnWPX8ePalbePl+XfEbk2O
         5GVRejJJuz2jHD6uUX/tFczgMouxkPhrNUHxM8+aE+2E23Zk6kvx1hiwkJpufueh9fxY
         SupzyocLkBL7dVvYrLpPX2a7BrY86BXz32KBUicNDnbRdpFw1MOPxKEBtqDA9TtphHDH
         EcBA==
X-Gm-Message-State: AOAM5302AZ0vpLhCzAK4NtgOCuvVMZbzN7iAMJDztxdzGQ19hkWSe5mM
	w93bo3cSMAbpyqcuA9DUCrU=
X-Received: by 2002:a17:90b:4f4c:: with SMTP id pj12mr13624202pjb.231.1634902698800;
        Fri, 22 Oct 2021 04:38:18 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id t22sm10946224pfg.148.2021.10.22.04.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 04:38:18 -0700 (PDT)
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
Subject: [PATCH 1/4] v2 staging: rtl8723bs: core: Remove true and false comparison
Date: Fri, 22 Oct 2021 17:07:35 +0530
Message-Id: <9440a92ea8eee178319ccdb651e2aea65948dbc9.1634899405.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634899405.git.kushalkothari285@gmail.com>
References: <cover.1634899405.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove comparison to true and false in if statement.
Issue found with checkpatch.pl.
CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>

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



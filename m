X-GM-THRID: 7021611435626070016
X-Received: by 2002:a17:90b:1242:: with SMTP id gx2mr14706305pjb.152.1634908441838;
        Fri, 22 Oct 2021 06:14:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a409:: with SMTP id p9ls5665646plq.3.gmail; Fri, 22
 Oct 2021 06:14:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxa9dwCwoxhbTZZJ0CtyAs/Ey3CtBK+N8yvPJtgVhygyNuSPSI3s23nD+lAnZzQPHaXAgVq
X-Received: by 2002:a17:902:bb82:b0:13f:e96a:1706 with SMTP id m2-20020a170902bb8200b0013fe96a1706mr11368230pls.31.1634908440489;
        Fri, 22 Oct 2021 06:14:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634908440; cv=none;
        d=google.com; s=arc-20160816;
        b=lOPCpJJOo7q999AdwseuHxzVA11J3nCKGF60Z3vkKMl7+3nEEQA33gOsfZua51+K7n
         RGQZmZexq5sWv5lRFUDB7V/v+1HL/lwIsGD+jTAyQ5jjg6fan9nme6+EvFHF95b1vMCC
         j38wvnt6YbOqRFETRdn8EyCFCsjGYt09WnTE3yoJ9CpKNfo/e428XP+Tu01Pvcf/YPnK
         zIwN5oqUUkwm5UemfXQ0ey7Bt/KjTaYdWUEkykx2CA5L+cwFMEBGtYd6aBPdjeuaOmcI
         ORVgXcWG0v4aqRG+a80VVDXUFzN4DY5V1pTYwYDr8LxKtHNi83qjYJnyFw8iRbdBCxmM
         xgVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IPldoHFvSzZS1OyvZf8W3u7WywXXgBcROErdpGE37cU=;
        b=RHvzZr6ibIjoS4WxVdZTeFFs3lQXh9PB2QrgTyLB34r0muxQHLg4goVK3px//viK+7
         d/6eDjoECRCTct5h7VLPD3DYj3sGPgDEV1kmGZyImvTloDmVMp0bEj0NZKFZeeliAkHF
         TAMfz/buiXtnYS/wcZvxwFVW1DfMZr1ABMGIJhUbeToVtxhRwjtQDSKL98XfpSLL6Q5e
         BAB5lf8wQV+1GPOz3sGmS0C5IF73t4HlJv6fEeoC2CgO/rg9sudiNTg3jCWqb6jEcqqV
         qU80fp4sPoV0go6gBPVORr+MhSqXzfmMUslh9XbDsSKuu0LfR0Ns8Cn+82CRf3blKEMC
         /mLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="ga4C0E/j";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id o17si276138pfu.5.2021.10.22.06.14.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 06:14:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="ga4C0E/j";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x636.google.com with SMTP id t21so2668297plr.6;
        Fri, 22 Oct 2021 06:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IPldoHFvSzZS1OyvZf8W3u7WywXXgBcROErdpGE37cU=;
        b=ga4C0E/jQD9gb7y60ZW6c3/VWZHIhwnRlWycI7VydFJv4GJavQfm6eOTQBizqO+ggN
         nDCmYSmI5vYq5BBoeyZAC1MlOTmalVa3vx9lU/0whNAXJexriZXoaHo8MoNZRT0CQ6nM
         ybbmy9c6gcSBLCml/jULAV2n0Z6QDLgP7X6hjudPsKTllWuZaBM3F4xjme7kRiRh5ipo
         P9ZlVJVbTpy9qwm3ctfPCZxG44m48K3PtUC1paWqqI8LtRoaw8Tz27j9wlFC1ueioXNo
         1MOdxgxL4lb/UzEtjmc7Sd8goHzVLhKMMSys9dQENyTgWGk7WIE3qNFzDf38D7//OuTd
         a2ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IPldoHFvSzZS1OyvZf8W3u7WywXXgBcROErdpGE37cU=;
        b=uyO+R5r+C/zhqKHIe8p+yhycST/KfHMwdTZJOt+AxRtqsjhphkOnGI1KIgWDWPwsrj
         HCXuECWNU9MSFfoDmIE5CTEeukBJJLPhX4yCHGp85Kq9aqda8QIf3gCLW2cBkUPM+WRo
         uJHGB2rvCLpq3a8GXFSpB4/dMjT2NVh/SGnASUb+ELOkLYQ1jp5ndheTGsxS/++nwk4x
         sjy5JiClg0ze1u7UY4/TIxiDR18My9ZxFs9aqFTPGC9ljss6HwSpwOgQwG958Zo5dx2b
         K0Q6E1tx0hB9OaLGULHs5pUFw0+TBFQktT4ynCxYjMQex+KUw2LPHmA1IPyGx7HZFHU3
         dEZA==
X-Gm-Message-State: AOAM531g2fkbO5GEU6K0PTbS8l53Hyc4BDCPxL8elBlfe7LROxn7UnHx
	Kfq3PkxmSm6LzD2AAnYgSyU=
X-Received: by 2002:a17:90b:ecc:: with SMTP id gz12mr14607388pjb.241.1634908440186;
        Fri, 22 Oct 2021 06:14:00 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id mq3sm11932413pjb.33.2021.10.22.06.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 06:13:59 -0700 (PDT)
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
Subject: [PATCH v3 2/4] staging: rtl8723bs: core: Remove unnecessary parentheses
Date: Fri, 22 Oct 2021 18:43:19 +0530
Message-Id: <1bf516ef08ac0a41502a339ad52176f3da12d948.1634906059.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634906059.git.kushalkothari285@gmail.com>
References: <cover.1634906059.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Issue found with checkpatch.pl.
CHECK: Remove unnecessary parentheses

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>

Changes in v3: Enclose the version number inside the square bracket.
Changes in v2: Handled all previous parentheses in this patch
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 42 ++++++++++++------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index acd4e8b1fad5..88f6b7405106 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -278,10 +278,10 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
 
 	/* spin_lock_bh(&(queue->lock)); */
 	spin_lock_irqsave(&queue->lock, irqL);
-	if (list_empty(&(queue->queue)))
+	if (list_empty(&queue->queue))
 		obj = NULL;
 	else {
-		obj = container_of(get_next(&(queue->queue)), struct cmd_obj, list);
+		obj = container_of(get_next(&queue->queue), struct cmd_obj, list);
 		list_del_init(&obj->list);
 	}
 
@@ -371,7 +371,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
 void rtw_stop_cmd_thread(struct adapter *adapter)
 {
 	if (adapter->cmdThread &&
-		atomic_read(&(adapter->cmdpriv.cmdthd_running)) &&
+		atomic_read(&adapter->cmdpriv.cmdthd_running) &&
 		adapter->cmdpriv.stop_req == 0) {
 		adapter->cmdpriv.stop_req = 1;
 		complete(&adapter->cmdpriv.cmd_queue_comp);
@@ -387,7 +387,7 @@ int rtw_cmd_thread(void *context)
 	u8 (*cmd_hdl)(struct adapter *padapter, u8 *pbuf);
 	void (*pcmd_callback)(struct adapter *dev, struct cmd_obj *pcmd);
 	struct adapter *padapter = context;
-	struct cmd_priv *pcmdpriv = &(padapter->cmdpriv);
+	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 	struct drvextra_cmd_parm *extra_parm = NULL;
 
 	thread_enter("RTW_CMD_THREAD");
@@ -395,7 +395,7 @@ int rtw_cmd_thread(void *context)
 	pcmdbuf = pcmdpriv->cmd_buf;
 
 	pcmdpriv->stop_req = 0;
-	atomic_set(&(pcmdpriv->cmdthd_running), true);
+	atomic_set(&pcmdpriv->cmdthd_running, true);
 	complete(&pcmdpriv->terminate_cmdthread_comp);
 
 	while (1) {
@@ -471,7 +471,7 @@ int rtw_cmd_thread(void *context)
 
 post_process:
 
-		if (mutex_lock_interruptible(&(pcmd->padapter->cmdpriv.sctx_mutex)) == 0) {
+		if (mutex_lock_interruptible(&pcmd->padapter->cmdpriv.sctx_mutex) == 0) {
 			if (pcmd->sctx) {
 				netdev_dbg(padapter->pnetdev,
 					   FUNC_ADPT_FMT " pcmd->sctx\n",
@@ -482,7 +482,7 @@ int rtw_cmd_thread(void *context)
 				else
 					rtw_sctx_done_err(&pcmd->sctx, RTW_SCTX_DONE_CMD_ERROR);
 			}
-			mutex_unlock(&(pcmd->padapter->cmdpriv.sctx_mutex));
+			mutex_unlock(&pcmd->padapter->cmdpriv.sctx_mutex);
 		}
 
 		/* call callback function for post-processed */
@@ -522,7 +522,7 @@ int rtw_cmd_thread(void *context)
 	} while (1);
 
 	complete(&pcmdpriv->terminate_cmdthread_comp);
-	atomic_set(&(pcmdpriv->cmdthd_running), false);
+	atomic_set(&pcmdpriv->cmdthd_running, false);
 
 	thread_exit();
 }
@@ -724,7 +724,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	struct ht_priv 		*phtpriv = &pmlmepriv->htpriv;
 	enum ndis_802_11_network_infrastructure ndis_network_mode = pnetwork->network.infrastructure_mode;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 	u32 tmp_len;
 	u8 *ptmp = NULL;
 
@@ -1243,7 +1243,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 	u8 bBusyTraffic = false, bTxBusyTraffic = false, bRxBusyTraffic = false;
 	u8 bHigherBusyTraffic = false, bHigherBusyRxTraffic = false, bHigherBusyTxTraffic = false;
 
-	struct mlme_priv 	*pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
 
 	collect_traffic_statistics(padapter);
 
@@ -1315,7 +1315,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 		struct dvobj_priv *dvobj = adapter_to_dvobj(padapter);
 		int n_assoc_iface = 0;
 
-		if (check_fwstate(&(dvobj->padapters->mlmepriv), WIFI_ASOC_STATE))
+		if (check_fwstate(&dvobj->padapters->mlmepriv, WIFI_ASOC_STATE))
 			n_assoc_iface++;
 
 		if (!from_timer && n_assoc_iface == 0)
@@ -1340,7 +1340,7 @@ static void dynamic_chk_wk_hdl(struct adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv;
 
-	pmlmepriv = &(padapter->mlmepriv);
+	pmlmepriv = &padapter->mlmepriv;
 
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		expire_timeout_chk(padapter);
@@ -1374,11 +1374,11 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type);
 void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type)
 {
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	u8 mstatus;
 
-	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) ||
-		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE))) {
+	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ||
+		check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
 		return;
 	}
 
@@ -1959,7 +1959,7 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 	struct wlan_network *pwlan = NULL;
 	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)pcmd->parmbuf;
-	struct wlan_network *tgt_network = &(pmlmepriv->cur_network);
+	struct wlan_network *tgt_network = &pmlmepriv->cur_network;
 
 	if (!pcmd->parmbuf)
 		goto exit;
@@ -1983,20 +1983,20 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 		rtw_indicate_connect(padapter);
 	} else {
 		pwlan = rtw_alloc_network(pmlmepriv);
-		spin_lock_bh(&(pmlmepriv->scanned_queue.lock));
+		spin_lock_bh(&pmlmepriv->scanned_queue.lock);
 		if (!pwlan) {
 			pwlan = rtw_get_oldest_wlan_network(&pmlmepriv->scanned_queue);
 			if (!pwlan) {
-				spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
+				spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 				goto createbss_cmd_fail;
 			}
 			pwlan->last_scanned = jiffies;
 		} else {
-			list_add_tail(&(pwlan->list), &pmlmepriv->scanned_queue.queue);
+			list_add_tail(&pwlan->list, &pmlmepriv->scanned_queue.queue);
 		}
 
 		pnetwork->length = get_wlan_bssid_ex_sz(pnetwork);
-		memcpy(&(pwlan->network), pnetwork, pnetwork->length);
+		memcpy(&pwlan->network, pnetwork, pnetwork->length);
 		/* pwlan->fixed = true; */
 
 		/* list_add_tail(&(pwlan->list), &pmlmepriv->scanned_queue.queue); */
@@ -2009,7 +2009,7 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 
 		_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 
-		spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
+		spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 		/*  we will set _FW_LINKED when there is one more sat to join us (rtw_stassoc_event_callback) */
 
 	}
-- 
2.25.1



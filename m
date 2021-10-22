X-GM-THRID: 7021853580963348480
X-Received: by 2002:a25:645:: with SMTP id 66mr11074399ybg.150.1634902707103;
        Fri, 22 Oct 2021 04:38:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5283:: with SMTP id g125ls6114865ybb.9.gmail; Fri, 22
 Oct 2021 04:38:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxtnkUACYra+XWMGs/4WurBYk/BXDCIleJMBE1VrRnCkO168sxgE0qfYGyxfdxV1X8V578f
X-Received: by 2002:a25:e406:: with SMTP id b6mr12203511ybh.134.1634902706062;
        Fri, 22 Oct 2021 04:38:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634902706; cv=none;
        d=google.com; s=arc-20160816;
        b=SOQkipKwOAS4BW1w1QUac1k4Ktf0WCLSCab/Go9S9BMFkztncNFVjXtijyBWOWMSkh
         vAirWeI+zTb2aOOZe7FExnOklIDm3rRwvjayNjMZ3nDoms1ezQHjn9LYb1mJoyIRXjFM
         rj5B6MxgStoC/tfz9rWtAY2lCKlYVzHhAaX1lpt0RPPwRhBSdKZ/6/W4lFxdI1KbeaN3
         PyvPv3ct5MRCOjjiNLAnRR984qarplnrhRc849ktKtFWQsrTF4ZkdiY82ZaPU4qSdAk3
         ylhHNHrIdUjxVqDMHEmx7ZtX/rx3GfFNPwn8Pf3GGUL5sXHu8fV8STOQtAzNktgZRilJ
         ItGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qSeJ53SMmIFfqgqOcY2ym9bLvnaTBRpm8K/KYTXz/EQ=;
        b=DznisQJIw1mrCj+7iabNMugaj98yY3rdn73iHNOBur+KLcMGHbQuEo1I8F8C+UQx0h
         Upb7AWb+6G1KUM1HWnpoI827Bd9I4+7zase3/815OrjDYseM8nU2W6FEwW6LRN33t2nG
         jOme2X9BXYMC8fYJ6EAgAwebUjCWcUaFRRsEgGvhHscqZISA9wRVIZGbp77aYXD1AmJn
         YE8AHucvK1Sjr3RGREJxW5ms6aW7XFJmBoFrjTTNwHXt5acIB5GfurSbDwaJNtGP1em9
         vqAJ4KJegYvbewjVnoiG1wS/BrVzQW7KXh6fTaVRkXXmQ86mQgbX195XAHU43TIxQ6FC
         QoeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="AJBsc/uu";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id v16si887922ybq.5.2021.10.22.04.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 04:38:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="AJBsc/uu";
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id d5so3398568pfu.1;
        Fri, 22 Oct 2021 04:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qSeJ53SMmIFfqgqOcY2ym9bLvnaTBRpm8K/KYTXz/EQ=;
        b=AJBsc/uubUTD6icfF4qtYe7ahtCk7oA74ej6lLVKmpSsEvnDqX4sWghDVBKIDzfcRM
         no7GnZjdo8tIwDo75yPUd+0WCjTVv3UCdpZfzMWq6jvEXcQFHIn8SLfGfVBgNjngTd8i
         2xrtdcCp8PiDD2bcP98aTSIZ/cVe6s0bxkhS06Is3OzxkBFNAYehCceHDSG+UPFvmAJ2
         pU801FfCQxgV7/A6tLMJ0bYDcM0IUoGuTHpR9KHq7Ju1HdMmr0CEEyKzvBGLzNkadEu2
         m/csddwsX8KIhTeMkLfUoy44E26w8tKtJr0AeBGLipYwl8VK6J//7JJrHRkZiNIErtGS
         k8Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qSeJ53SMmIFfqgqOcY2ym9bLvnaTBRpm8K/KYTXz/EQ=;
        b=tLGjMrvHyu8c9F03tYJNmgg7vRdU0nilLj0kxGwRXzwHc8kxBK74D1gk4aqn2l/2xE
         O8YtXbexEZlQLC8LvR4s5OsS5RgW08d6yg+r0YN6bKtt9ON2zGucpuFgO9mufuIubmEl
         XV3jJSaOnF90PuBkJtN8LEHOh4fyIMn7/txd7Typg9dbqhZLIKnUIkDDoZHgrv920dXt
         8z7ob5zI5R/DWXEiRHYk4vHAITbwxttwpkMO53OK4MCdVIB9jpRO/x6ahJsn3UfYQ1j2
         BXI2/P0iSIXmoFNZc83g+Q7pRF9OLbHtHRv3ZeF2g7ZAQ66gEZ1kJCQOdwnP4rgKuEDu
         uFfA==
X-Gm-Message-State: AOAM5319IX7lTq4Y38v699hH4sTLNSlyGwAiCrYa4B6h50lFpo5fItSd
	1R2eaUgpHh5n4mMLkOxTIrw=
X-Received: by 2002:a05:6a00:a94:b0:44c:ecb2:6018 with SMTP id b20-20020a056a000a9400b0044cecb26018mr11837794pfl.57.1634902705646;
        Fri, 22 Oct 2021 04:38:25 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id t22sm10946224pfg.148.2021.10.22.04.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 04:38:25 -0700 (PDT)
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
Subject: [PATCH 2/4] v2 staging: rtl8723bs: core: Remove unnecessary parentheses
Date: Fri, 22 Oct 2021 17:07:36 +0530
Message-Id: <850651064a913361a3718260b4e6c5faa29373f5.1634899405.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634899405.git.kushalkothari285@gmail.com>
References: <cover.1634899405.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Issue found with checkpatch.pl.
CHECK: Remove unnecessary parentheses

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>

Changes in v1: Handled all previous parentheses in this patch
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



X-GM-THRID: 6666450306579038208
X-Received: by 2002:a0c:95cd:: with SMTP id t13mr14583311qvt.14.1552153915631;
        Sat, 09 Mar 2019 09:51:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls2337861qvc.2.gmail; Sat, 09 Mar
 2019 09:51:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqz34D4Nx2esEGt0zY8tX2ZrPqM5Wx6zoyrsPIQ4sAyIBLOJDq03BsvwqZNV7bKNhNWllmDl
X-Received: by 2002:a0c:b08f:: with SMTP id o15mr14244291qvc.36.1552153915083;
        Sat, 09 Mar 2019 09:51:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552153915; cv=none;
        d=google.com; s=arc-20160816;
        b=bAHoxROvIAPixkUJlzCiImnqA0zASdcjGLGI2lMDXhqQ0ssUwSucvWkMJXKUveokVr
         CWHxHibxVGqwexLK11ixzAbeyHPKA8wv1E8eauavU+sZlJohRKDA++CRIl4d8uOOY7xH
         Pp2SgdJu0OEJDErybFq8mFb47wFsta5Gfb9OGxApyhzxiPTumw33aYSGRBS7v6PXaboP
         u6Nvmf8//OCrAVk8ZkeXkEHLQqZac5K4IhEZucivo++0o1HXLuCD3VTs04oN3MBuxxxN
         IvdEXqicRmbXcKHbOKRf5vWtVT+/Pa7U/snJ0PAJgmRF+ZtDumZED2o8Z8SFJ9eLX5/H
         gdqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=RZcOeAq5mGcrcNjyOFxDvz+sgEXDsXgpH4YLuOHemEg=;
        b=Fe92ueuvIdQk9Pn3z1rDmm/H1g9MpAact+Yo1Mfe/qtFVOGqEEyO8MQnw3XGInyamB
         4k8aQVeZSSOypBRFEkj+5sqb/xH0VW/m8AE6JpmG70b3xU9B/gjOXrVmqu3hF740Z7Gz
         45kHRSJ28HlGUWEBfcUHhZMtzkKyXewmNjZG2uQrQg+i4sXMiMvWMxy86UxMegBcT8tk
         YruYQkHOeXIAomd82H6B55FqqtLfPb+Ym/0rObiqAHgJl4ZkPGN8uchnWgHPeFE6MLxt
         Eotz1EGoqkp3lyAsnYfxhefQd5sdga+035ndcYsesIlKcpTJLMlXG+DuT3MbKDiPiAQb
         Y+kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rn5nU4sr;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id e12si19881qtg.5.2019.03.09.09.51.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 09:51:55 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rn5nU4sr;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id n74so509855pfi.9
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 09:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RZcOeAq5mGcrcNjyOFxDvz+sgEXDsXgpH4YLuOHemEg=;
        b=Rn5nU4sru6tUjj19vjNCq3JtPLA5aU+OJhyu5li3QgUaDn6lOgPaG+Wc1Ly8YAl+d8
         yRDnlpmtdPgEgUjyRZ/r/vPftF4BBwhHyQpxqfKsNRxuVPITcz/qiLhOG3YOjM0/Ykn0
         ZGfEmy8Fnp0w/HZ78fbmiFkVQ2e5aIEJJq9fygphcJ4SKV19lGSnV5RsDw98pFMXgvuM
         MkDyCdgNwK//FXbXapmpI+LjUDXEZWFNfNWrC+MQ+NJFD3voCJVUO1r84iUJw128bGFA
         xY/hg28WxJJlKx36AygDru7h8qltMFSHTPqGuo1/7pugpWDuwygEXvVgTOZ7vr1Pfwy/
         i5WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RZcOeAq5mGcrcNjyOFxDvz+sgEXDsXgpH4YLuOHemEg=;
        b=XvPI3ICnnm+1rYhFGxizNaF74pa5qHHb2dU28yr4Ws3VjPlgmfMB/98kFnWlbucPJf
         hyns2ndlDz30LmpD3Za09TWS5YosAuxXhm5GTMrOB/CtZECTXl7RhP9ZZ1dZIJSjXjNI
         6AD2CEBcznjzgrVPLJgKPXVjWc6zc96YpLmIFsbY8rRS+obcR+P193v2eXx3CYt5aY0i
         ytUkvR2iIRcNr7v8LT7lsLXizhKIaxCBuAe4zeoW3+7TwxqQJoWBXIyM5yXvWy7jYw5w
         vjTofrvlD/dbcyVqXF/QIfM8SgRWB+4CxXoqqOUVhhlzNX7ysoCpPeDnsvrty990kAu0
         qHbA==
X-Gm-Message-State: APjAAAWT8WUd4e3lhT7ogK6vndv1Fn6wyU4t7q+Vb5ZPnuByXG/5fCOu
	0WDc+kZEI88r9t040ZgdhZW7Lj3sD9w=
X-Received: by 2002:a17:902:8504:: with SMTP id bj4mr24392190plb.200.1552153912928;
        Sat, 09 Mar 2019 09:51:52 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e8c:9ce5:f828:5bfa:d9dc:e4ec])
        by smtp.gmail.com with ESMTPSA id g3sm1670706pfo.125.2019.03.09.09.51.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Mar 2019 09:51:52 -0800 (PST)
Date: Sat, 9 Mar 2019 23:21:46 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8712: Comparison to NULL.
Message-ID: <20190309175145.GA17784@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace NULL comparison with '!' operator which is indicated
by checkpatch.pl.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c        | 10 +++++-----
 drivers/staging/rtl8712/rtl871x_cmd.c         |  4 ++--
 drivers/staging/rtl8712/rtl871x_io.c          |  2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++++--------
 drivers/staging/rtl8712/rtl871x_mlme.c        | 16 ++++++++--------
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c    |  2 +-
 drivers/staging/rtl8712/rtl871x_recv.c        | 20 ++++++++++----------
 drivers/staging/rtl8712/rtl871x_recv.h        | 10 +++++-----
 drivers/staging/rtl8712/rtl871x_security.c    | 12 ++++++------
 drivers/staging/rtl8712/rtl871x_sta_mgt.c     |  4 ++--
 drivers/staging/rtl8712/rtl871x_xmit.c        | 24 ++++++++++++------------
 drivers/staging/rtl8712/usb_intf.c            |  2 +-
 12 files changed, 61 insertions(+), 61 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 9e09431..9aa950e 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -135,7 +135,7 @@ int r8712_free_recvframe(union recv_frame *precvframe,
 	spin_lock_irqsave(&pfree_recv_queue->lock, irqL);
 	list_del_init(&(precvframe->u.hdr.list));
 	list_add_tail(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
-	if (padapter != NULL) {
+	if (padapter) {
 		if (pfree_recv_queue == &precvpriv->free_recv_queue)
 			precvpriv->free_recvframe_cnt++;
 	}
@@ -273,7 +273,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 		/* 0~(n-1) fragment frame
 		 * enqueue to defraf_g
 		 */
-		if (pdefrag_q != NULL) {
+		if (pdefrag_q) {
 			if (fragnum == 0) {
 				/*the first fragment*/
 				if (!list_empty(&pdefrag_q->queue)) {
@@ -299,7 +299,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 		/* the last fragment frame
 		 * enqueue the last fragment
 		 */
-		if (pdefrag_q != NULL) {
+		if (pdefrag_q) {
 			phead = &pdefrag_q->queue;
 			list_add_tail(&pfhdr->list, phead);
 			/*call recvframe_defrag to defrag*/
@@ -313,7 +313,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 			prtnframe = NULL;
 		}
 	}
-	if ((prtnframe != NULL) && (prtnframe->u.hdr.attrib.privacy)) {
+	if (prtnframe && prtnframe->u.hdr.attrib.privacy) {
 		/* after defrag we must check tkip mic code */
 		if (r8712_recvframe_chkmic(padapter, prtnframe) == _FAIL) {
 			r8712_free_recvframe(prtnframe, pfree_recv_queue);
@@ -889,7 +889,7 @@ static void process_link_qual(struct _adapter *padapter,
 	struct rx_pkt_attrib *pattrib;
 	struct smooth_rssi_data *sqd = &padapter->recvpriv.signal_qual_data;
 
-	if (prframe == NULL || padapter == NULL)
+	if (!prframe || !padapter)
 		return;
 	pattrib = &prframe->u.hdr.attrib;
 	if (pattrib->signal_qual != 0) {
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 05a78ac..eaae9c0 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -194,7 +194,7 @@ void r8712_free_cmd_obj(struct cmd_obj *pcmd)
 	if ((pcmd->cmdcode != _JoinBss_CMD_) &&
 	    (pcmd->cmdcode != _CreateBss_CMD_))
 		kfree(pcmd->parmbuf);
-	if (pcmd->rsp != NULL) {
+	if (pcmd->rsp) {
 		if (pcmd->rspsz != 0)
 			kfree(pcmd->rsp);
 	}
@@ -229,7 +229,7 @@ u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 	psurveyPara->passive_mode = cpu_to_le32(pmlmepriv->passive_mode);
 	psurveyPara->ss_ssidlen = 0;
 	memset(psurveyPara->ss_ssid, 0, IW_ESSID_MAX_SIZE + 1);
-	if ((pssid != NULL) && (pssid->SsidLength)) {
+	if (pssid && pssid->SsidLength) {
 		memcpy(psurveyPara->ss_ssid, pssid->Ssid, pssid->SsidLength);
 		psurveyPara->ss_ssidlen = cpu_to_le32(pssid->SsidLength);
 	}
diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
index 17dafef..e34302a 100644
--- a/drivers/staging/rtl8712/rtl871x_io.c
+++ b/drivers/staging/rtl8712/rtl871x_io.c
@@ -50,7 +50,7 @@ static uint _init_intf_hdl(struct _adapter *padapter,
 	init_intf_priv = &r8712_usb_init_intf_priv;
 	pintf_priv = pintf_hdl->pintfpriv = kmalloc(sizeof(struct intf_priv),
 						    GFP_ATOMIC);
-	if (pintf_priv == NULL)
+	if (!pintf_priv)
 		goto _init_intf_hdl_fail;
 	pintf_hdl->adapter = (u8 *)padapter;
 	set_intf_option(&pintf_hdl->intf_option);
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index ad9b2f7..e55db92 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -467,11 +467,11 @@ static int r871x_set_wpa_ie(struct _adapter *padapter, char *pie,
 	int group_cipher = 0, pairwise_cipher = 0;
 	int ret = 0;
 
-	if ((ielen > MAX_WPA_IE_LEN) || (pie == NULL))
+	if (ielen > MAX_WPA_IE_LEN || !pie)
 		return -EINVAL;
 	if (ielen) {
 		buf = kmemdup(pie, ielen, GFP_ATOMIC);
-		if (buf == NULL)
+		if (!buf)
 			return -ENOMEM;
 		if (ielen < RSN_HEADER_LEN) {
 			ret  = -EINVAL;
@@ -763,7 +763,7 @@ static int r871x_wx_set_pmkid(struct net_device *dev,
  *	If cmd is IW_PMKSA_REMOVE, it means the wpa_supplicant wants to
  *	remove a PMKID/BSSID from driver.
  */
-	if (pPMK == NULL)
+	if (!pPMK)
 		return -EINVAL;
 	memcpy(strIssueBssid, pPMK->bssid.sa_data, ETH_ALEN);
 	switch (pPMK->cmd) {
@@ -1085,7 +1085,7 @@ static int r871x_wx_set_mlme(struct net_device *dev,
 	struct _adapter *padapter = netdev_priv(dev);
 	struct iw_mlme *mlme = (struct iw_mlme *) extra;
 
-	if (mlme == NULL)
+	if (!mlme)
 		return -1;
 	switch (mlme->cmd) {
 	case IW_MLME_DEAUTH:
@@ -1938,7 +1938,7 @@ static int r871x_get_ap_info(struct net_device *dev,
 	u8 bssid[ETH_ALEN];
 	char data[33];
 
-	if (padapter->driver_stopped || (pdata == NULL))
+	if (padapter->driver_stopped || !pdata)
 		return -EINVAL;
 	while (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY |
 			     _FW_UNDER_LINKING)) {
@@ -2002,7 +2002,7 @@ static int r871x_set_pid(struct net_device *dev,
 	struct _adapter *padapter = netdev_priv(dev);
 	struct iw_point *pdata = &wrqu->data;
 
-	if ((padapter->driver_stopped) || (pdata == NULL))
+	if (padapter->driver_stopped || !pdata)
 		return -EINVAL;
 	if (copy_from_user(&padapter->pid, pdata->pointer, sizeof(int)))
 		return -EINVAL;
@@ -2018,7 +2018,7 @@ static int r871x_set_chplan(struct net_device *dev,
 	struct iw_point *pdata = &wrqu->data;
 	int ch_plan = -1;
 
-	if ((padapter->driver_stopped) || (pdata == NULL)) {
+	if (padapter->driver_stopped || !pdata) {
 		ret = -EINVAL;
 		goto exit;
 	}
@@ -2038,7 +2038,7 @@ static int r871x_wps_start(struct net_device *dev,
 	struct iw_point *pdata = &wrqu->data;
 	u32   u32wps_start = 0;
 
-	if ((padapter->driver_stopped) || (pdata == NULL))
+	if (padapter->driver_stopped || !pdata)
 		return -EINVAL;
 	if (copy_from_user((void *)&u32wps_start, pdata->pointer, 4))
 		return -EFAULT;
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index c666e03..d48f3d1 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -95,7 +95,7 @@ static void _free_network(struct mlme_priv *pmlmepriv,
 	unsigned long irqL;
 	struct  __queue *free_queue = &(pmlmepriv->free_bss_pool);
 
-	if (pnetwork == NULL)
+	if (!pnetwork)
 		return;
 	if (pnetwork->fixed)
 		return;
@@ -115,7 +115,7 @@ static void free_network_nolock(struct mlme_priv *pmlmepriv,
 {
 	struct  __queue *free_queue = &pmlmepriv->free_bss_pool;
 
-	if (pnetwork == NULL)
+	if (!pnetwork)
 		return;
 	if (pnetwork->fixed)
 		return;
@@ -780,7 +780,7 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 					ptarget_wlan->fixed = true;
 			}
 
-			if (ptarget_wlan == NULL) {
+			if (!ptarget_wlan) {
 				if (check_fwstate(pmlmepriv,
 					_FW_UNDER_LINKING))
 					pmlmepriv->fw_state ^=
@@ -794,7 +794,7 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 					ptarget_sta =
 						 r8712_get_stainfo(pstapriv,
 						 pnetwork->network.MacAddress);
-					if (ptarget_sta == NULL)
+					if (!ptarget_sta)
 						ptarget_sta =
 						 r8712_alloc_stainfo(pstapriv,
 						 pnetwork->network.MacAddress);
@@ -905,7 +905,7 @@ void r8712_stassoc_event_callback(struct _adapter *adapter, u8 *pbuf)
 	if (!r8712_access_ctrl(&adapter->acl_list, pstassoc->macaddr))
 		return;
 	psta = r8712_get_stainfo(&adapter->stapriv, pstassoc->macaddr);
-	if (psta != NULL) {
+	if (psta) {
 		/*the sta have been in sta_info_queue => do nothing
 		 *(between drv has received this event before and
 		 * fw have not yet to set key to CAM_ENTRY)
@@ -914,7 +914,7 @@ void r8712_stassoc_event_callback(struct _adapter *adapter, u8 *pbuf)
 	}
 
 	psta = r8712_alloc_stainfo(&adapter->stapriv, pstassoc->macaddr);
-	if (psta == NULL)
+	if (!psta)
 		return;
 	/* to do : init sta_info variable */
 	psta->qos_option = 0;
@@ -1112,7 +1112,7 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 	while (1) {
 		if (end_of_queue_search(phead, pmlmepriv->pscanned)) {
 			if ((pmlmepriv->assoc_by_rssi) &&
-			    (pnetwork_max_rssi != NULL)) {
+			    (pnetwork_max_rssi)) {
 				pnetwork = pnetwork_max_rssi;
 				goto ask_for_joinbss;
 			}
@@ -1120,7 +1120,7 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 		}
 		pnetwork = container_of(pmlmepriv->pscanned,
 					struct wlan_network, list);
-		if (pnetwork == NULL)
+		if (!pnetwork)
 			return _FAIL;
 		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
 		if (pmlmepriv->assoc_by_bssid) {
diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index 588346d..bbef96f9f 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -186,7 +186,7 @@ static int mp_start_test(struct _adapter *padapter)
 	if (psta)
 		r8712_free_stainfo(padapter, psta);
 	psta = r8712_alloc_stainfo(&padapter->stapriv, bssid.MacAddress);
-	if (psta == NULL) {
+	if (!psta) {
 		res = _FAIL;
 		goto end_of_mp_start_test;
 	}
diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 28f7369..aa4e406 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -63,7 +63,7 @@ sint _r8712_init_recv_priv(struct recv_priv *precvpriv,
 	precvpriv->pallocated_frame_buf = kzalloc(NR_RECVFRAME *
 				sizeof(union recv_frame) + RXFRAME_ALIGN_SZ,
 				GFP_ATOMIC);
-	if (precvpriv->pallocated_frame_buf == NULL)
+	if (!precvpriv->pallocated_frame_buf)
 		return _FAIL;
 	kmemleak_not_leak(precvpriv->pallocated_frame_buf);
 	precvpriv->precv_frame_buf = precvpriv->pallocated_frame_buf +
@@ -102,7 +102,7 @@ union recv_frame *r8712_alloc_recvframe(struct __queue *pfree_recv_queue)
 	if (precvframe) {
 		list_del_init(&precvframe->u.hdr.list);
 		padapter = precvframe->u.hdr.adapter;
-		if (padapter != NULL) {
+		if (padapter) {
 			precvpriv = &padapter->recvpriv;
 			if (pfree_recv_queue == &precvpriv->free_recv_queue)
 				precvpriv->free_recvframe_cnt--;
@@ -150,7 +150,7 @@ sint r8712_recvframe_chkmic(struct _adapter *adapter,
 	stainfo = r8712_get_stainfo(&adapter->stapriv, &prxattrib->ta[0]);
 	if (prxattrib->encrypt == _TKIP_) {
 		/* calculate mic code */
-		if (stainfo != NULL) {
+		if (stainfo) {
 			if (IS_MCAST(prxattrib->ra)) {
 				iv = precvframe->u.hdr.rx_data +
 				     prxattrib->hdrlen;
@@ -248,7 +248,7 @@ union recv_frame *r8712_portctrl(struct _adapter *adapter,
 		memcpy(&ether_type, ptr, 2);
 		be16_to_cpus(&ether_type);
 
-		if ((psta != NULL) && (psta->ieee8021x_blocked)) {
+		if (psta && psta->ieee8021x_blocked) {
 			/* blocked
 			 * only accept EAPOL frame
 			 */
@@ -355,7 +355,7 @@ static sint sta2sta_data_frame(struct _adapter *adapter,
 		*psta = r8712_get_bcmc_stainfo(adapter);
 	else
 		*psta = r8712_get_stainfo(pstapriv, sta_addr); /* get ap_info */
-	if (*psta == NULL) {
+	if (!*psta) {
 		if (check_fwstate(pmlmepriv, WIFI_MP_STATE))
 			adapter->mppriv.rx_pktloss++;
 		return _FAIL;
@@ -405,7 +405,7 @@ static sint ap2sta_data_frame(struct _adapter *adapter,
 			*psta = r8712_get_bcmc_stainfo(adapter);
 		else
 			*psta = r8712_get_stainfo(pstapriv, pattrib->bssid);
-		if (*psta == NULL)
+		if (!*psta)
 			return _FAIL;
 	} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE) &&
 		   check_fwstate(pmlmepriv, _FW_LINKED)) {
@@ -416,7 +416,7 @@ static sint ap2sta_data_frame(struct _adapter *adapter,
 		memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
 		memcpy(pattrib->bssid,  mybssid, ETH_ALEN);
 		*psta = r8712_get_stainfo(pstapriv, pattrib->bssid);
-		if (*psta == NULL)
+		if (!*psta)
 			return _FAIL;
 	} else {
 		return _FAIL;
@@ -441,7 +441,7 @@ static sint sta2ap_data_frame(struct _adapter *adapter,
 		if (memcmp(pattrib->bssid, mybssid, ETH_ALEN))
 			return _FAIL;
 		*psta = r8712_get_stainfo(pstapriv, pattrib->src);
-		if (*psta == NULL)
+		if (!*psta)
 			return _FAIL;
 	}
 	return _SUCCESS;
@@ -475,7 +475,7 @@ static sint validate_recv_data_frame(struct _adapter *adapter,
 	pda = get_da(ptr);
 	psa = get_sa(ptr);
 	pbssid = get_hdr_bssid(ptr);
-	if (pbssid == NULL)
+	if (!pbssid)
 		return _FAIL;
 	memcpy(pattrib->dst, pda, ETH_ALEN);
 	memcpy(pattrib->src, psa, ETH_ALEN);
@@ -505,7 +505,7 @@ static sint validate_recv_data_frame(struct _adapter *adapter,
 	}
 	if (res == _FAIL)
 		return _FAIL;
-	if (psta == NULL)
+	if (!psta)
 		return _FAIL;
 	precv_frame->u.hdr.psta = psta;
 	pattrib->amsdu = 0;
diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index f87b2ff..1a56cd4 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -138,7 +138,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
 static inline u8 *get_rxmem(union recv_frame *precvframe)
 {
 	/* always return rx_head... */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_head;
 }
@@ -146,7 +146,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
 static inline u8 *get_recvframe_data(union recv_frame *precvframe)
 {
 	/* always return rx_data */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_data;
 }
@@ -156,7 +156,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
 	/* used for extract sz bytes from rx_data, update rx_data and return
 	 * the updated rx_data to the caller
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_data += sz;
 	if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
@@ -173,7 +173,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 	 * return the updated rx_tail to the caller
 	 * after putting, rx_tail must be still larger than rx_end.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail += sz;
 	if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
@@ -191,7 +191,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
 	 * updated rx_end to the caller
 	 * after pulling, rx_end must be still larger than rx_data.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail -= sz;
 	if (precvframe->u.hdr.rx_tail < precvframe->u.hdr.rx_data) {
diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index f826450..a771272 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -160,7 +160,7 @@ void r8712_wep_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 	struct	security_priv *psecuritypriv = &padapter->securitypriv;
 	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
-	if (((struct xmit_frame *)pxmitframe)->buf_addr == NULL)
+	if (((struct xmit_frame *)pxmitframe)->!buf_addr)
 		return;
 	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + TXDESC_OFFSET;
 	/*start to encrypt each fragment*/
@@ -573,7 +573,7 @@ u32 r8712_tkip_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	u32 res = _SUCCESS;
 
-	if (((struct xmit_frame *)pxmitframe)->buf_addr == NULL)
+	if (((struct xmit_frame *)pxmitframe)->!buf_addr)
 		return _FAIL;
 
 	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + TXDESC_OFFSET;
@@ -584,7 +584,7 @@ u32 r8712_tkip_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 		else
 			stainfo = r8712_get_stainfo(&padapter->stapriv,
 				  &pattrib->ra[0]);
-		if (stainfo != NULL) {
+		if (stainfo) {
 			prwskey = &stainfo->x_UncstKey.skey[0];
 			for (curfragnum = 0; curfragnum < pattrib->nr_frags;
 			     curfragnum++) {
@@ -658,7 +658,7 @@ u32 r8712_tkip_decrypt(struct _adapter *padapter, u8 *precvframe)
 	if (prxattrib->encrypt == _TKIP_) {
 		stainfo = r8712_get_stainfo(&padapter->stapriv,
 					    &prxattrib->ta[0]);
-		if (stainfo != NULL) {
+		if (stainfo) {
 			iv = pframe + prxattrib->hdrlen;
 			payload = pframe + prxattrib->iv_len +
 				  prxattrib->hdrlen;
@@ -1154,7 +1154,7 @@ u32 r8712_aes_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	u32 res = _SUCCESS;
 
-	if (((struct xmit_frame *)pxmitframe)->buf_addr == NULL)
+	if (((struct xmit_frame *)pxmitframe)->!buf_addr)
 		return _FAIL;
 	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + TXDESC_OFFSET;
 	/* 4 start to encrypt each fragment */
@@ -1367,7 +1367,7 @@ u32 r8712_aes_decrypt(struct _adapter *padapter, u8 *precvframe)
 	if (prxattrib->encrypt == _AES_) {
 		stainfo = r8712_get_stainfo(&padapter->stapriv,
 					    &prxattrib->ta[0]);
-		if (stainfo != NULL) {
+		if (stainfo) {
 			if (IS_MCAST(prxattrib->ra)) {
 				iv = pframe + prxattrib->hdrlen;
 				idx = iv[3];
diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
index 7c30b9e..f1439a7 100644
--- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
+++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
@@ -150,7 +150,7 @@ void r8712_free_stainfo(struct _adapter *padapter, struct sta_info *psta)
 	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct	sta_priv *pstapriv = &padapter->stapriv;
 
-	if (psta == NULL)
+	if (!psta)
 		return;
 	pfree_sta_queue = &pstapriv->free_sta_queue;
 	pstaxmitpriv = &psta->sta_xmitpriv;
@@ -223,7 +223,7 @@ struct sta_info *r8712_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	struct sta_info *psta = NULL;
 	u32	index;
 
-	if (hwaddr == NULL)
+	if (!hwaddr)
 		return NULL;
 	index = wifi_mac_hash(hwaddr);
 	spin_lock_irqsave(&pstapriv->sta_hash_lock, irqL);
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 7c88574..94c2a48 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -156,7 +156,7 @@ void _free_xmit_priv(struct xmit_priv *pxmitpriv)
 					pxmitpriv->pxmit_frame_buf;
 	struct xmit_buf *pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
 
-	if (pxmitpriv->pxmit_frame_buf == NULL)
+	if (!pxmitpriv->pxmit_frame_buf)
 		return;
 	for (i = 0; i < NR_XMITFRAME; i++) {
 		r8712_xmit_complete(padapter, pxmitframe);
@@ -269,7 +269,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 			pattrib->mac_id = 5;
 		} else {
 			psta = r8712_get_stainfo(pstapriv, pattrib->ra);
-			if (psta == NULL)  /* drop the pkt */
+			if (!psta)  /* drop the pkt */
 				return _FAIL;
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 				pattrib->mac_id = 5;
@@ -362,7 +362,7 @@ static sint xmitframe_addmic(struct _adapter *padapter,
 					    &pattrib->ra[0]);
 	if (pattrib->encrypt == _TKIP_) {
 		/*encode mic code*/
-		if (stainfo != NULL) {
+		if (stainfo) {
 			u8 null_key[16] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
 					   0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
 					   0x0, 0x0};
@@ -596,10 +596,10 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 	u8 *pbuf_start;
 	sint bmcst = IS_MCAST(pattrib->ra);
 
-	if (pattrib->psta == NULL)
+	if (!pattrib->psta)
 		return _FAIL;
 	psta = pattrib->psta;
-	if (pxmitframe->buf_addr == NULL)
+	if (!pxmitframe->buf_addr)
 		return _FAIL;
 	pbuf_start = pxmitframe->buf_addr;
 	ptxdesc = pbuf_start;
@@ -627,7 +627,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 		mpdu_len -= pattrib->hdrlen;
 		/* adding icv, if necessary...*/
 		if (pattrib->iv_len) {
-			if (psta != NULL) {
+			if (psta) {
 				switch (pattrib->encrypt) {
 				case _WEP40_:
 				case _WEP104_:
@@ -718,7 +718,7 @@ void r8712_update_protection(struct _adapter *padapter, u8 *ie, uint ie_len)
 	case AUTO_VCS:
 	default:
 		perp = r8712_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
-		if (perp == NULL) {
+		if (!perp) {
 			pxmitpriv->vcs = NONE_VCS;
 		} else {
 			protection = (*(perp + 2)) & BIT(1);
@@ -757,7 +757,7 @@ int r8712_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 	unsigned long irqL;
 	struct  __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
-	if (pxmitbuf == NULL)
+	if (!pxmitbuf)
 		return _FAIL;
 	spin_lock_irqsave(&pfree_xmitbuf_queue->lock, irqL);
 	list_del_init(&pxmitbuf->list);
@@ -811,7 +811,7 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitpriv,
 	struct  __queue *pfree_xmit_queue = &pxmitpriv->free_xmit_queue;
 	struct _adapter *padapter = pxmitpriv->adapter;
 
-	if (pxmitframe == NULL)
+	if (!pxmitframe)
 		return;
 	spin_lock_irqsave(&pfree_xmit_queue->lock, irqL);
 	list_del_init(&pxmitframe->list);
@@ -827,7 +827,7 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitpriv,
 void r8712_free_xmitframe_ex(struct xmit_priv *pxmitpriv,
 		      struct xmit_frame *pxmitframe)
 {
-	if (pxmitframe == NULL)
+	if (!pxmitframe)
 		return;
 	if (pxmitframe->frame_tag == DATA_FRAMETAG)
 		r8712_free_xmitframe(pxmitpriv, pxmitframe);
@@ -918,7 +918,7 @@ sint r8712_xmit_classifier(struct _adapter *padapter,
 				psta = r8712_get_stainfo(pstapriv, pattrib->ra);
 		}
 	}
-	if (psta == NULL)
+	if (!psta)
 		return _FAIL;
 	ptxservq = get_sta_pending(padapter, &pstapending,
 		   psta, pattrib->priority);
@@ -1030,7 +1030,7 @@ int r8712_pre_xmit(struct _adapter *padapter, struct xmit_frame *pxmitframe)
 		return ret;
 	}
 	pxmitbuf = r8712_alloc_xmitbuf(pxmitpriv);
-	if (pxmitbuf == NULL) { /*enqueue packet*/
+	if (!pxmitbuf) { /*enqueue packet*/
 		ret = false;
 		r8712_xmit_enqueue(padapter, pxmitframe);
 		spin_unlock_irqrestore(&pxmitpriv->lock, irqL);
diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index 7478bbd..91382c2 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -577,7 +577,7 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
 error:
 	usb_put_dev(udev);
 	usb_set_intfdata(pusb_intf, NULL);
-	if (padapter && padapter->dvobj_deinit != NULL)
+	if (padapter && padapter->dvobj_deinit)
 		padapter->dvobj_deinit(padapter);
 	if (pnetdev)
 		free_netdev(pnetdev);
-- 
2.7.4



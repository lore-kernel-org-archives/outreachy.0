X-GM-THRID: 6666450306579038208
X-Received: by 2002:a25:d83:: with SMTP id 125mr9453964ybn.50.1552405687054;
        Tue, 12 Mar 2019 08:48:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4c4:: with SMTP id 187ls2034096ybe.11.gmail; Tue, 12 Mar
 2019 08:48:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzuCBSmJ+iI/bfU4jGnvsr1q3ZY8JwcE55SlxR0BwBpwTlQ12z/3SJ9jRqz0jwQAMJgy+3U
X-Received: by 2002:a25:e82:: with SMTP id 124mr18455986ybo.54.1552405685875;
        Tue, 12 Mar 2019 08:48:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552405685; cv=none;
        d=google.com; s=arc-20160816;
        b=nz7dhaf1OPhFr05siEQ8jQpwu6tuFHJoX8h8pGxN4e6wv1j1THKqufje8Mcn6/QZGC
         NJOw+KCIQFpK/YjYjCat4OMjKEuy8tX5lJ+CtMD4cvzK5khcFPoRJqTsjo9wCWlqhLty
         d88mRR3N15AEkpn8fvHcuU5MS7Q+SvPO1EOxs4zYvEs5uVOsmVlzC3qeT20o0c7ZGHEM
         Izp2XmT/nSFO20x1/83/IIBN777OEYAp88tBznw+OL46mUv3j0uarVHIMZZw640qczr7
         ylWQRUqiNR6WZp22W3mpcXLdvPS8n2fnAxEIAn4QI6vJU3G4mk6aN/UVA6zbKuBd2m4I
         WbpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=QbYRoj6fBHRCVR8NtKzdUiso6y4DMVAi0ifNmLC7rc8=;
        b=wivy2SEiOlddUfmmPBoPII/K8jATrVZa9XUECvOL8R4I+vJadCGbG4PXqaWeoMX4L4
         0QFybSfvwqKCqKtV8tr9PzIC57qNNzwtlvzGL2Di1MBdnWAO/NFhgXyptmrl3IdrxoMo
         GCHlr3207cxOU4aWEiLITkWpEbJITFq3XwE982weaqLrERHwYaAIpKKzAwgzdOhk69us
         i7+DxwMjXE5sal3ip/kJQMZGNernKm2ut9QDYsnrr3TLr1gxDlZElBhtXPhxYYentBLe
         NJJ9XH53uO/C8jQ/mONO2Fpaxw90vMkd0yOiwVhYA93Ot8U2jZx1llLCx5NgBWzrizvW
         PZEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oIAv2Wxl;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id d186si496507ywa.1.2019.03.12.08.48.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 08:48:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oIAv2Wxl;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id h34so2109967pgh.11
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 08:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QbYRoj6fBHRCVR8NtKzdUiso6y4DMVAi0ifNmLC7rc8=;
        b=oIAv2WxlJJq/xkMr12I+djpjhb6ncTfDRaXvNQUY8KeBKVe5sDUmmv58OZQ9P33/NA
         rvWezLrxZJgGwXFOhcnU1P6nTEgYxWtbqfl+MqpjVuyElfI2X1sOUJw2PvjdpOhsJ9F4
         6K5sjQeTL0tNTUTdIp6zsxWwj2yYBlQL95Enx5/7OwXhaxevLZRn9yvroXojVFX7ZmJN
         Ac5tJZgdt6+Al2CsJOwwkcrTPjOQg7OuCo2/PFReqWkSlMx86r1u3UQ5jlHlLcvu26id
         5hE9KVc+ZBFmJMlxQR3J0AK8jLOMP3HPiGkFN/Q0rzUUllgh9TqAXA9yZAxUoWtr8T4j
         Gudg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QbYRoj6fBHRCVR8NtKzdUiso6y4DMVAi0ifNmLC7rc8=;
        b=FUJpuoQEhCd4up90O5OeVjRRlHklxQIpWzUDukQeeUsilKEKqaGkclrDdc4gKipeg+
         /bM/6REep9Ps1+sP9QFi0zeXOBy0byhZXG5edHS/XwcIPTPPtQj3E5oC/Zy7LM7aOgRH
         Qrmm/atVROKOmVrikFNeaMGQpdoxODqPTZG8pPu2qXyRGH6b21tC09rOUdZzqmng8MRF
         kbJmnUFuYE+UIjmk5a/jzG8a0VFWTaMClVOdPxx2jP9yJ3cXEWtJzhpFHnUnfE6t8A/I
         nenqjQz/IrI1gfB4EO/s6kue/qvhERvk878DH/0IH75E/2qly+xOlwJiw3eQgrMDqLSa
         zKIQ==
X-Gm-Message-State: APjAAAUsuDG/n4GK/IODZ2Bp1fdpM21cuy0WF+ZXdqCKX9TiZ0h3Fn99
	UCvPZILnfdnZvnsdJynUX6Y=
X-Received: by 2002:a17:902:1:: with SMTP id 1mr34652081pla.226.1552405684593;
        Tue, 12 Mar 2019 08:48:04 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from localhost.localdomain ([2409:4042:2e97:c77d:b003:fc56:e6eb:d569])
        by smtp.googlemail.com with ESMTPSA id q207sm12496649pgq.88.2019.03.12.08.48.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 12 Mar 2019 08:48:03 -0700 (PDT)
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] staging: rtl8712: Comparison to NULL.
Date: Tue, 12 Mar 2019 21:17:52 +0530
Message-Id: <1552405672-9266-1-git-send-email-digholebhagyashri@gmail.com>
X-Mailer: git-send-email 2.7.4

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
 drivers/staging/rtl8712/rtl871x_security.c    |  8 ++++----
 drivers/staging/rtl8712/rtl871x_sta_mgt.c     |  4 ++--
 drivers/staging/rtl8712/rtl871x_xmit.c        | 24 ++++++++++++------------
 drivers/staging/rtl8712/usb_intf.c            |  2 +-
 12 files changed, 59 insertions(+), 59 deletions(-)

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
index f826450..148e24e 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -160,7 +160,7 @@ void r8712_wep_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 	struct	security_priv *psecuritypriv = &padapter->securitypriv;
 	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
-	if (((struct xmit_frame *)pxmitframe)->buf_addr == NULL)
+	if (((struct xmit_frame *)pxmitframe)->buf_addr==NULL)
 		return;
 	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + TXDESC_OFFSET;
 	/*start to encrypt each fragment*/
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



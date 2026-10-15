Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9693CA4A0
	for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 12:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792066012; cv=none; b=UXcRgk9S9UFbEGcWf2WzX3v4Ck93ZrjoO8IQYo9++Ji3DTH8pGR5U3fyTKe8Rc2ZdDPXse6PAVh/ZdbV3caFZFZGjEUeXGrc11oTqghwm8RE8MAIUj6133J3bAnLIRmg0rlRpjvUtQRs3PiXWUUNxs2SHZzT8lEIMUZFSLCRuiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792066012; c=relaxed/simple;
	bh=cgSrAC4AHVBr99jQ1DICdOtH9llQAOcLAZmMTnDV0Rk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dCYQ3/VmoataEXqu4lzojkVHD+0ZR+8QHXmXw4GrAQs2WtVgzYXO/amgpOcWD4NcZsEGGEnCnDreTFxPrs5XtWf7Nboyd/EM7qqwppziBU3xHuOF4GUrQCNwdUckeiEF8eEnfRAjZJqTPQa5EKKt/5VVjhHLKcyJ6af5UTn1s3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AFucSMX3; arc=none smtp.client-ip=74.125.82.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AFucSMX3"
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-15ea896ddc8so2868816c88.0
        for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 05:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792066010; x=1792670810; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=l/PQRGA0PBTfcR1OxI5EM6MXmm9MO8wZxPeWGu+zgiU=;
        b=AFucSMX3LAb7jYQc0IiaL9YmiHB1HXHKMmHd5Hr6w7pvEyKW46uLxuRlAqhf/vpYgx
         9yHwfZX4vuQL1C15rqmoeUJSYDPZeKx7LKZhuvVQ88+muvfrf0KjbOjsf25qJEXzdunZ
         axTmVe0GJQKaLJMymFwsTFdDGhm2lt3tLJpqGda2PJvin2T3Umy9Vv++D2QZj76umNLG
         MVMbLTJyWqeEqtU49DO03DvHZ9XKNNZUyRRUoT4hvzsRAH8/VhXHeNJiO4xAfCApyksO
         Bym2Khp4P1/RSVwAHTN+Xq8ZGVHVco2zjOUBqYogUXGSr4JCEPY21pDUz/Rp1eI3b1HJ
         Omkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792066010; x=1792670810;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=l/PQRGA0PBTfcR1OxI5EM6MXmm9MO8wZxPeWGu+zgiU=;
        b=OrkygGpuDiiVbTVj+n6B84WQ6WZgZWp5+Q6qU4R4ESWYo/EcnOY8HupwSzNjTNUuoZ
         jU/0Xd2tDvPuXlPhcCrds2NRftF9snFDZamDIZmRqN8597lt6ct3i4608unsbjCxBBpz
         5LXppV/Wc3lJk6IgjMRYX/msks4e2gwJOgUJ/82gVUwaIBlVNH6Movn/T2nLvSS9SLHu
         BOMC/zecVnJJJGvz+jkond8CZghxLZZdfWMp70LE5sYACgXBx1tBkOz8MLRdQn6G6PNI
         zQNOVWPDlB0E6/JPKcECqpV/XBbtFlSPU10wExATDyzNvCCfEWaL6umERAxPZ39la1WW
         0pmQ==
X-Forwarded-Encrypted: i=1; AKwUvBzVEtVVkRrOzKyElSeyTLTfpPar8yw0Au/mcoaeWtf5y27mZhYfynFPphAiRpRh+YloDF/9Qg7nxqw=@lists.linux.dev
X-Gm-Message-State: AFq9FYLinEjGLwNSs8iO96UN/bfinzMe30gS5TzZxsKq9UcDXjHCXe7l
	wDFXBMy7vK549fF2k0AwYxZl78LNfIkeqJwbSwTQRkuJCy8e3svTosV4
X-Gm-Gg: AYBFou0IkzZGurK/Mp28avDp9CfRCwDLksRsViBHOPrHzI49m97lRGIvHzgDNhCc+Bi
	eKRi1IpYd2r1WRC+njIEa/Vp1o6UmdDEaa9deBlZMyM5dGiOgD+OKQfVbUXygY1U+ZAqy2dk0a8
	W9K3ecroIPFvUJVhqMFWw2akne0X21DJl6X0EjvDG3OwbSU2aVzWzE8OxBc6axzXiQR2xyKYStX
	ykBOX1nLXoU7BgSDWMSZkvaQnlZvz4OGgXQ1/HP74995QvOy5JDW7Y4tHgoPsDS1HP8/YQWEZO6
	OUmQTwf2FGicoa7ekiKK2hey/8BJMufqzCdGz7eRFsXDjORFfvIQ0e02HFDmp2Ze25d+PV3DNiX
	B4IihudYJIe8R5lG+5C0dH7Nl/h67NSu5bq4Kr+MB2SATYj04t+FbpJJo5aoRvdDRalaOs3bT9n
	xvUlwRw3u2VwN/9NoU73Z9Lba3EmpNd7I3aeW0xfotIqGdQkA8FYanr2AqpT8GqBoIlLsFlJIdD
	A2jvbLEw/epJh+6KQ==
X-Received: by 2002:a05:7022:eb53:20b0:170:64b:b388 with SMTP id a92af1059eb24-170064bb41amr20593658c88.46.1792066009771;
        Thu, 15 Oct 2026 05:06:49 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:a490:42fc:1e02:1d0b])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-17dc865cbffsm21857896c88.6.2026.10.15.05.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 05:06:48 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: error27@gmail.com,
	ethantidmore06@gmail.com,
	luka.gejak@linux.dev,
	dennylin0707@gmail.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH] staging: rtl8723bs: remove unnecessary parentheses
Date: Thu, 15 Oct 2026 17:36:34 +0530
Message-ID: <20261015120634.95218-1-pavankumaryalagada@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

Remove redundant parentheses around the address-of operator to
follow kernel coding style.

Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
 .../staging/rtl8723bs/core/rtw_ieee80211.c    |  4 +--
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    | 18 ++++++------
 drivers/staging/rtl8723bs/core/rtw_recv.c     | 28 +++++++++----------
 3 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 4d211711f2ba..9917f1310b13 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -336,11 +336,11 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	}
 
 	/* DS parameter set */
-	ie = rtw_set_ie(ie, WLAN_EID_DS_PARAMS, 1, (u8 *)&(pdev_network->configuration.ds_config), &sz);
+	ie = rtw_set_ie(ie, WLAN_EID_DS_PARAMS, 1, (u8 *)&pdev_network->configuration.ds_config, &sz);
 
 	/* IBSS Parameter Set */
 
-	ie = rtw_set_ie(ie, WLAN_EID_IBSS_PARAMS, 2, (u8 *)&(pdev_network->configuration.atim_window), &sz);
+	ie = rtw_set_ie(ie, WLAN_EID_IBSS_PARAMS, 2, (u8 *)&pdev_network->configuration.atim_window, &sz);
 
 	if (rate_len > 8)
 		ie = rtw_set_ie(ie, WLAN_EID_EXT_SUPP_RATES, (rate_len - 8), (pdev_network->supported_rates + 8), &sz);
diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index 2739d0e99098..2c6d10196130 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -36,11 +36,11 @@ u8 rtw_do_join(struct adapter *padapter)
 {
 	struct list_head	*plist, *phead;
 	u8 *pibss = NULL;
-	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-	struct __queue	*queue	= &(pmlmepriv->scanned_queue);
+	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
+	struct __queue	*queue	= &pmlmepriv->scanned_queue;
 	u8 ret = _SUCCESS;
 
-	spin_lock_bh(&(pmlmepriv->scanned_queue.lock));
+	spin_lock_bh(&pmlmepriv->scanned_queue.lock);
 	phead = get_list_head(queue);
 	plist = get_next(phead);
 
@@ -53,7 +53,7 @@ u8 rtw_do_join(struct adapter *padapter)
 	pmlmepriv->to_join = true;
 
 	if (list_empty(&queue->queue)) {
-		spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
+		spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 		_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 
 		/* when set_ssid/set_bssid for rtw_do_join(), but scanning queue is empty */
@@ -74,7 +74,7 @@ u8 rtw_do_join(struct adapter *padapter)
 	} else {
 		int select_ret;
 
-		spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
+		spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 		select_ret = rtw_select_and_join_from_scanned_queue(pmlmepriv);
 		if (select_ret == _SUCCESS) {
 			pmlmepriv->to_join = false;
@@ -84,7 +84,7 @@ u8 rtw_do_join(struct adapter *padapter)
 				/*  submit createbss_cmd to change to a ADHOC_MASTER */
 
 				/* pmlmepriv->lock has been acquired by caller... */
-				struct wlan_bssid_ex    *pdev_network = &(padapter->registrypriv.dev_network);
+				struct wlan_bssid_ex    *pdev_network = &padapter->registrypriv.dev_network;
 
 				pmlmepriv->fw_state = WIFI_ADHOC_MASTER_STATE;
 
@@ -282,7 +282,7 @@ u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter,
 {
 	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct	wlan_network	*cur_network = &pmlmepriv->cur_network;
-	enum nl80211_iftype *pold_state = &(cur_network->network.infrastructure_mode);
+	enum nl80211_iftype *pold_state = &cur_network->network.infrastructure_mode;
 
 	if (*pold_state != networktype) {
 		if (*pold_state == NL80211_IFTYPE_AP) {
@@ -413,7 +413,7 @@ u8 rtw_set_802_11_authentication_mode(struct adapter *padapter, enum ndis_802_11
 u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 {
 	signed int		keyid, res;
-	struct security_priv *psecuritypriv = &(padapter->securitypriv);
+	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	u8 ret = _SUCCESS;
 
 	keyid = wep->key_index & 0x3fffffff;
@@ -435,7 +435,7 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 		break;
 	}
 
-	memcpy(&(psecuritypriv->dot11DefKey[keyid].skey[0]), &(wep->key_material), wep->key_length);
+	memcpy(&psecuritypriv->dot11DefKey[keyid].skey[0], &wep->key_material, wep->key_length);
 
 	psecuritypriv->dot11DefKeylen[keyid] = wep->key_length;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 7568fc514d7c..f836108a1cd2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -59,9 +59,9 @@ signed int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *pada
 	precvframe = (union recv_frame *)precvpriv->precv_frame_buf;
 
 	for (i = 0; i < NR_RECVFRAME; i++) {
-		INIT_LIST_HEAD(&(precvframe->u.list));
+		INIT_LIST_HEAD(&precvframe->u.list);
 
-		list_add_tail(&(precvframe->u.list), &(precvpriv->free_recv_queue.queue));
+		list_add_tail(&precvframe->u.list, &precvpriv->free_recv_queue.queue);
 
 		precvframe->u.hdr.pkt_newalloc = NULL;
 		precvframe->u.hdr.pkt = NULL;
@@ -161,11 +161,11 @@ int rtw_free_recvframe(union recv_frame *precvframe, struct __queue *pfree_recv_
 
 	spin_lock_bh(&pfree_recv_queue->lock);
 
-	list_del_init(&(precvframe->u.hdr.list));
+	list_del_init(&precvframe->u.hdr.list);
 
 	precvframe->u.hdr.len = 0;
 
-	list_add_tail(&(precvframe->u.hdr.list), get_list_head(pfree_recv_queue));
+	list_add_tail(&precvframe->u.hdr.list, get_list_head(pfree_recv_queue));
 
 	if (padapter) {
 		if (pfree_recv_queue == &precvpriv->free_recv_queue)
@@ -181,9 +181,9 @@ signed int _rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 
 	/* INIT_LIST_HEAD(&(precvframe->u.hdr.list)); */
-	list_del_init(&(precvframe->u.hdr.list));
+	list_del_init(&precvframe->u.hdr.list);
 
-	list_add_tail(&(precvframe->u.hdr.list), get_list_head(queue));
+	list_add_tail(&precvframe->u.hdr.list, get_list_head(queue));
 
 	if (padapter)
 		if (queue == &precvpriv->free_recv_queue)
@@ -352,7 +352,7 @@ static signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *p
 	struct security_priv *psecuritypriv = &adapter->securitypriv;
 
 	struct mlme_ext_priv *pmlmeext = &adapter->mlmeextpriv;
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
 	stainfo = rtw_get_stainfo(&adapter->stapriv, &prxattrib->ta[0]);
 
@@ -1059,7 +1059,7 @@ static union recv_frame *recvframe_defrag(struct adapter *adapter,
 	plist = get_next(phead);
 	prframe = (union recv_frame *)plist;
 	pfhdr = &prframe->u.hdr;
-	list_del_init(&(prframe->u.list));
+	list_del_init(&prframe->u.list);
 
 	if (curfragnum != pfhdr->attrib.frag_num) {
 		/* the first fragment number must be 0 */
@@ -1670,7 +1670,7 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 	u8 *pdata;
 	struct sk_buff *sub_pkt, *subframes[MAX_SUBFRAME_COUNT];
 	struct recv_priv *precvpriv = &padapter->recvpriv;
-	struct __queue *pfree_recv_queue = &(precvpriv->free_recv_queue);
+	struct __queue *pfree_recv_queue = &precvpriv->free_recv_queue;
 
 	nr_subframes = 0;
 
@@ -1795,9 +1795,9 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, un
 	/* spin_lock_irqsave(&ppending_recvframe_queue->lock, irql); */
 	/* spin_lock(&ppending_recvframe_queue->lock); */
 
-	list_del_init(&(prframe->u.hdr.list));
+	list_del_init(&prframe->u.hdr.list);
 
-	list_add_tail(&(prframe->u.hdr.list), plist);
+	list_add_tail(&prframe->u.hdr.list, plist);
 
 	/* spin_unlock(&ppending_recvframe_queue->lock); */
 	/* spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql); */
@@ -1812,8 +1812,8 @@ static int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *prec
 	struct sk_buff *skb;
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 
-	precvpriv = &(padapter->recvpriv);
-	pfree_recv_queue = &(precvpriv->free_recv_queue);
+	precvpriv = &padapter->recvpriv;
+	pfree_recv_queue = &precvpriv->free_recv_queue;
 
 	skb = precv_frame->u.hdr.pkt;
 	if (!skb)
@@ -1880,7 +1880,7 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
 
 		if (!SN_LESS(preorder_ctrl->indicate_seq, pattrib->seq_num)) {
 			plist = get_next(plist);
-			list_del_init(&(prframe->u.hdr.list));
+			list_del_init(&prframe->u.hdr.list);
 
 			if (SN_EQUAL(preorder_ctrl->indicate_seq, pattrib->seq_num))
 				preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096u;
-- 
2.43.0


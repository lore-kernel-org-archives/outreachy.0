X-GM-THRID: 6754475582330765312
X-Received: by 2002:a17:902:261:: with SMTP id 88mr15320789plc.322.1572648939469;
        Fri, 01 Nov 2019 15:55:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:454d:: with SMTP id x13ls1875097pgr.12.gmail; Fri, 01
 Nov 2019 15:55:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzKyLlReDb78PANo8UrgPgvZlKNyOPy6QOmVhYUVtQBm889v8q34b1eIf40AG7h+IR38BV4
X-Received: by 2002:a63:1e13:: with SMTP id e19mr15399348pge.97.1572648937957;
        Fri, 01 Nov 2019 15:55:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572648937; cv=none;
        d=google.com; s=arc-20160816;
        b=huIfa7Wv73OzowLdD6B7eUarbwL8jz5Mar4X8jnXgm5KrHb9VxoR/ncjE0WAMloqtT
         xT9mKBYHqymjmLYm/ofeJOS+V5vii0LWZenN2Mv3j4u0ybQdMSQOZVTc8Z9RnSbDxcFf
         dBeGXdRagTUvgImMONCTGwpL/InmnIUTPm6DD+umcGXjSAzia/fm5eo+F8jrhKGRWSbK
         WitCopHv5r42/piwBfufi+kNRd0TtOkDgnmgspOu8HhuLwKNTPLR2PmcJkBEwoIXTnY7
         XmZspFq5Mmp61FBh3hH05sV3uCExF1uUp5b8V2YeNkPu4z0AyzIfQwX4NW6zDJ2X4GWf
         2wMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=4uQI6usZbsWUde65Wc6iNHcr8hKPVMeXyhYOrLUOIEQ=;
        b=gSy2Wq8/E3jZVDMWNZSVwP8dfjBD/0rjJaFFI2eQmwhRr3aH9GaCxvK5mODA/dsJk6
         G670dBAB3i1NBUfJwnxSIXBV5KH0xQEbZFWxXLhdNDQZt3UkOmH3S/u0frZTBGNvGmZw
         K94SZYYkWBOcAmsBl9lDZrH0XLxwuFmBDeeO3aiT+SO82ULXEsUdhtJzDG+BjLDMSh1o
         xFiecKytczq2rZgYzj6+NbQBMFUrVDFNl1yZHxyRionE7imBQSOJIA22uge1xxS+oeD/
         FcrE0dbR2yBhr5qO+aUnslS6C4X7l/wzAPQwU3XcXC75LXgeyL4pGkrN3Cr1knRNF3i0
         7D3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nOczIaNG;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b17si471245plz.1.2019.11.01.15.55.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:55:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nOczIaNG;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id d13so8012874pfq.2
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 15:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=4uQI6usZbsWUde65Wc6iNHcr8hKPVMeXyhYOrLUOIEQ=;
        b=nOczIaNG6f4iNnXnUS2CGq/U9V3OBHBkwXGph4hra//oAmsybFzyTirmMsRKtVPLQ0
         XRaM5tQkqenwm44p9ccx9h+XU2aICVGHvRzy2TbnQXcSW0gQdquGV3sAKAfAeF7d/i8X
         h12TZakVflYqBjUWWOEbXMDBzoX4wfTymnD0FDPgKO8TzUe3Ys/6wYqQKEEO0VxMS3tv
         qEizSOKZiDLchv/eNzGuZvKRbgzTHslyIgc70qk/9T0Hikokq8JpIp/jC0R1JMaXQ+tI
         6wgIzEZQEBBNbHx99lIt3IdFM63/KgGlWgkCQVyiRATkYXKm5lxYdY9Wd31nya1nhXn7
         /qkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=4uQI6usZbsWUde65Wc6iNHcr8hKPVMeXyhYOrLUOIEQ=;
        b=Yk1ljd06/hFiW69QS9b/jZwiROfkwmhXUYwwPnc2Cv60wGyT+wqJbv+epY/KWadSfQ
         C11/n9+iGIomJmdQsBYcTBCCWUrsrhneql+L+RPMcJNUrN1qNEcagEziIEImOMZ9m46N
         fT0VQvm5aunKYfbb9+ZlMTc7O3Chb04EvOHA8/OtflJRqPHYfT5It47gRJjHcljHz1Ob
         HXUGgtSIBJOrNx3EiwhWf5SLVdA1Nh+Zp8CskSXgKQsApVrKYvgqt5OyooweyPt12s6q
         mMV5Mu3SJFs058wXKMgUDrBeRuJ7i33jln6dCkW+/v5CM8c+RVNEsTVK28jAAGlvVL4o
         HWhQ==
X-Gm-Message-State: APjAAAV7tXJg/GW8ONBkJFzvJRTfoD0TYoxClwENMKDYKMU/I1Ac8ANo
	jUYKyfUR7KjZWvGgMfwI5SQ5+G9R++E=
X-Received: by 2002:a65:5a8c:: with SMTP id c12mr16156239pgt.140.1572648937613;
        Fri, 01 Nov 2019 15:55:37 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id g9sm8870240pjl.20.2019.11.01.15.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 15:55:37 -0700 (PDT)
Date: Fri, 1 Nov 2019 17:55:34 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8723bs: Remove multiple blank lines
Message-ID: <47e6cce09478c9f0a29188e12299a7ed9c770d2b.1572648706.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572648706.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572648706.git.jarias.linux@gmail.com>

This patch removes multiple blank lines to solve the warning found by
checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 51 -----------------------
 1 file changed, 51 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 7c1951209000..1f78a4c56d79 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -25,7 +25,6 @@ void _rtw_init_sta_xmit_priv(struct sta_xmit_priv *psta_xmitpriv)
 
 	spin_lock_init(&psta_xmitpriv->lock);
 
-
 	_init_txservq(&psta_xmitpriv->be_q);
 	_init_txservq(&psta_xmitpriv->bk_q);
 	_init_txservq(&psta_xmitpriv->vi_q);
@@ -52,14 +51,12 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 	pxmitpriv->adapter = padapter;
 
-
 	_rtw_init_queue(&pxmitpriv->be_pending);
 	_rtw_init_queue(&pxmitpriv->bk_pending);
 	_rtw_init_queue(&pxmitpriv->vi_pending);
 	_rtw_init_queue(&pxmitpriv->vo_pending);
 	_rtw_init_queue(&pxmitpriv->bm_pending);
 
-
 	_rtw_init_queue(&pxmitpriv->free_xmit_queue);
 
 	/*
@@ -101,7 +98,6 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 	pxmitpriv->frag_len = MAX_FRAG_THRESHOLD;
 
-
 	/* init xmit_buf */
 	_rtw_init_queue(&pxmitpriv->free_xmitbuf_queue);
 	_rtw_init_queue(&pxmitpriv->pending_xmitbuf_queue);
@@ -303,7 +299,6 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 	if (pxmitpriv->pallocated_frame_buf)
 		vfree(pxmitpriv->pallocated_frame_buf);
 
-
 	if (pxmitpriv->pallocated_xmitbuf)
 		vfree(pxmitpriv->pallocated_xmitbuf);
 
@@ -401,7 +396,6 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
 				break;
 			}
 
-
 			/* check ERP protection */
 			if (pattrib->rtsen || pattrib->cts2self) {
 				if (pattrib->rtsen)
@@ -482,8 +476,6 @@ static void update_attrib_phy_info(struct adapter *padapter, struct pkt_attrib *
 	else
 		pattrib->ampdu_spacing = psta->htpriv.rx_ampdu_min_spacing;
 
-
-
 	pattrib->retry_ctrl = false;
 
 #ifdef CONFIG_AUTO_AP_MODE
@@ -568,7 +560,6 @@ static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *p
 		else
 			TKIP_IV(pattrib->iv, psta->dot11txpn, 0);
 
-
 		memcpy(pattrib->dot11tkiptxmickey.skey, psta->dot11tkiptxmickey.skey, 16);
 
 		break;
@@ -650,7 +641,6 @@ static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
 	struct iphdr ip_hdr;
 	s32 UserPriority = 0;
 
-
 	_rtw_open_pktfile(ppktfile->pkt, ppktfile);
 	_rtw_pktfile_read(ppktfile, (unsigned char *)&etherhdr, ETH_HLEN);
 
@@ -683,11 +673,9 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 
 	pattrib->ether_type = ntohs(etherhdr.h_proto);
 
-
 	memcpy(pattrib->dst, &etherhdr.h_dest, ETH_ALEN);
 	memcpy(pattrib->src, &etherhdr.h_source, ETH_ALEN);
 
-
 	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true) ||
 		(check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true)) {
 		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
@@ -739,7 +727,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 			}
 		}
 
-
 	} else if (0x888e == pattrib->ether_type) {
 		DBG_871X_LEVEL(_drv_always_, "send eapol packet\n");
 	}
@@ -794,8 +781,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 		return _FAIL;
 	}
 
-
-
 	/* TODO:_lock */
 	if (update_attrib_sec_info(padapter, pattrib, psta) == _FAIL) {
 		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_sec);
@@ -805,7 +790,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 
 	update_attrib_phy_info(padapter, pattrib, psta);
 
-
 	pattrib->psta = psta;
 	/* TODO:_unlock */
 
@@ -850,7 +834,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 	u8 hw_hdr_offset = 0;
 	sint bmcst = IS_MCAST(pattrib->ra);
 
-
 	hw_hdr_offset = TXDESC_OFFSET;
 
 	if (pattrib->encrypt == _TKIP_) {
@@ -892,7 +875,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 			if (pattrib->qos_en)
 				priority[0] = (u8)pxmitframe->attrib.priority;
 
-
 			rtw_secmicappend(&micdata, &priority[0], 4);
 
 			payload = pframe;
@@ -1059,7 +1041,6 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 				return _FAIL;
 			}
 
-
 			if (psta) {
 				psta->sta_xmitpriv.txseq_tid[pattrib->priority]++;
 				psta->sta_xmitpriv.txseq_tid[pattrib->priority] &= 0xFFF;
@@ -1072,7 +1053,6 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 					if (psta->htpriv.agg_enable_bitmap & BIT(pattrib->priority))
 						pattrib->ampdu_en = true;
 
-
 				/* re-check if enable ampdu by BA_starting_seqctrl */
 				if (pattrib->ampdu_en == true) {
 					u16 tx_seq;
@@ -1221,7 +1201,6 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 			mpdu_len -= pattrib->icv_len;
 		}
 
-
 		if (bmcst) {
 			/*  don't do fragment to broadcat/multicast packets */
 			mem_sz = _rtw_pktfile_read(&pktfile, pframe, pattrib->pktlen);
@@ -1625,7 +1604,6 @@ struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 		DBG_871X("DBG_XMIT_BUF_EXT ALLOC no =%d,  free_xmit_extbuf_cnt =%d\n", pxmitbuf->no, pxmitpriv->free_xmit_extbuf_cnt);
 		#endif
 
-
 		pxmitbuf->priv_data = NULL;
 
 		pxmitbuf->len = 0;
@@ -1675,7 +1653,6 @@ struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 	struct list_head *plist, *phead;
 	struct __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
-
 	spin_lock_irqsave(&pfree_xmitbuf_queue->lock, irqL);
 
 	if (list_empty(&pfree_xmitbuf_queue->queue)) {
@@ -1725,7 +1702,6 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 	_irqL irqL;
 	struct __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
-
 	if (!pxmitbuf)
 		return _FAIL;
 
@@ -2015,7 +1991,6 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 
 	DBG_COUNTER(padapter->tx_logs.core_tx_enqueue_class);
 
-
 	psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 	if (pattrib->psta != psta) {
 		DBG_COUNTER(padapter->tx_logs.core_tx_enqueue_class_err_sta);
@@ -2039,18 +2014,14 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 
 	ptxservq = rtw_get_sta_pending(padapter, psta, pattrib->priority, (u8 *)(&ac_index));
 
-
 	if (list_empty(&ptxservq->tx_pending)) {
 		list_add_tail(&ptxservq->tx_pending, get_list_head(phwxmits[ac_index].sta_queue));
 	}
 
-
 	list_add_tail(&pxmitframe->list, get_list_head(&ptxservq->sta_pending));
 	ptxservq->qcnt++;
 	phwxmits[ac_index].accnt++;
 
-
-
 exit:
 
 	return res;
@@ -2305,7 +2276,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 		return ret;
 	}
 
-
 	if (bmcst) {
 		spin_lock_bh(&psta->sleep_q.lock);
 
@@ -2314,7 +2284,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 			list_del_init(&pxmitframe->list);
 
-
 			list_add_tail(&pxmitframe->list, get_list_head(&psta->sleep_q));
 
 			psta->sleepq_len++;
@@ -2325,14 +2294,12 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 			pstapriv->tim_bitmap |= BIT(0);
 			pstapriv->sta_dz_bitmap |= BIT(0);
 
-
 			if (update_tim) {
 				update_beacon(padapter, _TIM_IE_, NULL, true);
 			} else {
 				chk_bmc_sleepq_cmd(padapter);
 			}
 
-
 			ret = true;
 
 			DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_mcast);
@@ -2345,7 +2312,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 	}
 
-
 	spin_lock_bh(&psta->sleep_q.lock);
 
 	if (psta->state&WIFI_SLEEP_STATE) {
@@ -2354,7 +2320,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 		if (pstapriv->sta_dz_bitmap & BIT(psta->aid)) {
 			list_del_init(&pxmitframe->list);
 
-
 			list_add_tail(&pxmitframe->list, get_list_head(&psta->sleep_q));
 
 			psta->sleepq_len++;
@@ -2388,14 +2353,11 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 				pstapriv->tim_bitmap |= BIT(psta->aid);
 
-
 				if (update_tim)
 					/* upate BCN for TIM IE */
 					update_beacon(padapter, _TIM_IE_, NULL, true);
 			}
 
-
-
 			ret = true;
 
 			DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_ucast);
@@ -2457,27 +2419,21 @@ void stop_sta_xmit(struct adapter *padapter, struct sta_info *psta)
 	/* for BC/MC Frames */
 	psta_bmc = rtw_get_bcmc_stainfo(padapter);
 
-
 	spin_lock_bh(&pxmitpriv->lock);
 
 	psta->state |= WIFI_SLEEP_STATE;
 
 	pstapriv->sta_dz_bitmap |= BIT(psta->aid);
 
-
-
 	dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->vo_q.sta_pending);
 	list_del_init(&pstaxmitpriv->vo_q.tx_pending);
 
-
 	dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->vi_q.sta_pending);
 	list_del_init(&pstaxmitpriv->vi_q.tx_pending);
 
-
 	dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->be_q.sta_pending);
 	list_del_init(&pstaxmitpriv->be_q.tx_pending);
 
-
 	dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->bk_q.sta_pending);
 	list_del_init(&pstaxmitpriv->bk_q.tx_pending);
 
@@ -2500,7 +2456,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 	psta_bmc = rtw_get_bcmc_stainfo(padapter);
 
-
 	spin_lock_bh(&pxmitpriv->lock);
 
 	xmitframe_phead = get_list_head(&psta->sleep_q);
@@ -2554,7 +2509,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 		rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
 
-
 	}
 
 	if (psta->sleepq_len == 0) {
@@ -2597,7 +2551,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 			else
 				pxmitframe->attrib.mdata = 0;
 
-
 			pxmitframe->attrib.triggered = 1;
 			rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
 
@@ -2630,7 +2583,6 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
-
 	spin_lock_bh(&pxmitpriv->lock);
 
 	xmitframe_phead = get_list_head(&psta->sleep_q);
@@ -2728,7 +2680,6 @@ struct xmit_buf *dequeue_pending_xmitbuf(
 	struct xmit_buf *pxmitbuf;
 	struct __queue *pqueue;
 
-
 	pxmitbuf = NULL;
 	pqueue = &pxmitpriv->pending_xmitbuf_queue;
 
@@ -2754,7 +2705,6 @@ struct xmit_buf *dequeue_pending_xmitbuf_under_survey(
 	struct xmit_buf *pxmitbuf;
 	struct __queue *pqueue;
 
-
 	pxmitbuf = NULL;
 	pqueue = &pxmitpriv->pending_xmitbuf_queue;
 
@@ -2813,7 +2763,6 @@ int rtw_xmit_thread(void *context)
 	s32 err;
 	struct adapter *padapter;
 
-
 	err = _SUCCESS;
 	padapter = context;
 
-- 
2.20.1



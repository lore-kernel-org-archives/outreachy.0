X-GM-THRID: 6758464167600979968
X-Received: by 2002:a17:902:7893:: with SMTP id q19mr14540900pll.130.1573577586297;
        Tue, 12 Nov 2019 08:53:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:b30b:: with SMTP id d11ls821964pjr.1.gmail; Tue, 12
 Nov 2019 08:53:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqxjHYtD/WEHOSgM6eglRhKoMtIdjsGPh3PhktgQLUAybZ45N9MgXoiYxQoo/rTaGyYnAhSb
X-Received: by 2002:a17:90a:4e5:: with SMTP id g92mr7890717pjg.94.1573577585445;
        Tue, 12 Nov 2019 08:53:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573577585; cv=none;
        d=google.com; s=arc-20160816;
        b=qcCgwF3G5pX/zrik9x9ixDVtD7Q6f+0+KELemr+1sskXWKuRzmT0LcHjQ37E5+5QH1
         eNe99mRJCoxU7eR/XFNgoAnNWzqqXGgFMDZHorL0F4T4t4uui7y8oJXz00B1VEyiwzEb
         xGcgyceoFDj76dZu8/sg6SvHR+IRfusW6j/m1KJJ5Y/8HK/UpBBEIrM1oJf7bLCqgFoP
         VrIqjLRlSWcGmjTUivTua/5AcmbMrWWHd4CgU/JgaszHzFjrTA2kKct/zr28GwBwjZ1g
         XtA67IVmqH23pdlZdVBnb7Qp9giPLuVpiTVRRejahkyruSNuFZVyaSJOiLtqwKITPEdL
         1bFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=16tSuyUwHnIWb4fygljoFizapsV4qAC7qHOAIOPPvak=;
        b=IV/93MpEblGaosjE4isIXFc3I9lFw7yLZ6eC/hdm+4plTAa75iwRIoCH8xmu+LtvGw
         b3Bp0OGN+/0Y1wql/Cc6ApKTFAR5Eqe9WYIywDDwbSiTm5g/58dSnb2wWR8b0qGISBuX
         xkEJFgFRK3WKHblCem5Sb/ZL5c9iAoKVNWsQFf6Aeqr6DqgiKqyl/zjvZy3oQHjTTv/m
         vOi2WQmIE5JG8+0lgl9GPb4ATmujyjCZgjjPU+7kiFsgEtArc5h9oKVC17prvi2QrB8i
         qIUP/TMy+CqEMXnMNKuC8UTKxZ/ldglXffzbc+g+OpyNp23JPciOvaEnv7P1fdUd4O8n
         64jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pq9Q58bb;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id 3si1235263pfg.1.2019.11.12.08.53.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 08:53:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pq9Q58bb;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x742.google.com with SMTP id m16so15036315qki.11
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 08:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=16tSuyUwHnIWb4fygljoFizapsV4qAC7qHOAIOPPvak=;
        b=Pq9Q58bbSNSp3c2RJM511o/+GJGJJyt+0UhoDTwPeMUCVTUtKCGLHWsQ4hIuAw30fu
         cf+G/EdgNBbvcfw/oVMk8gxjiW9ymAFx5K3c1xjCwcCh1j6pDZd9WD1CoC1L7ZYK5TfN
         3uIECHJCVxSC4ulUtvgdiPen4CxqPymTu2MlKSedlohucUV3tWqMti0kTSYiGkCrHjXf
         mgfOiawrnrpl896KMjEpnX73xbnww41LOw4FK0TSc4Cm1Zkao3QXj0oN7gy3EAp/C1vm
         2F6JdWZ1AsDJw8l23qcaUPkzLipIA9ZQkAn/+J8tgXh2zqoHKQaH4Son7P6S85yIdkbJ
         UWYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=16tSuyUwHnIWb4fygljoFizapsV4qAC7qHOAIOPPvak=;
        b=qoClEpobaRVN7Wh+NGLIV9F+xavntQmSUhVR/Gb7sDQnT3n4Bq+cGuMVvge9shgkAM
         MNVwVxw8FpyOi0pvpoU30/8I4mCdbSZRJhLqLG9Pd/noDSJ/N5vjHmnhqlIy79pavGRN
         T35ScvgepXaXgzVYcsXq4VlADNwHA4G+Uv0ShaE2OuOCckIAynYWYjTDX7gMkR7UHDMJ
         zfPDCdw3IsvUXSUW3LOPayjQcxDZo13LHGJI/jyqCSFcQOYfIWphwCW18CmLdp3QXLwD
         iYWwlNEqG6jMB6r5T0mPcsqyjzShxqqaO8fRjeyn2keraQSbGPU1W7WOzL+FPvAajiTM
         N/Wg==
X-Gm-Message-State: APjAAAVXmC0cBBVrixPBSClb6nc1Y4n/MqoR7RtXA5Oz1t9A198HGJ95
	sRCIKh79b8yb+4U2XueSET4=
X-Received: by 2002:a05:620a:16a8:: with SMTP id s8mr16749492qkj.371.1573577584404;
        Tue, 12 Nov 2019 08:53:04 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-154-98-65.dynamic.etb.net.co. [186.154.98.65])
        by smtp.gmail.com with ESMTPSA id t24sm3388618qtc.97.2019.11.12.08.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 08:53:03 -0800 (PST)
Date: Tue, 12 Nov 2019 11:53:01 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/9] staging: rtl8723bs: Remove multiple blank lines
Message-ID: <257b08ad13aa23c2ee53fc333ea3c3f7e3105791.1573577309.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1573577309.git.jarias.linux@gmail.com>

This patch removes multiple blank lines to solve the warning found by
checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 51 -----------------------
 1 file changed, 51 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index a4eec81a2fde..e10e2d74cffd 100644
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
@@ -300,7 +296,6 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 	if (pxmitpriv->pallocated_frame_buf)
 		vfree(pxmitpriv->pallocated_frame_buf);
 
-
 	if (pxmitpriv->pallocated_xmitbuf)
 		vfree(pxmitpriv->pallocated_xmitbuf);
 
@@ -398,7 +393,6 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
 				break;
 			}
 
-
 			/* check ERP protection */
 			if (pattrib->rtsen || pattrib->cts2self) {
 				if (pattrib->rtsen)
@@ -479,8 +473,6 @@ static void update_attrib_phy_info(struct adapter *padapter, struct pkt_attrib *
 	else
 		pattrib->ampdu_spacing = psta->htpriv.rx_ampdu_min_spacing;
 
-
-
 	pattrib->retry_ctrl = false;
 
 #ifdef CONFIG_AUTO_AP_MODE
@@ -565,7 +557,6 @@ static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *p
 		else
 			TKIP_IV(pattrib->iv, psta->dot11txpn, 0);
 
-
 		memcpy(pattrib->dot11tkiptxmickey.skey, psta->dot11tkiptxmickey.skey, 16);
 
 		break;
@@ -647,7 +638,6 @@ static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
 	struct iphdr ip_hdr;
 	s32 UserPriority = 0;
 
-
 	_rtw_open_pktfile(ppktfile->pkt, ppktfile);
 	_rtw_pktfile_read(ppktfile, (unsigned char *)&etherhdr, ETH_HLEN);
 
@@ -680,11 +670,9 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 
 	pattrib->ether_type = ntohs(etherhdr.h_proto);
 
-
 	memcpy(pattrib->dst, &etherhdr.h_dest, ETH_ALEN);
 	memcpy(pattrib->src, &etherhdr.h_source, ETH_ALEN);
 
-
 	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true) ||
 		(check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true)) {
 		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
@@ -736,7 +724,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 			}
 		}
 
-
 	} else if (0x888e == pattrib->ether_type) {
 		DBG_871X_LEVEL(_drv_always_, "send eapol packet\n");
 	}
@@ -791,8 +778,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 		return _FAIL;
 	}
 
-
-
 	/* TODO:_lock */
 	if (update_attrib_sec_info(padapter, pattrib, psta) == _FAIL) {
 		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_sec);
@@ -802,7 +787,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 
 	update_attrib_phy_info(padapter, pattrib, psta);
 
-
 	pattrib->psta = psta;
 	/* TODO:_unlock */
 
@@ -847,7 +831,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 	u8 hw_hdr_offset = 0;
 	sint bmcst = IS_MCAST(pattrib->ra);
 
-
 	hw_hdr_offset = TXDESC_OFFSET;
 
 	if (pattrib->encrypt == _TKIP_) {
@@ -889,7 +872,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 			if (pattrib->qos_en)
 				priority[0] = (u8)pxmitframe->attrib.priority;
 
-
 			rtw_secmicappend(&micdata, &priority[0], 4);
 
 			payload = pframe;
@@ -1056,7 +1038,6 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 				return _FAIL;
 			}
 
-
 			if (psta) {
 				psta->sta_xmitpriv.txseq_tid[pattrib->priority]++;
 				psta->sta_xmitpriv.txseq_tid[pattrib->priority] &= 0xFFF;
@@ -1069,7 +1050,6 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 					if (psta->htpriv.agg_enable_bitmap & BIT(pattrib->priority))
 						pattrib->ampdu_en = true;
 
-
 				/* re-check if enable ampdu by BA_starting_seqctrl */
 				if (pattrib->ampdu_en == true) {
 					u16 tx_seq;
@@ -1218,7 +1198,6 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 			mpdu_len -= pattrib->icv_len;
 		}
 
-
 		if (bmcst) {
 			/*  don't do fragment to broadcat/multicast packets */
 			mem_sz = _rtw_pktfile_read(&pktfile, pframe, pattrib->pktlen);
@@ -1618,7 +1597,6 @@ struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 		DBG_871X("DBG_XMIT_BUF_EXT ALLOC no =%d,  free_xmit_extbuf_cnt =%d\n", pxmitbuf->no, pxmitpriv->free_xmit_extbuf_cnt);
 		#endif
 
-
 		pxmitbuf->priv_data = NULL;
 
 		pxmitbuf->len = 0;
@@ -1667,7 +1645,6 @@ struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 	struct list_head *plist, *phead;
 	struct __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
-
 	spin_lock_irqsave(&pfree_xmitbuf_queue->lock, irqL);
 
 	if (list_empty(&pfree_xmitbuf_queue->queue)) {
@@ -1716,7 +1693,6 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 	_irqL irqL;
 	struct __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
-
 	if (!pxmitbuf)
 		return _FAIL;
 
@@ -2006,7 +1982,6 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 
 	DBG_COUNTER(padapter->tx_logs.core_tx_enqueue_class);
 
-
 	psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 	if (pattrib->psta != psta) {
 		DBG_COUNTER(padapter->tx_logs.core_tx_enqueue_class_err_sta);
@@ -2030,18 +2005,14 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 
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
@@ -2296,7 +2267,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 		return ret;
 	}
 
-
 	if (bmcst) {
 		spin_lock_bh(&psta->sleep_q.lock);
 
@@ -2305,7 +2275,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 			list_del_init(&pxmitframe->list);
 
-
 			list_add_tail(&pxmitframe->list, get_list_head(&psta->sleep_q));
 
 			psta->sleepq_len++;
@@ -2316,14 +2285,12 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
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
@@ -2336,7 +2303,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 	}
 
-
 	spin_lock_bh(&psta->sleep_q.lock);
 
 	if (psta->state&WIFI_SLEEP_STATE) {
@@ -2345,7 +2311,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 		if (pstapriv->sta_dz_bitmap & BIT(psta->aid)) {
 			list_del_init(&pxmitframe->list);
 
-
 			list_add_tail(&pxmitframe->list, get_list_head(&psta->sleep_q));
 
 			psta->sleepq_len++;
@@ -2379,14 +2344,11 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
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
@@ -2448,27 +2410,21 @@ void stop_sta_xmit(struct adapter *padapter, struct sta_info *psta)
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
 
@@ -2491,7 +2447,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 	psta_bmc = rtw_get_bcmc_stainfo(padapter);
 
-
 	spin_lock_bh(&pxmitpriv->lock);
 
 	xmitframe_phead = get_list_head(&psta->sleep_q);
@@ -2545,7 +2500,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 		rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
 
-
 	}
 
 	if (psta->sleepq_len == 0) {
@@ -2588,7 +2542,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 			else
 				pxmitframe->attrib.mdata = 0;
 
-
 			pxmitframe->attrib.triggered = 1;
 			rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
 
@@ -2621,7 +2574,6 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
-
 	spin_lock_bh(&pxmitpriv->lock);
 
 	xmitframe_phead = get_list_head(&psta->sleep_q);
@@ -2719,7 +2671,6 @@ struct xmit_buf *dequeue_pending_xmitbuf(
 	struct xmit_buf *pxmitbuf;
 	struct __queue *pqueue;
 
-
 	pxmitbuf = NULL;
 	pqueue = &pxmitpriv->pending_xmitbuf_queue;
 
@@ -2745,7 +2696,6 @@ struct xmit_buf *dequeue_pending_xmitbuf_under_survey(
 	struct xmit_buf *pxmitbuf;
 	struct __queue *pqueue;
 
-
 	pxmitbuf = NULL;
 	pqueue = &pxmitpriv->pending_xmitbuf_queue;
 
@@ -2804,7 +2754,6 @@ int rtw_xmit_thread(void *context)
 	s32 err;
 	struct adapter *padapter;
 
-
 	err = _SUCCESS;
 	padapter = context;
 
-- 
2.20.1



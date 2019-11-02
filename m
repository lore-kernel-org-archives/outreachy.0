X-GM-THRID: 6754458440514404352
X-Received: by 2002:a0c:ea42:: with SMTP id u2mr14696079qvp.123.1572734972727;
        Sat, 02 Nov 2019 15:49:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:e409:: with SMTP id y9ls3399492qkf.1.gmail; Sat, 02 Nov
 2019 15:49:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxg58MCoDEQdCYnceVBW75KF0TsP/eOsSXf20Yq2C/mdhG+DTilKbatpV3RsV+yLD/12jmB
X-Received: by 2002:a37:8a82:: with SMTP id m124mr8753016qkd.235.1572734971640;
        Sat, 02 Nov 2019 15:49:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572734971; cv=none;
        d=google.com; s=arc-20160816;
        b=zymVtnoXv/5fY5h4JqPDzFqsccvFMLer6209RRaUYFce/kKbRgkLyprw0QwpZA6Zji
         +LqHplsvW2ivgIbfU0b6wpJp3my98O29yV8PjUHQB0Nq1vcYHkI6VYEgvlpR/DYekvje
         mgpPKvxaQwpaZB38mR/g3McnbZgammPlT2+sUOrK76I8NGd6T0MHV9P5Y2/BJv2PnvKk
         gOUvO7gx/SXeRSCCSEfZh3XDfwctZC4YjbXVBu81is5023DyExiPm7bTXQ1TNR9zH8jG
         EuculvcNIfnLo5mg4LAP05jnvbcaqzJOtr5ZOJZgvtvrTj+IV1ReO7eIceGLm9MUtjwf
         yYZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=OraDhcsxWmAGHFE6hsO6XXx99iEJAv7n66gmbLVBv2E=;
        b=D5hsC759ydlmSgpQn6KglGJVjQyt8rGl6bLgysEzJs4o7KjW+h1PP8dEFWoyRQ6QeE
         dZXlLnOLjmQ2GoXqj8UFgKSYQutA7cWap8XAV01FZRQL6QvGz3KyGr9Y7hGAh41Hl66f
         paEbnWLNpNBshicCD5RdpGBguxwGF7ogpIaWVsntGyI5KgfTxq4vocqRcyG/P3uT7xwL
         yOBJYHH8oo0COrqNuxb4RoDJe4NcbdXHSjuoCV2/I+UBQ3RSgerOzyD/ONhwCFEqCPTs
         ve2C6vm1aiZd0UrLkXLFJRXVx3nI1/wTEraFhhlJDmMuCzNpAJaB25M1nQK9BcBiyFdB
         tovA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ej264FU7;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id r28si775815qtu.0.2019.11.02.15.49.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 15:49:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ej264FU7;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk1-xa44.google.com with SMTP id r85so3001905vke.3
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 15:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=OraDhcsxWmAGHFE6hsO6XXx99iEJAv7n66gmbLVBv2E=;
        b=ej264FU7mYWJ5KLm1IR/+fqxuAoy/AAMq2qUeFQj5D6v+j50OdelDQaCgy0UjKWF6t
         H5wb+EO/SuaMSvc3xycunWfc7HJ+9eZjL+ARfpJuoEm/EpVdFScnpQUtEDQ8Qad17q5d
         oYKpEptTsJ6qEBCiTw+wiDk7eLP5b7AyUIYR3hx2wl5FJo34o42shBkWANDkHsD8zNCH
         XKn3WjhmiB6IKnt6yJDwjJJU3D9HmDapPZM8loj+eJGiPZBmWwJI3B/CKGKcNUBc5vS9
         2t72sIew2f34dza9VjHNjATdyiNScUFzb9oFjeDFt17ee2Ql65yqu1qtw3tgZbI4cTpG
         fJyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=OraDhcsxWmAGHFE6hsO6XXx99iEJAv7n66gmbLVBv2E=;
        b=baQsjhrIBeU7ik2b1OLOQJ1Dja+ojVVw8Ur2p/B4B6/hjAukT3ZlXG38SmoC8vk3V7
         q2k9YFMlO1CGUx4Pv868Qfdyu6ZQzRes7S9xC5aUZOyI1q2PZcHEOPXspommBHUhDAIk
         grgJKYFblsE8rD7iURXrIEUZ+QYA4sGQp9KT74Teo/nYb/x46Wwdbcw2ebqr0fHCujJz
         x3W8SEMHEU4vnQStq0j6orgOfiY0IgscLWGU2NFVMbUVL25hVUnnD7JrKMFab2QVsegB
         dysxsED2pMQrqZBi44DwpsQPC9BEBpIxcoWx5GcEewgTKyJCy+4Zo2kktIo0eEyKyizj
         0+8g==
X-Gm-Message-State: APjAAAXyM6B3J8opoDj6rJmUokz/ARaGauuQ+FRw2xKTOTEVOW2ZiMvh
	nzNcIm1fSHi9p5dbGNs+kYOd1AvbloUK8Q==
X-Received: by 2002:a1f:54c5:: with SMTP id i188mr7264942vkb.65.1572734971147;
        Sat, 02 Nov 2019 15:49:31 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-29-125.dynamic.etb.net.co. [190.27.29.125])
        by smtp.gmail.com with ESMTPSA id f66sm3555231vkb.13.2019.11.02.15.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 15:49:30 -0700 (PDT)
Date: Sat, 2 Nov 2019 17:49:28 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 2/3] staging: rtl8723bs: Remove unnecessary parentheses
Message-ID: <b2526b464b8afed3b2c3a3a72ae183fb63df3ae7.1572734925.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <a15c64188f02fa419e02ccc2161ebabc0e1b65db.1572734925.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a15c64188f02fa419e02ccc2161ebabc0e1b65db.1572734925.git.jarias.linux@gmail.com>

This patch removes unnecessary parentheses.
Issue found by checkpatch

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 62 +++++++++++------------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 9a3790091a5e..d7eabee36716 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -89,7 +89,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	pxframe = (struct xmit_frame *) pxmitpriv->pxmit_frame_buf;
 
 	for (i = 0; i < NR_XMITFRAME; i++) {
-		INIT_LIST_HEAD(&(pxframe->list));
+		INIT_LIST_HEAD(&pxframe->list);
 
 		pxframe->padapter = padapter;
 		pxframe->frame_tag = NULL_FRAMETAG;
@@ -99,7 +99,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxframe->buf_addr = NULL;
 		pxframe->pxmitbuf = NULL;
 
-		list_add_tail(&(pxframe->list), &(pxmitpriv->free_xmit_queue.queue));
+		list_add_tail(&pxframe->list, &pxmitpriv->free_xmit_queue.queue);
 
 		pxframe++;
 	}
@@ -151,7 +151,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 		pxmitbuf->flags = XMIT_VO_QUEUE;
 
-		list_add_tail(&pxmitbuf->list, &(pxmitpriv->free_xmitbuf_queue.queue));
+		list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmitbuf_queue.queue);
 		#ifdef DBG_XMIT_BUF
 		pxmitbuf->no = i;
 		#endif
@@ -177,7 +177,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	pxframe = (struct xmit_frame *)pxmitpriv->xframe_ext;
 
 	for (i = 0; i < NR_XMIT_EXTBUFF; i++) {
-		INIT_LIST_HEAD(&(pxframe->list));
+		INIT_LIST_HEAD(&pxframe->list);
 
 		pxframe->padapter = padapter;
 		pxframe->frame_tag = NULL_FRAMETAG;
@@ -189,7 +189,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 		pxframe->ext_tag = 1;
 
-		list_add_tail(&(pxframe->list), &(pxmitpriv->free_xframe_ext_queue.queue));
+		list_add_tail(&pxframe->list, &pxmitpriv->free_xframe_ext_queue.queue);
 
 		pxframe++;
 	}
@@ -229,7 +229,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxmitbuf->ptail = pxmitbuf->phead;
 		pxmitbuf->pdata = pxmitbuf->phead;
 
-		list_add_tail(&pxmitbuf->list, &(pxmitpriv->free_xmit_extbuf_queue.queue));
+		list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmit_extbuf_queue.queue);
 		#ifdef DBG_XMIT_BUF_EXT
 		pxmitbuf->no = i;
 		#endif
@@ -375,8 +375,8 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
 	u32 sz;
 	struct pkt_attrib	*pattrib = &pxmitframe->attrib;
 	/* struct sta_info *psta = pattrib->psta; */
-	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
 	if (pattrib->nr_frags != 1)
 		sz = padapter->xmitpriv.frag_len;
@@ -958,7 +958,7 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("curfragnum =%d length =%d pattrib->icv_len =%d", curfragnum, length, pattrib->icv_len));
 				}
 			}
-			rtw_secgetmic(&micdata, &(mic[0]));
+			rtw_secgetmic(&micdata, &mic[0]);
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("xmitframe_addmic: before add mic code!!!\n"));
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("xmitframe_addmic: pattrib->last_txcmdsz =%d!!!\n", pattrib->last_txcmdsz));
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("xmitframe_addmic: mic[0]= 0x%.2x , mic[1]= 0x%.2x , mic[2]= 0x%.2x , mic[3]= 0x%.2x\n\
@@ -966,7 +966,7 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 				mic[0], mic[1], mic[2], mic[3], mic[4], mic[5], mic[6], mic[7]));
 			/* add mic code  and add the mic code length in last_txcmdsz */
 
-			memcpy(payload, &(mic[0]), 8);
+			memcpy(payload, &mic[0], 8);
 			pattrib->last_txcmdsz += 8;
 
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("\n ========last pkt ========\n"));
@@ -1032,7 +1032,7 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 	SetFrameSubType(fctrl, pattrib->subtype);
 
 	if (pattrib->subtype & WIFI_DATA_TYPE) {
-		if ((check_fwstate(pmlmepriv,  WIFI_STATION_STATE) == true)) {
+		if (check_fwstate(pmlmepriv,  WIFI_STATION_STATE) == true) {
 			/* to_ds = 1, fr_ds = 0; */
 
 			{
@@ -1047,7 +1047,7 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 			if (pqospriv->qos_option)
 				qos_option = true;
 
-		} else if ((check_fwstate(pmlmepriv,  WIFI_AP_STATE) == true)) {
+		} else if (check_fwstate(pmlmepriv,  WIFI_AP_STATE) == true) {
 			/* to_ds = 0, fr_ds = 1; */
 			SetFrDs(fctrl);
 			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
@@ -1414,7 +1414,7 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 		pmlmeext->mgnt_80211w_IPN++;
 
 		/* add MME IE with MIC all zero, MME string doesn't include element id and length */
-		pframe = rtw_set_ie(pframe, _MME_IE_, 16, MME, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, _MME_IE_, 16, MME, &pattrib->pktlen);
 		pattrib->last_txcmdsz = pattrib->pktlen;
 		/*  total frame length - header length */
 		frame_body_len = pattrib->pktlen - sizeof(struct ieee80211_hdr_3addr);
@@ -1693,7 +1693,7 @@ struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 
 		pxmitbuf = LIST_CONTAINOR(plist, struct xmit_buf, list);
 
-		list_del_init(&(pxmitbuf->list));
+		list_del_init(&pxmitbuf->list);
 	}
 
 	if (pxmitbuf) {
@@ -1734,7 +1734,7 @@ s32 rtw_free_xmitbuf_ext(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 
 	list_del_init(&pxmitbuf->list);
 
-	list_add_tail(&(pxmitbuf->list), get_list_head(pfree_queue));
+	list_add_tail(&pxmitbuf->list, get_list_head(pfree_queue));
 	pxmitpriv->free_xmit_extbuf_cnt++;
 	#ifdef DBG_XMIT_BUF_EXT
 	DBG_871X("DBG_XMIT_BUF_EXT FREE no =%d, free_xmit_extbuf_cnt =%d\n", pxmitbuf->no, pxmitpriv->free_xmit_extbuf_cnt);
@@ -1766,7 +1766,7 @@ struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 
 		pxmitbuf = LIST_CONTAINOR(plist, struct xmit_buf, list);
 
-		list_del_init(&(pxmitbuf->list));
+		list_del_init(&pxmitbuf->list);
 	}
 
 	if (pxmitbuf) {
@@ -1822,7 +1822,7 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 
 		list_del_init(&pxmitbuf->list);
 
-		list_add_tail(&(pxmitbuf->list), get_list_head(pfree_xmitbuf_queue));
+		list_add_tail(&pxmitbuf->list, get_list_head(pfree_xmitbuf_queue));
 
 		pxmitpriv->free_xmitbuf_cnt++;
 		/* DBG_871X("FREE, free_xmitbuf_cnt =%d\n", pxmitpriv->free_xmitbuf_cnt); */
@@ -1886,7 +1886,7 @@ struct xmit_frame *rtw_alloc_xmitframe(struct xmit_priv *pxmitpriv)/* _queue *pf
 
 		pxframe = LIST_CONTAINOR(plist, struct xmit_frame, list);
 
-		list_del_init(&(pxframe->list));
+		list_del_init(&pxframe->list);
 		pxmitpriv->free_xmitframe_cnt--;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_alloc_xmitframe():free_xmitframe_cnt =%d\n", pxmitpriv->free_xmitframe_cnt));
 	}
@@ -1913,7 +1913,7 @@ struct xmit_frame *rtw_alloc_xmitframe_ext(struct xmit_priv *pxmitpriv)
 		plist = get_next(phead);
 		pxframe = LIST_CONTAINOR(plist, struct xmit_frame, list);
 
-		list_del_init(&(pxframe->list));
+		list_del_init(&pxframe->list);
 		pxmitpriv->free_xframe_ext_cnt--;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_alloc_xmitframe_ext():free_xmitframe_cnt =%d\n", pxmitpriv->free_xframe_ext_cnt));
 	}
@@ -2013,7 +2013,7 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 	struct list_head	*plist, *phead;
 	struct	xmit_frame	*pxmitframe;
 
-	spin_lock_bh(&(pframequeue->lock));
+	spin_lock_bh(&pframequeue->lock);
 
 	phead = get_list_head(pframequeue);
 	plist = get_next(phead);
@@ -2027,7 +2027,7 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 		rtw_free_xmitframe(pxmitpriv, pxmitframe);
 
 	}
-	spin_unlock_bh(&(pframequeue->lock));
+	spin_unlock_bh(&pframequeue->lock);
 }
 
 s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitframe)
@@ -2050,21 +2050,21 @@ struct tx_servq *rtw_get_sta_pending(struct adapter *padapter, struct sta_info *
 	switch (up) {
 	case 1:
 	case 2:
-		ptxservq = &(psta->sta_xmitpriv.bk_q);
+		ptxservq = &psta->sta_xmitpriv.bk_q;
 		*(ac) = 3;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_get_sta_pending : BK\n"));
 		break;
 
 	case 4:
 	case 5:
-		ptxservq = &(psta->sta_xmitpriv.vi_q);
+		ptxservq = &psta->sta_xmitpriv.vi_q;
 		*(ac) = 1;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_get_sta_pending : VI\n"));
 		break;
 
 	case 6:
 	case 7:
-		ptxservq = &(psta->sta_xmitpriv.vo_q);
+		ptxservq = &psta->sta_xmitpriv.vo_q;
 		*(ac) = 0;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_get_sta_pending : VO\n"));
 		break;
@@ -2072,7 +2072,7 @@ struct tx_servq *rtw_get_sta_pending(struct adapter *padapter, struct sta_info *
 	case 0:
 	case 3:
 	default:
-		ptxservq = &(psta->sta_xmitpriv.be_q);
+		ptxservq = &psta->sta_xmitpriv.be_q;
 		*(ac) = 2;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_get_sta_pending : BE\n"));
 	break;
@@ -2608,24 +2608,24 @@ void stop_sta_xmit(struct adapter *padapter, struct sta_info *psta)
 
 
 	dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->vo_q.sta_pending);
-	list_del_init(&(pstaxmitpriv->vo_q.tx_pending));
+	list_del_init(&pstaxmitpriv->vo_q.tx_pending);
 
 
 	dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->vi_q.sta_pending);
-	list_del_init(&(pstaxmitpriv->vi_q.tx_pending));
+	list_del_init(&pstaxmitpriv->vi_q.tx_pending);
 
 
 	dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->be_q.sta_pending);
-	list_del_init(&(pstaxmitpriv->be_q.tx_pending));
+	list_del_init(&pstaxmitpriv->be_q.tx_pending);
 
 
 	dequeue_xmitframes_to_sleeping_queue(padapter, psta, &pstaxmitpriv->bk_q.sta_pending);
-	list_del_init(&(pstaxmitpriv->bk_q.tx_pending));
+	list_del_init(&pstaxmitpriv->bk_q.tx_pending);
 
 	/* for BC/MC Frames */
 	pstaxmitpriv = &psta_bmc->sta_xmitpriv;
 	dequeue_xmitframes_to_sleeping_queue(padapter, psta_bmc, &pstaxmitpriv->be_q.sta_pending);
-	list_del_init(&(pstaxmitpriv->be_q.tx_pending));
+	list_del_init(&pstaxmitpriv->be_q.tx_pending);
 
 	spin_unlock_bh(&pxmitpriv->lock);
 }
@@ -2871,7 +2871,7 @@ void enqueue_pending_xmitbuf(
 	list_add_tail(&pxmitbuf->list, get_list_head(pqueue));
 	spin_unlock_bh(&pqueue->lock);
 
-	complete(&(pri_adapter->xmitpriv.xmit_comp));
+	complete(&pri_adapter->xmitpriv.xmit_comp);
 }
 
 void enqueue_pending_xmitbuf_to_head(
-- 
2.20.1



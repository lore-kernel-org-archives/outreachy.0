X-GM-THRID: 6754458440514404352
X-Received: by 2002:a05:620a:55c:: with SMTP id o28mr11930799qko.131.1572644974574;
        Fri, 01 Nov 2019 14:49:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:1f1:: with SMTP id x17ls732337qkn.13.gmail; Fri, 01
 Nov 2019 14:49:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzA5l4i+BnZRBodzq1NwPnR5QGlFuC6Gl9VKHhFxuKQcu1jfkrCnKOzwC+25sgeOcNME9CT
X-Received: by 2002:a05:620a:205d:: with SMTP id d29mr8100315qka.152.1572644973324;
        Fri, 01 Nov 2019 14:49:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572644973; cv=none;
        d=google.com; s=arc-20160816;
        b=l42ajyQnWOFPFqGkxrIvGCLeIxI+7SF+c0yXHDo8sB85929yRBG1jv9GGfhxo2Dwid
         37mkO2xAkKmxTaBwpGnbwYFTseXumW62B5nNL+umk4ZIMoC/BNRPckGPxK9nfXfkl4Au
         vPlc0qDzT3/q4qAf8FTJr0Zuw0GmQ8wx77CcCzSc/P1I7/Z9uZZO5IByqoEge5GTvYWO
         WeJ5jVM0oLmc1EKikElSlYiPe7FhL1wugX1VuayXg+J+9rxkKk9d2nRCj9L4xz3X6PKY
         W55IFC2We6t4g038Y0p982CXftcj0XdXeo3jX6OnRUaa3GPlshup7H9ZM9r/akockUvp
         tLwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=OraDhcsxWmAGHFE6hsO6XXx99iEJAv7n66gmbLVBv2E=;
        b=N+VXtIXKw3bwx2EHZmm73VTs/U8VPrIgQUtzkU5U5PBBb8mrSbwrTV9pyhTVx1+MmO
         6W9ks0gZOdaMqDJmZtPbsecc1oFaxgqBVCHzhGiLG9ZtzRBbjWoriMBrJCOI88lKmh4x
         zU5U+JVL8z24+uNP17mvBtzNWGqT8xS6jY8lO3hsxNSuk1eu0mrweu3eTXN4PUh8Tdey
         FLqVcPfUQC/8VsK7q0YwCkFjS+Rs/UuWUZ5w6kG895NArXIcO7e5/T5H5giFDf1tlD+A
         +jCxQUbcp1hXhqzyNm0UVpSqRktyX0saPGqF7SMxT0s2utFS+oJknZkjIbIGg2wfWxlj
         vwVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AR3/qvjh";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t187si542195qkd.0.2019.11.01.14.49.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:49:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AR3/qvjh";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c13so7914607pfp.5
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=OraDhcsxWmAGHFE6hsO6XXx99iEJAv7n66gmbLVBv2E=;
        b=AR3/qvjhwG6yfQa7rOoZpwuUKgNJAQG+74YsgfPryMAErzRWNwGcK+9nZ2ZpIn1Wjy
         1DgipQcHGyl3XEqjOxMGqP0yGoV+AiYSNxrQ3VLgB2dqGDU+rfQ9bXSVjyIJMTRfzWUt
         SppieWLfprWNavz25U89av0EPE3Drm7jShMTvLz6/1Ig4+lBz8VXaX+4M6EdRq3dHaRs
         7Ris5yWWAFihxU9bUXyJJu4Qc/JYzxrM26Z5xEIasQDOeaDqYTxLkjszkkR9YD/jd3Dt
         A+QlzNpcCpCm3+71kiuzL1A9ESvy7gRlvffCK1WYeJFZ3vZ75VidxigrNR7a6COZTFQb
         40yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=OraDhcsxWmAGHFE6hsO6XXx99iEJAv7n66gmbLVBv2E=;
        b=tx6rGcaU5udo4mPMHSgz7Fqz7GmbJ5/MUrAqsZckmjv8cdpspRvjY6u/5YMmSW15Sr
         mb3Gz0VvJlEBLJrHIMaGsZXVqDHCM6jy4wFwuHW3FsP3vCy/YjfqaFCFlh19DXkyr6ZG
         JCnL5QRj8Ed09jMJTQppRgQl6so6FB8SSdGBcCKxHrPiHqL8bf7d08JO+48OkpdZmg0m
         bsvfZqQkNFUFGYgSNAV88Ohfuh64PSfsVUeasuCoeg7dUbJ41lL3P9DCSesguvg8fZjn
         956GG4ZfwrQrehNc3uyqequT8nStBE/zyJslUup+zTHFhYHBt/9DJhppZSvov+HBCM3h
         7rXg==
X-Gm-Message-State: APjAAAXRKGVxuEdxYdBB5SeWm3AwpQbnxZd2Ry7ozoB9JoeBlqcB95CR
	ymqEGhBVHm9AfCcbTlrNa9ivfBoSNB8=
X-Received: by 2002:a63:6744:: with SMTP id b65mr15740715pgc.13.1572644972612;
        Fri, 01 Nov 2019 14:49:32 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id 74sm8247904pgb.62.2019.11.01.14.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:49:32 -0700 (PDT)
Date: Fri, 1 Nov 2019 16:49:29 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8723bs: Remove unnecessary parentheses
Message-ID: <c18b5a4e2286e45446c7e4ce454710c2aa89903d.1572644627.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572644627.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572644627.git.jarias.linux@gmail.com>

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



X-GM-THRID: 6754467749932564480
X-Received: by 2002:a25:ba41:: with SMTP id z1mr538287ybj.434.1572647073413;
        Fri, 01 Nov 2019 15:24:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:abb2:: with SMTP id v47ls1303257ybi.0.gmail; Fri, 01 Nov
 2019 15:24:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzDwFPu3Sxt8NThpvy0cUFUYv7AEOS6b1BO+rbqWpdZHz1DJoGJoLyCIn6Knlkv8FGtTJN
X-Received: by 2002:a25:3355:: with SMTP id z82mr11415286ybz.226.1572647071660;
        Fri, 01 Nov 2019 15:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572647071; cv=none;
        d=google.com; s=arc-20160816;
        b=HoEaFm0+EsZWJNOrqnrwz4MCdaH9RfV54C6l2Ct87h/Dz4SmCry5wGkq6+VWvON5Pz
         EMJuMDpwDZFcmnrv7ZKq4Dk2wCLDrq3Pf+DbXol8QCpTOKtKnT9dsDyTEynohPVrps37
         Zr9Exd3FRf2ZNss/u4oRK7rZxPOZY1DDe9am51AgTLh8h7XLF6TUcN8qtyC0zeFO68XF
         uDrUE6XDSws3VI+9OkCtYoEI7MmMxk9sRozlCgb+M6H0COr6ehWzQx2DyEL034xKMCsz
         6N6+BB8RzxbPFTQov81EEYuapxTB+qPsrqN44uLq6TpsGKO9+alAtTzVe/UqSCpLqg/m
         zrBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Nks/elwn5HAtN2nRwnNCu2t0Wv1X/vh2X/+OXKx1tsA=;
        b=fKfmxR7Z5lbdoRkJs0eqSlUoXdSglSwfHuOccSXeQ5TTkvpQQIU4NPDr9JPYyrdsIw
         vamqmu6etyev4Ilsku3wSNLjh+EfYtrvsJODW6E1mNgQ9U8YeIqtMLQ1DofBqycpDhLp
         40NtcLa4MbCbMKql221VMLB85UeCLAm5Xf/PZA2NLPQ85tXfeOk5bg8qEQvuT6KG2AtZ
         cC3krAawPYmKDR6qq1kRUtzl6Sgg5ruKwrWsPFcQVcoHgE+lBpNUYR72koPrRhlgg1gT
         Ry3F/7zu2cYLgpgT/Vd10935ueaYGwWQau/P8FcGF0pXErWAVnd9tRpl/xPMww4YZPCQ
         lvcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gLEjq6u7;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id j136si377318ybj.3.2019.11.01.15.24.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gLEjq6u7;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id u23so7334496pgo.0
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 15:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=Nks/elwn5HAtN2nRwnNCu2t0Wv1X/vh2X/+OXKx1tsA=;
        b=gLEjq6u7+cOU8hTUzzxlAclqip0oZaOCRsFVnJCvM5o4OOc6IPmm9RH9WN0AABG7/5
         1N7tvEgyt7f1hVqI0EgoeOj8BQG7V7fg+sKPgvbqVkj64FkPnvUIHtyf7aGSVXCBIIjl
         UqHcpIWqYmC6ism/tyygqBp1o/G4I/0f0ZkVcG7FlzFNakOLngmBp/Q4Sd7az8D++yTa
         SIkL3eOvsqdMuuMbAdhC3xkahHSsfNHlLW37qafZfSowbhXQHDm7I5Xg2SmaWZ9fcVQA
         G81S+p2E8XChUK/RvOG3U8fQn3C+EAvvUINk/MUG29HbUB3yvDmI6+CFiqNybawmTwUp
         BYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=Nks/elwn5HAtN2nRwnNCu2t0Wv1X/vh2X/+OXKx1tsA=;
        b=Y9pgp+MswqdWKQ7SY1MO27HjntFHsscIlZGSxb336xHbbg2emYzqlhVK/8lOKmT+au
         YZYzyNjULyLrVohE/XfNmE2RilbCM547esnDoqMj9qe6Rbz+AYk/ISWER2nH7/x+EZBP
         KRr5GqRGZyiCQHGclLv72XX0luKwm9EozVT9SLYYR9k+md7FmkR8aXOAvcvXGOPgx3zx
         hnIsVa4S2DZxO3B3ezTKNrRTN4sYDuF12pnbM66YXhQbOtMZDD9t0ITk9jFlInAa+ILA
         6dlhG70aNJtMNjGlBie6sl2OuwMcW+obcjJve3LahE+gvsT+7cG//uulqepCD5jqnGuA
         oGng==
X-Gm-Message-State: APjAAAVmXUQJRPSnBjdarKeER4xi3bB/O5MIqYedpFyFYhZFKCe7Il7Z
	sMb2x1XCVBLubJKMcR2RLPU=
X-Received: by 2002:a17:90a:b00d:: with SMTP id x13mr18067003pjq.106.1572647070781;
        Fri, 01 Nov 2019 15:24:30 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id l24sm7518591pff.151.2019.11.01.15.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 15:24:30 -0700 (PDT)
Date: Fri, 1 Nov 2019 17:24:27 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Remove commented code
Message-ID: <20191101222427.mr6th2lmx5sx6rdk@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch removes unnecessary commented code.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 177 +---------------------
 1 file changed, 2 insertions(+), 175 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index f3744f0e6ab4..7c1951209000 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -25,8 +25,6 @@ void _rtw_init_sta_xmit_priv(struct sta_xmit_priv *psta_xmitpriv)
 
 	spin_lock_init(&psta_xmitpriv->lock);
 
-	/* for (i = 0 ; i < MAX_NUMBLKS; i++) */
-	/* 	_init_txservq(&(psta_xmitpriv->blk_q[i])); */
 
 	_init_txservq(&psta_xmitpriv->be_q);
 	_init_txservq(&psta_xmitpriv->bk_q);
@@ -54,8 +52,6 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 	pxmitpriv->adapter = padapter;
 
-	/* for (i = 0 ; i < MAX_NUMBLKS; i++) */
-	/* 	_rtw_init_queue(&pxmitpriv->blk_strms[i]); */
 
 	_rtw_init_queue(&pxmitpriv->be_pending);
 	_rtw_init_queue(&pxmitpriv->bk_pending);
@@ -63,8 +59,6 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	_rtw_init_queue(&pxmitpriv->vo_pending);
 	_rtw_init_queue(&pxmitpriv->bm_pending);
 
-	/* _rtw_init_queue(&pxmitpriv->legacy_dz_queue); */
-	/* _rtw_init_queue(&pxmitpriv->apsd_queue); */
 
 	_rtw_init_queue(&pxmitpriv->free_xmit_queue);
 
@@ -83,8 +77,6 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		goto exit;
 	}
 	pxmitpriv->pxmit_frame_buf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitpriv->pallocated_frame_buf), 4);
-	/* pxmitpriv->pxmit_frame_buf = pxmitpriv->pallocated_frame_buf + 4 - */
-	/* 						((SIZE_PTR) (pxmitpriv->pallocated_frame_buf) &3); */
 
 	pxframe = (struct xmit_frame *) pxmitpriv->pxmit_frame_buf;
 
@@ -123,8 +115,6 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	}
 
 	pxmitpriv->pxmitbuf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitpriv->pallocated_xmitbuf), 4);
-	/* pxmitpriv->pxmitbuf = pxmitpriv->pallocated_xmitbuf + 4 - */
-	/* 						((SIZE_PTR) (pxmitpriv->pallocated_xmitbuf) &3); */
 
 	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
 
@@ -492,11 +482,6 @@ static void update_attrib_phy_info(struct adapter *padapter, struct pkt_attrib *
 	else
 		pattrib->ampdu_spacing = psta->htpriv.rx_ampdu_min_spacing;
 
-	/* if (pattrib->ht_en && psta->htpriv.ampdu_enable) */
-	/*  */
-	/* 	if (psta->htpriv.agg_enable_bitmap & BIT(pattrib->priority)) */
-	/* 		pattrib->ampdu_en = true; */
-	/*  */
 
 
 	pattrib->retry_ctrl = false;
@@ -672,7 +657,6 @@ static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
 	/*  get UserPriority from IP hdr */
 	if (pattrib->ether_type == 0x0800) {
 		_rtw_pktfile_read(ppktfile, (u8 *)&ip_hdr, sizeof(ip_hdr));
-/* 		UserPriority = (ntohs(ip_hdr.tos) >> 5) & 0x3; */
 		UserPriority = ip_hdr.tos >> 5;
 	}
 	pattrib->priority = UserPriority;
@@ -821,7 +805,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 
 	update_attrib_phy_info(padapter, pattrib, psta);
 
-	/* DBG_8192C("%s ==> mac_id(%d)\n", __func__, pattrib->mac_id); */
 
 	pattrib->psta = psta;
 	/* TODO:_unlock */
@@ -860,7 +843,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 	sint			curfragnum, length;
 	u8 *pframe, *payload, mic[8];
 	struct	mic_data		micdata;
-	/* struct	sta_info 	*stainfo; */
 	struct	pkt_attrib	 *pattrib = &pxmitframe->attrib;
 	struct	security_priv *psecuritypriv = &padapter->securitypriv;
 	struct	xmit_priv 	*pxmitpriv = &padapter->xmitpriv;
@@ -868,35 +850,11 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 	u8 hw_hdr_offset = 0;
 	sint bmcst = IS_MCAST(pattrib->ra);
 
-/*
-	if (pattrib->psta)
-	{
-		stainfo = pattrib->psta;
-	}
-	else
-	{
-		DBG_871X("%s, call rtw_get_stainfo()\n", __func__);
-		stainfo =rtw_get_stainfo(&padapter->stapriv ,&pattrib->ra[0]);
-	}
-
-	if (stainfo == NULL)
-	{
-		DBG_871X("%s, psta ==NUL\n", __func__);
-		return _FAIL;
-	}
-
-	if (!(stainfo->state &_FW_LINKED))
-	{
-		DBG_871X("%s, psta->state(0x%x) != _FW_LINKED\n", __func__, stainfo->state);
-		return _FAIL;
-	}
-*/
 
 	hw_hdr_offset = TXDESC_OFFSET;
 
-	if (pattrib->encrypt == _TKIP_) { /* if (psecuritypriv->dot11PrivacyAlgrthm == _TKIP_PRIVACY_) */
+	if (pattrib->encrypt == _TKIP_) {
 		/* encode mic code */
-		/* if (stainfo!= NULL) */
 		{
 			u8 null_key[16] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0};
 
@@ -904,16 +862,12 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 
 			if (bmcst) {
 				if (!memcmp(psecuritypriv->dot118021XGrptxmickey[psecuritypriv->dot118021XGrpKeyid].skey, null_key, 16)) {
-					/* DbgPrint("\nxmitframe_addmic:stainfo->dot11tkiptxmickey == 0\n"); */
-					/* msleep(10); */
 					return _FAIL;
 				}
 				/* start to calculate the mic code */
 				rtw_secmicsetkey(&micdata, psecuritypriv->dot118021XGrptxmickey[psecuritypriv->dot118021XGrpKeyid].skey);
 			} else {
 				if (!memcmp(&pattrib->dot11tkiptxmickey.skey[0], null_key, 16)) {
-					/* DbgPrint("\nxmitframe_addmic:stainfo->dot11tkiptxmickey == 0\n"); */
-					/* msleep(10); */
 					return _FAIL;
 				}
 				/* start to calculate the mic code */
@@ -935,7 +889,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 
 			}
 
-			/* if (pqospriv->qos_option == 1) */
 			if (pattrib->qos_en)
 				priority[0] = (u8)pxmitframe->attrib.priority;
 
@@ -981,9 +934,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 					*(payload+curfragnum+4), *(payload+curfragnum+5), *(payload+curfragnum+6), *(payload+curfragnum+7)));
 			}
 /*
-			else {
-				RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("xmitframe_addmic: rtw_get_stainfo == NULL!!!\n"));
-			}
 */
 	}
 	return _SUCCESS;
@@ -993,11 +943,8 @@ static s32 xmitframe_swencrypt(struct adapter *padapter, struct xmit_frame *pxmi
 {
 
 	struct	pkt_attrib	 *pattrib = &pxmitframe->attrib;
-	/* struct	security_priv *psecuritypriv =&padapter->securitypriv; */
 
-	/* if ((psecuritypriv->sw_encrypt)||(pattrib->bswenc)) */
 	if (pattrib->bswenc) {
-		/* DBG_871X("start xmitframe_swencrypt\n"); */
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("### xmitframe_swencrypt\n"));
 		switch (pattrib->encrypt) {
 		case _WEP40_:
@@ -1134,14 +1081,12 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 
 					/* check BA_starting_seqctrl */
 					if (SN_LESS(pattrib->seqnum, tx_seq)) {
-						/* DBG_871X("tx ampdu seqnum(%d) < tx_seq(%d)\n", pattrib->seqnum, tx_seq); */
 						pattrib->ampdu_en = false;/* AGG BK */
 					} else if (SN_EQUAL(pattrib->seqnum, tx_seq)) {
 						psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (tx_seq+1)&0xfff;
 
 						pattrib->ampdu_en = true;/* AGG EN */
 					} else {
-						/* DBG_871X("tx ampdu over run\n"); */
 						psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (pattrib->seqnum+1)&0xfff;
 						pattrib->ampdu_en = true;/* AGG EN */
 					}
@@ -1209,9 +1154,6 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 	u8 *pframe, *mem_start;
 	u8 hw_hdr_offset;
 
-	/* struct sta_info 	*psta; */
-	/* struct sta_priv 	*pstapriv = &padapter->stapriv; */
-	/* struct mlme_priv *pmlmepriv = &padapter->mlmepriv; */
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
 	struct pkt_attrib	*pattrib = &pxmitframe->attrib;
@@ -1221,30 +1163,6 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 	s32 bmcst = IS_MCAST(pattrib->ra);
 	s32 res = _SUCCESS;
 
-/*
-	if (pattrib->psta)
-	{
-		psta = pattrib->psta;
-	} else
-	{
-		DBG_871X("%s, call rtw_get_stainfo()\n", __func__);
-		psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
-	}
-
-	if (psta == NULL)
-  {
-
-		DBG_871X("%s, psta ==NUL\n", __func__);
-		return _FAIL;
-	}
-
-
-	if (!(psta->state &_FW_LINKED))
-	{
-		DBG_871X("%s, psta->state(0x%x) != _FW_LINKED\n", __func__, psta->state);
-		return _FAIL;
-	}
-*/
 	if (!pxmitframe->buf_addr) {
 		DBG_8192C("==> %s buf_addr == NULL\n", __func__);
 		return _FAIL;
@@ -1461,7 +1379,6 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 				goto xmitframe_coalesce_fail;
 			}
 
-			/* DBG_871X("%s, action frame category =%d\n", __func__, pframe[WLAN_HDR_A3_LEN]); */
 			/* according 802.11-2012 standard, these five types are not robust types */
 			if (subtype == WIFI_ACTION &&
 			(pframe[WLAN_HDR_A3_LEN] == RTW_WLAN_CATEGORY_PUBLIC ||
@@ -1758,7 +1675,6 @@ struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 	struct list_head *plist, *phead;
 	struct __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
-	/* DBG_871X("+rtw_alloc_xmitbuf\n"); */
 
 	spin_lock_irqsave(&pfree_xmitbuf_queue->lock, irqL);
 
@@ -1780,7 +1696,6 @@ struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 		#ifdef DBG_XMIT_BUF
 		DBG_871X("DBG_XMIT_BUF ALLOC no =%d,  free_xmitbuf_cnt =%d\n", pxmitbuf->no, pxmitpriv->free_xmitbuf_cnt);
 		#endif
-		/* DBG_871X("alloc, free_xmitbuf_cnt =%d\n", pxmitpriv->free_xmitbuf_cnt); */
 
 		pxmitbuf->priv_data = NULL;
 
@@ -1810,7 +1725,6 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 	_irqL irqL;
 	struct __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
-	/* DBG_871X("+rtw_free_xmitbuf\n"); */
 
 	if (!pxmitbuf)
 		return _FAIL;
@@ -1832,7 +1746,6 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 			      get_list_head(pfree_xmitbuf_queue));
 
 		pxmitpriv->free_xmitbuf_cnt++;
-		/* DBG_871X("FREE, free_xmitbuf_cnt =%d\n", pxmitpriv->free_xmitbuf_cnt); */
 		#ifdef DBG_XMIT_BUF
 		DBG_871X("DBG_XMIT_BUF FREE no =%d, free_xmitbuf_cnt =%d\n", pxmitbuf->no, pxmitpriv->free_xmitbuf_cnt);
 		#endif
@@ -1848,7 +1761,6 @@ static void rtw_init_xmitframe(struct xmit_frame *pxframe)
 		pxframe->pxmitbuf = NULL;
 
 		memset(&pxframe->attrib, 0, sizeof(struct pkt_attrib));
-		/* pxframe->attrib.psta = NULL; */
 
 		pxframe->frame_tag = DATA_FRAMETAG;
 
@@ -2043,7 +1955,6 @@ s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitfram
 	if (rtw_xmit_classifier(padapter, pxmitframe) == _FAIL) {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
 			 ("rtw_xmitframe_enqueue: drop xmit pkt for classifier fail\n"));
-/* 		pxmitframe->pkt = NULL; */
 		return _FAIL;
 	}
 
@@ -2095,7 +2006,6 @@ struct tx_servq *rtw_get_sta_pending(struct adapter *padapter, struct sta_info *
  */
 s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 {
-	/* _irqL irqL0; */
 	u8 ac_index;
 	struct sta_info *psta;
 	struct tx_servq	*ptxservq;
@@ -2105,14 +2015,6 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 
 	DBG_COUNTER(padapter->tx_logs.core_tx_enqueue_class);
 
-/*
-	if (pattrib->psta) {
-		psta = pattrib->psta;
-	} else {
-		DBG_871X("%s, call rtw_get_stainfo()\n", __func__);
-		psta = rtw_get_stainfo(pstapriv, pattrib->ra);
-	}
-*/
 
 	psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 	if (pattrib->psta != psta) {
@@ -2137,21 +2039,17 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 
 	ptxservq = rtw_get_sta_pending(padapter, psta, pattrib->priority, (u8 *)(&ac_index));
 
-	/* spin_lock_irqsave(&pstapending->lock, irqL0); */
 
 	if (list_empty(&ptxservq->tx_pending)) {
 		list_add_tail(&ptxservq->tx_pending, get_list_head(phwxmits[ac_index].sta_queue));
 	}
 
-	/* spin_lock_irqsave(&ptxservq->sta_pending.lock, irqL1); */
 
 	list_add_tail(&pxmitframe->list, get_list_head(&ptxservq->sta_pending));
 	ptxservq->qcnt++;
 	phwxmits[ac_index].accnt++;
 
-	/* spin_unlock_irqrestore(&ptxservq->sta_pending.lock, irqL1); */
 
-	/* spin_unlock_irqrestore(&pstapending->lock, irqL0); */
 
 exit:
 
@@ -2175,42 +2073,24 @@ s32 rtw_alloc_hwxmits(struct adapter *padapter)
 	hwxmits = pxmitpriv->hwxmits;
 
 	if (pxmitpriv->hwxmit_entry == 5) {
-		/* pxmitpriv->bmc_txqueue.head = 0; */
-		/* hwxmits[0] .phwtxqueue = &pxmitpriv->bmc_txqueue; */
 		hwxmits[0] .sta_queue = &pxmitpriv->bm_pending;
 
-		/* pxmitpriv->vo_txqueue.head = 0; */
-		/* hwxmits[1] .phwtxqueue = &pxmitpriv->vo_txqueue; */
 		hwxmits[1] .sta_queue = &pxmitpriv->vo_pending;
 
-		/* pxmitpriv->vi_txqueue.head = 0; */
-		/* hwxmits[2] .phwtxqueue = &pxmitpriv->vi_txqueue; */
 		hwxmits[2] .sta_queue = &pxmitpriv->vi_pending;
 
-		/* pxmitpriv->bk_txqueue.head = 0; */
-		/* hwxmits[3] .phwtxqueue = &pxmitpriv->bk_txqueue; */
 		hwxmits[3] .sta_queue = &pxmitpriv->bk_pending;
 
-		/* pxmitpriv->be_txqueue.head = 0; */
-		/* hwxmits[4] .phwtxqueue = &pxmitpriv->be_txqueue; */
 		hwxmits[4] .sta_queue = &pxmitpriv->be_pending;
 
 	} else if (pxmitpriv->hwxmit_entry == 4) {
 
-		/* pxmitpriv->vo_txqueue.head = 0; */
-		/* hwxmits[0] .phwtxqueue = &pxmitpriv->vo_txqueue; */
 		hwxmits[0] .sta_queue = &pxmitpriv->vo_pending;
 
-		/* pxmitpriv->vi_txqueue.head = 0; */
-		/* hwxmits[1] .phwtxqueue = &pxmitpriv->vi_txqueue; */
 		hwxmits[1] .sta_queue = &pxmitpriv->vi_pending;
 
-		/* pxmitpriv->be_txqueue.head = 0; */
-		/* hwxmits[2] .phwtxqueue = &pxmitpriv->be_txqueue; */
 		hwxmits[2] .sta_queue = &pxmitpriv->be_pending;
 
-		/* pxmitpriv->bk_txqueue.head = 0; */
-		/* hwxmits[3] .phwtxqueue = &pxmitpriv->bk_txqueue; */
 		hwxmits[3] .sta_queue = &pxmitpriv->bk_pending;
 	} else {
 
@@ -2231,9 +2111,6 @@ void rtw_init_hwxmits(struct hw_xmit *phwxmit, sint entry)
 	sint i;
 
 	for (i = 0; i < entry; i++, phwxmit++) {
-		/* spin_lock_init(&phwxmit->xmit_lock); */
-		/* INIT_LIST_HEAD(&phwxmit->pending); */
-		/* phwxmit->txcmdcnt = 0; */
 		phwxmit->accnt = 0;
 	}
 }
@@ -2400,17 +2277,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 		DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_warn_fwstate);
 		return ret;
 	}
-/*
-	if (pattrib->psta)
-	{
-		psta = pattrib->psta;
-	}
-	else
-	{
-		DBG_871X("%s, call rtw_get_stainfo()\n", __func__);
-		psta =rtw_get_stainfo(pstapriv, pattrib->ra);
-	}
-*/
 	psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 	if (pattrib->psta != psta) {
 		DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_warn_sta);
@@ -2432,9 +2298,7 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 	if (pattrib->triggered == 1) {
 		DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_warn_trigger);
-		/* DBG_871X("directly xmit pspoll_triggered packet\n"); */
 
-		/* pattrib->triggered = 0; */
 		if (bmcst && xmitframe_hiq_filter(pxmitframe))
 			pattrib->qsel = 0x11;/* HIQ */
 
@@ -2450,7 +2314,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 			list_del_init(&pxmitframe->list);
 
-			/* spin_lock_bh(&psta->sleep_q.lock); */
 
 			list_add_tail(&pxmitframe->list, get_list_head(&psta->sleep_q));
 
@@ -2459,10 +2322,9 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 			if (!(pstapriv->tim_bitmap & BIT(0)))
 				update_tim = true;
 
-			pstapriv->tim_bitmap |= BIT(0);/*  */
+			pstapriv->tim_bitmap |= BIT(0);
 			pstapriv->sta_dz_bitmap |= BIT(0);
 
-			/* DBG_871X("enqueue, sq_len =%d, tim =%x\n", psta->sleepq_len, pstapriv->tim_bitmap); */
 
 			if (update_tim) {
 				update_beacon(padapter, _TIM_IE_, NULL, true);
@@ -2470,7 +2332,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 				chk_bmc_sleepq_cmd(padapter);
 			}
 
-			/* spin_unlock_bh(&psta->sleep_q.lock); */
 
 			ret = true;
 
@@ -2493,7 +2354,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 		if (pstapriv->sta_dz_bitmap & BIT(psta->aid)) {
 			list_del_init(&pxmitframe->list);
 
-			/* spin_lock_bh(&psta->sleep_q.lock); */
 
 			list_add_tail(&pxmitframe->list, get_list_head(&psta->sleep_q));
 
@@ -2528,20 +2388,13 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 				pstapriv->tim_bitmap |= BIT(psta->aid);
 
-				/* DBG_871X("enqueue, sq_len =%d, tim =%x\n", psta->sleepq_len, pstapriv->tim_bitmap); */
 
 				if (update_tim)
-					/* DBG_871X("sleepq_len == 1, update BCNTIM\n"); */
 					/* upate BCN for TIM IE */
 					update_beacon(padapter, _TIM_IE_, NULL, true);
 			}
 
-			/* spin_unlock_bh(&psta->sleep_q.lock); */
 
-			/* if (psta->sleepq_len > (NR_XMITFRAME>>3)) */
-			/*  */
-			/* 	wakeup_sta_to_xmit(padapter, psta); */
-			/*  */
 
 			ret = true;
 
@@ -2586,7 +2439,6 @@ static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struc
 			ptxservq->qcnt--;
 			phwxmits[ac_index].accnt--;
 		} else {
-			/* DBG_871X("xmitframe_enqueue_for_sleeping_sta return false\n"); */
 		}
 
 	}
@@ -2649,7 +2501,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 	psta_bmc = rtw_get_bcmc_stainfo(padapter);
 
 
-	/* spin_lock_bh(&psta->sleep_q.lock); */
 	spin_lock_bh(&pxmitpriv->lock);
 
 	xmitframe_phead = get_list_head(&psta->sleep_q);
@@ -2708,9 +2559,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 	if (psta->sleepq_len == 0) {
 		if (pstapriv->tim_bitmap & BIT(psta->aid)) {
-			/* DBG_871X("wakeup to xmit, qlen == 0, update_BCNTIM, tim =%x\n", pstapriv->tim_bitmap); */
-			/* upate BCN for TIM IE */
-			/* update_BCNTIM(padapter); */
 			update_mask = BIT(0);
 		}
 
@@ -2751,24 +2599,12 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 
 			pxmitframe->attrib.triggered = 1;
-/*
-			spin_unlock_bh(&psta_bmc->sleep_q.lock);
-			if (rtw_hal_xmit(padapter, pxmitframe) == true)
-			{
-				rtw_os_xmit_complete(padapter, pxmitframe);
-			}
-			spin_lock_bh(&psta_bmc->sleep_q.lock);
-
-*/
 			rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
 
 		}
 
 		if (psta_bmc->sleepq_len == 0) {
 			if (pstapriv->tim_bitmap & BIT(0)) {
-				/* DBG_871X("wakeup to xmit, qlen == 0, update_BCNTIM, tim =%x\n", pstapriv->tim_bitmap); */
-				/* upate BCN for TIM IE */
-				/* update_BCNTIM(padapter); */
 				update_mask |= BIT(1);
 			}
 			pstapriv->tim_bitmap &= ~BIT(0);
@@ -2779,12 +2615,9 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 _exit:
 
-	/* spin_unlock_bh(&psta_bmc->sleep_q.lock); */
 	spin_unlock_bh(&pxmitpriv->lock);
 
 	if (update_mask)
-		/* update_BCNTIM(padapter); */
-		/* printk("%s => call update_beacon\n", __func__); */
 		update_beacon(padapter, _TIM_IE_, NULL, true);
 
 }
@@ -2798,7 +2631,6 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 
 
-	/* spin_lock_bh(&psta->sleep_q.lock); */
 	spin_lock_bh(&pxmitpriv->lock);
 
 	xmitframe_phead = get_list_head(&psta->sleep_q);
@@ -2851,16 +2683,11 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 		if ((psta->sleepq_ac_len == 0) && (!psta->has_legacy_ac) && (wmmps_ac)) {
 			pstapriv->tim_bitmap &= ~BIT(psta->aid);
 
-			/* DBG_871X("wakeup to xmit, qlen == 0, update_BCNTIM, tim =%x\n", pstapriv->tim_bitmap); */
-			/* upate BCN for TIM IE */
-			/* update_BCNTIM(padapter); */
 			update_beacon(padapter, _TIM_IE_, NULL, true);
-			/* update_mask = BIT(0); */
 		}
 
 	}
 
-	/* spin_unlock_bh(&psta->sleep_q.lock); */
 	spin_unlock_bh(&pxmitpriv->lock);
 }
 
-- 
2.20.1



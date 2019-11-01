X-GM-THRID: 6754475582330765312
X-Received: by 2002:a05:6830:1002:: with SMTP id a2mr10056121otp.212.1572648979484;
        Fri, 01 Nov 2019 15:56:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:1291:: with SMTP id g17ls1658607otg.11.gmail; Fri, 01
 Nov 2019 15:56:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx+nrciuEorpt6I1l8dxZpZ/u6NaOsyYneQkNYJ1G7OSOH2alW3jqZQTnKVgtu6dItfDzmh
X-Received: by 2002:a9d:4c07:: with SMTP id l7mr10645757otf.206.1572648978662;
        Fri, 01 Nov 2019 15:56:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572648978; cv=none;
        d=google.com; s=arc-20160816;
        b=d4k9IdNuuiz3jo7PrXNew/L8VDyd7f5teM3wZVBtG8qaZIw8h4rIqHlCGo/nhncstj
         sualuCJaoO+IMFTI4iCPMnCKonerSAyxsWN+GfcjFOBxcMFnT4QToM3VwSfaQqPpByCp
         aMKJ1Zac7qA7dXjXSj2oHtibFqRxlGuT8hGG8Ox5JJ+o5cMUIsXHk54u2dNYLZuG5sUd
         VGGTIX+41aWlutq51t0CJcmb/WR2Dnxmh+BFn3wygOTBk2xCVI7K/ySwSOo64R2DbSlB
         8MW/kQQiiMTePASVMFrF0SIcwfzsMIJWE3Pay9M6PM5EB1nQ/VTc7HaG2nNASnDSu9dl
         CPuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=XOWYAHWRQ4FMqXh8QRHf05Xtp7+MTNEGJj3Z0e35AjQ=;
        b=FhMPKzAK+7tV05vfBxKEdvc5sf5plk3yEEz2Zttt3R2Ip4JgL3B1hVYv0Ntdw00NgB
         p93fU3R6t+y075TFDFCCsG2kT7i/gXAxxyWPBCBhx3+Ak17BWnnMq033Y02qMQ0FX0Qd
         iphfdJTg4U9wC/00IUOi2HBnUnYU/fM1cez+OvNo9Up/ygVj4qL84gng2++Iqtj/EaQU
         sF3FJW/bdQ9Hu7Z7vQA0Ly6SOkOoypqWs9EX+8s8mqg5sa49qisyo1INqss5MlhDLOES
         4DI8O60Y4XcztORGbUgpmGNMFS0x6Y1GuG0HkGcqHDwNGrYom/p+GsQWsad52kDCtPIf
         XPSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kci3Buml;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id e3si452901oti.0.2019.11.01.15.56.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:56:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kci3Buml;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id j12so3021933plt.9
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 15:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=XOWYAHWRQ4FMqXh8QRHf05Xtp7+MTNEGJj3Z0e35AjQ=;
        b=kci3BumlQ3CdIcSAy37pCKfB4Ns32TV0m4VCbWRfg1Z2o2e4Cn7+Dx8DxO5v1vS/oZ
         idqFrK22Ma0Bm3wMrPmMtewBFUOOMlL99RGroSJaDTr9RN0ROB1mIKX9RBDBw70kaYU+
         VcjoP0laukhE48o8EAhuTSp+i4FgfXtwMSohPBuXAXZ5rqNsJNjEChpcIwrv47GrPROc
         dYFytR3Xut98Xfa250tCHtHIdP3x8ojEQZRNkbblXG6yyWdnc/w01OpcXzWWzmFAvIrL
         Y7kUpYlFjE7BMDZ2flE+Uhiy9bqs/RDV+VTgij2GwSxkJPXb9yUob/PGz06EgaqI7pag
         PS+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=XOWYAHWRQ4FMqXh8QRHf05Xtp7+MTNEGJj3Z0e35AjQ=;
        b=BiyF+XaKtKQnU/sPTPLNSZyXHSbBdhwPDsiM38QoPtAtjEPppwZ3v5xGV+2N1E+2ef
         uNdN+s6GFU6Bpbf7uUOFIwLZs0O0Sfe76eVQi9p4Q1iNzgPwY83qbwx69vK58/VfnSTZ
         DmE/5vveu005NUnyHKeWFd+N5as2iLGKXC7YSvAWRrmeEWI5wjDaPsqGzZRqlw1/WOyB
         JEKa6JaBaiIUxST29ibeRA4Q/rZpkfCnwVeczYGkuF91gWjdWOZ6Mqv3lDpPtQCfkzOQ
         3+Yj6Jvk3s7LSu8vXFoNdvz5hA4EWI/snuKaK3M3/2Q2uouTSexfNanYvVZoZ2o0Wqwp
         e2tQ==
X-Gm-Message-State: APjAAAVbOxB0Qq82CWrLwpdGhJYs72/pWC6G6DXV0OGxTLMjlQd7QfG+
	i4mRzrNP+cOPh5Tj9paBlE8jpEybamQ=
X-Received: by 2002:a17:902:6e02:: with SMTP id u2mr8281228plk.234.1572648977987;
        Fri, 01 Nov 2019 15:56:17 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id 39sm11323304pjo.7.2019.11.01.15.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 15:56:17 -0700 (PDT)
Date: Fri, 1 Nov 2019 17:56:14 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtl8723bs: Remove blank lines after an open
 brace
Message-ID: <3da3319a653018d394615cc13730b8bc5edba89e.1572648706.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572648706.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572648706.git.jarias.linux@gmail.com>

This patch removes blank lines after an open brace.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 0c350d080b4a..489dc5f2e3a1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -915,7 +915,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 
 static s32 xmitframe_swencrypt(struct adapter *padapter, struct xmit_frame *pxmitframe)
 {
-
 	struct	pkt_attrib	 *pattrib = &pxmitframe->attrib;
 
 	if (pattrib->bswenc) {
@@ -1334,7 +1333,6 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 				psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 
 			if (!psta) {
-
 				DBG_871X("%s, psta ==NUL\n", __func__);
 				goto xmitframe_coalesce_fail;
 			}
@@ -1442,7 +1440,6 @@ s32 rtw_put_snap(u8 *data, u16 h_proto)
 
 void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 {
-
 	uint	protection;
 	u8 *perp;
 	sint	 erp_len;
@@ -1572,7 +1569,6 @@ struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 	if (list_empty(&pfree_queue->queue)) {
 		pxmitbuf = NULL;
 	} else {
-
 		phead = get_list_head(pfree_queue);
 
 		plist = get_next(phead);
@@ -1641,7 +1637,6 @@ struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 	if (list_empty(&pfree_xmitbuf_queue->queue)) {
 		pxmitbuf = NULL;
 	} else {
-
 		phead = get_list_head(pfree_xmitbuf_queue);
 
 		plist = get_next(phead);
@@ -1896,7 +1891,6 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 	plist = get_next(phead);
 
 	while (phead != plist) {
-
 		pxmitframe = LIST_CONTAINOR(plist, struct xmit_frame, list);
 
 		plist = get_next(plist);
@@ -2034,7 +2028,6 @@ s32 rtw_alloc_hwxmits(struct adapter *padapter)
 
 		hwxmits[4] .sta_queue = &pxmitpriv->be_pending;
 	} else if (pxmitpriv->hwxmit_entry == 4) {
-
 		hwxmits[0] .sta_queue = &pxmitpriv->vo_pending;
 
 		hwxmits[1] .sta_queue = &pxmitpriv->vi_pending;
@@ -2190,7 +2183,6 @@ inline bool xmitframe_hiq_filter(struct xmit_frame *xmitframe)
 	struct registry_priv *registry = &adapter->registrypriv;
 
 	if (registry->hiq_filter == RTW_HIQ_FILTER_ALLOW_SPECIAL) {
-
 		struct pkt_attrib *attrib = &xmitframe->attrib;
 
 		if (attrib->ether_type == 0x0806
-- 
2.20.1



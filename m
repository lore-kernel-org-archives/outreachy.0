X-GM-THRID: 6758464167600979968
X-Received: by 2002:a81:3511:: with SMTP id c17mr21845279ywa.440.1573577637394;
        Tue, 12 Nov 2019 08:53:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:a046:: with SMTP id x67ls723415ywg.1.gmail; Tue, 12 Nov
 2019 08:53:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqxw/xNP2gP3HKA0dAQ15Ntrg+ypJfPg6X8FCxFG7+R18bRF8Q+V32Hw3/lTRc8BvFfZR7bR
X-Received: by 2002:a81:7606:: with SMTP id r6mr21441382ywc.418.1573577635927;
        Tue, 12 Nov 2019 08:53:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573577635; cv=none;
        d=google.com; s=arc-20160816;
        b=jMqox64v3ilI9+MRF0BZDbz0U/3IkE+ur5m3uuOyGkKCcZC5EHmgx1ipDEU5SPHhv2
         g5JtfAy+UWRfrRxKfMDgh0nvcmdaQ0R16P7hHhnYrlCmnj6ts02YB/PvagIEEVBHI6RR
         PEa/LegVbxPD9wyjYTwzyI4AYc83Bezh2smB3b0dXzV86aQyVMGWg9cY2uueYTkLS8k7
         mGzd7f/n+E+wCcGnN8ZaKLR80gcBEAu3GvOLsLH0USm8L52cFAuvkHRaSCi0WE8PcBil
         vv9to/7LYOgZcPX3pjRRbtoXIi7dWaWlD1aLclR6xE2+jo0jD2EDIqJon1XsOe3OnhP9
         DOHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=lbcz9bkPVGGwPZGZcVShlfo+81m3kSOz/HD5MUWR9yk=;
        b=FEwGvVYZdt5wO7dMaPRiSrXcLvJRI/k42UAlRZlOmALUAA1RxplWlgXAvHgd58qxIu
         nGGJzbJxi1D0G3S0XfLnIHnegmJIT1ae+938Z28RIcuvnoK+u8+4/itLrICzO8gHvxWn
         bYEcdDsViglfYu3J09lziusWHed+FqxbqPyXcIFmmtfePJTkeWKfnH+35vfDR3rIYB+n
         uTRoBAH/PdwmEV+Iidq6g3gezSSosL/cO7tr1KkuEcOrdzayVdux1sF8xnHZtafF2Tj8
         2XKiOgmE3d6YMbI4tWfr8jewai1HxvXwX8tDDs0B3723o2PkMwppbRi6+9fYSlh0waXh
         r9JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="T/sD5dIe";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id u8si987948ybc.2.2019.11.12.08.53.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 08:53:55 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="T/sD5dIe";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id z23so15024198qkj.10
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 08:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=lbcz9bkPVGGwPZGZcVShlfo+81m3kSOz/HD5MUWR9yk=;
        b=T/sD5dIeNMR1JZLa8dNZ/TbDgDfJgkcU89q+NISDU34LuQCbu4F7sn6bFAmcM+xdZL
         eIW66PLWV0JTBiUW6ejZU6rDhAoNCIYRFfRMMgX9TY2ZoPi7sZsiwYz7T8SJlvFckHDe
         fNTx33Fp8ODyAGdud70n6lsN821r1qEu3B3tryKerYNFClFAj5+mTm4FHPlhTp9WTQCZ
         I4ngg8sOYwSyg3AALHml34Ftti5qw2hzjGVEF67iF5zRR9I5qh2AuESSq2YEJIYTOjlM
         i1uIKrAg1+yEOWkPPoHqU9wP06Tu8vr0A0MTWwq60504csHWk6vBMq8sqV1k7GNegMNE
         II6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=lbcz9bkPVGGwPZGZcVShlfo+81m3kSOz/HD5MUWR9yk=;
        b=ikolApwXYu3LjqBsSiFqB6BxkI3SNGjBU8TjkpJh4kK8qoeAEDi7bb0es2Ole/njFm
         2nYIMaxtnY4TRdDqJvb/MYhfSDGyHLc6Goc6ak8bP89Xx+tms1pQp4K+GI0SNpEbUyCn
         6wLhBB5L777736ybRqiWQhiGJKZ9+kIQBs+F0qYEaJ4X4Y+EKBfRxc775DKpjsLsdamh
         GO24HGkWMEomRVEF0tF+0ulYotTdJ8l9MwAgVNha9wPEyqfQ1r3+UzcIbXjGwZ+Cp5ZP
         ebj3FejYKDRx3unaCPB4rmJ6fCmaaFqrQmJ/WX/MJf6kb7FHT0xL/KZRlG0s9gU7L0/R
         lImQ==
X-Gm-Message-State: APjAAAWw+u25zLQcrioOwO6oGGWCIUBj3AO6LVytMxV9z4MFru3A4poa
	V2fOLiietYyIWTF6knx/L5E=
X-Received: by 2002:a05:620a:242:: with SMTP id q2mr6404419qkn.87.1573577635694;
        Tue, 12 Nov 2019 08:53:55 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-154-98-65.dynamic.etb.net.co. [186.154.98.65])
        by smtp.gmail.com with ESMTPSA id w5sm5196039qkf.43.2019.11.12.08.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 08:53:55 -0800 (PST)
Date: Tue, 12 Nov 2019 11:53:53 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 3/9] staging: rtl8723bs: Remove blank lines after an open
 brace
Message-ID: <847ce59f8429afaac1299794987779d0db54d0be.1573577309.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1573577309.git.jarias.linux@gmail.com>

This patch removes blank lines after an open brace.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 7f88f433345d..60e639690fc3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -912,7 +912,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 
 static s32 xmitframe_swencrypt(struct adapter *padapter, struct xmit_frame *pxmitframe)
 {
-
 	struct	pkt_attrib	 *pattrib = &pxmitframe->attrib;
 
 	if (pattrib->bswenc) {
@@ -1328,7 +1327,6 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 				psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 
 			if (!psta) {
-
 				DBG_871X("%s, psta ==NUL\n", __func__);
 				goto xmitframe_coalesce_fail;
 			}
@@ -1436,7 +1434,6 @@ s32 rtw_put_snap(u8 *data, u16 h_proto)
 
 void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 {
-
 	uint	protection;
 	u8 *perp;
 	sint	 erp_len;
@@ -1565,7 +1562,6 @@ struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 	if (list_empty(&pfree_queue->queue)) {
 		pxmitbuf = NULL;
 	} else {
-
 		phead = get_list_head(pfree_queue);
 
 		plist = get_next(phead);
@@ -1633,7 +1629,6 @@ struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 	if (list_empty(&pfree_xmitbuf_queue->queue)) {
 		pxmitbuf = NULL;
 	} else {
-
 		phead = get_list_head(pfree_xmitbuf_queue);
 
 		plist = get_next(phead);
@@ -1887,7 +1882,6 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 	plist = get_next(phead);
 
 	while (phead != plist) {
-
 		pxmitframe = LIST_CONTAINOR(plist, struct xmit_frame, list);
 
 		plist = get_next(plist);
@@ -2025,7 +2019,6 @@ s32 rtw_alloc_hwxmits(struct adapter *padapter)
 
 		hwxmits[4] .sta_queue = &pxmitpriv->be_pending;
 	} else if (pxmitpriv->hwxmit_entry == 4) {
-
 		hwxmits[0] .sta_queue = &pxmitpriv->vo_pending;
 
 		hwxmits[1] .sta_queue = &pxmitpriv->vi_pending;
@@ -2181,7 +2174,6 @@ inline bool xmitframe_hiq_filter(struct xmit_frame *xmitframe)
 	struct registry_priv *registry = &adapter->registrypriv;
 
 	if (registry->hiq_filter == RTW_HIQ_FILTER_ALLOW_SPECIAL) {
-
 		struct pkt_attrib *attrib = &xmitframe->attrib;
 
 		if (attrib->ether_type == 0x0806
-- 
2.20.1



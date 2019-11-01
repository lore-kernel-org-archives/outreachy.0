X-GM-THRID: 6754458440514404352
X-Received: by 2002:a0d:cc4f:: with SMTP id o76mr1974741ywd.479.1572644931955;
        Fri, 01 Nov 2019 14:48:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cf05:: with SMTP id f5ls1282364ybg.5.gmail; Fri, 01 Nov
 2019 14:48:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxs1JJGU1pLBC2yGXne4Cnsur/ZyjVzmJdxNYyCN8XlOtBkO9MqHywT4kMmVuTlyOdqDz9B
X-Received: by 2002:a25:33d4:: with SMTP id z203mr11702781ybz.149.1572644930085;
        Fri, 01 Nov 2019 14:48:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572644930; cv=none;
        d=google.com; s=arc-20160816;
        b=qfyEq7IxYCDS1gWbn3dNQf6q29YHmKf0KHsQ/lraNvbQP4R0mA23QDNY1jhM8CZ0Hc
         O5y+lA3/O8kAWN3KDhMpfMMTuscT3xUEbxYWHx3nEjuqlSvzaHPfs5DO+i7nJTI0sLJu
         5gtGug0RTG83polHbav39tpXEuQbqS19EOakPr1xqmSsd8hki64mAh9zFwCt8Y3iOm/9
         OqQ9EqIDo3RUu3Mr8gt/OHmB1LzvrOTaBbjWmQMRPVfCOdkYoPEeCyTlLY8CuEA08UHw
         AW9gW9id2o4koigScQfjZPZBMGQZ+lQ6GN4je+J6NDctz1hNxZ+2zTbuB/O1griDo/Ea
         gzMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=dXizT5EKJnlRiyZAEViaDnoUOfHkf9phR20Sv1u8WE0=;
        b=XTZReB6aVzKbYQMzI9iO3gH15xSDOwljJRjgrH2E92Af1QpU6pQ4TI2+cjohljydpM
         GdFjLXj0xLiW5xVvRnnPu65XG2OCV8FUE1gLazJ6SswCLbWeu+Os9QvXZpuHp7QB18Nw
         dsD6rGGEm0rvkRgjnBDuUa/PAS8r4+4DKkwv2ifXkiDLP+t76IZiYMsVRF+0nCNxQF51
         FOVuQb2vWAfQkj5hFG+Sr9Z2XKqlhQHbdLoOyxV3tsw6Nz6h5tWwJyKdb+ePrOXCYwAS
         c5mjVWGfFcBKy81+7qLR2MA7PVNAfDhzuHhYryIPU4WL/oDhERvA/DVgn3CUR2EUnHs2
         vKmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kRs3vdHT;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id d192si678282ywb.1.2019.11.01.14.48.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:48:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kRs3vdHT;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id l3so7267028pgr.8
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=dXizT5EKJnlRiyZAEViaDnoUOfHkf9phR20Sv1u8WE0=;
        b=kRs3vdHT0lIGv2DUfBXj0smsdPI6yM11Jz7IeZeN2kZWgeKjYg5jYSd8+xehuCVl5Y
         2aw/BdZmSqtsHf31tVQVJ5Lsgr6Xw4WLVi0xrJCWzjQs/CLDYJIfx1ClWWEo1KZy9ATh
         jUsU1g5KDn+Wvot/6cmg+k9QdvgmOhO20ANKvpeyjZveuxDJgwKYAO6fyryMD7HaofDD
         Gu9vEYTFXjn1FYkiptIqIOJ3Ek8mEDF226rufpKF9oLgmSUhCn+6+u8U9RZY3DJwNISZ
         qp5muf5/AHLLikX0bXovI/pNS8i1LwJBm0S5LMr0Pyuy8PnjSyJIuo1zOTWpWoW1dA9D
         Bq3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=dXizT5EKJnlRiyZAEViaDnoUOfHkf9phR20Sv1u8WE0=;
        b=kpvt1xsJaHWrWPkNU7x2/8QJufbuk19COK0sOM3iVPqr5dxYzgviD4OByt/19klcM8
         VKOdZoVROJFNdFD7GKFqIwFA5OmZji2U2tnZ1TyqLrwix7wBhFkzb/ktTtmrRWeQI00k
         v8Oa9nEEJpbPnevIAryJtaouILzWnRkuOnVWsIyVsLgO8cmsFu2JrGiGN1hCHDDoJWDO
         W11Bb4YteKmlZgDr3TnMONVvlmc1TPMxMsa/MZG0DKicwWhHB/7Uo8za+nrHoU/+32J1
         5xnuytG7NUS4JafDVosnGPGLRctNs8MC1PC0qaGMGbytHfOZvp5qf7dF2IIty6UZZA6H
         86Tg==
X-Gm-Message-State: APjAAAXDqj9oEdrJIb6C3e7dbSFocNN1uqhcLj0YSgOBxzZIC00KxHPQ
	kMwEsz7NLA/WxZoV/Tc+vMKpgkUwzK8=
X-Received: by 2002:a62:8689:: with SMTP id x131mr12488275pfd.47.1572644929363;
        Fri, 01 Nov 2019 14:48:49 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id j14sm9233361pje.17.2019.11.01.14.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:48:48 -0700 (PDT)
Date: Fri, 1 Nov 2019 16:48:46 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8723bs: Fix multiple assignment warning
Message-ID: <1a3ef5aa15133e8fee802eaf330417695e28be9d.1572644627.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572644627.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572644627.git.jarias.linux@gmail.com>

This patch splits assignments into multiple lines to solve the
multiple assignment warning.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 24 +++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 6d193f137b7e..9a3790091a5e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -146,7 +146,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxmitbuf->phead = pxmitbuf->pbuf;
 		pxmitbuf->pend = pxmitbuf->pbuf + MAX_XMITBUF_SZ;
 		pxmitbuf->len = 0;
-		pxmitbuf->pdata = pxmitbuf->ptail = pxmitbuf->phead;
+		pxmitbuf->ptail = pxmitbuf->phead;
+		pxmitbuf->pdata = pxmitbuf->phead;
 
 		pxmitbuf->flags = XMIT_VO_QUEUE;
 
@@ -225,7 +226,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxmitbuf->phead = pxmitbuf->pbuf;
 		pxmitbuf->pend = pxmitbuf->pbuf + MAX_XMIT_EXTBUF_SZ;
 		pxmitbuf->len = 0;
-		pxmitbuf->pdata = pxmitbuf->ptail = pxmitbuf->phead;
+		pxmitbuf->ptail = pxmitbuf->phead;
+		pxmitbuf->pdata = pxmitbuf->phead;
 
 		list_add_tail(&pxmitbuf->list, &(pxmitpriv->free_xmit_extbuf_queue.queue));
 		#ifdef DBG_XMIT_BUF_EXT
@@ -255,7 +257,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 			pxmitbuf->phead = pxmitbuf->pbuf;
 			pxmitbuf->pend = pxmitbuf->pbuf + MAX_CMDBUF_SZ;
 			pxmitbuf->len = 0;
-			pxmitbuf->pdata = pxmitbuf->ptail = pxmitbuf->phead;
+			pxmitbuf->ptail = pxmitbuf->phead;
+			pxmitbuf->pdata = pxmitbuf->phead;
 			pxmitbuf->alloc_sz = MAX_CMDBUF_SZ+XMITBUF_ALIGN_SZ;
 		}
 	}
@@ -1366,11 +1369,13 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 	struct ieee80211_hdr	*pwlanhdr;
 	u8 MME[_MME_IE_LENGTH_];
 	u32 ori_len;
-	mem_start = pframe = (u8 *)(pxmitframe->buf_addr) + TXDESC_OFFSET;
+	pframe = (u8 *)(pxmitframe->buf_addr) + TXDESC_OFFSET;
+	mem_start = pframe;
 	pwlanhdr = (struct ieee80211_hdr *)pframe;
 
 	ori_len = BIP_AAD_SIZE+pattrib->pktlen;
-	tmp_buf = BIP_AAD = rtw_zmalloc(ori_len);
+	BIP_AAD = rtw_zmalloc(ori_len);
+	tmp_buf = BIP_AAD;
 	subtype = GetFrameSubType(pframe); /* bit(7)~bit(2) */
 
 	if (!BIP_AAD)
@@ -1623,7 +1628,8 @@ static struct xmit_buf *__rtw_alloc_cmd_xmitbuf(struct xmit_priv *pxmitpriv,
 		pxmitbuf->priv_data = NULL;
 
 		pxmitbuf->len = 0;
-		pxmitbuf->pdata = pxmitbuf->ptail = pxmitbuf->phead;
+		pxmitbuf->ptail = pxmitbuf->phead;
+		pxmitbuf->pdata = pxmitbuf->ptail;
 		pxmitbuf->agg_num = 0;
 		pxmitbuf->pg_num = 0;
 
@@ -1700,7 +1706,8 @@ struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 		pxmitbuf->priv_data = NULL;
 
 		pxmitbuf->len = 0;
-		pxmitbuf->pdata = pxmitbuf->ptail = pxmitbuf->phead;
+		pxmitbuf->ptail = pxmitbuf->phead;
+		pxmitbuf->pdata = pxmitbuf->ptail;
 		pxmitbuf->agg_num = 1;
 
 		if (pxmitbuf->sctx) {
@@ -1772,7 +1779,8 @@ struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 		pxmitbuf->priv_data = NULL;
 
 		pxmitbuf->len = 0;
-		pxmitbuf->pdata = pxmitbuf->ptail = pxmitbuf->phead;
+		pxmitbuf->ptail = pxmitbuf->phead;
+		pxmitbuf->pdata = pxmitbuf->ptail;
 		pxmitbuf->agg_num = 0;
 		pxmitbuf->pg_num = 0;
 
-- 
2.20.1



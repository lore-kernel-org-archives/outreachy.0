X-GM-THRID: 6754458440514404352
X-Received: by 2002:a17:902:6807:: with SMTP id h7mr6207481plk.288.1572644992733;
        Fri, 01 Nov 2019 14:49:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8a0d:: with SMTP id w13ls2019298pjn.4.gmail; Fri, 01
 Nov 2019 14:49:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqygoeoPRmKYtFszU/G0BcEmSlE8B7B1XJNrcKmIv20mJrMPX2366wkUdD5QWegQAphA2WWd
X-Received: by 2002:a17:90a:ad0c:: with SMTP id r12mr18063622pjq.1.1572644991752;
        Fri, 01 Nov 2019 14:49:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572644991; cv=none;
        d=google.com; s=arc-20160816;
        b=NUm/2DzekJ20JL5T6Myd9JcW3+oT3JyLdH8a2ht1oAOkaSBrvxiYWQh3fCsmpd6ESy
         8ohLAB+rO6nWiJ1Mb+iXQ382SI11tvfhY5pHDEfiXI4f8ianbv0HcrC3dMLuJ85WjD5k
         v4ZemhxXcuaBHXldtWDKSzVpa8xgzvOan2h0RxtJeUOKMPIHqsTpL3UPAnHJ+pgiGf0Y
         +xBw4eCcVtbk4prx7mc21qmwfpj/tBtChaqlMATSTf8KRH+A3ZZvH7KNNVyRcFHK+UjN
         G0VoMVA3tkFyHiXU7x33K38g2WyBYgepBwWeqQfSssz+OxCcjAjhA94MTOLEm6xbdcau
         vLGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=aIFTjptGWIW9a+fmZun+kzeUli10+cYXdYT26VOb+Hk=;
        b=RoyVF/hNssKsMMg5gH/RliCAOcxkcy6si4miGuO0KWzeDjxIDNM3+C4Yn/8kCqAxha
         SlyL5680TJAlbhGRXu42vlimxXwBR6oIhQ0BY2anCDUOejnOdSh0Jn7Rs2aKooufhIRL
         1UfP3dV6bEC1y53JIvtMlLyS1n2yph+edytBSNCTq4CbWY98lI3yzVKsZPzCxfPEe/YV
         UQ1T/TesFwlsLfYPzL19Zf5cFNo/YfIYMceBD88/c21kkEP5bvXqhVK9OHGhWmWj5rfl
         pHUq0kIx7bL5bsKzV9MsTXIyzz0ogxCXGC3trrViX7KCh3ayCSOhoXqzZHy5ZskklVGM
         l+KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gcD2aLBN;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x10si524968pfi.1.2019.11.01.14.49.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:49:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gcD2aLBN;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 193so6618605pfc.13
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=aIFTjptGWIW9a+fmZun+kzeUli10+cYXdYT26VOb+Hk=;
        b=gcD2aLBNB07blZQ6tJYEn+mh1p0d9FMAlr/OMsp0Qc8+OBP/c0+FW+nAZaarTkvKGQ
         jKWdDBaRunzELJTKWzU50AbMJcyB0D3D7oHFR2DyrqVAhKk4fSBn7dXuKRYBZBmmzluu
         Q0Tv7495li3903D+AyuhOtcuOTIa+0wEId+hKNjG7cl2cXlpIlO+qzQXE11ncJ3QTyrI
         Yuq8nNT853DZwnNBtAnnALIpyWi4bS1CyfwZ/NfbP13yY17W/1pq6J+BdJSOFcCI8UBF
         Z457oiUE32I/a3YPQmKcDcWusCiu+OpyLaInQEh7v8pH5K7esztpc/LYSjgvOhSSrYn6
         tQrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=aIFTjptGWIW9a+fmZun+kzeUli10+cYXdYT26VOb+Hk=;
        b=GJvEulmj2oyQvDKnq7kiH0TiPR3fLp+rhNt60yxsTHqjkQoa6EB35pVYsu6L1w5uHc
         67gE2n9Jpm9S6FQl/nKETfnoQqAujDNoDQMr6vPyy1RKxtUBcrHHAZg3cS3pKbZ3JeSJ
         qm47oN3N3cRhBo1wyc+6+/uFy8ykVbqFXU9SV3pA0UsdT8s+XIstoTHfqxnDMtc1028m
         QXYl1LWr+hKDj7w7g4PBlT3GfK1AuiAsQyUNEQsI1mTQ07S0Asxh8lRH4lipNW187XIG
         GgVGZUH7AGg+ZPcyqyTPv3pPmufoU42sxoZy8tCq9VR4uL/Xf6xu0TT5Nwp4TisIZ9iw
         vGcg==
X-Gm-Message-State: APjAAAU0lvcn4VrrpefcwRETbpXTd+sa/5RLLx4n0mBWvUusnZcjr12G
	sbnEwc5vCISWEdpfEVkhxiw=
X-Received: by 2002:a63:2ac9:: with SMTP id q192mr9042121pgq.351.1572644991501;
        Fri, 01 Nov 2019 14:49:51 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id d10sm7673253pfh.8.2019.11.01.14.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:49:51 -0700 (PDT)
Date: Fri, 1 Nov 2019 16:49:48 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: rtl8723bs: Fix lines over 80 characters
Message-ID: <fd3bb938753f132be512aa1d1836a36b06e22477.1572644627.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572644627.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572644627.git.jarias.linux@gmail.com>

This patch fixes lines over 80 characters by splitting function
arguments.
Issue found by Checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index d7eabee36716..f3744f0e6ab4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -99,7 +99,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxframe->buf_addr = NULL;
 		pxframe->pxmitbuf = NULL;
 
-		list_add_tail(&pxframe->list, &pxmitpriv->free_xmit_queue.queue);
+		list_add_tail(&pxframe->list,
+			      &pxmitpriv->free_xmit_queue.queue);
 
 		pxframe++;
 	}
@@ -151,7 +152,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 		pxmitbuf->flags = XMIT_VO_QUEUE;
 
-		list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmitbuf_queue.queue);
+		list_add_tail(&pxmitbuf->list,
+			      &pxmitpriv->free_xmitbuf_queue.queue);
 		#ifdef DBG_XMIT_BUF
 		pxmitbuf->no = i;
 		#endif
@@ -189,7 +191,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 		pxframe->ext_tag = 1;
 
-		list_add_tail(&pxframe->list, &pxmitpriv->free_xframe_ext_queue.queue);
+		list_add_tail(&pxframe->list,
+			      &pxmitpriv->free_xframe_ext_queue.queue);
 
 		pxframe++;
 	}
@@ -229,7 +232,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxmitbuf->ptail = pxmitbuf->phead;
 		pxmitbuf->pdata = pxmitbuf->phead;
 
-		list_add_tail(&pxmitbuf->list, &pxmitpriv->free_xmit_extbuf_queue.queue);
+		list_add_tail(&pxmitbuf->list,
+			      &pxmitpriv->free_xmit_extbuf_queue.queue);
 		#ifdef DBG_XMIT_BUF_EXT
 		pxmitbuf->no = i;
 		#endif
@@ -1414,7 +1418,9 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 		pmlmeext->mgnt_80211w_IPN++;
 
 		/* add MME IE with MIC all zero, MME string doesn't include element id and length */
-		pframe = rtw_set_ie(pframe, _MME_IE_, 16, MME, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, _MME_IE_,
+				    16, MME,
+				    &pattrib->pktlen);
 		pattrib->last_txcmdsz = pattrib->pktlen;
 		/*  total frame length - header length */
 		frame_body_len = pattrib->pktlen - sizeof(struct ieee80211_hdr_3addr);
@@ -1822,7 +1828,8 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 
 		list_del_init(&pxmitbuf->list);
 
-		list_add_tail(&pxmitbuf->list, get_list_head(pfree_xmitbuf_queue));
+		list_add_tail(&pxmitbuf->list,
+			      get_list_head(pfree_xmitbuf_queue));
 
 		pxmitpriv->free_xmitbuf_cnt++;
 		/* DBG_871X("FREE, free_xmitbuf_cnt =%d\n", pxmitpriv->free_xmitbuf_cnt); */
-- 
2.20.1



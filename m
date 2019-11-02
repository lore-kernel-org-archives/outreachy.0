X-GM-THRID: 6754458440514404352
X-Received: by 2002:a67:ea09:: with SMTP id g9mr9528316vso.23.1572734952380;
        Sat, 02 Nov 2019 15:49:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:614b:: with SMTP id w11ls489920uan.11.gmail; Sat, 02 Nov
 2019 15:49:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwjYJPvenbKRFUetwMF6As8/9eyCQcvb2ukndZ34BG+Fsh1ata6HgrBE+J7mWHTYMiD6AIl
X-Received: by 2002:ab0:3391:: with SMTP id y17mr8926393uap.5.1572734951253;
        Sat, 02 Nov 2019 15:49:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572734951; cv=none;
        d=google.com; s=arc-20160816;
        b=TrnEGfZbRWPmOpxA6aVy2RRJEVsAB8VIIZuZ8/qyrXQcgQUE1tHeSgjZjYWMM5zJjU
         KsS1UfrhO/xrYDTWW3lGJDg1AtbJx6Cd+LmxGNHoq/lok0EB9SI3/q6w3f4U4Bmxgwtn
         c47AeEXX9/S8bat5nlOv/RLL7A6dWZL2wFsb/u+OxYzfo/SBrHb+5UIBTO/1yv9mLDI8
         GSAKKuDrGkjOYQG6Ef2Kw0XCKRtg14HynmVPzZ4Rvj9y2mVM/qo09xnoLnlfCLdEGH4b
         8ufivmRm1SIFNHIKCblgIhkCuaEP/0t0b/n9k4Cpb/5AjCR5ljiihqikvuUW30uAMm8J
         ov9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dXizT5EKJnlRiyZAEViaDnoUOfHkf9phR20Sv1u8WE0=;
        b=tFdhEh6AgA0NkJja8I8GfSW9FGEYPvQvOIkBF12zccJe3mtJuK9Puavtvekp+/wMQ+
         OZlJRr0gFN1nvDPOq2rKYyB17HgU4Mg2ZoBXpTtcnN8wxPW6pLH1AgXI86eKENF55ilA
         D9Z3DAKqZWA8YwxJ0qP8Sz4rZODEacXQa920l2drKc3S8W/R9HPQ8kX6QXTKQuVL2FY0
         BC6fHhs3yRNJdkmRCVR8lWuazuHrlm7uvMNutOrtYOzkScDuwyZzKHCowOnsqq7CNn7q
         T0T4igf8C3Xr8kn1CQJZydeOh4+lR5QL3Crmc2iJWvajP4zNVfbzXm8QL8d7bhI6wVYA
         3ceQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uHxSYL6E;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id y14si671283uaa.0.2019.11.02.15.49.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 15:49:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uHxSYL6E;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk1-xa44.google.com with SMTP id r4so3003326vkf.9
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 15:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=dXizT5EKJnlRiyZAEViaDnoUOfHkf9phR20Sv1u8WE0=;
        b=uHxSYL6ErRNJI3doAqlzr6FjB86y/9lYu1N+wZYbG/KvhDgtBmRFLOXhIXQbxxvIM3
         5xfFE2Yo6mqfH8F2R80MJCWEjrDgSXhgKxt3IzA0mgoQCUhJTT2RaK+gMQi2bvW+/KJw
         OjK64lY3Z4Trbykd8I2gSYtlf3tWcnegO6xmbOwbqAaJZ7Rb476tVS8dLcbm+gYP17hx
         y85ve2EnNRUr26BljneexmvPjiGsWFCv+mLmr1hzkZIsTP3D94mCh+UQWE+NlSEfzDN+
         yrBHZx65jRZT0ANHxTegzQmg48aI+uV7DFqvOyEyp5G5IPQtMbcfE+v6ggXxS9pvDuXv
         qNLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=dXizT5EKJnlRiyZAEViaDnoUOfHkf9phR20Sv1u8WE0=;
        b=aB0pGZkPijverXY3Mjm0Ut9J0vN+cSPlNomaScXnv+x7mgzSgQdNAhbelqox+jOVs3
         ceqWVHLVHi2YSlN/Y8Y6NhMGlPcIl0OWw8g793sSARCfmFhZPlf8J3xPQbhf672iCEOu
         W1MgW7ZORTe0GAIa0dV+ynwb75/+uA44UD3EoNHV2S5L2aSY4r5r5HfXpNpOCBjoZTEu
         19o4W3fBtzJPOoEXauMFO0FGEFZv1p89gH4Tw582HUQGt1HHPCEo96AZ1SC3OqIBhuPL
         Jf6hgupa6GDTuV1NSlJ+9htz5FCjxMfU7M7PZhlFD7Z7ol8kXJhHMpZzFauKB3mkHaVg
         Oi3g==
X-Gm-Message-State: APjAAAUVpqZrhp4vGx4QDu43Sh4WW6HQGbJV1AVNpcZeg13GYc+5lJmE
	bp0rpCvNVeyew/hdGLbFdjQc83+w5nJYtA==
X-Received: by 2002:a1f:944a:: with SMTP id w71mr764962vkd.60.1572734951008;
        Sat, 02 Nov 2019 15:49:11 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-29-125.dynamic.etb.net.co. [190.27.29.125])
        by smtp.gmail.com with ESMTPSA id r4sm2995909vsg.13.2019.11.02.15.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 15:49:10 -0700 (PDT)
Date: Sat, 2 Nov 2019 17:49:08 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 1/3] staging: rtl8723bs: Fix multiple assignment
 warning
Message-ID: <a15c64188f02fa419e02ccc2161ebabc0e1b65db.1572734925.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

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



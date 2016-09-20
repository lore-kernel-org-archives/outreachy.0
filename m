X-GM-THRID: 6332339959638261760
X-Received: by 10.28.199.201 with SMTP id x192mr141478wmf.1.1474362788788;
        Tue, 20 Sep 2016 02:13:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.175.7 with SMTP id y7ls2252411wme.25.canary; Tue, 20 Sep
 2016 02:13:08 -0700 (PDT)
X-Received: by 10.28.168.12 with SMTP id r12mr143348wme.12.1474362788170;
        Tue, 20 Sep 2016 02:13:08 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id w79si1455320wmw.0.2016.09.20.02.13.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 02:13:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id 133so2282488wmq.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 02:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kW6dW4UyTiVEPDMu4+QpNpyCvAfMcf42Dh997sG8NTU=;
        b=N4lYHudOsFxSPLnj8dnWxKQ8yHLP57aysOE4XYBIAAsvHY9YQVLQmZ+G7TZ7E6SZOJ
         DzHWxZZlNJX9PW+BtxYmaAnGafD/oAVDD739+apkfyqyL/88t1FvrOIxz9fJ1Dtb+YCn
         ttsdfv0BZ3ZFkr8e5tOASrmNZB3vuQfYkrNdehjQWFp8G+8KteQ712GDAdzIxuChKLPi
         9gDbjVDU+iOEB0JnXM/SyKWSqjiiNoGkT9lAu6GkDFGf8xucFvIEi2R51a3yxkyV8v1L
         Z/nKkyKAmcNecidndttpUZAAK+z12Z87Uwd4+aTWKJdcGvSZLQ+xHY3+x7FZLPbL+0Ym
         3Zmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kW6dW4UyTiVEPDMu4+QpNpyCvAfMcf42Dh997sG8NTU=;
        b=i3a4Z0y9JpzAr8PcnX2/VfoJaUvAuqC5nUHs0+n8hbpuzHpmA82KF2mMf9M5kjJlJr
         vL+mBDhyJfBb2xB7IAaWhW1MIM0nify4d6RkrHdlVgTFgRLZx568S6cKZmSEHd3/nziu
         Qiql6FPez00oRhogI2gkZg8Mz6H4RlxzB//BNMGLDN738YTEvIc7Vsvhsua5v0QW6aqg
         cztZOtfHIAEIKV7J5lXZ2N6G9iGABoXFhNanpe7ofOsGVPEfrTXnphWe9snObmv/Pr4v
         /yOng8PeGvBIae1YFmW0vjTvJdCgKM3nXFy5bHDXbCxWx2llKb4pgNbFzqPOrP95fwbv
         ORPw==
X-Gm-Message-State: AE9vXwN+W3QPo+ONXZApTTySysk21YlqSx0Mee/zKD4PJeqgRYTqBDxc6vXvSpAyaVb+cw==
X-Received: by 10.194.116.197 with SMTP id jy5mr26504921wjb.11.1474362787971;
        Tue, 20 Sep 2016 02:13:07 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id a84sm26397099wme.6.2016.09.20.02.13.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 02:13:06 -0700 (PDT)
Date: Tue, 20 Sep 2016 12:13:06 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: core: rtw_xmit: Remove extra braces
Message-ID: <20160920091306.GA8473@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove the braces {} in the following cases:
- when there is a single branch with a single statement.
- when both branches have a single statement

The modifications improve the coding style.
Issues found by checkpatch.pl script.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index be7fe74..916e2b5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -142,9 +142,8 @@ s32	_rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		if (res == _FAIL) {
 			msleep(10);
 			res = rtw_os_xmit_resource_alloc(padapter, pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
-			if (res == _FAIL) {
+			if (res == _FAIL)
 				goto exit;
-			}
 		}
 
 		pxmitbuf->flags = XMIT_VO_QUEUE;
@@ -248,9 +247,8 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 		pxmitbuf++;
 	}
 
-	if (pxmitpriv->pallocated_xmit_extbuf) {
+	if (pxmitpriv->pallocated_xmit_extbuf)
 		vfree(pxmitpriv->pallocated_xmit_extbuf);
-	}
 
 	rtw_free_hwxmits(padapter);
 
@@ -781,11 +779,10 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 	if (pattrib->psta) {
 		psta = pattrib->psta;
 	} else {
-		if (bmcst) {
+		if (bmcst)
 			psta = rtw_get_bcmc_stainfo(padapter);
-		} else {
+		else
 			psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
-		}
 	}
 
 	memset(hdr, 0, WLANHDR_OFFSET);
@@ -1050,9 +1047,8 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 			mpdu_len -= llc_sz;
 		}
 
-		if ((pattrib->icv_len > 0) && (pattrib->bswenc)) {
+		if ((pattrib->icv_len > 0) && (pattrib->bswenc))
 			mpdu_len -= pattrib->icv_len;
-		}
 
 		if (bmcst) {
 			/*  don't do fragment to broadcat/multicast packets */
@@ -1556,11 +1552,10 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 	int res = _SUCCESS;
 
 
-	if (pattrib->psta) {
+	if (pattrib->psta)
 		psta = pattrib->psta;
-	} else {
+	else
 		psta = rtw_get_stainfo(pstapriv, pattrib->ra);
-	}
 
 	if (psta == NULL) {
 		res = _FAIL;
-- 
2.7.4



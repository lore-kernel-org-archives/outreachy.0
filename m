X-GM-THRID: 6758464167600979968
X-Received: by 2002:a62:447:: with SMTP id 68mr19603821pfe.70.1573577656763;
        Tue, 12 Nov 2019 08:54:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:cb98:: with SMTP id a24ls823023pju.4.canary-gmail;
 Tue, 12 Nov 2019 08:54:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqwM2nGdaFXL/w4yQg8u7+ZFhMKlFq0i8zyRupTMGIfHirlBdlA6xkRGQzaZGeDwaGzgWXAt
X-Received: by 2002:a17:90a:ca04:: with SMTP id x4mr7851390pjt.103.1573577655485;
        Tue, 12 Nov 2019 08:54:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573577655; cv=none;
        d=google.com; s=arc-20160816;
        b=OtEbcqFtj45tS/oh9X0y4zGDHmvOYW2pBUwbEv25fPz0QQV3AKkyLrdOrvOaQSHbpB
         EiL7yWKJdld+oUHfqgp7Lb28yfcCer+bniDDN23EwrffjbvH5Sg7M2zcXiIvTVDQQlxY
         wr8ItARNHBvbTgzfe8PUgu2KKOd4GwCvHGvDNe5fYa29m3ZASTG/X9hslzMB4kH4WIOQ
         Wf+DdTn6Sd/w36bbeeYnBfHqE2qx44Oh9aHY28s/OJHHZMn4IlStV6qFjytw0j78BUG3
         4F8vHhZ1LQFb6yrCxstXl9AgBbxBLNIZ0aaLOAwF9AGptGToYkJHX4GaNspQC4Befs9b
         S2mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=wG5UQ9vx6z43wtxl5hxyDe54J635a/DBHWdcC32k+Zo=;
        b=sccLd0F1jmiMFeEom70gOs02hi+Q1fpocWBma5+fBGkidHI9RGY22UhjibZyUeWbqY
         LmmrlmhrrJmp4v9sZxiDoCTLx/0ExLo4AJEbxsl2fdgTaFr+nlsb5/2gfRwWOcd/+BDU
         WNT9RZ9hrOfntzYpkgsMPvc7hGr52msGD8WafRawqExMn/e+uk1DmQ8fdH/popR2cqF3
         EVVr96ObRzYa8LFKG83H9tQglGd2+9r0G/4tg5BJZ1SzRvAzAmzBYCHj0u9d7t7vb23U
         7kpJwoO7VWZe7q1OCKTuxpnhzBmmW3pwY7JQwFqj6oN/d8f6zoSEa3Lyw9b4S7D/zUby
         c9Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X5E5kI4K;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id t71si86684pjb.2.2019.11.12.08.54.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 08:54:15 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X5E5kI4K;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id h15so15013272qka.13
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 08:54:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=wG5UQ9vx6z43wtxl5hxyDe54J635a/DBHWdcC32k+Zo=;
        b=X5E5kI4KhOJ73HWhDn4VfheiAw2kMsi4ydAcR/oRqNFcDFMIFh5QmTXUVPv09/R15D
         FtldyKmzmIrpv0LF0Qgpf5qxpHxMcO0BVGiaV6AyGciyO3EJ76jUrnxT5CMFh9h4jOz/
         RE2WcPPk7W2oDOv2HzedD8GM69syqOTA0vOK3oRlkiNDAbJBKkFRzZ4MrQgJ4FhqJide
         pari72IlUzIpfrhzQuMXYlQrn8T4/R2vkw2F2JmqsDKauNfVaHAhGPhSdG3AX5gAvP6N
         iYyitpuwYiwD4TOVuO82tFF7ScVA8kYtRzWCfjII/gbpDyadseO7G6dGYCgr9ptECXzd
         pFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=wG5UQ9vx6z43wtxl5hxyDe54J635a/DBHWdcC32k+Zo=;
        b=eW2eLwu4+R/T0qZ9euO6tnYDftmonWb7TubqBfX7ICiX/VnRALt4pEEJaJn5k3E8bj
         0LHLiSruBAvp6NY6QEVHCMzoi8DFWle/faiUzzxQz9e3vy67LXm45B3cva81RAlpg3Uk
         i01rXzovVq2RnKHRNmM3OQhraBeTnQEpd5fn9hh1SdGRgtLW6mWfQUXkoHUPWkGXhKPC
         xonLbQuAncs5Aj7svCKfj6BfV4CQaVFIWFpfhc1v/vYSlEp4lk8tk7ZtRaZbmLWYFFz4
         msG7hFpFc4mD0x1kmP3he2K72Vx9wH2K6Isr8Iv0aIJMbhuu+VPFFduF3APkg8F9goWQ
         ix+w==
X-Gm-Message-State: APjAAAXDxL88lgfb6YwyFPW4BQtnTsVJHqX4MDhlPv61i4756I3yzDNd
	GGPjdvsREeQ+eiuFhpTvjvbaNEFSF0I+eA==
X-Received: by 2002:a37:a387:: with SMTP id m129mr16272830qke.70.1573577654621;
        Tue, 12 Nov 2019 08:54:14 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-154-98-65.dynamic.etb.net.co. [186.154.98.65])
        by smtp.gmail.com with ESMTPSA id q34sm8145541qte.50.2019.11.12.08.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 08:54:14 -0800 (PST)
Date: Tue, 12 Nov 2019 11:54:11 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 4/9] staging: rtl8723bs: Remove unnecessary braces
Message-ID: <041503946a1c58111e69579838b184359745d8c1.1573577309.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1573577309.git.jarias.linux@gmail.com>

This patch removes unnecessary braces on single statement blocks or
that aren't necessary in any arm of the statement.
Issue found by Checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 33 +++++++++--------------
 1 file changed, 12 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 60e639690fc3..fdb585ff5925 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -253,9 +253,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		goto exit;
 	rtw_init_hwxmits(pxmitpriv->hwxmits, pxmitpriv->hwxmit_entry);
 
-	for (i = 0; i < 4; i++) {
+	for (i = 0; i < 4; i++)
 		pxmitpriv->wmm_para_seq[i] = i;
-	}
 
 	pxmitpriv->ack_tx = false;
 	mutex_init(&pxmitpriv->ack_tx_mutex);
@@ -316,9 +315,8 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 		pxmitbuf++;
 	}
 
-	if (pxmitpriv->pallocated_xmit_extbuf) {
+	if (pxmitpriv->pallocated_xmit_extbuf)
 		vfree(pxmitpriv->pallocated_xmit_extbuf);
-	}
 
 	for (i = 0; i < CMDBUF_MAX; i++) {
 		pxmitbuf = &pxmitpriv->pcmd_xmitbuf[i];
@@ -834,15 +832,13 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 			pframe = pxmitframe->buf_addr + hw_hdr_offset;
 
 			if (bmcst) {
-				if (!memcmp(psecuritypriv->dot118021XGrptxmickey[psecuritypriv->dot118021XGrpKeyid].skey, null_key, 16)) {
+				if (!memcmp(psecuritypriv->dot118021XGrptxmickey[psecuritypriv->dot118021XGrpKeyid].skey, null_key, 16))
 					return _FAIL;
-				}
 				/* start to calculate the mic code */
 				rtw_secmicsetkey(&micdata, psecuritypriv->dot118021XGrptxmickey[psecuritypriv->dot118021XGrpKeyid].skey);
 			} else {
-				if (!memcmp(&pattrib->dot11tkiptxmickey.skey[0], null_key, 16)) {
+				if (!memcmp(&pattrib->dot11tkiptxmickey.skey[0], null_key, 16))
 					return _FAIL;
-				}
 				/* start to calculate the mic code */
 				rtw_secmicsetkey(&micdata, &pattrib->dot11tkiptxmickey.skey[0]);
 			}
@@ -1180,9 +1176,8 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 			mpdu_len -= llc_sz;
 		}
 
-		if ((pattrib->icv_len > 0) && (pattrib->bswenc)) {
+		if ((pattrib->icv_len > 0) && (pattrib->bswenc))
 			mpdu_len -= pattrib->icv_len;
-		}
 
 		if (bmcst) {
 			/*  don't do fragment to broadcat/multicast packets */
@@ -1979,9 +1974,8 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 
 	ptxservq = rtw_get_sta_pending(padapter, psta, pattrib->priority, (u8 *)(&ac_index));
 
-	if (list_empty(&ptxservq->tx_pending)) {
+	if (list_empty(&ptxservq->tx_pending))
 		list_add_tail(&ptxservq->tx_pending, get_list_head(phwxmits[ac_index].sta_queue));
-	}
 
 	list_add_tail(&pxmitframe->list, get_list_head(&ptxservq->sta_pending));
 	ptxservq->qcnt++;
@@ -2043,9 +2037,8 @@ void rtw_init_hwxmits(struct hw_xmit *phwxmit, sint entry)
 {
 	sint i;
 
-	for (i = 0; i < entry; i++, phwxmit++) {
+	for (i = 0; i < entry; i++, phwxmit++)
 		phwxmit->accnt = 0;
-	}
 }
 
 u32 rtw_get_ff_hwaddr(struct xmit_frame *pxmitframe)
@@ -2253,11 +2246,10 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 			pstapriv->tim_bitmap |= BIT(0);
 			pstapriv->sta_dz_bitmap |= BIT(0);
 
-			if (update_tim) {
+			if (update_tim)
 				update_beacon(padapter, _TIM_IE_, NULL, true);
-			} else {
+			else
 				chk_bmc_sleepq_cmd(padapter);
-			}
 
 			ret = true;
 
@@ -2464,9 +2456,8 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	if (psta->sleepq_len == 0) {
-		if (pstapriv->tim_bitmap & BIT(psta->aid)) {
+		if (pstapriv->tim_bitmap & BIT(psta->aid))
 			update_mask = BIT(0);
-		}
 
 		pstapriv->tim_bitmap &= ~BIT(psta->aid);
 
@@ -2508,9 +2499,9 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 		}
 
 		if (psta_bmc->sleepq_len == 0) {
-			if (pstapriv->tim_bitmap & BIT(0)) {
+			if (pstapriv->tim_bitmap & BIT(0))
 				update_mask |= BIT(1);
-			}
+
 			pstapriv->tim_bitmap &= ~BIT(0);
 			pstapriv->sta_dz_bitmap &= ~BIT(0);
 		}
-- 
2.20.1



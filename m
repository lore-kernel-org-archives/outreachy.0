X-GM-THRID: 6945912104921595904
X-Received: by 2002:ae9:e513:: with SMTP id w19mr5220421qkf.231.1617221200882;
        Wed, 31 Mar 2021 13:06:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:3db:: with SMTP id r27ls1978869qkm.5.gmail; Wed, 31
 Mar 2021 13:06:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyDDaYaG36AwLNvijhiLRCsPB5EK4Dn8NwFaPYY+aJ9dRC6FukBxFaPj8usP7GFZPsTRpEp
X-Received: by 2002:a37:9a0b:: with SMTP id c11mr4904805qke.190.1617221200054;
        Wed, 31 Mar 2021 13:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617221200; cv=none;
        d=google.com; s=arc-20160816;
        b=pvgLnznfmjxTIpeoNnZw2XjqeKAndLHZZ3USN9kF9A18ILxDudWAGaoXWSEiSexdt0
         vGjJMHLXXBfwITID7TLESPo7qqRw30Vp+QaYGVdLgeBffJ33TDxnwX7fT6AGkD9UqAOv
         bbaCQ39y6qq/9+clNHLNuFHEvqbH6nNXGldpUNfgrMK4tLUKqmB90X6Qk/GTCv7DlNYm
         CNeuVdg2w5KD6iJofkQJd6VXDDVhSXGYNTuph7dMwBvhmS3dUJTJHNdoaHjCHJKxEym3
         wyjfVjPlOYlbUsEygPjOs8OA353QfTnoySr38vgjvKRUcDjfeC+m7xTmnWM02aUKTVEO
         Nf+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=k3BtLfKmoPsibyUgIOZU62iLipoHU12iPAWHYT8Z37Y=;
        b=P57IOTsg835NDNE3C40fyfaFsHyMfoLqi2kNOsOk3Ei4FVHjbpBsP7ze5Ogb9zt/di
         CPwCx+JRgYCnkOjs87+KzcPKxx/ap0BLC4q8ssNBLkxcrOciobFnXH9DVIHbS/MUhAee
         sTVXCmxZjNY9hNe4FSzMtk8f2BPWaHKXvVQzfjVdD1sYOM7AnrPS0s5aItv74PZQGN1b
         CP0a6SNZiu4W/Wy5b64mLjbuGRpwznhKnhiFc6KgzLaiIhk+Q1rFDiqlHLx6DfhcHqDC
         1mhM6X5PPmtmCM8GauF+91Lmv3vAJK0yvA00iDSY6TwqCUClS3A/GIWRCCp/TGJoLmcW
         H6fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bvjYxHv/";
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b2si492416qtq.5.2021.03.31.13.06.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 13:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bvjYxHv/";
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c204so15359566pfc.4
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Mar 2021 13:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=k3BtLfKmoPsibyUgIOZU62iLipoHU12iPAWHYT8Z37Y=;
        b=bvjYxHv/6etzeVjArSNWSn51LE0kU0Oga8xIzt22Z+CI8dMAmAgMgQqAFCn+S6O8D7
         dDGK20Nh/p5PCB9y3KVqn9t3TAzSviabgAEfg85I316bEXjBcpVAhLZmcGS33Ujnbwpa
         H6sZArdCEG7MDaA2c5zk4kBmFOQspr1r/52vCiBN+S7t2rYTXr7m/1GkVM7NyupBnCEp
         orOOkndb9Gz1cWJt1kVPKCrWsHmLc3kbOwJ4pdz7Ocd86ALfH0iXAa0PT0fcV3vKVibp
         s/C749x9MvF6s60cOxC4trWt4hRZFhS7cHtT5DWHRXT1DZ45IBeibDbSpq6csLPOYWGQ
         0OSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=k3BtLfKmoPsibyUgIOZU62iLipoHU12iPAWHYT8Z37Y=;
        b=CU7Kgg7m1oJUXRN5E0ynJklvqmlb3PCtrfs/xa5s3jtofGOMx0K/uDPhUzi174zt9Q
         BvamU9Ihhd7RCrUjyWpDjAJfmvdGy6oGxNB55BDOYUXA7mtC5eXyPhZDYTeOp6Hg2eYV
         blFP6gt9PXB4O3Z2csVprI6Ap+zlW94MhP58Ku1PBo2Vm14Cgzy5Us6GTNB/L6uO0qEj
         AxtJna6ouhrGri22XLDfdLZZd6Q7cx81kKaVOjLr6VzHpeqPyUSmNIOw2eCAbzRx4gnE
         mnZlCbX6Y/c5iKnL2k6kH5wOMVcGlIJQhrgOXsqrwn6KOEWQwyYTqm05yXJXqdvJ2ebG
         EF1A==
X-Gm-Message-State: AOAM531++3pyRXEtxMBhMqCDe5/AIHdIoWyw/W33Y9jDyEfaLcnyF2KB
	TGVh4bqdxyjI+WA9dqVcYG0=
X-Received: by 2002:aa7:9f90:0:b029:204:99fa:3374 with SMTP id z16-20020aa79f900000b029020499fa3374mr4470948pfr.11.1617221199294;
        Wed, 31 Mar 2021 13:06:39 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id d22sm2985668pjx.24.2021.03.31.13.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 13:06:39 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: gregkh@linuxfoundation.org,
	ross.schm.dev@gmail.com,
	marcocesati@gmail.com,
	fabioaiuto83@gmail.com,
	dan.carpenter@oracle.com,
	phil@philpotter.co.uk,
	amarjargal16@gmail.com
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH 2/3] staging: rtl8723bs: core: fix block comment warning
Date: Wed, 31 Mar 2021 13:05:36 -0700
Message-Id: <5ff15315036be9bdf2059bab2ddd00f7dce0d20a.1617221075.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617221075.git.deborahbrouwer3563@gmail.com>
References: <cover.1617221075.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617221075.git.deborahbrouwer3563@gmail.com>
References: <cover.1617221075.git.deborahbrouwer3563@gmail.com>

Fix checkpatch warning:
WARNING: Block comments use * on subsequent lines

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 59 +++++++++++------------
 1 file changed, 28 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 3878caf0b56c..428c71ce0334 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -46,8 +46,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	init_completion(&pxmitpriv->terminate_xmitthread_comp);
 
 	/*
-	Please insert all the queue initializaiton using _rtw_init_queue below
-	*/
+	 * Please insert all the queue initializaiton using _rtw_init_queue below
+	 */
 
 	pxmitpriv->adapter = padapter;
 
@@ -60,10 +60,10 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	_rtw_init_queue(&pxmitpriv->free_xmit_queue);
 
 	/*
-	Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
-	and initialize free_xmit_frame below.
-	Please also apply  free_txobj to link_up all the xmit_frames...
-	*/
+	 * Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
+	 * and initialize free_xmit_frame below.
+	 * Please also apply  free_txobj to link_up all the xmit_frames...
+	 */
 
 	pxmitpriv->pallocated_frame_buf = vzalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4);
 
@@ -1069,17 +1069,15 @@ u32 rtw_calculate_wlan_pkt_size_by_attribue(struct pkt_attrib *pattrib)
 }
 
 /*
-
-This sub-routine will perform all the following:
-
-1. remove 802.3 header.
-2. create wlan_header, based on the info in pxmitframe
-3. append sta's iv/ext-iv
-4. append LLC
-5. move frag chunk from pframe to pxmitframe->mem
-6. apply sw-encrypt, if necessary.
-
-*/
+ * This sub-routine will perform all the following:
+ *
+ * 1. remove 802.3 header.
+ * 2. create wlan_header, based on the info in pxmitframe
+ * 3. append sta's iv/ext-iv
+ * 4. append LLC
+ * 5. move frag chunk from pframe to pxmitframe->mem
+ * 6. apply sw-encrypt, if necessary.
+ */
 s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct xmit_frame *pxmitframe)
 {
 	struct pkt_file pktfile;
@@ -1693,23 +1691,22 @@ static void rtw_init_xmitframe(struct xmit_frame *pxframe)
 }
 
 /*
-Calling context:
-1. OS_TXENTRY
-2. RXENTRY (rx_thread or RX_ISR/RX_CallBack)
-
-If we turn on USE_RXTHREAD, then, no need for critical section.
-Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
-
-Must be very, very cautious...
-
-*/
+ * Calling context:
+ * 1. OS_TXENTRY
+ * 2. RXENTRY (rx_thread or RX_ISR/RX_CallBack)
+ *
+ * If we turn on USE_RXTHREAD, then, no need for critical section.
+ * Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
+ *
+ * Must be very, very cautious...
+ */
 struct xmit_frame *rtw_alloc_xmitframe(struct xmit_priv *pxmitpriv)/* _queue *pfree_xmit_queue) */
 {
 	/*
-		Please remember to use all the osdep_service api,
-		and lock/unlock or _enter/_exit critical to protect
-		pfree_xmit_queue
-	*/
+	 *	Please remember to use all the osdep_service api,
+	 *	and lock/unlock or _enter/_exit critical to protect
+	 *	pfree_xmit_queue
+	 */
 
 	struct xmit_frame *pxframe = NULL;
 	struct list_head *plist, *phead;
-- 
2.17.1



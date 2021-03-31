X-GM-THRID: 6945952502339600384
X-Received: by 2002:a25:5146:: with SMTP id f67mr7854545ybb.332.1617230619658;
        Wed, 31 Mar 2021 15:43:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:fc23:: with SMTP id v35ls1751535ybd.4.gmail; Wed, 31 Mar
 2021 15:43:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzjtvsRUZqkqFjEaSHhaG5w/sU5vXCzuqySlk0mmoU+5MvuA08eoV9mpsHin4DAlScRRs+R
X-Received: by 2002:a25:cb03:: with SMTP id b3mr7894987ybg.321.1617230618682;
        Wed, 31 Mar 2021 15:43:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617230618; cv=none;
        d=google.com; s=arc-20160816;
        b=eF6bFk4DET1TjlktclKJ4onrHSZEFfnTkjeGE2CoB0Y3ky1imHrO8DCsqe+YHTioEH
         3VrPuf3kp2sr2JKqSIgeHX5X6tcspssej2cwwsRw585iaBLk3TT5K31dUw82k2lfik2+
         7bEVeukcNA3+E7nVTQf+envaRkcbYEXc5BkI59Hfxy2X34Zhrrmz6WcPbqAO2SmSnItT
         Crv3kHHBioRX186S5MlpoeA9Np+V8B0vx+nL5dEB762zMQnhJxFVoHNcNTCHXbWBAPX8
         0/eCrZP+2AVyyoSuGBkjhWEAghTo/8oXrkJsc1phpn+Sk215goxW1+LL+TJvTJYPHWIw
         DCLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=6uGqFwYNsuJezqdNtnoCaZngsfZNhT7oD8syM6fdc0M=;
        b=KQNdES/ppVuEUKIwAlnOt9C7EoDWsD8ovZePlTXa1l0ln9lj+pR6yQy8+iv6nJa+98
         taEBJB9HvFDvvQtkCDHGq6jkEoW/sjGbUG8jwxHcghlXp6gie06TaBKI+V26yHtPmDLn
         nVf/UTzdopU4I3tySQaPSNyvJVOdbL/N3rpXb/D3Rl5Hix6y86oa/tV5+1BK60XsHLHr
         cWLlIVznyVwsv2a/sMQvfcuLkQiHZukob7ZF9FEKZvh9i2TrJ10uOn1SZzq4YzetRvYp
         OPDBxSEjYUI8LgyBWhEOSqiZTfBqhnF3Rbg1moVHlBFXbF8LMe8l5OSX3P0nb2pt3uuM
         iX9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JRRQiRS4;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id s192si72778ybc.1.2021.03.31.15.43.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 15:43:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JRRQiRS4;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id w10so321677pgh.5
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Mar 2021 15:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=6uGqFwYNsuJezqdNtnoCaZngsfZNhT7oD8syM6fdc0M=;
        b=JRRQiRS4O+tVLW16RXB507/VUpJJqzf4AUm0fjg7ZotsNHyNZPl2D4rrkcCz3OQ7Op
         UWmNEFeztLqUutnGhRU2W7SHAd9twUMiBL4pSJ3Ym26Adew8Gqf7QTDwvGWQKT1hYkK9
         nZamQtODqFL4svPzYEUm7C9BZblIXLYUDzGUpxZJ3uJHi2c3QxK5foCOBzBOset55Oc3
         ckOWwcF5Jn+2EHr/p9R5doqr5z2cMTBXv6YvFvfj91V3gpU8FUigyVB/L9pHZraSN3nD
         hmwP9TAIcWbGOgQmB+RA117ozESeKUs9DbXTzS/X58+bvv0eckrPDKQBmxCnb3lwPxxQ
         af1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=6uGqFwYNsuJezqdNtnoCaZngsfZNhT7oD8syM6fdc0M=;
        b=PDwNtqfe7hfKZgQJjBmjj6LfTQL+UAAf46Se+IAO8yULl9ghLwMgZOUqictfRs+M8a
         aRqSJMtQQ4lvqzf8mlgxw4pt++BaIjMFN5OY2V3lZPm95sa9IlXzAThgu9f1gA1dLyJP
         tnJjJBc/EoxfH1NdQOuWOiFk3XXLBcFL09+ABzmiSfSGhExHuaBHR9d45o7/BEiMzU40
         c4ySiok6Oz9Sgu+9Lbh+xTdz8MopiE54TqmUYfc5vXVAsXca/qmPlO4ui5InEFNMbeq/
         qqsb7gDvmowbG0VajGE251q1m94q7xEFLV3Ha7EPMYNRwYf0Rckw3a1c6gmYSSIRvluU
         ylYw==
X-Gm-Message-State: AOAM531gNDv00ANugMHfmzgLa3iKsFxuzU381mqmuQveP+IEYfVWlfLN
	AleUTTGR6UrZZjcdMv6+/7A=
X-Received: by 2002:aa7:8f04:0:b029:1f7:d71b:6a51 with SMTP id x4-20020aa78f040000b02901f7d71b6a51mr5007010pfr.4.1617230617958;
        Wed, 31 Mar 2021 15:43:37 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id h19sm3338830pfc.172.2021.03.31.15.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 15:43:37 -0700 (PDT)
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
Subject: [PATCH v2 2/3] staging: rtl8723bs: core: add * to block comments
Date: Wed, 31 Mar 2021 15:42:30 -0700
Message-Id: <bd143fff718849274b065a1c71f1aa7f6fc6f40f.1617229359.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617229359.git.deborahbrouwer3563@gmail.com>
References: <cover.1617229359.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617229359.git.deborahbrouwer3563@gmail.com>
References: <cover.1617229359.git.deborahbrouwer3563@gmail.com>

Add * at the beginning of each line in block comments to conform to the
Linux kernel coding style. Issue detected using checkpatch.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 58 +++++++++++------------
 1 file changed, 27 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 3878caf0b56c..cb8d19e4dd3c 100644
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
 
@@ -1069,17 +1069,14 @@ u32 rtw_calculate_wlan_pkt_size_by_attribue(struct pkt_attrib *pattrib)
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
@@ -1693,23 +1690,22 @@ static void rtw_init_xmitframe(struct xmit_frame *pxframe)
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



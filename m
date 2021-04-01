X-GM-THRID: 6946316684199198720
X-Received: by 2002:a37:842:: with SMTP id 63mr10864630qki.112.1617315390962;
        Thu, 01 Apr 2021 15:16:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:df0a:: with SMTP id g10ls1946985qvl.0.gmail; Thu, 01 Apr
 2021 15:16:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyN3gKC+Nt1FsMXbp1Bw2pxQt1l3pU/Uk0KP6rEZfbbOn8KicxsLZZLAPfDDKv5Wlw5KvWZ
X-Received: by 2002:ad4:5629:: with SMTP id cb9mr10410111qvb.62.1617315390060;
        Thu, 01 Apr 2021 15:16:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617315390; cv=none;
        d=google.com; s=arc-20160816;
        b=Plq2zQhs6FDQdKHJyv9faiSoqUAH95VhFGpasP8N4MMxuROhzvJYqbomr2vla7BE8r
         mtzp8/FQWE2TxrFhqzU28Hgi29IkBvmrOCXiX2OYyz+PZm16By55ACi2EEV1dImVTNMH
         9LVOJAC+9qgjqj9s7m+d6U/EbHFQU3HdllTSJOJkuS8FYFP7vNDlYgfXHo5J+tKzSgqs
         NzZxzDDyycRHn5m5gF3NkxrKvP4BZSjuC5reO2Mmkd54hKYRugcdECO6hXPprltdTZyX
         dul8jWsPDCkXgqDZCZ13EIJaS2Jf8vkXgMOvPgcbWNyIXu5M1STEtDLwdqxkolp+J8rR
         +69w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=20/XsB+4nOjyVNc3FO5kZBSjhLzmibdPtDV2QDGrEKY=;
        b=GQ76aJCmc/LzOdjfqtEt1i9DR9JhcHMi7HZ9fM4i9Z/KUZX3YkOE7qzkfmbjGhrqQH
         ZekK/049th8kj87wG0EWPIqjPM9E3oZshtfd7WOqI6Rgz6dv+6Y3KfXb0aWEJkJFttaz
         VrnSKvnN0qEVIxlsM2/nl27Q8DindpfKUOCWp3Je6bn8t25w87m2etiwdddm1QGAT1E3
         s8dViWiZVQvcTOOo6SyRoFqoiOi7QChJEjFQ2SgltCgWcB1TNAY1gc6I+HV3V7DvAb3J
         3lXgoSxq7y6Zk+VoZajqhsPHVuyMeIAK9WMiVwVFtnHvnxy5BckBaKchoWQKbT5BG2rp
         YzwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nyyidNBy;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a15si1078700qtn.4.2021.04.01.15.16.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 15:16:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nyyidNBy;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id v10so2430302pfn.5
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Apr 2021 15:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=20/XsB+4nOjyVNc3FO5kZBSjhLzmibdPtDV2QDGrEKY=;
        b=nyyidNBycRid3npH/SZFrDzLYulf0Qdo3b0lzm34Pqrj0FZjUv/r/Ln/QwjeYQhk5s
         hEG0Z2LzVUo1SXSjaNKV7r2wxdsbV0Qitap1EZ1J9NlAZRyMWLdR17+IzxnHDu4Et0/J
         qSSZauNWIRP1Q6/Vh1X5wASeWOikw55ZpiJmzjPK1DWhGEMTvultBRdRmq9q+rZyQX3P
         RdPy/S0YErFITH7yl7rlOknt+SJRn4Drs7rk0FdPR+WNXMWT29Jfr3XIsZxs3Qk74E18
         urly6ck0LH58BcqXsItZsh5xPxdXOVUrl7OiNfptLHeX2glm6Yj/S4nPO6GrDZqHmrGg
         AXwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=20/XsB+4nOjyVNc3FO5kZBSjhLzmibdPtDV2QDGrEKY=;
        b=IzviVU8k6/JBGQxK1FVjpavmZGHeOIZ8jWkvD4t9Zz7gsrhcPSnJBKdxI0VCmVWOEw
         t4SmN4lU4Gwu85JBzrD2pfvlsten7bu477jQmVWmfStDt28ASFUgRkYIq2tOGAskdfsM
         IZFcxm9yhKEkVK7lk+jMWqNgVXahKsfNtDlc6tKFLAZiSWYHWKwaui1VeMKqlXqDnGP2
         8QPVXfyQNcwBQpSA5AD8QriviAomYCyEkcEAW6v2zQogRna9pkXfyV+zFqCJEMd0Z81V
         mtnkBbWYsOlE1a3LyMCeQk2Q2WdhPQqeFF53BksHY1KiePXqc8eQX1dHAMehgnmDx1Ed
         d1tA==
X-Gm-Message-State: AOAM533YgGDV4NqDH/tC27wDZCl2wE/AnWZq6aQg0JvtCgefvDrT/TKK
	SVBnHLtHzOdWCUMP1s62y68=
X-Received: by 2002:a65:4243:: with SMTP id d3mr9648485pgq.180.1617315389461;
        Thu, 01 Apr 2021 15:16:29 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id d13sm6671494pgb.6.2021.04.01.15.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 15:16:29 -0700 (PDT)
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
Subject: [PATCH v3 2/3] staging: rtl8723bs: core: add * to block comments
Date: Thu,  1 Apr 2021 15:15:41 -0700
Message-Id: <09db7fd3bed9a0ce00289d686a4e8dea256082e5.1617314121.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617314121.git.deborahbrouwer3563@gmail.com>
References: <cover.1617314121.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617314121.git.deborahbrouwer3563@gmail.com>
References: <cover.1617314121.git.deborahbrouwer3563@gmail.com>

Add * at the beginning of each line in block comments to conform to the
Linux kernel coding style. Issue detected using checkpatch.

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



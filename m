X-GM-THRID: 6883539581978804224
X-Received: by 2002:a25:bbc4:: with SMTP id c4mr2671022ybk.178.1602731994457;
        Wed, 14 Oct 2020 20:19:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3583:: with SMTP id c125ls891348yba.2.gmail; Wed, 14 Oct
 2020 20:19:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwk3m3wsYSrkchz0b7AxW/h4/aVdZCgg6jWmSakPRfD+YCGF6zvB8oLPW2SiPmC5bGv9RAo
X-Received: by 2002:a25:2a8a:: with SMTP id q132mr2668772ybq.445.1602731992805;
        Wed, 14 Oct 2020 20:19:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602731992; cv=none;
        d=google.com; s=arc-20160816;
        b=NcZWX86f/WxPniJhg8NbqeMgFTVL6cS2bXUWtWHpGGFt6XcFg6ZgGZfSo1VlYa8/Zc
         WNz7ObEh1MJBd1Q9ejhmNDJs+g3m8PO+m1A/CdRVAB84vDoD3IHlcZ6X2EHxoNrKv+3V
         vVwWcsjyBXTzKXXQe83vfKY3DINrZ8g3XizypDCO2FqN0SDGMun49P0T994bp6odm1D5
         dTvdFd1+GBFlqbeHuqGBcN2Db6RYM/E8TA8vD7Owrbv3ONOOULac4+5qHDQqPGHXcVLb
         B4E/a4Woxz2rGyQcrknySgHPtAPivBk0GlJV+h5ZxnDowpmbDi7uogJmQ897qIOc1JNP
         Q9Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=PU7EffN4DlqIji39ZnWu4kCYUmWw8oZPtcvoWm3a1bU=;
        b=nMUrGy86TbL6QHTIEFf8NLoju0jXUqFbLoEPKWvltu+R9D2ZFDDKdJ1WCB2pAniLAA
         BNJ4Diwg74edRYJ0AQhB4ustjrhOMlhC2BCGtggmFk+dQSFiIx7gvAKvLvmTT4JcL0Zo
         Mn2ZrMSWgaZNa+Q5JgtUMcoz14IFxuoUZLAgMa1sJxsvu7QNY48Yv7afcWkbtiiwRKdX
         3X8iKMyUksTtTP12xoqHl7U8jFV4Shkv+QRs1x94fD49R+8NqvnpeiVg+QNVGumCSKZL
         WTqONPZWC8Ju21eVn8rECJcJ/iHwq8QK7sNAnJ3bVdUPRR5o+kZz0BAOIM4554fbC234
         RYDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q4HsigTs;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id e184si74558ybe.0.2020.10.14.20.19.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 20:19:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q4HsigTs;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id p3so669591pjd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2020 20:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=PU7EffN4DlqIji39ZnWu4kCYUmWw8oZPtcvoWm3a1bU=;
        b=Q4HsigTs92uZYYgFZbW/TXe+QBY8WbhvYRlnGmXbHO4+mV0pFCtlIr+RaYfygVcxej
         p6IOO/wpXPKuyzfif8Egu9noRbxJfOGAFb5sTJ7Yk5xDkkAcGoJNkPz8Ddw3fc5783uW
         6SWO6t6FW/kLi58T1j2Xgm5MoSZpGszEgD9N46yruM0DWXcgk+I5F5LLsfU7lI3AzNG0
         UAACVEX20KiYHhZNl4FO9KsZTirWg7WWq3A5VI+O3OkRUl+7Iog31K2szp0z2qP/TbAb
         qYu1aU0vaonIl9jE4CNmLwtu02LdpaWF03OOCeUguiG8Ba6TjzV448WkBZ+KCv+eR78v
         VN5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=PU7EffN4DlqIji39ZnWu4kCYUmWw8oZPtcvoWm3a1bU=;
        b=afXqYA9kPPYPZqlaAkw40Mw1NA78cdTdR3+7idSm4uEd1A1HVGrS5Vaxrlj2hKgrnA
         /3SbU8wKBHV6pWDoJQaw+WxeE72KhYEiCHY43sWySckgxVJoPpWsGZpJggfxHcaKqa7o
         X1klUEuIu6OlyQxVGNV6BXHRJKw1plEMCc2PjI2j1GfBmMZivcPa8dgmKGAtf7D/iMaA
         VdD7GR4JkFxT67DPIE6hgwjPoZq4AOfxT1s/ZOMALGC3kRSNFMnu2GFfm+Edo8bH+LU7
         KHDBEpNZErynOGe8oJlB0Iv4s50OkdQpoE6WzGyo+/bBaQ/KjYBN86Q6pQg9sE5Dqwqy
         OJ/w==
X-Gm-Message-State: AOAM530yyUCmtrpeuuAeW4h0x2wXZ7u81jYxfc425wqp920KTU08AKfw
	k6F90RPuG5oyXrCoIw04jEikAdifElB92w==
X-Received: by 2002:a17:902:fe0e:b029:d3:cbba:c8f1 with SMTP id g14-20020a170902fe0eb02900d3cbbac8f1mr1902485plj.21.1602731991816;
        Wed, 14 Oct 2020 20:19:51 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id h20sm1138856pfo.168.2020.10.14.20.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 20:19:51 -0700 (PDT)
Date: Thu, 15 Oct 2020 08:49:46 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, Manish Chopra <manishc@marvell.com>,
	GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: qlge: remove extra blank lines
Message-ID: <20201015031946.GA16455@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Remove unnecessary blank lines as per the coding style guidelines.
Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---
Changes since v1:
   - Correct typo in the patch description.

 drivers/staging/qlge/qlge_main.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index cb19cd35d0da..406374a5a431 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -756,7 +756,6 @@ static int ql_get_8012_flash_params(struct ql_adapter *qdev)
 				  "Error reading flash.\n");
 			goto exit;
 		}
-
 	}
 
 	status = ql_validate_flash(qdev,
@@ -1225,7 +1224,6 @@ static void ql_unmap_send(struct ql_adapter *qdev,
 						     maplen), DMA_TO_DEVICE);
 		}
 	}
-
 }
 
 /* Map the buffers for this transmit.  This will return
@@ -1339,7 +1337,6 @@ static int ql_map_send(struct ql_adapter *qdev,
 		dma_unmap_addr_set(&tx_ring_desc->map[map_idx], mapaddr, map);
 		dma_unmap_len_set(&tx_ring_desc->map[map_idx], maplen,
 				  skb_frag_size(frag));
-
 	}
 	/* Save the number of segments we've mapped. */
 	tx_ring_desc->map_cnt = map_idx;
@@ -2103,7 +2100,6 @@ static int ql_clean_outbound_rx_ring(struct rx_ring *rx_ring)
 	struct tx_ring *tx_ring;
 	/* While there are entries in the completion queue. */
 	while (prod != rx_ring->cnsmr_idx) {
-
 		netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 			     "cq_id = %d, prod = %d, cnsmr = %d\n",
 			     rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
@@ -2111,7 +2107,6 @@ static int ql_clean_outbound_rx_ring(struct rx_ring *rx_ring)
 		net_rsp = (struct ob_mac_iocb_rsp *)rx_ring->curr_entry;
 		rmb();
 		switch (net_rsp->opcode) {
-
 		case OPCODE_OB_MAC_TSO_IOCB:
 		case OPCODE_OB_MAC_IOCB:
 			ql_process_mac_tx_intr(qdev, net_rsp);
@@ -2150,7 +2145,6 @@ static int ql_clean_inbound_rx_ring(struct rx_ring *rx_ring, int budget)
 
 	/* While there are entries in the completion queue. */
 	while (prod != rx_ring->cnsmr_idx) {
-
 		netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 			     "cq_id = %d, prod = %d, cnsmr = %d\n",
 			     rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
@@ -2462,7 +2456,6 @@ static irqreturn_t qlge_isr(int irq, void *dev_id)
 
 static int ql_tso(struct sk_buff *skb, struct ob_mac_tso_iocb_req *mac_iocb_ptr)
 {
-
 	if (skb_is_gso(skb)) {
 		int err;
 		__be16 l3_proto = vlan_get_protocol(skb);
@@ -2869,7 +2862,6 @@ static void ql_free_rx_resources(struct ql_adapter *qdev,
 static int ql_alloc_rx_resources(struct ql_adapter *qdev,
 				 struct rx_ring *rx_ring)
 {
-
 	/*
 	 * Allocate the completion queue for this rx_ring.
 	 */
@@ -3798,7 +3790,6 @@ static int ql_wol(struct ql_adapter *qdev)
 
 static void ql_cancel_all_work_sync(struct ql_adapter *qdev)
 {
-
 	/* Don't kill the reset worker thread if we
 	 * are in the process of recovery.
 	 */
-- 
2.25.1



X-GM-THRID: 6809167002234519552
X-Received: by 2002:a92:bf06:: with SMTP id z6mr2886973ilh.141.1585382754397;
        Sat, 28 Mar 2020 01:05:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls2369855ioc.1.gmail; Sat, 28 Mar
 2020 01:05:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuvgALIy1FUHSi7paoG29oj1l7NNKBqctvyWM+u7r/3hN0u1CrCCPn1GgbEZ3m4BZ1lM2tG
X-Received: by 2002:a05:6602:2439:: with SMTP id g25mr2260319iob.142.1585382753117;
        Sat, 28 Mar 2020 01:05:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585382753; cv=none;
        d=google.com; s=arc-20160816;
        b=e+8DgkFeAAnxMLeZWXdJTcwNrTqZHF7Vo2T/G9ae+vMsj8WwHqpDXi3YdgW4f48poO
         Z4Gb/ErsC+rsLQc3EQzKKLhQ3gxbST+JDWEZlEzOVE0nxWqioMrnYsFwlb4xw70LXKkt
         HHcsqiKHbVRXIFoAauuMdnd7U356C1ZBO2EMJWjyaeose+o7E3q8VsG66Aazx1T+3Fkx
         jd8QeFcdBIbD6QkjLQeijk2diPUTlBt9ilppd/KifzuLA8MV4g3fgObL1t/4Dtor9LLA
         fQBIBUnsKMc2ACSb0DSik6JC9qnFfQoZJkhjnI7vqxhckMVxc5UkrazDKttcrf0gRD+A
         wSOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=+DXaC14pLiLz6PcV1ZBNKJZU3OBMtUWQtfAyF+6joaA=;
        b=RPBfsZQukUNrtPBjc9j5+IyUKfOfqYgZ8EpJYusOejk7aLMEVXILA6Tg9EZiZidnLv
         8nMYFCzoSyjbYp2sSKOIFzyK12d5dP9zpcsHFw59Vw4YapxCJMKrFuXxBYLC5fUAj7ZW
         RPNrQl1AXasxzrcaRUYYGWX+oZxEUmQ2KuBr0ARXPSuyIMMA47mWeNocnEVSX30ar5Dc
         gjnKKHpgcRg7Tmz7PLTQ/paZkTto2DOHBoJIoVgHoyzvqF7lYJIHvelX1XfQvpQe3/B/
         +OMclITKFcTflPvUXhgk6ZIE1fwnLjJlLFqAVDuqb5DVuA25gB6rCF6gD25bv/aH/zER
         F4jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="f9/FHmaM";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m8si612797ili.2.2020.03.28.01.05.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 01:05:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="f9/FHmaM";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id 142so5830285pgf.11
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 01:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+DXaC14pLiLz6PcV1ZBNKJZU3OBMtUWQtfAyF+6joaA=;
        b=f9/FHmaM/gzc1agjXCoIJmkC494sxU1WLdJeHxsykI7qg6CCIerowspBjMU76jM7lC
         f7bsVKsPhoG8ajtrXtaaJSHadtqMZFoJSZUVHAjZsxkkVRjupkA83FxrPkFdQO09bEgK
         zVLWUtQrQGt1UZxn76EI7SZg/7T2CLLO6CKNE1MCwdCQ4XoaYQSXXK3xghcD5FMfMmjL
         P5Ofk/wWzTcjGAfMwsmJW/rVLQsTqsfrC+rO8fRCnufyk3emy+rjZwxC30rOVygsunDK
         Zqo9rz3CvHgK4oaFyIYdDX4LI3DtCQJCTRdcwawJTCLNXRUqOOLjNffwhbQccUkgQk9K
         KbIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=+DXaC14pLiLz6PcV1ZBNKJZU3OBMtUWQtfAyF+6joaA=;
        b=L5lO5ldTukE6IWGFx3rx0pJgQ89plzMZJt55397UQ4a77RxZTlHrApaqjlJwAgGXQF
         Wx067zja6HCA0InVYCQ9p9mARReLaOhhxh1tWyqUecBgXQIuExvRolexYYF4mV1jdTA0
         reN2VSYsj5wAif1mG5ruXUD8OXUVOfSCVyHUaaPA0Y1baS5RJC0k+wOwSL46iakfpmhE
         BlhF2y96z4W18lIt8tIN6Ey4qlVHdx3qMHd9sL5uOptW5WQr4K8ZKIY3tbM1qK7hTfqj
         QIJTQ/dlrcdVJ5V+Oh/9XxQ7iDlRJYdKHHCa2OEfQiinp6GtEOutnkDX+OP1ry1bA88d
         xPMw==
X-Gm-Message-State: ANhLgQ1MlpNZRq9mByFXnPIigsm8GjwFYO8UO+YK6XS5aerqXIlegWdX
	3YjWXAdV/d7eY9nzaXn6U27ObesWc5Ev7g==
X-Received: by 2002:a63:5123:: with SMTP id f35mr3141216pgb.217.1585382752014;
        Sat, 28 Mar 2020 01:05:52 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.239.176])
        by smtp.googlemail.com with ESMTPSA id c207sm5671124pfb.47.2020.03.28.01.05.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 01:05:51 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH 2/3] staging: qlge: Remove extra blank lines
Date: Sat, 28 Mar 2020 13:32:53 +0530
Message-Id: <20200328080254.6692-3-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200328080254.6692-1-debsoumyajit100@gmail.com>
References: <20200328080254.6692-1-debsoumyajit100@gmail.com>

Remove unnecessary extra blank lines to impose Linux Kernel coding
style and adhere to it.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 36f8d2890f9a..fa697fe4fb77 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -771,7 +771,6 @@ static int ql_get_8012_flash_params(struct ql_adapter *qdev)
 				  "Error reading flash.\n");
 			goto exit;
 		}
-
 	}
 
 	status = ql_validate_flash(qdev,
@@ -1240,7 +1239,6 @@ static void ql_unmap_send(struct ql_adapter *qdev,
 						     maplen), PCI_DMA_TODEVICE);
 		}
 	}
-
 }
 
 /* Map the buffers for this transmit.  This will return
@@ -1354,7 +1352,6 @@ static int ql_map_send(struct ql_adapter *qdev,
 		dma_unmap_addr_set(&tx_ring_desc->map[map_idx], mapaddr, map);
 		dma_unmap_len_set(&tx_ring_desc->map[map_idx], maplen,
 				  skb_frag_size(frag));
-
 	}
 	/* Save the number of segments we've mapped. */
 	tx_ring_desc->map_cnt = map_idx;
@@ -2118,7 +2115,6 @@ static int ql_clean_outbound_rx_ring(struct rx_ring *rx_ring)
 	struct tx_ring *tx_ring;
 	/* While there are entries in the completion queue. */
 	while (prod != rx_ring->cnsmr_idx) {
-
 		netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 			     "cq_id = %d, prod = %d, cnsmr = %d\n",
 			     rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
@@ -2126,7 +2122,6 @@ static int ql_clean_outbound_rx_ring(struct rx_ring *rx_ring)
 		net_rsp = (struct ob_mac_iocb_rsp *)rx_ring->curr_entry;
 		rmb();
 		switch (net_rsp->opcode) {
-
 		case OPCODE_OB_MAC_TSO_IOCB:
 		case OPCODE_OB_MAC_IOCB:
 			ql_process_mac_tx_intr(qdev, net_rsp);
@@ -2165,7 +2160,6 @@ static int ql_clean_inbound_rx_ring(struct rx_ring *rx_ring, int budget)
 
 	/* While there are entries in the completion queue. */
 	while (prod != rx_ring->cnsmr_idx) {
-
 		netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 			     "cq_id = %d, prod = %d, cnsmr = %d\n",
 			     rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
@@ -2478,7 +2472,6 @@ static irqreturn_t qlge_isr(int irq, void *dev_id)
 
 static int ql_tso(struct sk_buff *skb, struct ob_mac_tso_iocb_req *mac_iocb_ptr)
 {
-
 	if (skb_is_gso(skb)) {
 		int err;
 		__be16 l3_proto = vlan_get_protocol(skb);
@@ -2885,7 +2878,6 @@ static void ql_free_rx_resources(struct ql_adapter *qdev,
 static int ql_alloc_rx_resources(struct ql_adapter *qdev,
 				 struct rx_ring *rx_ring)
 {
-
 	/*
 	 * Allocate the completion queue for this rx_ring.
 	 */
@@ -3814,7 +3806,6 @@ static int ql_wol(struct ql_adapter *qdev)
 
 static void ql_cancel_all_work_sync(struct ql_adapter *qdev)
 {
-
 	/* Don't kill the reset worker thread if we
 	 * are in the process of recovery.
 	 */
-- 
2.17.1



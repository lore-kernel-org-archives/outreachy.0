X-GM-THRID: 6755718813793124352
X-Received: by 2002:a9d:73cd:: with SMTP id m13mr2196638otk.145.1572940465453;
        Mon, 04 Nov 2019 23:54:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1e15:: with SMTP id s21ls1027856otr.5.gmail; Mon,
 04 Nov 2019 23:54:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqxo2FHiwByBgLhl2I4y+kys9ye3Nmpt+IiAVCAafSPsOUUSfx0XfBkdDGKW0TqqZbGVWVRk
X-Received: by 2002:a9d:5c8d:: with SMTP id a13mr22068222oti.94.1572940464723;
        Mon, 04 Nov 2019 23:54:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572940464; cv=none;
        d=google.com; s=arc-20160816;
        b=LdUA6NZzprqo9guQ/Spn0FLTRlraLKCsL+0ls/R9ACAxsgJMI+o718NKNq/6477ngc
         OcHVMYuBOMitvgXNkElC7XaE7i0ojw0HrHJ9pOvH4LBu46YDj9ZBtrOQkD4r/RiBYGNx
         ySbZSdY/Rlt6cqebOifsR4mNSTYccxxU8u6wd6vala7ytIoVj6Fm9gExlzqmcOiUEqTu
         x0pp30risjhahyiByF6yO36lWgUdiBhiA0GxBfVQ8e2+t3RK6dt07m2HvbkfDgMC59Jg
         T11ntT5M12MgVeiWmYWzbVTQDNlOc64hdYXDcIABLJNncuxySNqT3epPc1yvUhCtNdTT
         Xvxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=XI/H5bN7x2bVQYsyYDrUVyeZiVh98kMBIX+nfpV0AH4=;
        b=ZFSt02E6sEnRv00qhoYVic+stI+o7IRy6Yr1VvHytrBpSllmO0bewsrZEvrO+g4Qsr
         YoR5Pjx5Jny+2EaWU+F06VLdUm5Ecgp0Nv9G5DfJ1Io/YD4MX1xm30hcEzc410BOiGLU
         59ClgPIMQMOgMzttPAMoYAU1lUjw4Jn9sDkTv4RdSytbJaN9MVvz20riBdRgEs8IE2rK
         fNiVrdMqvoxleulBBv7aj+twNte9mwa7TNvLHjG+NjayEzvH+iB0O03a3CZLKawB6Ezm
         kMzdeLv7vXR7nmDoSGlchzxJZwW5do+mw5tPM7hKEv2c32KrRWjL86ONH0MliwI2lEPl
         iyig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bydFfkTu;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id e3si856982oti.0.2019.11.04.23.54.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 23:54:24 -0800 (PST)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bydFfkTu;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id a194so20283937qkg.10
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 23:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XI/H5bN7x2bVQYsyYDrUVyeZiVh98kMBIX+nfpV0AH4=;
        b=bydFfkTuV7boy7H8NgUot05j8vSFbbdiohkcPewyhpGAVWIk99YdFFtjgZ06u4Kb25
         h2c1+lGfVoULgMDmZaFGEsWk5rnCyG27ubnB89V36mO3UE92LDULlFq1lW9WMUL+BLBz
         hb5WESIuUVQ9F7tIYfeAdgW1w+Do9w9l4fap5ogajNRjcuZ6EaI5Wyl6MFSDblI78O9B
         Stt8gQ4FsGa49bN2KVkVEimKiR9xBNz7CexZEfIsB13OANrWvN+Jie1JhAQiNxTSzOAD
         Co7xVv0ZMxySHyGz195hOLMWxauj4rSwixv/MNOxnLVt3XLS/7OL89R5M5h0KhYDxtos
         mAiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XI/H5bN7x2bVQYsyYDrUVyeZiVh98kMBIX+nfpV0AH4=;
        b=nCTfMalig3aPZP7ROAfUsgJ6Vmtyt4CUAZ1BhLmJkSJGBq5GjmMJ5btvouJAlBjdhL
         bTuf+l8/ZBLe5BkinrDMCTurMf2R/ed0rz3PNhcARqhuJeDWurvifNe+NfRQ3FJmxa+8
         N6DBf9D8eKeeuiteGOYnNrC93yddU7Wpz8WlTQMG7rrZHEwFW0B2TBGqXlqmBFRLT+UY
         pwGzJxtAUr6d9rQSoDtA/CAXLaLESr/Exsh7c4MKQPxvTwi/mA0t5+tX+CFyXDR6By/o
         4IzzluOq2vz8PtHLB0Nef114hNq3f4XxqFxPybMqVpEJ77lWuls4WkMW86Lb0fAM3VHB
         rwbQ==
X-Gm-Message-State: APjAAAXe1GhGnKxjW5yQup6MzNTUkuaEqoTeQnA/huy7MOAqCf+qH9a1
	VIcKsD4TyWWbleMJia2EdkXK8hyHnpo=
X-Received: by 2002:a37:5b02:: with SMTP id p2mr735842qkb.419.1572940464080;
        Mon, 04 Nov 2019 23:54:24 -0800 (PST)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id f39sm10375820qtb.26.2019.11.04.23.54.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Nov 2019 23:54:23 -0800 (PST)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Manish Chopra <manishc@marvell.com>,
	GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH v2] staging: qlge: Avoid NULL comparison
Date: Mon,  4 Nov 2019 23:54:18 -0800
Message-Id: <1572940458-109252-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace NULL comparison with boolean negation. Issue found using checkpatch.pl

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
Changes in v2:
  - Make the commit message more clearer.

 drivers/staging/qlge/qlge_dbg.c  |  4 ++--
 drivers/staging/qlge/qlge_main.c | 18 +++++++++---------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 019b7e6..83f34ca 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1649,7 +1649,7 @@ void ql_dump_wqicb(struct wqicb *wqicb)
 
 void ql_dump_tx_ring(struct tx_ring *tx_ring)
 {
-	if (tx_ring == NULL)
+	if (!tx_ring)
 		return;
 	pr_err("===================== Dumping tx_ring %d ===============\n",
 	       tx_ring->wq_id);
@@ -1741,7 +1741,7 @@ static const char *qlge_rx_ring_type_name(struct rx_ring *rx_ring)
 
 void ql_dump_rx_ring(struct rx_ring *rx_ring)
 {
-	if (rx_ring == NULL)
+	if (!rx_ring)
 		return;
 	pr_err("===================== Dumping rx_ring %d ===============\n",
 	       rx_ring->cq_id);
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 6f6b4c0..6ad4515 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -1588,7 +1588,7 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
 	skb = sbq_desc->p.skb;
 	/* Allocate new_skb and copy */
 	new_skb = netdev_alloc_skb(qdev->ndev, length + NET_IP_ALIGN);
-	if (new_skb == NULL) {
+	if (!new_skb) {
 		rx_ring->rx_dropped++;
 		return;
 	}
@@ -1792,7 +1792,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 			 */
 			lbq_desc = ql_get_curr_lchunk(qdev, rx_ring);
 			skb = netdev_alloc_skb(qdev->ndev, length);
-			if (skb == NULL) {
+			if (!skb) {
 				netif_printk(qdev, probe, KERN_DEBUG, qdev->ndev,
 					     "No skb available, drop the packet.\n");
 				return NULL;
@@ -2663,7 +2663,7 @@ static int ql_alloc_shadow_space(struct ql_adapter *qdev)
 	qdev->rx_ring_shadow_reg_area =
 		pci_zalloc_consistent(qdev->pdev, PAGE_SIZE,
 				      &qdev->rx_ring_shadow_reg_dma);
-	if (qdev->rx_ring_shadow_reg_area == NULL) {
+	if (!qdev->rx_ring_shadow_reg_area) {
 		netif_err(qdev, ifup, qdev->ndev,
 			  "Allocation of RX shadow space failed.\n");
 		return -ENOMEM;
@@ -2672,7 +2672,7 @@ static int ql_alloc_shadow_space(struct ql_adapter *qdev)
 	qdev->tx_ring_shadow_reg_area =
 		pci_zalloc_consistent(qdev->pdev, PAGE_SIZE,
 				      &qdev->tx_ring_shadow_reg_dma);
-	if (qdev->tx_ring_shadow_reg_area == NULL) {
+	if (!qdev->tx_ring_shadow_reg_area) {
 		netif_err(qdev, ifup, qdev->ndev,
 			  "Allocation of TX shadow space failed.\n");
 		goto err_wqp_sh_area;
@@ -2724,14 +2724,14 @@ static int ql_alloc_tx_resources(struct ql_adapter *qdev,
 	    pci_alloc_consistent(qdev->pdev, tx_ring->wq_size,
 				 &tx_ring->wq_base_dma);
 
-	if ((tx_ring->wq_base == NULL) ||
+	if (!tx_ring->wq_base ||
 	    tx_ring->wq_base_dma & WQ_ADDR_ALIGN)
 		goto pci_alloc_err;
 
 	tx_ring->q =
 	    kmalloc_array(tx_ring->wq_len, sizeof(struct tx_ring_desc),
 			  GFP_KERNEL);
-	if (tx_ring->q == NULL)
+	if (!tx_ring->q)
 		goto err;
 
 	return 0;
@@ -2778,7 +2778,7 @@ static void ql_free_sbq_buffers(struct ql_adapter *qdev, struct rx_ring *rx_ring
 	for (i = 0; i < QLGE_BQ_LEN; i++) {
 		struct qlge_bq_desc *sbq_desc = &rx_ring->sbq.queue[i];
 
-		if (sbq_desc == NULL) {
+		if (!sbq_desc) {
 			netif_err(qdev, ifup, qdev->ndev,
 				  "sbq_desc %d is NULL.\n", i);
 			return;
@@ -2899,7 +2899,7 @@ static int ql_alloc_rx_resources(struct ql_adapter *qdev,
 	    pci_alloc_consistent(qdev->pdev, rx_ring->cq_size,
 				 &rx_ring->cq_base_dma);
 
-	if (rx_ring->cq_base == NULL) {
+	if (!rx_ring->cq_base) {
 		netif_err(qdev, ifup, qdev->ndev, "rx_ring alloc failed.\n");
 		return -ENOMEM;
 	}
@@ -4485,7 +4485,7 @@ static int ql_init_device(struct pci_dev *pdev, struct net_device *ndev,
 	if (qlge_mpi_coredump) {
 		qdev->mpi_coredump =
 			vmalloc(sizeof(struct ql_mpi_coredump));
-		if (qdev->mpi_coredump == NULL) {
+		if (!qdev->mpi_coredump) {
 			err = -ENOMEM;
 			goto err_out2;
 		}
-- 
2.7.4



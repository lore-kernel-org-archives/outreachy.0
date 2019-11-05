X-GM-THRID: 6755718813793124352
X-Received: by 2002:a17:902:8d83:: with SMTP id v3mr31468649plo.47.1572938359192;
        Mon, 04 Nov 2019 23:19:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:b30b:: with SMTP id d11ls583806pjr.1.gmail; Mon, 04
 Nov 2019 23:19:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqwoq6w94/TxTujIplaWSZDOxBJ2kOchdmiKes8lh8dg+3aYYbMIsRR7v5b/825bJDfsvVXU
X-Received: by 2002:a17:902:bd96:: with SMTP id q22mr32298755pls.169.1572938357796;
        Mon, 04 Nov 2019 23:19:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572938357; cv=none;
        d=google.com; s=arc-20160816;
        b=YyNPpc9HT90ErCjwk7UiGDpUURR+lBqC3yJy/XpaoAwIa8o/wOajenSN8IycFZBeZV
         XD5e0DDoVlD5nGafYwCRjKfqQiRuiS53P3sx2E1DqtGhBhUFu7ZIHjdGhRAl+J6eIlnO
         lt+fMhpA6Kga+UHE6sJsF8a/dGD+0UI4JHWyZnF7kJnpwlb2qS0j3lINtTs70w//T2f6
         +UnjivcdhFMq41uqrthzoMdR3sdjZNa7b+5K4fJWI4cU8i/J1+j86UEOgq9xzwvY08IU
         1BdtZwWaJ8mHAzYZJsgY3Lesbnx1veHHcgP4r9f7IbsECepkN7GZt0eXIBWjayeR9bKY
         Gaiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=sMj/O3vsYKdLoAKbAlzymS+DrLQGJHiF/JUqWDV83UU=;
        b=I1lvPNS4A3jvwLuKP2nSD2MZ3OvwJmbzAHVKS0Tk4QMJj5VduIiGB/xpwAxjcepI6s
         RShM1Pg1q0mZi7z0O25a2y5m5yS6EjpLJ7X6kV0cArXLQWBA/Hm9/YDzT/YEr7YVFVyd
         fqI7/taOLsMQ3AOCkLA8Uj7zN3NxuNLaXAXOFaLsA8dGWPsBEYfh7tWNRinY2fBk65vP
         dq83kbLF52lZCPBVTs0Y10pqKMts+KJyfKSItIyoErto5jiV+ItRSaeRypaiU9TEhC3A
         QL2bQ3LBzvD4M37ha+gNtIg69rWBsuscJaSwn514tQNJla51dAurBglnU9wFDmFmyvFP
         aYtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sajVXPdi;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id k6si165601pjp.2.2019.11.04.23.19.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 23:19:17 -0800 (PST)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sajVXPdi;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id y10so21215601qto.3
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 23:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=sMj/O3vsYKdLoAKbAlzymS+DrLQGJHiF/JUqWDV83UU=;
        b=sajVXPdi4WPal0ODl/x9lT/2YMfO9pikFuCB+5eoF2St5SFcJ1jereKKF6V/NbDreE
         nzMEM/h8z6OZI7i6EFoZH9NQrgHZRvx0UwVujIdkX2QrYsl4kIK7lo/fq720bFYHdJRa
         w6amHwQyF76UwXG/fZsQoyZDuGIcr8Prn5LvpbfZJua6mmCvDQ47VOatwbet7Rqhb9OP
         BViLL1O7QdtKlp+mzPHMAMaqMZ4zyU83iU9VTsr0KcVUEYa/jOAqtFZ3iC4PeNte+pfl
         u5wgtLWfmsgfSHbnzFHu6UdDZRhM6qhLzmKIxTB5W1wXaKt7ehUKLR7Pl56quE+CsTLe
         gPvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=sMj/O3vsYKdLoAKbAlzymS+DrLQGJHiF/JUqWDV83UU=;
        b=ar8aHT9l/65amgn9Smf7vgH0Ba5n8T0SRfokYEiSa2+OPM9AvmQ5EEV1zST4FVeS+4
         4rCeBhPW7jjmyhr1sFZjdNSryrcMW6uF8jxjhdr6Y/eFjAHsVhbvPzp5Qq8HmkxfrGSm
         reI05SMs7dLOO1pADYw4v0evn1LYCb1DnL4bO79ZS+H4f2nk3iTN52mh+LsXbP6tnBxk
         VODK0QNghG6q3ZA9M/fND/zxP73ByHLmmiWq3dGuGB9oQRs3gHWLlqsBENFJNgR+pHoI
         cPbkujciXNiA+MW7KjS7dYou+CHmkhpdns+YKeHCjDl4MKPpT+OQouIl7HmBYd0nDo2k
         CcFw==
X-Gm-Message-State: APjAAAXjuJwV2KdsjfxXn43jxPA1ozuZ5yowDHczuz+RQL3vieue1Pfg
	ck5LXKp7tmgifRjrufNcu3E=
X-Received: by 2002:ac8:661a:: with SMTP id c26mr13267496qtp.317.1572938356858;
        Mon, 04 Nov 2019 23:19:16 -0800 (PST)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id k29sm10639412qtu.70.2019.11.04.23.19.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Nov 2019 23:19:16 -0800 (PST)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Manish Chopra <manishc@marvell.com>,
	GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH] staging: qlge: Avoid NULL comparison
Date: Mon,  4 Nov 2019 23:19:11 -0800
Message-Id: <1572938351-108779-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove NULL comparison. Issue found using checkpatch.pl

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
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



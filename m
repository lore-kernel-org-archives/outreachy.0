X-GM-THRID: 6808207331881385984
X-Received: by 2002:a25:a281:: with SMTP id c1mr7108469ybi.327.1585159295447;
        Wed, 25 Mar 2020 11:01:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e00d:: with SMTP id x13ls1104195ybg.7.gmail; Wed, 25 Mar
 2020 11:01:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvnw+EgkSflLcm6a8F82H5dfdBJ3GaCL88yYkGptVMT1vjuSRG/Eh0CrZFYx2f6o5uaO+J9
X-Received: by 2002:a25:6c57:: with SMTP id h84mr7015964ybc.212.1585159293871;
        Wed, 25 Mar 2020 11:01:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585159293; cv=none;
        d=google.com; s=arc-20160816;
        b=ntPvcZcjZckAMTSJzea8kOj/+38lFNffHIt56R8/L29+DoUPKv8U0J/8i4tnfL9Ggo
         ojP6q/Re8gr6noedzcZ5h25z5nIDC2rmZW/v6H8kt0WsuTinFDEUf2i1fQpvZnvNOCNW
         kwuI3Ll66iJN63jRBHi/pxCf6uixnG0bxTHLv0A3XzS1U0cqDe6mc4/JJQkpSUPdPYZQ
         YDi58vG/oaFuzVijnExK1HJEqsEYeN7lqdDdZNNem+barft1Ks2XELclrCQHbaqsohin
         pNNlj5WymG06GWrxgFiF3PC1YoICcans90qWxDu7cfDFM4WwHAGdbxXaRyxgUm9G6UCQ
         2MzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=M7axWWorOqlkqzb4o5X4RAdTToEy7one/Y7/8+gsnI4=;
        b=Ea3loYd1h6ahLRr0NtXciMl2tm3qAwbirIkE2hcRDaquLk/EWqcqgFF/voCZeM4tsA
         tstrRj7ehEepD842hNSjPDWwqLxFq7g5J4hxayP6V5n8vo4MjSrh1qPq32B8YDyS000h
         X46hao4OxW+KLAjV+cLeq0p1izJFFkNCx1ZLpIXPl4bufJp9+jTS6tIihlJP8pwPU6nA
         ZpgRQFSeOMp+nQQF13V17yR9MIqeZOpQRB6Tckvj627hzPTk8cno7R2eCqefrXVJ4ExZ
         I/OSspHvyo1cD05xPIpHAP3egDd0jrJlC+cRnA3ulYOd/HvE7LkO1SdQ5L74CG5k2Q5h
         9yNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HKziPZmh;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l141si940340ybl.3.2020.03.25.11.01.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 11:01:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HKziPZmh;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id j29so1521294pgl.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 11:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=M7axWWorOqlkqzb4o5X4RAdTToEy7one/Y7/8+gsnI4=;
        b=HKziPZmh+O4/lwjJd29TrfW3MUI7kmy64leeoyV9i85cSWa/2Nfk0lJOZM5TGPHVbW
         0iKUONgESEMv+nTgtCzjVjYAyXujVWRl9AGa9kF38zxhoSJVqVtaMeM03W8iy5rn6T6E
         jGrHxs41aLlAwczVSh1Xq6jCCEbdgKbLGtv3NF2vz/q8SHa2RvJoJmajCmfjMD6zILZz
         R3t+89E6pJPC13zd7mC5rldVDc2BJrgefx8+Ac7+Hl8+9JZgkAvwHv8xvW4wHyNflYzK
         kyes63YR1d+X1zVs4KO/O5akRkvKMQLiKJMoKIpF8IULam1EgzymXpcGnEV64YPbTB5Q
         BXmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=M7axWWorOqlkqzb4o5X4RAdTToEy7one/Y7/8+gsnI4=;
        b=SdGjvXzyXpGYuBXS05eyIACBKcSrsKn2LTimErrdVvD1IbskfY4QwgzF96wvOH/89N
         zxBXUAFsREdZ+uFOEw9hW4zemaiAJBKk0gpFoQ4qISNswqbDEoyzEMjJTgJP979GgpuB
         d0S8EWdGxLmuGxrh0ua/C7tRbt96bpDiVAbXcUUf/qvz4B2EkrHBClYgbNBjqEUD20qL
         tKf/9rejRcNELgOL1w+9IT4OxX121EkaGM7u1JX4vaHNCgsNKL3Hi+Zx1A2dUUxNo+kz
         L1zL7N5Fumw546nisKfWfCqZDZUeEQ5mZPi8hbNpQECMiqjw5RPbo8E89KMiazLy1AH0
         3DDw==
X-Gm-Message-State: ANhLgQ2lsEP38Q3yUMWAxbPExAVv/HACRBO1dCwwHzwC0RwLbqEJKQv9
	wfgNp4Wc+7/tDXWhBm/KEAAcOajnEQJYpQ==
X-Received: by 2002:a62:83c3:: with SMTP id h186mr4705470pfe.4.1585159292239;
        Wed, 25 Mar 2020 11:01:32 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.243.143])
        by smtp.googlemail.com with ESMTPSA id mq6sm5409609pjb.38.2020.03.25.11.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 11:01:31 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH] staging: hp100: Properly indent the multiline comments.
Date: Wed, 25 Mar 2020 23:30:03 +0530
Message-Id: <20200325180003.46749-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Shift the end of multiline comments "*/" to the next line and align the
lines of the comments properly to improve code readability and to adhere
to the Linux Kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index c743eb51da38..cd80076eba7d 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -689,13 +689,15 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 
 	/* TODO: We do not need this with old cards, where PDLs are stored
 	 * in the cards shared memory area. But currently, busmaster has been
-	 * implemented/tested only with the lassen chip anyway... */
+	 * implemented/tested only with the lassen chip anyway...
+	 */
 	if (lp->mode == 1) {	/* busmaster */
 		dma_addr_t page_baddr;
 		/* Get physically continuous memory for TX & RX PDLs    */
 		/* Conversion to new PCI API :
 		 * Pages are always aligned and zeroed, no need to it ourself.
-		 * Doc says should be OK for EISA bus as well - Jean II */
+		 * Doc says should be OK for EISA bus as well - Jean II
+		 */
 		lp->page_vaddr_algn = pci_alloc_consistent(lp->pci_dev, MAX_RINGSIZE, &page_baddr);
 		if (!lp->page_vaddr_algn) {
 			err = -ENOMEM;
@@ -853,7 +855,8 @@ static void hp100_hwinit(struct net_device *dev)
 
 	/* Until here it was code from HWdiscover procedure. */
 	/* Next comes code from mmuinit procedure of SCO BM driver which is
-	 * called from HWconfigure in the SCO driver.  */
+	 * called from HWconfigure in the SCO driver.
+	 */
 
 	/* Initialise MMU, eventually switch on Busmaster Mode, initialise
 	 * multicast filter...
@@ -1247,7 +1250,8 @@ static int hp100_build_rx_pdl(hp100_ring_t *ringptr,
 
 	/* Allocate skb buffer of maximum size */
 	/* Note: This depends on the alloc_skb functions allocating more
-	 * space than requested, i.e. aligning to 16bytes */
+	 * space than requested, i.e. aligning to 16bytes
+	 */
 
 	ringptr->skb = netdev_alloc_skb(dev, roundup(MAX_ETHER_SIZE + 2, 4));
 
@@ -1276,7 +1280,8 @@ static int hp100_build_rx_pdl(hp100_ring_t *ringptr,
 #endif
 
 		/* Conversion to new PCI API : map skbuf data to PCI bus.
-		 * Doc says it's OK for EISA as well - Jean II */
+		 * Doc says it's OK for EISA as well - Jean II
+		 */
 		ringptr->pdl[0] = 0x00020000;	/* Write PDH */
 		ringptr->pdl[3] = pdl_map_data(netdev_priv(dev),
 					       ringptr->skb->data);
@@ -1329,7 +1334,7 @@ static void hp100_rxfill(struct net_device *dev)
 
 	while (lp->rxrcommit < MAX_RX_PDL) {
 		/*
-		   ** Attempt to get a buffer and build a Rx PDL.
+		 * Attempt to get a buffer and build a Rx PDL.
 		 */
 		ringptr = lp->rxrtail;
 		if (0 == hp100_build_rx_pdl(ringptr, dev)) {
@@ -1549,7 +1554,8 @@ static netdev_tx_t hp100_start_xmit_bm(struct sk_buff *skb,
 		ringptr->pdl[2] = skb->len;	/* 1st Frag: Length of frag */
 	}
 	/* Conversion to new PCI API : map skbuf data to PCI bus.
-	 * Doc says it's OK for EISA as well - Jean II */
+	 * Doc says it's OK for EISA as well - Jean II
+	 */
 	ringptr->pdl[1] = ((u32) pci_map_single(lp->pci_dev, skb->data, ringptr->pdl[2], PCI_DMA_TODEVICE));	/* 1st Frag: Adr. of data */
 
 	/* Hand this PDL to the card. */
@@ -1690,7 +1696,8 @@ static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
 	hp100_ints_off();
 	val = hp100_inw(IRQ_STATUS);
 	/* Ack / clear the interrupt TX_COMPLETE interrupt - this interrupt is set
-	 * when the current packet being transmitted on the wire is completed. */
+	 * when the current packet being transmitted on the wire is completed.
+	 */
 	hp100_outw(HP100_TX_COMPLETE, IRQ_STATUS);
 #ifdef HP100_DEBUG_TX
 	printk("hp100: %s: start_xmit: irq_status=0x%.4x, irqmask=0x%.4x, len=%d\n",
@@ -1866,7 +1873,8 @@ static void hp100_rx_bm(struct net_device *dev)
 		return;
 	} else
 		/* RX_PKT_CNT states how many PDLs are currently formatted and available to
-		 * the cards BM engine */
+		 * the cards BM engine
+		 */
 	if ((hp100_inw(RX_PKT_CNT) & 0x00ff) >= lp->rxrcommit) {
 		printk("hp100: %s: More packets received than committed? RX_PKT_CNT=0x%x, commit=0x%x\n",
 				     dev->name, hp100_inw(RX_PKT_CNT) & 0x00ff,
@@ -2351,7 +2359,8 @@ static void hp100_start_interface(struct net_device *dev)
 	}
 
 	/* Note : before hp100_set_multicast_list(), because it will play with
-	 * spinlock itself... Jean II */
+	 * spinlock itself... Jean II
+	 */
 	spin_unlock_irqrestore(&lp->lock, flags);
 
 	/* Enable MAC Tx and RX, set MAC modes, ... */
-- 
2.17.1



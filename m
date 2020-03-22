X-GM-THRID: 6807094235989278720
X-Received: by 2002:a62:55c2:: with SMTP id j185mr7313231pfb.318.1584900132073;
        Sun, 22 Mar 2020 11:02:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:82c9:: with SMTP id u9ls6908570plz.3.gmail; Sun, 22
 Mar 2020 11:02:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtO0l7vE6xwkPoA9j4jP8UzC65xoocj0b02V0MK084GZAOuoMV7YqnpVCFan4zJkCe/1hnh
X-Received: by 2002:a17:90b:4906:: with SMTP id kr6mr2974720pjb.13.1584900129795;
        Sun, 22 Mar 2020 11:02:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584900129; cv=none;
        d=google.com; s=arc-20160816;
        b=Ltr68Xxjv4sUJf7HqDsRHFifNQ+1rxcYpmm5TpMZz7AAo8T4wFoXZHChPAgCyq78py
         Bz5ghKVjwmSLwfDWozrOh0U1n8KF3lFDMWyYHUmFf2mc7+C80ubjU+W3JmCQMaq8luPH
         pzFqIdvX3Y1XvKzK28dePACuVYaqaP6HPE0egquZmDWzxyBEslKzK0iRwCoqR9p7/QOV
         NgE4tiqwdoDNFEGz4XEt0Z1Ud8T3fKvCbaUyPcZQDsqM60rEHX/E4pfDsannjNHyzyxp
         tAeJa9KxDBMhJ2pmMWeLKlld1Ge5+copH3lk2G3rDNddfakXp10TuGL8TltEoPR6tDH7
         fxeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=kdTIsbm0bgYcf0aJ9toEqrEj7S93UTEaxqW9l4D9Pa0=;
        b=YQ281ffPtUCvncpP/zheesICGBbW/OIHCTL4hRPouaZdIAb4vGVXn0oMltgbMDy/JK
         dGHW9iBqvz8ijvw73nLUNxyI+VSRLifoPXPTyPR5bRK+Ax00F7ATwxf4WZJnTaLhTjxu
         /RD0xJ9h8xcblbTsN2bS+AYVCItQfLpdBBmEtKAP1hUBVI8wjPofhyw9UFYITOXYTxEu
         r3TjdOM3JPhekxvLmOUGgKyxUlq7qJ2QUbkw6E4F0eI2nL2cfB+7zucG7azWj6pahTE3
         aMMybqdOPOKnaH1RH4iPl2tS6x8hiT560Ao0NmxRi8sxRk/6NPiV2GJs6VTqUMlu5QCA
         XANA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MPig1hnN;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j14si642639pgg.1.2020.03.22.11.02.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 11:02:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MPig1hnN;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id l184so6290147pfl.7
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 11:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kdTIsbm0bgYcf0aJ9toEqrEj7S93UTEaxqW9l4D9Pa0=;
        b=MPig1hnNCxYqGo+B4LI8pYafLThru1NsHBOwLroIm+oTEKKKN8nUR57EEJVJguLcMY
         aETJO+TAFl4nLe6DB5Ry3wLoMdnEkIoVBxMqJRBHlB3LKIgRtADRLKpjv2iOkteA/juG
         sOwjW2bZ7jK/Sv/J+XrWb0K/K2BXA3Z6creeFEZ5NvDgcknuoy42InFSa4BzfhcJxqto
         GkT9LBZ28mYVBFh9TwNe77B1bXI496PKW5B+dFhs4pkqSE9+nIzaj219l4w8KdKnCJZv
         0yhIJqlMbec0GvksPHFmcdSsWp6kVqc+5nBEomx17cMjaZGNoSE7rq+15MSHn/X9VkMj
         pzmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kdTIsbm0bgYcf0aJ9toEqrEj7S93UTEaxqW9l4D9Pa0=;
        b=OiwAWPz8TITx9L+wZDz6nKoZfEiNNjW3EEY9NT2tFvVBY8OaAIYT0ast6BCo1qiRI0
         Jmj7KPgkkITRBAELpbglL9TAY0obgu6eIPPw6R7+WRF3+BBv7awHXKuYyeFgT6AVLQ4e
         6RSW79INCoTikZK72OcviQ/iOJnAKtd2P/nibZSCTdKsCIOSdRvobNldLmOeApjxRW2A
         JGJUOXFQ2XcCNkiE4a+lOdudziXb+s88ghVb8EGGbg7O6kDwLgInM2RqgdsI0rs2/aEt
         fkMpnBoUIsHvt0hCbUuCUXoR4s21AVBzPGPLNhQgh/8UkTOBuzHUaog8NKic942HuzXl
         FaVg==
X-Gm-Message-State: ANhLgQ1q+TckPNKTaG2feJ6svRbnjYkvx9SVM2HeuqNRaa1EsIdb1dlI
	0YMvrwXIzcEp9eOw5R7NYDmdv/EXc+Kufg==
X-Received: by 2002:a63:348b:: with SMTP id b133mr18661704pga.372.1584900128951;
        Sun, 22 Mar 2020 11:02:08 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([47.29.177.68])
        by smtp.gmail.com with ESMTPSA id c126sm11078873pfb.83.2020.03.22.11.02.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 11:02:07 -0700 (PDT)
Date: Sun, 22 Mar 2020 23:32:01 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, perex@perex.cz
Subject: [PATCH] staging: hp100: Remove uneccessary blank lines and resolve
 indentation issues
Message-ID: <20200322180154.GA37392@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove uneccessary blank lines which are flagged by checkpatch.pl as
warning. Remove space between function name and "(" .Add space after ","
and remove space between "(" and next character in the if statement.
Reported by checkpatch.pl
Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 49 ++++++++++++++++----------------------
 1 file changed, 20 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 2cf1104cd2dd..fe76d53b1675 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -220,7 +220,6 @@ module_param(hp100_mode, int, 0);
 static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 			struct pci_dev *pci_dev);
 
-
 static int hp100_open(struct net_device *dev);
 static int hp100_close(struct net_device *dev);
 static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
@@ -297,7 +296,7 @@ static const char *hp100_read_id(int ioaddr)
 	int i;
 	static char str[HP100_SIG_LEN];
 	unsigned char sig[4], sum;
-        unsigned short rev;
+	unsigned short rev;
 
 	hp100_page(ID_MAC_ADDR);
 	sum = 0;
@@ -346,8 +345,8 @@ static __init int hp100_isa_probe1(struct net_device *dev, int ioaddr)
 	return hp100_probe1(dev, ioaddr, HP100_BUS_ISA, NULL);
  err:
 	return -ENODEV;
-
 }
+
 /*
  * Probe for ISA board.
  * EISA and PCI are handled by device infrastructure.
@@ -555,8 +554,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 			 * can map the full 32bit address space.
 			 * Also, we can have EISA Busmaster cards (not tested),
 			 * so beware !!! - Jean II */
-			if((bus == HP100_BUS_PCI) &&
-			   (pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32)))) {
+			if ((bus == HP100_BUS_PCI) &&
+			    (pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32)))) {
 				/* Gracefully fallback to shared memory */
 				goto busmasterfail;
 			}
@@ -603,7 +602,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 		if (local_mode != 1) {	/* = not busmaster */
 			/* We try with smaller memory sizes, if ioremap fails */
 			for (virt_memory_size = memory_size; virt_memory_size > 16383; virt_memory_size >>= 1) {
-				if ((mem_ptr_virt = ioremap((u_long) mem_ptr_phys, virt_memory_size)) == NULL) {
+				if ((mem_ptr_virt = ioremap((u_long)mem_ptr_phys, virt_memory_size)) == NULL) {
 #ifdef HP100_DEBUG
 					printk("hp100: %s: ioremap for 0x%x bytes high PCI memory at 0x%lx failed\n", dev->name, virt_memory_size, mem_ptr_phys);
 #endif
@@ -871,14 +870,13 @@ static void hp100_hwinit(struct net_device *dev)
 	/* Finally try to log in the Hub if there may be a VG connection. */
 	if ((lp->lan_type == HP100_LAN_100) || (lp->lan_type == HP100_LAN_ERR))
 		hp100_login_to_vg_hub(dev, 0);	/* relogin */
-
 }
 
-
 /*
  * mmuinit - Reinitialise Cascade MMU and MAC settings.
  * Note: Must already be in reset and leaves card in reset.
  */
+
 static void hp100_mmuinit(struct net_device *dev)
 {
 	int ioaddr = dev->base_addr;
@@ -1127,10 +1125,10 @@ static int hp100_close(struct net_device *dev)
 	return 0;
 }
 
-
 /*
  * Configure the PDL Rx rings and LAN
  */
+
 static void hp100_init_pdls(struct net_device *dev)
 {
 	struct hp100_private *lp = netdev_priv(dev);
@@ -1209,7 +1207,6 @@ static int hp100_init_rxpdl(struct net_device *dev,
 	return roundup(MAX_RX_FRAG * 2 + 2, 4);
 }
 
-
 static int hp100_init_txpdl(struct net_device *dev,
 			    register hp100_ring_t * ringptr,
 			    register u32 * pdlptr)
@@ -1568,7 +1565,6 @@ static netdev_tx_t hp100_start_xmit_bm(struct sk_buff *skb,
 	return NETDEV_TX_OK;
 }
 
-
 /* clean_txring checks if packets have been sent by the card by reading
  * the TX_PDL register from the performance page and comparing it to the
  * number of committed packets. It then frees the skb's of the packets that
@@ -1576,6 +1572,7 @@ static netdev_tx_t hp100_start_xmit_bm(struct sk_buff *skb,
  *
  * Needs the PERFORMANCE page selected.
  */
+
 static void hp100_clean_txring(struct net_device *dev)
 {
 	struct hp100_private *lp = netdev_priv(dev);
@@ -1732,10 +1729,8 @@ static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
 drop:
 	dev_kfree_skb(skb);
 	return NETDEV_TX_OK;
-
 }
 
-
 /*
  * Receive Function (Non-Busmaster mode)
  * Called when an "Receive Packet" interrupt occurs, i.e. the receive
@@ -1803,7 +1798,7 @@ static void hp100_rx(struct net_device *dev)
 
 			u_char *ptr;
 
-			skb_reserve(skb,2);
+			skb_reserve(skb, 2);
 
 			/* ptr to start of the sk_buff data area */
 			skb_put(skb, pkt_len);
@@ -1811,7 +1806,7 @@ static void hp100_rx(struct net_device *dev)
 
 			/* Now transfer the data from the card into that area */
 			if (lp->mode == 2)
-				memcpy_fromio(ptr, lp->mem_ptr_virt,pkt_len);
+				memcpy_fromio(ptr, lp->mem_ptr_virt, pkt_len);
 			else	/* io mapped */
 				insl(ioaddr + HP100_REG_DATA32, ptr, pkt_len >> 2);
 
@@ -1946,13 +1941,13 @@ static void hp100_rx_bm(struct net_device *dev)
 			hp100_outl((u32) lp->rxrtail->pdl_paddr, RX_PDA);
 			lp->rxrtail = lp->rxrtail->next;
 		}
-
 	}
 }
 
 /*
  *  statistics
  */
+
 static struct net_device_stats *hp100_get_stats(struct net_device *dev)
 {
 	unsigned long flags;
@@ -2030,7 +2025,6 @@ static void hp100_clear_stats(struct hp100_private *lp, int ioaddr)
 	spin_unlock_irqrestore(&lp->lock, flags);
 }
 
-
 /*
  *  multicast setup
  */
@@ -2454,11 +2448,11 @@ static int hp100_sense_lan(struct net_device *dev)
 	}
 
 	/* Those cards don't have a 100 Mbit connector */
-	if ( !strcmp(lp->id, "HWP1920")  ||
-	     (lp->pci_dev &&
-	      lp->pci_dev->vendor == PCI_VENDOR_ID &&
-	      (lp->pci_dev->device == PCI_DEVICE_ID_HP_J2970A ||
-	       lp->pci_dev->device == PCI_DEVICE_ID_HP_J2973A)))
+	if (!strcmp(lp->id, "HWP1920")  ||
+	    (lp->pci_dev &&
+	     lp->pci_dev->vendor == PCI_VENDOR_ID &&
+	     (lp->pci_dev->device == PCI_DEVICE_ID_HP_J2970A ||
+	      lp->pci_dev->device == PCI_DEVICE_ID_HP_J2973A)))
 		return HP100_LAN_ERR;
 
 	if (val_VG & HP100_LINK_CABLE_ST)	/* Can hear the HUBs tone. */
@@ -2797,7 +2791,6 @@ void hp100_RegisterDump(struct net_device *dev)
 }
 #endif
 
-
 static void cleanup_dev(struct net_device *d)
 {
 	struct hp100_private *p = netdev_priv(d);
@@ -2918,7 +2911,6 @@ static void hp100_pci_remove(struct pci_dev *pdev)
 	pci_disable_device(pdev);
 }
 
-
 static struct pci_driver hp100_pci_driver = {
 	.name		= "hp100",
 	.id_table	= hp100_pci_tbl,
@@ -2944,7 +2936,7 @@ MODULE_DESCRIPTION("HP CASCADE Architecture Driver for 100VG-AnyLan Network Adap
 #if defined(MODULE) && defined(CONFIG_ISA)
 #define HP100_DEVICES 5
 /* Parameters set by insmod */
-static int hp100_port[HP100_DEVICES] = { 0, [1 ... (HP100_DEVICES-1)] = -1 };
+static int hp100_port[HP100_DEVICES] = { 0, [1 ... (HP100_DEVICES - 1)] = -1 };
 module_param_hw_array(hp100_port, int, ioport, NULL, 0);
 
 /* List of devices */
@@ -3010,18 +3002,17 @@ static int __init hp100_module_init(void)
  out:
 	return err;
  out3:
-	eisa_driver_unregister (&hp100_eisa_driver);
+	eisa_driver_unregister(&hp100_eisa_driver);
  out2:
 	hp100_isa_cleanup();
 	goto out;
 }
 
-
 static void __exit hp100_module_exit(void)
 {
 	hp100_isa_cleanup();
-	eisa_driver_unregister (&hp100_eisa_driver);
-	pci_unregister_driver (&hp100_pci_driver);
+	eisa_driver_unregister(&hp100_eisa_driver);
+	pci_unregister_driver(&hp100_pci_driver);
 }
 
 module_init(hp100_module_init)
-- 
2.17.1



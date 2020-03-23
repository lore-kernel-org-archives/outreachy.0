X-GM-THRID: 6807378568444641280
X-Received: by 2002:a63:7e10:: with SMTP id z16mr22090646pgc.412.1584966380223;
        Mon, 23 Mar 2020 05:26:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:332a:: with SMTP id m39ls4438010pjb.2.gmail; Mon, 23
 Mar 2020 05:26:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvMUwbE5HoQ90tSwMERN/we8tBGdV5Xqr5wYYsdRlG+EP5cOZQJN6Xkv6mi4VkgadCPY60t
X-Received: by 2002:a17:90a:bd01:: with SMTP id y1mr26193087pjr.129.1584966378821;
        Mon, 23 Mar 2020 05:26:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584966378; cv=none;
        d=google.com; s=arc-20160816;
        b=T0l7bH1E8/RokQrMnT9zKeKGKjlcTJr92nQZ1WTCGla4GjsEn4OyRqio8UPMR7So24
         j6ndiBAkPfFuBghR13zLLTgZglyPRhRaq31kz/8mNdKX2AfSagYCFoY2ZnniUFOlF5ju
         XKx2OgFb/Jb2I/MXokML2TfgCIALePd8I1IIU+hWLMA2pg4tuc7QsyolcoK0D0yeyJGb
         Qt3OMdZpAujc6J4baVcuzsZqhJXfRPw9We2PGtvxIpXOSDsw7990gPgxkn5XM3Vsu6Lb
         hbjaplk2fiLzfsTFbPQx7OTFhZKYUiS0Ulsx+uThB4RexN6yS3xkVtXMs2zI6Swp3NNX
         kPNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=zr/24KUWzTU+5Qf+tIyHyZqgtqQHeKwgo/eZUduCmU0=;
        b=fT0jYkQN47m39/a2YJIIa79yN+0Fk2BNVtkKV9LLgQOQvDtTwySLylW7Yxa/RU/mPs
         A2owZLob20QFQ/IZs1SgNHF5JFeaQO4G1vt9Kay76YiAHOZ41X+LpIZ5KLC1ufBZlmMV
         BTUANnhAd6c2+2fc9YDcI9NRrwniCdwVVGe3s6ugr6zzYWx7VjJGfs4MdSlAL7edXpfA
         EjpzVzjw6ot1BFtFy0e+YJTpyQgTrlYYlxfFwsOA+3xzGFr5vDeDbFYbo867tl5cDOOZ
         SqeUnAzFE5ath6w9R97y86GWlnYuwGUV/+TVbuNRX0TDc/MuPJ5JMmXXvfC7nk6F52gc
         JQ5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JRjetTxF;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id i19si1122598pjx.1.2020.03.23.05.26.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 05:26:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JRjetTxF;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id jz1so755255pjb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 05:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zr/24KUWzTU+5Qf+tIyHyZqgtqQHeKwgo/eZUduCmU0=;
        b=JRjetTxFFCMATlLFXtQXS3vqml0T3OWER1qf/Db+e7Yb4wwgFcxg0qlYPseuvvcdUq
         Z0r0Z3VF/4qkoONKFvm28pyZeNJ9eDyikfrzkEB8l4drieK0VMrfCxrqSaNEgmKLIk3i
         +Wi/6gmeHPNqHVkadeGtUMkNp35PAlKcozt/9g0n8ILPAzI8jjsHNzym5H4Dhn/PJf65
         eMfN93X38LDrdQkBAUA3iyRI1FUS5CqDarA/hA23/SuCKH+1Q13WlHuHYRMtN+wrkm/s
         ej4fbzTKv/fzGFEZQmpsFBj4Y4oe3Kz7/dY4wU1+n2AmTVVyLRh/ajf/fB6cH3RWNtta
         zBZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zr/24KUWzTU+5Qf+tIyHyZqgtqQHeKwgo/eZUduCmU0=;
        b=hNEW0iIFnd7eVppR31J8i1uocMjKuzJ4Hb0i4BpiSDfXiBwZ7rFH8LgDe7/Bi1xJ5I
         /lRynK5FszzGIiaT5YYebFxXiQBiQgDSkwfJsp25sWt2/LpeVJH0jEoWHOYgrgGgoiNF
         s4IBEURuS0YlkPVL4ksejpjzbYfPC2Qx/cOBtZJvA1B0S9ESs5PV0JduMxRhA8xBvZvR
         KOuuOz5PBa+Z3wNlXUhyRIFirFaNcxcf2CuWMLLqTw0cfR2RP/BZlxx9KTgkfmxsNDcX
         CDt71iNmRzNvrZBBnRAeO4I8c6UFS30/DooqzdmeVBF49+BAeAhwFmHZLep+3Xx/zeSq
         Jm4w==
X-Gm-Message-State: ANhLgQ0FVQFxwNjM6eXoU9ilvwmsbP/lzfTF1t6fLVAZHDO7lQWoLtIe
	qoRUeXRZoXyj0fHwP3EuR9oZSwUdxpo=
X-Received: by 2002:a17:902:9308:: with SMTP id bc8mr22105062plb.278.1584966378071;
        Mon, 23 Mar 2020 05:26:18 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.207.88])
        by smtp.googlemail.com with ESMTPSA id o15sm6796602pjp.41.2020.03.23.05.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 05:26:17 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH v1 3/3] staging: hp100: Remove uneccessary blank lines
Date: Mon, 23 Mar 2020 17:54:26 +0530
Message-Id: <20200323122426.60340-4-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323122426.60340-1-debsoumyajit100@gmail.com>
References: <20200323122426.60340-1-debsoumyajit100@gmail.com>

Remove uneccessary blank lines which are flagged by checkpatch.pl as
warning. Remove space between function name and ( . Add space after ,
and remove space between ( and next character in the if statement.
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



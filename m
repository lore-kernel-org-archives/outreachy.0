X-GM-THRID: 6807378568444641280
X-Received: by 2002:a63:c709:: with SMTP id n9mr29249876pgg.48.1585066570417;
        Tue, 24 Mar 2020 09:16:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6542:: with SMTP id d2ls8535038pln.2.gmail; Tue, 24
 Mar 2020 09:16:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuzpVbrKMHgEDx0t0iUuxi/ZNKkVgCffBioT+XdPYvO0PSIVypyqtGyInCAQKd/uaq7QS0A
X-Received: by 2002:a17:90a:25c8:: with SMTP id k66mr6367001pje.90.1585066568138;
        Tue, 24 Mar 2020 09:16:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585066568; cv=none;
        d=google.com; s=arc-20160816;
        b=uQeunteHHfgnJzQiGtvBqgFy+JFbGFrbgNcWlve/1ZufNu8FlN/mxT5KAMU92BxeCX
         FGCr3oxtZsI8+3MDdv83zZMaAWDcTexQFibRHQR4Y5xODd6+a33tA6we2UrulOqwwdKw
         ye1w8Wob0WkuuDQHXuGR3W/Hqtt5eKjs/JYKnIfM94mJwwUBe9b5rjsREaPQb/StCzC8
         35PV+o2DNU+RQGPt3DEsXWEtcwvcJ0uFVJkArXPcq8nX8L4/Jy4iDjv4webMiB7oeJKF
         VygKEsHXj/xaKHOh5No1l/h6x0dL8A/kwbBEagCUxOUN0KVnbGb9q2ghJHAyIioDoZdU
         APdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ymISOZT/aQXnHasyNmIh9ORSD6P6Gz0+dGt7InNdIBw=;
        b=VVx28JwSP36jHRYk2aTAdLwWqhtFszvqLPrQXt+3xKlVSuPo2MGz8cl8BI0KeoUOAs
         80dYeiJFWfKBbakY0fW2SKgtW8Iki56f10A4XXhMCkrbwwamTZTaoRbYt2M7pVANNSqm
         xoBUglz7KqMQGZgdLc6GZn6mmzQ6G6tWclFbClOEYpzgM3+MBYSUm1V9zrhjIEwmfB9s
         aH5/J7T9smd7dZ0UU+NZQN9ZQtFdftUN+2BOOkqJOTXB+a0IJeO91MTpAQ4eof/X+WA2
         iksos+2hK6CtsnwHyVRNu9gYrlVLtl3+HMLUsbLu0BBcN/EPK/LOd2XFY20GZoJzx7ef
         7EJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MgdgWMNo;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 74si969261pfy.0.2020.03.24.09.16.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:16:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MgdgWMNo;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id z25so5176073pfa.5
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 09:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ymISOZT/aQXnHasyNmIh9ORSD6P6Gz0+dGt7InNdIBw=;
        b=MgdgWMNocdyODOBoXofF7aK/QvCSo+GxvPLNlKXEwnim3S6xT6/bk9sNjaDiietctr
         4skSRYNDHi6jKyKZI50Kkm/UsZVbI+i4tAXUmNqx+InFsz3h30B1ISUkVx0v5doiJws2
         fz2HFuTEWfpEgfGh0TJHJmdJi+ghvfO6nL4yWL7Vuk/hCjKVtqvLDMQijq6zV4qL2kP3
         7G3cq3sESTZj3kafBQ4TX6WMODcyvB1C7eUSq6rfWb4Try0eSMWMH32m5gakUrIVNZLg
         aPDBhiB1AB6OJ/iolwNTsF/ugVPmaWHwcJhDfo9sMUviddb+fsf6vipaz/BBkJkeHl2H
         av2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ymISOZT/aQXnHasyNmIh9ORSD6P6Gz0+dGt7InNdIBw=;
        b=YLdGr6xIx2kVtZQxGvkL6GEg/Q43hfA6JZWK3aAidpXA2aETy+B8Os3u9SP33yDczT
         Ht/M1NOTIfU8WTT9lvjT7tlvX6NYtN87r8AQt4lTDJNr4U5Q1FVgZU6Kn/l0oepzC+zo
         eQZZlYOYAoed2o48pzerQTAe4BdwmBbZTwTu3TcWlphZK/qOkiGWn2VvlS14eRcM+oQ/
         iHdE4WPs8CqkLdGEopbmWvC5xDS7mwEDPnuK0la5A4AZxESsjpgtol8+oY/UEbOienT2
         T54Z1zQEiHybgYubKaVZZMRMgSJ9xoTJH9Za1ArBVfo6++vf+g7DppYwahnKg3YmIt5w
         9rPg==
X-Gm-Message-State: ANhLgQ3AFBdoNqLjH5cPT9EBg7DamcmMBf/CCnn+FKkdw/zOA88mYHwP
	e6IMP/0r8enXCoy44cv12AuEn9UNJY6X0w==
X-Received: by 2002:a63:a361:: with SMTP id v33mr27512102pgn.324.1585066567218;
        Tue, 24 Mar 2020 09:16:07 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.192.254])
        by smtp.googlemail.com with ESMTPSA id a10sm9554781pfi.16.2020.03.24.09.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 09:16:06 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH v1 3/3] staging: hp100: Remove uneccessary blank lines
Date: Tue, 24 Mar 2020 21:45:29 +0530
Message-Id: <20200324161529.14532-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove uneccessary blank lines which are flagged by checkpatch.pl as
warning. Remove space between function name and ( . Add space after ,
and remove space between ( and next character in the if statement.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
changes in v1:
  - Make the commit message more clearer.

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



X-GM-THRID: 6209346946679701504
X-Received: by 10.129.146.4 with SMTP id j4mr2995622ywg.45.1445784552732;
        Sun, 25 Oct 2015 07:49:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.148 with SMTP id d142ls1190841iod.13.gmail; Sun, 25 Oct
 2015 07:49:12 -0700 (PDT)
X-Received: by 10.67.4.135 with SMTP id ce7mr11944803pad.20.1445784552434;
        Sun, 25 Oct 2015 07:49:12 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id fa8si3136646pab.1.2015.10.25.07.49.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:49:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fa8so6799043pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 07:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=B0NTuXAFRE53OAPWZ7ghh16T4uQL5+4vW3vgrzSH7KI=;
        b=wyf5KrLGe9uFtF0BsRPvhs9VjTbjAVHYvEcb10QaeD6lYmnohouItVElG1l+tTD5HH
         uWjL426QfNqwQr5TlhC3LieIO0V3RokO627sQHCxb85N6UyB0QRvhGJmGi7x8o1CIB9v
         ic/j9RvrqdfdDI5G/jgnkqUerrO8TvcbLHP+/7wWYH4n28S3nMAG6yOpRxdTrX1OvBAb
         jC5uwmTVg9/4k6M7ifmiZhorMbLKSdF++lmzhmZiAwoUZ/YkHbXgQ8F09+AOkcbXhteo
         wjquGYZEP9US6n5bwDpUHrcEAnMqpJ75uSPMExNocLlvF5Wy7DDVCYJdvylUYnx/KESF
         XELQ==
X-Received: by 10.68.221.133 with SMTP id qe5mr17190233pbc.93.1445784552354;
        Sun, 25 Oct 2015 07:49:12 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id sn9sm29054172pac.16.2015.10.25.07.49.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:49:12 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] staging: slicoss: Removes unnecessary space after a cast
Date: Sun, 25 Oct 2015 07:48:55 -0700
Message-Id: <fba133973d2827662f0f6591e4253b677ed30b70.1445784166.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
 <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch.pl check:

CHECK: No space is necessary after a cast

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/slicoss/slicoss.c |   36 ++++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index a226055..c88ed69 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -168,7 +168,7 @@ static void slic_mcast_set_bit(struct adapter *adapter, char *address)
 	crcpoly &= 0x3F;
 
 	/* OR in the new bit into our 64 bit mask. */
-	adapter->mcastmask |= (u64) 1 << crcpoly;
+	adapter->mcastmask |= (u64)1 << crcpoly;
 }
 
 static void slic_mcast_set_mask(struct adapter *adapter)
@@ -592,11 +592,11 @@ static void slic_mac_address_config(struct adapter *adapter)
 	u32 value2;
 	__iomem struct slic_regs *slic_regs = adapter->slic_regs;
 
-	value = ntohl(*(__be32 *) &adapter->currmacaddr[2]);
+	value = ntohl(*(__be32 *)&adapter->currmacaddr[2]);
 	slic_reg32_write(&slic_regs->slic_wraddral, value, FLUSH);
 	slic_reg32_write(&slic_regs->slic_wraddrbl, value, FLUSH);
 
-	value2 = (u32) ((adapter->currmacaddr[0] << 8 |
+	value2 = (u32)((adapter->currmacaddr[0] << 8 |
 			     adapter->currmacaddr[1]) & 0xFFFF);
 
 	slic_reg32_write(&slic_regs->slic_wraddrah, value2, FLUSH);
@@ -970,7 +970,7 @@ static void slic_link_upr_complete(struct adapter *adapter, u32 isr)
 #else
 		slic_upr_queue_request(adapter,
 				       SLIC_UPR_RLSR,
-				       (u32) &pshmem->linkstatus,
+				       (u32)&pshmem->linkstatus,
 				       SLIC_GET_ADDR_HIGH(pshmem), 0, 0);
 #endif
 		return;
@@ -1040,7 +1040,7 @@ static void slic_upr_request_complete(struct adapter *adapter, u32 isr)
 	case SLIC_UPR_STATS:
 		{
 			struct slic_stats *slicstats =
-			    (struct slic_stats *) &adapter->pshmem->inicstats;
+			    (struct slic_stats *)&adapter->pshmem->inicstats;
 			struct slic_stats *newstats = slicstats;
 			struct slic_stats  *old = &adapter->inicstats_prev;
 			struct slicnet_stats *stst = &adapter->slic_stats;
@@ -1146,7 +1146,7 @@ static u16 slic_eeprom_cksum(void *eeprom, unsigned len)
 	}
 
 	if (len > 0)
-		checksum += *(u8 *) wp;
+		checksum += *(u8 *)wp;
 
 	while (checksum >> 16)
 		checksum = (checksum & 0xFFFF) + ((checksum >> 16) & 0xFFFF);
@@ -1244,7 +1244,7 @@ static void slic_cmdqmem_free(struct adapter *adapter)
 		if (cmdqmem->pages[i]) {
 			pci_free_consistent(adapter->pcidev,
 					    PAGE_SIZE,
-					    (void *) cmdqmem->pages[i],
+					    (void *)cmdqmem->pages[i],
 					    cmdqmem->dma_pages[i]);
 		}
 	}
@@ -1324,8 +1324,8 @@ static void slic_cmdq_addcmdpage(struct adapter *adapter, u32 *page)
 		adapter->pfree_slic_handles = pslic_handle->next;
 		spin_unlock_irqrestore(&adapter->handle_lock, flags);
 		pslic_handle->type = SLIC_HANDLE_CMD;
-		pslic_handle->address = (void *) cmd;
-		pslic_handle->offset = (ushort) adapter->slic_handle_ix++;
+		pslic_handle->address = (void *)cmd;
+		pslic_handle->offset = (ushort)adapter->slic_handle_ix++;
 		pslic_handle->other_handle = NULL;
 		pslic_handle->next = NULL;
 
@@ -1735,7 +1735,7 @@ static int slic_link_event_handler(struct adapter *adapter)
 				  0, 0);
 #else
 	status = slic_upr_request(adapter, SLIC_UPR_RLSR,
-		(u32) &pshmem->linkstatus,	/* no 4GB wrap guaranteed */
+		(u32)&pshmem->linkstatus,	/* no 4GB wrap guaranteed */
 				  0, 0, 0);
 #endif
 	return status;
@@ -1803,7 +1803,7 @@ static void slic_mcast_set_list(struct net_device *dev)
 	struct netdev_hw_addr *ha;
 
 	netdev_for_each_mc_addr(ha, dev) {
-		addresses = (char *) &ha->addr;
+		addresses = (char *)&ha->addr;
 		status = slic_mcast_add_list(adapter, addresses);
 		if (status != 0)
 			break;
@@ -1851,8 +1851,8 @@ static void slic_xmit_build_request(struct adapter *adapter,
 	ihcmd->u.slic_buffers.bufs[0].paddrh = SLIC_GET_ADDR_HIGH(phys_addr);
 	ihcmd->u.slic_buffers.bufs[0].length = skb->len;
 #if BITS_PER_LONG == 64
-	hcmd->cmdsize = (u32) ((((u64)&ihcmd->u.slic_buffers.bufs[1] -
-				     (u64) hcmd) + 31) >> 5);
+	hcmd->cmdsize = (u32)((((u64)&ihcmd->u.slic_buffers.bufs[1] -
+				     (u64)hcmd) + 31) >> 5);
 #else
 	hcmd->cmdsize = (((u32)&ihcmd->u.slic_buffers.bufs[1] -
 				       (u32)hcmd) + 31) >> 5;
@@ -2749,7 +2749,7 @@ static int slic_card_init(struct sliccard *card, struct adapter *adapter)
 		/* Oasis card */
 		case SLIC_2GB_DEVICE_ID:
 			/* extract EEPROM data and pointers to EEPROM data */
-			pOeeprom = (struct oslic_eeprom *) peeprom;
+			pOeeprom = (struct oslic_eeprom *)peeprom;
 			eecodesize = pOeeprom->EecodeSize;
 			dramsize = pOeeprom->DramSize;
 			pmac = pOeeprom->MacInfo;
@@ -2782,7 +2782,7 @@ static int slic_card_init(struct sliccard *card, struct adapter *adapter)
 		    (eecodesize >= MIN_EECODE_SIZE)) {
 
 			ee_chksum =
-			    *(u16 *) ((char *) peeprom + (eecodesize - 2));
+			    *(u16 *)((char *)peeprom + (eecodesize - 2));
 			/*
 			    calculate the EEPROM checksum
 			*/
@@ -2945,11 +2945,11 @@ static u32 slic_card_locate(struct adapter *adapter)
 	}
 
 	hostid_reg =
-	    (u16 __iomem *) (((u8 __iomem *) (adapter->slic_regs)) +
+	    (u16 __iomem *)(((u8 __iomem *)(adapter->slic_regs)) +
 	    rdhostid_offset);
 
 	/* read the 16 bit hostid from SRAM */
-	card_hostid = (ushort) readw(hostid_reg);
+	card_hostid = (ushort)readw(hostid_reg);
 
 	/* Initialize a new card structure if need be */
 	if (card_hostid == SLIC_HOSTID_DEFAULT) {
@@ -3130,7 +3130,7 @@ static int slic_entry_probe(struct pci_dev *pcidev,
 
 	slic_adapter_set_hwaddr(adapter);
 
-	netdev->base_addr = (unsigned long) memmapped_ioaddr;
+	netdev->base_addr = (unsigned long)memmapped_ioaddr;
 	netdev->irq = adapter->irq;
 	netdev->netdev_ops = &slic_netdev_ops;
 
-- 
1.7.9.5



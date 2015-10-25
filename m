X-GM-THRID: 6209346946679701504
X-Received: by 10.182.18.66 with SMTP id u2mr24963051obd.1.1445784556280;
        Sun, 25 Oct 2015 07:49:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.36 with SMTP id q33ls3296297qgd.62.gmail; Sun, 25 Oct
 2015 07:49:15 -0700 (PDT)
X-Received: by 10.129.132.83 with SMTP id u80mr20384213ywf.58.1445784555738;
        Sun, 25 Oct 2015 07:49:15 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id fa8si3137119pab.1.2015.10.25.07.49.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:49:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id z6so161887394pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 07:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=0hnKKLoytEISF8bDYhunurP83+VP5NRbJlGuQpf3sgk=;
        b=e4J5XGEqAZfuW+mzRSJa8ptA3XAUV5zPm3SLWDUW1093GQ0ZCu2o4J3skpUgClmjYu
         dBMf5ce1nWmVozVz5Vq9ISmTfe04gDdzurL1lQxQDBh0hxnL3RDYbScDObW9E+tWTggo
         A+Vg5CaZ15h1OIpYihilljG/dxBsmGAabAZsqHaV8TuvIfa4YpE99ZaOq9Jdr0bFfP2X
         PK6n9lhRvxcuvHAY807Eyhvkk9aOWIls7Narke/JnnFY1U4orXs23BHiGerOlFr4N/tp
         Na8PLmxo6Z8H08dopfb41q7FTfAqSuuGtcWCxw8Wy2bO4K5uQOOqVBlM7m0hzwkAls2F
         wYOg==
X-Received: by 10.68.161.226 with SMTP id xv2mr16709610pbb.21.1445784555605;
        Sun, 25 Oct 2015 07:49:15 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id sn9sm29054172pac.16.2015.10.25.07.49.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:49:15 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] staging: slicoss:  Fixes block comment style
Date: Sun, 25 Oct 2015 07:48:57 -0700
Message-Id: <46067636f1a03041b54698489efa99124b9d7636.1445784166.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
 <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445784166.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch.pl warnings:

WARNING: Block comments use * on subsequent lines
WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
Changes in v2:
  - Uses correct block comment style, with the starting /* on a line by itself.
---
 drivers/staging/slicoss/slic.h    |   17 ++---
 drivers/staging/slicoss/slichw.h  |   38 +++++++----
 drivers/staging/slicoss/slicoss.c |  131 ++++++++++++++++++++++---------------
 3 files changed, 113 insertions(+), 73 deletions(-)

diff --git a/drivers/staging/slicoss/slic.h b/drivers/staging/slicoss/slic.h
index 92c6862..c95b3ab 100644
--- a/drivers/staging/slicoss/slic.h
+++ b/drivers/staging/slicoss/slic.h
@@ -93,10 +93,10 @@ struct slic_rcvbuf_info {
 	u32     lastid;
 };
 /*
- SLIC Handle structure.  Used to restrict handle values to
- 32 bits by using an index rather than an address.
- Simplifies ucode in 64-bit systems
-*/
+ * SLIC Handle structure.  Used to restrict handle values to
+ * 32 bits by using an index rather than an address.
+ * Simplifies ucode in 64-bit systems
+ */
 struct slic_handle_word {
 	union {
 		struct {
@@ -333,10 +333,11 @@ struct physcard {
 	struct physcard *next;
 	uint                adapters_allocd;
 
-/*  the following is not currently needed
-	u32              bridge_busnum;
-	u32              bridge_cfg[NUM_CFG_SPACES][NUM_CFG_REG_ULONGS];
-*/
+/*
+ * the following is not currently needed
+ *	u32              bridge_busnum;
+ *	u32              bridge_cfg[NUM_CFG_SPACES][NUM_CFG_REG_ULONGS];
+ */
 };
 
 struct base_driver {
diff --git a/drivers/staging/slicoss/slichw.h b/drivers/staging/slicoss/slichw.h
index 21cd02b..9723b4a 100644
--- a/drivers/staging/slicoss/slichw.h
+++ b/drivers/staging/slicoss/slichw.h
@@ -307,9 +307,11 @@ struct slic_regs {
 
 	u32	slic_hbar;	/* Header buffer address reg */
 	u32	pad4;
-	/* 31-8 - phy addr of set of contiguous hdr buffers
-	    7-0 - number of buffers passed
-	   Buffers are 256 bytes long on 256-byte boundaries. */
+	/*
+	 * 31-8 - phy addr of set of contiguous hdr buffers
+	 *  7-0 - number of buffers passed
+	 * Buffers are 256 bytes long on 256-byte boundaries.
+	 */
 #define SLIC_HBAR		0x0020
 #define SLIC_HBAR_CNT_MSK	0x000000FF
 
@@ -321,10 +323,12 @@ struct slic_regs {
 #define SLIC_DBAR_SIZE		2048
 
 	u32	slic_cbar;	/* Xmt Cmd buf addr regs.*/
-	/* 1 per XMT interface
-	   31-5 - phy addr of host command buffer
-	    4-0 - length of cmd in multiples of 32 bytes
-	   Buffers are 32 bytes up to 512 bytes long */
+	/*
+	 * 1 per XMT interface
+	 * 31-5 - phy addr of host command buffer
+	 *  4-0 - length of cmd in multiples of 32 bytes
+	 * Buffers are 32 bytes up to 512 bytes long
+	 */
 #define SLIC_CBAR		0x0030
 #define SLIC_CBAR_LEN_MSK	0x0000001F
 #define SLIC_CBAR_ALIGN		0x00000020
@@ -336,9 +340,11 @@ struct slic_regs {
 
 	u32	slic_rbar;	/* Response buffer address reg.*/
 	u32	pad7;
-	 /*31-8 - phy addr of set of contiguous response buffers
-	  7-0 - number of buffers passed
-	 Buffers are 32 bytes long on 32-byte boundaries.*/
+	/*
+	 * 31-8 - phy addr of set of contiguous response buffers
+	 * 7-0 - number of buffers passed
+	 * Buffers are 32 bytes long on 32-byte boundaries.
+	 */
 #define SLIC_RBAR		0x0038
 #define SLIC_RBAR_CNT_MSK	0x000000FF
 #define SLIC_RBAR_SIZE		32
@@ -430,7 +436,8 @@ struct slic_regs {
 #define SLIC_LOW_POWER	0x00e0
 
 	u32	slic_quiesce;	/* force slic into quiescent state
-				   before soft reset */
+				 * before soft reset
+				 */
 	u32	pad30;
 #define SLIC_QUIESCE	0x00e8
 
@@ -718,7 +725,8 @@ struct slic_eeprom {
 	u16 DSize2Pci;		/* 15 DRAM size to PCI (bytes * 64K) */
 	u16 RSize2Pci;		/* 16 ROM extension size to PCI (bytes * 4k) */
 	u8 NetIntPin1;		/* 17 Network Interface Pin 1
-				    (simba/leone only) */
+				 *  (simba/leone only)
+				 */
 	u8 NetIntPin2;		/* Network Interface Pin 2 (simba/leone only)*/
 	union {
 		u8 NetIntPin3;	/* 18 Network Interface Pin 3 (simba only) */
@@ -748,7 +756,8 @@ struct slic_eeprom {
 	union oemfru OemFru;	/* optional OEM FRU information */
 	u8	Pad[4];		/* Pad to 128 bytes - includes 2 cksum bytes
 				 * (if OEM FRU info exists) and two unusable
-				 * bytes at the end */
+				 * bytes at the end
+				 */
 };
 
 /* SLIC EEPROM structure for Oasis */
@@ -772,7 +781,8 @@ struct oslic_eeprom {
 	u16 FlashSize;		/* 14 Flash size (bytes / 4K) */
 	u16 DSize2Pci;		/* 15 DRAM size to PCI (bytes / 64K) */
 	u16 RSize2Pci;		/* 16 Flash (ROM extension) size to PCI
-					(bytes / 4K) */
+				 *	(bytes / 4K)
+				 */
 	u16 DeviceId1;		/* 17 Device Id (function 1) */
 	u16 DeviceId2;		/* 18 Device Id (function 2) */
 	u16 CfgByte6;		/* 19 Device Status Config Bytes 6-7 */
diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 8ce9000..b23a2d1 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -158,11 +158,14 @@ static void slic_mcast_set_bit(struct adapter *adapter, char *address)
 	unsigned char crcpoly;
 
 	/* Get the CRC polynomial for the mac address */
-	/* we use bits 1-8 (lsb), bitwise reversed,
-	 * msb (= lsb bit 0 before bitrev) is automatically discarded */
+	/*
+	 * we use bits 1-8 (lsb), bitwise reversed,
+	 * msb (= lsb bit 0 before bitrev) is automatically discarded
+	 */
 	crcpoly = ether_crc(ETH_ALEN, address) >> 23;
 
-	/* We only have space on the SLIC for 64 entries.  Lop
+	/*
+	 * We only have space on the SLIC for 64 entries.  Lop
 	 * off the top two bits. (2^6 = 64)
 	 */
 	crcpoly &= 0x3F;
@@ -176,7 +179,8 @@ static void slic_mcast_set_mask(struct adapter *adapter)
 	__iomem struct slic_regs *slic_regs = adapter->slic_regs;
 
 	if (adapter->macopts & (MAC_ALLMCAST | MAC_PROMISC)) {
-		/* Turn on all multicast addresses. We have to do this for
+		/*
+		 * Turn on all multicast addresses. We have to do this for
 		 * promiscuous mode as well as ALLMCAST mode.  It saves the
 		 * Microcode from having to keep state about the MAC
 		 * configuration.
@@ -185,7 +189,8 @@ static void slic_mcast_set_mask(struct adapter *adapter)
 		slic_reg32_write(&slic_regs->slic_mcasthigh, 0xFFFFFFFF,
 				 FLUSH);
 	} else {
-		/* Commit our multicast mast to the SLIC by writing to the
+		/*
+		 * Commit our multicast mast to the SLIC by writing to the
 		 * multicast address mask registers
 		 */
 		slic_reg32_write(&slic_regs->slic_mcastlow,
@@ -242,7 +247,8 @@ static void slic_link_config(struct adapter *adapter,
 
 	if ((linkspeed == LINK_AUTOSPEED) || (linkspeed == LINK_1000MB)) {
 		if (adapter->flags & ADAPT_FLAGS_FIBERMEDIA) {
-			/*  We've got a fiber gigabit interface, and register
+			/*
+			 * We've got a fiber gigabit interface, and register
 			 *  4 is different in fiber mode than in copper mode
 			 */
 
@@ -260,16 +266,22 @@ static void slic_link_config(struct adapter *adapter,
 				      PCR_AUTONEG_RST));
 				slic_reg32_write(wphy, phy_config, FLUSH);
 			} else {	/* forced 1000 Mb FD*/
-				/* power down phy to break link
-				   this may not work) */
+				/*
+				 * power down phy to break link
+				 * this may not work)
+				 */
 				phy_config = (MIICR_REG_PCR | PCR_POWERDOWN);
 				slic_reg32_write(wphy, phy_config, FLUSH);
-				/* wait, Marvell says 1 sec,
-				   try to get away with 10 ms  */
+				/*
+				 * wait, Marvell says 1 sec,
+				 * try to get away with 10 ms
+				 */
 				mdelay(10);
 
-				/* disable auto-neg, set speed/duplex,
-				   soft reset phy, powerup */
+				/*
+				 * disable auto-neg, set speed/duplex,
+				 * soft reset phy, powerup
+				 */
 				phy_config =
 				    (MIICR_REG_PCR |
 				     (PCR_RESET | PCR_SPEED_1000 |
@@ -278,7 +290,8 @@ static void slic_link_config(struct adapter *adapter,
 			}
 		} else {	/* copper gigabit */
 
-			/* Auto-Negotiate or 1000 Mb must be auto negotiated
+			/*
+			 * Auto-Negotiate or 1000 Mb must be auto negotiated
 			 * We've got a copper gigabit interface, and
 			 * register 4 is different in copper mode than
 			 * in fiber mode
@@ -290,8 +303,10 @@ static void slic_link_config(struct adapter *adapter,
 				     (PAR_ADV100FD | PAR_ADV100HD | PAR_ADV10FD
 				      | PAR_ADV10HD));
 			} else {
-			/* linkspeed == LINK_1000MB -
-			   don't advertise 10/100 Mb modes  */
+			/*
+			 * linkspeed == LINK_1000MB -
+			 * don't advertise 10/100 Mb modes
+			 */
 				phy_advreg = MIICR_REG_4;
 			}
 			/* enable PAUSE frames  */
@@ -304,8 +319,10 @@ static void slic_link_config(struct adapter *adapter,
 			slic_reg32_write(wphy, phy_gctlreg, FLUSH);
 
 			if (adapter->subsysid != SLIC_1GB_CICADA_SUBSYS_ID) {
-				/* if a Marvell PHY
-				   enable auto crossover */
+				/*
+				 * if a Marvell PHY
+				 * enable auto crossover
+				 */
 				phy_config =
 				    (MIICR_REG_16 | (MRV_REG16_XOVERON));
 				slic_reg32_write(wphy, phy_config, FLUSH);
@@ -336,8 +353,10 @@ static void slic_link_config(struct adapter *adapter,
 			duplex = PCR_DUPLEX_FULL;
 
 		if (adapter->subsysid != SLIC_1GB_CICADA_SUBSYS_ID) {
-			/* if a Marvell PHY
-			   disable auto crossover  */
+			/*
+			 * if a Marvell PHY
+			 * disable auto crossover
+			 */
 			phy_config = (MIICR_REG_16 | (MRV_REG16_XOVEROFF));
 			slic_reg32_write(wphy, phy_config, FLUSH);
 		}
@@ -350,9 +369,11 @@ static void slic_link_config(struct adapter *adapter,
 		mdelay(10);
 
 		if (adapter->subsysid != SLIC_1GB_CICADA_SUBSYS_ID) {
-			/* if a Marvell PHY
-			   disable auto-neg, set speed,
-			   soft reset phy, powerup */
+			/*
+			 * if a Marvell PHY
+			 * disable auto-neg, set speed,
+			 * soft reset phy, powerup
+			 */
 			phy_config =
 			    (MIICR_REG_PCR | (PCR_RESET | speed | duplex));
 			slic_reg32_write(wphy, phy_config, FLUSH);
@@ -529,11 +550,13 @@ static int slic_card_download(struct adapter *adapter)
 			index += 4;
 
 			/* Check SRAM location zero. If it is non-zero. Abort.*/
-/*			failure = readl((u32 __iomem *)&slic_regs->slic_reset);
-			if (failure) {
-				release_firmware(fw);
-				return -EIO;
-			}*/
+		     /*
+		      * failure = readl((u32 __iomem *)&slic_regs->slic_reset);
+		      * if (failure) {
+		      *	release_firmware(fw);
+		      *	return -EIO;
+		      * }
+		      */
 		}
 	}
 	release_firmware(fw);
@@ -541,8 +564,10 @@ static int slic_card_download(struct adapter *adapter)
 	mdelay(10);
 	slic_reg32_write(&slic_regs->slic_wcs, SLIC_WCS_START, FLUSH);
 
-	/* stall for 20 ms, long enough for ucode to init card
-	   and reach mainloop */
+	/*
+	 * stall for 20 ms, long enough for ucode to init card
+	 * and reach mainloop
+	 */
 	mdelay(20);
 
 	return 0;
@@ -602,9 +627,11 @@ static void slic_mac_address_config(struct adapter *adapter)
 	slic_reg32_write(&slic_regs->slic_wraddrah, value2, FLUSH);
 	slic_reg32_write(&slic_regs->slic_wraddrbh, value2, FLUSH);
 
-	/* Write our multicast mask out to the card.  This is done */
-	/* here in addition to the slic_mcast_addr_set routine     */
-	/* because ALL_MCAST may have been enabled or disabled     */
+	/*
+	 * Write our multicast mask out to the card.  This is done
+	 * here in addition to the slic_mcast_addr_set routine
+	 * because ALL_MCAST may have been enabled or disabled
+	 */
 	slic_mcast_set_mask(adapter);
 }
 
@@ -885,10 +912,10 @@ static void slic_upr_start(struct adapter *adapter)
 	struct slic_upr *upr;
 	__iomem struct slic_regs *slic_regs = adapter->slic_regs;
 /*
-    char * ptr1;
-    char * ptr2;
-    uint cmdoffset;
-*/
+ *  char * ptr1;
+ *  char * ptr2;
+ *  uint cmdoffset;
+ */
 	upr = adapter->upr_list;
 	if (!upr)
 		return;
@@ -2049,8 +2076,8 @@ static void slic_xmit_complete(struct adapter *adapter)
 		adapter->xmit_completes++;
 		adapter->card->events++;
 		/*
-		 Get the complete host command buffer
-		*/
+		 * Get the complete host command buffer
+		 */
 		slic_handle_word.handle_token = rspbuf->hosthandle;
 		hcmd =
 			adapter->slic_handles[slic_handle_word.handle_index].
@@ -2758,10 +2785,12 @@ static int slic_card_init(struct sliccard *card, struct adapter *adapter)
 			oemfruformat = pOeeprom->OemFruFormat;
 			poemfru = &pOeeprom->OemFru;
 			macaddrs = 2;
-			/* Minor kludge for Oasis card
-			     get 2 MAC addresses from the
-			     EEPROM to ensure that function 1
-			     gets the Port 1 MAC address */
+			/*
+			 * Minor kludge for Oasis card
+			 * get 2 MAC addresses from the
+			 * EEPROM to ensure that function 1
+			 * gets the Port 1 MAC address
+			 */
 			break;
 		default:
 			/* extract EEPROM data and pointers to EEPROM data */
@@ -2784,14 +2813,14 @@ static int slic_card_init(struct sliccard *card, struct adapter *adapter)
 			ee_chksum =
 			    *(u16 *)((char *)peeprom + (eecodesize - 2));
 			/*
-			    calculate the EEPROM checksum
-			*/
+			 *  calculate the EEPROM checksum
+			 */
 			calc_chksum = slic_eeprom_cksum(peeprom,
 							eecodesize - 2);
 			/*
-			    if the ucdoe chksum flag bit worked,
-			    we wouldn't need this
-			*/
+			 *  if the ucdoe chksum flag bit worked,
+			 *  we wouldn't need this
+			 */
 			if (ee_chksum == calc_chksum)
 				card->config.EepromValid = true;
 		}
@@ -2890,11 +2919,11 @@ static void slic_init_adapter(struct net_device *netdev,
 
 	adapter->card_size = 1;
 	/*
-	  Initialize slic_handle array
-	*/
+	 * Initialize slic_handle array
+	 */
 	/*
-	 Start with 1.  0 is an invalid host handle.
-	*/
+	 * Start with 1.  0 is an invalid host handle.
+	 */
 	for (index = 1, pslic_handle = &adapter->slic_handles[1];
 	     index < SLIC_CMDQ_MAXCMDS; index++, pslic_handle++) {
 
-- 
1.7.9.5



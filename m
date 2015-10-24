X-GM-THRID: 6209346946679701504
X-Received: by 10.50.82.98 with SMTP id h2mr9620835igy.1.1445726252713;
        Sat, 24 Oct 2015 15:37:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.102 with SMTP id m93ls2373631qgm.42.gmail; Sat, 24 Oct
 2015 15:37:32 -0700 (PDT)
X-Received: by 10.13.216.14 with SMTP id a14mr22679135ywe.8.1445726252189;
        Sat, 24 Oct 2015 15:37:32 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id zg1si2930394pbb.2.2015.10.24.15.37.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 15:37:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id hk11so149918238pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 15:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=sSxOHil9ax2WRchBkP9jNcbUm7DgnxGt//DHi7ZZ1HE=;
        b=LivWx6pCDag6AhPz1/57+lmnPDTHIWCIFzjBmAywnTzqYUux573f8xA//tKjMgXEmL
         b3PYdp0K/8MQot8E9v2L9WfVfz+NamOzJUb7/MT4i4mWDkXC8if4v/xH9+foYHHBTepK
         y+YMh9W7iITPvI/Pwt/JKrJKzbBPX5N5uSz3xVL1+k3Pe6PJzZeH7raaQ8Vl4ZGcZCcm
         yDrqlqdb2VBFKmOKyp6DvUMgyWtzD1v47Pu7tC7e12eyVSTkigBBOoinIxCLg1VnzcPr
         jHJSIQp7azHduL8VW4YRhFfijZH7OQEg3L9ur3ixej0lFiIUaHJI3By28mlJxv/HNlxW
         m12w==
X-Received: by 10.66.218.230 with SMTP id pj6mr13345599pac.104.1445726252056;
        Sat, 24 Oct 2015 15:37:32 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id fe8sm26017758pab.40.2015.10.24.15.37.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 15:37:31 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: slicoss: Fixes block comment style
Date: Sat, 24 Oct 2015 15:37:13 -0700
Message-Id: <fbe7783f1137572abe197c9ec551169bf04046c9.1445720974.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445720974.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch.pl warnings:

WARNING: Block comments use * on subsequent lines
WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/slicoss/slic.h    |   14 +++----
 drivers/staging/slicoss/slichw.h  |   31 +++++++++------
 drivers/staging/slicoss/slicoss.c |   79 +++++++++++++++++++------------------
 3 files changed, 67 insertions(+), 57 deletions(-)

diff --git a/drivers/staging/slicoss/slic.h b/drivers/staging/slicoss/slic.h
index 92c6862..823452c 100644
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
@@ -334,9 +334,9 @@ struct physcard {
 	uint                adapters_allocd;
 
 /*  the following is not currently needed
-	u32              bridge_busnum;
-	u32              bridge_cfg[NUM_CFG_SPACES][NUM_CFG_REG_ULONGS];
-*/
+ *	u32              bridge_busnum;
+ *	u32              bridge_cfg[NUM_CFG_SPACES][NUM_CFG_REG_ULONGS];
+ */
 };
 
 struct base_driver {
diff --git a/drivers/staging/slicoss/slichw.h b/drivers/staging/slicoss/slichw.h
index 21cd02b..b55894d 100644
--- a/drivers/staging/slicoss/slichw.h
+++ b/drivers/staging/slicoss/slichw.h
@@ -308,8 +308,9 @@ struct slic_regs {
 	u32	slic_hbar;	/* Header buffer address reg */
 	u32	pad4;
 	/* 31-8 - phy addr of set of contiguous hdr buffers
-	    7-0 - number of buffers passed
-	   Buffers are 256 bytes long on 256-byte boundaries. */
+	 *  7-0 - number of buffers passed
+	 * Buffers are 256 bytes long on 256-byte boundaries.
+	 */
 #define SLIC_HBAR		0x0020
 #define SLIC_HBAR_CNT_MSK	0x000000FF
 
@@ -322,9 +323,10 @@ struct slic_regs {
 
 	u32	slic_cbar;	/* Xmt Cmd buf addr regs.*/
 	/* 1 per XMT interface
-	   31-5 - phy addr of host command buffer
-	    4-0 - length of cmd in multiples of 32 bytes
-	   Buffers are 32 bytes up to 512 bytes long */
+	 * 31-5 - phy addr of host command buffer
+	 *  4-0 - length of cmd in multiples of 32 bytes
+	 * Buffers are 32 bytes up to 512 bytes long
+	 */
 #define SLIC_CBAR		0x0030
 #define SLIC_CBAR_LEN_MSK	0x0000001F
 #define SLIC_CBAR_ALIGN		0x00000020
@@ -336,9 +338,10 @@ struct slic_regs {
 
 	u32	slic_rbar;	/* Response buffer address reg.*/
 	u32	pad7;
-	 /*31-8 - phy addr of set of contiguous response buffers
-	  7-0 - number of buffers passed
-	 Buffers are 32 bytes long on 32-byte boundaries.*/
+	/* 31-8 - phy addr of set of contiguous response buffers
+	 *  7-0 - number of buffers passed
+	 * Buffers are 32 bytes long on 32-byte boundaries.
+	 */
 #define SLIC_RBAR		0x0038
 #define SLIC_RBAR_CNT_MSK	0x000000FF
 #define SLIC_RBAR_SIZE		32
@@ -430,7 +433,8 @@ struct slic_regs {
 #define SLIC_LOW_POWER	0x00e0
 
 	u32	slic_quiesce;	/* force slic into quiescent state
-				   before soft reset */
+				 * before soft reset
+				 */
 	u32	pad30;
 #define SLIC_QUIESCE	0x00e8
 
@@ -718,7 +722,8 @@ struct slic_eeprom {
 	u16 DSize2Pci;		/* 15 DRAM size to PCI (bytes * 64K) */
 	u16 RSize2Pci;		/* 16 ROM extension size to PCI (bytes * 4k) */
 	u8 NetIntPin1;		/* 17 Network Interface Pin 1
-				    (simba/leone only) */
+				 *	(simba/leone only)
+				 */
 	u8 NetIntPin2;		/* Network Interface Pin 2 (simba/leone only)*/
 	union {
 		u8 NetIntPin3;	/* 18 Network Interface Pin 3 (simba only) */
@@ -748,7 +753,8 @@ struct slic_eeprom {
 	union oemfru OemFru;	/* optional OEM FRU information */
 	u8	Pad[4];		/* Pad to 128 bytes - includes 2 cksum bytes
 				 * (if OEM FRU info exists) and two unusable
-				 * bytes at the end */
+				 * bytes at the end
+				 */
 };
 
 /* SLIC EEPROM structure for Oasis */
@@ -772,7 +778,8 @@ struct oslic_eeprom {
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
index 8ce9000..7edf1b1 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -159,7 +159,8 @@ static void slic_mcast_set_bit(struct adapter *adapter, char *address)
 
 	/* Get the CRC polynomial for the mac address */
 	/* we use bits 1-8 (lsb), bitwise reversed,
-	 * msb (= lsb bit 0 before bitrev) is automatically discarded */
+	 * msb (= lsb bit 0 before bitrev) is automatically discarded
+	 */
 	crcpoly = ether_crc(ETH_ALEN, address) >> 23;
 
 	/* We only have space on the SLIC for 64 entries.  Lop
@@ -261,15 +262,18 @@ static void slic_link_config(struct adapter *adapter,
 				slic_reg32_write(wphy, phy_config, FLUSH);
 			} else {	/* forced 1000 Mb FD*/
 				/* power down phy to break link
-				   this may not work) */
+				 * this may not work)
+				 */
 				phy_config = (MIICR_REG_PCR | PCR_POWERDOWN);
 				slic_reg32_write(wphy, phy_config, FLUSH);
 				/* wait, Marvell says 1 sec,
-				   try to get away with 10 ms  */
+				 * try to get away with 10 ms
+				 */
 				mdelay(10);
 
 				/* disable auto-neg, set speed/duplex,
-				   soft reset phy, powerup */
+				 * soft reset phy, powerup
+				 */
 				phy_config =
 				    (MIICR_REG_PCR |
 				     (PCR_RESET | PCR_SPEED_1000 |
@@ -290,8 +294,9 @@ static void slic_link_config(struct adapter *adapter,
 				     (PAR_ADV100FD | PAR_ADV100HD | PAR_ADV10FD
 				      | PAR_ADV10HD));
 			} else {
-			/* linkspeed == LINK_1000MB -
-			   don't advertise 10/100 Mb modes  */
+			/* linkspeed == LINK_1000MB - 
+			 * don't advertise 10/100 Mb modes
+			 */
 				phy_advreg = MIICR_REG_4;
 			}
 			/* enable PAUSE frames  */
@@ -304,8 +309,7 @@ static void slic_link_config(struct adapter *adapter,
 			slic_reg32_write(wphy, phy_gctlreg, FLUSH);
 
 			if (adapter->subsysid != SLIC_1GB_CICADA_SUBSYS_ID) {
-				/* if a Marvell PHY
-				   enable auto crossover */
+				/* if a Marvell PHY enable auto crossover */
 				phy_config =
 				    (MIICR_REG_16 | (MRV_REG16_XOVERON));
 				slic_reg32_write(wphy, phy_config, FLUSH);
@@ -336,8 +340,7 @@ static void slic_link_config(struct adapter *adapter,
 			duplex = PCR_DUPLEX_FULL;
 
 		if (adapter->subsysid != SLIC_1GB_CICADA_SUBSYS_ID) {
-			/* if a Marvell PHY
-			   disable auto crossover  */
+			/* if a Marvell PHY disable auto crossover  */
 			phy_config = (MIICR_REG_16 | (MRV_REG16_XOVEROFF));
 			slic_reg32_write(wphy, phy_config, FLUSH);
 		}
@@ -351,8 +354,9 @@ static void slic_link_config(struct adapter *adapter,
 
 		if (adapter->subsysid != SLIC_1GB_CICADA_SUBSYS_ID) {
 			/* if a Marvell PHY
-			   disable auto-neg, set speed,
-			   soft reset phy, powerup */
+			 * disable auto-neg, set speed,
+			 * soft reset phy, powerup
+			 */
 			phy_config =
 			    (MIICR_REG_PCR | (PCR_RESET | speed | duplex));
 			slic_reg32_write(wphy, phy_config, FLUSH);
@@ -529,11 +533,12 @@ static int slic_card_download(struct adapter *adapter)
 			index += 4;
 
 			/* Check SRAM location zero. If it is non-zero. Abort.*/
-/*			failure = readl((u32 __iomem *)&slic_regs->slic_reset);
-			if (failure) {
-				release_firmware(fw);
-				return -EIO;
-			}*/
+			/* failure = readl((u32 __iomem *)&slic_regs->slic_reset);
+			 * if (failure) {
+			 * 	release_firmware(fw);
+			 *	return -EIO;
+			 * }
+			 */
 		}
 	}
 	release_firmware(fw);
@@ -542,7 +547,8 @@ static int slic_card_download(struct adapter *adapter)
 	slic_reg32_write(&slic_regs->slic_wcs, SLIC_WCS_START, FLUSH);
 
 	/* stall for 20 ms, long enough for ucode to init card
-	   and reach mainloop */
+	 * and reach mainloop
+	 */
 	mdelay(20);
 
 	return 0;
@@ -885,10 +891,10 @@ static void slic_upr_start(struct adapter *adapter)
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
@@ -2048,9 +2054,7 @@ static void slic_xmit_complete(struct adapter *adapter)
 			break;
 		adapter->xmit_completes++;
 		adapter->card->events++;
-		/*
-		 Get the complete host command buffer
-		*/
+		/* Get the complete host command buffer */
 		slic_handle_word.handle_token = rspbuf->hosthandle;
 		hcmd =
 			adapter->slic_handles[slic_handle_word.handle_index].
@@ -2759,9 +2763,10 @@ static int slic_card_init(struct sliccard *card, struct adapter *adapter)
 			poemfru = &pOeeprom->OemFru;
 			macaddrs = 2;
 			/* Minor kludge for Oasis card
-			     get 2 MAC addresses from the
-			     EEPROM to ensure that function 1
-			     gets the Port 1 MAC address */
+			 * get 2 MAC addresses from the
+			 * EEPROM to ensure that function 1
+			 * gets the Port 1 MAC address
+			 */
 			break;
 		default:
 			/* extract EEPROM data and pointers to EEPROM data */
@@ -2783,15 +2788,13 @@ static int slic_card_init(struct sliccard *card, struct adapter *adapter)
 
 			ee_chksum =
 			    *(u16 *)((char *)peeprom + (eecodesize - 2));
-			/*
-			    calculate the EEPROM checksum
-			*/
+			/* calculate the EEPROM checksum */
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
@@ -2890,11 +2893,11 @@ static void slic_init_adapter(struct net_device *netdev,
 
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



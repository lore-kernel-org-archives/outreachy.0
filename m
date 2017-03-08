X-GM-THRID: 6395175324693299200
X-Received: by 10.28.14.129 with SMTP id 123mr138823wmo.11.1488992787586;
        Wed, 08 Mar 2017 09:06:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.143 with SMTP id u137ls477793lja.51.gmail; Wed, 08 Mar
 2017 09:06:27 -0800 (PST)
X-Received: by 10.46.9.141 with SMTP id 135mr1425877ljj.19.1488992787041;
        Wed, 08 Mar 2017 09:06:27 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id e72si735480wma.0.2017.03.08.09.06.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 09:06:26 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id u48so4939564wrc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 09:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5Ahx+QJCMyo5UEqFWGthOaxuFVMw7ZinjMnDdeFU8WQ=;
        b=XKbG6vRZEZNitbdaxAWrtBDnkr3I3K1mE0LBCwbqnfd+v1i6ufXugfyoMLqfbzqR8a
         metLIl964ui8RG1g6w2B5gIA1sCzuSAWBFwV8+Sc8bfgLLxbF4WtuWMXB3GxRvc43Xky
         n3+y4vU8yavLnONs2/8Zwd0ynqWNRZToCCBDDYZHFc2esGicE6p6WLOFCAH8uom9cNAh
         AQnZjaaY1NUzwAIfntF/Uxg92Z2Nl8XAA/B7N2vUVsIQrkF5WxP8T3iHPS1j7zjO+aDJ
         aXvodPYJXX8GF9/9bbVHArJwnguX03fsjB7DcL8JFQwLnEqhD2SQKXuNhW0UD8/WwxeY
         DSzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5Ahx+QJCMyo5UEqFWGthOaxuFVMw7ZinjMnDdeFU8WQ=;
        b=hib+EXw4PJkU8XHDlHoTheHv1RHMBEUpEsgr0ge07OrahVI9FOqWxDb2k91SiGvk25
         akMWdYxhP+11ifPiL7IeR96gq+ZUAgjDlx+RhNyW7bvPwgjMYlx34qbebziM0OZ38/W6
         2KIaJOOs68wmTFlY44Zl8QqzztElB8mRDKG/tV/mzXjtMb7jygZzCm2Kfvt5VJJUE5mX
         uy9CrFDUrhfonkLeNG5eEyIOLQPBlVgiZHRKssmOz6c/PEcVpAcw+khiLsZfkYMppvLd
         SJ6SNGRnNQGcuMYSljisnUdSE9Smmu3EI8KPNJdOv/ohjIW4l9MWXFtmta1Br2UQ45fk
         PKYw==
X-Gm-Message-State: AMke39kf7GRzrhPdUW8kkG9jKCmeZR2HmeqDoWurmkEU2o9ElzejFiYnP14Yd/tw9SK4ZQ==
X-Received: by 10.223.130.144 with SMTP id 16mr7090594wrc.32.1488992786674;
        Wed, 08 Mar 2017 09:06:26 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id u41sm4908278wrc.24.2017.03.08.09.06.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 09:06:25 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 1/3] staging: wilc1000: wilc_spi: Rearrange the code
Date: Wed,  8 Mar 2017 19:06:20 +0200
Message-Id: <20170308170620.3898-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Split lines to have less than 80 characters.

Fix the checkpath.pl issue: line over 80 characters.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 54 ++++++++++++++++++++++---------------
 1 file changed, 32 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 5e28adc..2464b4c 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -5,7 +5,7 @@
 /* Module Name:  wilc_spi.c */
 /*  */
 /*  */
-/* //////////////////////////////////////////////////////////////////////////// */
+/* ///////////////////////////////////////////////////////////////////////// */
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -291,7 +291,7 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 
 	wb[0] = cmd;
 	switch (cmd) {
-	case CMD_SINGLE_READ:                           /* single word (4 bytes) read */
+	case CMD_SINGLE_READ: /* single word (4 bytes) read */
 		wb[1] = (u8)(adr >> 16);
 		wb[2] = (u8)(adr >> 8);
 		wb[3] = (u8)adr;
@@ -307,21 +307,21 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 		len = 5;
 		break;
 
-	case CMD_TERMINATE:                                     /* termination */
+	case CMD_TERMINATE: /* termination */
 		wb[1] = 0x00;
 		wb[2] = 0x00;
 		wb[3] = 0x00;
 		len = 5;
 		break;
 
-	case CMD_REPEAT:                                                /* repeat */
+	case CMD_REPEAT: /* repeat */
 		wb[1] = 0x00;
 		wb[2] = 0x00;
 		wb[3] = 0x00;
 		len = 5;
 		break;
 
-	case CMD_RESET:                                                 /* reset */
+	case CMD_RESET: /* reset */
 		wb[1] = 0xff;
 		wb[2] = 0xff;
 		wb[3] = 0xff;
@@ -397,11 +397,12 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 		len2 = len + (NUM_SKIP_BYTES + NUM_RSP_BYTES + NUM_DUMMY_BYTES);
 	} else if ((cmd == CMD_INTERNAL_READ) || (cmd == CMD_SINGLE_READ)) {
 		if (!g_spi.crc_off) {
-			len2 = len + (NUM_RSP_BYTES + NUM_DATA_HDR_BYTES + NUM_DATA_BYTES
-				      + NUM_CRC_BYTES + NUM_DUMMY_BYTES);
+			len2 = len + (NUM_RSP_BYTES + NUM_DATA_HDR_BYTES +
+				      NUM_DATA_BYTES + NUM_CRC_BYTES +
+				      NUM_DUMMY_BYTES);
 		} else {
-			len2 = len + (NUM_RSP_BYTES + NUM_DATA_HDR_BYTES + NUM_DATA_BYTES
-				      + NUM_DUMMY_BYTES);
+			len2 = len + (NUM_RSP_BYTES + NUM_DATA_HDR_BYTES +
+				      NUM_DATA_BYTES + NUM_DUMMY_BYTES);
 		}
 	} else {
 		len2 = len + (NUM_RSP_BYTES + NUM_DUMMY_BYTES);
@@ -464,7 +465,8 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 		 **/
 		retry = 100;
 		do {
-			/* ensure there is room in buffer later to read data and crc */
+			/* ensure there is room in buffer later to read data
+			 * and crc */
 			if (rix < len2) {
 				rsp = rb[rix++];
 			} else {
@@ -549,7 +551,8 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 				sz -= nbytes;
 			}
 
-			/*  if any data in left unread, then read the rest using normal DMA code.*/
+			/*  if any data in left unread, then read the rest
+			 *  using normal DMA code.*/
 			while (sz > 0) {
 				int nbytes;
 
@@ -559,9 +562,10 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 					nbytes = DATA_PKT_SZ;
 
 				/**
-				 * read data response only on the next DMA cycles not
-				 * the first DMA since data response header is already
-				 * handled above for the first DMA.
+				 * read data response only on the next DMA
+				 * cycles not the first DMA since data response
+				 * header is already handled above for the
+				 * first DMA.
 				 **/
 				/**
 				 * Data Respnose header
@@ -569,7 +573,8 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 				retry = 10;
 				do {
 					if (wilc_spi_rx(wilc, &rsp, 1)) {
-						dev_err(&spi->dev, "Failed data response read, bus error...\n");
+						dev_err(&spi->dev,
+							"Failed data response read, bus error...\n");
 						result = N_FAIL;
 						break;
 					}
@@ -855,16 +860,18 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
 	 **/
 	g_spi.crc_off = 0;
 
-	/* TODO: We can remove the CRC trials if there is a definite way to reset */
-	/* the SPI to it's initial value. */
+	/* TODO: We can remove the CRC trials if there is a definite way to
+	 * reset the SPI to it's initial value. */
 	if (!spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET, &reg)) {
 		/* Read failed. Try with CRC off. This might happen when module
 		 * is removed but chip isn't reset
 		 */
 		g_spi.crc_off = 1;
-		dev_err(&spi->dev, "Failed internal read protocol with CRC on, retrying with CRC off...\n");
+		dev_err(&spi->dev, "Failed internal read protocol with CRC on,
+			retrying with CRC off...\n");
 		if (!spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET, &reg)) {
-			/* Reaad failed with both CRC on and off, something went bad */
+			/* Reaad failed with both CRC on and off, something
+			 * went bad */
 			dev_err(&spi->dev,
 				"Failed internal read protocol...\n");
 			return 0;
@@ -875,7 +882,8 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
 		reg &= ~0x70;
 		reg |= (0x5 << 4);
 		if (!spi_internal_write(wilc, WILC_SPI_PROTOCOL_OFFSET, reg)) {
-			dev_err(&spi->dev, "[wilc spi %d]: Failed internal write protocol reg...\n", __LINE__);
+			dev_err(&spi->dev, "[wilc spi %d]: Failed internal
+				write protocol reg...\n", __LINE__);
 			return 0;
 		}
 		g_spi.crc_off = 1;
@@ -1002,9 +1010,11 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 
 			ret = 1;
 			for (i = 0; i < g_spi.nint; i++) {
-				/* No matter what you write 1 or 0, it will clear interrupt. */
+				/* No matter what you write 1 or 0, it will
+				 * clear interrupt. */
 				if (flags & 1)
-					ret = wilc_spi_write_reg(wilc, 0x10c8 + i * 4, 1);
+					ret = wilc_spi_write_reg(wilc, 0x10c8 +
+								 i * 4, 1);
 				if (!ret)
 					break;
 				flags >>= 1;
-- 
2.9.3



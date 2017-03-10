X-GM-THRID: 6395948821343371264
X-Received: by 10.46.21.79 with SMTP id 15mr1280838ljv.8.1489172880059;
        Fri, 10 Mar 2017 11:08:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls1136256ljb.12.gmail; Fri, 10 Mar
 2017 11:07:59 -0800 (PST)
X-Received: by 10.25.151.69 with SMTP id z66mr2842715lfd.12.1489172879593;
        Fri, 10 Mar 2017 11:07:59 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id 82si27726wmg.3.2017.03.10.11.07.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:07:59 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so492489wma.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=mj+5w0x17sPZCKWlkdiwuf4wfnN7fIMvCEE3Zz5UAMQ=;
        b=R83UNRbcC8b6FfRVrc28QfkNiwOOL+YQGSXWAF6lHERNnNafgOwV2uCQc7/TSFIZao
         ijV0s4c59se4BVEaI3s3+UtTAO8HL3KGH6HuzMj+uFBIOkLQD8bDe0uyWQE4LYVe17g1
         uS3t+SpofQ4xdvAp3kGg7plmeog56hCoH4S/Xt+wn0UCN1BRjbj6Y8ilmivSmtNynTgI
         Frcoc4uDGPFb6q76afwIn7pbZUSWzDxn6Jla/mWrcLdMz7EbPUL1OZ5y374DGmsS95A9
         7kWEIFVj9PdC2c77cGwivzSPjey2NT7g8Yubm42hGo+CJFU2Z6I0JWe4fR8T90bYP9qH
         H9sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mj+5w0x17sPZCKWlkdiwuf4wfnN7fIMvCEE3Zz5UAMQ=;
        b=F7Oo4sZxZb9bRdzhlsdJzqYjGiSuuqYHB18TY13YzWq6lbZepm8hX/0h04jgM4f3yP
         8SbeUmqjLoHVtUWRRA4PWmnvKf8Yi+3Uv8quQxWpc0ZSxRtV5aqyIb4m+irR2GOF3EZe
         TwcAgn6W5FiV2/EmpDO6qBT8wmK2Toz0iEXlmykPxtr7wnuwG7ZViVvF+nILHpy/Ag4P
         CQurde+S7VGKaW70hLbJ1ruBI0mYd58dhqAayBnNsBuvSvlS8Z2Vq3t6D4I71taDLiVz
         Qn5X4cwzeP00ZDsnA7XpZx0iZYtHB1bQd3FEMvliZEG1sNRDUoEWsbu3b9ywkgq3ExHm
         l3eg==
X-Gm-Message-State: AFeK/H38axlLB6A34r38kFsxev04UhzRcjDpPgYiqOZ1ghMdnKCAoveVggmPN/q1+bq2Fg==
X-Received: by 10.28.113.200 with SMTP id d69mr447257wmi.10.1489172879385;
        Fri, 10 Mar 2017 11:07:59 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id n59sm14112675wrb.54.2017.03.10.11.07.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:07:58 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 6/7] staging: wilc1000: Use kernel preferred commenting style
Date: Fri, 10 Mar 2017 21:07:56 +0200
Message-Id: <20170310190756.20069-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Trims line size at 80 characters by moving parts of some comments in new
lines.

Problem found with checkpatch.pl

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 28 +++++++++++++++++++---------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 5687f9a..a1b0296 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -464,7 +464,9 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 		 **/
 		retry = 100;
 		do {
-			/* ensure there is room in buffer later to read data and crc */
+			/* ensure there is room in buffer later to
+			 * read data and crc
+			 */
 			if (rix < len2) {
 				rsp = rb[rix++];
 			} else {
@@ -549,7 +551,9 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 				sz -= nbytes;
 			}
 
-			/*  if any data in left unread, then read the rest using normal DMA code.*/
+			/*  if any data in left unread, then read the rest
+			 *  using normal DMA code.
+			 */
 			while (sz > 0) {
 				int nbytes;
 
@@ -559,9 +563,10 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
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
@@ -855,8 +860,9 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
 	 **/
 	g_spi.crc_off = 0;
 
-	/* TODO: We can remove the CRC trials if there is a definite way to reset */
-	/* the SPI to it's initial value. */
+	/* TODO: We can remove the CRC trials if there is a definite
+	 * way to reset the SPI to it's initial value.
+	 */
 	if (!spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET, &reg)) {
 		/* Read failed. Try with CRC off. This might happen when module
 		 * is removed but chip isn't reset
@@ -864,7 +870,9 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
 		g_spi.crc_off = 1;
 		dev_err(&spi->dev, "Failed internal read protocol with CRC on, retrying with CRC off...\n");
 		if (!spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET, &reg)) {
-			/* Reaad failed with both CRC on and off, something went bad */
+			/* Reaad failed with both CRC on and off,
+			 * something went bad
+			 */
 			dev_err(&spi->dev,
 				"Failed internal read protocol...\n");
 			return 0;
@@ -995,7 +1003,9 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 
 			ret = 1;
 			for (i = 0; i < g_spi.nint; i++) {
-				/* No matter what you write 1 or 0, it will clear interrupt. */
+				/* No matter what you write 1 or 0,
+				 * it will clear interrupt.
+				 */
 				if (flags & 1)
 					ret = wilc_spi_write_reg(wilc, 0x10c8 + i * 4, 1);
 				if (!ret)
-- 
2.9.3



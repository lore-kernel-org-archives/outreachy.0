X-GM-THRID: 6396242465121107968
X-Received: by 10.25.150.2 with SMTP id y2mr3291274lfd.21.1489241254500;
        Sat, 11 Mar 2017 06:07:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.73 with SMTP id y9ls1262091ljd.8.gmail; Sat, 11 Mar 2017
 06:07:34 -0800 (PST)
X-Received: by 10.25.204.21 with SMTP id c21mr3444176lfg.19.1489241254052;
        Sat, 11 Mar 2017 06:07:34 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id e72si221410wma.0.2017.03.11.06.07.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:07:34 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id v190so3093563wme.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mj+5w0x17sPZCKWlkdiwuf4wfnN7fIMvCEE3Zz5UAMQ=;
        b=HfvZ/AO1uLgYbXV0mWGUo06yri2rlb3ks/3h71/ik3mODpg4s2oFuNMmrvoQumbkFE
         XlTmL0KWxny36aRqYP8SHFz40hHd+A8pS+so2qF856QKDFluy56M9kox+82eCuU35jtI
         XQ7gpLnvpwjJZEutcEql75kdP3U04bD12IRwj2tF0ab0/IF84uQZ+86wTKm1/jNUmUn3
         kkipAtwbJpavxtpYkCTXmFHgTpV+RN2Ek9XLZZ1BKstAi9J7WBQmKtyxKTeQmBltlFdr
         GTqz3lDgtPGuXS+bIskkSjTDjTEanyJDvtXqAKLOU70wgE3BGYgvT05jjOPuHN1s54MP
         WmGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mj+5w0x17sPZCKWlkdiwuf4wfnN7fIMvCEE3Zz5UAMQ=;
        b=han1rfGdMbdqfX6MLlvDaWzlxdxjTVNRhO3WhmQiT+7lOnyjVDvwJPlpEy/U6+tsqj
         xS24ki9gsH9Iyss9Ne45eGWjBAfs3zYCFyvvc0DKJjlO55pIpLqcUw/Wh+OYimMX2p3Y
         kQJcywOHSSp3bVWsQgog7+dPCxiCrp7/mQrGjM1jUQGrTl7yuCzgy0Zv/Zwx7VxWMp/H
         wVMKU+PufuevaHoR9c+m6lNxgZ5wRpL6h3e8N7OJYHiK9yV7jktT7UN68Z9b/LaCOY3l
         AC5SCE/82N59sjf6qtEOAQImDRAqL0dvepbPjghExJANlrWRNglQk6DFe133E6y0y6RZ
         TUtA==
X-Gm-Message-State: AFeK/H0Uh62LDlS3hgiCSPn0baFWqypBIlHRpPOy+lEl52/Cq6E6O6O2vqPbNAO1Bm0KeQ==
X-Received: by 10.28.153.149 with SMTP id b143mr3312592wme.87.1489241253828;
        Sat, 11 Mar 2017 06:07:33 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id 36sm17497920wrz.8.2017.03.11.06.07.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:07:32 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 1/3] staging: wilc1000: Use kernel preferred commenting style
Date: Sat, 11 Mar 2017 16:07:23 +0200
Message-Id: <20170311140725.18461-2-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311140725.18461-1-diaconita.tamara@gmail.com>
References: <20170311140725.18461-1-diaconita.tamara@gmail.com>

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



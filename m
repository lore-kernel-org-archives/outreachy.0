X-GM-THRID: 6395948877374029824
X-Received: by 10.25.17.102 with SMTP id g99mr2782971lfi.6.1489172893399;
        Fri, 10 Mar 2017 11:08:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls1124958ljd.25.gmail; Fri, 10 Mar
 2017 11:08:12 -0800 (PST)
X-Received: by 10.46.69.7 with SMTP id s7mr3475527lja.18.1489172892950;
        Fri, 10 Mar 2017 11:08:12 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id 82si27726wmg.3.2017.03.10.11.08.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:08:12 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so492489wma.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=T++kHnt9fT9lwGaFRNDqMFDsSbN6TJNtiZv7WV86kNs=;
        b=TzZQfdQkmADW3YUrHaEXS0cDbJUXxTxsS5uhns3L8LUKa6iGDhlmc9gDsavwGQ/wS3
         I3QB6JiUeBPlnIH9A4ejg0au+aM2YtbdtSz31pPEfJiQDlD48RqcDKDZ5a9uExbK0U49
         3hgHdGej/QZKZ50++MVy/5uIt+CwWz0lJUYHt1vEfAk8w0V9R5ULy98tCOYvyqoq+B4U
         mFdzq+4m+xDjMAK5aoAyspGB+AO18IoFXs34RqBoCvA/BfJ7nrZ3tqpe7P1bpLzkkH6u
         1oR+99feMDiYUxkA2fztrY5lFr18W2ymYNZndHOCB/1BYLVmglVSk5FqmzPnoh4SEmh/
         fp3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=T++kHnt9fT9lwGaFRNDqMFDsSbN6TJNtiZv7WV86kNs=;
        b=sUdqPorHV24jVrA4utudvz6ezz1FwW5QMoGWMMPdqWw5KCkpJDkqhhp2Nxy8m07SSk
         YFecjNDE+o5vyV+YM7nqmXcQouuCLa+3SZ6/OrOzyRsFYjWaA95eX0cP3XT7V7jNV6US
         l5QILypmXG63aeJowbel5TP/c9TVrFpJQjhCcYcI5KcM5huSSoM6CAxqdGVmWf6AGq5o
         7UMLF4fkqTUgzNJOmN+WXj/GbC3Yr0UraYz3fMSYDswq+GmV3jJopkSX+xxs0qqdmycR
         4R+plrBfHuBoLfYGk+oLfGlIuEAhEn762nLNMy39iVlDDavwM95lXhC9NBlGogC3TGYA
         797w==
X-Gm-Message-State: AFeK/H3XXhBezsJrXyEQGvuGLL+Z03qglxjGoDAUyXACi2E+CQT+AuBK3KWndg8slo1Jfw==
X-Received: by 10.28.159.73 with SMTP id i70mr437249wme.78.1489172892764;
        Fri, 10 Mar 2017 11:08:12 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id o15sm14038511wra.61.2017.03.10.11.08.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:08:11 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 7/7] staging: wilc1000: Rearrange code
Date: Fri, 10 Mar 2017 21:08:10 +0200
Message-Id: <20170310190810.20123-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Trims line size at 80 characters by splitting the lines to improve code
readability.

Problem found with checkpatch.pl.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index a1b0296..298a30d 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
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
@@ -967,7 +968,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 			if (g_spi.nint > 5) {
 				wilc_spi_read_reg(wilc, 0x1a94,
 						  &irq_flags);
-				tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
+				tmp |= (((irq_flags >> 0) & 0x7) <<
+					  (IRG_FLAGS_OFFSET + 5));
 			}
 
 			unknown_mask = ~((1ul << g_spi.nint) - 1);
@@ -1007,7 +1009,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 				 * it will clear interrupt.
 				 */
 				if (flags & 1)
-					ret = wilc_spi_write_reg(wilc, 0x10c8 + i * 4, 1);
+					ret = wilc_spi_write_reg(wilc, 0x10c8 +
+								 i * 4, 1);
 				if (!ret)
 					break;
 				flags >>= 1;
-- 
2.9.3



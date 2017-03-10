X-GM-THRID: 6395948557689421824
X-Received: by 10.46.76.17 with SMTP id z17mr3557269lja.13.1489172819075;
        Fri, 10 Mar 2017 11:06:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.6.2 with SMTP id 2ls1053672ljg.13.gmail; Fri, 10 Mar 2017
 11:06:58 -0800 (PST)
X-Received: by 10.25.216.154 with SMTP id r26mr2958917lfi.7.1489172818650;
        Fri, 10 Mar 2017 11:06:58 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id p144si28734wme.2.2017.03.10.11.06.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:06:58 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so489273wma.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9lIs7fZN94ALWpY/CLQ/f9FrzhsxfOdtLTyOR9neufs=;
        b=qEBxmmkMtdflWaY7DCYL5lwg37FCcFJo8RnXxls/e0rYsBtMzZrYrtVtBPPFnnYoF4
         BFWaqLdSZtL4ZF7IH1Vmu8h7aXjmB/5ttU/CWFfTC/mga3mb/FKr8+BfUPn3DvNvfnR0
         qp6iV+G1QfdwNtLLIaRdvSxNysrEbmcr391C4Ndd/L1mM2d5sdMoBJ8T6qlzcY7s7wO7
         vvwXP8dIMmHVXZYf7Xke6ie9NIoqe78pdU3f5KefRXZdKReiky8d0HnXQpqBmunSYy9F
         AR4PqG7hbWS54diDkPGCgsfPa2LXrN0UCq8p4jfY8zC91/E/9pg4fuRZXqNyuHKe12dK
         Tqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9lIs7fZN94ALWpY/CLQ/f9FrzhsxfOdtLTyOR9neufs=;
        b=oV5Rc8VvDImOj4lwLumrPmOtJZggxv44XiCfjKFX58P/k6qSOgNbI9WxDqFoZqzfBh
         KYb+2U8aSFKQM3/t5HL8AeQOamY+K2iatrY8i50Ir5cd6mI0Dtx+CKquVI+TvFErlk7t
         er3ki2U66GpyCeIoZiGkLyMDjj+J7UFWvyY5cV1tlKWMJ6HrMojrdCW1W0VujphcEvNf
         Voh+igFmb8tBEqwuYHp+YXiyiybU87P+5zQYNFBZjsgTPBmlow0JJvF1HCIryvgmWUd6
         cpy614DEy7WoLFGQtwEp7DoaQb//QmSIGfcuvHUp7/MYnuSUDLaWn/vrjQrVy+s3b020
         k9yQ==
X-Gm-Message-State: AFeK/H20orn/1dxZxzNmiVj1ZjQcMa81idYy9EkqO2wqYboWyER99CpV+REGvCYB8yFzYA==
X-Received: by 10.28.111.3 with SMTP id k3mr414632wmc.39.1489172818436;
        Fri, 10 Mar 2017 11:06:58 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id b10sm357617wmi.34.2017.03.10.11.06.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:06:57 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 2/7] staging: wilc1000: Declare variables at top of function
Date: Fri, 10 Mar 2017 21:06:55 +0200
Message-Id: <20170310190655.19864-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Moving declaration of some variables at top of wilc_spi_read_int
function to imrpove code readability.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index b3c0594..887f45f 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -929,6 +929,9 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
 	int ret;
+	int happended, j;
+	u32 irq_flags;
+	u32 unkmown_mask;
 
 	if (g_spi.has_thrpt_enh) {
 		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
@@ -946,12 +949,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 		}
 		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
 
-		int happended, j;
-
 		j = 0;
 		do {
-			u32 irq_flags;
-
 			happended = 0;
 
 			wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
@@ -963,14 +962,12 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 				tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
 			}
 
-				u32 unkmown_mask;
-
-				unkmown_mask = ~((1ul << g_spi.nint) - 1);
+			unkmown_mask = ~((1ul << g_spi.nint) - 1);
 
-				if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
-					dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
-					happended = 1;
-				}
+			if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
+				dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
+				happended = 1;
+			}
 			j++;
 		} while (happended);
 
-- 
2.9.3



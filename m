X-GM-THRID: 6394528999032225792
X-Received: by 10.25.203.151 with SMTP id b145mr3332724lfg.17.1489230439104;
        Sat, 11 Mar 2017 03:07:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.221 with SMTP id e90ls1221681lji.30.gmail; Sat, 11 Mar
 2017 03:07:18 -0800 (PST)
X-Received: by 10.46.78.9 with SMTP id c9mr3869555ljb.20.1489230438721;
        Sat, 11 Mar 2017 03:07:18 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id b186si184054wme.1.2017.03.11.03.07.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 03:07:18 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id z63so2627481wmg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 03:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9lIs7fZN94ALWpY/CLQ/f9FrzhsxfOdtLTyOR9neufs=;
        b=EMaYDtuEAwEpocW6CidbSJv0D3S+xvMOtzXnyCk1FXE40pYTK0OGmi92pSR5Y3rjAI
         WAcHV1kPHkhObX+npTMmVRMM4VkRYlKecVlVQLhSQTABZepinXcwGxqAZUYqMM1j26cA
         N+WmBpb5TDoGDcD+1GydZW5CCxDBKyMPeI7GcChue0N/nimvtMWLhv0/8CkYgzPKw2mx
         5Shn0IOMGWrXlFCkDgTR+mwjUImmerbWE7/eck8gIbDFwG38I8hAuMxsFLF60sYpu/SV
         iNRbbMAA+kvNTyKXAUJvrUX7dUy6hYt3jTErxp4NVvBAgD56UL4UlarEvvJNvJ4Kkgj9
         YRiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9lIs7fZN94ALWpY/CLQ/f9FrzhsxfOdtLTyOR9neufs=;
        b=qzvPLPbGZK/LABR9w3+O49WNeljkmyTjdn8eaYYkAcLEX6XvRcB/y8DObYc63kkTTL
         FFR6I923AEJqM6jxGpVMfvUR6UQQoTfbwiLygXchUPTCN4xn7eYA1DYo1Q6K7RQUKtjH
         6JjnDqE/oXQz0yAdp2C9dqxZ9I7ngov601rlLhUPA+dN2N62MKvBFG9m6ht9VgHDAx3x
         80u/PKpTlBp+bVqWzOp5ZSImt8bvl3yU40CvZfYiA5Oi9o8d6kjUTdeL5rTr0h9gPIWB
         4/achQAiHiZxRx9zY58msL20tLC7/wJR5/wTM5o0M0UHlCc80bc7p58pLvnAYn2Uhban
         4UaA==
X-Gm-Message-State: AFeK/H2jcl9iXhrih9HDwp0A36gQBQgwehFD98JlN2WhvM9Lkso7CMozDnzwT1FZX0xecQ==
X-Received: by 10.28.167.203 with SMTP id q194mr2732332wme.111.1489230438488;
        Sat, 11 Mar 2017 03:07:18 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id z21sm16955080wrz.31.2017.03.11.03.07.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 03:07:17 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 2/3] staging: wilc1000: Declare variables at top of function
Date: Sat, 11 Mar 2017 13:06:51 +0200
Message-Id: <20170311110652.8384-3-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311110652.8384-1-diaconita.tamara@gmail.com>
References: <20170311110652.8384-1-diaconita.tamara@gmail.com>

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



X-GM-THRID: 6395629856318554112
X-Received: by 10.25.216.154 with SMTP id r26mr4492517lfi.7.1489415386985;
        Mon, 13 Mar 2017 07:29:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.217 with SMTP id c86ls1508081ljd.10.gmail; Mon, 13 Mar
 2017 07:29:46 -0700 (PDT)
X-Received: by 10.46.80.1 with SMTP id e1mr5354764ljb.10.1489415386358;
        Mon, 13 Mar 2017 07:29:46 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id p144si653131wme.2.2017.03.13.07.29.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 07:29:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id n11so10155148wma.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 07:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rfYPRUPSE4xpNf4vMVB+9H46ZIla9pVBQGubWUYubuE=;
        b=Jqlwc9PO4hQD4rTSCQMhC0FQf7ekU22YZu2z7XYCNfrT1r+Xo4ec7U5Z3cJ5cUtuEZ
         MXJq8uPQIelKM6yfPiI9lGw3IYdgcQ3Q/V7FIF5CkwjQZb1pkFBdBNW7JfOkidsZfeMJ
         ayX92RyA6HhLMf/26GoShdAkFNDOQVSy2p5wYg9NaNDIcasNnmru+hBHh+Ejob7LiB6f
         kJ7DPAfDHoAnl8CVfo6vpQeaozONdC6HYzM60N6TjgRRs7jz25aWRfRAnXjCviBhxsXO
         fmo4P/U4VM1ePWN+TgAZJNiXR/+mpKZoNC7Q17y6cJFzEznF+DrNlTVWcpUuBiyO9BtX
         3KeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rfYPRUPSE4xpNf4vMVB+9H46ZIla9pVBQGubWUYubuE=;
        b=Pcd47nOBMe0y8QgMOoAG1w4B7dnWjlU/R4bbsQrQ6vYBgNkTUZCj2RdfXKx1t0Pqrf
         sydM+oZLiDcmWufg0HVpdnCHpdiXsFXVWhadLUn+07hFidxCDXzQSXQypOFhzqOJuuGI
         mZJHF2AC3LFgnOwHQosaAPpf2bzUUOOHjKFIzlcHsAha0UfyP0yvlrbhReWSOwXOl5PZ
         7BrQFo69+zqBOh6EG1sp7Up/KE+je1bgZVUESyI8aGGH+k+50TU9IXqskYyRHJdzxcu/
         jZNLG7X3Z/XBIUxweuDLAC/Era472qrkjJQfS8njKtYYLbK+cHybkScG1ol1LMAEH3KW
         V2Wg==
X-Gm-Message-State: AFeK/H3JubxNad/u48r67JhC2avTZqQUkHTEP1Rdg/cwZXY2FpILpvmmXQl79ysxbLMA4Q==
X-Received: by 10.28.226.215 with SMTP id z206mr9829430wmg.92.1489415386143;
        Mon, 13 Mar 2017 07:29:46 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id k43sm25228551wrk.42.2017.03.13.07.29.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 07:29:44 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 2/3] staging: wilc1000: Correct name of variables
Date: Mon, 13 Mar 2017 16:29:25 +0200
Message-Id: <20170313142926.12262-3-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170313142926.12262-1-diaconita.tamara@gmail.com>
References: <20170313142926.12262-1-diaconita.tamara@gmail.com>

Correct misspelled variables:
'unkmown_mask' to 'unknown_mask' and
'happended' to happened.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 1a8e6c2..52dd717 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -939,9 +939,9 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 	int ret;
 	u32 tmp;
 	u32 byte_cnt;
-	int happended, j;
+	int happened, j;
 	u32 irq_flags;
-	u32 unkmown_mask;
+	u32 unknown_mask;
 
 	if (g_spi.has_thrpt_enh) {
 		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
@@ -961,7 +961,7 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 			j = 0;
 			do {
 
-				happended = 0;
+				happened = 0;
 
 				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
 				tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
@@ -973,15 +973,15 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 				}
 
 				{
-					unkmown_mask = ~((1ul << g_spi.nint) - 1);
+					unknown_mask = ~((1ul << g_spi.nint) - 1);
 
-					if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
-						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
-						happended = 1;
+					if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
+						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
+						happened = 1;
 					}
 				}
 				j++;
-			} while (happended);
+			} while (happened);
 		}
 
 		*int_status = tmp;
-- 
2.9.3



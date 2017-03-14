X-GM-THRID: 6395629856318554112
X-Received: by 10.46.8.90 with SMTP id g26mr6376663ljd.16.1489493447024;
        Tue, 14 Mar 2017 05:10:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.143 with SMTP id u137ls1829019lja.51.gmail; Tue, 14 Mar
 2017 05:10:46 -0700 (PDT)
X-Received: by 10.46.83.7 with SMTP id h7mr6539896ljb.24.1489493446644;
        Tue, 14 Mar 2017 05:10:46 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id n128si756845wmf.2.2017.03.14.05.10.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 05:10:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id g10so23673485wrg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 05:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+jjrhb9Ig0Hh+OOgjd8XpeFBZhD4yJuYSB6XA1mVEJw=;
        b=JY122up3W1qkySA8UJ5oSD3mFvDlQUOaTZuwmV5pfkhBNlr77koIPUbqEMLrZxLenC
         IjDYzfkmflJ0smJ65s1K2clMk0bmCPoEapS78K2lUl9Sv6dqLK4d2DcyM6NQiuND/FoR
         eg3YHreSUVpcO0yrur7C4tFPbox3G+aLrEBeunskwV/dmZlzjAVbUvo/gZrQvq1oli98
         mg4DvQL+v+TFUwJdkSlkhyBg5q7hd0tg3bh53AmTxsoLVZ2DXrfARuZbrv1ZzAP6sSyr
         FxNCTS7niXBHCsSR0jf8caStjGFy5KnwcZR/eAWdjPvJzBTRCEkrgtl3Xzh9bLEWrBke
         Sg5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=+jjrhb9Ig0Hh+OOgjd8XpeFBZhD4yJuYSB6XA1mVEJw=;
        b=fMZfcRMlb9eBktc/QF53FUWCsFvIpciAbcwR3vH/1D/d1KugjXg2NVoSJvb+l+u06b
         D4zl5FUEuVfyap+ViTu5mgnrVKFpXg/MbKuzLBrTWl0APowDdaK857FPPrp1YN6xgPGR
         q2wUMQI64NnyKdiwrfOA0CC+PHFmKpjzuTCFsRRDS9A5mGGbUzdeHyPR60J9Y9bO6oyB
         e2AZ0nWgnN/H/h6hfNnba08nrcXSeJY1K1+M0cCsp+iEPoqeNtalvJLaaVr8tF2ambSR
         3B3YOxO+J10UDRNfjOqDSg4QdAVH2f41qVAPS6fHsxUtMXYr8rkblZu7E5z8zGIuARkx
         4ojQ==
X-Gm-Message-State: AMke39mZNweTfcd6NzJjqPGarQi01Q+pU5ZM0UfnQ3DAn9X6f/nUBHO1vTggGSo316n+Gw==
X-Received: by 10.223.176.7 with SMTP id f7mr33647591wra.124.1489493446397;
        Tue, 14 Mar 2017 05:10:46 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:2816:d9d2:5dd8:da73])
        by smtp.gmail.com with ESMTPSA id 53sm18899272wrt.52.2017.03.14.05.10.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 05:10:45 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v4 1/3] staging: wilc1000: Declare variables to top of function
Date: Tue, 14 Mar 2017 14:10:36 +0200
Message-Id: <20170314121038.22658-2-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170314121038.22658-1-diaconita.tamara@gmail.com>
References: <20170314121038.22658-1-diaconita.tamara@gmail.com>

Move declaration of variables to top of function to make the code more
readable.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v3:
*Removed the correction of 'unkmown_mask' from the patch.

Changes since v2:
*Correct error of expression: from 'at top of function'
to 'to top of function'.
*Change tense to imperative: from 'moving declaration' to
'move declaration'.

 drivers/staging/wilc1000/wilc_spi.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 54a5311..4364aee 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -935,14 +935,16 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
 	int ret;
+	u32 tmp;
+	u32 byte_cnt;
+	int happended, j;
+	u32 unknown_mask;
+	u32 irq_flags;
 
 	if (g_spi.has_thrpt_enh) {
 		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
 					int_status);
 	} else {
-		u32 tmp;
-		u32 byte_cnt;
-
 		ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE,
 					&byte_cnt);
 		if (!ret) {
@@ -953,12 +955,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
 
 		{
-			int happended, j;
-
 			j = 0;
 			do {
-				u32 irq_flags;
-
 				happended = 0;
 
 				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
@@ -971,8 +969,6 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 				}
 
 				{
-					u32 unknown_mask;
-
 					unknown_mask = ~((1ul << g_spi.nint) - 1);
 
 					if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
-- 
2.9.3



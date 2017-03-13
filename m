X-GM-THRID: 6395629856318554112
X-Received: by 10.46.1.12 with SMTP id 12mr5751816ljb.30.1489415374880;
        Mon, 13 Mar 2017 07:29:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.28 with SMTP id s28ls876135ljd.22.gmail; Mon, 13 Mar
 2017 07:29:34 -0700 (PDT)
X-Received: by 10.25.145.17 with SMTP id t17mr4752453lfd.23.1489415374340;
        Mon, 13 Mar 2017 07:29:34 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id f7si728046wmg.3.2017.03.13.07.29.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 07:29:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id u132so10138225wmg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 07:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WYyVGHxC9JVAFoSV/ZWyJCIi1H/u7PAUzBPp8d+RkEA=;
        b=KLK7YLCCbjEaiSxYMQ260kxPW+ZU8TJCXfXzOPft6EF5TlBaVvUPRnCrVlUuQX01NO
         Cjj7H1BGslftg6zIj/NSikzCNEkpjTkqSE1KsjzBhQoJFoV1TkdUpx3042qekTP9Si5l
         EJrB0eBJ4BnkkLenVPAmis4obkO0ECnHWCvMQgXESsuVFypIuROSeQLXxh0iBUnhvdDN
         a7ulXkwVxsJmaZ948cM9JZiJ1LCWM5/ZVsFl7wtjKrE32fgql/TNGul/XxwMtgadfCNf
         DceksUWYXJF80I6uDQURmMjfxcPTB0C7UBNccacDZZR1McHZAIGRxegwgtEF2XBTSaKz
         PruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WYyVGHxC9JVAFoSV/ZWyJCIi1H/u7PAUzBPp8d+RkEA=;
        b=PlLKqX4Ih4FPyk9ZRYWAYwOnqSxmLZzLmmirA6ZGkjs42CooF6Y777txQJbcMAlRPO
         wfVcmhrVSS7NvdWn8nLSt19Q0B/WDz3aoLx3/p71RVvyHRPPnEd4eejgniW+5No2uSHY
         X2Aj+1W4RHXJ942LbdH5UpYmdRhGrhduxkZLJlGwscYSQzRxi4epVs7GCUvOjIT5dNTF
         MvqdBVKOs8puNEGbN5nb4TNZ+TOKreoY5czq+nTBqFRybwy5MXfsnnaRudOHU7U75EsD
         LfuNGo7kKnvncimZomwUXGC0/8dJs1Ci0JGS+7xAuD06xHyMkcj4Jzo6xGRi4ufrZVTw
         XLdg==
X-Gm-Message-State: AFeK/H2baS+2SoY5ZzIu4xOgdjGvgqvtKIfQRHRdKalO/gaqENqUaliLiIBvAFZlPdESWw==
X-Received: by 10.28.165.70 with SMTP id o67mr9958970wme.11.1489415374171;
        Mon, 13 Mar 2017 07:29:34 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id z198sm11536858wmz.24.2017.03.13.07.29.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 07:29:33 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 1/3] staging: wilc1000: Declare variables to top of
Date: Mon, 13 Mar 2017 16:29:24 +0200
Message-Id: <20170313142926.12262-2-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170313142926.12262-1-diaconita.tamara@gmail.com>
References: <20170313142926.12262-1-diaconita.tamara@gmail.com>

Move declaration of variables to top of function to improve
code readability.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v2:
*Correct error of expression: from 'at top of function'
to 'to top of function'.
*Change tense to imperative: from 'moving declaration' to
'move declaration'.

 drivers/staging/wilc1000/wilc_spi.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index d5fd0e7..1a8e6c2 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -937,13 +937,16 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
 	int ret;
+	u32 tmp;
+	u32 byte_cnt;
+	int happended, j;
+	u32 irq_flags;
+	u32 unkmown_mask;
 
 	if (g_spi.has_thrpt_enh) {
 		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
 					int_status);
 	} else {
-		u32 tmp;
-		u32 byte_cnt;
 
 		ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE,
 					&byte_cnt);
@@ -955,11 +958,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
 
 		{
-			int happended, j;
-
 			j = 0;
 			do {
-				u32 irq_flags;
 
 				happended = 0;
 
@@ -973,8 +973,6 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 				}
 
 				{
-					u32 unkmown_mask;
-
 					unkmown_mask = ~((1ul << g_spi.nint) - 1);
 
 					if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
-- 
2.9.3



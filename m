X-GM-THRID: 825509281792
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fa9e50e85482f5ad,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.45.7 with SMTP id i7mr796088lam.9.1424372729981;
        Thu, 19 Feb 2015 11:05:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.104 with SMTP id ln8ls179675lac.94.gmail; Thu, 19 Feb
 2015 11:05:29 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr799418lal.3.1424372729681;
        Thu, 19 Feb 2015 11:05:29 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x244.google.com (mail-we0-x244.google.com. [2a00:1450:400c:c03::244])
        by gmr-mx.google.com with ESMTPS id ev8si6463445wib.3.2015.02.19.11.05.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 11:05:29 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) client-ip=2a00:1450:400c:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x244.google.com with SMTP id q59so409030wes.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 11:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=GDLatP/eAmL/d9OiA5WdhfHt0i2/o6sO1n/OvT6Gdo8=;
        b=gQkyu42UbXzf5LfFYlyyPZgn0PHk1fKsCl5ahleYLcNUUPcctF5rWfi/o1yyqONOBU
         j/x5F8HTv4TWOrc6RkN9+6vELX87p/IZiuSSYK6320j9diBtqZoU2V62qLbKByPjQRTX
         N6Czk90XUV+LfL7wjhbJFzu1qCDr5VHTZ9kEhtRMNQa0Oe/B+3ooqpAm9t6xqJ/AQqEw
         xRlI08agVOgRPh3kh7hOTfg/D5zI6z63h8IB0JXwr54yQyq68THlH6FyWzrLfjp6mKRV
         OR+pdCSisVOMi96RoufsXZ9dLjTTWz5+Q/gEj8anH/susco/v9hnqyuw15kjUzfG2vhf
         6kcw==
X-Received: by 10.180.208.20 with SMTP id ma20mr9121107wic.22.1424372729531;
        Thu, 19 Feb 2015 11:05:29 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id x6sm38640791wjf.24.2015.02.19.11.05.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 11:05:28 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: drivers: dma: ste_dma40: Fix line over 80 characters warning
Date: Thu, 19 Feb 2015 21:05:19 +0200
Message-Id: <1424372719-27783-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: line over 80 characters
chackpatch.pl warning in ste_dma40.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/dma/ste_dma40.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 5cffef1..57dfe05 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -1011,7 +1011,8 @@ static int d40_psize_2_burst_size(bool is_log, int psize)
  * The dma only supports transmitting packages up to
  * STEDMA40_MAX_SEG_SIZE * data_width, where data_width is stored in Bytes.
  *
- * Calculate the total number of dma elements required to send the entire sg list.
+ * Calculate the total number of dma
+	elements required to send the entire sg list.
  */
 static int d40_size_2_dmalen(int size, u32 data_width1, u32 data_width2)
 {
@@ -1975,7 +1976,8 @@ static int d40_config_memcpy(struct d40_chan *d40c)
 
 	if (dma_has_cap(DMA_MEMCPY, cap) && !dma_has_cap(DMA_SLAVE, cap)) {
 		d40c->dma_cfg = dma40_memcpy_conf_log;
-		d40c->dma_cfg.dev_type = dma40_memcpy_channels[d40c->chan.chan_id];
+		d40c->dma_cfg.dev_type =
+		dma40_memcpy_channels[d40c->chan.chan_id];
 
 		d40_log_cfg(&d40c->dma_cfg,
 			    &d40c->log_def.lcsp1, &d40c->log_def.lcsp3);
@@ -2518,7 +2520,8 @@ d40_prep_memcpy_sg(struct dma_chan *chan,
 	if (dst_nents != src_nents)
 		return NULL;
 
-	return d40_prep_sg(chan, src_sg, dst_sg, src_nents, DMA_NONE, dma_flags);
+	return d40_prep_sg(chan, src_sg, dst_sg,
+				src_nents, DMA_NONE, dma_flags);
 }
 
 static struct dma_async_tx_descriptor *
@@ -3216,7 +3219,8 @@ static struct d40_base * __init d40_hw_detect_init(struct platform_device *pdev)
 	 */
 	rev = AMBA_REV_BITS(pid);
 	if (rev < 2) {
-		d40_err(&pdev->dev, "hardware revision: %d is not supported", rev);
+		d40_err(&pdev->dev,
+			"hardware revision: %d is not supported", rev);
 		goto failure;
 	}
 
-- 
1.9.1



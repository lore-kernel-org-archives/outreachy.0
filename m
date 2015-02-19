X-GM-THRID: 825509281792
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fa9e50e85482f5ad
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.4.229 with SMTP id n5mr825922lan.1.1424376385234;
        Thu, 19 Feb 2015 12:06:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.102 with SMTP id ud6ls180444lac.26.gmail; Thu, 19 Feb
 2015 12:06:24 -0800 (PST)
X-Received: by 10.112.174.36 with SMTP id bp4mr811780lbc.15.1424376384835;
        Thu, 19 Feb 2015 12:06:24 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x243.google.com (mail-wg0-x243.google.com. [2a00:1450:400c:c00::243])
        by gmr-mx.google.com with ESMTPS id ta1si6475460wic.1.2015.02.19.12.06.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 12:06:24 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) client-ip=2a00:1450:400c:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x243.google.com with SMTP id b13so2689291wgh.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 12:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=GDLatP/eAmL/d9OiA5WdhfHt0i2/o6sO1n/OvT6Gdo8=;
        b=LTCvoork1tzDDcsTgqtIJGfqL63hijk0lyxB78yDChynDp3s9I74HYBEQDvLTwdkHZ
         KN4OJJhba+nOER6fUfhQhx6RcRDJ1ijz443oLBCkXJ56WIRZAKn+MsJHUF6qxS4P1Xm9
         Gz/y8xRPuxX/0qtMSwQFyoQVkJ7zNLl/e47ub9YafIQspzTbOjPDAo1JqdB+lZUIBsfI
         OkT9NRHBzn2AWMCCKbkX/fp/WpNaYQA9Tv8YKIPXEBhuEAJeKeIB4cAV7LcTV1w2FGgb
         sXePAydvtv00lYn6Ti2+2csNHTKrCtCwMItlbHscz2j4e3s6nAB+/no6ywShtLizxSf7
         9SEw==
X-Received: by 10.194.110.69 with SMTP id hy5mr12371643wjb.121.1424376384717;
        Thu, 19 Feb 2015 12:06:24 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id kr5sm33892953wjc.1.2015.02.19.12.06.22
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 12:06:23 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: drivers: dma: ste_dma40: Fix line over 80 characters warning
Date: Thu, 19 Feb 2015 22:06:16 +0200
Message-Id: <1424376376-29500-1-git-send-email-haticeerturk27@gmail.com>
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



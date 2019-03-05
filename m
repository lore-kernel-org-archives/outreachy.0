X-GM-THRID: 6664854131840122880
X-Received: by 2002:a50:ba2b:: with SMTP id g40mr3210366edc.1.1551782277023;
        Tue, 05 Mar 2019 02:37:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:f182:: with SMTP id gs2ls4123198ejb.5.gmail; Tue, 05
 Mar 2019 02:37:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqwM2yhv8xexMVSCg3Q90wsXLeag0Pv5hngL+O8WRGcfb3hm5tQ0sAe9c51v1KtYH5fx6FqU
X-Received: by 2002:a17:906:6dce:: with SMTP id j14mr2811973ejt.4.1551782276036;
        Tue, 05 Mar 2019 02:37:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551782276; cv=none;
        d=google.com; s=arc-20160816;
        b=aaf34kFsg9nJnYgR+96QU2uqP5eOGRQcwSrzea/af39LBK2WSn5laEQz4T4BqTvs+c
         7nIx9H97Vz27I8hmvLxpAAGsZekxVjl4e3xqaPMz8W7dWcGD14tY2IgYiNNZPDwWLx60
         eoKa8ZusP3Y3SW4LpOCz/dL+J08eAeRtz0HtqcHVMPvqO+I5WHbk2FLt/J7pLJoqL+i6
         xamFaWU8xTrEemM/0bJfNYrSuoaPHhV2If8aG9ekOuNVxIQe0yLljkCBgQKT/Ao8Fzij
         oIjSRh7Fp84DJKpyxpbi2Sxe+M1pPK/PdJxm3faiPgVBUvt8ANEIevvGxKn1h26ZO5s0
         BfWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=4ta2dDPbaPcsnCesnkHbiBTsIbv+nX1a74pgpgXFDhk=;
        b=NcCvm27P49F8frILx0jC3A8V3ei/d8BM3KSrJCXT6RobZMLCsk2Npj24kRv9532xdm
         NxK7Me28eWJlgihFqgXDHwmjGs2xsJj1LSSg99K+rQbJBL3sKKraGpNFKCmg+baaJFY5
         GgWKYoPLADJvpR+8UTB+LYeBTYNEQ6fESVGL2LXCiQ+cz8QJdSiFdLcrPCwkpzwPSn7+
         EJAApQhOmGMRUc8chZ+ghRZKUoXwczh4iFpfwpRc4DJm2Y8sq0//nT4WF5S+qiXZtWiK
         fQKmVclUHysErjPkk3eu+RdsIKDMkYwU6pXw5eyhn2nAB7F3QwUxLT2Hpfi1YMnHJlld
         GEUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BN0RdAD2;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a7si449324edb.1.2019.03.05.02.37.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 02:37:56 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BN0RdAD2;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id o10so1815413wmc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 02:37:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4ta2dDPbaPcsnCesnkHbiBTsIbv+nX1a74pgpgXFDhk=;
        b=BN0RdAD2Scotd8jFZCQOmqnGqwiLEMB6XJBfgN6TOKHL6fc+sYKN1CYnTJQ+AK8GNX
         PzYN+nykPXEC0qbyst0a7RoaoKGlI87NneZLOSeydy7FoBHn3+N6k6OnatycRyCgv60M
         Ya13jkDa/kCF2sKfnqQw42WpA1uBGMdkT8X5/hwNozj0XbzEvBWX7nJZ/nGT6Fytborp
         D5ouVtcImJBxpmyBS93mNiHIjl9EUxJcB+jVZ4aKhTqAQFJE9FYPYXhi3jl+AZhyJXcC
         4xAGncT5RXOz+XSovisujz0g4Yr4G153xLI9YrPDIM053I82caC9W3gUP1JliMIZtUk+
         pLrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4ta2dDPbaPcsnCesnkHbiBTsIbv+nX1a74pgpgXFDhk=;
        b=uOSROfnl4U2En58LWdvnjrqsOh6MAvr/nq5O1j12o75awdPyo5Pbx0XYskXE/QJojY
         d4PndBWPo8IFXi1h1y+KxKIUDiFmbC+yHnnua0wLwvT5PgZbPl/Y7j2sb54FPhn0Dm4m
         x/o8APmlDlVF3NXPcuG7kQHmzQReSUAvGvnUQchKgsU1emyKgRyTN0pCAbWSrx2stgP5
         TZQb8mpi7v4ZtJr/gwxRkZTrY1WKMboEIHsXr9ZxCRuSfkx4xljjpGcEpd3k0UEO1X7M
         zV2ZTmsFoY/lTNMcncX55d9Bd9tTc/8GnAwnoOrfqv2hlHpUZpw0ZFq/5akJTp8UrJpX
         8SQg==
X-Gm-Message-State: APjAAAVTyE5hEEqk1ERjqczYYhY+USKvbbvOmnwXy3jYloNxEbyb3K+k
	ZrGvb8yfv6QNC5oXUePLuOXjo3XV
X-Received: by 2002:a1c:ce06:: with SMTP id e6mr2339679wmg.41.1551782275200;
        Tue, 05 Mar 2019 02:37:55 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id v4sm7935688wmg.1.2019.03.05.02.37.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 02:37:54 -0800 (PST)
Date: Tue, 5 Mar 2019 12:37:53 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ralink-gdma: Fix various warnings in ralink-gdma
Message-ID: <20190305103753.GA15177@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix warnings regarding uint32_t, unsigned int, and
unnecessary line continuations

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 52 ++++++++++++++++---------------
 1 file changed, 27 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index d78042e..d3afe5d 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -164,7 +164,7 @@ static inline uint32_t gdma_dma_read(struct gdma_dma_dev *dma_dev,
 }
 
 static inline void gdma_dma_write(struct gdma_dma_dev *dma_dev,
-				  unsigned reg, uint32_t val)
+				  unsigned int reg, uint32_t val)
 {
 	writel(val, dma_dev->base + reg);
 }
@@ -268,7 +268,7 @@ static int gdma_dma_terminate_all(struct dma_chan *c)
 
 static void rt305x_dump_reg(struct gdma_dma_dev *dma_dev, int id)
 {
-	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, " \
+	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, "
 			"ctr1 %08x, intr %08x, signal %08x\n", id,
 			gdma_dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)),
 			gdma_dma_read(dma_dev, GDMA_REG_DST_ADDR(id)),
@@ -283,7 +283,7 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 	struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);
 	dma_addr_t src_addr, dst_addr;
 	struct gdma_dma_sg *sg;
-	uint32_t ctrl0, ctrl1;
+	u32 ctrl0, ctrl1;
 
 	/* verify chan is already stopped */
 	ctrl0 = gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id));
@@ -298,14 +298,14 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 	if (chan->desc->direction == DMA_MEM_TO_DEV) {
 		src_addr = sg->src_addr;
 		dst_addr = chan->fifo_addr;
-		ctrl0 = GDMA_REG_CTRL0_DST_ADDR_FIXED | \
-			(8 << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) | \
+		ctrl0 = GDMA_REG_CTRL0_DST_ADDR_FIXED |
+			(8 << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) |
 			(chan->slave_id << GDMA_RT305X_CTRL0_DST_REQ_SHIFT);
 	} else if (chan->desc->direction == DMA_DEV_TO_MEM) {
 		src_addr = chan->fifo_addr;
 		dst_addr = sg->dst_addr;
-		ctrl0 = GDMA_REG_CTRL0_SRC_ADDR_FIXED | \
-			(chan->slave_id << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) | \
+		ctrl0 = GDMA_REG_CTRL0_SRC_ADDR_FIXED |
+			(chan->slave_id << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) |
 			(8 << GDMA_RT305X_CTRL0_DST_REQ_SHIFT);
 	} else if (chan->desc->direction == DMA_MEM_TO_MEM) {
 		/*
@@ -314,8 +314,8 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 		 */
 		src_addr = sg->src_addr;
 		dst_addr = sg->dst_addr;
-		ctrl0 = GDMA_REG_CTRL0_SW_MODE | \
-			(8 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \
+		ctrl0 = GDMA_REG_CTRL0_SW_MODE |
+			(8 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
 			(8 << GDMA_REG_CTRL1_DST_REQ_SHIFT);
 	} else {
 		dev_err(dma_dev->ddev.dev, "direction type %d error\n",
@@ -323,8 +323,8 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 		return -EINVAL;
 	}
 
-	ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) | \
-		 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) | \
+	ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) |
+		 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) |
 		 GDMA_REG_CTRL0_DONE_INT | GDMA_REG_CTRL0_ENABLE;
 	ctrl1 = chan->id << GDMA_REG_CTRL1_NEXT_SHIFT;
 
@@ -342,8 +342,8 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 
 static void rt3883_dump_reg(struct gdma_dma_dev *dma_dev, int id)
 {
-	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, " \
-			"ctr1 %08x, unmask %08x, done %08x, " \
+	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, "
+			"ctr1 %08x, unmask %08x, done %08x, "
 			"req %08x, ack %08x, fin %08x\n", id,
 			gdma_dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)),
 			gdma_dma_read(dma_dev, GDMA_REG_DST_ADDR(id)),
@@ -361,7 +361,7 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 	struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);
 	dma_addr_t src_addr, dst_addr;
 	struct gdma_dma_sg *sg;
-	uint32_t ctrl0, ctrl1;
+	u32 ctrl0, ctrl1;
 
 	/* verify chan is already stopped */
 	ctrl0 = gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id));
@@ -377,21 +377,21 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 		src_addr = sg->src_addr;
 		dst_addr = chan->fifo_addr;
 		ctrl0 = GDMA_REG_CTRL0_DST_ADDR_FIXED;
-		ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \
+		ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
 			(chan->slave_id << GDMA_REG_CTRL1_DST_REQ_SHIFT);
 	} else if (chan->desc->direction == DMA_DEV_TO_MEM) {
 		src_addr = chan->fifo_addr;
 		dst_addr = sg->dst_addr;
 		ctrl0 = GDMA_REG_CTRL0_SRC_ADDR_FIXED;
-		ctrl1 = (chan->slave_id << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \
-			(32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) | \
+		ctrl1 = (chan->slave_id << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
+			(32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) |
 			GDMA_REG_CTRL1_COHERENT;
 	} else if (chan->desc->direction == DMA_MEM_TO_MEM) {
 		src_addr = sg->src_addr;
 		dst_addr = sg->dst_addr;
 		ctrl0 = GDMA_REG_CTRL0_SW_MODE;
-		ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \
-			(32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) | \
+		ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
+			(32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) |
 			GDMA_REG_CTRL1_COHERENT;
 	} else {
 		dev_err(dma_dev->ddev.dev, "direction type %d error\n",
@@ -399,8 +399,8 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 		return -EINVAL;
 	}
 
-	ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) | \
-		 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) | \
+	ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) |
+		 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) |
 		 GDMA_REG_CTRL0_DONE_INT | GDMA_REG_CTRL0_ENABLE;
 	ctrl1 |= chan->id << GDMA_REG_CTRL1_NEXT_SHIFT;
 
@@ -741,7 +741,9 @@ static void gdma_dma_tasklet(unsigned long arg)
 				atomic_inc(&dma_dev->cnt);
 				gdma_start_transfer(dma_dev, chan);
 			} else {
-				dev_dbg(dma_dev->ddev.dev, "chan %d no desc to issue\n", chan->id);
+				dev_dbg(dma_dev->ddev.dev,
+					"chan %d no desc to issue\n",
+					chan->id);
 			}
 			if (!dma_dev->chan_issued)
 				break;
@@ -753,7 +755,7 @@ static void gdma_dma_tasklet(unsigned long arg)
 
 static void rt305x_gdma_init(struct gdma_dma_dev *dma_dev)
 {
-	uint32_t gct;
+	u32 gct;
 
 	/* all chans round robin */
 	gdma_dma_write(dma_dev, GDMA_RT305X_GCT, GDMA_REG_GCT_ARBIT_RR);
@@ -767,7 +769,7 @@ static void rt305x_gdma_init(struct gdma_dma_dev *dma_dev)
 
 static void rt3883_gdma_init(struct gdma_dma_dev *dma_dev)
 {
-	uint32_t gct;
+	u32 gct;
 
 	/* all chans round robin */
 	gdma_dma_write(dma_dev, GDMA_REG_GCT, GDMA_REG_GCT_ARBIT_RR);
@@ -819,7 +821,7 @@ static int gdma_dma_probe(struct platform_device *pdev)
 	match = of_match_device(gdma_of_match_table, &pdev->dev);
 	if (!match)
 		return -EINVAL;
-	data = (struct gdma_data *) match->data;
+	data = (struct gdma_data *)match->data;
 
 	dma_dev = devm_kzalloc(&pdev->dev,
 			       struct_size(dma_dev, chan, data->chancnt),
-- 
2.7.4



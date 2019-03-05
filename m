X-GM-THRID: 6664861839759769600
X-Received: by 2002:a2e:5d8b:: with SMTP id v11mr1315186lje.4.1551790560852;
        Tue, 05 Mar 2019 04:56:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:6547:: with SMTP id z68ls2397535ljb.5.gmail; Tue, 05 Mar
 2019 04:56:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqxO/ZYG/Dl9pnpg01dilCJiDJlhueUxDeb388HANvVzfiahvyVy65fKL75rpx1XWuUX17nT
X-Received: by 2002:a2e:9ec6:: with SMTP id h6mr1348254ljk.23.1551790559990;
        Tue, 05 Mar 2019 04:55:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551790559; cv=none;
        d=google.com; s=arc-20160816;
        b=ACjHq9NI5lBSHEAcfx4mmv8Y8jLI7KESar4CEscdlE5wEuHAuZETl8e0wFBBVMjfvb
         hs7ejpney54Eu9lImnEk+FZKs/tZFUlmqznde0ryrpYERnGO1tIeAgs5bRtICvAC1Pl5
         bu+ZbiJCZQJzbnciYt1b+d5Eb6wJMiZx9fA5kqOb7mdPuwaqvBNMTt5iXziCLvJIXmJ9
         WiSIsUPhl6OsdsgVgH0+JUv7z3Ih6vl4f2QoHjKcLpC9UkjEQgRqcrMyGKYDhvCxyRqj
         srAcYkp33H2N03jEalyN/9/MPemtdYRHIX0QWeKjH0yKR9lcVZKqBgkkjjB3jqqEKxTR
         fDlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=L1e/X/gR+fN6T002OJo2s5s+TIASvYzFMX+m4DZTgKA=;
        b=zCdzS641+GQQ6gkv7HH2CQimbwQEaxcSuA+sfnqDXyHTbLtdNrvC8K+c5yJFjV+h//
         jT2dUdPckdvtIF8kKMt3yHLGHi4V1ZLrhowdDLhc7n9K8lQTWLlr/KutpriiptdTqFW/
         Yn1YLDo9MUZXD90bLSgEboggAE5ILgb4SIg/2mVhtIC/UcFRsyQxWBrXrNfd2/iJQvBt
         n7d1FgDj9BI41XjCOQFNCfTSTxR3zkLchtFk8bUb9ZqBf07TimVVryANHP77vY6P5AbF
         fg2pwxlMZDvJgBEPsARq8KdwvJT2RZMD47KRV8jLUdQdhbdYAp0jLlsCRwjQ3iN7oGbT
         0LaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VP4B7BgU;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id h25si508256lja.3.2019.03.05.04.55.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 04:55:59 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VP4B7BgU;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id q187so2463347wme.5
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 04:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=L1e/X/gR+fN6T002OJo2s5s+TIASvYzFMX+m4DZTgKA=;
        b=VP4B7BgUG7IE0nbi7LyauR72P2BD70HiGrXYfB31x1viydjZVMp7inokKis1H19r75
         JMqf5mkD37iiU+5xGk9mHd/cmt0+MqZR+PmpT6sI/AVp1q1VcFeQ6Sibjqv/RzJrmCJa
         JrPpu1beK3xIZbEPBPXEGRauI8oNpd7+S/KmXCz+BDesWWhcS3urpqLleFSFLGANZfA6
         qIX01trDeHONqAMEAMpJaq72cQS7rXjI3aphazGedXxLvfPC64zRDxyqsDxpal2tBCkZ
         PigSmewnk1Zh0MkuFqiBq0l282h1ABOnjv+wgEd2bhtv8dAzqc1hPgowkCaeeue4RqL9
         kWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=L1e/X/gR+fN6T002OJo2s5s+TIASvYzFMX+m4DZTgKA=;
        b=nffU9tNN+UKMMefeMVmLsWze5zHFPNCkheUIVrpYOqiykWH4b+b34c04CDjiApMqDo
         fQfWcI/3Zl6lTT9k/cn0uhuYAIjGng7nHa3Yg8soTEzZfHST0HOrzs/GbfuCjZTWzEng
         pIJaoKWEUBQHskhzVvUK1boZBRveFDeC3DVA3LYUpyQUQODoNQOMX1cOClL8YaMCepzN
         mo18zaiAhJqwdfKVS5HAaf0thVwiyFNWhlmhQksNXQjCn46GlXxhrWnWRHco61KT2l2e
         hLlQFmM5/Hk8eb7n+TPXAvgfx6W2BbkVUtbFP25Rd3GN5Vtm77GEeYbepAjsqUzsB7Xs
         Q6Yg==
X-Gm-Message-State: APjAAAXWF6QSm5Ao4bW3OcgEZ+uHXeS4LR5fn9JAE/Fyp1btZYak5Gtg
	WcRIT+kY0F/fiYLmq202AMUWn3x3
X-Received: by 2002:a1c:6c12:: with SMTP id h18mr2460282wmc.131.1551790559346;
        Tue, 05 Mar 2019 04:55:59 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id g24sm9462648wmh.45.2019.03.05.04.55.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 04:55:58 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v2 3/4] staging: ralink-gdma: Avoid unnecessary line continuations
Date: Tue,  5 Mar 2019 14:55:55 +0200
Message-Id: <1551790555-19563-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>

Get rid of unnecessary line continuations in
boolean expressions, warning detected by checkpatch

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
Changes in v2:
-make these a patch series

 drivers/staging/ralink-gdma/ralink-gdma.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index ccf9ccc..44a65e2 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
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
 
@@ -376,21 +376,21 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
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
@@ -398,8 +398,8 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 		return -EINVAL;
 	}
 
-	ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) | \
-		 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) | \
+	ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) |
+		 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) |
 		 GDMA_REG_CTRL0_DONE_INT | GDMA_REG_CTRL0_ENABLE;
 	ctrl1 |= chan->id << GDMA_REG_CTRL1_NEXT_SHIFT;
 
-- 
2.7.4



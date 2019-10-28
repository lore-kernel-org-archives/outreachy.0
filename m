X-GM-THRID: 6752717498070597632
X-Received: by 2002:a63:9208:: with SMTP id o8mr18972012pgd.256.1572245619016;
        Sun, 27 Oct 2019 23:53:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8612:: with SMTP id p18ls690854pfn.16.gmail; Sun, 27 Oct
 2019 23:53:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxlmJ3K/RlMcXhiyneBSaVhQQNu1443J3DvzVG1gqoNrtKTNHBTGh1yHvo4I80bPSiOLOYr
X-Received: by 2002:a62:1c4:: with SMTP id 187mr1960703pfb.92.1572245618010;
        Sun, 27 Oct 2019 23:53:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572245618; cv=none;
        d=google.com; s=arc-20160816;
        b=gs5zfe3a2ExEgB1kKjvAwwN/Wrunx6MQze4kHIojHdxCXxq8PC/yynA8LkL5sIav7K
         TKj/5Gnh9zXce8LvHKJUD6FSGozkOtE4WLmepnuVwVThqw5wOGrysD6tIB06HkFADYyL
         TBanSjjcMsVMHVCdxmx0sWiHWzQ9w6/y2BP+o4Dx8fK9iS6+smMW2eiiLkyQvM/bC38L
         dM/FXSqKzVxbywchuM931/wnnPC96whsTXz6vx8Fyg1HSTEshlYK+ZjCsc9xvXBYTB8w
         s397BzJxyK3HMxATWnVnl6fMB70mH+cCUHR+BJ5QHyKzQG8mJMbKCr7NDyIv9vZYys64
         V/5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Ci3b6VPmJPlOA/YRLlc9z1Q8mwuDC1O5SNy0Vh94Ifc=;
        b=QzfP4Ee4D0vXVmS3ow5U1Fi5B1ez0GXhQlLKNtWRYAJzECK1tUfby6uCBdidPAGkyG
         CrZu6QXKcolHSqlp88EesmOHJA0OUHT74ynInk+UOjBeCKDzjG2K9CG5+eS/yFN/FyoP
         PAcojDogChNP1AfI7RF/JZIRhrQPp/CLelLkapSk82IDeoahyPc3DW5Xb8bVc02KlnBz
         /TQYwEocD+QREUTYdZrD7c10BwaqVnmBcTSC2u2WFkCfS/9N19yjXDfYu5Y5k6Ue4zPE
         zHBOk3/oJmtioy92mqxVkOdDbiMbRsGANOTh5ocanU6/n0cy6UrigiM62tm5uvx4LEAb
         h0yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=WDlx63Sa;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id f7si101170plt.5.2019.10.27.23.53.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2019 23:53:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=WDlx63Sa;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x941.google.com with SMTP id o4so1097536uat.13
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Oct 2019 23:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Ci3b6VPmJPlOA/YRLlc9z1Q8mwuDC1O5SNy0Vh94Ifc=;
        b=WDlx63SaolVvx2PIBI80AxQ5s01K5Fdj4fRhxCUEJ9kxFGGnok5ONnDPIJJ0OBxqvi
         8wZVVDP8V7avZBbwuG6NkOR2+uFFwD8RpB5YxwDOCAmBI08ddjCmcJQ0DDJ4thbSSqQY
         VgzHNeVoCraqVEMnem5aKxUhG3nBYOnL1dkw8WCBb/Uy8Ho4TRIlwJ6tt5pfbPJsxCdU
         Sd1B/BS6qIlk5tu5mpjm9Z3sK9tY3XVFYRzCruRAGIgNE7Xk2ADyrwh7siaTkqZ/oTER
         OrHCdaLJPTv91ckPcypQpbnd9al7k2zAHnQFRZqSDzJDAv2rkuzBQSx+F9jFms7dh1zP
         Mneg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ci3b6VPmJPlOA/YRLlc9z1Q8mwuDC1O5SNy0Vh94Ifc=;
        b=TftQY1IawwlmGOgCOeRyCzRgsjbcOje+c3eqb/+bO9fyi7ycik/cYaDMDf8yAMo8UC
         UjRilsTJyJSaGbRTJ1fWO1ljUW0enati+KJRHlhXjjB6/S1OyJtHREGt1s+pC97bLm6M
         faAXDWNbhwZmP318eHH9j0KRyrT6flY/zKRe6INwZo0zGSRvv1rrmnSnxPIq+z0DczkE
         +HgYo5RBRt+KXpGfpRCr4RSI069oADhCrK7yEKqxzRjVUS8IXYc2yO7IrVD2yrORsS9W
         51jp6umtGE83zBXxIc6EDvT3WJSUBGqr8WVjuW1y3Fsp6uRx2j0Mk5x2XV/wIIoiCTyk
         n+cQ==
X-Gm-Message-State: APjAAAUJTCQJpcQBYdfxKn5d/sHAZiTDXhHLvcIaSbdZovk5sAkpCnKJ
	hygeY9SuGFKZKOGxfPeE3cBQRQ==
X-Received: by 2002:a9f:350f:: with SMTP id o15mr7099983uao.125.1572245616842;
        Sun, 27 Oct 2019 23:53:36 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id m11sm3566505vsp.17.2019.10.27.23.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2019 23:53:36 -0700 (PDT)
Date: Mon, 28 Oct 2019 06:53:35 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2] staging: mt7621-dma: Remove unnecessary line continuations
Message-ID: <20191028065335.5h6c3v6uogewbbup@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

checkpatch message:
"WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations"

Suggested-by: Julia Lawall <Julia.Lawall@lip6.fr>
Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
Changes in v2:
  - Fix strings cut over multiple lines.

 drivers/staging/mt7621-dma/mtk-hsdma.c | 45 +++++++++++++-------------
 1 file changed, 22 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 03c8937f80b0..27c34e6c3b47 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -208,25 +208,24 @@ static void mtk_hsdma_reset_chan(struct mtk_hsdam_engine *hsdma,
 
 static void hsdma_dump_reg(struct mtk_hsdam_engine *hsdma)
 {
-	dev_dbg(hsdma->ddev.dev, "tbase %08x, tcnt %08x, " \
-			"tctx %08x, tdtx: %08x, rbase %08x, " \
-			"rcnt %08x, rctx %08x, rdtx %08x\n",
-			mtk_hsdma_read(hsdma, HSDMA_REG_TX_BASE),
-			mtk_hsdma_read(hsdma, HSDMA_REG_TX_CNT),
-			mtk_hsdma_read(hsdma, HSDMA_REG_TX_CTX),
-			mtk_hsdma_read(hsdma, HSDMA_REG_TX_DTX),
-			mtk_hsdma_read(hsdma, HSDMA_REG_RX_BASE),
-			mtk_hsdma_read(hsdma, HSDMA_REG_RX_CNT),
-			mtk_hsdma_read(hsdma, HSDMA_REG_RX_CRX),
-			mtk_hsdma_read(hsdma, HSDMA_REG_RX_DRX));
-
-	dev_dbg(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, " \
-			"intr_stat %08x, intr_mask %08x\n",
-			mtk_hsdma_read(hsdma, HSDMA_REG_INFO),
-			mtk_hsdma_read(hsdma, HSDMA_REG_GLO_CFG),
-			mtk_hsdma_read(hsdma, HSDMA_REG_DELAY_INT),
-			mtk_hsdma_read(hsdma, HSDMA_REG_INT_STATUS),
-			mtk_hsdma_read(hsdma, HSDMA_REG_INT_MASK));
+	dev_dbg(hsdma->ddev.dev,
+		"tbase %08x, tcnt %08x, tctx %08x, tdtx: %08x, rbase %08x, rcnt %08x, rctx %08x, rdtx %08x\n",
+		mtk_hsdma_read(hsdma, HSDMA_REG_TX_BASE),
+		mtk_hsdma_read(hsdma, HSDMA_REG_TX_CNT),
+		mtk_hsdma_read(hsdma, HSDMA_REG_TX_CTX),
+		mtk_hsdma_read(hsdma, HSDMA_REG_TX_DTX),
+		mtk_hsdma_read(hsdma, HSDMA_REG_RX_BASE),
+		mtk_hsdma_read(hsdma, HSDMA_REG_RX_CNT),
+		mtk_hsdma_read(hsdma, HSDMA_REG_RX_CRX),
+		mtk_hsdma_read(hsdma, HSDMA_REG_RX_DRX));
+
+	dev_dbg(hsdma->ddev.dev,
+		"info %08x, glo %08x, delay %08x, intr_stat %08x, intr_mask %08x\n",
+		mtk_hsdma_read(hsdma, HSDMA_REG_INFO),
+		mtk_hsdma_read(hsdma, HSDMA_REG_GLO_CFG),
+		mtk_hsdma_read(hsdma, HSDMA_REG_DELAY_INT),
+		mtk_hsdma_read(hsdma, HSDMA_REG_INT_STATUS),
+		mtk_hsdma_read(hsdma, HSDMA_REG_INT_MASK));
 }
 
 static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
@@ -243,10 +242,10 @@ static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
 		tx_desc = &chan->tx_ring[i];
 		rx_desc = &chan->rx_ring[i];
 
-		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, " \
-				"tx addr1: %08x, rx addr0 %08x, flags %08x\n",
-				i, tx_desc->addr0, tx_desc->flags, \
-				tx_desc->addr1, rx_desc->addr0, rx_desc->flags);
+		dev_dbg(hsdma->ddev.dev,
+			"%d tx addr0: %08x, flags %08x, tx addr1: %08x, rx addr0 %08x, flags %08x\n",
+			i, tx_desc->addr0, tx_desc->flags,
+			tx_desc->addr1, rx_desc->addr0, rx_desc->flags);
 	}
 }
 
-- 
2.17.1



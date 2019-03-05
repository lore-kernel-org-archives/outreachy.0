X-GM-THRID: 6664868733855465472
X-Received: by 2002:a2e:9613:: with SMTP id v19mr1374790ljh.16.1551785677049;
        Tue, 05 Mar 2019 03:34:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4352:: with SMTP id o18ls1713142lfl.11.gmail; Tue, 05
 Mar 2019 03:34:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqxnyd1GjNuKGcfHSRJCcS12nxDhk3svD/GQKKj809Gsmr6fjKa2grn8606sINEhtSWhKB3C
X-Received: by 2002:ac2:548b:: with SMTP id t11mr69821lfk.9.1551785676059;
        Tue, 05 Mar 2019 03:34:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551785676; cv=none;
        d=google.com; s=arc-20160816;
        b=ChogaeTkWjocHfLnAom/uEwZDa/kPTgsziBiLRoX24taED5bf/f1vKGHhFjdsnQsC3
         vmnhniwvThu7vxj89Y5B4YE5RXrlpbQ0ModZ+ZyQxD3ShkrFQci4sNXU+S9A6V3RdYZ/
         7584AfwnMpHWPUQZvqOdpRlGE4vVDwrVOJhb7mD37k6oGpHjpz6Cv5ixDQTogEDWNSdg
         SNTqbxay4H9J/8agiwgnwWs/wijKYwBjLG0btA1YtSTyaXtnDFERZIVvRrE/0Hz4fkyU
         Yrs2w0AM9Et2SfNXJQdw7ibBeQYFvrHhvmjtcHoGGi01kxMXhv6tQowy0k9y34D01vtZ
         PKeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=SNMrolHYY30V+Pg+1OLOZIbqwX44JxvoOO25qJtXmLY=;
        b=fifmckWeQlvSwDTCUyYDBxEHndlKtxGVgRlTFZ2hCg4HmMLgXV4q7i+HiG3AlbR88L
         iUGNB91nBBA5P4L2FaccOMRvk5MKEOG+MTzo6i+dthWQzVwAxHE9W88JbCwDUoaVeenV
         HYz7LZ0wLUBMCcNBY2p+20YBTNnV7ppQO1ZRGwStPEBF53aDo8bhnL7EW6//V0r4p5vs
         uabsRHiVqIhZV5rDz3EnTF1b83ur7tEUjL1RksWUAOEvnacI7yOzkOl92WIkP9KIhc2E
         q5bLD4xVZ5sJBA5x707p8goLvYUWP7HSEc6ZaIkI58SJFK2tYWfhh5D9mOiOp0MX5Imv
         M57w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ltPWRuJw;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id m16si296901lfl.0.2019.03.05.03.34.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 03:34:36 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ltPWRuJw;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id r5so9051116wrg.9
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 03:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SNMrolHYY30V+Pg+1OLOZIbqwX44JxvoOO25qJtXmLY=;
        b=ltPWRuJwzLJObp6Z33tSmVzR6y0xZoI0jEXutH/6ljJibaIzvldr+42KQhOoNwFCTD
         Dyb93h2+ZIXh4lVlDwjH7YgRGwkQ6QsdTDDQUhQ4BR2HZw10bkd8OTFGgqf/6wbTIiQh
         psXCTYEAa95Fwlu7BB7NqBQkqLQ+k2OkfH4vvahiXXWTVy0MVcw+yuEIiJACUMnkEZc7
         WM5ps2vujtAVraD/efbCph97p9ZnpkymnJDf9DD7OO8Be/YbryZdsBnfAGRfqFv17TmB
         y8ZRbWpOeVgrsuyXbwxY3lf7s4ev013Kl1HfVUQigj6nvi68q9oXRuNO6rn4efyHJcHX
         ZWbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SNMrolHYY30V+Pg+1OLOZIbqwX44JxvoOO25qJtXmLY=;
        b=F9zalY8IDMwEngUnq1sQ42xVTKXYgEWxAusm2XcQtbTsCuavJMp3bmz+aqs2F7pt7Q
         +oTTe01Gl0uRdYmCs5G8+1AFcr5KB6L1nOxTT+liNeVaodtixZdLEBhOGR3LEI6urGFs
         gLxTo8OP7DNv8c7glnrp9lVofshBKkROHp+WytfQZBH6zqF0PhcML/8tPeXAmHmJGQqO
         PdJSvhxmzeOa/sVE3sUY4UlNNtggaeT3yDdCQOcGq7Jn9LWCPgHvsUZSVu1fYXqtZmwo
         mtbFoTVu9B3Jqzk5HdoaVTN4+1NwRDMZUtk+GzxY/MEnOFKfj5CZqeFBFqWz2hpnFc6M
         B/9g==
X-Gm-Message-State: APjAAAUM+P+Q8/tuZXz+DgjiodecyqdaBKz8fuWEqQIn/LhoOdOagnbo
	qZ3C31wNhGO4GoLEwtCx9KM9Yc31
X-Received: by 2002:a05:6000:1084:: with SMTP id y4mr16209991wrw.14.1551785675503;
        Tue, 05 Mar 2019 03:34:35 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id y140sm29206955wmd.18.2019.03.05.03.34.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 03:34:34 -0800 (PST)
Date: Tue, 5 Mar 2019 13:34:33 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ralink-gdma: Avoid unnecessary line continuations
Message-ID: <20190305113433.GA16894@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Get rid of unnecessary line continuations in
boolean expressions, warning detected by checkpatch

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
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



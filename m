X-GM-THRID: 6661107741495394304
X-Received: by 2002:a24:b70b:: with SMTP id h11mr985447itf.26.1551141405740;
        Mon, 25 Feb 2019 16:36:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:a91a:: with SMTP id c26ls3698767iod.0.gmail; Mon, 25 Feb
 2019 16:36:45 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbXX0yP9nJbDqUuuy5dVcvmr+sQYjWyow8OI/4N74t8LypjmlJM0Kl3k0TWaJg3ZIrCjGpv
X-Received: by 2002:a6b:f717:: with SMTP id k23mr10718410iog.28.1551141405272;
        Mon, 25 Feb 2019 16:36:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551141405; cv=none;
        d=google.com; s=arc-20160816;
        b=Orvy4HU02uCqQFJVgD0N0tgMRx//iRMwGC48iNLAQ3A9B5SGUXeGb1RIRe5KlOepYl
         ZwDC2BeTu/SGpH+WB0RXoKwLaAIg5TIDMs9E5uFWJS+Ij0bf00m/vzSZggnuC4CtbMDk
         wp6ibWbVUEV0Ewmh5AcGo4hr+tugYXFaCXtd9DWp8hkM4DFUQ9HF+8XEe1xgzzpwMgCs
         H+YoKyS64ZQTilKPSwUkeEkrrjJC/g61vfCW6eqSMuK7ydIUipvzQHz4x85fUVVSHU2f
         zrOrRPQZ3vOJZRLuvAx1tTcLl5Nq6BwbYdFO3vjQv9JdNXbp1QQaZ09F5RiUm9PpZVUo
         3Vbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=QkXPiK0+ZjEW9pCSA1jeJXKYgt+XZyxfva69ZLSwc/k=;
        b=PjdScQVHGtJdcKtBsdAB15/MHmuGytkIBosWGnJ6nbOoP6p8Wp7egtALRtdGjfqb1f
         QUcCqZTwRGX8NIBK84f8S7B42LrHlNJwM3Q7mQcUFbW1mFvUOAc6GtMKWKeeMbHoP8hn
         P2h8Cs+UrBbuygqVYAemNhei5ndFyJjMqgTu872r9BOZJxn+rgpCsD6Mf9pAIUB6P6F1
         xUc9c64KK+SEPfCEjqL8BlfMFZfLf1MwRvJkjXtkQ9uKD3JfdaR9aIPIhhTLcNmUkhyU
         pCcVAisnTsNh0LWN9t3/67CLpFdCa2+Qt2p7LeEog2oQwF/YXuxdei0oM3PBOv9sdBIh
         63+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sWzPN8QV;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id d127si595081iof.1.2019.02.25.16.36.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:36:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sWzPN8QV;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id j3so5281637pgm.11
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 16:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QkXPiK0+ZjEW9pCSA1jeJXKYgt+XZyxfva69ZLSwc/k=;
        b=sWzPN8QVtlnoLkrmjpLt4gvvW6RwyDqhW2CJtt7IpUWhBJLXVmRgRYZnYyDMJsPAeP
         jCGh/ZfXaH4wt2ggH/331Y5UKE7pSLWApszfZkN0ibdqV8Jqck0FPtUVb5TOQcHTPBGY
         I6l7hmSDEbSlV4MDtxLaQGnHp5wcYasKuuk6oKaqkG/b6PlbSEU+m0kL8yLJZyFmNa2S
         MOZRGsMn3VHvJ1uUwLBi7bz0zmztzxf9KFxnm4H4i8eMOTMgI/34yIeMBYF+we5K0o0R
         Ytdgmu711+xBJCZMMOG8rS10up1twxlZ5Oa1X2fKp6P1G1JGE5FVtV4gTamicx9JIS2m
         754w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QkXPiK0+ZjEW9pCSA1jeJXKYgt+XZyxfva69ZLSwc/k=;
        b=W4ANxfrqu7HkkXRcULEKVxjQ4dgj2rWKPGMCZ3bPHZiwOo297wDhWocdlljV7XdL4e
         0db4MxuUVh3JnSoKkaHh4YQvRllDhT8L+mE8WatdtOfrQG1XsoNMvHG6AVy3j6sA9J8g
         MIdL8oXWeifkptNHmkihE/KSr8o80nuLptJNPDNbun+Lt32IVP6wMA2U+ztzgKsU2RgH
         YythdL5DgL2rKbJRbIUkp4DP38jpR978faMPYgtzErkGQxuI2CmmK4EiWE3FaicuQkuf
         6p74vIwpv9Lo8NhV3v2EJTrBspGcMfPfnnstMGiYGsh3KognpQw/xxPjhXzpS8wF2j4Q
         q31Q==
X-Gm-Message-State: AHQUAubkKHM9m576aZW4EN4kPmXb4Xcubx0mc6W1jxZ6b+QRvqqDZaXg
	ts9GKFtPcZZMf5aP34/cCYaEAWf8Sg4=
X-Received: by 2002:a65:5a42:: with SMTP id z2mr20918942pgs.365.1551141404436;
        Mon, 25 Feb 2019 16:36:44 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id b70sm17965861pfm.6.2019.02.25.16.36.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:36:43 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 1/2] Staging: mt761-dma: Alignment should match open parenthesis
Date: Tue, 26 Feb 2019 06:06:26 +0530
Message-Id: <20190226003627.15650-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190226003627.15650-1-bhanusreemahesh@gmail.com>
References: <20190226003627.15650-1-bhanusreemahesh@gmail.com>

Adjust "dev_dbg" parameters to match alignment with open parenthesis
Issue found with checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index d67a2504adb1..20c8879d4979 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -242,7 +242,7 @@ static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
 	int i;
 
 	dev_dbg(hsdma->ddev.dev, "tx idx: %d, rx idx: %d\n",
-			chan->tx_idx, chan->rx_idx);
+		chan->tx_idx, chan->rx_idx);
 
 	for (i = 0; i < HSDMA_DESCS_NUM; i++) {
 		tx_desc = &chan->tx_ring[i];
-- 
2.17.1



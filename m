X-GM-THRID: 6661107741495394304
X-Received: by 2002:a25:b9ce:: with SMTP id y14mr1061022ybj.38.1550910004256;
        Sat, 23 Feb 2019 00:20:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:348c:: with SMTP id b134ls2830513yba.10.gmail; Sat, 23
 Feb 2019 00:20:03 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYc0uNlQ+LpzIYhycG8mhVT9ouAIK1L7phtu0hrgDsOZsLs59bLhh4F0XpkGw11kSNMmT8k
X-Received: by 2002:a5b:404:: with SMTP id m4mr1262452ybp.100.1550910003708;
        Sat, 23 Feb 2019 00:20:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550910003; cv=none;
        d=google.com; s=arc-20160816;
        b=SBxeFU5TBcMnBMnjZ0GU52hCtKHqyYabaLhHgXA9GNe3lfCrgbpsPwANeCtnNHTQWE
         L6Ot1AKPwMI6gRTLLxmN7zwVEnrq0j4idzGbnzFCO7Xh2rHjxhqc5YHqO7ixhOC4qnF0
         R3ZXj+WWn/YycRYpLBkBfaCf0lOa23AAMBZeVlj4mG0NaaXD9tPofxRvNYJCGYe3H8cn
         kFu8DJqECogYrYXP0g+aKlk7OHjPKcCY95zwjl0ku2JmH04y7qONuCrpjHJ3zZAca0Ya
         Q9+Yl0EfVj20ZtJyBs0s/X6/701ySx9WP/eh3yvSHMsBD8Pfx0CGOmAxXo6KPVVS+FSk
         iO6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=R6hf+IUXDXgRlwExdNQ8l/yYZzx0UxOT/BFUlaPzkCQ=;
        b=sQ/FhWrvSb+07dkWIDoq9bb0zXNBaj7tjzcr276qSEvvGFCRLRz+R4jvQrujSIl2dw
         HKvHGpyNyAAnuoiTOk5uzweSnGK0epIcF9GdsjoOk2UD3eu4s8IQ9nzba2M2ye3rGalV
         U3e2JZi4aQGCsjZzVaPWNuQPOGZtVIEv721w8LZc/+wnEjFHuyY3AYTtOCFAi+4faTDR
         x07tY3TwFAMECc4f/H+eRLxV3xYVItDYYcpd6kHwhUjlwn9wC8ThXS70NgpsLu/iOvlN
         EXgwYCRL9UvWqq6Qmj8+cikeLYyi8+BQhdSqaxKf1NZVzZQapr7bRGSrP9h4gsKREQPQ
         C0xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J+pUJGrJ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id o191si254242yba.1.2019.02.23.00.20.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 00:20:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J+pUJGrJ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id b2so2173168pgl.9
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 00:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=R6hf+IUXDXgRlwExdNQ8l/yYZzx0UxOT/BFUlaPzkCQ=;
        b=J+pUJGrJdly/fjyhrMs875fa+fh0G8woprvzRvI3Hv7v7QECciVgS9CAeVsPNm0/ga
         gc2Uxnb7Rw5u1/OTIktBCgB3od1Y4f1p5kB2pfbGrIcE71UFl98YASNXymk1w9WmffZa
         E8YHdODzHfbcrqfCXSDanS2cKw2eaXosMp0Ol5JXtxA/XX8xxq4MwLYQeZ2jD2ipmu1a
         HqibQQD01DODyPBXT1WTtGZkG8S+79lHR1pWUOX69KebacqQRg9/WK3IX5ykAqDMdVSI
         oh0PvtTqPsaEHvYJTDmQcCRkkPNFLQkr2/FG5s/1PuX+6CUctqLlge4xCWiwveTgvGRY
         vI0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=R6hf+IUXDXgRlwExdNQ8l/yYZzx0UxOT/BFUlaPzkCQ=;
        b=QzOQINfZrAQholtmfjCkKnokV1Q+W6XWx86c+ynxq46X9qNCLTjxjmqUkAAELUaTOI
         e8gYXqjjdYu8cCp8MkMMTlehyK3PZBe19+3QU3mDthSwaK3Y7UiSAx8cQPvS+YIub8KG
         zhEi+JrrgKktuihYp4gdmgG0GiY66UETw7w0BcDlwnth/GkMYb+W3m2A0KxvKkdmep+/
         0k588qONWo/yunik+v1+sw7EnDZHBZJy/+5lJdgDyyboqsOrMA9mu4qvOjnOdsUUh74U
         aRHX7sgO7icjlsGAJ5xUibGuy60Vk7bgrzlGNFrpfUCSnqTpOSd1oTxrXFHnOoA4PHVB
         gwcw==
X-Gm-Message-State: AHQUAuaPPbBIxW2YhqEdX2XTnGrQw3aF7jO2cmr9geOps6gy+9jSmVxm
	R947joUwc4qU1fFmXLVC2m2qSVOxjzs=
X-Received: by 2002:a62:168e:: with SMTP id 136mr8461990pfw.116.1550910002707;
        Sat, 23 Feb 2019 00:20:02 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b2:4a74:49f0:95a6:ee9:3324])
        by smtp.googlemail.com with ESMTPSA id z127sm7909280pfb.80.2019.02.23.00.20.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 00:20:02 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/2] Staging: mt761-dma: Alignment should match open paranthesis
Date: Sat, 23 Feb 2019 13:49:40 +0530
Message-Id: <20190223081941.9629-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190223081941.9629-1-bhanusreemahesh@gmail.com>
References: <20190223081941.9629-1-bhanusreemahesh@gmail.com>

Parameters are aligned such that it matches open paranthesis.
Issue found with checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index d67a2504adb1..54bf89e2f629 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -242,7 +242,7 @@ static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
 	int i;
 
 	dev_dbg(hsdma->ddev.dev, "tx idx: %d, rx idx: %d\n",
-			chan->tx_idx, chan->rx_idx);
+		chan->tx_idx, chan->rx_idx);
 
 	for (i = 0; i < HSDMA_DESCS_NUM; i++) {
 		tx_desc = &chan->tx_ring[i];
@@ -576,8 +576,8 @@ static void mtk_hsdam_free_desc(struct mtk_hsdam_engine *hsdma,
 {
 	if (chan->tx_ring) {
 		dma_free_coherent(hsdma->ddev.dev,
-				2 * HSDMA_DESCS_NUM * sizeof(*chan->tx_ring),
-				chan->tx_ring, chan->desc_addr);
+				  2 * HSDMA_DESCS_NUM * sizeof(*chan->tx_ring),
+				  chan->tx_ring, chan->desc_addr);
 		chan->tx_ring = NULL;
 		chan->rx_ring = NULL;
 	}
-- 
2.17.1



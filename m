X-GM-THRID: 6755228047172960256
X-Received: by 2002:a7b:c94f:: with SMTP id i15mr1053007wml.31.1572991415735;
        Tue, 05 Nov 2019 14:03:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:1:: with SMTP id g1ls54422wmc.2.canary-gmail; Tue,
 05 Nov 2019 14:03:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqwIySDNZuOo/TQpN/0Gg+2ApJGH5Za7Nsyb+OvhZ2/F8/LJpk7uUe05xGjV0zZE6NxABFUb
X-Received: by 2002:a1c:48f:: with SMTP id 137mr1082763wme.68.1572991414531;
        Tue, 05 Nov 2019 14:03:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572991414; cv=none;
        d=google.com; s=arc-20160816;
        b=fXWugkQ3sPzsotKBRqYW83/svdu4cRYuaS986sq4CrmnSgpC3EuU21dZ+v5ZnFiwa+
         6OCMlZyBxjaJ0IBoPi6GghBK0g7taTis+sxMyddk131h6wQbvpNUmH1GjkdVWjQcPBdl
         Mdy13aJCM213SHjMOHgbbyoN+/E8gbwcEFS0vNmbLjOyIYy6Ei8xeH/q6DZ0ZuwhnfYW
         ugfDORL2oTllvh5hKITh8Pf5QI4mWu030S5m749YFq81OY+5Glb4hPNao2fHWkofSsqm
         w/CLD2ztepvUirI3hvz7Ey5pqhg5baz47BE9S7aYL/L0qycX94uJ/7pL/lLwzXeqOmcV
         kR9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=c9JLQJcv6945m0kXI3sZ3YktdZ3MJ74T96lRzCPFj9Q=;
        b=qV1bF/MaGApKKDrcEi8cjzn8zMklD5q+A/ic/qCuAuFzt7UfmjcX+Op9ezOj5zdQ9N
         sTZKOOds/U01AIOyFiuoJ/2W579yhO97rRUlWF7IF8KACNgI5akAS2MRt2m2EFnm09B6
         XwOaGYaA+qYcKIgls9OZ3hU2xFemKUjXT78Mri/r+3uj9KIefDQ6NkaQtjngTYwV/7MU
         9Mu+6fphag8gp3UEW/7LDUZ2Au44SW5ca50pq6L9sfMugQgdWewwGr747uDLY8NSkfbU
         xfGxGr3JaHctOXQQOkwZxpEb/NjGedMW+N29v6Cp2AX4LcG1yIxECOFYwJsnYnZKHmPu
         du7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CIRXCJRA;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id s15si54885wme.2.2019.11.05.14.03.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:03:34 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CIRXCJRA;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id c17so1091081wmk.2
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:03:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c9JLQJcv6945m0kXI3sZ3YktdZ3MJ74T96lRzCPFj9Q=;
        b=CIRXCJRA1uVlwbKKrmmisNIH4xVxD9Os8RMvwlpdgQ9LtWcO53ocdbW7Z1eqAzLd8K
         VV079DoaBTNPwjkzKlPU+LwIrQ0sYcVcs3vM1mYu+c1rsC5gnN6pP9ZiSWZmvdOPIsqe
         YUEQE5XkheSyTYkd3WN5EFd0Lp7PJ5t4ybaPJd3Fwq9+TidZs34+eIuP/Q/LDveTgCIu
         D+ozRvgtJtgSu/MvSpa2d+fD649sm3Te6BRUprTmkmd2iMsuUV6+WksLEunn4G6UIRi5
         t5kbx/vQk/lyrRp4phVS3+CgrT5Y1XTFoJzl1m/F1Ekix4/s8IiMzr15V2M5AjoJ0jJD
         rGQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c9JLQJcv6945m0kXI3sZ3YktdZ3MJ74T96lRzCPFj9Q=;
        b=KkfPZR9iZ6ALHedY8stIp+HO7iEJesD4IUrSb1AN2UXLOZcJU+3UhTS49P1oMTp+TC
         NGGFyaA3tMvuCZnGuljcV1pYlcdWosQXiJfq9lLVTloMjterK4gKt9LeEs8NKaiqpUk+
         8Hp44Z3gTks1sHIzxzDIiSl80Txz7gnHJLy/wLT7X282cYBYD+onXejNeW2MA9rejRVR
         0trB6FWoeUtgMjh/CGKM4tR6RMGG1J+XyS06aUL1HtA0QYJF8w2lCZrQTfWHAdm2PKuO
         cwurwfTXLxTlp2bT2IaRyjIJNUEzT1i1HFsoeHQuEbI230Dj+yX0dQKaVLERz9K2NlL2
         oe2Q==
X-Gm-Message-State: APjAAAXzEebLimUm/FN1VXGkR7EmdFtmRCw1C40jORmY7EyMfdlWEFa5
	0r4xxL+qKiC/SvRbOn94HX5JrdrqTLQu
X-Received: by 2002:a1c:6405:: with SMTP id y5mr1019975wmb.175.1572991413863;
        Tue, 05 Nov 2019 14:03:33 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id w10sm640612wmd.26.2019.11.05.14.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:03:33 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v2] staging: mt7621-dma: align to match open parenthesis
Date: Tue,  5 Nov 2019 22:03:20 +0000
Message-Id: <20191105220320.50180-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align to match open parenthesis.

"CHECK: Alignment should match open parenthesis".
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
v1 - included one alignment
v2 - includes two alignments
 
 drivers/staging/mt7621-dma/mtk-hsdma.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 94c2c708dc92..20b898954416 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -548,7 +548,8 @@ static int mtk_hsdam_alloc_desc(struct mtk_hsdam_engine *hsdma,
 	int i;
 
 	chan->tx_ring = dma_alloc_coherent(hsdma->ddev.dev,
-			2 * HSDMA_DESCS_NUM * sizeof(*chan->tx_ring),
+					   2 * HSDMA_DESCS_NUM *
+					   sizeof(*chan->tx_ring),
 			&chan->desc_addr, GFP_ATOMIC | __GFP_ZERO);
 	if (!chan->tx_ring)
 		goto no_mem;
@@ -569,8 +570,8 @@ static void mtk_hsdam_free_desc(struct mtk_hsdam_engine *hsdma,
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
2.23.0



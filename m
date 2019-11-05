X-GM-THRID: 6755228047172960256
X-Received: by 2002:a05:651c:1196:: with SMTP id w22mr21143954ljo.217.1572915209072;
        Mon, 04 Nov 2019 16:53:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8998:: with SMTP id c24ls5360lji.14.gmail; Mon, 04 Nov
 2019 16:53:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqzlFyYSGKzqDJPOmttIgpbAmmQ93GPSklMJFgQ4qE1XSoXU+5Ou169Z1CpLvUAPO8jS5cFR
X-Received: by 2002:a2e:9e4c:: with SMTP id g12mr21038513ljk.103.1572915207869;
        Mon, 04 Nov 2019 16:53:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915207; cv=none;
        d=google.com; s=arc-20160816;
        b=FWVK4K1bhDdw3aFovKVD/Ke1E7/wNkR29GEd/KYSTDYFayEpfuCYwGpDPgmnHWmlyw
         9BcIIm8HAr2i95cs2FAkM9cUbmfoT3sbKe6IHsHZf+v4olgE6VOt/FsUwStmFP9oGGy4
         3Pr4on5x4kirjUckawQbGBhRNbnfomhD8khiHHqMMR+bGhflSz0FaHtRgvdI2/1mGaOf
         sL3VHCn72jHu/Rvp1oyLK8p6TO2Gfd3FeqNtxEtwmkQykSCWiNSGlpQReuvcbUiWMkzg
         SsRwD7IIbJm4Do9d/fnUL4qaoqJHYHPlg/F5cu+UcVtmQckPQqBGSdE+0M0CiDO4smK8
         hJ0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=FK1xLJgVz2uNoZb31XNkLE25yu67uQVqMjfYjUKYVIQ=;
        b=zmoPxnM46yQmatKLSJruKJ8egE6/5pqQyrwXs/GPCHe/uSPEZqndf9a6q+ZbtBh4md
         t7KfsmGgKUQzyHhAaNf5gVUddq0RDqoPQLrqlfiAXEH5KumKgBYaGBXcjyxOeqOT8lm4
         UDPNQ14nhox+vFgXM2EvJGX2v1EF+ZOv3Tmp6Y1C6A85GwLWAGNFk6uu85ZmoLdioxlf
         A4X/ckwLB3WvN6+FCyjj6IvKxqXgm7NmktG57PqGjcBb6JKWhy7ggk2sJ9k/pq6IxICO
         XCjlBBI8xwj9R9o/qxc91fIi0gbmJzfSJccqlohQXsZlAJvSNP9+FM1W7k4gijlztPBh
         Pcqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GOFugVHK;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id z3si1205998lfe.4.2019.11.04.16.53.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:53:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GOFugVHK;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id q70so18806471wme.1
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FK1xLJgVz2uNoZb31XNkLE25yu67uQVqMjfYjUKYVIQ=;
        b=GOFugVHKHCkY9d87/mjOhHof524FNd4gKtlJWnsuG4inzqHCGvjkSuFn3eB6E/VxiM
         stTP/X1oCJqZYMt7aK1yfnRhvBAgRhHxX2N3HASruIP+302DeU9kaWVU1FCwMpNR6ITU
         KD6PZxZOXrMy7OUhy892z2YBHhE71orlqwHHAtT0PbXra2YEQr/goFbXNBGbIZWzAFT2
         5fy+6B0v8GuDKsfkj+6GwnCFsUWVEh+gGIgxB/mYYBt2YNt/zDR2UTc5IZC71Kt8Y43m
         xxV1BzwXz5rvWNhhK631rKMlkoZVfpYxNNgdok5IWDgqVT3M3C6MvXMIhK8nkq8hUNwT
         9ihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FK1xLJgVz2uNoZb31XNkLE25yu67uQVqMjfYjUKYVIQ=;
        b=EDZ8Qg+EKR5wwXFgAuMPl3/4piTno++lfRfEXBkSsg6U3cAxvbQr5EvAqRbQFjGehO
         HBY5s7n6/Kfgp4aLkrYUjMg3ddt0PypkipND/81MOnVgXnzWqIbnwqPjzXmW7uI5c6X/
         2DcH8phoK9dhX8lXDd6Kc1pLqOWp1KA3ryM9vMp+ISXHlB+pRXtkqeJwgZ4efalLyFnB
         C+60reXa9wcfquOFgsc0Y+6aU9qqDq/MCNvKKHWsUv2I9C904S6nJs+kZXGKfkx6LSod
         jk9fwQb8SG647F26rJiFvRT0/a58pQB/wWW03rJKfiZfdUBrv7wapSMElg7QCzRFbGMJ
         ko/g==
X-Gm-Message-State: APjAAAVdSfgidvVq3KdOgObYmV/58/bxcXHjEoyp4l0iquyfkV5bla9F
	ERzftFjH2f48Bu5bniT3IWpHw8SXLgmA
X-Received: by 2002:a7b:c94f:: with SMTP id i15mr1669002wml.8.1572915207031;
        Mon, 04 Nov 2019 16:53:27 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id r3sm38739655wre.29.2019.11.04.16.53.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:53:26 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: mt7621-dma: align to match open parenthesis
Date: Tue,  5 Nov 2019 00:53:06 +0000
Message-Id: <20191105005306.173526-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align to match open parenthesis.
"CHECK: Alignment should match open parenthesis".
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 94c2c708dc92..c8dffe7f0213 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -569,8 +569,8 @@ static void mtk_hsdam_free_desc(struct mtk_hsdam_engine *hsdma,
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



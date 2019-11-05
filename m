X-GM-THRID: 6755228047172960256
X-Received: by 2002:a5d:6944:: with SMTP id r4mr21150638wrw.238.1572982068480;
        Tue, 05 Nov 2019 11:27:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5284:: with SMTP id c4ls6791877wrv.15.gmail; Tue, 05 Nov
 2019 11:27:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqyB7MtHl3jq/NbEeBXFvxq/ezrPye8U4tJXPNgtKARbBxq15HgPs2qRIy7JrCCvVB1AxEHH
X-Received: by 2002:adf:ef8a:: with SMTP id d10mr26190004wro.314.1572982067158;
        Tue, 05 Nov 2019 11:27:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572982067; cv=none;
        d=google.com; s=arc-20160816;
        b=TM6zvsFUdzN21Udo/SHgH9WC4tpE3xeKTca0ckOc9wTRpWteCliNwwSZmAsyZ0fx3D
         UjH+KKsbcsG9U4D3w541ik058L2GG7jCjNYnzqhh+nHcypwJmz3a4WBUsvC0RnsjgvqG
         D1n4i3ceo98QulZhHRNHHINAYeMLbugGyjORouG9lmCon22xNa5eJ2sbMIKKgBprqxTx
         9/VpUw+5C3b3nWO8+o8+jpmLLXJ48mixJCBFDU4xxrRpBoO5zRbu3FtlMBG9TkOeA9jn
         PT8C5hbLaLCTp10p5BJ/z9GMj1Fqadxaq3dM+XhaCyvgQRuPnQ1gWmwv+HiRO7fXHe7S
         5qPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=MpVI/Mi5duk8sn8vKuPSZMQUy/iuAuCpFbtLe0DB5DU=;
        b=jTTzl82LdyVi2BA1QOVqzLZojuspKnkbp0KmxRoG1HO6Dj0r03fZYFTxK4ueH9CaHi
         wvHsg/KZFkgfxvRLmei6825T9s5SoRO+QVYu69fHzEkGlHR9M0h86R2CJGmmMTBbzu0v
         UKnYR+xfE/cVjPgFAk4/yUZxJbw9nvSuprbljXpwr7rbTjmPuKAjICqhRMgePofxOsqc
         c98qEKyestjQ6IjVBj2DcVR9obp7gWclVnm/pN55pYzsI4RAi0TCPcxzLhuwr09cvin8
         fEldqfj0qo/IBt6a2QxTNeFA/LjCG0QosPO05ONR/H7vyamFgrPHq2/HDq8BmP9dd3r2
         HYJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DocLY3GN;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id w6si46929wmk.3.2019.11.05.11.27.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 11:27:47 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DocLY3GN;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id a15so22826973wrf.9
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 11:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MpVI/Mi5duk8sn8vKuPSZMQUy/iuAuCpFbtLe0DB5DU=;
        b=DocLY3GNQg3dBrcDcWK9Qd2VRwiQQjdHeoLXtOiaPXazyJut2au9npSt/A+6Pe/fWb
         ABECZukwaXdtpdb5JsEjNiIgMvEcGbNYaJ/UCoyMmAxenXF4spesvL9p/VEJZWYcNciI
         Uvy2i0y4dxE87gJ9CXjVyye5BoFwUwSUfdjz6mOic5CYsRWaX9rdbyLm3BbyKPW7B9cj
         adL0y+zucuxIinXtmxwHYHlOjidtI7T4KOIFHU43+02RoHKWbIREVDpO7pxWsilIgxG7
         GaCSxfweuEsXBc/qRJoPgA4QT6O1z0fcx2ZbGDhLdGZn6WvleAch6LOjKO5/sRqwgzc1
         czOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MpVI/Mi5duk8sn8vKuPSZMQUy/iuAuCpFbtLe0DB5DU=;
        b=q9OeuTVL7KBDq2k7u+u815pyYVyt8DnlIcyhzCGph3zBJpRhvVDVjleVEaZEmi1b93
         sHGUnCA0f7uExEKfPp+wp5ztlIa0f7Lo7mjYN9H+N0meDGbrXBPYkEIiQ3d6PMfSc5d3
         Sr/eJRHlwUypeKgC3h8Ubx4yugbKW3s4G1IrDJNielKj2N8M3ASUqqPUdfJZTkvIYalJ
         ooF9c2F8EX7kdPhoQtVpm7NeihuDnUowxiky4cOZK3J1AfuDMefHjstz+ujHli7D1Jrw
         NrGKQDeVwpZHwD4uHnH7D0+4ug0odlytWKXhb7H/OD71qm/p8wOaWIfvYP8bS3KWU5SH
         OFrw==
X-Gm-Message-State: APjAAAUw4ZVyK2qzEN3aBkeScAT9G63TGMKlt6nqYszuh8RFKPe0syNG
	R7GYlRciaG5sN6JifwzkFcKSfhwfI/l/
X-Received: by 2002:a5d:6a08:: with SMTP id m8mr23980200wru.52.1572982066543;
        Tue, 05 Nov 2019 11:27:46 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id g184sm541745wma.8.2019.11.05.11.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 11:27:46 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundtaion.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [RESEND PATCH] staging: mt7621-dma: align to match open parenthesis
Date: Tue,  5 Nov 2019 19:27:35 +0000
Message-Id: <20191105192735.45850-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align to match open parenthesis.

"CHECK: Alignment should match open parenthesis".
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 changes :
 Included one more alignment  fix 

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



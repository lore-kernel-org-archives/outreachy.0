X-GM-THRID: 6755228047172960256
X-Received: by 2002:a2e:9649:: with SMTP id z9mr2771774ljh.47.1572982707373;
        Tue, 05 Nov 2019 11:38:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:30a:: with SMTP id t10ls1192456lfp.7.gmail; Tue, 05
 Nov 2019 11:38:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqz2HmE67spm3kKWVDh0CzuSOFyjl/wzy7hLWS5eUMQgvaVMlW+aN8rVa5REEAVA0riWMQwi
X-Received: by 2002:ac2:44a9:: with SMTP id c9mr5246580lfm.26.1572982706103;
        Tue, 05 Nov 2019 11:38:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572982706; cv=none;
        d=google.com; s=arc-20160816;
        b=A3G7KY5g4vkrNuDiKLp5zbDHN8gOPwvSa0ZFUYWXjMzY3pA7jrf5Mofgjn0Djsi6wn
         WV9h+MY8K3Q199d8XiZuBG9lPNL96hGxOkUHsZaBoQ4NoXshgK3Qacanc2JbPLuXNTX8
         i1z/CUFwgnHO6fHZ891ED9VsIkloul2ab4R3qV118aqG6889r/LyPgojYOPwBAHdwCgT
         mR/lVDitl+APHNyebk8PxUrsp4FQMgQ6W8faqksc7mYVM+qeEGm0nSYJRWUDQl18yCxO
         EKq6C+cOG8v5BHivLc+Zf+DOWAMSR37rmSUGYBn79xCa83a5LwJJ8qMPWyrhOeBvIutm
         By6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=bbQK8jpR6nAqzvfld4sBJaMqAFxbrEw9LJ79PAm0h5g=;
        b=XwOTxA46FKZ1+lXeXTQtzSg7AVDSal6hqtnyswojxMgV/8B30WPLjWhVMvbWlodCGR
         kMNE4XaTs6rvGCtqJtuBKUojHrefQIkc2NaOnmTcD4UBeo3c6MYjWCvRD4VpJJRvCJLK
         d5Nhc96xr2zhElD/m9TC4jxbGMViecNozdnQlfrYOhUUULEr9OrpQl7ZGFzJJ146IJGr
         9wpKmu0o0SXtdcN9uTaTrMZExIlwNd/smo9GcgPmd62gdLA10TgJgp8Yp24pk1Kmt8FZ
         8oPd2OKmVr5LlYqOA6GBNlGvX1rqDCdTdSzUI5X+1K4JS3m02p6iyf0y96ReXbE6qhhO
         JR3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VuIgMBuN;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h21si582750lja.5.2019.11.05.11.38.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 11:38:26 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VuIgMBuN;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id p4so22858244wrm.8
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 11:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bbQK8jpR6nAqzvfld4sBJaMqAFxbrEw9LJ79PAm0h5g=;
        b=VuIgMBuNN+4UcEyupY/gab/a8QTXWtRUuxUs6KGhPc5A63T/ETcyuh+zrJ+HEW3c03
         UXW64TqwFfXc9RXH+3CyPxv4SSV68HoXc1AuTqEhuQpBz5g7Q8mExIAB4BuYXkniqU3B
         NTcVwK2wlaNYz0qwUjWbN9zDWQnSiBwbkKCrdtmNo22o9lrnw2Lidxc0hhycSVEk79nP
         ZWLmST2HgI5dHC7KOGpoLijlFv7203UFFnClZG+3oZk0kyfut3//8gDtVceePelq8KtV
         KJYl07TWaqsTejXu+MEvvy3zQjWL4csdMITyrzekZS0xkzZ1+aNrZlN6yzmfInRfPjHY
         D7qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bbQK8jpR6nAqzvfld4sBJaMqAFxbrEw9LJ79PAm0h5g=;
        b=hTP9Fe3IfzYi1yKESqVQ64s59Hqg0lRaN+FtGpDHAjmNW0rpLl81a3MVDroYGBev33
         0YIaTBm2IE7sIt8XQ1hJicSuFn224SLEdh/pfSG9ZgV8WCHsQlcRjXMG1lI9FZfwrTQc
         dBTnPe+38kQ5iTRtKPSXse5ZUMjZpiNo2g+7QtezOpk60kqfskkVlbZO3QQgnqMrIWf7
         MrboL8G/FY5T5qpIPMPam8jN5UED85neefQuqboCNifyS6rO3cTpCeAjnkD1OZeHinbh
         cOyAG8cexW8WcIEv3bDnx06eKZiQNLMJYWDmCBCscr/O0Ps28+mMBUwXGrIZLT+gXd4H
         WyZA==
X-Gm-Message-State: APjAAAXhn33fkwVPOkAPiinKlAo/CzbXBFOG8qlabvWd6JAJloPyQWBb
	CVvDCihjVPbi78eKhWiueHOguLd/TQqu
X-Received: by 2002:a05:6000:351:: with SMTP id e17mr27754564wre.96.1572982705240;
        Tue, 05 Nov 2019 11:38:25 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id j3sm14066506wrs.70.2019.11.05.11.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 11:38:24 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [RESEND PATCH] staging: mt7621-dma: align to match open parenthesis
Date: Tue,  5 Nov 2019 19:38:14 +0000
Message-Id: <20191105193814.46748-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align to match open parenthesis.

"CHECK: Alignment should match open parenthesis".
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
changes in the RESEND
-included one more allignment which was left out

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



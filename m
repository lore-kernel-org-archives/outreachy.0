X-GM-THRID: 6752717498070597632
X-Received: by 2002:a6b:610b:: with SMTP id v11mr15100611iob.219.1572239561376;
        Sun, 27 Oct 2019 22:12:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:d811:: with SMTP id y17ls1996671ilm.3.gmail; Sun, 27 Oct
 2019 22:12:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzigamDrDJ8ZEk31hI0XXCLnQQKaDf6kFH/0Vp+1zqD46gdWpKELaavADqxqj/e6MSneouC
X-Received: by 2002:a92:ce11:: with SMTP id b17mr17536994ilo.119.1572239559935;
        Sun, 27 Oct 2019 22:12:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572239559; cv=none;
        d=google.com; s=arc-20160816;
        b=XAzubdqBc8epgFRyjZlnCfKYCMy4cJ1b/E9tenipbbY/Irnx4tSasPNbgAspHAHnKC
         lalk4Xe68QLNVVjEsyOjhaVgnOqIxIAFKWF7HKqvePZzqgSBQkxiL4qVG+gDY5MGk9PP
         DgGiTkNzOW4u/Wu+1RfB9CbMPe1KLKBqbO2u2+qHasnJEexoUbgNl7eQzm19Pna1my9w
         esRtL+3vDAgrs636ezpn0JWJ08pqrizX4b7CVTNm6rZ89z6OliYxPwY2kb+prPrQEw20
         AbXRn1U8aRX712vUjPwE1+LpIjqRCGp3RebZDN538PDiqdMVhWM7J8sQOWeOTPHyj7M4
         Mo/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=tSbPmd/1p89XpXq+L992D8BwSGejxMQuOLwi6IYBzr8=;
        b=jjocUiKmLkSss6xkM9gLEkGfxBsufyV07MCLh8QVbZJLdqGWhjwR0F379h026acX4N
         gZsbflx5vfX2H+WtO7grrbuuwebZfpFEy8FGPhmoclgjEd2K7+vojAAUdJ4rDyaXKBF0
         nkmK3CV4ER7eeykWmBJRzFRzF8eKAJUFTu2ZSoFMvLow8KT2Z1vkzZyiewnEB0zhya04
         Rt4/LscXa6CFtEvbZtJ5lW3dTgPkSElSa3Yq8/DmIw8D4m2AcKf8ah0O/o0kAa28a9ZJ
         0bSzk6m4lzemsbr9RBrMAT68d2KxNr55/7WMhnIsOQGr3DAGUBONBHN6gW1ql/jVckcV
         MoOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=naekPkZx;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id x18si503861ill.2.2019.10.27.22.12.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2019 22:12:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=naekPkZx;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x944.google.com with SMTP id d19so144727uaq.11
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Oct 2019 22:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tSbPmd/1p89XpXq+L992D8BwSGejxMQuOLwi6IYBzr8=;
        b=naekPkZxLHn+x8Pafy2lsNzXEoM1UGOh7UciAmzhnj0ksZ2xoN1QuulREnPHl8CFuo
         tsY3DYJTulYBP43dQpiCTL0cNux2mdXuxynRBpzyDMAKHEh3IY+5M55rM0sAk6yfw+eY
         kMBM+cem+dIZpvsCRHmpQWycOYxdwy+nYRQ5rROQWX+aF2Za892AfId0+VMzDg+9Zpcw
         BxM3ZIzo+Y72kUavrkUOOaSaLvOFDXLRbju1gRFUKUwMUwWbnmsJpsf2gDdP2x+T7yUP
         Oma/VfKO39C9Hn+aW6yajduQjGmWaya9izkIeguDgCy+2bhYJPYn/t8ZeqFVgxu0163J
         M80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tSbPmd/1p89XpXq+L992D8BwSGejxMQuOLwi6IYBzr8=;
        b=Fl8ax6YLdxvSR1Q4rucLIH0yjHpSh8zImDJze+gxNJUtZ4XZASNhU9eRvDuA2XhREn
         qELVYV+L9x6/G8NJSZY7LJ5jAtP9flK/GnBV+oCPdennp3pKY+AAq9/TeQz5efMBi562
         6Gs0H7J1OR6uAnvlUJBanc5Bz7Ia6qLOywz7PyCOgv4hnBfVxB/eyx+0IefB3genIuC3
         Qhs0rpdlhkpuF49JF2klFt32aDVPB+z6uf2bQdsn4ArWzCSt3a78VDvFVoLA59KgVho1
         nFytTVSh6OgWidt6IcKY6tGhhN2UpE13iW6nXPBxWEABTcnf9z8GMqSNzFGirEymfvXg
         gozw==
X-Gm-Message-State: APjAAAWafJ0D4Yu2Sw0dsu38QTGP5/7khTWyVdlbVCIua1U1CK5u3QxJ
	StHYSRA4F4UFvXmpBSKdVLz4NIEHd4L1VA==
X-Received: by 2002:ab0:7502:: with SMTP id m2mr7177153uap.18.1572239558947;
        Sun, 27 Oct 2019 22:12:38 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id h20sm943395vkn.5.2019.10.27.22.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2019 22:12:38 -0700 (PDT)
Date: Mon, 28 Oct 2019 05:12:37 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] staging: mt7621-dma: Remove unnecessary line continuations
Message-ID: <20191028051237.3row7xnbr6pgn4bp@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

checkpatch message:
"WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations"

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 03c8937f80b0..94c2c708dc92 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -208,8 +208,8 @@ static void mtk_hsdma_reset_chan(struct mtk_hsdam_engine *hsdma,
 
 static void hsdma_dump_reg(struct mtk_hsdam_engine *hsdma)
 {
-	dev_dbg(hsdma->ddev.dev, "tbase %08x, tcnt %08x, " \
-			"tctx %08x, tdtx: %08x, rbase %08x, " \
+	dev_dbg(hsdma->ddev.dev, "tbase %08x, tcnt %08x, "
+			"tctx %08x, tdtx: %08x, rbase %08x, "
 			"rcnt %08x, rctx %08x, rdtx %08x\n",
 			mtk_hsdma_read(hsdma, HSDMA_REG_TX_BASE),
 			mtk_hsdma_read(hsdma, HSDMA_REG_TX_CNT),
@@ -220,7 +220,7 @@ static void hsdma_dump_reg(struct mtk_hsdam_engine *hsdma)
 			mtk_hsdma_read(hsdma, HSDMA_REG_RX_CRX),
 			mtk_hsdma_read(hsdma, HSDMA_REG_RX_DRX));
 
-	dev_dbg(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, " \
+	dev_dbg(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, "
 			"intr_stat %08x, intr_mask %08x\n",
 			mtk_hsdma_read(hsdma, HSDMA_REG_INFO),
 			mtk_hsdma_read(hsdma, HSDMA_REG_GLO_CFG),
@@ -243,9 +243,9 @@ static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
 		tx_desc = &chan->tx_ring[i];
 		rx_desc = &chan->rx_ring[i];
 
-		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, " \
+		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, "
 				"tx addr1: %08x, rx addr0 %08x, flags %08x\n",
-				i, tx_desc->addr0, tx_desc->flags, \
+				i, tx_desc->addr0, tx_desc->flags,
 				tx_desc->addr1, rx_desc->addr0, rx_desc->flags);
 	}
 }
-- 
2.17.1



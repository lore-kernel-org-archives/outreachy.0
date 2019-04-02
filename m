X-GM-THRID: 6675395157685174272
X-Received: by 2002:aca:61c6:: with SMTP id v189mr8215477oib.35.1554236551247;
        Tue, 02 Apr 2019 13:22:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:63d8:: with SMTP id e24ls394543otl.12.gmail; Tue, 02 Apr
 2019 13:22:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy6OY64dWI/v+COyT8QfjVC+6AzplocdLupFB3fb4l4uu/+GDVwOMlpRTvOn/ifCcR/xRdS
X-Received: by 2002:a9d:6a8e:: with SMTP id l14mr8170734otq.39.1554236549702;
        Tue, 02 Apr 2019 13:22:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554236549; cv=none;
        d=google.com; s=arc-20160816;
        b=RKhBU1CM5aPh7bNFrLZUyGUUmBFAeNnVljYMTovhlmQdSHzYr+NI07o2ngaCz0h9r/
         hhn1xRNVkcpdUhinrlq8JZbg6rz014YmqYFfd7Jns0fGEC5o/QT2jvUVorrF1Afyu0th
         95Hny8Hf217z2x2PZ48CyLqxzfmBLUYFD+TwVeNl6hSdcFx/CdGP5Rt79WHWTNp71ugy
         x7S8qRwtVbVB/Mnv5qnOPtd4+Skq/+Z/647walH17vXPS8mhAGYc+u5PRM7J9VDOiczI
         Q6wdX3eIAmI8yV0VkFTlpMUlXX3EcM6PYSrtJOW+sQF6uxd91+3wcfA+iBCsqC45mDpF
         pD5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=/0iPhvSj0IZg/xLGI9z8skv7hgYdeErPaDv5eImBumc=;
        b=Ge4OoALupu2XWkLRJ7uBf/26jatU+PVRmFaelhRVVW5YitIfoytckcCec9Nq098PHj
         dAYmEAUJH8XwRka12dOKckhPQIcCHM0WhruxHSnLNUq94wwWtA4Use66lSb8y2Jtagbs
         6+DB1MOansQ1TDHs0czP+v/tUfS1DqunznkkDg7KG17msHLnBNJnhk3dLLuqujBw9LEf
         2kHrQOWkiB1wyMW0mNQ1SPiP8g8ei7WPPCCTsNrEP3H2VCprQmtZl7BArEu4NxowUUWe
         60JWPcF8H+2oU9xQzHSM6D97K0p7Z6LtG93uGkzyCpB/1dUZyzWstllIpGWikjf80V7E
         Sn+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=aTpBeK9f;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.211 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic304-21.consmr.mail.sg3.yahoo.com (sonic304-21.consmr.mail.sg3.yahoo.com. [106.10.242.211])
        by gmr-mx.google.com with ESMTPS id w188si57327oig.3.2019.04.02.13.22.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 13:22:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.211 as permitted sender) client-ip=106.10.242.211;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=aTpBeK9f;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.211 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1554236547; bh=/0iPhvSj0IZg/xLGI9z8skv7hgYdeErPaDv5eImBumc=; h=From:To:Cc:Subject:Date:From:Subject; b=aTpBeK9fmLsBBlrLRuwFQkqTJNkyrWyx6Y25Uv8QLR7MZUcmbaMVBYuRZohJWTJtqxOhVXGUECwsl9qX/SudLjgwTRIvqr7+ZEMGKi5oQZbTumg/SyYEy4FDDHQZDlB+do++8tc5sdUxLkV36Nu5/u9A3ZtCDtI+LieuIDml0Vzi3vWw5S6gkYnf5YTTRAY+UGQgC1Hgy1QbspSQIZk7jsC7zBrPXD6RHDcJvnc5vzOtISREJyXnpZqNRLO2QTXsjca8EZb/wa/PN49UwcLrv5iR0PEOnMhGn7oF+cVZXZCashfs+oIsEN5nsqeFhWo0QlmAhO/3QS4zbGCCokn5dQ==
X-YMail-OSG: GvpvdSoVM1mbBDSUBh5i1xro5q5KPeh8nrzSVdYHff3BJaMKAeRpAnpGf3Hrg1s
 dZfA_suNhGnCpElVD5NemiPgI9aQOccaPWvgVVIEK_Ohl8HI8qsQr02ioJZQNh8sDrf_DG4K3VuV
 tHr1t5imFLWnDnYWT2eQ6QZ3VayvjJr4axJnOKZUGV6ZCPZ1qDuEjeR8BcijzflY9WOXhB4eh.p6
 x4KrLCDKpQWVX1T1wIYSUXaa0Fq1YU_G6fEaYDCR5kfAwXjaqt7AepJ.KxFq1raIv78e4EOKP4Xz
 uxvNCd3430zuXfY_WyWN19B6XAStlfvCPC8G2EWaDid_5GPGQskAv1Vsg48M3QvRQw3X1RKcn82C
 5Xc0swCjJ5vArDXoDz5FbZugjvv3c8mPOUtxSZqpPB781inUx4P16kVeS4yTKBGBIk33lqwI5blf
 6Clp6w1bdV_vCxOnnYu2wn1uDoU8UgNctURuc3G1SzaovuJMRs.gFTkxUsfP2GTor_SsVjDdJs_O
 rVFzeqXWKf5wxsqvJ3S0bNNjMwgoO992qeE.3UJGhEV0Mveln0imjgEB6UcRB91ojaXpvh0P85WP
 FWcto4iV5Drl.OQpvVLEALXthPuKydI1KFBrbMisVTJlVvBvztGFBpl8phv3Bm.08CFAdbDHtBu0
 WrQmWhBN9PMHAx6J40o4cXbDxoaLajyqOUXBCCoE5pQImKwj6M_CDeRs_M1h7R8aNTi98ekVgK7T
 tH5iKPI7oERny16gT6pdWc4y7RxWOA6NIEXlw3hInZ7Lz0EC4bzyao8bx_VUyoD2PuuIaRKDQLVa
 TRvaVY1XhXyREfKXfJs2clcBNCHvPKoakTWlkCljbp.NWIkVvqtjyUesskE17EBQK82RscgiACjv
 RwrQv30mxkKtrV1O6r46ZuycSX3KqtQqbRwL_j196iKiv6mumw3xi8VBKXsHBM8QbpAVBcLdc5TS
 n9BVkQNrLueitfpQ4Pj9dxhR_hlPpMZnKBVl9e86rE4GNAHt05XI6ND.ODB9tDRrIiHuqRpzIBkM
 NDr154yLKMWoMn1232Z5sVEQIqCQf7lAo3nd4mEGKbcW4jpmrou6.hLQb5I0VEivx2GaBK.tkSoK
 N150uqBc9nEiNmHfHPw..Pc.1uYjOi9EMv06y
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.sg3.yahoo.com with HTTP; Tue, 2 Apr 2019 20:22:27 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp420.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 6808587021ddc129f20791b64885c566;
          Tue, 02 Apr 2019 20:22:26 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	matthias.bgg@gmail.com,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: mt7621-dma: Remove print statement on devm_kzalloc error
Date: Wed,  3 Apr 2019 01:52:17 +0530
Message-Id: <20190402202217.3526-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove print statement following error of devm_kzalloc. Issue found with
Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 74c374f7bef4..0fbb9932d6bb 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -665,7 +665,6 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 
 	hsdma = devm_kzalloc(&pdev->dev, sizeof(*hsdma), GFP_KERNEL);
 	if (!hsdma) {
-		dev_err(&pdev->dev, "alloc dma device failed\n");
 		return -EINVAL;
 	}
 
-- 
2.19.1



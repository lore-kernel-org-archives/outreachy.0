X-GM-THRID: 6395948622508195840
X-Received: by 10.46.20.74 with SMTP id 10mr2640078lju.0.1489172834870;
        Fri, 10 Mar 2017 11:07:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.143 with SMTP id m137ls147047lfm.51.gmail; Fri, 10 Mar
 2017 11:07:14 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr3720416ljb.11.1489172834262;
        Fri, 10 Mar 2017 11:07:14 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id t131si29728wmf.1.2017.03.10.11.07.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:07:14 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id u132so483599wmg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=aZU4RuP85dWnrxDJXIQQBirU+2HDJ94B1Od/NJjWKhs=;
        b=GDKpb5RV0qv1w8osGXSSUR16Ed0x5caYj9Wj1ed+M5VUV1gR7rpkywy+piO6jJw7UW
         JN7l8JKa3SAz83yGGxZY2vRFpnMXkEewsjZkJw3mLUML6dTMAcS/3nBPfOiqaoar4sQv
         61Ko3NQXi46fBF4XQgRNZILxmAjXvyRwhxF9nBQd0yyAxprRhChvwnB6C/52SVJRYKDg
         GMt1Tfxm1uRgf8RD87wMjklM2EhfxAb6CnAq1xn1xp4N24LPaMjhdMDFaTfeKOf3GVrc
         0fzmUYjMt56WtY3nB8NA0k0U+rvMuU/RAR2NoIPoLmjkQx9p+E8fC+n4biWW+JX9QAHC
         Fk9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aZU4RuP85dWnrxDJXIQQBirU+2HDJ94B1Od/NJjWKhs=;
        b=LZJOv3bArWKFNEeLAoVn3mWjtXEPdsBoZ5p7VwFGY9T1pWNcqxw1v34T797TR/fVAM
         Dtk1KEKMvUQiEILjI3sG+INR3rLBggYVagO8rNyEEmuYgilOwq1IoeF1sO9DVvFaN04h
         nhyRYfAfwANJxDQreT4HhA82FvGOd8EjaQuP53K2vlBiPN8nJ0tRNG+hGbd2Hu0soIm1
         jynP4FqYaQvJPJpgQLwW5NxTk+aKLPtilKN6QpA5BVgkDggZPAA6cLcjc7EQMEkXmlvi
         bKSCVpGqcd418243nzZTorVdpxo0pPDbLtSCBNNkg6X2R553uUV1YS/AzQOD8zO/FePD
         lvzw==
X-Gm-Message-State: AFeK/H2eRY95P6L/+Ph5jkM8WMNcX6Nm2X7HjJgnCIham3fj98Eh6SRvOJIacPKgNdqptg==
X-Received: by 10.28.187.213 with SMTP id l204mr421564wmf.104.1489172834057;
        Fri, 10 Mar 2017 11:07:14 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id 17sm14115519wru.16.2017.03.10.11.07.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:07:13 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 3/7] staging: wilc1000: Correct name of variables
Date: Fri, 10 Mar 2017 21:07:11 +0200
Message-Id: <20170310190711.19915-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Correct misspelled variables: unkmown_mask and happended to improve code
readability.

Problem found with checkpatch.pl.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 887f45f..414ef21 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -929,9 +929,9 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
 	int ret;
-	int happended, j;
+	int happened, j;
 	u32 irq_flags;
-	u32 unkmown_mask;
+	u32 unknown_mask;
 
 	if (g_spi.has_thrpt_enh) {
 		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
@@ -951,7 +951,7 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 
 		j = 0;
 		do {
-			happended = 0;
+			happened = 0;
 
 			wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
 			tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
@@ -962,14 +962,14 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 				tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
 			}
 
-			unkmown_mask = ~((1ul << g_spi.nint) - 1);
+			unknown_mask = ~((1ul << g_spi.nint) - 1);
 
-			if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
-				dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
-				happended = 1;
+			if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
+				dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
+				happened = 1;
 			}
 			j++;
-		} while (happended);
+		} while (happened);
 
 	*int_status = tmp;
 	}
-- 
2.9.3



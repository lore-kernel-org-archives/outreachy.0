X-GM-THRID: 6393986378889166848
X-Received: by 10.98.160.25 with SMTP id r25mr2424801pfe.25.1488715964472;
        Sun, 05 Mar 2017 04:12:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.176 with SMTP id 45ls4131959otd.49.gmail; Sun, 05 Mar
 2017 04:12:44 -0800 (PST)
X-Received: by 10.13.251.70 with SMTP id l67mr5040072ywf.87.1488715964078;
        Sun, 05 Mar 2017 04:12:44 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si850763pfz.1.2017.03.05.04.12.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 04:12:44 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so3772638pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 04:12:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=D90zDCq/2VpkQ1gdpP93kKMbqSHdYI8lTvAHZRhh69g=;
        b=d0JDqxXu95uw9rWnoy/3KAc0bG58ElYopFR56hm1+3YVD/jhbryWCtVRuCsRUBP/Hm
         DL2p0cgV+2BF61h+vKLJFxjCdtp9+8ZDJb4LQ/tyX6ojowUvP07YTQ5bIQznj/Un6aSY
         Lv2Uphkgei2I7x+NDSoOTmJsQm3yDzdxkXT+ruUzGK9pSmxC4v0cQUvhMgaUMk2RUslf
         6v6R2gLiOGgnVNBQxuBmczw2AVrFM102Sdgqrj00KPOA23CJkwJNpPbRRFu1A8lEXpTI
         cwejpsuTCyrP0ZV9DHTPCAuSoLW58y1KJAJlod47CWb7RfV2ndkTuB7VqMLdF3EdgiFW
         rkxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=D90zDCq/2VpkQ1gdpP93kKMbqSHdYI8lTvAHZRhh69g=;
        b=lzZxTd1ZuE/N+qQNwVLDcaWAQS9afX8L8xu7iMfEB7ukx7cLiq9HUfkNG+SToVdwm5
         K4stWS9mMrELVQBsuPMrL9IXrdOPFqaVA7sSsj/iiAODSDcKy2L0QzsecI7SOX4wZ4hG
         P4PyOxdD5P5z8wC0hF62HtRqgH0AgPmY2O9zt4eVqcLhWgBIFDd9h1V2ro8uy/ncCH/v
         31JCX3qhudHa6CTJbYja7+KiLD85cID75i4e6on9douAwtxTeZ2YmNJdzybQfkkd9hVJ
         r7viRHw9c2pg+Tn60s5hcmvukSqnw1+i2FScIbEk5i6bU/kMc9y/t1R9mliRtFySSFOs
         xoow==
X-Gm-Message-State: AMke39mYH4BX2XhKqBL5LflXPqVRe1/UHIRHzUhQUH3IBJUDmnejXmwzl1f+iqxAFZzCDA==
X-Received: by 10.84.239.8 with SMTP id w8mr18152909plk.73.1488715963827;
        Sun, 05 Mar 2017 04:12:43 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r17sm33707382pgg.19.2017.03.05.04.12.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 04:12:43 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6655: Remove unnecessary parentheses
Date: Sun,  5 Mar 2017 17:42:28 +0530
Message-Id: <20170305121228.5718-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix the checkpatch warnings of kind:

Unnecessary parentheses around priv->apTD1Rings[0]

Remove the parentheses around variables
being referenced.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/vt6655/card.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e0c9281..fd05f49 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -524,22 +524,22 @@ CARDvSafeResetTx(
 	struct vnt_tx_desc *pCurrTD;
 
 	/* initialize TD index */
-	priv->apTailTD[0] = &(priv->apTD0Rings[0]);
-	priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
+	priv->apTailTD[0] = &priv->apTD0Rings[0];
+	priv->apCurrTD[0] = &priv->apTD0Rings[0];
 
-	priv->apTailTD[1] = &(priv->apTD1Rings[0]);
-	priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
+	priv->apTailTD[1] = &priv->apTD1Rings[0];
+	priv->apCurrTD[1] = &priv->apTD1Rings[0];
 
 	for (uu = 0; uu < TYPE_MAXTD; uu++)
 		priv->iTDUsed[uu] = 0;
 
 	for (uu = 0; uu < priv->opts.tx_descs[0]; uu++) {
-		pCurrTD = &(priv->apTD0Rings[uu]);
+		pCurrTD = &priv->apTD0Rings[uu];
 		pCurrTD->td0.owner = OWNED_BY_HOST;
 		/* init all Tx Packet pointer to NULL */
 	}
 	for (uu = 0; uu < priv->opts.tx_descs[1]; uu++) {
-		pCurrTD = &(priv->apTD1Rings[uu]);
+		pCurrTD = &priv->apTD1Rings[uu];
 		pCurrTD->td0.owner = OWNED_BY_HOST;
 		/* init all Tx Packet pointer to NULL */
 	}
@@ -575,12 +575,12 @@ CARDvSafeResetRx(
 	struct vnt_rx_desc *pDesc;
 
 	/* initialize RD index */
-	priv->pCurrRD[0] = &(priv->aRD0Ring[0]);
-	priv->pCurrRD[1] = &(priv->aRD1Ring[0]);
+	priv->pCurrRD[0] = &priv->aRD0Ring[0];
+	priv->pCurrRD[1] = &priv->aRD1Ring[0];
 
 	/* init state, all RD is chip's */
 	for (uu = 0; uu < priv->opts.rx_descs0; uu++) {
-		pDesc = &(priv->aRD0Ring[uu]);
+		pDesc = &priv->aRD0Ring[uu];
 		pDesc->rd0.res_count = cpu_to_le16(priv->rx_buf_sz);
 		pDesc->rd0.owner = OWNED_BY_NIC;
 		pDesc->rd1.req_count = cpu_to_le16(priv->rx_buf_sz);
@@ -588,7 +588,7 @@ CARDvSafeResetRx(
 
 	/* init state, all RD is chip's */
 	for (uu = 0; uu < priv->opts.rx_descs1; uu++) {
-		pDesc = &(priv->aRD1Ring[uu]);
+		pDesc = &priv->aRD1Ring[uu];
 		pDesc->rd0.res_count = cpu_to_le16(priv->rx_buf_sz);
 		pDesc->rd0.owner = OWNED_BY_NIC;
 		pDesc->rd1.req_count = cpu_to_le16(priv->rx_buf_sz);
-- 
2.9.3



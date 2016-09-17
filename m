X-GM-THRID: 6331266648892243968
X-Received: by 10.157.54.250 with SMTP id s55mr1699756otd.48.1474112907573;
        Sat, 17 Sep 2016 04:48:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.88 with SMTP id r85ls1867152itc.0.canary; Sat, 17 Sep
 2016 04:48:24 -0700 (PDT)
X-Received: by 10.66.148.202 with SMTP id tu10mr11347963pab.8.1474112904749;
        Sat, 17 Sep 2016 04:48:24 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si5048383pfe.0.2016.09.17.04.48.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:48:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so4581744pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 04:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oHot5di4fb1ntXz4/WYOZJ+jC7nG/BQGsEOq0YRFFJY=;
        b=ZlZoWeISb2CEN0TewgzT9Yu2tc5nNNgPcH59W9WhItk6MgJE4/OcnQjMKsZY4Up18r
         Ly8qQLVHxsXmD8qtppG3tEXCoY4rQyC3Anx00Ukts+JVc/44CPiZXHIN2bSZbQBXNC7A
         1KFX2IBSIKBoB+AD3LDyoqoBUqC4HwMo3ItmzOxiDbotH7QmU0ENYVpzA9HBug5a2FxD
         66g0X7WzPuxl+bJmuqF8vNna62qNUHqfu7nBsdUUelN0eI8CRlnsMScOyL08OE9Dwa2I
         3h9p/A1yRcTOyrfCxeYahEMYv2s8TeFpTH9Y7Vi0NHGpExrSz3tO2Aa6p2JZC65EPpe6
         mTkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oHot5di4fb1ntXz4/WYOZJ+jC7nG/BQGsEOq0YRFFJY=;
        b=Tthol7pHiCCEtNA4u9g+wIawIj0PgFnVp2AOol5u8IRk35hH3QI5ZBWhCjAke6O3Aa
         DS87a3j48MwKQcRwPA3EOGbxDLMRN4oIP4gxLUYa5Wrf4pdr0n3x0TYwqYnRKybuS8Lr
         5p3Y5dpQxcY2sR/aDtWDdHYAuGokXkeujnlGMplqjoUacRxScw84vT7X490C+juFs8XI
         Fouo0Vq60VaUoBZLDSacYXxpbczqDv2Zuh9y2qe2HkwhSXkydEYRr5C8gky0R4g1E9AS
         WEfkKaVqP9iQcRYnnpnP6ASJQa4s3ZD+Wm/AtqTiatUUbMgOP8C934mnZsWzhs5ki2NC
         PCbw==
X-Gm-Message-State: AE9vXwO7HwVesTD0DTZ36cekDyZinFjAYWI4HEg970HeaFh5P0sStyEt5S/KkGsBRo5NTg==
X-Received: by 10.66.245.204 with SMTP id xq12mr6513292pac.37.1474112904553;
        Sat, 17 Sep 2016 04:48:24 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id ps2sm18698873pab.10.2016.09.17.04.48.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:48:24 -0700 (PDT)
Date: Sat, 17 Sep 2016 17:18:19 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/4] staging: vt6655: Replace explicit NULL comparison
Message-ID: <241ad34249b77e68f1a52ebe7255747c77e43645.1474108445.git.namrataashettar@gmail.com>
References: <cover.1474108444.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474108444.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace explicit NULL comparison to resolve checkpatch issue.
Comparing variable x with NULL same as !x in this case.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index ed12b5c..62418c2 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -477,7 +477,7 @@ static bool device_init_rings(struct vnt_private *priv)
 					     CB_MAX_BUF_SIZE,
 					     &priv->tx_bufs_dma0,
 					     GFP_ATOMIC);
-	if (priv->tx0_bufs == NULL) {
+	if (!priv->tx0_bufs) {
 		dev_err(&priv->pcid->dev, "allocate buf dma memory failed\n");
 
 		dma_free_coherent(&priv->pcid->dev,
-- 
2.7.4



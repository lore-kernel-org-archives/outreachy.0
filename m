X-GM-THRID: 6331266648892243968
X-Received: by 10.31.223.3 with SMTP id w3mr2426272vkg.25.1474189545324;
        Sun, 18 Sep 2016 02:05:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.17 with SMTP id n17ls7346068ota.40.gmail; Sun, 18 Sep
 2016 02:05:45 -0700 (PDT)
X-Received: by 10.129.41.14 with SMTP id p14mr2340074ywp.91.1474189545030;
        Sun, 18 Sep 2016 02:05:45 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id e66si261623pfk.2.2016.09.18.02.05.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:05:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so5710039pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 02:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0t+bE8P3ZNY+Z3U7vEDXYcq1mxWOv5ePrEhGoE/d3CE=;
        b=XVZJ4OE2F8VH4xHcH++Fq0tjpDDLtQho36G/u0AvlVkZItp4jVM8lPWkSAUgJf+t3/
         LO8RjPNDRGZftIepDUYLEi675fj2CxlRY1rUKkyH05kLLHqTMckw807YUgK5+AV9hNhV
         qzQfDliKxvpjPG7y6GvfLtfKYJgsVIN4rhnMnExDCmiv+uvqvYPlzEMcjhjnOeAsLrwM
         QTS4rnCw95TDVSVBSToSSvJ8QQAh597VGzEA86s0ABWKVx0jGt5b1m7tYTO5OUG9dBOu
         cSq9wwmj/5n/qaHDBYHaC2gLBplgvpWMxREAUfX6zzNCeBaVudCHSTi8719PMQeGvp2+
         eV4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0t+bE8P3ZNY+Z3U7vEDXYcq1mxWOv5ePrEhGoE/d3CE=;
        b=OrgZWY8prXFZ2yJEchT8p+VSwe9c/nNqjvK+fHUfnf9inNqUoni0CzKKwBkbDMCztY
         fskjmavF8r5ZOgIB34R6v5VfdW+4MM/SD/vPo0IA/BoJiWSycvzVaWIPHauTjHDvmVN1
         mskBmpTLjTXl2+6bqa9xNcCQqoDTKqL/KmsJFMANdYrbXucaelUVPZQpo6Aj9jAHHh8Y
         GvVHqCWp03FsJWxviJMPPoG3akBiwtE1sTRIlvuc9XYUYmVHXX9pIljPBCYL7+2HM3oF
         LA7xx6DOmec5FGpMe25yBlIvlByUsHPccQQKvGzh4L5NgGb/wuLzILfxRvr0XXAZpoIY
         9GGw==
X-Gm-Message-State: AE9vXwP501wS7Tzv9rJ6czERy6/yjjZeSeQM1S+VCqSpj+GjazznMdLkDf/rMEElD3Wl+A==
X-Received: by 10.98.205.66 with SMTP id o63mr36964420pfg.37.1474189544851;
        Sun, 18 Sep 2016 02:05:44 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id nc13sm23303444pab.43.2016.09.18.02.05.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:05:44 -0700 (PDT)
Date: Sun, 18 Sep 2016 14:35:39 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 3/4] staging: vt6655: card: Break multiple assignments
Message-ID: <fe7f635d9b75bb93286245415d4a54497a8a4842.1474187686.git.namrataashettar@gmail.com>
References: <cover.1474187686.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474187686.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Break multiple assignments on same line to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6655/card.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index afb1e8b..00e7858 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -528,8 +528,10 @@ CARDvSafeResetTx(
 	struct vnt_tx_desc *pCurrTD;
 
 	/* initialize TD index */
-	priv->apTailTD[0] = priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
-	priv->apTailTD[1] = priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
+        priv->apCurrTD[0] = &(priv->apTD0Rings[0]);
+	priv->apTailTD[0] = priv->apCurrTD[0];
+        priv->apCurrTD[1] = &(priv->apTD1Rings[0]);
+	priv->apTailTD[1] = priv->apCurrTD[1];
 
 	for (uu = 0; uu < TYPE_MAXTD; uu++)
 		priv->iTDUsed[uu] = 0;
-- 
2.7.4



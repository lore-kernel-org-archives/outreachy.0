X-GM-THRID: 6253815100366389248
X-Received: by 10.13.221.75 with SMTP id g72mr23938332ywe.34.1456079795015;
        Sun, 21 Feb 2016 10:36:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.169 with SMTP id x9ls370259igl.25.canary; Sun, 21 Feb
 2016 10:36:34 -0800 (PST)
X-Received: by 10.50.57.17 with SMTP id e17mr7918231igq.11.1456079794751;
        Sun, 21 Feb 2016 10:36:34 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ff2si2953065pad.2.2016.02.21.10.36.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 10:36:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fy10so78244505pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 10:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=f59AOrTEim1zt1XFqI7kmL61zJ1GiEJk5afWlNcMrms=;
        b=EuPMbUqIacL+ficYimDytyUr9PquGjIJHdTSnnPSGYDBJ/vFrtOiVw0BX7QYDc2rwn
         VxYHvwh2eT3+iSheEU4z1NnTBT4oUJACnYuSyFxtG6aAJ87gkq86A9BLchq/4GiM7BI+
         y1Yq07invhQND23iU8grOCGuGGPqk2vO91JSG67ZdnnbcsWicXNL1+kTy+7TMNV8EhOW
         gh7rEyghfNt0vtVVS54ZotUfONlQGJNB3BubrfdW1sDtf35hB7eh1vFaKf12eHvvPKAi
         Gxcz6XWSV3ZzeNchCmvIq1sFi5ucV5G7ZCtRcKNB2UEPEVyzTfVoqGUO0I22lj6MOXDK
         q/ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=f59AOrTEim1zt1XFqI7kmL61zJ1GiEJk5afWlNcMrms=;
        b=byF7gsY5XSHgo+vmdUNwPL8p/jJcl1zxZIYiPWgII4XQK8Z+OAfm6VThd7zMF7aTCb
         C/LN+oxbCDZHWEyZ9FT9Bg0PwFU+Nwk+UfFQaEVUwSxsJpe8b4ReYuqBHK+zlMOIr1p2
         1GcAKLPti0hXFuat1WwmgaAb56GugDhNeqHc+kiLUybH41Z7d55Jhlq2pnoyO6zDMSI2
         61twed2iFFqwMx4V7zGyQI/C17qaQkcsRNM568rmlo/WhOH7xp2/Pv65LJ38NIIxlWAS
         bz5CW73sIL7GRyRy0vpZ3o6t1izJzuTqoxDgGotGW93z6qGO1CSautkVB93+/vR6izoD
         yoiA==
X-Gm-Message-State: AG10YORtW87pCVOEIEcvl9VarYf4tqo6t/MmEsQxkcWW758YIyJBkT3Xt7ppsJsAQfwotg==
X-Received: by 10.66.124.226 with SMTP id ml2mr32698122pab.90.1456079794632;
        Sun, 21 Feb 2016 10:36:34 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 76sm31291584pft.44.2016.02.21.10.36.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 10:36:34 -0800 (PST)
Date: Mon, 22 Feb 2016 00:07:07 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: most: hdm-dim2: Use macro DIV_ROUND_UP
Message-ID: <20160221183707.GA3444@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hal.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hal.c b/drivers/staging/most/hdm-dim2/dim2_hal.c
index 3c52450..03da89e 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hal.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hal.c
@@ -120,7 +120,7 @@ static int alloc_dbr(u16 size)
 		return DBR_SIZE; /* out of memory */

 	for (i = 0; i < DBR_MAP_SIZE; i++) {
-		u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
+		u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
 		u32 mask = ~((~(u32)0) << blocks);

 		do {
@@ -140,7 +140,7 @@ static int alloc_dbr(u16 size)
 static void free_dbr(int offs, int size)
 {
 	int block_idx = offs / DBR_BLOCK_SIZE;
-	u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
+	u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
 	u32 mask = ~((~(u32)0) << blocks);

 	mask <<= block_idx % 32;
--
2.1.4



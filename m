X-GM-THRID: 6201801686594355200
X-Received: by 10.182.117.225 with SMTP id kh1mr21397763obb.12.1443969478108;
        Sun, 04 Oct 2015 07:37:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.1.52 with SMTP id 20ls982840igj.1.gmail; Sun, 04 Oct 2015
 07:37:57 -0700 (PDT)
X-Received: by 10.67.24.39 with SMTP id if7mr795127pad.24.1443969477699;
        Sun, 04 Oct 2015 07:37:57 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id uv4si3282792pac.0.2015.10.04.07.37.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 07:37:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ex6so150894132pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 07:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=5ZLSvYcKXm1CjPDCkJcEHjv+jySC8YTDdIDc8/nI7f0=;
        b=Gka/VI5q5XgafWTfNJbO5yGjbI/Qc+a3fUWK73gjzZ4qnpt67XsDJn7l2+bzEtunEE
         B4TdjVrjANtDas3tOPCP3LdDXWwjNA/+BXSqVKzWOm/Rbd5FHgjqftvVR9432Z2CmZfT
         P4jZwPVsAMjp5j7Iqd7fc8+yRABOkR7CUVyRnziMKuFgOeT8TiZcftSPLU5E3CLRwmds
         P4+aiBrCHwMQhVGFfA0Dd9zJp0Lg88xkmZlj6E2GihrcEEhcTdHJsEfO+fS7vrdzuei5
         HyP8naoKKJPlVcBkPlL6n8hsuAGfuoDG9YH+lwHnuRKOU5sR8C5SXF2oNOd8YTFaoM+e
         XOaw==
X-Received: by 10.68.219.4 with SMTP id pk4mr33850276pbc.138.1443969477537;
        Sun, 04 Oct 2015 07:37:57 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.217.58])
        by smtp.gmail.com with ESMTPSA id fx4sm22338867pbb.92.2015.10.04.07.37.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 04 Oct 2015 07:37:57 -0700 (PDT)
Date: Sun, 4 Oct 2015 20:07:53 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: sm750fb: Add space around '/'
Message-ID: <20151004143753.GA9625@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add space around operator '/'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '/' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index e987971..8d167fc 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -391,10 +391,10 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 
 	if (pll->clockType != MXCLK_PLL) {
 		xparm = &xparm_PIXEL[0];
-		xcnt = sizeof(xparm_PIXEL)/sizeof(xparm_PIXEL[0]);
+		xcnt = sizeof(xparm_PIXEL) / sizeof(xparm_PIXEL[0]);
 	} else {
 		xparm = &xparm_MXCLK[0];
-		xcnt = sizeof(xparm_MXCLK)/sizeof(xparm_MXCLK[0]);
+		xcnt = sizeof(xparm_MXCLK) / sizeof(xparm_MXCLK[0]);
 	}
 
 
-- 
1.9.1



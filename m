X-GM-THRID: 6202887067130658816
X-Received: by 10.112.209.73 with SMTP id mk9mr1769101lbc.14.1444332336086;
        Thu, 08 Oct 2015 12:25:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.106 with SMTP id r10ls203429wiw.42.gmail; Thu, 08 Oct
 2015 12:25:35 -0700 (PDT)
X-Received: by 10.181.29.103 with SMTP id jv7mr1094816wid.0.1444332335594;
        Thu, 08 Oct 2015 12:25:35 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id c1si360167wiv.3.2015.10.08.12.25.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 12:25:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id lk2so39206119wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 12:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=xX6MInnEFT/YmR5FWMbBd4u/NECT01jn4qE+Mu6c1Z4=;
        b=BgzwmdHaQDxhdlSZGJv+R8akk6ImfqH8yb6C9VZErTCwcoH9sm9vd72wgdFrRDAJ0G
         nLzVIcB8bjUZI+ywSr4sbmun0yDwgHUaClIhJR4pNNx5hI+hTdrqEvcAxm3j9HnTuQjX
         hPWqDp+Xhlhg+g/5oAMbiIhq9Z2MC2m3NazMKgZUvTQLnKlJD06lD76q/2WZgAC2qNnO
         mZOlwNHqg4QC+CiwQJ/Bk0VJBEaS0DuRZ23/PnQ8x7m5qegpG+eWXlwlZm95lyVP47UN
         bZ8t4BHuGujSSjCmvtgcBESs0OWeuYY9awaEqD3yzyOOi/n3Ix/sdNBwI4KkiAYTbtVZ
         G3eA==
X-Received: by 10.194.171.3 with SMTP id aq3mr9932927wjc.54.1444332335508;
        Thu, 08 Oct 2015 12:25:35 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fv5sm75362wic.7.2015.10.08.12.25.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 12:25:34 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/3] Staging: sm750fb: Use ARRAY_SIZE macro
Date: Fri,  9 Oct 2015 00:55:17 +0530
Message-Id: <1444332319-654-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444332319-654-1-git-send-email-shraddha.6596@gmail.com>
References: <1444332319-654-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.5616C32D.007F,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

ARRAY_SIZE is more concise to use when the size of an array is divided
by the size of its first element.

Changes made using Coccinelle-

@@
type T;
T[] E;
@@

- (sizeof(E)/sizeof(E[...]))
+ ARRAY_SIZE(E)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 0734044..02e6f64 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -384,10 +384,10 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 
 	if (pll->clockType != MXCLK_PLL) {
 		xparm = &xparm_PIXEL[0];
-		xcnt = sizeof(xparm_PIXEL) / sizeof(xparm_PIXEL[0]);
+		xcnt = ARRAY_SIZE(xparm_PIXEL);
 	} else {
 		xparm = &xparm_MXCLK[0];
-		xcnt = sizeof(xparm_MXCLK) / sizeof(xparm_MXCLK[0]);
+		xcnt = ARRAY_SIZE(xparm_MXCLK);
 	}
 
 
-- 
2.1.4



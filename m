X-GM-THRID: 6202887067130658816
X-Received: by 10.67.24.39 with SMTP id if7mr690388pad.24.1444222190484;
        Wed, 07 Oct 2015 05:49:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.117.6 with SMTP id ka6ls1718354igb.12.canary; Wed, 07 Oct
 2015 05:49:50 -0700 (PDT)
X-Received: by 10.66.255.42 with SMTP id an10mr660840pad.40.1444222190102;
        Wed, 07 Oct 2015 05:49:50 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si5108461pbb.2.2015.10.07.05.49.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 05:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ex6so21017275pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 05:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=uB+2OdLrr364ioON+9E54LJGRTOhwZR2JqFEbmvhfVc=;
        b=up/L5wWDt31z8eYPaCW7G1yu4Z4BG5AoPNM5sPjVMVWL/2rqcTAec7i5Hy5/KO8MKv
         M6ogbmizZt87q/laPh8KBTt0IK5lZJFqvdx21u0cBb04BsRU0PZKj+3g27lmCboFJiPH
         7KHCnTwBeZT8mDEqv6Jg8C2JCTPNM0E+w0YZZVkntFLuasEVRSAQINv5jLizMjw5OlRx
         M5IMY82alNRPK2LIQUl24x9YyeMPmFFVLbEQ+TXTFpskXu0QDnKjmYb8fovyzUFEdr9g
         mv2QFJiBA1sygWQu64pviloM+LdSmuTGzN1TlCb7VEhcxjLAHO+iwKIWIlN1pj1JOClo
         olug==
X-Received: by 10.67.7.137 with SMTP id dc9mr1002117pad.116.1444222189977;
        Wed, 07 Oct 2015 05:49:49 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ci2sm11668110pbc.66.2015.10.07.05.49.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 05:49:49 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] Staging: sm750fb: Use ARRAY_SIZE macro
Date: Wed,  7 Oct 2015 18:19:36 +0530
Message-Id: <1444222177-11153-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444222177-11153-1-git-send-email-shraddha.6596@gmail.com>
References: <1444222177-11153-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.561514EC.01C8,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

ARRAY_SIZE is more concise to use when the size of an array is divided
by the size of its type or the size of its first element.

Change made using Coccinelle-

@@
type T;
T[] E;
@@

- (sizeof(E)/sizeof(T))
+ ARRAY_SIZE(E)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index e987971..f542cd5 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -391,10 +391,10 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 
 	if (pll->clockType != MXCLK_PLL) {
 		xparm = &xparm_PIXEL[0];
-		xcnt = sizeof(xparm_PIXEL)/sizeof(xparm_PIXEL[0]);
+		xcnt = ARRAY_SIZE(xparm_PIXEL);
 	} else {
 		xparm = &xparm_MXCLK[0];
-		xcnt = sizeof(xparm_MXCLK)/sizeof(xparm_MXCLK[0]);
+		xcnt = ARRAY_SIZE(xparm_MXCLK);
 	}
 
 
-- 
2.1.4



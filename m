X-GM-THRID: 6202759012965941248
X-Received: by 10.107.3.76 with SMTP id 73mr2182641iod.1.1444237565518;
        Wed, 07 Oct 2015 10:06:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.204 with SMTP id s12ls1888309igr.25.canary; Wed, 07 Oct
 2015 10:06:05 -0700 (PDT)
X-Received: by 10.66.90.132 with SMTP id bw4mr1773277pab.7.1444237565038;
        Wed, 07 Oct 2015 10:06:05 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id zg1si5247553pbb.2.2015.10.07.10.06.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 10:06:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv12so27153321pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 10:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=h0vYt5Mq3OyJ7eqDSlHB8MBvm7X4M3ZCW66JNNtx1zg=;
        b=xkIaDD/TM8IauWanoK3VPruy+0bL29MzlR7tmhSJoUJEFpgg70POj+UqQcEOYJJ0El
         JlsU6v0Urg/qgHO3VgCjvJtdPdHZwC5z4gZgu33pbnA191o8xUQS8F5MTNpacc29pXsU
         iUlaYIPRHWdg9lZLrstnROOnSxCMY/PWEHZad+3+x+XCgZKy1rSTv2YcHukpLY9f8BUF
         7I2fJPCgQ5ALHSRHuXykwjK7KveUALUL+p3No3laM0DpAiiWHRerPEpQ/XHT0TrOBwCi
         EbykKSYywf7EUc1RZr3xJFdEDxyAAGQYFbp8z8Zyn5tDfCbV05L0hoDQQT3Si/vl30cR
         d+6g==
X-Received: by 10.68.185.132 with SMTP id fc4mr2260535pbc.96.1444237564951;
        Wed, 07 Oct 2015 10:06:04 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu ([2601:647:4700:de30:95d7:22da:961f:adf6])
        by smtp.gmail.com with ESMTPSA id rw8sm40722773pac.11.2015.10.07.10.06.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 07 Oct 2015 10:06:04 -0700 (PDT)
Date: Wed, 7 Oct 2015 10:06:02 -0700
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: skein: remove extra indentation
Message-ID: <20151007170600.GA24764@deepa-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove second leading indent of code in do/while macro blocks.

This patch fixes the checkpatch.pl warning:

WARNING: suspect code indent for conditional statements

Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
---
 drivers/staging/skein/skein_block.c | 40 ++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/skein/skein_block.c b/drivers/staging/skein/skein_block.c
index b0cd935..09d37d5 100644
--- a/drivers/staging/skein/skein_block.c
+++ b/drivers/staging/skein/skein_block.c
@@ -96,16 +96,16 @@ do { \
 #endif
 #define R256_8_ROUNDS(R)                                 \
 do {                                                     \
-		R256(0, 1, 2, 3, R_256_0, 8 * (R) + 1);  \
-		R256(0, 3, 2, 1, R_256_1, 8 * (R) + 2);  \
-		R256(0, 1, 2, 3, R_256_2, 8 * (R) + 3);  \
-		R256(0, 3, 2, 1, R_256_3, 8 * (R) + 4);  \
-		I256(2 * (R));                           \
-		R256(0, 1, 2, 3, R_256_4, 8 * (R) + 5);  \
-		R256(0, 3, 2, 1, R_256_5, 8 * (R) + 6);  \
-		R256(0, 1, 2, 3, R_256_6, 8 * (R) + 7);  \
-		R256(0, 3, 2, 1, R_256_7, 8 * (R) + 8);  \
-		I256(2 * (R) + 1);                       \
+	R256(0, 1, 2, 3, R_256_0, 8 * (R) + 1);  \
+	R256(0, 3, 2, 1, R_256_1, 8 * (R) + 2);  \
+	R256(0, 1, 2, 3, R_256_2, 8 * (R) + 3);  \
+	R256(0, 3, 2, 1, R_256_3, 8 * (R) + 4);  \
+	I256(2 * (R));                           \
+	R256(0, 1, 2, 3, R_256_4, 8 * (R) + 5);  \
+	R256(0, 3, 2, 1, R_256_5, 8 * (R) + 6);  \
+	R256(0, 1, 2, 3, R_256_6, 8 * (R) + 7);  \
+	R256(0, 3, 2, 1, R_256_7, 8 * (R) + 8);  \
+	I256(2 * (R) + 1);                       \
 } while (0)
 
 #define R256_UNROLL_R(NN)                     \
@@ -187,16 +187,16 @@ do {                                                                      \
 #endif /* end of looped code definitions */
 #define R512_8_ROUNDS(R)  /* do 8 full rounds */                      \
 do {                                                                  \
-		R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_0, 8 * (R) + 1);   \
-		R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_1, 8 * (R) + 2);   \
-		R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_2, 8 * (R) + 3);   \
-		R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_3, 8 * (R) + 4);   \
-		I512(2 * (R));                              \
-		R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_4, 8 * (R) + 5);   \
-		R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_5, 8 * (R) + 6);   \
-		R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_6, 8 * (R) + 7);   \
-		R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_7, 8 * (R) + 8);   \
-		I512(2 * (R) + 1);        /* and key injection */     \
+	R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_0, 8 * (R) + 1);   \
+	R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_1, 8 * (R) + 2);   \
+	R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_2, 8 * (R) + 3);   \
+	R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_3, 8 * (R) + 4);   \
+	I512(2 * (R));                              \
+	R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_4, 8 * (R) + 5);   \
+	R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_5, 8 * (R) + 6);   \
+	R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_6, 8 * (R) + 7);   \
+	R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_7, 8 * (R) + 8);   \
+	I512(2 * (R) + 1);        /* and key injection */     \
 } while (0)
 #define R512_UNROLL_R(NN)                             \
 		((SKEIN_UNROLL_512 == 0 &&            \
-- 
1.9.1



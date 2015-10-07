X-GM-THRID: 6202759012965941248
X-Received: by 10.66.160.135 with SMTP id xk7mr34514713pab.28.1444192373660;
        Tue, 06 Oct 2015 21:32:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.106 with SMTP id k97ls98660qgd.83.gmail; Tue, 06 Oct
 2015 21:32:53 -0700 (PDT)
X-Received: by 10.31.154.19 with SMTP id c19mr34113457vke.13.1444192373105;
        Tue, 06 Oct 2015 21:32:53 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id w5si4395749pbt.1.2015.10.06.21.32.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 21:32:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id lk4so8274134pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 21:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=h0vYt5Mq3OyJ7eqDSlHB8MBvm7X4M3ZCW66JNNtx1zg=;
        b=EzArk/OUqrMSoLb9RnWY6o31ur7qWvh69uSmtGWMaam2078VYHVghAvNfScgi27LbC
         89QKw/BWWm1nRg829VB20CSP4dalVLZrCC/qzofcl/fCYHTl0Nzju4nddXSf0WyCw/xs
         t76OVSwwewef9hJDNbt5TwiyoZycNinxI7ZBRzTX0VGgoBzUCBtoTTcXidy93YCgdJUE
         RjZkk8spqNWr7zKx1rBGhU4yJRAzkj+KfCM+CEmvO6GQInF4tIpn6MskXKrz3o+39aHa
         EKrX71kxp8h5KN/NeEgd/0RbGNW+7Lp9K/HSSTdlZC7x7dh/ZaogpMbc+Ohjdj9xGeSq
         IanQ==
X-Received: by 10.68.181.34 with SMTP id dt2mr50458258pbc.7.1444192372969;
        Tue, 06 Oct 2015 21:32:52 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu ([2601:647:4700:de30:74ae:f377:907a:fc63])
        by smtp.gmail.com with ESMTPSA id rm9sm14948589pab.14.2015.10.06.21.32.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 21:32:52 -0700 (PDT)
Date: Tue, 6 Oct 2015 21:32:50 -0700
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: skein: remove extra indentation
Message-ID: <20151007043247.GA3981@deepa-ubuntu>
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



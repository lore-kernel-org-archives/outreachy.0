X-GM-THRID: 6203507432884273152
X-Received: by 10.182.18.66 with SMTP id u2mr8968387obd.1.1444366648755;
        Thu, 08 Oct 2015 21:57:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.34 with SMTP id a31ls1434554qga.25.gmail; Thu, 08 Oct
 2015 21:57:28 -0700 (PDT)
X-Received: by 10.31.44.18 with SMTP id s18mr9299198vks.6.1444366648062;
        Thu, 08 Oct 2015 21:57:28 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id wl2si5749552pab.1.2015.10.08.21.57.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 21:57:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id hy16so75156161pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 21:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KLzRkCcR5iIHBraFTRzDlJE4PX9o193bMnItp50QF9Q=;
        b=Kox/is+gGUYMGLcjIi0ypLxQG5NjIc/1SvjhTD3diaw2DF1obA71jbNPrPwWBPEnay
         7PjDIuY5Zrn60jZSxTF77OmkJ78howRyCk5EzpArwyLmdWrOTY+mKkUykxdqbfF7JMkK
         i5ciFMANhKkCPY4gHLrrXU866vTOc+Qps7vCLj+U4ZWoNijy3flpfAMkWvM7sochF3ks
         wAH3/lDNXs7XNJctRVi6Lg00mqfm2nfFfdtJCwRwkM85GnX9o7B6IjFojQwwSF56suts
         PXyjJG2oGlT8V+0WA6I0syApdKPRt+CKYlghU6PSmee+yvPYLVLWZlb0wjwRsKoT3d32
         trnw==
X-Received: by 10.68.99.228 with SMTP id et4mr12955338pbb.62.1444366647895;
        Thu, 08 Oct 2015 21:57:27 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu ([2601:647:4700:de30:8067:188f:6c60:7880])
        by smtp.gmail.com with ESMTPSA id bw8sm49038441pab.47.2015.10.08.21.57.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA256 bits=128/128);
        Thu, 08 Oct 2015 21:57:27 -0700 (PDT)
Date: Thu, 8 Oct 2015 21:57:25 -0700
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: skein: remove extra indentation
Message-ID: <a1f2bbec5c626d17f52118883895dde6d2d375b0.1444366020.git.deepa.kernel@gmail.com>
References: <cover.1444366020.git.deepa.kernel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444366020.git.deepa.kernel@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix macros containing do/while blocks to be indented uniformly.

This patch fixes the checkpatch.pl warning:

WARNING: suspect code indent for conditional statements

Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
---
 drivers/staging/skein/skein_block.c | 378 ++++++++++++++++++------------------
 1 file changed, 189 insertions(+), 189 deletions(-)

diff --git a/drivers/staging/skein/skein_block.c b/drivers/staging/skein/skein_block.c
index b0cd935..dda5c00 100644
--- a/drivers/staging/skein/skein_block.c
+++ b/drivers/staging/skein/skein_block.c
@@ -56,57 +56,57 @@
 #error "Invalid SKEIN_UNROLL_256" /* sanity check on unroll count */
 #endif
 #endif
-#define ROUND256(p0, p1, p2, p3, ROT, r_num) \
-do {                                         \
-	X##p0 += X##p1;                      \
-	X##p1 = rotl_64(X##p1, ROT##_0);     \
-	X##p1 ^= X##p0;                      \
-	X##p2 += X##p3;                      \
-	X##p3 = rotl_64(X##p3, ROT##_1);     \
-	X##p3 ^= X##p2;                      \
-} while (0)
+#define ROUND256(p0, p1, p2, p3, ROT, r_num)         \
+	do {                                         \
+		X##p0 += X##p1;                      \
+		X##p1 = rotl_64(X##p1, ROT##_0);     \
+		X##p1 ^= X##p0;                      \
+		X##p2 += X##p3;                      \
+		X##p3 = rotl_64(X##p3, ROT##_1);     \
+		X##p3 ^= X##p2;                      \
+	} while (0)
 
 #if SKEIN_UNROLL_256 == 0
 #define R256(p0, p1, p2, p3, ROT, r_num) /* fully unrolled */ \
 	ROUND256(p0, p1, p2, p3, ROT, r_num)
 
-#define I256(R)                                                           \
-do {                                                                      \
-	/* inject the key schedule value */                               \
-	X0   += ks[((R) + 1) % 5];                                        \
-	X1   += ks[((R) + 2) % 5] + ts[((R) + 1) % 3];                    \
-	X2   += ks[((R) + 3) % 5] + ts[((R) + 2) % 3];                    \
-	X3   += ks[((R) + 4) % 5] + (R) + 1;                              \
-} while (0)
+#define I256(R)                                                         \
+	do {                                                            \
+		/* inject the key schedule value */                     \
+		X0   += ks[((R) + 1) % 5];                              \
+		X1   += ks[((R) + 2) % 5] + ts[((R) + 1) % 3];          \
+		X2   += ks[((R) + 3) % 5] + ts[((R) + 2) % 3];          \
+		X3   += ks[((R) + 4) % 5] + (R) + 1;                    \
+	} while (0)
 #else
 /* looping version */
 #define R256(p0, p1, p2, p3, ROT, r_num) ROUND256(p0, p1, p2, p3, ROT, r_num)
 
-#define I256(R) \
-do { \
-	/* inject the key schedule value */ \
-	X0 += ks[r + (R) + 0]; \
-	X1 += ks[r + (R) + 1] + ts[r + (R) + 0];                          \
-	X2 += ks[r + (R) + 2] + ts[r + (R) + 1];                          \
-	X3 += ks[r + (R) + 3] + r + (R);                                  \
-	/* rotate key schedule */                                         \
-	ks[r + (R) + 4] = ks[r + (R) - 1];                                \
-	ts[r + (R) + 2] = ts[r + (R) - 1];                                \
-} while (0)
-#endif
-#define R256_8_ROUNDS(R)                                 \
-do {                                                     \
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
-} while (0)
+#define I256(R)                                         \
+	do {                                            \
+		/* inject the key schedule value */     \
+		X0 += ks[r + (R) + 0];                  \
+		X1 += ks[r + (R) + 1] + ts[r + (R) + 0];\
+		X2 += ks[r + (R) + 2] + ts[r + (R) + 1];\
+		X3 += ks[r + (R) + 3] + r + (R);        \
+		/* rotate key schedule */               \
+		ks[r + (R) + 4] = ks[r + (R) - 1];      \
+		ts[r + (R) + 2] = ts[r + (R) - 1];      \
+	} while (0)
+#endif
+#define R256_8_ROUNDS(R)                                \
+	do {                                            \
+		R256(0, 1, 2, 3, R_256_0, 8 * (R) + 1); \
+		R256(0, 3, 2, 1, R_256_1, 8 * (R) + 2); \
+		R256(0, 1, 2, 3, R_256_2, 8 * (R) + 3); \
+		R256(0, 3, 2, 1, R_256_3, 8 * (R) + 4); \
+		I256(2 * (R));                          \
+		R256(0, 1, 2, 3, R_256_4, 8 * (R) + 5); \
+		R256(0, 3, 2, 1, R_256_5, 8 * (R) + 6); \
+		R256(0, 1, 2, 3, R_256_6, 8 * (R) + 7); \
+		R256(0, 3, 2, 1, R_256_7, 8 * (R) + 8); \
+		I256(2 * (R) + 1);                      \
+	} while (0)
 
 #define R256_UNROLL_R(NN)                     \
 	((SKEIN_UNROLL_256 == 0 &&            \
@@ -133,71 +133,71 @@ do {                                                     \
 #error "Invalid SKEIN_UNROLL_512" /* sanity check on unroll count */
 #endif
 #endif
-#define ROUND512(p0, p1, p2, p3, p4, p5, p6, p7, ROT, r_num) \
-do {                                                         \
-	X##p0 += X##p1;                                      \
-	X##p1 = rotl_64(X##p1, ROT##_0);                     \
-	X##p1 ^= X##p0;                                      \
-	X##p2 += X##p3;                                      \
-	X##p3 = rotl_64(X##p3, ROT##_1);                     \
-	X##p3 ^= X##p2;                                      \
-	X##p4 += X##p5;					     \
-	X##p5 = rotl_64(X##p5, ROT##_2);                     \
-	X##p5 ^= X##p4;                                      \
-	X##p6 += X##p7; X##p7 = rotl_64(X##p7, ROT##_3);     \
-	X##p7 ^= X##p6;                                      \
-} while (0)
+#define ROUND512(p0, p1, p2, p3, p4, p5, p6, p7, ROT, r_num)    \
+	do {                                                    \
+		X##p0 += X##p1;                                 \
+		X##p1 = rotl_64(X##p1, ROT##_0);                \
+		X##p1 ^= X##p0;                                 \
+		X##p2 += X##p3;                                 \
+		X##p3 = rotl_64(X##p3, ROT##_1);                \
+		X##p3 ^= X##p2;                                 \
+		X##p4 += X##p5;                                 \
+		X##p5 = rotl_64(X##p5, ROT##_2);                \
+		X##p5 ^= X##p4;                                 \
+		X##p6 += X##p7; X##p7 = rotl_64(X##p7, ROT##_3);\
+		X##p7 ^= X##p6;                                 \
+	} while (0)
 
 #if SKEIN_UNROLL_512 == 0
 #define R512(p0, p1, p2, p3, p4, p5, p6, p7, ROT, r_num) /* unrolled */ \
 	ROUND512(p0, p1, p2, p3, p4, p5, p6, p7, ROT, r_num)
 
-#define I512(R)                                                           \
-do {                                                                      \
-	/* inject the key schedule value */                               \
-	X0   += ks[((R) + 1) % 9];                                        \
-	X1   += ks[((R) + 2) % 9];                                        \
-	X2   += ks[((R) + 3) % 9];                                        \
-	X3   += ks[((R) + 4) % 9];                                        \
-	X4   += ks[((R) + 5) % 9];                                        \
-	X5   += ks[((R) + 6) % 9] + ts[((R) + 1) % 3];                    \
-	X6   += ks[((R) + 7) % 9] + ts[((R) + 2) % 3];                    \
-	X7   += ks[((R) + 8) % 9] + (R) + 1;                              \
-} while (0)
+#define I512(R)                                                         \
+	do {                                                            \
+		/* inject the key schedule value */                     \
+		X0   += ks[((R) + 1) % 9];                              \
+		X1   += ks[((R) + 2) % 9];                              \
+		X2   += ks[((R) + 3) % 9];                              \
+		X3   += ks[((R) + 4) % 9];                              \
+		X4   += ks[((R) + 5) % 9];                              \
+		X5   += ks[((R) + 6) % 9] + ts[((R) + 1) % 3];          \
+		X6   += ks[((R) + 7) % 9] + ts[((R) + 2) % 3];          \
+		X7   += ks[((R) + 8) % 9] + (R) + 1;                    \
+	} while (0)
 
 #else /* looping version */
 #define R512(p0, p1, p2, p3, p4, p5, p6, p7, ROT, r_num)                 \
 	ROUND512(p0, p1, p2, p3, p4, p5, p6, p7, ROT, r_num)             \
 
-#define I512(R)                                                           \
-do {                                                                      \
-	/* inject the key schedule value */                               \
-	X0   += ks[r + (R) + 0];                                          \
-	X1   += ks[r + (R) + 1];                                          \
-	X2   += ks[r + (R) + 2];                                          \
-	X3   += ks[r + (R) + 3];                                          \
-	X4   += ks[r + (R) + 4];                                          \
-	X5   += ks[r + (R) + 5] + ts[r + (R) + 0];                        \
-	X6   += ks[r + (R) + 6] + ts[r + (R) + 1];                        \
-	X7   += ks[r + (R) + 7] + r + (R);                                \
-	/* rotate key schedule */                                         \
-	ks[r + (R) + 8] = ks[r + (R) - 1];                                \
-	ts[r + (R) + 2] = ts[r + (R) - 1];                                \
-} while (0)
+#define I512(R)                                                         \
+	do {                                                            \
+		/* inject the key schedule value */                     \
+		X0   += ks[r + (R) + 0];                                \
+		X1   += ks[r + (R) + 1];                                \
+		X2   += ks[r + (R) + 2];                                \
+		X3   += ks[r + (R) + 3];                                \
+		X4   += ks[r + (R) + 4];                                \
+		X5   += ks[r + (R) + 5] + ts[r + (R) + 0];              \
+		X6   += ks[r + (R) + 6] + ts[r + (R) + 1];              \
+		X7   += ks[r + (R) + 7] + r + (R);                      \
+		/* rotate key schedule */                               \
+		ks[r + (R) + 8] = ks[r + (R) - 1];                      \
+		ts[r + (R) + 2] = ts[r + (R) - 1];                      \
+	} while (0)
 #endif /* end of looped code definitions */
-#define R512_8_ROUNDS(R)  /* do 8 full rounds */                      \
-do {                                                                  \
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
-} while (0)
+#define R512_8_ROUNDS(R)  /* do 8 full rounds */                        \
+	do {                                                            \
+		R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_0, 8 * (R) + 1);     \
+		R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_1, 8 * (R) + 2);     \
+		R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_2, 8 * (R) + 3);     \
+		R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_3, 8 * (R) + 4);     \
+		I512(2 * (R));                                          \
+		R512(0, 1, 2, 3, 4, 5, 6, 7, R_512_4, 8 * (R) + 5);     \
+		R512(2, 1, 4, 7, 6, 5, 0, 3, R_512_5, 8 * (R) + 6);     \
+		R512(4, 1, 6, 3, 0, 5, 2, 7, R_512_6, 8 * (R) + 7);     \
+		R512(6, 1, 0, 7, 2, 5, 4, 3, R_512_7, 8 * (R) + 8);     \
+		I512(2 * (R) + 1); /* and key injection */              \
+	} while (0)
 #define R512_UNROLL_R(NN)                             \
 		((SKEIN_UNROLL_512 == 0 &&            \
 		SKEIN_512_ROUNDS_TOTAL/8 > (NN)) ||   \
@@ -224,32 +224,32 @@ do {                                                                  \
 #endif
 #define ROUND1024(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pA, pB, pC, pD, pE, \
 		  pF, ROT, r_num)                                             \
-do {                                                                          \
-	X##p0 += X##p1;                                                       \
-	X##p1 = rotl_64(X##p1, ROT##_0);                                      \
-	X##p1 ^= X##p0;                                                       \
-	X##p2 += X##p3;                                                       \
-	X##p3 = rotl_64(X##p3, ROT##_1);                                      \
-	X##p3 ^= X##p2;                                                       \
-	X##p4 += X##p5;                                                       \
-	X##p5 = rotl_64(X##p5, ROT##_2);                                      \
-	X##p5 ^= X##p4;                                                       \
-	X##p6 += X##p7;                                                       \
-	X##p7 = rotl_64(X##p7, ROT##_3);                                      \
-	X##p7 ^= X##p6;                                                       \
-	X##p8 += X##p9;                                                       \
-	X##p9 = rotl_64(X##p9, ROT##_4);                                      \
-	X##p9 ^= X##p8;                                                       \
-	X##pA += X##pB;                                                       \
-	X##pB = rotl_64(X##pB, ROT##_5);                                      \
-	X##pB ^= X##pA;                                                       \
-	X##pC += X##pD;                                                       \
-	X##pD = rotl_64(X##pD, ROT##_6);                                      \
-	X##pD ^= X##pC;                                                       \
-	X##pE += X##pF;                                                       \
-	X##pF = rotl_64(X##pF, ROT##_7);                                      \
-	X##pF ^= X##pE;                                                       \
-} while (0)
+	do {                                                                  \
+		X##p0 += X##p1;                                               \
+		X##p1 = rotl_64(X##p1, ROT##_0);                              \
+		X##p1 ^= X##p0;                                               \
+		X##p2 += X##p3;                                               \
+		X##p3 = rotl_64(X##p3, ROT##_1);                              \
+		X##p3 ^= X##p2;                                               \
+		X##p4 += X##p5;                                               \
+		X##p5 = rotl_64(X##p5, ROT##_2);                              \
+		X##p5 ^= X##p4;                                               \
+		X##p6 += X##p7;                                               \
+		X##p7 = rotl_64(X##p7, ROT##_3);                              \
+		X##p7 ^= X##p6;                                               \
+		X##p8 += X##p9;                                               \
+		X##p9 = rotl_64(X##p9, ROT##_4);                              \
+		X##p9 ^= X##p8;                                               \
+		X##pA += X##pB;                                               \
+		X##pB = rotl_64(X##pB, ROT##_5);                              \
+		X##pB ^= X##pA;                                               \
+		X##pC += X##pD;                                               \
+		X##pD = rotl_64(X##pD, ROT##_6);                              \
+		X##pD ^= X##pC;                                               \
+		X##pE += X##pF;                                               \
+		X##pF = rotl_64(X##pF, ROT##_7);                              \
+		X##pF ^= X##pE;                                               \
+	} while (0)
 
 #if SKEIN_UNROLL_1024 == 0
 #define R1024(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pA, pB, pC, pD, pE, pF, \
@@ -257,82 +257,82 @@ do {                                                                          \
 	ROUND1024(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pA, pB, pC, pD, pE, \
 		  pF, ROT, rn)                                                \
 
-#define I1024(R)                                                          \
-do {                                                                      \
-	/* inject the key schedule value */                               \
-	X00 += ks[((R) + 1) % 17];                                        \
-	X01 += ks[((R) + 2) % 17];                                        \
-	X02 += ks[((R) + 3) % 17];                                        \
-	X03 += ks[((R) + 4) % 17];                                        \
-	X04 += ks[((R) + 5) % 17];                                        \
-	X05 += ks[((R) + 6) % 17];                                        \
-	X06 += ks[((R) + 7) % 17];                                        \
-	X07 += ks[((R) + 8) % 17];                                        \
-	X08 += ks[((R) + 9) % 17];                                        \
-	X09 += ks[((R) + 10) % 17];                                       \
-	X10 += ks[((R) + 11) % 17];                                       \
-	X11 += ks[((R) + 12) % 17];                                       \
-	X12 += ks[((R) + 13) % 17];                                       \
-	X13 += ks[((R) + 14) % 17] + ts[((R) + 1) % 3];                   \
-	X14 += ks[((R) + 15) % 17] + ts[((R) + 2) % 3];                   \
-	X15 += ks[((R) + 16) % 17] + (R) + 1;                             \
-} while (0)
+#define I1024(R)                                                \
+	do {                                                    \
+		/* inject the key schedule value */             \
+		X00 += ks[((R) + 1) % 17];                      \
+		X01 += ks[((R) + 2) % 17];                      \
+		X02 += ks[((R) + 3) % 17];                      \
+		X03 += ks[((R) + 4) % 17];                      \
+		X04 += ks[((R) + 5) % 17];                      \
+		X05 += ks[((R) + 6) % 17];                      \
+		X06 += ks[((R) + 7) % 17];                      \
+		X07 += ks[((R) + 8) % 17];                      \
+		X08 += ks[((R) + 9) % 17];                      \
+		X09 += ks[((R) + 10) % 17];                     \
+		X10 += ks[((R) + 11) % 17];                     \
+		X11 += ks[((R) + 12) % 17];                     \
+		X12 += ks[((R) + 13) % 17];                     \
+		X13 += ks[((R) + 14) % 17] + ts[((R) + 1) % 3]; \
+		X14 += ks[((R) + 15) % 17] + ts[((R) + 2) % 3]; \
+		X15 += ks[((R) + 16) % 17] + (R) + 1;           \
+	} while (0)
 #else /* looping version */
 #define R1024(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pA, pB, pC, pD, pE, pF, \
 	      ROT, rn)                                                        \
 	ROUND1024(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pA, pB, pC, pD, pE, \
 		  pF, ROT, rn)                                                \
 
-#define I1024(R)                                                           \
-do {                                                                       \
-	/* inject the key schedule value */                                \
-	X00 += ks[r + (R) + 0];                                            \
-	X01 += ks[r + (R) + 1];                                            \
-	X02 += ks[r + (R) + 2];                                            \
-	X03 += ks[r + (R) + 3];                                            \
-	X04 += ks[r + (R) + 4];                                            \
-	X05 += ks[r + (R) + 5];                                            \
-	X06 += ks[r + (R) + 6];                                            \
-	X07 += ks[r + (R) + 7];                                            \
-	X08 += ks[r + (R) + 8];                                            \
-	X09 += ks[r + (R) + 9];                                            \
-	X10 += ks[r + (R) + 10];                                           \
-	X11 += ks[r + (R) + 11];                                           \
-	X12 += ks[r + (R) + 12];                                           \
-	X13 += ks[r + (R) + 13] + ts[r + (R) + 0];                         \
-	X14 += ks[r + (R) + 14] + ts[r + (R) + 1];                         \
-	X15 += ks[r + (R) + 15] + r + (R);                                 \
-	/* rotate key schedule */                                          \
-	ks[r + (R) + 16] = ks[r + (R) - 1];                                \
-	ts[r + (R) + 2] = ts[r + (R) - 1];                                 \
-} while (0)
-
-#endif
-#define R1024_8_ROUNDS(R)                                                     \
-do {                                                                          \
-	R1024(00, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, \
-	      R1024_0, 8*(R) + 1);                                            \
-	R1024(00, 09, 02, 13, 06, 11, 04, 15, 10, 07, 12, 03, 14, 05, 08, 01, \
-	      R1024_1, 8*(R) + 2);                                            \
-	R1024(00, 07, 02, 05, 04, 03, 06, 01, 12, 15, 14, 13, 08, 11, 10, 09, \
-	      R1024_2, 8*(R) + 3);                                            \
-	R1024(00, 15, 02, 11, 06, 13, 04, 09, 14, 01, 08, 05, 10, 03, 12, 07, \
-	      R1024_3, 8*(R) + 4);                                            \
-	I1024(2*(R));                                                         \
-	R1024(00, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, \
-	      R1024_4, 8*(R) + 5);                                            \
-	R1024(00, 09, 02, 13, 06, 11, 04, 15, 10, 07, 12, 03, 14, 05, 08, 01, \
-	      R1024_5, 8*(R) + 6);                                            \
-	R1024(00, 07, 02, 05, 04, 03, 06, 01, 12, 15, 14, 13, 08, 11, 10, 09, \
-	      R1024_6, 8*(R) + 7);                                            \
-	R1024(00, 15, 02, 11, 06, 13, 04, 09, 14, 01, 08, 05, 10, 03, 12, 07, \
-	      R1024_7, 8*(R) + 8);                                            \
-	I1024(2*(R)+1);                                                       \
-} while (0)
+#define I1024(R)                                                        \
+	do {                                                            \
+		/* inject the key schedule value */                     \
+		X00 += ks[r + (R) + 0];                                 \
+		X01 += ks[r + (R) + 1];                                 \
+		X02 += ks[r + (R) + 2];                                 \
+		X03 += ks[r + (R) + 3];                                 \
+		X04 += ks[r + (R) + 4];                                 \
+		X05 += ks[r + (R) + 5];                                 \
+		X06 += ks[r + (R) + 6];                                 \
+		X07 += ks[r + (R) + 7];                                 \
+		X08 += ks[r + (R) + 8];                                 \
+		X09 += ks[r + (R) + 9];                                 \
+		X10 += ks[r + (R) + 10];                                \
+		X11 += ks[r + (R) + 11];                                \
+		X12 += ks[r + (R) + 12];                                \
+		X13 += ks[r + (R) + 13] + ts[r + (R) + 0];              \
+		X14 += ks[r + (R) + 14] + ts[r + (R) + 1];              \
+		X15 += ks[r + (R) + 15] + r + (R);                      \
+		/* rotate key schedule */                               \
+		ks[r + (R) + 16] = ks[r + (R) - 1];                     \
+		ts[r + (R) + 2] = ts[r + (R) - 1];                      \
+	} while (0)
+
+#endif
+#define R1024_8_ROUNDS(R)                                                 \
+	do {                                                              \
+		R1024(00, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, \
+		      13, 14, 15, R1024_0, 8*(R) + 1);                    \
+		R1024(00, 09, 02, 13, 06, 11, 04, 15, 10, 07, 12, 03, 14, \
+		      05, 08, 01, R1024_1, 8*(R) + 2);                    \
+		R1024(00, 07, 02, 05, 04, 03, 06, 01, 12, 15, 14, 13, 08, \
+		      11, 10, 09, R1024_2, 8*(R) + 3);                    \
+		R1024(00, 15, 02, 11, 06, 13, 04, 09, 14, 01, 08, 05, 10, \
+		      03, 12, 07, R1024_3, 8*(R) + 4);                    \
+		I1024(2*(R));                                             \
+		R1024(00, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, \
+		      13, 14, 15, R1024_4, 8*(R) + 5);                    \
+		R1024(00, 09, 02, 13, 06, 11, 04, 15, 10, 07, 12, 03, 14, \
+		      05, 08, 01, R1024_5, 8*(R) + 6);                    \
+		R1024(00, 07, 02, 05, 04, 03, 06, 01, 12, 15, 14, 13, 08, \
+		      11, 10, 09, R1024_6, 8*(R) + 7);                    \
+		R1024(00, 15, 02, 11, 06, 13, 04, 09, 14, 01, 08, 05, 10, \
+		      03, 12, 07, R1024_7, 8*(R) + 8);                    \
+		I1024(2*(R)+1);                                           \
+	} while (0)
 
 #define R1024_UNROLL_R(NN)                              \
 		((SKEIN_UNROLL_1024 == 0 &&             \
-		SKEIN_1024_ROUNDS_TOTAL/8 > (NN)) ||  \
+		SKEIN_1024_ROUNDS_TOTAL/8 > (NN)) ||    \
 		(SKEIN_UNROLL_1024 > (NN)))
 
 #if  (SKEIN_UNROLL_1024 > 14)
-- 
1.9.1



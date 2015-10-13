X-GM-THRID: 6205238883411558400
X-Received: by 10.112.54.197 with SMTP id l5mr7307982lbp.21.1444769763225;
        Tue, 13 Oct 2015 13:56:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.80.140 with SMTP id e134ls757651lfb.42.gmail; Tue, 13 Oct
 2015 13:56:02 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr7513433lbb.16.1444769762468;
        Tue, 13 Oct 2015 13:56:02 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id ch7si207987wib.2.2015.10.13.13.56.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 13:56:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id ge5so75131014wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 13:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=XNZvPUR+Wj6ISUrCI+pJIVT9voLQzcwYnEZqWULSW54=;
        b=VilGO3SINfWf1MThAufEb2o9pKuc1KDGtYprZt+ijjz8wUPQbzaoNlWlEGMg7YuOAT
         2ut72jhhtGPIIB/wAo1pkMar4J4qV0mjRjYCwEODjreuMmCh9SAgJoyfKxAVLuyrqBMM
         uCf3SSRO+mupT1DGsLteG7/lyNviWr2BSwEfRorNcbIjHl2nokaz0QG9WhJHHPDvaRJ7
         bFOwUQV8G5bKdXjHTVuPlv7kShZvG1MPWxQCDzYiDhi6X5UIOu+ttbDBPGcUxY7agcKU
         MR0rz8BMm2Q3u2eHd6lReuKZjFsvk1ZLAb/51ULxR4nIjWueAfKnLWsEX/F6cNXECLqz
         syRw==
X-Received: by 10.180.88.37 with SMTP id bd5mr24873787wib.82.1444769762360;
        Tue, 13 Oct 2015 13:56:02 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([88.247.179.54])
        by smtp.gmail.com with ESMTPSA id h7sm5818980wjz.7.2015.10.13.13.55.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 13:56:01 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH] Staging: skein: Remove NULL comparison
Date: Tue, 13 Oct 2015 23:55:07 +0300
Message-Id: <1444769707-24089-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

Problem found using checkpatch.pl
CHECK: Comparison to NULL could be written "key"

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/skein/skein_base.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/skein/skein_base.c b/drivers/staging/skein/skein_base.c
index bfb08fa..25a01ca 100644
--- a/drivers/staging/skein/skein_base.c
+++ b/drivers/staging/skein/skein_base.c
@@ -88,7 +88,7 @@ int skein_256_init_ext(struct skein_256_ctx *ctx, size_t hash_bit_len,
 	} cfg; /* config block */
 
 	skein_assert_ret(hash_bit_len > 0, SKEIN_BAD_HASHLEN);
-	skein_assert_ret(key_bytes == 0 || key != NULL, SKEIN_FAIL);
+	skein_assert_ret(key_bytes == 0 || key, SKEIN_FAIL);
 
 	/* compute the initial chaining values ctx->x[], based on key */
 	if (key_bytes == 0) { /* is there a key? */
@@ -316,7 +316,7 @@ int skein_512_init_ext(struct skein_512_ctx *ctx, size_t hash_bit_len,
 	} cfg;                              /* config block */
 
 	skein_assert_ret(hash_bit_len > 0, SKEIN_BAD_HASHLEN);
-	skein_assert_ret(key_bytes == 0 || key != NULL, SKEIN_FAIL);
+	skein_assert_ret(key_bytes == 0 || key, SKEIN_FAIL);
 
 	/* compute the initial chaining values ctx->x[], based on key */
 	if (key_bytes == 0) { /* is there a key? */
@@ -537,7 +537,7 @@ int skein_1024_init_ext(struct skein_1024_ctx *ctx, size_t hash_bit_len,
 	} cfg;                              /* config block */
 
 	skein_assert_ret(hash_bit_len > 0, SKEIN_BAD_HASHLEN);
-	skein_assert_ret(key_bytes == 0 || key != NULL, SKEIN_FAIL);
+	skein_assert_ret(key_bytes == 0 || key, SKEIN_FAIL);
 
 	/* compute the initial chaining values ctx->x[], based on key */
 	if (key_bytes == 0) { /* is there a key? */
-- 
1.9.1



X-GM-THRID: 6202759163507900416
X-Received: by 10.182.213.73 with SMTP id nq9mr1781652obc.33.1444237577805;
        Wed, 07 Oct 2015 10:06:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.97 with SMTP id z94ls282207ioi.54.gmail; Wed, 07 Oct
 2015 10:06:17 -0700 (PDT)
X-Received: by 10.107.30.76 with SMTP id e73mr2266237ioe.16.1444237577542;
        Wed, 07 Oct 2015 10:06:17 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id uv4si5448002pac.0.2015.10.07.10.06.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 10:06:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id ex6so26713249pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 10:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=iZ2tMZ8da2qwF7TGswW5SALqUxCWkzlTPr5rcyl4u7k=;
        b=Omiy/t9xnLQBJ0+tgDhtFnwxAlX/40AeNDlEhoOjY6HJjgrzXCYtuZTbSaqzX8TpIM
         IaKsT3rTpXO6iD6oEHL30ck0J1177k38MJfN12tw169E0h9ap5sMRatpUHbS0JUstbsY
         KgKxHeSoJJdekCBSBEv/GPFZ3crAHIxCHsn1gqD3FNEbtPUW0Xt1JcRFV6dFzHrJOnj3
         dsxQsSApCH/ezXRw80vwXnxrvt5UPGcAHaKoCbIAE+PQlY+hwMClPUMm1/qnA4ER1k5s
         DOo/3EhZTmqCMQ1/HVVfObyLYFMLF35/GfosnbSauYFqLI/OYvCHe/w0aMAb0D3puwF8
         2enw==
X-Received: by 10.66.124.198 with SMTP id mk6mr2219778pab.114.1444237577429;
        Wed, 07 Oct 2015 10:06:17 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu ([2601:647:4700:de30:95d7:22da:961f:adf6])
        by smtp.gmail.com with ESMTPSA id kv9sm40836738pab.39.2015.10.07.10.06.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA256 bits=128/128);
        Wed, 07 Oct 2015 10:06:16 -0700 (PDT)
Date: Wed, 7 Oct 2015 10:06:15 -0700
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: skein: fix block comment style
Message-ID: <20151007170612.GA24774@deepa-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use a separate line for the opening marker of a comment block,
a leading asterisk in front of subsequent lines in the block comment,
and a separate line for the closing marker of the comment block.

This patch fixes the checkpatch.pl warnings:

WARNING: Block comments use a trailing */ on a separate line
WARNING: Block comments use * on subsequent lines

Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
---
 drivers/staging/skein/skein_api.c  | 47 +++++++++++++++++++-------------------
 drivers/staging/skein/skein_base.c | 18 ++++++++++-----
 2 files changed, 35 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/skein/skein_api.c b/drivers/staging/skein/skein_api.c
index 5bfce07..e6c2b06 100644
--- a/drivers/staging/skein/skein_api.c
+++ b/drivers/staging/skein/skein_api.c
@@ -1,28 +1,27 @@
 /*
-Copyright (c) 2010 Werner Dittmann
-
-Permission is hereby granted, free of charge, to any person
-obtaining a copy of this software and associated documentation
-files (the "Software"), to deal in the Software without
-restriction, including without limitation the rights to use,
-copy, modify, merge, publish, distribute, sublicense, and/or sell
-copies of the Software, and to permit persons to whom the
-Software is furnished to do so, subject to the following
-conditions:
-
-The above copyright notice and this permission notice shall be
-included in all copies or substantial portions of the Software.
-
-THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
-EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
-OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
-NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
-WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
-OTHER DEALINGS IN THE SOFTWARE.
-
-*/
+ * Copyright (c) 2010 Werner Dittmann
+ *
+ * Permission is hereby granted, free of charge, to any person
+ * obtaining a copy of this software and associated documentation
+ * files (the "Software"), to deal in the Software without
+ * restriction, including without limitation the rights to use,
+ * copy, modify, merge, publish, distribute, sublicense, and/or sell
+ * copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following
+ * conditions:
+ *
+ * The above copyright notice and this permission notice shall be
+ * included in all copies or substantial portions of the Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
+ * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ * OTHER DEALINGS IN THE SOFTWARE.
+ */
 
 #include <linux/string.h>
 #include "skein_api.h"
diff --git a/drivers/staging/skein/skein_base.c b/drivers/staging/skein/skein_base.c
index 7e700a6..bfb08fa 100644
--- a/drivers/staging/skein/skein_base.c
+++ b/drivers/staging/skein/skein_base.c
@@ -75,8 +75,10 @@ int skein_256_init(struct skein_256_ctx *ctx, size_t hash_bit_len)
 
 /*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
 /* init the context for a MAC and/or tree hash operation */
-/* [identical to skein_256_init() when key_bytes == 0 && \
- *	tree_info == SKEIN_CFG_TREE_INFO_SEQUENTIAL] */
+/*
+ * [identical to skein_256_init() when key_bytes == 0 && \
+ *	tree_info == SKEIN_CFG_TREE_INFO_SEQUENTIAL]
+ */
 int skein_256_init_ext(struct skein_256_ctx *ctx, size_t hash_bit_len,
 		       u64 tree_info, const u8 *key, size_t key_bytes)
 {
@@ -301,8 +303,10 @@ int skein_512_init(struct skein_512_ctx *ctx, size_t hash_bit_len)
 
 /*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
 /* init the context for a MAC and/or tree hash operation */
-/* [identical to skein_512_init() when key_bytes == 0 && \
- *	tree_info == SKEIN_CFG_TREE_INFO_SEQUENTIAL] */
+/*
+ * [identical to skein_512_init() when key_bytes == 0 && \
+ *	tree_info == SKEIN_CFG_TREE_INFO_SEQUENTIAL]
+ */
 int skein_512_init_ext(struct skein_512_ctx *ctx, size_t hash_bit_len,
 		       u64 tree_info, const u8 *key, size_t key_bytes)
 {
@@ -520,8 +524,10 @@ int skein_1024_init(struct skein_1024_ctx *ctx, size_t hash_bit_len)
 
 /*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
 /* init the context for a MAC and/or tree hash operation */
-/* [identical to skein_1024_init() when key_bytes == 0 && \
- *	tree_info == SKEIN_CFG_TREE_INFO_SEQUENTIAL] */
+/*
+ * [identical to skein_1024_init() when key_bytes == 0 && \
+ *	tree_info == SKEIN_CFG_TREE_INFO_SEQUENTIAL]
+ */
 int skein_1024_init_ext(struct skein_1024_ctx *ctx, size_t hash_bit_len,
 			u64 tree_info, const u8 *key, size_t key_bytes)
 {
-- 
1.9.1



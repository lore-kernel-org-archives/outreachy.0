X-GM-THRID: 6203507432884273152
X-Received: by 10.66.182.162 with SMTP id ef2mr9484787pac.35.1444366719936;
        Thu, 08 Oct 2015 21:58:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.183.6.193 with SMTP id cw1ls280331obd.69.gmail; Thu, 08 Oct
 2015 21:58:39 -0700 (PDT)
X-Received: by 10.182.102.194 with SMTP id fq2mr9297421obb.43.1444366719284;
        Thu, 08 Oct 2015 21:58:39 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id wl2si5749552pab.1.2015.10.08.21.58.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 21:58:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id hy16so75156161pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 21:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=iZ2tMZ8da2qwF7TGswW5SALqUxCWkzlTPr5rcyl4u7k=;
        b=UWiVQTCfFa2v0uo4Kjn7RhKDf4yGnb4Nx4Ozk74FZEaoK648tZijbvzYitOrmtJgM9
         qG5Du5UU23iO8QSly6mh6/G9fl/+LrfCsQnBF5LD5zwkeMIMMpl/FnlTV7yM2folgyVj
         BdVGkcWIZ495Oyg7LZv6m8v9PASh+Cc7AikeyGlI9H2ko7RYvP7p+paA/mFwjkZp5WgK
         IU6tTa4gDyXf4XpQIXegv02z+zYwayOqTevF4NuFmmPce9klfsI2CoC2rVSjtbjzLHlV
         7gtcmimwZdfnpXEVGHZNcpe0AapmamRO/PcjqQ7pjaQ3UaUry63F93RAPVeV2Lci4hPj
         Q9kw==
X-Received: by 10.68.242.41 with SMTP id wn9mr6227852pbc.79.1444366719172;
        Thu, 08 Oct 2015 21:58:39 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu ([2601:647:4700:de30:8067:188f:6c60:7880])
        by smtp.gmail.com with ESMTPSA id rx10sm28757641pab.21.2015.10.08.21.58.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 21:58:38 -0700 (PDT)
Date: Thu, 8 Oct 2015 21:58:36 -0700
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: skein: fix block comment style
Message-ID: <893959004abe3e05cdad581b57b1138df238f237.1444366020.git.deepa.kernel@gmail.com>
References: <cover.1444366020.git.deepa.kernel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444366020.git.deepa.kernel@gmail.com>
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



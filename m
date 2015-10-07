X-GM-THRID: 6202759163507900416
X-Received: by 10.50.27.100 with SMTP id s4mr981801igg.4.1444192408169;
        Tue, 06 Oct 2015 21:33:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.109.165 with SMTP id ht5ls30165obb.68.gmail; Tue, 06 Oct
 2015 21:33:27 -0700 (PDT)
X-Received: by 10.182.236.225 with SMTP id ux1mr26068123obc.2.1444192407841;
        Tue, 06 Oct 2015 21:33:27 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id el2si4786288pbb.0.2015.10.06.21.33.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 21:33:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy16so8503474pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 21:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=iZ2tMZ8da2qwF7TGswW5SALqUxCWkzlTPr5rcyl4u7k=;
        b=eqmyjSItO59rIHEEpSqajj0dcu1tvkZuuSu0oqqJmyewg0j9fWXA4kYX43G51/NoRC
         Q9cwJSyNZcArAr3hM+0sivSM5MhA4LPDgauPyzEBT0EIaKqJHGS9FstL0ICbasuWOZvg
         a6YtGnxz5IjlLLoXb6qB6i5AtM3VB1riWy4r0PDzm2klnKTbsGVnNuTEniEzQDklTM6N
         qjdu29PQcJ0uUCY2QffFPH9QWQYlWl1hG7xqR0r+VeVQU0/ydSUdDzEC0AyiyLoSuRTU
         Ac52Ws/7LTLUctlDjplB5Y0gkxgz1DCjeQM07NfS6FrFfA4BS3fblPC4zFtmNLMeRAWU
         mzvQ==
X-Received: by 10.68.168.2 with SMTP id zs2mr3432188pbb.154.1444192407720;
        Tue, 06 Oct 2015 21:33:27 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu ([2601:647:4700:de30:74ae:f377:907a:fc63])
        by smtp.gmail.com with ESMTPSA id rm9sm14951504pab.14.2015.10.06.21.33.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 21:33:27 -0700 (PDT)
Date: Tue, 6 Oct 2015 21:33:25 -0700
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: skein: fix block comment style
Message-ID: <20151007043323.GA4005@deepa-ubuntu>
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



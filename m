X-GM-THRID: 6209587037429825536
X-Received: by 10.194.109.233 with SMTP id hv9mr7205486wjb.1.1445782146413;
        Sun, 25 Oct 2015 07:09:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.79 with SMTP id s76ls571017lfs.29.gmail; Sun, 25 Oct
 2015 07:09:05 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr7255988lbs.18.1445782145777;
        Sun, 25 Oct 2015 07:09:05 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id g18si37667wmd.1.2015.10.25.07.09.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:09:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ll6so82920609wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 07:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=cJCQMc+AOTANdSBG/kb9eA2BjwRwMELJS8Ma+uHLyso=;
        b=r1/agwsjHxVTcFx6JWZ2P+hrtSRN21gNy/b5bKH73kK6/5ELWAMpssCSXB2ONhJpjc
         i+Fk9gf1oAlBQK1OyyLeeGD1uuCqtnBz+Sd8zMkP0pJLYxzig0CJ8mjqvT19O3QA4L57
         /H9L3e8bSOzZStz8fw5/nSQiJXAPcw3ysBh4bTuNPbdN5df7hgTqKbWS5b588VDy2yUf
         GdMTqf1ynmOA05fJZohkIb+ZoR0+NzA/f/Fhsu5HQy6omcATN+ngEekgmOi/wzpLI3fu
         T0lFuS0In/tu+x0ToLMCk1aJ627ZFiVjq+TLd8RbOBmU142QaFCjx6qZCm1pBUfOl58T
         zlmQ==
X-Received: by 10.180.211.109 with SMTP id nb13mr14506893wic.52.1445782145580;
        Sun, 25 Oct 2015 07:09:05 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id q1sm33674958wjy.31.2015.10.25.07.09.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 25 Oct 2015 07:09:04 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: skein:Add space around '/'
Date: Sun, 25 Oct 2015 16:08:55 +0200
Message-Id: <1445782135-4972-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '/'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '/' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/skein/skein_api.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/skein/skein_api.c b/drivers/staging/skein/skein_api.c
index 18acf18..3fb0d1c 100644
--- a/drivers/staging/skein/skein_api.c
+++ b/drivers/staging/skein/skein_api.c
@@ -51,7 +51,7 @@ int skein_init(struct skein_ctx *ctx, size_t hash_bit_len)
 	 * memory available.  The beauty of C :-) .
 	 */
 	x = ctx->m.s256.x;
-	x_len = ctx->skein_size/8;
+	x_len = ctx->skein_size / 8;
 	/*
 	 * If size is the same and hash bit length is zero then reuse
 	 * the save chaining variables.
@@ -92,7 +92,7 @@ int skein_mac_init(struct skein_ctx *ctx, const u8 *key, size_t key_len,
 	skein_assert_ret(ctx, SKEIN_FAIL);
 
 	x = ctx->m.s256.x;
-	x_len = ctx->skein_size/8;
+	x_len = ctx->skein_size / 8;
 
 	skein_assert_ret(hash_bit_len, SKEIN_BAD_HASHLEN);
 
@@ -136,7 +136,7 @@ void skein_reset(struct skein_ctx *ctx)
 	 * memory available.  The beautiy of C :-) .
 	 */
 	x = ctx->m.s256.x;
-	x_len = ctx->skein_size/8;
+	x_len = ctx->skein_size / 8;
 	/* Restore the chaing variable, reset byte counter */
 	memcpy(x, ctx->x_save, x_len);
 
-- 
1.9.1



X-GM-THRID: 6339039016385511424
X-Received: by 10.98.56.74 with SMTP id f71mr4652286pfa.3.1475922534746;
        Sat, 08 Oct 2016 03:28:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.174 with SMTP id d43ls6502103otd.11.gmail; Sat, 08 Oct
 2016 03:28:54 -0700 (PDT)
X-Received: by 10.157.45.200 with SMTP id g66mr5837815otb.84.1475922534463;
        Sat, 08 Oct 2016 03:28:54 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 7si6607523par.0.2016.10.08.03.28.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 03:28:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id cd13so3989222pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 03:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Mo8M0GtQPmScLOPEr6Pz/J3ReiW9zjB+taxNoBT9IXY=;
        b=oOSOrzGJY97snka85aFwwz4ZbkkmC+g9TGXh82GXb8McwH87EDSEfZx9hoGrUw1eQR
         aY/HXz51wX5c7KBirJVba94ZX78MMx9u20LiBuS9TWWIDXdWS41GZhJIOKIanCRvzeFx
         UX2vgp1ROkeVs+ArQluUn1mwDB27dEPsGp9cnO9jjPaJMbqHziCT81HJ+33C1d8ijzOU
         o4BFdqr21NAO4j1ijEdNM1OYa9JyGGoUZku13xfCEEQpVIps5pODkkg7uDgmujIH3k0M
         GvSG7Qp9nBZChb6LBn8ik2zP73lUUmqwfRh5WBYXuW93ZAUuGvpdoSPoLf50+5UR9p9A
         neSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Mo8M0GtQPmScLOPEr6Pz/J3ReiW9zjB+taxNoBT9IXY=;
        b=Yqbw45hoJeb6/rnfGYKol5pzqBL7yLPc6ABZtpK8DoKmML0ZH3tcgqr1EXuyFUhDPu
         A92FvhzGDxj1XV8sfkiRvP2iNBajSaAAYQtEoJzdmxAP4RCIiaK9DGjA4HxhQHF3Zoik
         rP4iIHqzfbbF1SLD6+S5oFMx1jYmNb9bwTBvFLId+EUcnfEJam36AkiMBwjg2KR/HROu
         sZa8fo4hyj3+EE2ACjgEAVv8vN8eoVlREMWiCXDgQypXctPRkaYl0Pn7Ext0l1+f5rkt
         /XM4V7IzhH5WpqpMLxGZwB3chnjL1Od+5J+Dt2oSFqmBamqAEA1E6IbSHMCMHNWR++3w
         20yA==
X-Gm-Message-State: AA6/9RngGGSBGLlFRG4zxGRazw6Nv1kdTwKLQsDlQByf4JGKI3Hc+mTEMGUAopKcB9KSzg==
X-Received: by 10.66.253.133 with SMTP id aa5mr36753979pad.161.1475922534245;
        Sat, 08 Oct 2016 03:28:54 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.171.86])
        by smtp.gmail.com with ESMTPSA id n8sm37342963pan.17.2016.10.08.03.28.22
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 03:28:52 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 08 Oct 2016 15:58:05 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: skein: skein_api: Remove useless type conversion
Date: Sat,  8 Oct 2016 15:58:04 +0530
Message-Id: <1475922484-25280-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Some type conversions like casting a pointer to a pointer of same type,
casting to the original type using addressof(&) operator etc. are not
needed. Therefore, remove them. Done using coccinelle:

@@
type t;
t *p;
t a;
@@
(
- (t)(a)
+ a
|
- (t *)(p)
+ p
|
- (t *)(&a)
+ &a
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/skein/skein_api.c | 26 ++++++++++----------------
 1 file changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/skein/skein_api.c b/drivers/staging/skein/skein_api.c
index cab26e7..c6526b6 100644
--- a/drivers/staging/skein/skein_api.c
+++ b/drivers/staging/skein/skein_api.c
@@ -98,19 +98,16 @@ int skein_mac_init(struct skein_ctx *ctx, const u8 *key, size_t key_len,
 	switch (ctx->skein_size) {
 	case SKEIN_256:
 		ret = skein_256_init_ext(&ctx->m.s256, hash_bit_len,
-					 tree_info,
-					 (const u8 *)key, key_len);
+					 tree_info, key, key_len);
 
 		break;
 	case SKEIN_512:
 		ret = skein_512_init_ext(&ctx->m.s512, hash_bit_len,
-					 tree_info,
-					 (const u8 *)key, key_len);
+					 tree_info, key, key_len);
 		break;
 	case SKEIN_1024:
 		ret = skein_1024_init_ext(&ctx->m.s1024, hash_bit_len,
-					  tree_info,
-					  (const u8 *)key, key_len);
+					  tree_info, key, key_len);
 
 		break;
 	}
@@ -152,16 +149,13 @@ int skein_update(struct skein_ctx *ctx, const u8 *msg,
 
 	switch (ctx->skein_size) {
 	case SKEIN_256:
-		ret = skein_256_update(&ctx->m.s256, (const u8 *)msg,
-				       msg_byte_cnt);
+		ret = skein_256_update(&ctx->m.s256, msg, msg_byte_cnt);
 		break;
 	case SKEIN_512:
-		ret = skein_512_update(&ctx->m.s512, (const u8 *)msg,
-				       msg_byte_cnt);
+		ret = skein_512_update(&ctx->m.s512, msg, msg_byte_cnt);
 		break;
 	case SKEIN_1024:
-		ret = skein_1024_update(&ctx->m.s1024, (const u8 *)msg,
-					msg_byte_cnt);
+		ret = skein_1024_update(&ctx->m.s1024, msg, msg_byte_cnt);
 		break;
 	}
 	return ret;
@@ -211,7 +205,7 @@ int skein_update_bits(struct skein_ctx *ctx, const u8 *msg,
 	/* partial byte bit mask */
 	mask = (u8)(1u << (7 - (msg_bit_cnt & 7)));
 	/* apply bit padding on final byte (in the buffer) */
-	up[length - 1]  = (u8)((up[length - 1] & (0 - mask)) | mask);
+	up[length - 1]  = (up[length - 1] & (0 - mask)) | mask;
 
 	return SKEIN_SUCCESS;
 }
@@ -224,13 +218,13 @@ int skein_final(struct skein_ctx *ctx, u8 *hash)
 
 	switch (ctx->skein_size) {
 	case SKEIN_256:
-		ret = skein_256_final(&ctx->m.s256, (u8 *)hash);
+		ret = skein_256_final(&ctx->m.s256, hash);
 		break;
 	case SKEIN_512:
-		ret = skein_512_final(&ctx->m.s512, (u8 *)hash);
+		ret = skein_512_final(&ctx->m.s512, hash);
 		break;
 	case SKEIN_1024:
-		ret = skein_1024_final(&ctx->m.s1024, (u8 *)hash);
+		ret = skein_1024_final(&ctx->m.s1024, hash);
 		break;
 	}
 	return ret;
-- 
1.9.1



X-GM-THRID: 6474640766573477888
X-Received: by 10.101.67.3 with SMTP id j3mr767864pgq.150.1507494777089;
        Sun, 08 Oct 2017 13:32:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.80.77 with SMTP id k13ls518275pgo.30.gmail; Sun, 08 Oct
 2017 13:32:56 -0700 (PDT)
X-Received: by 10.101.88.77 with SMTP id s13mr234082pgr.173.1507494776040;
        Sun, 08 Oct 2017 13:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507494776; cv=none;
        d=google.com; s=arc-20160816;
        b=yW/nGTOvjiGkdbjcB82CBnbUyJhHSgxhpoYHEpMXR3cX9CKfe3YhZygY7DMUp722WF
         ypuJLCCMGK3XGa+I72Y0NHvbgTxtRWNhQH/EfjgrDapHafD76r2CUX6fW2LOeI0uYyTe
         lwMVckI4tG5IuU9HYKVnehQhEj/2SbIzZUrOgO2p36YziQXpyN3vPnxPA3RCi1laH5+z
         tbtzdLe6UqSw4gBfT0qyj4rlUl0l/NdQDkL6eO5MIbVDyOvewYX7CM/Z4ikhoIjAG4Ff
         xRbFLriK+myZqJxk/rBxsUuUMyRzNcFcekKeE1KrL0nP3BZneWBiuBG42hZ2DBNI+Eak
         oElQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=loALiGG8VRNTach0ES1mXWVO+3MZRTdOPNl6ZwcY47E=;
        b=FcSmF0UrmU+2RHUmwkQDJp080FKU7MBF+nP53RUl/5bhvUqIVvkMviZtSxJidfrmJS
         NU6d0rxCODo5HOV3rKmr6PYIlIyc0xUrxp1VNIj9yj4FNnYK1ROOgfmDOJYUQSmJwSbc
         pwaFA+RGgh4ONHkRL5nkW0QI3tfgz9RT0duhBRyNbkZwg2FMqujqhXuldM9Q3u22lIkN
         /TCpVIB+H0ppEFpcZSaHqyQghUcdscgcg2NKgI+/o95QG9yr8LJ5Awyl3x6/Kkd24v34
         x0mxkoqJOTcCutKOwUrA7yZK8V2xIFt9mOuwnPiiKr/sayLMGLtMPLts3+yQhPtYRp86
         PPnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H7LGwF8x;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id w11si717858pfk.4.2017.10.08.13.32.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 13:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H7LGwF8x;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id m28so22763596pfi.0
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 13:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=loALiGG8VRNTach0ES1mXWVO+3MZRTdOPNl6ZwcY47E=;
        b=H7LGwF8xWZn7ZnKN8zzv8opzS55Oy+rAhjMI6Y3g8pfJv27OZMKs6Q6ur++VKczv0F
         xVYsqZrYJLa6kw6dA+xfCe5hamiosjTfJwoKVB4hC+A9jO/kbRbjsN0X/zzrt0f5L2KU
         BJVe2jUFf+YeUdtW/RKuegeSbwTMsTPhuY4F92oQjP7xSYapamJzx8qJNIwbKrcaYan8
         4eiYD4QeXi274/zugLV50D04WqhFoO5jIPpwH2rptRt/N1pk8gbv13LTOFKr61KA3e+l
         1+Z8ZJS0R5jGxvw1QdhwKBfT0ZcN3q5IY/USs1C16hvx94p5GqLZOzc2RFiZnhn+7Btd
         EVjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=loALiGG8VRNTach0ES1mXWVO+3MZRTdOPNl6ZwcY47E=;
        b=BSaW5QQnMnE5DxWaxcR3aIfuTkQnqOMvoYU9FPultS167VDctvIJYC8T39d3Qtp3kd
         EO4Kru+YPXXgw9s2Wi8k0p4NMQEBIyfBWnFPXG//Ne1Cqe//Uupi5gvWM98pAxqpWLeI
         qwNPQu/nFmpAuyiJj0387AzAv5WKi7ILfs1K2+C4olOLtjymgBABKX4o9JC72a3kGg7j
         ypWTHSqGRXsdoe/w3Fwkt/usyrH7qyBabaU/i7pdxPrh8fg/3K+pPNOJbe5au2Rl0LHr
         pt9AjgAkescy9BpazTrGdq43aPkiPNPrkqdLYmmjFo/XW14eejZd60xBiuXkJiY8RZ50
         1c+w==
X-Gm-Message-State: AMCzsaUBadTogVgYqPHN0wilbJI5bRTQaKftuKok4osO6ziLtoWCb81+
	MVVzA1UYYFPYQeQH6jsdbMY=
X-Google-Smtp-Source: AOwi7QAOBbFpdeXJcV653/L9YCuX0PUw2P7omPdvboVZLGXvCypYu/Zb2zZXQyU7YbJ3INRjM3hI8w==
X-Received: by 10.101.80.133 with SMTP id r5mr7328978pgp.183.1507494775831;
        Sun, 08 Oct 2017 13:32:55 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id p14sm11278871pgr.51.2017.10.08.13.32.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 13:32:55 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] datatype: Change "%Zx" to "%zx" and "%Zu" to "%zu"
Date: Mon,  9 Oct 2017 02:00:36 +0530
Message-Id: <20171008203036.24619-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Use "%zx" and "%zu" over "%Zx" and "%Zu" respectively as "%Zx" and "%Zu"
is non-standard C.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 src/datatype.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/src/datatype.c b/src/datatype.c
index 94b1224..34dda84 100644
--- a/src/datatype.c
+++ b/src/datatype.c
@@ -239,7 +239,7 @@ void symbol_table_print(const struct symbol_table *tbl,
 
 static void invalid_type_print(const struct expr *expr, struct output_ctx *octx)
 {
-	nft_gmp_print(octx, "0x%Zx [invalid type]", expr->value);
+	nft_gmp_print(octx, "0x%zx [invalid type]", expr->value);
 }
 
 const struct datatype invalid_type = {
@@ -313,14 +313,14 @@ const struct datatype bitmask_type = {
 	.type		= TYPE_BITMASK,
 	.name		= "bitmask",
 	.desc		= "bitmask",
-	.basefmt	= "0x%Zx",
+	.basefmt	= "0x%zx",
 	.basetype	= &integer_type,
 };
 
 static void integer_type_print(const struct expr *expr, struct output_ctx *octx)
 {
 	const struct datatype *dtype = expr->dtype;
-	const char *fmt = "%Zu";
+	const char *fmt = "%zu";
 
 	do {
 		if (dtype->basefmt != NULL) {
@@ -749,7 +749,7 @@ const struct datatype mark_type = {
 	.size		= 4 * BITS_PER_BYTE,
 	.byteorder	= BYTEORDER_HOST_ENDIAN,
 	.basetype	= &integer_type,
-	.basefmt	= "0x%.8Zx",
+	.basefmt	= "0x%.8zx",
 	.print		= mark_type_print,
 	.parse		= mark_type_parse,
 	.flags		= DTYPE_F_PREFIX,
-- 
2.11.0



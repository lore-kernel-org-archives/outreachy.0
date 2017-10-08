X-GM-THRID: 6474484890958036992
X-Received: by 10.98.182.17 with SMTP id j17mr448503pff.45.1507458484999;
        Sun, 08 Oct 2017 03:28:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.211.11 with SMTP id bc11ls124985plb.11.gmail; Sun, 08 Oct
 2017 03:28:04 -0700 (PDT)
X-Received: by 10.98.89.143 with SMTP id k15mr459147pfj.44.1507458484082;
        Sun, 08 Oct 2017 03:28:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507458484; cv=none;
        d=google.com; s=arc-20160816;
        b=hqg+Iv+LSBKiBdDpRoX5dwZ2qT9+UZhFyd9nLalprHlP+gWkqYLoZVkMS6eLCiqSGY
         y7XImZBzca/bw89jznmZ5cokxBiIVQDF7azME8/NbmB+k11V04b/nIq+Fw6WvwNTHezV
         9VfDUfi6uMX9LQsL/Rm7uNXghVy6+oKZij3DWMhwPblVzWxWi/sxvuNVKVLl7o8vP6Gn
         HUTRjVPFrm8yHBwnLg5p+E69cnGevc4v+96F0VOeyKFgFKfd7MyU6kv8v/sCfe+Cj1Ct
         +ZBG9f/5IESGh3Hy+qdM326AbgMJe7ximK4z9Ru43zwxTiKyFe+pPRQra6IjUJY1oapo
         RDFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=+Z0SAXAsJ+fBgX+hqrRN0JBX54jvpzURVrzGDT85GEU=;
        b=V3MD/I349k5qMxpD0rAG6Pg1XEenivbGigFHShjqFnXXljkAM3WSS07P6OngGjsNv7
         5ZanIMQ0Xv1yMXyw5hHUMKAKOG2xiqVXZVb9GJCTAysY4U/T4KHpxuFxL3fSrKBYy2co
         BuG47RnNwJb+bxvxJztAnDarMFZIytugxY4FbQpmMKswHb269IV47b4nflKNj+1qQ36w
         i4kOtxKNwSLHFkeWf6xnMacg17PCFgYV9A1zMYQO5OkJLfrs+AEW/5BHGfS1bwDlTZBo
         npqRqzz8j6Cr4i1L9r/419nKTY3Q/5TasTEs7i3lep49JIkJ2+JimpB7joK6X3tuhh5N
         MVlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZELLWA51;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a17si680274pfk.15.2017.10.08.03.28.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 03:28:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZELLWA51;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id b85so985026pfj.1
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 03:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+Z0SAXAsJ+fBgX+hqrRN0JBX54jvpzURVrzGDT85GEU=;
        b=ZELLWA51Umg6f6BaL+S89HYZvuT0WCiu7ZCMO3uBv0yeAN4xT1EoLIcOVjsYW1Llze
         GBjF/ucP0sMP62kCWA1mlAfoMqJdhhj6FKDdxsyH3vZO5eF5uE+HK5Zz0NWaNxzZesE3
         G89MHJpLn/LBVrPaC7iF8sXVuyv5EhJarapyVwYclpSxjQbSr7r+gMz11cSXWt7WWcWI
         17KvW1a/611tOAkIVBAhQMcJk5f/uBdavPP/iyahvg/nHufDkcEKilO/HYJolt5Gbspg
         gzilToDoQznBlKN3S27nsdQSlQ5oI/Sb8vEObwDcJ2DGN+2+hnwI3PTs1xlx410s9jJI
         JiiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+Z0SAXAsJ+fBgX+hqrRN0JBX54jvpzURVrzGDT85GEU=;
        b=huJQQ4EUec4B7xTRGpIfPm8Cf/ZzA14An7NWG5vCb1O1JS4TBwo1muhBOW9jZZ6Isd
         ezITnEdBB2ULZFwmL0978oaE42ISsrAL3vOphCvm2tEgdWZoB1WIKTGqbx7csTw4KdSL
         152LSr7T+Jj4kQ0ASpisoTdYvJ6hhxE21fc34jFmiaQalW46wxgSh4NGHO2mZevRxTNG
         v94gJTPfosQliMIwexX7JGm3qnHFXJ7e8rCsZNQgzKIt0rEIvR5sJaUouIrF3ysdah2Z
         7ARXHIOg2NHj/V/SI7XRZIU1hFykwbKQ8HsiCaqo41IKxI7Kk7u7OKYSz3vyR8si/Gsq
         KlaQ==
X-Gm-Message-State: AMCzsaXno5xG9447efGc8P8zddyvzPJfuKHIegpXZgwsVg72MuvMbOLZ
	qkt+2izbzVUCA2IHZdePQCs=
X-Google-Smtp-Source: AOwi7QBJW1+k0HIY3N/l3j7AtHUqjkFfsHtMTMJGanC8dXqqghMzBk3KPr5wdq7n7WV1n1DJ429wNg==
X-Received: by 10.99.169.25 with SMTP id u25mr6464540pge.363.1507458483823;
        Sun, 08 Oct 2017 03:28:03 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id z126sm10877755pfz.70.2017.10.08.03.28.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 03:28:03 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] src: Remove unnecessary spaces
Date: Sun,  8 Oct 2017 15:55:51 +0530
Message-Id: <20171008102551.16175-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Remove spaces before tab and at the start of a line

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
There are other such files but I am breaking it down to make review 
easy.
 src/datatype.c | 4 ++--
 src/evaluate.c | 2 +-
 src/gmputil.c  | 4 ++--
 src/main.c     | 2 +-
 src/meta.c     | 4 ++--
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/src/datatype.c b/src/datatype.c
index 94b1224..efbba47 100644
--- a/src/datatype.c
+++ b/src/datatype.c
@@ -370,7 +370,7 @@ static void string_type_print(const struct expr *expr, struct output_ctx *octx)
 }
 
 static struct error_record *string_type_parse(const struct expr *sym,
-	      				      struct expr **res)
+					      struct expr **res)
 {
 	*res = constant_expr_alloc(&sym->location, &string_type,
 				   BYTEORDER_HOST_ENDIAN,
@@ -849,7 +849,7 @@ void time_print(uint64_t seconds, struct output_ctx *octx)
 enum {
 	DAY	= (1 << 0),
 	HOUR	= (1 << 1),
-	MIN 	= (1 << 2),
+	MIN	= (1 << 2),
 	SECS	= (1 << 3),
 };
 
diff --git a/src/evaluate.c b/src/evaluate.c
index 193ea1c..3ad2219 100644
--- a/src/evaluate.c
+++ b/src/evaluate.c
@@ -132,7 +132,7 @@ static int byteorder_conversion(struct eval_ctx *ctx, struct expr **expr,
 		return 0;
 	if (expr_basetype(*expr)->type != TYPE_INTEGER)
 		return expr_error(ctx->msgs, *expr,
-			 	  "Byteorder mismatch: expected %s, got %s",
+				  "Byteorder mismatch: expected %s, got %s",
 				  byteorder_names[byteorder],
 				  byteorder_names[(*expr)->byteorder]);
 
diff --git a/src/gmputil.c b/src/gmputil.c
index 3cc4e61..a817bb8 100644
--- a/src/gmputil.c
+++ b/src/gmputil.c
@@ -50,11 +50,11 @@ void mpz_rshift_ui(mpz_t rop, unsigned int n)
 
 #define mpz_get_type(type, endian, op)					\
 ({									\
- 	type ret = 0;							\
+	type ret = 0;							\
 	size_t cnt;							\
 	mpz_export(&ret, &cnt, MPZ_LSWF, sizeof(ret), endian, 0, op);	\
 	assert(cnt <= 1);						\
- 	ret;								\
+	ret;								\
  })
 
 uint64_t mpz_get_uint64(const mpz_t op)
diff --git a/src/main.c b/src/main.c
index b59c932..406e3b0 100644
--- a/src/main.c
+++ b/src/main.c
@@ -119,7 +119,7 @@ static void show_help(const char *name)
 "  -i, --interactive		Read input from interactive CLI\n"
 "\n"
 "  -n, --numeric			When specified once, show network addresses numerically (default behaviour).\n"
-"  				Specify twice to also show Internet services (port numbers) numerically.\n"
+"				Specify twice to also show Internet services (port numbers) numerically.\n"
 "				Specify three times to also show protocols, user IDs, and group IDs numerically.\n"
 "  -s, --stateless		Omit stateful information of ruleset.\n"
 "  -N				Translate IP addresses to names.\n"
diff --git a/src/meta.c b/src/meta.c
index 56b9e29..e387028 100644
--- a/src/meta.c
+++ b/src/meta.c
@@ -625,8 +625,8 @@ struct stmt *meta_stmt_meta_iiftype(const struct location *loc, uint16_t type)
 }
 
 struct error_record *meta_key_parse(const struct location *loc,
-                                    const char *str,
-                                    unsigned int *value)
+				    const char *str,
+				    unsigned int *value)
 {
 	int ret, len, offset = 0;
 	const char *sep = "";
-- 
2.11.0



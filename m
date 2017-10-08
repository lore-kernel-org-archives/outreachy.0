X-GM-THRID: 6474497832409628672
X-Received: by 10.101.78.202 with SMTP id w10mr616451pgq.105.1507461497124;
        Sun, 08 Oct 2017 04:18:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.43.9 with SMTP id r9ls751785pfr.6.gmail; Sun, 08 Oct 2017
 04:18:16 -0700 (PDT)
X-Received: by 10.101.86.13 with SMTP id l13mr601317pgs.103.1507461496168;
        Sun, 08 Oct 2017 04:18:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507461496; cv=none;
        d=google.com; s=arc-20160816;
        b=P1kCTe+PivmjDfw3t+kNpWSxKuALKXeievN9RsgsyzqO73J4vRiKs15bvx5WSdLsQ7
         xSi04ZiX0yHYqW+6lm9zUgr22NEDR9VeqodLadxOJgjWSn3bQrXYLHAoYHh4XR/+gL9V
         jzwfgMBGHlOedxMhdbWeZkK+QhgIL61H9BCLSjHWBg3BmzmDweI84d6aHstSmDjbD5cF
         fnVtdFVao1hKcpckiGkG9quPi2usQR/YBcd4Il6E+T5T4UgdNSfm8ZejujZWgtKlRyGt
         +XJ2v2DpnSXyKo9qTv8LGobGuw4kGIT2TWM9fXNXkRWsnPRpiAEig/FekbdseIskwl6V
         1C6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=lR5TeYjIMaSF2539e3dHUIrIwjgCbJNp++C/FxW3b7o=;
        b=BqXiimewK/VrKO3lyzERw5LppZcFaajtgz6oXko0q5We6dyoca8w5/Y2AeGe68JCmv
         l+K7nx/pVEWWK2l6g1Rd37dF1R6xL81wLBZMc7O39gHbQQyZmMigncIUOg1s9d3ftHPA
         37CnI80VWoesvigPCeqUUsJKBu3LAYsVtyurMHsPYu7HdBu5kX6xuwZgfyQBLtvAzL0Y
         HR3IgomivyeNwEpFN6JMArv2oc7HXVWI7FxSUdyYk/5GoBEqdBnSAbdJq6M7S0X8xi6F
         Pp++6h3YIQda2Wtg5xRH/PxvPIzUufRlnSG0YEGAPxOmWlnIdUdhOvsumsbKboZwwID9
         y1Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dUk1mxM9;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id l80si234002pfk.26.2017.10.08.04.18.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 04:18:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dUk1mxM9;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id l24so6322620pgu.2
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 04:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lR5TeYjIMaSF2539e3dHUIrIwjgCbJNp++C/FxW3b7o=;
        b=dUk1mxM9Gm3ZXA2Q1zgVcMTedr54lyZSFYv7p/t5a89W56ZYQ/F4kzLV6jMxEJdKOv
         zLDtqzfAGhNp76gtoB6I3Q0Uq87M3pfufSL881oROWOhW29TIO6FohKDblUwPyYwqGH9
         lGEsOl/qPs8gPvy5+2ZmGwqkh0JW5S1CchrrDjYWGmvvXRWH9AroTewhKdzzHaKK74fG
         oiWOrHJ3ErTp8eb4lno+jgNCajyOPV5WtSaUG/zb4wO2Hpho+0YDe5OdcyLluR7T8Tih
         ooHN9FMS3XPUKmimNLCV+SPSpqf0mhgXKY/tR3TCRB/H1qUJVV8LSiu1SgdI4LJ3+5oD
         uJ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lR5TeYjIMaSF2539e3dHUIrIwjgCbJNp++C/FxW3b7o=;
        b=WbOHS6s57x+tRy7ngiidgFhdN6rpTqcoKPWJ2x0VzZNLKBEp71e2BHeztDunq9ZYqk
         kZqaFQgb8mxbJfpENX5LStkg6dT+Lp0e9tl97q+pqOGTAHAHh4Am5iQnl21x/WsBd7y8
         Sq9X2WYRDB/lj0PseGFlh5+BID4yTwigQXY55JmOvXzMjEERKiYafCVSeziJm17NyFBx
         PasyJIjjYT9nUhznHxYcK5l/6Mj4TL2Zd1JTKSObnoXmXvzY27ZPBI0Ti25WO4R9ULGl
         N083wEvum01P9uVzDBv2AF8mnXcFE9DrbbplZ5Bw/mP2loa10fwgc8/i65at3rMmnY+r
         k0Fw==
X-Gm-Message-State: AMCzsaXsnqA5LX+09blO+Xb7YReWHxS7l/4E8vW0nWiJ9rBmYG/jtb3o
	lw7bvMHzfEMmlf/XpLpyX8k=
X-Google-Smtp-Source: AOwi7QAsfGlI+D4RKz9gbsnkOUOt1/kcxcrrv2ZfQr06djeU3xkoFd0ovNuWGBXlHiRZ+UuQQk21Ww==
X-Received: by 10.98.34.130 with SMTP id p2mr7324610pfj.108.1507461495914;
        Sun, 08 Oct 2017 04:18:15 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id 85sm2213128pfz.119.2017.10.08.04.18.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 04:18:15 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] src: Code indent should use tabs wherever possible
Date: Sun,  8 Oct 2017 16:46:04 +0530
Message-Id: <20171008111604.18781-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Remove unnecessary spaces and use tabs for code indent.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 src/datatype.c |  2 +-
 src/evaluate.c | 10 +++++-----
 src/gmputil.c  |  4 ++--
 src/meta.c     |  4 ++--
 src/netlink.c  |  6 +++---
 src/segtree.c  |  4 ++--
 6 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/src/datatype.c b/src/datatype.c
index 94b1224..d83ecec 100644
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
diff --git a/src/evaluate.c b/src/evaluate.c
index 193ea1c..79af65c 100644
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
 
@@ -1388,7 +1388,7 @@ static int expr_evaluate_hash(struct eval_ctx *ctx, struct expr **exprp)
 		return -1;
 
 	/* expr_evaluate_primary() sets the context to what to the input
-         * expression to be hashed. Since this input is transformed to a 4 bytes
+	 * expression to be hashed. Since this input is transformed to a 4 bytes
 	 * integer, restore context to the datatype that results from hashing.
 	 */
 	__expr_set_context(&ctx->ectx, expr->dtype, expr->byteorder, expr->len,
@@ -1691,7 +1691,7 @@ static int expr_evaluate_relational(struct eval_ctx *ctx, struct expr **expr)
 		case EXPR_CONCAT:
 			return expr_binary_error(ctx->msgs, left, rel,
 					"Relational expression (%s) is undefined "
-				        "for %s expressions",
+					"for %s expressions",
 					expr_op_symbols[rel->op],
 					left->ops->name);
 		default:
@@ -1701,7 +1701,7 @@ static int expr_evaluate_relational(struct eval_ctx *ctx, struct expr **expr)
 		if (!expr_is_singleton(right))
 			return expr_binary_error(ctx->msgs, right, rel,
 					"Relational expression (%s) is undefined "
-				        "for %s expressions",
+					"for %s expressions",
 					expr_op_symbols[rel->op],
 					right->ops->name);
 
@@ -1723,7 +1723,7 @@ range:
 		case EXPR_CONCAT:
 			return expr_binary_error(ctx->msgs, left, rel,
 					"Relational expression (%s) is undefined"
-				        "for %s expressions",
+					"for %s expressions",
 					expr_op_symbols[rel->op],
 					left->ops->name);
 		default:
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
diff --git a/src/netlink.c b/src/netlink.c
index d5d410a..c1d0d56 100644
--- a/src/netlink.c
+++ b/src/netlink.c
@@ -445,7 +445,7 @@ struct expr *netlink_alloc_data(const struct location *loc,
 
 int netlink_add_rule_batch(struct netlink_ctx *ctx,
 			   const struct handle *h,
-		           const struct rule *rule, uint32_t flags)
+			   const struct rule *rule, uint32_t flags)
 {
 	struct nftnl_rule *nlr;
 	int err;
@@ -2117,7 +2117,7 @@ out:
 /* returns true if the event should be ignored (i.e. null element) */
 static bool netlink_event_ignore_range_event(struct nftnl_set_elem *nlse)
 {
-        uint32_t flags = 0;
+	uint32_t flags = 0;
 
 	if (nftnl_set_elem_is_set(nlse, NFTNL_SET_ELEM_FLAGS))
 		flags = nftnl_set_elem_get_u32(nlse, NFTNL_SET_ELEM_FLAGS);
@@ -2765,7 +2765,7 @@ next:
 }
 
 static void trace_print_packet(const struct nftnl_trace *nlt,
-			        struct output_ctx *octx)
+			       struct output_ctx *octx)
 {
 	struct list_head stmts = LIST_HEAD_INIT(stmts);
 	const struct proto_desc *ll_desc;
diff --git a/src/segtree.c b/src/segtree.c
index f0efd15..1dd8039 100644
--- a/src/segtree.c
+++ b/src/segtree.c
@@ -346,9 +346,9 @@ static bool interval_overlap(const struct elementary_interval *e1,
 		return false;
 
 	return (mpz_cmp(e1->left, e2->left) >= 0 &&
-	        mpz_cmp(e1->left, e2->right) <= 0) ||
+		mpz_cmp(e1->left, e2->right) <= 0) ||
 	       (mpz_cmp(e1->right, e2->left) >= 0 &&
-	        mpz_cmp(e1->right, e2->right) <= 0) ||
+		mpz_cmp(e1->right, e2->right) <= 0) ||
 	       (mpz_cmp(e1->left, e2->left) <= 0 &&
 		mpz_cmp(e1->right, e2->right) >= 0);
 }
-- 
2.11.0



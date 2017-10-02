X-GM-THRID: 6472213781908815872
X-Received: by 10.99.127.9 with SMTP id a9mr1391452pgd.81.1506929707161;
        Mon, 02 Oct 2017 00:35:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.65.193 with SMTP id o184ls2790518pga.0.gmail; Mon, 02 Oct
 2017 00:35:06 -0700 (PDT)
X-Received: by 10.99.174.8 with SMTP id q8mr1191266pgf.61.1506929706349;
        Mon, 02 Oct 2017 00:35:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506929706; cv=none;
        d=google.com; s=arc-20160816;
        b=jj9A3O457kv/uiOe+rTAf0VT0QPEXoX4XOwPe1CbnfYOkE4zSZWamfo4Lzz0uqvI02
         F0gjIuwHT0NuqK9IifL6VEjFtV5QflzwaY/1EkLUTrAWIagZXn9gbm1/KKhE+/5/P5Vx
         7jgzX9vfBKDs053Z5tO7VcGhl90gh+LLeBgD55aKXjpKU+6Iobar8gp+tVb9gBXTIqru
         8DitxgJ8KWf7lNe4tKj5a/baj/yhtMROlrsW7GLMs5Yzp5ppfafOPAT+2s1CdN87eScH
         37DXPr+pG08URshMCQUVtHlvjJXyQkURgQTWBMVsLSVj77VpPBI103u5VDzN5ldAutGe
         FC8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=xPcg8HgNSRW4YvS1c+tZcZX5UjPjsJRHilfGcFLVKi4=;
        b=TnwWPlWM0hzd64jcH+qU+YB4PMjnl5ZE4a+24rUIm1AiCnGOPBFTfin5kJi8Qp78tO
         PY1951YP98mELEkBoYFe+dw3vL3o49cQ8vxzADUIh7OCME0Sa39QAalx0Ppk67hkP0MZ
         RJkEBhjq+K06g59kdT5KwNLNAOxxPlQ7UoKgGaRyMBHUjuyFZQJUev/+duVp1IRkMRre
         1jAPqUNnJaHnMs7cTuRuEWhk2PPw68dl2Q4+Xlb6vTfbtQkrZ62z3NEwfM4kWYD5eOjV
         GP0aHHAKZz9fh7TWZX4cejJeANqLH3a9WYLZl3fsIcsRIRjUn8AWI55iTpAKjVUf5mDn
         wjkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fg3EMjSc;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id m186si958969pfm.2.2017.10.02.00.35.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 00:35:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fg3EMjSc;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 124so495014pgi.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 00:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xPcg8HgNSRW4YvS1c+tZcZX5UjPjsJRHilfGcFLVKi4=;
        b=fg3EMjScSSksRJIMJlbrW2bMal1VoZ2LCUFv0pbuU8zwkFx7N/gNrXtQVVoaat7kTu
         BgqOgBjylDSzCwLIDVdnT6h0WbjCM1G5VqfiYL0bepKFs0cuyI8drnCJ2alpdu7pgA89
         US2zMSk66vBuQTKmOXLPQPW1rzJ+Z+aEdO0fmZKo+qqoPH58/NV7u6gcs53gPtsX/tcd
         wTsXvDzMsW5oS29Ugk3RwdAZM4RxD80lm8xugQYqWt2kRcUw1uaNKOubFaD79Ulphnqo
         b0RgglwFfTX3e7hwpYdDUitaNCxS8B0wHQB8jnc0Hp04mnm3q7Lug61CnZL4YOQMlyYb
         8O1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=xPcg8HgNSRW4YvS1c+tZcZX5UjPjsJRHilfGcFLVKi4=;
        b=n+xmYdElgXT4NBH8pSMJg4fYqGTqawPhfetF5jvp+k6+/YlyxvPYvjJgxyLnuLfegU
         Y4CmSzNCw7C/Co1CpXDoezfwId5fA6BOYD3wdyFeegdSENeKZbdCxJP26SZ/x1JaJjfU
         6JZO2wYiMBRqdyqfe5eooNJ3eD50pdFRDJ1Uz6m4j7vmZTeqRvpzwdWOMvBmiv0KyqWK
         oeXDrtE8buNBL8A9bfxYwUbAOzsmYuKAg+iXoHksXJaTii1MLVZTsJr+UDLB4HKox7WX
         Hs4AY7RSOI2BN27/DQwGG7ELrM+PZSSHPIBFZNgiYMAiRtbDbWnZyPQfI0pAxHBRj1rX
         v5Ig==
X-Gm-Message-State: AHPjjUhqq9SfSvsoQChNmPHMiPFv5xOB2b+JSXqpkcsSDCdy4xsZjAln
	1ic+W6l/ilz6qCm2KmWZGVw=
X-Google-Smtp-Source: AOwi7QAYM/voxp2KD0UAszh1AndCbWCLtnZGxSgDBSW/zS8CLrVVu+Oi13gd8/qYZ/R4RtVLfn9d2g==
X-Received: by 10.159.206.198 with SMTP id x6mr8857417plo.95.1506929706147;
        Mon, 02 Oct 2017 00:35:06 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id s9sm16323720pfk.20.2017.10.02.00.35.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Oct 2017 00:35:05 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 1/3] evaluate: Remove unnecessary spaces
Date: Mon,  2 Oct 2017 13:02:48 +0530
Message-Id: <131c45f3b814d80f5339fb08d521261d087385fb.1506928244.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1506928244.git.harshasharmaiitr@gmail.com>
References: <cover.1506928244.git.harshasharmaiitr@gmail.com>
In-Reply-To: <cover.1506928244.git.harshasharmaiitr@gmail.com>
References: <cover.1506928244.git.harshasharmaiitr@gmail.com>

Code indent should use tabs wherever possible

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 src/evaluate.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/src/evaluate.c b/src/evaluate.c
index e767542..5624ca2 100644
--- a/src/evaluate.c
+++ b/src/evaluate.c
@@ -122,7 +122,7 @@ static int byteorder_conversion(struct eval_ctx *ctx, struct expr **expr,
 		return 0;
 	if (expr_basetype(*expr)->type != TYPE_INTEGER)
 		return expr_error(ctx->msgs, *expr,
-			 	  "Byteorder mismatch: expected %s, got %s",
+				  "Byteorder mismatch: expected %s, got %s",
 				  byteorder_names[byteorder],
 				  byteorder_names[(*expr)->byteorder]);
 
@@ -1321,7 +1321,7 @@ static int expr_evaluate_hash(struct eval_ctx *ctx, struct expr **exprp)
 		return -1;
 
 	/* expr_evaluate_primary() sets the context to what to the input
-         * expression to be hashed. Since this input is transformed to a 4 bytes
+	 * expression to be hashed. Since this input is transformed to a 4 bytes
 	 * integer, restore context to the datatype that results from hashing.
 	 */
 	__expr_set_context(&ctx->ectx, expr->dtype, expr->byteorder, expr->len,
@@ -1627,7 +1627,7 @@ static int expr_evaluate_relational(struct eval_ctx *ctx, struct expr **expr)
 		case EXPR_CONCAT:
 			return expr_binary_error(ctx->msgs, left, rel,
 					"Relational expression (%s) is undefined "
-				        "for %s expressions",
+					"for %s expressions",
 					expr_op_symbols[rel->op],
 					left->ops->name);
 		default:
@@ -1637,7 +1637,7 @@ static int expr_evaluate_relational(struct eval_ctx *ctx, struct expr **expr)
 		if (!expr_is_singleton(right))
 			return expr_binary_error(ctx->msgs, right, rel,
 					"Relational expression (%s) is undefined "
-				        "for %s expressions",
+					"for %s expressions",
 					expr_op_symbols[rel->op],
 					right->ops->name);
 
@@ -1659,7 +1659,7 @@ range:
 		case EXPR_CONCAT:
 			return expr_binary_error(ctx->msgs, left, rel,
 					"Relational expression (%s) is undefined"
-				        "for %s expressions",
+					"for %s expressions",
 					expr_op_symbols[rel->op],
 					left->ops->name);
 		default:
-- 
1.9.1



X-GM-THRID: 6399870143121326080
X-Received: by 10.99.102.68 with SMTP id a65mr18833936pgc.68.1490085893825;
        Tue, 21 Mar 2017 01:44:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls2163513ote.1.gmail; Tue, 21 Mar 2017
 01:44:53 -0700 (PDT)
X-Received: by 10.129.132.147 with SMTP id u141mr14521060ywf.129.1490085893433;
        Tue, 21 Mar 2017 01:44:53 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si3157832pfz.1.2017.03.21.01.44.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:44:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so16104310pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1UZ1TudxIXSw2QZK4lFDYCGu+zpWQWJho60vPyfAkgY=;
        b=l2uGaAdbxyMsW+WaS0XqKSziuCcgYMDXfJvbpQJCOAD09/hG+3FAXFiM1e6Nvt5dMm
         uA63YPij5Yx3BaCS4NgxzPNdEHSZRJPThI5zph+5Hx2f911MjWifYQkHIcuapeYDqKS7
         koZVVN8CDMZg2mGEa50B2CvGfh1FibIoZnCePmB2g/35n37wjt/W2oFNCWetifmYjLrs
         YA/tfg9NRLYqdChAAMfjQD8zsBHteCr3IAepIs1VqybPtQc0DJnFl73q70L4DItZ/fDh
         wtViVIYcxzlZuQ6LAlrGrKUC/M3pf+LI9pHpZ0A8eopWsodzSEPfjhJNqBzbADeClRQO
         STzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1UZ1TudxIXSw2QZK4lFDYCGu+zpWQWJho60vPyfAkgY=;
        b=JVdFE+GdDMLI4/62qDrUis02V1uS02SiOCfDqznium36e1zYkKiV5aT6KhbP5TnsfX
         kZuymVjq/PmiLv0tXI3EUttWRxqPnsPHpeabXAGix/oR0hh/vzPCY9UdTR4qbA0Wvy55
         9uD/a3i8Q0GXfJZbNiKr6+oMwauEPLcvBUXOn7thzHaY5KpieSHVJnhUfo2bG2VnzP4b
         jW9axGLqojGkmr/VLhqjH2fPvsvOE6fEA98DDvhOa7KhvnHkr/USoAEmdwUP7uPK6NXQ
         eOflPXSXYZxQ2QznG9JPZNOvSO2WVFKy2dselSmowkNmsfzNdGrlnFskkV9i/iZXzGK+
         m7Dw==
X-Gm-Message-State: AFeK/H39RFdxkvF7eWKZfdzZaIIHEdHQSaGqjfRZzeGT79pDhW3sZFEYQ6jOetyueIbS2w==
X-Received: by 10.98.34.86 with SMTP id i83mr39031085pfi.89.1490085893182;
        Tue, 21 Mar 2017 01:44:53 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n7sm2645285pfn.0.2017.03.21.01.44.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:44:52 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: pablo@netfilter.org
Cc: kadlec@blackhole.kfki.hu,
	davem@davemloft.net,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] netfilter: nf_tables_api: Clean up tests if NULL returned on failure
Date: Tue, 21 Mar 2017 14:14:37 +0530
Message-Id: <1490085879-1827-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com>
References: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com>

Some functions like kmalloc/kzalloc return NULL on failure. When NULL
represents failure, !x is commonly used.

This was done using Coccinelle:
@@
expression *e;
identifier l1;
@@
e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 --This is my contribution to the netfilter project of
   Outreachy Round 14.

 net/netfilter/nf_tables_api.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/net/netfilter/nf_tables_api.c b/net/netfilter/nf_tables_api.c
index 5e0ccfd..25a3951 100644
--- a/net/netfilter/nf_tables_api.c
+++ b/net/netfilter/nf_tables_api.c
@@ -117,7 +117,7 @@ static struct nft_trans *nft_trans_alloc_gfp(const struct nft_ctx *ctx,
 	struct nft_trans *trans;
 
 	trans = kzalloc(sizeof(struct nft_trans) + size, gfp);
-	if (trans == NULL)
+	if (!trans)
 		return NULL;
 
 	trans->msg_type = msg_type;
@@ -720,7 +720,7 @@ static int nf_tables_newtable(struct net *net, struct sock *nlsk,
 
 	err = -ENOMEM;
 	table = kzalloc(sizeof(*table), GFP_KERNEL);
-	if (table == NULL)
+	if (!table)
 		goto err2;
 
 	nla_strlcpy(table->name, name, NFT_TABLE_MAXNAMELEN);
@@ -1478,7 +1478,7 @@ static int nf_tables_newchain(struct net *net, struct sock *nlsk,
 			return err;
 
 		basechain = kzalloc(sizeof(*basechain), GFP_KERNEL);
-		if (basechain == NULL) {
+		if (!basechain) {
 			nft_chain_release_hook(&hook);
 			return -ENOMEM;
 		}
@@ -1526,7 +1526,7 @@ static int nf_tables_newchain(struct net *net, struct sock *nlsk,
 		basechain->policy = policy;
 	} else {
 		chain = kzalloc(sizeof(*chain), GFP_KERNEL);
-		if (chain == NULL)
+		if (!chain)
 			return -ENOMEM;
 	}
 
@@ -1800,7 +1800,7 @@ struct nft_expr *nft_expr_init(const struct nft_ctx *ctx,
 
 	err = -ENOMEM;
 	expr = kzalloc(info.ops->size, GFP_KERNEL);
-	if (expr == NULL)
+	if (!expr)
 		goto err2;
 
 	err = nf_tables_newexpr(ctx, &info, expr);
@@ -2214,7 +2214,7 @@ static int nf_tables_newrule(struct net *net, struct sock *nlsk,
 
 	err = -ENOMEM;
 	rule = kzalloc(sizeof(*rule) + size + usize, GFP_KERNEL);
-	if (rule == NULL)
+	if (!rule)
 		goto err1;
 
 	nft_activate_next(net, rule);
@@ -2810,7 +2810,7 @@ static int nf_tables_getset(struct net *net, struct sock *nlsk,
 		struct nft_ctx *ctx_dump;
 
 		ctx_dump = kmalloc(sizeof(*ctx_dump), GFP_KERNEL);
-		if (ctx_dump == NULL)
+		if (!ctx_dump)
 			return -ENOMEM;
 
 		*ctx_dump = ctx;
@@ -3014,7 +3014,7 @@ static int nf_tables_newset(struct net *net, struct sock *nlsk,
 
 	err = -ENOMEM;
 	set = kzalloc(sizeof(*set) + size + udlen, GFP_KERNEL);
-	if (set == NULL)
+	if (!set)
 		goto err1;
 
 	nla_strlcpy(name, nla[NFTA_SET_NAME], sizeof(set->name));
@@ -3543,7 +3543,7 @@ void *nft_set_elem_init(const struct nft_set *set,
 	void *elem;
 
 	elem = kzalloc(set->ops->elemsize + tmpl->len, gfp);
-	if (elem == NULL)
+	if (!elem)
 		return NULL;
 
 	ext = nft_set_elem_ext(set, elem);
@@ -3998,7 +3998,7 @@ struct nft_set_gc_batch *nft_set_gc_batch_alloc(const struct nft_set *set,
 	struct nft_set_gc_batch *gcb;
 
 	gcb = kzalloc(sizeof(*gcb), gfp);
-	if (gcb == NULL)
+	if (!gcb)
 		return gcb;
 	gcb->head.set = set;
 	return gcb;
@@ -4084,7 +4084,7 @@ static struct nft_object *nft_obj_init(const struct nft_object_type *type,
 
 	err = -ENOMEM;
 	obj = kzalloc(sizeof(struct nft_object) + type->size, GFP_KERNEL);
-	if (obj == NULL)
+	if (!obj)
 		goto err1;
 
 	err = type->init((const struct nlattr * const *)tb, obj);
@@ -5567,7 +5567,7 @@ static int __init nf_tables_module_init(void)
 
 	info = kmalloc(sizeof(struct nft_expr_info) * NFT_RULE_MAXEXPRS,
 		       GFP_KERNEL);
-	if (info == NULL) {
+	if (!info) {
 		err = -ENOMEM;
 		goto err1;
 	}
-- 
2.7.4



X-GM-THRID: 6399925601472348160
X-Received: by 10.13.215.203 with SMTP id z194mr18690163ywd.43.1490098804603;
        Tue, 21 Mar 2017 05:20:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.119 with SMTP id 110ls1551872otc.44.gmail; Tue, 21 Mar
 2017 05:20:04 -0700 (PDT)
X-Received: by 10.13.225.22 with SMTP id k22mr18003070ywe.51.1490098804141;
        Tue, 21 Mar 2017 05:20:04 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si3218576pfz.1.2017.03.21.05.20.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 05:20:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id p189so16181822pfp.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 05:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4bA1PSdQNVt0XX6mcCj60WEx8B9OmZzOOpnDnupuqW0=;
        b=EdeBJ3bh7DgXFbHf0xEjUoUnjBf8ssfcIYz63EmNpBmgBroEB9GO5V7esPEzjJC0C9
         z6BMblND79TlhZmebgSQpkp2iIxz08EVbZyi8B5uhoDAHlQxWJaYBdzitOP/XbhlV3v7
         tXHhbn79hdKT9xp/wTwbnKIuxK/ulZrsX3n2BwOXCKCla8IGB9+nXhWRGRxMtJePUdxm
         kL4DO/WwPd10vw3iD8r02LEdA2wQ4pO77BHIPKre5VUW2cF50EaNMR3L97mTYgrNY5vX
         TjXRP53mGIEGsWUxcp+NPdz8PeDlEtdt8zO4D0PVV54xfXWHTl/BumhvdZid51pHx7y0
         06KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4bA1PSdQNVt0XX6mcCj60WEx8B9OmZzOOpnDnupuqW0=;
        b=MIPYld73LYjQt9k66FSIeTE0WxHG3uXIGVyuMKiT2+9GXQT2AG0mz12gvimDD7EJ32
         5hCQyUDlHbnhwrP+zyrMPn2UC+fq7cBHKUW6WNLan0DLRXQYAOPDJVemvn7gRD5reBOF
         tJ4m50lqpNeENIFndU+0TWnVKy/TfD3c2yB/JKHcHtHlgHb+nDRzbdmQd72oh6mk+ddi
         i5KFgLE7wIv2BMOfMDPkFGVOcOBEU7diBEYOvJs8gBt+u5nJ9EPoKbVAkDNm3zDQejfR
         9PtjKzmD5BmFN9rF0GFHVsv8xcsuhvEh8iAuImtpkjx9J5BUeFUsi52d2AkymovRpVnO
         qqFA==
X-Gm-Message-State: AFeK/H0GhQaRUI/Hpa2DnmkE+9o+sOQKJKYvccmHjwxC3nP1S9fr30GO9aiDUdi4V4uRpA==
X-Received: by 10.84.141.1 with SMTP id 1mr47796251plu.178.1490098803877;
        Tue, 21 Mar 2017 05:20:03 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b70sm39394650pfc.100.2017.03.21.05.20.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 05:20:02 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: pablo@netfilter.org
Cc: kadlec@blackhole.kfki.hu,
	davem@davemloft.net,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Subject: [PATCH 2/2] netfilter: Remove unnecessary cast on void pointer
Date: Tue, 21 Mar 2017 17:49:54 +0530
Message-Id: <1490098794-22518-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490098794-22518-1-git-send-email-singhalsimran0@gmail.com>
References: <1490098794-22518-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|

- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 --This is my contribution to the netfilter project of
   Outreachy Round 14. 

 net/netfilter/nf_conntrack_proto.c |  2 +-
 net/netfilter/nft_set_hash.c       |  2 +-
 net/netfilter/xt_hashlimit.c       | 10 +++++-----
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/net/netfilter/nf_conntrack_proto.c b/net/netfilter/nf_conntrack_proto.c
index 48d8354..ec665c8 100644
--- a/net/netfilter/nf_conntrack_proto.c
+++ b/net/netfilter/nf_conntrack_proto.c
@@ -202,7 +202,7 @@ static int kill_l3proto(struct nf_conn *i, void *data)
 static int kill_l4proto(struct nf_conn *i, void *data)
 {
 	struct nf_conntrack_l4proto *l4proto;
-	l4proto = (struct nf_conntrack_l4proto *)data;
+	l4proto = data;
 	return nf_ct_protonum(i) == l4proto->l4proto &&
 	       nf_ct_l3num(i) == l4proto->l3proto;
 }
diff --git a/net/netfilter/nft_set_hash.c b/net/netfilter/nft_set_hash.c
index 5f65272..8ec086b 100644
--- a/net/netfilter/nft_set_hash.c
+++ b/net/netfilter/nft_set_hash.c
@@ -352,7 +352,7 @@ static int nft_hash_init(const struct nft_set *set,
 
 static void nft_hash_elem_destroy(void *ptr, void *arg)
 {
-	nft_set_elem_destroy((const struct nft_set *)arg, ptr, true);
+	nft_set_elem_destroy(arg, ptr, true);
 }
 
 static void nft_hash_destroy(const struct nft_set *set)
diff --git a/net/netfilter/xt_hashlimit.c b/net/netfilter/xt_hashlimit.c
index 2a6dfe8..762e187 100644
--- a/net/netfilter/xt_hashlimit.c
+++ b/net/netfilter/xt_hashlimit.c
@@ -119,7 +119,7 @@ static int
 cfg_copy(struct hashlimit_cfg2 *to, void *from, int revision)
 {
 	if (revision == 1) {
-		struct hashlimit_cfg1 *cfg = (struct hashlimit_cfg1 *)from;
+		struct hashlimit_cfg1 *cfg = from;
 
 		to->mode = cfg->mode;
 		to->avg = cfg->avg;
@@ -895,7 +895,7 @@ static void *dl_seq_start(struct seq_file *s, loff_t *pos)
 static void *dl_seq_next(struct seq_file *s, void *v, loff_t *pos)
 {
 	struct xt_hashlimit_htable *htable = s->private;
-	unsigned int *bucket = (unsigned int *)v;
+	unsigned int *bucket = v;
 
 	*pos = ++(*bucket);
 	if (*pos >= htable->cfg.size) {
@@ -909,7 +909,7 @@ static void dl_seq_stop(struct seq_file *s, void *v)
 	__releases(htable->lock)
 {
 	struct xt_hashlimit_htable *htable = s->private;
-	unsigned int *bucket = (unsigned int *)v;
+	unsigned int *bucket = v;
 
 	if (!IS_ERR(bucket))
 		kfree(bucket);
@@ -980,7 +980,7 @@ static int dl_seq_real_show(struct dsthash_ent *ent, u_int8_t family,
 static int dl_seq_show_v1(struct seq_file *s, void *v)
 {
 	struct xt_hashlimit_htable *htable = s->private;
-	unsigned int *bucket = (unsigned int *)v;
+	unsigned int *bucket = v;
 	struct dsthash_ent *ent;
 
 	if (!hlist_empty(&htable->hash[*bucket])) {
@@ -994,7 +994,7 @@ static int dl_seq_show_v1(struct seq_file *s, void *v)
 static int dl_seq_show(struct seq_file *s, void *v)
 {
 	struct xt_hashlimit_htable *htable = s->private;
-	unsigned int *bucket = (unsigned int *)v;
+	unsigned int *bucket = v;
 	struct dsthash_ent *ent;
 
 	if (!hlist_empty(&htable->hash[*bucket])) {
-- 
2.7.4



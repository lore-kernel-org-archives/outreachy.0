X-GM-THRID: 6392026082663464960
X-Received: by 10.99.143.91 with SMTP id r27mr845846pgn.132.1489576852890;
        Wed, 15 Mar 2017 04:20:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.23 with SMTP id 23ls639662ioh.50.gmail; Wed, 15 Mar 2017
 04:20:52 -0700 (PDT)
X-Received: by 10.99.100.129 with SMTP id y123mr1442911pgb.101.1489576852057;
        Wed, 15 Mar 2017 04:20:52 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id u12si284325pfd.3.2017.03.15.04.20.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 04:20:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id l66so570044pfl.3
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 04:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=fRi4877Jpor1H4U8G4QZZoDWrWJb6PVa8pfn7UAbi1c=;
        b=CyMYhJTF6dujGlXqIjmgR8Yln9/+DsunbNO198XGb6PRf73ekA9WqiyC9bR8qX9ZPh
         rjFPR0KavfK8h8UkGeUGyHzTQoI/9fJFUDI/uJDt1sB+QK6FuI3a9LEJO8RMfadAScom
         JAtRzjYtr9WPv9I41Ht680JRjnd5h1iOcgnOUtq53pkb8tvgbvKpCquZJKf+WJPMXps6
         Rr9lgTKUCSa96C7v4xs6Hgmtg7MwUDuKnxVsJ79+TOgnSsVKAhp7dUm8PMHl0h3UxVPn
         eqA8d5VmNXeNOYRe5brkFfAAAH6/y5QSuLGDk8nfH8B456lqyVpi7SV4rReaCYMEc2+N
         M1Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=fRi4877Jpor1H4U8G4QZZoDWrWJb6PVa8pfn7UAbi1c=;
        b=YcellcEkX5sr3aXM7mqnIhSc7WqjNqSyVuNFWNhFh/YXw3WKEORF7reQoldQXzGjHR
         AKnzpG+aELfiKrrFqHippCNelXyS9gIfax+HfN97CVeVSvb0NJt5rKCB2dHQYomwC5ln
         Vu3/zC9hE8csJu1o/EXMGIx3i2llrAH9CN3x/BtHlCwKbyd5d0UyFd/DFbAcdRR3BHiI
         9j8rrO9JfU3llhMgZHEcaPG7fa3wde1vyc9EHRQgBtkL//G9cQvlSrQoPGNgMHGlVJZx
         BwmOIG+IYG/f+QrCoPgZBoXa+vEopSitID5Jq9wghAHWH1WlZt1FR6ebXJpSc1YJmsdT
         uKzQ==
X-Gm-Message-State: AFeK/H1BGxks9mpSIctbfqBfbmHknXm2j5covxzGeMC4BPwsOb+eniosbwDKgKLDFz1DsQ==
X-Received: by 10.99.66.197 with SMTP id p188mr3053037pga.107.1489576851714;
        Wed, 15 Mar 2017 04:20:51 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id r12sm3822820pgn.26.2017.03.15.04.20.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 04:20:51 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 2/6] staging: lustre: Replace typedef lnet_remotenet_t with struct
Date: Wed, 15 Mar 2017 16:50:51 +0530
Message-Id: <c536b9475b57555df9e30b8dec8f6ab889b8acf2.1489576506.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>

Using typedef for a structure type is not suggested in Linux kernel
coding style guidelines. Hence, occurences of typedefs have been
removed in the lib-types.h file. The typedef is detected using Script
1 and the changes are done manually. Script 2 replaces all the
instances of lnet_remotenet_t with struct lnet_remotenet.

Script 1:
@r1@
type T;
@@

* typedef struct { ... } T;

Script 2:
@@
typedef lnet_remotenet_t;
@@
(
- lnet_remotenet_t
+ struct lnet_remotenet
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 .../staging/lustre/include/linux/lnet/lib-lnet.h   |  2 +-
 .../staging/lustre/include/linux/lnet/lib-types.h  |  4 ++--
 drivers/staging/lustre/lnet/lnet/api-ni.c          |  2 +-
 drivers/staging/lustre/lnet/lnet/lib-move.c        |  6 +++---
 drivers/staging/lustre/lnet/lnet/router.c          | 24 +++++++++++-----------
 drivers/staging/lustre/lnet/lnet/router_proc.c     |  4 ++--
 6 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/lnet/lib-lnet.h b/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
index 3d19402..9dc5c41 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
@@ -473,7 +473,7 @@ int lnet_rtrpools_adjust(int tiny, int small, int large);
 int lnet_rtrpools_enable(void);
 void lnet_rtrpools_disable(void);
 void lnet_rtrpools_free(int keep_pools);
-lnet_remotenet_t *lnet_find_net_locked(__u32 net);
+struct lnet_remotenet *lnet_find_net_locked(__u32 net);
 int lnet_dyn_add_ni(lnet_pid_t requested_pid,
 		    struct lnet_ioctl_config_data *conf);
 int lnet_dyn_del_ni(__u32 net);
diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
index b9f4c20..4f131c0 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-types.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-types.h
@@ -383,12 +383,12 @@ typedef struct {
 #define LNET_REMOTE_NETS_HASH_MAX	(1U << 16)
 #define LNET_REMOTE_NETS_HASH_SIZE	(1 << the_lnet.ln_remote_nets_hbits)
 
-typedef struct {
+struct lnet_remotenet {
 	struct list_head	lrn_list;	/* chain on
 						   ln_remote_nets_hash */
 	struct list_head	lrn_routes;	/* routes to me */
 	__u32			lrn_net;	/* my net number */
-} lnet_remotenet_t;
+};
 
 /** lnet message has credit and can be submitted to lnd for send/receive */
 #define LNET_CREDIT_OK		0
diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
index 08b38ef..40a5d28 100644
--- a/drivers/staging/lustre/lnet/lnet/api-ni.c
+++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
@@ -1758,7 +1758,7 @@ lnet_dyn_add_ni(lnet_pid_t requested_pid, struct lnet_ioctl_config_data *conf)
 	lnet_handle_md_t md_handle;
 	struct lnet_ni *ni;
 	struct list_head net_head;
-	lnet_remotenet_t *rnet;
+	struct lnet_remotenet *rnet;
 	int rc;
 
 	INIT_LIST_HEAD(&net_head);
diff --git a/drivers/staging/lustre/lnet/lnet/lib-move.c b/drivers/staging/lustre/lnet/lnet/lib-move.c
index 6b0be6c..b6f9e70 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-move.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
@@ -996,7 +996,7 @@ lnet_compare_routes(lnet_route_t *r1, lnet_route_t *r2)
 static lnet_peer_t *
 lnet_find_route_locked(lnet_ni_t *ni, lnet_nid_t target, lnet_nid_t rtr_nid)
 {
-	lnet_remotenet_t *rnet;
+	struct lnet_remotenet *rnet;
 	lnet_route_t *route;
 	lnet_route_t *best_route;
 	lnet_route_t *last_route;
@@ -2288,7 +2288,7 @@ LNetDist(lnet_nid_t dstnid, lnet_nid_t *srcnidp, __u32 *orderp)
 {
 	struct list_head *e;
 	struct lnet_ni *ni;
-	lnet_remotenet_t *rnet;
+	struct lnet_remotenet *rnet;
 	__u32 dstnet = LNET_NIDNET(dstnid);
 	int hops;
 	int cpt;
@@ -2345,7 +2345,7 @@ LNetDist(lnet_nid_t dstnid, lnet_nid_t *srcnidp, __u32 *orderp)
 
 	rn_list = lnet_net2rnethash(dstnet);
 	list_for_each(e, rn_list) {
-		rnet = list_entry(e, lnet_remotenet_t, lrn_list);
+		rnet = list_entry(e, struct lnet_remotenet, lrn_list);
 
 		if (rnet->lrn_net == dstnet) {
 			lnet_route_t *route;
diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index 6acd676..843927f 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -217,10 +217,10 @@ lnet_rtr_decref_locked(lnet_peer_t *lp)
 	}
 }
 
-lnet_remotenet_t *
+struct lnet_remotenet *
 lnet_find_net_locked(__u32 net)
 {
-	lnet_remotenet_t *rnet;
+	struct lnet_remotenet *rnet;
 	struct list_head *tmp;
 	struct list_head *rn_list;
 
@@ -228,7 +228,7 @@ lnet_find_net_locked(__u32 net)
 
 	rn_list = lnet_net2rnethash(net);
 	list_for_each(tmp, rn_list) {
-		rnet = list_entry(tmp, lnet_remotenet_t, lrn_list);
+		rnet = list_entry(tmp, struct lnet_remotenet, lrn_list);
 
 		if (rnet->lrn_net == net)
 			return rnet;
@@ -268,7 +268,7 @@ static void lnet_shuffle_seed(void)
 
 /* NB expects LNET_LOCK held */
 static void
-lnet_add_route_to_rnet(lnet_remotenet_t *rnet, lnet_route_t *route)
+lnet_add_route_to_rnet(struct lnet_remotenet *rnet, lnet_route_t *route)
 {
 	unsigned int len = 0;
 	unsigned int offset = 0;
@@ -299,8 +299,8 @@ lnet_add_route(__u32 net, __u32 hops, lnet_nid_t gateway,
 	       unsigned int priority)
 {
 	struct list_head *e;
-	lnet_remotenet_t *rnet;
-	lnet_remotenet_t *rnet2;
+	struct lnet_remotenet *rnet;
+	struct lnet_remotenet *rnet2;
 	lnet_route_t *route;
 	lnet_ni_t *ni;
 	int add_route;
@@ -415,7 +415,7 @@ lnet_add_route(__u32 net, __u32 hops, lnet_nid_t gateway,
 int
 lnet_check_routes(void)
 {
-	lnet_remotenet_t *rnet;
+	struct lnet_remotenet *rnet;
 	lnet_route_t *route;
 	lnet_route_t *route2;
 	struct list_head *e1;
@@ -429,7 +429,7 @@ lnet_check_routes(void)
 	for (i = 0; i < LNET_REMOTE_NETS_HASH_SIZE; i++) {
 		rn_list = &the_lnet.ln_remote_nets_hash[i];
 		list_for_each(e1, rn_list) {
-			rnet = list_entry(e1, lnet_remotenet_t, lrn_list);
+			rnet = list_entry(e1, struct lnet_remotenet, lrn_list);
 
 			route2 = NULL;
 			list_for_each(e2, &rnet->lrn_routes) {
@@ -471,7 +471,7 @@ int
 lnet_del_route(__u32 net, lnet_nid_t gw_nid)
 {
 	struct lnet_peer *gateway;
-	lnet_remotenet_t *rnet;
+	struct lnet_remotenet *rnet;
 	lnet_route_t *route;
 	struct list_head *e1;
 	struct list_head *e2;
@@ -494,7 +494,7 @@ lnet_del_route(__u32 net, lnet_nid_t gw_nid)
 
  again:
 	list_for_each(e1, rn_list) {
-		rnet = list_entry(e1, lnet_remotenet_t, lrn_list);
+		rnet = list_entry(e1, struct lnet_remotenet, lrn_list);
 
 		if (!(net == LNET_NIDNET(LNET_NID_ANY) ||
 		      net == rnet->lrn_net))
@@ -587,7 +587,7 @@ lnet_get_route(int idx, __u32 *net, __u32 *hops,
 {
 	struct list_head *e1;
 	struct list_head *e2;
-	lnet_remotenet_t *rnet;
+	struct lnet_remotenet *rnet;
 	lnet_route_t *route;
 	int cpt;
 	int i;
@@ -598,7 +598,7 @@ lnet_get_route(int idx, __u32 *net, __u32 *hops,
 	for (i = 0; i < LNET_REMOTE_NETS_HASH_SIZE; i++) {
 		rn_list = &the_lnet.ln_remote_nets_hash[i];
 		list_for_each(e1, rn_list) {
-			rnet = list_entry(e1, lnet_remotenet_t, lrn_list);
+			rnet = list_entry(e1, struct lnet_remotenet, lrn_list);
 
 			list_for_each(e2, &rnet->lrn_routes) {
 				route = list_entry(e2, lnet_route_t, lr_list);
diff --git a/drivers/staging/lustre/lnet/lnet/router_proc.c b/drivers/staging/lustre/lnet/lnet/router_proc.c
index a19e140..d706563 100644
--- a/drivers/staging/lustre/lnet/lnet/router_proc.c
+++ b/drivers/staging/lustre/lnet/lnet/router_proc.c
@@ -172,7 +172,7 @@ static int proc_lnet_routes(struct ctl_table *table, int write,
 		struct list_head *n;
 		struct list_head *r;
 		lnet_route_t *route = NULL;
-		lnet_remotenet_t *rnet  = NULL;
+		struct lnet_remotenet *rnet  = NULL;
 		int skip  = off - 1;
 		struct list_head *rn_list;
 		int i;
@@ -191,7 +191,7 @@ static int proc_lnet_routes(struct ctl_table *table, int write,
 			n = rn_list->next;
 
 			while (n != rn_list && !route) {
-				rnet = list_entry(n, lnet_remotenet_t,
+				rnet = list_entry(n, struct lnet_remotenet,
 						  lrn_list);
 
 				r = rnet->lrn_routes.next;
-- 
2.7.4



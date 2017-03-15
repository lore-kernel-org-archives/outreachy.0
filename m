X-GM-THRID: 6392026082663464960
X-Received: by 10.99.158.9 with SMTP id s9mr1433078pgd.128.1489576855790;
        Wed, 15 Mar 2017 04:20:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls1863947otd.20.gmail; Wed, 15 Mar
 2017 04:20:55 -0700 (PDT)
X-Received: by 10.13.247.4 with SMTP id h4mr1521884ywf.4.1489576855334;
        Wed, 15 Mar 2017 04:20:55 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si283555pfb.2.2017.03.15.04.20.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 04:20:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id m5so1969448pgk.3
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 04:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=4TooMTjEgjcV9LAGrHLdTFsIPNs998m+PnRLYPSJBjs=;
        b=qT/ieW7MX/Zbrc7TP9sm17TtCE97XgAUhSoLUmyftxWCyNZN4nHud1rX9R+MgMud/T
         tsDP0TL3MYRDQZe54gb4oW+Z6QlROurs/bu00QWexIlk9E+XAsloqB84YPs+gmUhIppp
         SU4a6kzRGKyJRkZX7ZsMHzr++Mgg9TBInF80w486F8X2hWWjgYmpKynA9/yQrINl8SyE
         9U9cyyxkLsvbfMVr4pE2m/k0sdXdfXxC3I/3xS74efVHjrOECp7HqnSmZXIq5D/Qomrj
         gEIHQUCNutoWGSzlDj3aQoplDQwRZxYmoB4hpmpxpAScTyXdfEcYqNXC/tGvuh3R1dJf
         F84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=4TooMTjEgjcV9LAGrHLdTFsIPNs998m+PnRLYPSJBjs=;
        b=jHzwCaeceZVs+oj6xpE6htchaLKD7tZ0tkqgr7bBqa4JRI43HCwou0gMoJUF3eor7H
         XJ83RInE3uFPvvQ6iNPuX6/+nHrqN05sa57z7OLejeiO4V12LVX/+vi2f/NYeCRJ8V4n
         bEDbaGULrvCmN+UcWzUJNrlOK8z3H/sg6Jm9WRCiU9sEmb9bvvmuj1tw3hgLBlCzWcSa
         CCUq9CR4sGqPGFoaaSedGTeNixZFiT16bLn/ZkGIGvVz2qU+1irp+/37Yp1mnB8KDkHy
         PmmtHoLHPfsOOEaIZdUBnw3gCqGuRhyYws7GJ23bmRsw5YXtaqB47d8qu3AAWsn3aNV0
         SmDQ==
X-Gm-Message-State: AFeK/H3z7aCx0HClKCGB4frXh5rDhcNvLeg4UxtWfQjsbQKynNmoSzeTOW8c1PAeo2hH2w==
X-Received: by 10.99.24.88 with SMTP id 24mr3137170pgy.54.1489576854811;
        Wed, 15 Mar 2017 04:20:54 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id r12sm3822820pgn.26.2017.03.15.04.20.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 04:20:54 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 3/6] staging: lustre: Replace typedef lnet_route_t with struct
Date: Wed, 15 Mar 2017 16:50:52 +0530
Message-Id: <c092546e8b56c0c61b66632ed254aac72ef61479.1489576506.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>

Using typedef for a structure type is not suggested in Linux kernel
coding style guidelines. Hence, occurences of typedefs have been
removed in the lib-types.h file. Script 1 was used to identify
typedef and changes were done manually. Script 2 was used to convert
all instances of typedef lnet_route_t to struct lnet_route.

Script 1:
@r1@
type T;
@@

* typedef struct { ... } T;

Script 2:
@@
typedef lnet_route_t;
@@
(
- lnet_route_t
+ struct lnet_route
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 .../staging/lustre/include/linux/lnet/lib-lnet.h   |  2 +-
 .../staging/lustre/include/linux/lnet/lib-types.h  |  6 ++---
 drivers/staging/lustre/lnet/lnet/lib-move.c        | 12 +++++-----
 drivers/staging/lustre/lnet/lnet/router.c          | 27 ++++++++++++----------
 drivers/staging/lustre/lnet/lnet/router_proc.c     |  9 ++++----
 5 files changed, 30 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/lnet/lib-lnet.h b/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
index 9dc5c41..b1dd9b6 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
@@ -65,7 +65,7 @@ extern lnet_t	the_lnet;	/* THE network */
 /** exclusive lock */
 #define LNET_LOCK_EX		CFS_PERCPT_LOCK_EX
 
-static inline int lnet_is_route_alive(lnet_route_t *route)
+static inline int lnet_is_route_alive(struct lnet_route *route)
 {
 	/* gateway is down */
 	if (!route->lr_gateway->lp_alive)
diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
index 4f131c0..c469778 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-types.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-types.h
@@ -339,7 +339,7 @@ typedef struct lnet_peer {
 	lnet_nid_t		 lp_nid;	/* peer's NID */
 	int			 lp_refcount;	/* # refs */
 	int			 lp_cpt;	/* CPT this peer attached on */
-	/* # refs from lnet_route_t::lr_gateway */
+	/* # refs from struct lnet_route::lr_gateway */
 	int			 lp_rtr_refcount;
 	/* returned RC ping features */
 	unsigned int		 lp_ping_feats;
@@ -368,7 +368,7 @@ struct lnet_peer_table {
 #define lnet_peer_aliveness_enabled(lp) (the_lnet.ln_routing && \
 					 (lp)->lp_ni->ni_peertimeout > 0)
 
-typedef struct {
+struct lnet_route {
 	struct list_head	 lr_list;	/* chain on net */
 	struct list_head	 lr_gwlist;	/* chain on gateway */
 	lnet_peer_t		*lr_gateway;	/* router node */
@@ -377,7 +377,7 @@ typedef struct {
 	unsigned int		 lr_downis;	/* number of down NIs */
 	__u32			 lr_hops;	/* how far I am */
 	unsigned int             lr_priority;	/* route priority */
-} lnet_route_t;
+};
 
 #define LNET_REMOTE_NETS_HASH_DEFAULT	(1U << 7)
 #define LNET_REMOTE_NETS_HASH_MAX	(1U << 16)
diff --git a/drivers/staging/lustre/lnet/lnet/lib-move.c b/drivers/staging/lustre/lnet/lnet/lib-move.c
index b6f9e70..4c613414 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-move.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
@@ -956,7 +956,7 @@ lnet_return_rx_credits_locked(lnet_msg_t *msg)
 }
 
 static int
-lnet_compare_routes(lnet_route_t *r1, lnet_route_t *r2)
+lnet_compare_routes(struct lnet_route *r1, struct lnet_route *r2)
 {
 	lnet_peer_t *p1 = r1->lr_gateway;
 	lnet_peer_t *p2 = r2->lr_gateway;
@@ -997,9 +997,9 @@ static lnet_peer_t *
 lnet_find_route_locked(lnet_ni_t *ni, lnet_nid_t target, lnet_nid_t rtr_nid)
 {
 	struct lnet_remotenet *rnet;
-	lnet_route_t *route;
-	lnet_route_t *best_route;
-	lnet_route_t *last_route;
+	struct lnet_route *route;
+	struct lnet_route *best_route;
+	struct lnet_route *last_route;
 	struct lnet_peer *lp_best;
 	struct lnet_peer *lp;
 	int rc;
@@ -2348,8 +2348,8 @@ LNetDist(lnet_nid_t dstnid, lnet_nid_t *srcnidp, __u32 *orderp)
 		rnet = list_entry(e, struct lnet_remotenet, lrn_list);
 
 		if (rnet->lrn_net == dstnet) {
-			lnet_route_t *route;
-			lnet_route_t *shortest = NULL;
+			struct lnet_route *route;
+			struct lnet_route *shortest = NULL;
 			__u32 shortest_hops = LNET_UNDEFINED_HOPS;
 			__u32 route_hops;
 
diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index 843927f..b753127 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -268,7 +268,7 @@ static void lnet_shuffle_seed(void)
 
 /* NB expects LNET_LOCK held */
 static void
-lnet_add_route_to_rnet(struct lnet_remotenet *rnet, lnet_route_t *route)
+lnet_add_route_to_rnet(struct lnet_remotenet *rnet, struct lnet_route *route)
 {
 	unsigned int len = 0;
 	unsigned int offset = 0;
@@ -301,7 +301,7 @@ lnet_add_route(__u32 net, __u32 hops, lnet_nid_t gateway,
 	struct list_head *e;
 	struct lnet_remotenet *rnet;
 	struct lnet_remotenet *rnet2;
-	lnet_route_t *route;
+	struct lnet_route *route;
 	lnet_ni_t *ni;
 	int add_route;
 	int rc;
@@ -368,7 +368,8 @@ lnet_add_route(__u32 net, __u32 hops, lnet_nid_t gateway,
 	/* Search for a duplicate route (it's a NOOP if it is) */
 	add_route = 1;
 	list_for_each(e, &rnet2->lrn_routes) {
-		lnet_route_t *route2 = list_entry(e, lnet_route_t, lr_list);
+		struct lnet_route *route2 = list_entry(e, struct lnet_route,
+						       lr_list);
 
 		if (route2->lr_gateway == route->lr_gateway) {
 			add_route = 0;
@@ -416,8 +417,8 @@ int
 lnet_check_routes(void)
 {
 	struct lnet_remotenet *rnet;
-	lnet_route_t *route;
-	lnet_route_t *route2;
+	struct lnet_route *route;
+	struct lnet_route *route2;
 	struct list_head *e1;
 	struct list_head *e2;
 	int cpt;
@@ -437,7 +438,8 @@ lnet_check_routes(void)
 				lnet_nid_t nid2;
 				int net;
 
-				route = list_entry(e2, lnet_route_t, lr_list);
+				route = list_entry(e2, struct lnet_route,
+						   lr_list);
 
 				if (!route2) {
 					route2 = route;
@@ -472,7 +474,7 @@ lnet_del_route(__u32 net, lnet_nid_t gw_nid)
 {
 	struct lnet_peer *gateway;
 	struct lnet_remotenet *rnet;
-	lnet_route_t *route;
+	struct lnet_route *route;
 	struct list_head *e1;
 	struct list_head *e2;
 	int rc = -ENOENT;
@@ -501,7 +503,7 @@ lnet_del_route(__u32 net, lnet_nid_t gw_nid)
 			continue;
 
 		list_for_each(e2, &rnet->lrn_routes) {
-			route = list_entry(e2, lnet_route_t, lr_list);
+			route = list_entry(e2, struct lnet_route, lr_list);
 
 			gateway = route->lr_gateway;
 			if (!(gw_nid == LNET_NID_ANY ||
@@ -588,7 +590,7 @@ lnet_get_route(int idx, __u32 *net, __u32 *hops,
 	struct list_head *e1;
 	struct list_head *e2;
 	struct lnet_remotenet *rnet;
-	lnet_route_t *route;
+	struct lnet_route *route;
 	int cpt;
 	int i;
 	struct list_head *rn_list;
@@ -601,7 +603,8 @@ lnet_get_route(int idx, __u32 *net, __u32 *hops,
 			rnet = list_entry(e1, struct lnet_remotenet, lrn_list);
 
 			list_for_each(e2, &rnet->lrn_routes) {
-				route = list_entry(e2, lnet_route_t, lr_list);
+				route = list_entry(e2, struct lnet_route,
+						   lr_list);
 
 				if (!idx--) {
 					*net      = rnet->lrn_net;
@@ -646,7 +649,7 @@ lnet_parse_rc_info(struct lnet_rc_data *rcd)
 {
 	struct lnet_ping_info *info = rcd->rcd_pinginfo;
 	struct lnet_peer *gw = rcd->rcd_gateway;
-	lnet_route_t *rte;
+	struct lnet_route *rte;
 
 	if (!gw->lp_alive)
 		return;
@@ -823,7 +826,7 @@ lnet_wait_known_routerstate(void)
 void
 lnet_router_ni_update_locked(lnet_peer_t *gw, __u32 net)
 {
-	lnet_route_t *rte;
+	struct lnet_route *rte;
 
 	if ((gw->lp_ping_feats & LNET_PING_FEAT_NI_STATUS)) {
 		list_for_each_entry(rte, &gw->lp_routes, lr_gwlist) {
diff --git a/drivers/staging/lustre/lnet/lnet/router_proc.c b/drivers/staging/lustre/lnet/lnet/router_proc.c
index d706563..1172617 100644
--- a/drivers/staging/lustre/lnet/lnet/router_proc.c
+++ b/drivers/staging/lustre/lnet/lnet/router_proc.c
@@ -171,7 +171,7 @@ static int proc_lnet_routes(struct ctl_table *table, int write,
 	} else {
 		struct list_head *n;
 		struct list_head *r;
-		lnet_route_t *route = NULL;
+		struct lnet_route *route = NULL;
 		struct lnet_remotenet *rnet  = NULL;
 		int skip  = off - 1;
 		struct list_head *rn_list;
@@ -197,8 +197,9 @@ static int proc_lnet_routes(struct ctl_table *table, int write,
 				r = rnet->lrn_routes.next;
 
 				while (r != &rnet->lrn_routes) {
-					lnet_route_t *re =
-						list_entry(r, lnet_route_t,
+					struct lnet_route *re =
+						list_entry(r,
+							   struct lnet_route,
 							   lr_list);
 					if (!skip) {
 						route = re;
@@ -331,7 +332,7 @@ static int proc_lnet_routers(struct ctl_table *table, int write,
 			int last_ping = cfs_duration_sec(cfs_time_sub(now,
 						     peer->lp_ping_timestamp));
 			int down_ni = 0;
-			lnet_route_t *rtr;
+			struct lnet_route *rtr;
 
 			if ((peer->lp_ping_feats &
 			     LNET_PING_FEAT_NI_STATUS)) {
-- 
2.7.4



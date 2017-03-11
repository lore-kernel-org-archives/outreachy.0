X-GM-THRID: 6392026082663464960
X-Received: by 10.99.103.71 with SMTP id b68mr11898652pgc.28.1489247550216;
        Sat, 11 Mar 2017 07:52:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.99 with SMTP id i96ls3311349iod.45.gmail; Sat, 11 Mar
 2017 07:52:29 -0800 (PST)
X-Received: by 10.99.44.131 with SMTP id s125mr11814046pgs.150.1489247549365;
        Sat, 11 Mar 2017 07:52:29 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id g82si2281843pfb.5.2017.03.11.07.52.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 07:52:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so14096539pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 07:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=EERr7l31g2BkQhJh/PGsCrdc/WWHK2JomceUmm/Xgs0=;
        b=XC59UQRDwysqcv4mtddFYn1ELAT+aqgw4Hqp0bDn8CGGuqmUXC2AUK8+B5Bbh2y7c8
         xUXF2kxbcoSMDWEjxlBfCzVAixDud8EKYbRpRMS/3+4MfOPONu1sAf1dHpjxSMdOdyts
         T+NzFNHDiDm3jaBxp2J34glb30gKLHuTho053r9mtkNvXgY+NlK8bduhJ3zyaDVhGyuU
         VrjQvq8io6OtOAzufhQbsrpHmmK3rBbC2Fl1PxW/NvYr+Q66fEm4KUJR/idPs5KKLi8i
         jIvbpbHMG4ni92AiuYqU2VHXHShvhKwEVqBCW71nGGJS1xKkkmXvYL0gmh8Bc6zFWl3p
         L/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EERr7l31g2BkQhJh/PGsCrdc/WWHK2JomceUmm/Xgs0=;
        b=JLbXGrd+Am70tmDfqjRx7gkVSYgE7Lc9z7HHllVr8/WUlMOOwOb0P5MjJlsxjBHcNI
         FINlyNPb/WGKXWYyrv1Ye/VrXGM38d+9Ckx/xaUUbn26gTEa4eBX9JgHMulFO2beobif
         niuZYD3nT1NBzdfqPtFXCR11TWD1I/+3sIL9cGOTBiLRTnpIexUeb9nvuSu4621kQ+2L
         HTE0rAkQIYY1xYaQdvKKruII3ewHokpmH9uoZbbzxHIkppEvLifWcyAL3FCLVKARRHz2
         sd6dCguVRju+q1oxgYwvPz2g5i9SEczD2lXGh8zyXnvfAYlcqxbtfnjcw0gGupQ6KbZG
         jxcg==
X-Gm-Message-State: AMke39nx7gHVhSTSSzkxDydVc6qe0AxE7wU+C7rOf6AipcLFWGUsUEb2B1PsThLSzU4Vpg==
X-Received: by 10.84.233.194 with SMTP id m2mr34585292pln.126.1489247548715;
        Sat, 11 Mar 2017 07:52:28 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id q90sm24860494pfk.73.2017.03.11.07.52.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 07:52:28 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: lustre: Replace typedef with struct
Date: Sat, 11 Mar 2017 21:19:53 +0530
Message-Id: <1489247393-26670-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Using typedef for a structure type is not suggested in Linux kernel
coding style guidelines. Hence, occurences of typedefs have been
removed in the lib-types.h file. Grep was also used to ensure that
all occurence of the typedefs have been removed. The module compiles
without any warnings or errors.

Script 1:
@r1@
type T;
@@

typedef struct { ... } T;

@script:python c1@
T2;
T << r1.T;
@@
if T[-2:] =="_t":
  coccinelle.T2 = T[:-2];
  print T
else:
  coccinelle.T2=T;

@r2@
type r1.T;
identifier c1.T2;
@@
-typedef
struct
+ T2
{ ... }
-T
;

@r3@
type r1.T;
identifier c1.T2;
@@
- T
+ struct T2

Script 2:
@@
typedef lnet_rc_data_t;
typedef lnet_remotenet_t;
typedef lnet_route_t;
typedef lnet_rtrbuf_t;
typedef lnet_rtrbufpool_t;
typedef lnet_test_peer_t;
@@
(
- lnet_rc_data_t
+ struct lnet_rc_data
|
- lnet_remotenet_t
+ struct lnet_remotenet
|
- lnet_route_t
+ struct lnet_route
|
- lnet_rtrbuf_t
+ struct lnet_rtrbuf
|
- lnet_rtrbufpool_t
+ struct lnet_rtrbufpool
|
- lnet_test_peer_t
+ struct lnet_test_peer
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 .../staging/lustre/include/linux/lnet/lib-lnet.h   |   8 +-
 .../staging/lustre/include/linux/lnet/lib-types.h  |  32 +++----
 drivers/staging/lustre/lnet/lnet/api-ni.c          |   2 +-
 drivers/staging/lustre/lnet/lnet/lib-move.c        |  48 +++++-----
 drivers/staging/lustre/lnet/lnet/router.c          | 103 +++++++++++----------
 drivers/staging/lustre/lnet/lnet/router_proc.c     |  15 +--
 6 files changed, 106 insertions(+), 102 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/lnet/lib-lnet.h b/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
index 3d19402..00ad879 100644
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
@@ -468,12 +468,12 @@ int lnet_get_rtr_pool_cfg(int idx, struct lnet_ioctl_pool_cfg *pool_cfg);
 void lnet_router_debugfs_init(void);
 void lnet_router_debugfs_fini(void);
 int  lnet_rtrpools_alloc(int im_a_router);
-void lnet_destroy_rtrbuf(lnet_rtrbuf_t *rb, int npages);
+void lnet_destroy_rtrbuf(struct lnet_rtrbuf *rb, int npages);
 int lnet_rtrpools_adjust(int tiny, int small, int large);
 int lnet_rtrpools_enable(void);
 void lnet_rtrpools_disable(void);
 void lnet_rtrpools_free(int keep_pools);
-lnet_remotenet_t *lnet_find_net_locked(__u32 net);
+struct lnet_remotenet *lnet_find_net_locked(__u32 net);
 int lnet_dyn_add_ni(lnet_pid_t requested_pid,
 		    struct lnet_ioctl_config_data *conf);
 int lnet_dyn_del_ni(__u32 net);
@@ -496,7 +496,7 @@ void lnet_prep_send(lnet_msg_t *msg, int type, lnet_process_id_t target,
 int lnet_send(lnet_nid_t nid, lnet_msg_t *msg, lnet_nid_t rtr_nid);
 void lnet_return_tx_credits_locked(lnet_msg_t *msg);
 void lnet_return_rx_credits_locked(lnet_msg_t *msg);
-void lnet_schedule_blocked_locked(lnet_rtrbufpool_t *rbp);
+void lnet_schedule_blocked_locked(struct lnet_rtrbufpool *rbp);
 void lnet_drop_routed_msgs_locked(struct list_head *list, int cpt);
 
 /* portals functions */
diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
index 9850398..d5777bd 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-types.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-types.h
@@ -164,12 +164,12 @@ typedef struct lnet_libmd {
 #define LNET_MD_FLAG_AUTO_UNLINK	(1 << 1)
 #define LNET_MD_FLAG_ABORTED		(1 << 2)
 
-typedef struct {
+struct lnet_test_peer {
 	/* info about peers we are trying to fail */
 	struct list_head	tp_list;	/* ln_test_peers */
 	lnet_nid_t		tp_nid;		/* matching nid */
 	unsigned int		tp_threshold;	/* # failures to simulate */
-} lnet_test_peer_t;
+};
 
 #define LNET_COOKIE_TYPE_MD	1
 #define LNET_COOKIE_TYPE_ME	2
@@ -296,13 +296,13 @@ typedef struct lnet_ni {
 /* router checker data, per router */
 #define LNET_MAX_RTR_NIS   16
 #define LNET_PINGINFO_SIZE offsetof(struct lnet_ping_info, pi_ni[LNET_MAX_RTR_NIS])
-typedef struct {
+struct lnet_rc_data {
 	/* chain on the_lnet.ln_zombie_rcd or ln_deathrow_rcd */
 	struct list_head	 rcd_list;
 	lnet_handle_md_t	 rcd_mdh;	/* ping buffer MD */
 	struct lnet_peer	*rcd_gateway;	/* reference to gateway */
 	struct lnet_ping_info	*rcd_pinginfo;	/* ping buffer */
-} lnet_rc_data_t;
+};
 
 typedef struct lnet_peer {
 	struct list_head	 lp_hashlist;	/* chain on peer hash */
@@ -339,12 +339,12 @@ typedef struct lnet_peer {
 	lnet_nid_t		 lp_nid;	/* peer's NID */
 	int			 lp_refcount;	/* # refs */
 	int			 lp_cpt;	/* CPT this peer attached on */
-	/* # refs from lnet_route_t::lr_gateway */
+	/* # refs from struct lnet_route::lr_gateway */
 	int			 lp_rtr_refcount;
 	/* returned RC ping features */
 	unsigned int		 lp_ping_feats;
 	struct list_head	 lp_routes;	/* routers on this peer */
-	lnet_rc_data_t		*lp_rcd;	/* router checker state */
+	struct lnet_rc_data	 *lp_rcd;	/* router checker state */
 } lnet_peer_t;
 
 /* peer hash size */
@@ -368,7 +368,7 @@ struct lnet_peer_table {
 #define lnet_peer_aliveness_enabled(lp) (the_lnet.ln_routing && \
 					 (lp)->lp_ni->ni_peertimeout > 0)
 
-typedef struct {
+struct lnet_route {
 	struct list_head	 lr_list;	/* chain on net */
 	struct list_head	 lr_gwlist;	/* chain on gateway */
 	lnet_peer_t		*lr_gateway;	/* router node */
@@ -377,25 +377,25 @@ typedef struct {
 	unsigned int		 lr_downis;	/* number of down NIs */
 	__u32			 lr_hops;	/* how far I am */
 	unsigned int             lr_priority;	/* route priority */
-} lnet_route_t;
+};
 
 #define LNET_REMOTE_NETS_HASH_DEFAULT	(1U << 7)
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
 /** lnet message is waiting for credit */
 #define LNET_CREDIT_WAIT	1
 
-typedef struct {
+struct lnet_rtrbufpool {
 	struct list_head	rbp_bufs;	/* my free buffer pool */
 	struct list_head	rbp_msgs;	/* messages blocking
 						   for a buffer */
@@ -407,13 +407,13 @@ typedef struct {
 	int			rbp_credits;	/* # free buffers /
 						     blocked messages */
 	int			rbp_mincredits;	/* low water mark */
-} lnet_rtrbufpool_t;
+};
 
-typedef struct {
+struct lnet_rtrbuf {
 	struct list_head	 rb_list;	/* chain on rbp_bufs */
-	lnet_rtrbufpool_t	*rb_pool;	/* owning pool */
+	struct lnet_rtrbufpool	*rb_pool;	/* owning pool */
 	lnet_kiov_t		 rb_kiov[0];	/* the buffer space */
-} lnet_rtrbuf_t;
+};
 
 #define LNET_PEER_HASHSIZE	503	/* prime! */
 
@@ -595,7 +595,7 @@ typedef struct {
 	/* validity stamp */
 	__u64				  ln_routers_version;
 	/* percpt router buffer pools */
-	lnet_rtrbufpool_t		**ln_rtrpools;
+	struct lnet_rtrbufpool		**ln_rtrpools;
 
 	lnet_handle_md_t		  ln_ping_target_md;
 	lnet_handle_eq_t		  ln_ping_target_eq;
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
index 6b0be6c..4b04020 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-move.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
@@ -47,8 +47,8 @@ MODULE_PARM_DESC(local_nid_dist_zero, "Reserved");
 int
 lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)
 {
-	lnet_test_peer_t *tp;
-	lnet_test_peer_t *temp;
+	struct lnet_test_peer *tp;
+	struct lnet_test_peer *temp;
 	struct list_head *el;
 	struct list_head *next;
 	struct list_head cull;
@@ -75,7 +75,7 @@ lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)
 	lnet_net_lock(0);
 
 	list_for_each_safe(el, next, &the_lnet.ln_test_peers) {
-		tp = list_entry(el, lnet_test_peer_t, tp_list);
+		tp = list_entry(el, struct lnet_test_peer, tp_list);
 
 		if (!tp->tp_threshold ||    /* needs culling anyway */
 		    nid == LNET_NID_ANY ||       /* removing all entries */
@@ -97,8 +97,8 @@ lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)
 static int
 fail_peer(lnet_nid_t nid, int outgoing)
 {
-	lnet_test_peer_t *tp;
-	lnet_test_peer_t *temp;
+	struct lnet_test_peer *tp;
+	struct lnet_test_peer *temp;
 	struct list_head *el;
 	struct list_head *next;
 	struct list_head cull;
@@ -110,7 +110,7 @@ fail_peer(lnet_nid_t nid, int outgoing)
 	lnet_net_lock(0);
 
 	list_for_each_safe(el, next, &the_lnet.ln_test_peers) {
-		tp = list_entry(el, lnet_test_peer_t, tp_list);
+		tp = list_entry(el, struct lnet_test_peer, tp_list);
 
 		if (!tp->tp_threshold) {
 			/* zombie entry */
@@ -679,10 +679,10 @@ lnet_post_send_locked(lnet_msg_t *msg, int do_send)
 	return LNET_CREDIT_OK;
 }
 
-static lnet_rtrbufpool_t *
+static struct lnet_rtrbufpool *
 lnet_msg2bufpool(lnet_msg_t *msg)
 {
-	lnet_rtrbufpool_t *rbp;
+	struct lnet_rtrbufpool *rbp;
 	int cpt;
 
 	LASSERT(msg->msg_rx_committed);
@@ -709,8 +709,8 @@ lnet_post_routed_recv_locked(lnet_msg_t *msg, int do_recv)
 	 * received or OK to receive
 	 */
 	lnet_peer_t *lp = msg->msg_rxpeer;
-	lnet_rtrbufpool_t *rbp;
-	lnet_rtrbuf_t *rb;
+	struct lnet_rtrbufpool *rbp;
+	struct lnet_rtrbuf *rb;
 
 	LASSERT(!msg->msg_iov);
 	LASSERT(!msg->msg_kiov);
@@ -758,7 +758,7 @@ lnet_post_routed_recv_locked(lnet_msg_t *msg, int do_recv)
 	}
 
 	LASSERT(!list_empty(&rbp->rbp_bufs));
-	rb = list_entry(rbp->rbp_bufs.next, lnet_rtrbuf_t, rb_list);
+	rb = list_entry(rbp->rbp_bufs.next, struct lnet_rtrbuf, rb_list);
 	list_del(&rb->rb_list);
 
 	msg->msg_niov = rbp->rbp_npages;
@@ -834,7 +834,7 @@ lnet_return_tx_credits_locked(lnet_msg_t *msg)
 }
 
 void
-lnet_schedule_blocked_locked(lnet_rtrbufpool_t *rbp)
+lnet_schedule_blocked_locked(struct lnet_rtrbufpool *rbp)
 {
 	lnet_msg_t *msg;
 
@@ -878,8 +878,8 @@ lnet_return_rx_credits_locked(lnet_msg_t *msg)
 
 	if (msg->msg_rtrcredit) {
 		/* give back global router credits */
-		lnet_rtrbuf_t *rb;
-		lnet_rtrbufpool_t *rbp;
+		struct lnet_rtrbuf *rb;
+		struct lnet_rtrbufpool *rbp;
 
 		/*
 		 * NB If a msg ever blocks for a buffer in rbp_msgs, it stays
@@ -888,7 +888,7 @@ lnet_return_rx_credits_locked(lnet_msg_t *msg)
 		 */
 		LASSERT(msg->msg_kiov);
 
-		rb = list_entry(msg->msg_kiov, lnet_rtrbuf_t, rb_kiov[0]);
+		rb = list_entry(msg->msg_kiov, struct lnet_rtrbuf, rb_kiov[0]);
 		rbp = rb->rb_pool;
 
 		msg->msg_kiov = NULL;
@@ -956,7 +956,7 @@ lnet_return_rx_credits_locked(lnet_msg_t *msg)
 }
 
 static int
-lnet_compare_routes(lnet_route_t *r1, lnet_route_t *r2)
+lnet_compare_routes(struct lnet_route *r1, struct lnet_route *r2)
 {
 	lnet_peer_t *p1 = r1->lr_gateway;
 	lnet_peer_t *p2 = r2->lr_gateway;
@@ -996,10 +996,10 @@ lnet_compare_routes(lnet_route_t *r1, lnet_route_t *r2)
 static lnet_peer_t *
 lnet_find_route_locked(lnet_ni_t *ni, lnet_nid_t target, lnet_nid_t rtr_nid)
 {
-	lnet_remotenet_t *rnet;
-	lnet_route_t *route;
-	lnet_route_t *best_route;
-	lnet_route_t *last_route;
+	struct lnet_remotenet *rnet;
+	struct lnet_route *route;
+	struct lnet_route *best_route;
+	struct lnet_route *last_route;
 	struct lnet_peer *lp_best;
 	struct lnet_peer *lp;
 	int rc;
@@ -2288,7 +2288,7 @@ LNetDist(lnet_nid_t dstnid, lnet_nid_t *srcnidp, __u32 *orderp)
 {
 	struct list_head *e;
 	struct lnet_ni *ni;
-	lnet_remotenet_t *rnet;
+	struct lnet_remotenet *rnet;
 	__u32 dstnet = LNET_NIDNET(dstnid);
 	int hops;
 	int cpt;
@@ -2345,11 +2345,11 @@ LNetDist(lnet_nid_t dstnid, lnet_nid_t *srcnidp, __u32 *orderp)
 
 	rn_list = lnet_net2rnethash(dstnet);
 	list_for_each(e, rn_list) {
-		rnet = list_entry(e, lnet_remotenet_t, lrn_list);
+		rnet = list_entry(e, struct lnet_remotenet, lrn_list);
 
 		if (rnet->lrn_net == dstnet) {
-			lnet_route_t *route;
-			lnet_route_t *shortest = NULL;
+			struct lnet_route *route;
+			struct lnet_route *shortest = NULL;
 			__u32 shortest_hops = LNET_UNDEFINED_HOPS;
 			__u32 route_hops;
 
diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index cf22525..91e500a 100644
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
+lnet_add_route_to_rnet(struct lnet_remotenet *rnet, struct lnet_route *route)
 {
 	unsigned int len = 0;
 	unsigned int offset = 0;
@@ -299,9 +299,9 @@ lnet_add_route(__u32 net, __u32 hops, lnet_nid_t gateway,
 	       unsigned int priority)
 {
 	struct list_head *e;
-	lnet_remotenet_t *rnet;
-	lnet_remotenet_t *rnet2;
-	lnet_route_t *route;
+	struct lnet_remotenet *rnet;
+	struct lnet_remotenet *rnet2;
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
@@ -415,9 +416,9 @@ lnet_add_route(__u32 net, __u32 hops, lnet_nid_t gateway,
 int
 lnet_check_routes(void)
 {
-	lnet_remotenet_t *rnet;
-	lnet_route_t *route;
-	lnet_route_t *route2;
+	struct lnet_remotenet *rnet;
+	struct lnet_route *route;
+	struct lnet_route *route2;
 	struct list_head *e1;
 	struct list_head *e2;
 	int cpt;
@@ -429,7 +430,7 @@ lnet_check_routes(void)
 	for (i = 0; i < LNET_REMOTE_NETS_HASH_SIZE; i++) {
 		rn_list = &the_lnet.ln_remote_nets_hash[i];
 		list_for_each(e1, rn_list) {
-			rnet = list_entry(e1, lnet_remotenet_t, lrn_list);
+			rnet = list_entry(e1, struct lnet_remotenet, lrn_list);
 
 			route2 = NULL;
 			list_for_each(e2, &rnet->lrn_routes) {
@@ -437,7 +438,8 @@ lnet_check_routes(void)
 				lnet_nid_t nid2;
 				int net;
 
-				route = list_entry(e2, lnet_route_t, lr_list);
+				route = list_entry(e2, struct lnet_route,
+						   lr_list);
 
 				if (!route2) {
 					route2 = route;
@@ -471,8 +473,8 @@ int
 lnet_del_route(__u32 net, lnet_nid_t gw_nid)
 {
 	struct lnet_peer *gateway;
-	lnet_remotenet_t *rnet;
-	lnet_route_t *route;
+	struct lnet_remotenet *rnet;
+	struct lnet_route *route;
 	struct list_head *e1;
 	struct list_head *e2;
 	int rc = -ENOENT;
@@ -494,14 +496,14 @@ lnet_del_route(__u32 net, lnet_nid_t gw_nid)
 
  again:
 	list_for_each(e1, rn_list) {
-		rnet = list_entry(e1, lnet_remotenet_t, lrn_list);
+		rnet = list_entry(e1, struct lnet_remotenet, lrn_list);
 
 		if (!(net == LNET_NIDNET(LNET_NID_ANY) ||
 		      net == rnet->lrn_net))
 			continue;
 
 		list_for_each(e2, &rnet->lrn_routes) {
-			route = list_entry(e2, lnet_route_t, lr_list);
+			route = list_entry(e2, struct lnet_route, lr_list);
 
 			gateway = route->lr_gateway;
 			if (!(gw_nid == LNET_NID_ANY ||
@@ -557,7 +559,7 @@ int lnet_get_rtr_pool_cfg(int idx, struct lnet_ioctl_pool_cfg *pool_cfg)
 		return rc;
 
 	for (i = 0; i < LNET_NRBPOOLS; i++) {
-		lnet_rtrbufpool_t *rbp;
+		struct lnet_rtrbufpool *rbp;
 
 		lnet_net_lock(LNET_LOCK_EX);
 		cfs_percpt_for_each(rbp, j, the_lnet.ln_rtrpools) {
@@ -587,8 +589,8 @@ lnet_get_route(int idx, __u32 *net, __u32 *hops,
 {
 	struct list_head *e1;
 	struct list_head *e2;
-	lnet_remotenet_t *rnet;
-	lnet_route_t *route;
+	struct lnet_remotenet *rnet;
+	struct lnet_route *route;
 	int cpt;
 	int i;
 	struct list_head *rn_list;
@@ -598,10 +600,11 @@ lnet_get_route(int idx, __u32 *net, __u32 *hops,
 	for (i = 0; i < LNET_REMOTE_NETS_HASH_SIZE; i++) {
 		rn_list = &the_lnet.ln_remote_nets_hash[i];
 		list_for_each(e1, rn_list) {
-			rnet = list_entry(e1, lnet_remotenet_t, lrn_list);
+			rnet = list_entry(e1, struct lnet_remotenet, lrn_list);
 
 			list_for_each(e2, &rnet->lrn_routes) {
-				route = list_entry(e2, lnet_route_t, lr_list);
+				route = list_entry(e2, struct lnet_route,
+						   lr_list);
 
 				if (!idx--) {
 					*net      = rnet->lrn_net;
@@ -642,11 +645,11 @@ lnet_swap_pinginfo(struct lnet_ping_info *info)
  * networks on that router.
  */
 static void
-lnet_parse_rc_info(lnet_rc_data_t *rcd)
+lnet_parse_rc_info(struct lnet_rc_data *rcd)
 {
 	struct lnet_ping_info *info = rcd->rcd_pinginfo;
 	struct lnet_peer *gw = rcd->rcd_gateway;
-	lnet_route_t *rte;
+	struct lnet_route *rte;
 
 	if (!gw->lp_alive)
 		return;
@@ -733,7 +736,7 @@ lnet_parse_rc_info(lnet_rc_data_t *rcd)
 static void
 lnet_router_checker_event(lnet_event_t *event)
 {
-	lnet_rc_data_t *rcd = event->md.user_ptr;
+	struct lnet_rc_data *rcd = event->md.user_ptr;
 	struct lnet_peer *lp;
 
 	LASSERT(rcd);
@@ -823,7 +826,7 @@ lnet_wait_known_routerstate(void)
 void
 lnet_router_ni_update_locked(lnet_peer_t *gw, __u32 net)
 {
-	lnet_route_t *rte;
+	struct lnet_route *rte;
 
 	if ((gw->lp_ping_feats & LNET_PING_FEAT_NI_STATUS)) {
 		list_for_each_entry(rte, &gw->lp_routes, lr_gwlist) {
@@ -878,7 +881,7 @@ lnet_update_ni_status_locked(void)
 }
 
 static void
-lnet_destroy_rc_data(lnet_rc_data_t *rcd)
+lnet_destroy_rc_data(struct lnet_rc_data *rcd)
 {
 	LASSERT(list_empty(&rcd->rcd_list));
 	/* detached from network */
@@ -898,10 +901,10 @@ lnet_destroy_rc_data(lnet_rc_data_t *rcd)
 	LIBCFS_FREE(rcd, sizeof(*rcd));
 }
 
-static lnet_rc_data_t *
+static struct lnet_rc_data *
 lnet_create_rc_data_locked(lnet_peer_t *gateway)
 {
-	lnet_rc_data_t *rcd = NULL;
+	struct lnet_rc_data *rcd = NULL;
 	struct lnet_ping_info *pi;
 	lnet_md_t md;
 	int rc;
@@ -984,7 +987,7 @@ lnet_router_check_interval(lnet_peer_t *rtr)
 static void
 lnet_ping_router_locked(lnet_peer_t *rtr)
 {
-	lnet_rc_data_t *rcd = NULL;
+	struct lnet_rc_data *rcd = NULL;
 	unsigned long now = cfs_time_current();
 	int secs;
 
@@ -1124,8 +1127,8 @@ lnet_router_checker_stop(void)
 static void
 lnet_prune_rc_data(int wait_unlink)
 {
-	lnet_rc_data_t *rcd;
-	lnet_rc_data_t *tmp;
+	struct lnet_rc_data *rcd;
+	struct lnet_rc_data *tmp;
 	lnet_peer_t *lp;
 	struct list_head head;
 	int i = 2;
@@ -1182,7 +1185,7 @@ lnet_prune_rc_data(int wait_unlink)
 
 		while (!list_empty(&head)) {
 			rcd = list_entry(head.next,
-					 lnet_rc_data_t, rcd_list);
+					 struct lnet_rc_data, rcd_list);
 			list_del_init(&rcd->rcd_list);
 			lnet_destroy_rc_data(rcd);
 		}
@@ -1303,9 +1306,9 @@ lnet_router_checker(void *arg)
 }
 
 void
-lnet_destroy_rtrbuf(lnet_rtrbuf_t *rb, int npages)
+lnet_destroy_rtrbuf(struct lnet_rtrbuf *rb, int npages)
 {
-	int sz = offsetof(lnet_rtrbuf_t, rb_kiov[npages]);
+	int sz = offsetof(struct lnet_rtrbuf, rb_kiov[npages]);
 
 	while (--npages >= 0)
 		__free_page(rb->rb_kiov[npages].bv_page);
@@ -1313,13 +1316,13 @@ lnet_destroy_rtrbuf(lnet_rtrbuf_t *rb, int npages)
 	LIBCFS_FREE(rb, sz);
 }
 
-static lnet_rtrbuf_t *
-lnet_new_rtrbuf(lnet_rtrbufpool_t *rbp, int cpt)
+static struct lnet_rtrbuf *
+lnet_new_rtrbuf(struct lnet_rtrbufpool *rbp, int cpt)
 {
 	int npages = rbp->rbp_npages;
-	int sz = offsetof(lnet_rtrbuf_t, rb_kiov[npages]);
+	int sz = offsetof(struct lnet_rtrbuf, rb_kiov[npages]);
 	struct page *page;
-	lnet_rtrbuf_t *rb;
+	struct lnet_rtrbuf *rb;
 	int i;
 
 	LIBCFS_CPT_ALLOC(rb, lnet_cpt_table(), cpt, sz);
@@ -1349,12 +1352,12 @@ lnet_new_rtrbuf(lnet_rtrbufpool_t *rbp, int cpt)
 }
 
 static void
-lnet_rtrpool_free_bufs(lnet_rtrbufpool_t *rbp, int cpt)
+lnet_rtrpool_free_bufs(struct lnet_rtrbufpool *rbp, int cpt)
 {
 	int npages = rbp->rbp_npages;
 	struct list_head tmp;
-	lnet_rtrbuf_t *rb;
-	lnet_rtrbuf_t *temp;
+	struct lnet_rtrbuf *rb;
+	struct lnet_rtrbuf *temp;
 
 	if (!rbp->rbp_nbuffers) /* not initialized or already freed */
 		return;
@@ -1378,10 +1381,10 @@ lnet_rtrpool_free_bufs(lnet_rtrbufpool_t *rbp, int cpt)
 }
 
 static int
-lnet_rtrpool_adjust_bufs(lnet_rtrbufpool_t *rbp, int nbufs, int cpt)
+lnet_rtrpool_adjust_bufs(struct lnet_rtrbufpool *rbp, int nbufs, int cpt)
 {
 	struct list_head rb_list;
-	lnet_rtrbuf_t *rb;
+	struct lnet_rtrbuf *rb;
 	int num_rb;
 	int num_buffers = 0;
 	int old_req_nbufs;
@@ -1456,7 +1459,7 @@ lnet_rtrpool_adjust_bufs(lnet_rtrbufpool_t *rbp, int nbufs, int cpt)
 
 failed:
 	while (!list_empty(&rb_list)) {
-		rb = list_entry(rb_list.next, lnet_rtrbuf_t, rb_list);
+		rb = list_entry(rb_list.next, struct lnet_rtrbuf, rb_list);
 		list_del(&rb->rb_list);
 		lnet_destroy_rtrbuf(rb, npages);
 	}
@@ -1465,7 +1468,7 @@ lnet_rtrpool_adjust_bufs(lnet_rtrbufpool_t *rbp, int nbufs, int cpt)
 }
 
 static void
-lnet_rtrpool_init(lnet_rtrbufpool_t *rbp, int npages)
+lnet_rtrpool_init(struct lnet_rtrbufpool *rbp, int npages)
 {
 	INIT_LIST_HEAD(&rbp->rbp_msgs);
 	INIT_LIST_HEAD(&rbp->rbp_bufs);
@@ -1478,7 +1481,7 @@ lnet_rtrpool_init(lnet_rtrbufpool_t *rbp, int npages)
 void
 lnet_rtrpools_free(int keep_pools)
 {
-	lnet_rtrbufpool_t *rtrp;
+	struct lnet_rtrbufpool *rtrp;
 	int i;
 
 	if (!the_lnet.ln_rtrpools) /* uninitialized or freed */
@@ -1556,7 +1559,7 @@ lnet_nrb_large_calculate(void)
 int
 lnet_rtrpools_alloc(int im_a_router)
 {
-	lnet_rtrbufpool_t *rtrp;
+	struct lnet_rtrbufpool *rtrp;
 	int nrb_tiny;
 	int nrb_small;
 	int nrb_large;
@@ -1591,7 +1594,7 @@ lnet_rtrpools_alloc(int im_a_router)
 
 	the_lnet.ln_rtrpools = cfs_percpt_alloc(lnet_cpt_table(),
 						LNET_NRBPOOLS *
-						sizeof(lnet_rtrbufpool_t));
+						sizeof(struct lnet_rtrbufpool));
 	if (!the_lnet.ln_rtrpools) {
 		LCONSOLE_ERROR_MSG(0x10c,
 				   "Failed to initialize router buffe pool\n");
@@ -1637,7 +1640,7 @@ lnet_rtrpools_adjust_helper(int tiny, int small, int large)
 	int nrb = 0;
 	int rc = 0;
 	int i;
-	lnet_rtrbufpool_t *rtrp;
+	struct lnet_rtrbufpool *rtrp;
 
 	/*
 	 * If the provided values for each buffer pool are different than the
diff --git a/drivers/staging/lustre/lnet/lnet/router_proc.c b/drivers/staging/lustre/lnet/lnet/router_proc.c
index a19e140..b06d708 100644
--- a/drivers/staging/lustre/lnet/lnet/router_proc.c
+++ b/drivers/staging/lustre/lnet/lnet/router_proc.c
@@ -171,8 +171,8 @@ static int proc_lnet_routes(struct ctl_table *table, int write,
 	} else {
 		struct list_head *n;
 		struct list_head *r;
-		lnet_route_t *route = NULL;
-		lnet_remotenet_t *rnet  = NULL;
+		struct lnet_route *route = NULL;
+		struct lnet_remotenet *rnet  = NULL;
 		int skip  = off - 1;
 		struct list_head *rn_list;
 		int i;
@@ -191,14 +191,15 @@ static int proc_lnet_routes(struct ctl_table *table, int write,
 			n = rn_list->next;
 
 			while (n != rn_list && !route) {
-				rnet = list_entry(n, lnet_remotenet_t,
+				rnet = list_entry(n, struct lnet_remotenet,
 						  lrn_list);
 
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
@@ -589,7 +590,7 @@ static int __proc_lnet_buffers(void *data, int write,
 		goto out; /* I'm not a router */
 
 	for (idx = 0; idx < LNET_NRBPOOLS; idx++) {
-		lnet_rtrbufpool_t *rbp;
+		struct lnet_rtrbufpool *rbp;
 
 		lnet_net_lock(LNET_LOCK_EX);
 		cfs_percpt_for_each(rbp, i, the_lnet.ln_rtrpools) {
-- 
2.7.4



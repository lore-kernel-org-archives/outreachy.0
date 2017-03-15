X-GM-THRID: 6392026082663464960
X-Received: by 10.129.108.20 with SMTP id h20mr1387845ywc.69.1489576864761;
        Wed, 15 Mar 2017 04:21:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.180 with SMTP id b49ls1903203otc.36.gmail; Wed, 15 Mar
 2017 04:21:04 -0700 (PDT)
X-Received: by 10.157.2.69 with SMTP id 63mr1226411otb.4.1489576864412;
        Wed, 15 Mar 2017 04:21:04 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r66si279533pfb.7.2017.03.15.04.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 04:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id v190so1892104pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 04:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Ru1RpyNRmKPpVkaGzgQ3i7OALM2zUM5UxoxH7DISa30=;
        b=r0F64xAcqMRbBK33Od7/YSPv95iQoUkkDmGPvpII2dzNlHstW6zH06Y2E89l+Pz7sY
         F0sgDhBmGArM8deIzNSmCfJDAznCZQiYNnWWjEDhJyQe+F7zRfP0jlKY8BclXwrmfK5z
         6D3PpzPPyXi8vsl7baTvBjO7ztXliWraeyEMrYIVVBiGkrHGpFjhV/mMIqrOAHuTu9u5
         lSkqkkkmhFhtrrFnYPoX2zc7LC6Zppnhrg99DztWY9V034J/7ULmxWYYMSgc1OLwHrSC
         sXGlTDu6ooNPzSHi7ORgUPuQS9LWvxmpHFIJkWqQggYrJPA0vJBHvo/XS/E7h3y0qZ/8
         nluQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Ru1RpyNRmKPpVkaGzgQ3i7OALM2zUM5UxoxH7DISa30=;
        b=nWmINGcX9Bq4XQebN0eQLblz0YUj8rUoGWRSt7tzzoOZh6j7FZrvPlhYqW/0D94/H+
         mXjYduZ9npR1FMXSrJK1hl4gshdxtiOLh/oneh2kIeUP5QzuiVsCr70GVdaOlfwSEuZ0
         U7AgbUe4RgfX83SqRGOvji3e87Zrs34Lh5gEMePggpwc23tnLEblQEPLv4rUWdxXg+dQ
         TTti7eaXjXfa093pVX7xXj0+HlRp8qimpmuY9Y/H1V6A/EYgUGLkKu+VuBj/OFtci0yy
         AfqcL3POd6f3mxO0czjgUkkAbh2yLM5tpCT/NWa3O4htqw2j1TFi1gpDt7JhpDQ5/DNs
         nPZg==
X-Gm-Message-State: AFeK/H1T77JXuLXDZdvrV/ZXkfM5gFRMhX7LJKG1I3MBJl9EhLjwAKmMMzz/7C7sJ1iYWA==
X-Received: by 10.98.6.133 with SMTP id 127mr3124445pfg.110.1489576864056;
        Wed, 15 Mar 2017 04:21:04 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id r12sm3822820pgn.26.2017.03.15.04.21.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 04:21:03 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 6/6] staging: lustre: Replace typedef lnet_rtrbufpool_t with struct
Date: Wed, 15 Mar 2017 16:50:55 +0530
Message-Id: <fbe68c1aa51093d54e0890f44575c68b0f8c5947.1489576506.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>

Using typedef for a structure type is not suggested in Linux kernel
coding style guidelines. Hence, occurence of typedef lnet_rtrbufpool_t
has been remove. Script 1 was used to detect the typedef and changes
were done manually. Script 2 was used to replace lnet_rtrbufpool_t
with struct lnet_rtrbufpool.

Script 1:
@r1@
type T;
@@

* typedef struct { ... } T;

Script 2:
@@
typedef lnet_rtrbufpool_t;
@@
(
- lnet_rtrbufpool_t
+ struct lnet_rtrbufpool
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/lustre/include/linux/lnet/lib-lnet.h  |  2 +-
 drivers/staging/lustre/include/linux/lnet/lib-types.h |  8 ++++----
 drivers/staging/lustre/lnet/lnet/lib-move.c           | 10 +++++-----
 drivers/staging/lustre/lnet/lnet/router.c             | 18 +++++++++---------
 drivers/staging/lustre/lnet/lnet/router_proc.c        |  2 +-
 5 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/lnet/lib-lnet.h b/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
index 525581f..00ad879 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
@@ -496,7 +496,7 @@ void lnet_prep_send(lnet_msg_t *msg, int type, lnet_process_id_t target,
 int lnet_send(lnet_nid_t nid, lnet_msg_t *msg, lnet_nid_t rtr_nid);
 void lnet_return_tx_credits_locked(lnet_msg_t *msg);
 void lnet_return_rx_credits_locked(lnet_msg_t *msg);
-void lnet_schedule_blocked_locked(lnet_rtrbufpool_t *rbp);
+void lnet_schedule_blocked_locked(struct lnet_rtrbufpool *rbp);
 void lnet_drop_routed_msgs_locked(struct list_head *list, int cpt);
 
 /* portals functions */
diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
index 3fbc5b8..fb968a1 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-types.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-types.h
@@ -395,7 +395,7 @@ struct lnet_remotenet {
 /** lnet message is waiting for credit */
 #define LNET_CREDIT_WAIT	1
 
-typedef struct {
+struct lnet_rtrbufpool {
 	struct list_head	rbp_bufs;	/* my free buffer pool */
 	struct list_head	rbp_msgs;	/* messages blocking
 						   for a buffer */
@@ -407,11 +407,11 @@ typedef struct {
 	int			rbp_credits;	/* # free buffers /
 						     blocked messages */
 	int			rbp_mincredits;	/* low water mark */
-} lnet_rtrbufpool_t;
+};
 
 struct lnet_rtrbuf {
 	struct list_head	 rb_list;	/* chain on rbp_bufs */
-	lnet_rtrbufpool_t	*rb_pool;	/* owning pool */
+	struct lnet_rtrbufpool	*rb_pool;	/* owning pool */
 	lnet_kiov_t		 rb_kiov[0];	/* the buffer space */
 };
 
@@ -595,7 +595,7 @@ typedef struct {
 	/* validity stamp */
 	__u64				  ln_routers_version;
 	/* percpt router buffer pools */
-	lnet_rtrbufpool_t		**ln_rtrpools;
+	struct lnet_rtrbufpool		**ln_rtrpools;
 
 	lnet_handle_md_t		  ln_ping_target_md;
 	lnet_handle_eq_t		  ln_ping_target_eq;
diff --git a/drivers/staging/lustre/lnet/lnet/lib-move.c b/drivers/staging/lustre/lnet/lnet/lib-move.c
index 02fc8e5..4b04020 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-move.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
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
@@ -709,7 +709,7 @@ lnet_post_routed_recv_locked(lnet_msg_t *msg, int do_recv)
 	 * received or OK to receive
 	 */
 	lnet_peer_t *lp = msg->msg_rxpeer;
-	lnet_rtrbufpool_t *rbp;
+	struct lnet_rtrbufpool *rbp;
 	struct lnet_rtrbuf *rb;
 
 	LASSERT(!msg->msg_iov);
@@ -834,7 +834,7 @@ lnet_return_tx_credits_locked(lnet_msg_t *msg)
 }
 
 void
-lnet_schedule_blocked_locked(lnet_rtrbufpool_t *rbp)
+lnet_schedule_blocked_locked(struct lnet_rtrbufpool *rbp)
 {
 	lnet_msg_t *msg;
 
@@ -879,7 +879,7 @@ lnet_return_rx_credits_locked(lnet_msg_t *msg)
 	if (msg->msg_rtrcredit) {
 		/* give back global router credits */
 		struct lnet_rtrbuf *rb;
-		lnet_rtrbufpool_t *rbp;
+		struct lnet_rtrbufpool *rbp;
 
 		/*
 		 * NB If a msg ever blocks for a buffer in rbp_msgs, it stays
diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index efa63a7..91e500a 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -559,7 +559,7 @@ int lnet_get_rtr_pool_cfg(int idx, struct lnet_ioctl_pool_cfg *pool_cfg)
 		return rc;
 
 	for (i = 0; i < LNET_NRBPOOLS; i++) {
-		lnet_rtrbufpool_t *rbp;
+		struct lnet_rtrbufpool *rbp;
 
 		lnet_net_lock(LNET_LOCK_EX);
 		cfs_percpt_for_each(rbp, j, the_lnet.ln_rtrpools) {
@@ -1317,7 +1317,7 @@ lnet_destroy_rtrbuf(struct lnet_rtrbuf *rb, int npages)
 }
 
 static struct lnet_rtrbuf *
-lnet_new_rtrbuf(lnet_rtrbufpool_t *rbp, int cpt)
+lnet_new_rtrbuf(struct lnet_rtrbufpool *rbp, int cpt)
 {
 	int npages = rbp->rbp_npages;
 	int sz = offsetof(struct lnet_rtrbuf, rb_kiov[npages]);
@@ -1352,7 +1352,7 @@ lnet_new_rtrbuf(lnet_rtrbufpool_t *rbp, int cpt)
 }
 
 static void
-lnet_rtrpool_free_bufs(lnet_rtrbufpool_t *rbp, int cpt)
+lnet_rtrpool_free_bufs(struct lnet_rtrbufpool *rbp, int cpt)
 {
 	int npages = rbp->rbp_npages;
 	struct list_head tmp;
@@ -1381,7 +1381,7 @@ lnet_rtrpool_free_bufs(lnet_rtrbufpool_t *rbp, int cpt)
 }
 
 static int
-lnet_rtrpool_adjust_bufs(lnet_rtrbufpool_t *rbp, int nbufs, int cpt)
+lnet_rtrpool_adjust_bufs(struct lnet_rtrbufpool *rbp, int nbufs, int cpt)
 {
 	struct list_head rb_list;
 	struct lnet_rtrbuf *rb;
@@ -1468,7 +1468,7 @@ lnet_rtrpool_adjust_bufs(lnet_rtrbufpool_t *rbp, int nbufs, int cpt)
 }
 
 static void
-lnet_rtrpool_init(lnet_rtrbufpool_t *rbp, int npages)
+lnet_rtrpool_init(struct lnet_rtrbufpool *rbp, int npages)
 {
 	INIT_LIST_HEAD(&rbp->rbp_msgs);
 	INIT_LIST_HEAD(&rbp->rbp_bufs);
@@ -1481,7 +1481,7 @@ lnet_rtrpool_init(lnet_rtrbufpool_t *rbp, int npages)
 void
 lnet_rtrpools_free(int keep_pools)
 {
-	lnet_rtrbufpool_t *rtrp;
+	struct lnet_rtrbufpool *rtrp;
 	int i;
 
 	if (!the_lnet.ln_rtrpools) /* uninitialized or freed */
@@ -1559,7 +1559,7 @@ lnet_nrb_large_calculate(void)
 int
 lnet_rtrpools_alloc(int im_a_router)
 {
-	lnet_rtrbufpool_t *rtrp;
+	struct lnet_rtrbufpool *rtrp;
 	int nrb_tiny;
 	int nrb_small;
 	int nrb_large;
@@ -1594,7 +1594,7 @@ lnet_rtrpools_alloc(int im_a_router)
 
 	the_lnet.ln_rtrpools = cfs_percpt_alloc(lnet_cpt_table(),
 						LNET_NRBPOOLS *
-						sizeof(lnet_rtrbufpool_t));
+						sizeof(struct lnet_rtrbufpool));
 	if (!the_lnet.ln_rtrpools) {
 		LCONSOLE_ERROR_MSG(0x10c,
 				   "Failed to initialize router buffe pool\n");
@@ -1640,7 +1640,7 @@ lnet_rtrpools_adjust_helper(int tiny, int small, int large)
 	int nrb = 0;
 	int rc = 0;
 	int i;
-	lnet_rtrbufpool_t *rtrp;
+	struct lnet_rtrbufpool *rtrp;
 
 	/*
 	 * If the provided values for each buffer pool are different than the
diff --git a/drivers/staging/lustre/lnet/lnet/router_proc.c b/drivers/staging/lustre/lnet/lnet/router_proc.c
index 1172617..b06d708 100644
--- a/drivers/staging/lustre/lnet/lnet/router_proc.c
+++ b/drivers/staging/lustre/lnet/lnet/router_proc.c
@@ -590,7 +590,7 @@ static int __proc_lnet_buffers(void *data, int write,
 		goto out; /* I'm not a router */
 
 	for (idx = 0; idx < LNET_NRBPOOLS; idx++) {
-		lnet_rtrbufpool_t *rbp;
+		struct lnet_rtrbufpool *rbp;
 
 		lnet_net_lock(LNET_LOCK_EX);
 		cfs_percpt_for_each(rbp, i, the_lnet.ln_rtrpools) {
-- 
2.7.4



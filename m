X-GM-THRID: 6392026082663464960
X-Received: by 10.157.17.228 with SMTP id y33mr1197639oty.102.1489576858443;
        Wed, 15 Mar 2017 04:20:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls1941779otj.6.gmail; Wed, 15 Mar
 2017 04:20:58 -0700 (PDT)
X-Received: by 10.13.219.76 with SMTP id d73mr1444603ywe.126.1489576858089;
        Wed, 15 Mar 2017 04:20:58 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si283555pfb.2.2017.03.15.04.20.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 04:20:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id m5so1969448pgk.3
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 04:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=e7TbuyiCYrtyiDYPJFeY6arxCsdxN9918aU1W0mBBSE=;
        b=iI42GaiUiJhwaPEUAjUF/v9rJATrDVogJQbPPbuodn5DDjXp5Ldx1Q/a+dfr3CKvBs
         hwRD4Dwn1PQSRR2RQ8ndSyr99Iw/TFe/j/ogEkgfRHN7QBcPq2+5ZrgzGQm6LD/vqR9j
         IOw4lMPQYL9dMq0mpUEvTLp5TH2kRoUSCIf+6mzdYuDD8VaRKpg5CfkJIH8RZwyy1ulU
         fM8a0axb4BDDrtfdiW2SSRs0myB6dL/tCa7aXp8CnhEflZHpActd3zhoAVvhochTKs4u
         QrZ+hv9Ubtl/GoysZUnvHqPCTA5awJsSGx20WyqP2KkHqGmmCRcP+f4cnWF4CV85gRN4
         84aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=e7TbuyiCYrtyiDYPJFeY6arxCsdxN9918aU1W0mBBSE=;
        b=qbE/B/P0c7ChxMNRdvE2CPkHEmU5HsSWR84b0tQcY1TkSoiMWF8OHJBCxZSEb5sQYH
         gUkqrd60wzwXGmATFff5a0ByO4oas3CFNM4e5bZrNHYqaNNvtl8ynxr7kjAYINYA+pw/
         Vbt+EtE45bH2xVVoaI6VfDqFJIvNmZuFxgU1ocaYBAhqW26y9SD4g0sf0Sa1SCo3VJei
         w9JOBJiMHZ9BuyGBADD4pV7CSLa1gmOSs2Aqqbo+IOtVcfG1cTKjiZ51az44ShpqVLYX
         lkzEgZxXUdvzfp58vEP+hlZBlBoLEB6Qh31+deBUk7RjKcodSx5yPLeLSWWH4XWekoRT
         q+AQ==
X-Gm-Message-State: AFeK/H2R1hlfAP5uErGOOhZzXPL0nDuKOgPl3Ukwr24yb85SXF6aWmVN+EBymFPTV2jt7A==
X-Received: by 10.84.224.131 with SMTP id s3mr3949722plj.162.1489576857789;
        Wed, 15 Mar 2017 04:20:57 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id r12sm3822820pgn.26.2017.03.15.04.20.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 04:20:57 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 4/6] staging: lustre: Replace typedef lnet_rtrbuf_t with struct
Date: Wed, 15 Mar 2017 16:50:53 +0530
Message-Id: <07509b6114b0d77c757d05cb16b451588b57bae6.1489576506.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>

Using typedef for a structure type is not suggested in Linux kernel
coding style guidelines. Hence, occurences of lnet_rtrbuf_t has been
removed. Script 1 was used to identify typedef and changes were done
manually. Script 2 was used to replace lnet_rtrbuf_t with struct
lnet_rtrbuf.

Script 1:
@r1@
type T;
@@

* typedef struct { ... } T;

Script 2:
@@
typedef lnet_rtrbuf_t;
@@
(
- lnet_rtrbuf_t
+ struct lnet_rtrbuf
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/lustre/include/linux/lnet/lib-lnet.h  |  2 +-
 drivers/staging/lustre/include/linux/lnet/lib-types.h |  4 ++--
 drivers/staging/lustre/lnet/lnet/lib-move.c           |  8 ++++----
 drivers/staging/lustre/lnet/lnet/router.c             | 18 +++++++++---------
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/lnet/lib-lnet.h b/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
index b1dd9b6..525581f 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-lnet.h
@@ -468,7 +468,7 @@ int lnet_get_rtr_pool_cfg(int idx, struct lnet_ioctl_pool_cfg *pool_cfg);
 void lnet_router_debugfs_init(void);
 void lnet_router_debugfs_fini(void);
 int  lnet_rtrpools_alloc(int im_a_router);
-void lnet_destroy_rtrbuf(lnet_rtrbuf_t *rb, int npages);
+void lnet_destroy_rtrbuf(struct lnet_rtrbuf *rb, int npages);
 int lnet_rtrpools_adjust(int tiny, int small, int large);
 int lnet_rtrpools_enable(void);
 void lnet_rtrpools_disable(void);
diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
index c469778..9da08cf 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-types.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-types.h
@@ -409,11 +409,11 @@ typedef struct {
 	int			rbp_mincredits;	/* low water mark */
 } lnet_rtrbufpool_t;
 
-typedef struct {
+struct lnet_rtrbuf {
 	struct list_head	 rb_list;	/* chain on rbp_bufs */
 	lnet_rtrbufpool_t	*rb_pool;	/* owning pool */
 	lnet_kiov_t		 rb_kiov[0];	/* the buffer space */
-} lnet_rtrbuf_t;
+};
 
 #define LNET_PEER_HASHSIZE	503	/* prime! */
 
diff --git a/drivers/staging/lustre/lnet/lnet/lib-move.c b/drivers/staging/lustre/lnet/lnet/lib-move.c
index 4c613414..2e9e4f4 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-move.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
@@ -710,7 +710,7 @@ lnet_post_routed_recv_locked(lnet_msg_t *msg, int do_recv)
 	 */
 	lnet_peer_t *lp = msg->msg_rxpeer;
 	lnet_rtrbufpool_t *rbp;
-	lnet_rtrbuf_t *rb;
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
@@ -878,7 +878,7 @@ lnet_return_rx_credits_locked(lnet_msg_t *msg)
 
 	if (msg->msg_rtrcredit) {
 		/* give back global router credits */
-		lnet_rtrbuf_t *rb;
+		struct lnet_rtrbuf *rb;
 		lnet_rtrbufpool_t *rbp;
 
 		/*
@@ -888,7 +888,7 @@ lnet_return_rx_credits_locked(lnet_msg_t *msg)
 		 */
 		LASSERT(msg->msg_kiov);
 
-		rb = list_entry(msg->msg_kiov, lnet_rtrbuf_t, rb_kiov[0]);
+		rb = list_entry(msg->msg_kiov, struct lnet_rtrbuf, rb_kiov[0]);
 		rbp = rb->rb_pool;
 
 		msg->msg_kiov = NULL;
diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index b753127..efa63a7 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -1306,9 +1306,9 @@ lnet_router_checker(void *arg)
 }
 
 void
-lnet_destroy_rtrbuf(lnet_rtrbuf_t *rb, int npages)
+lnet_destroy_rtrbuf(struct lnet_rtrbuf *rb, int npages)
 {
-	int sz = offsetof(lnet_rtrbuf_t, rb_kiov[npages]);
+	int sz = offsetof(struct lnet_rtrbuf, rb_kiov[npages]);
 
 	while (--npages >= 0)
 		__free_page(rb->rb_kiov[npages].bv_page);
@@ -1316,13 +1316,13 @@ lnet_destroy_rtrbuf(lnet_rtrbuf_t *rb, int npages)
 	LIBCFS_FREE(rb, sz);
 }
 
-static lnet_rtrbuf_t *
+static struct lnet_rtrbuf *
 lnet_new_rtrbuf(lnet_rtrbufpool_t *rbp, int cpt)
 {
 	int npages = rbp->rbp_npages;
-	int sz = offsetof(lnet_rtrbuf_t, rb_kiov[npages]);
+	int sz = offsetof(struct lnet_rtrbuf, rb_kiov[npages]);
 	struct page *page;
-	lnet_rtrbuf_t *rb;
+	struct lnet_rtrbuf *rb;
 	int i;
 
 	LIBCFS_CPT_ALLOC(rb, lnet_cpt_table(), cpt, sz);
@@ -1356,8 +1356,8 @@ lnet_rtrpool_free_bufs(lnet_rtrbufpool_t *rbp, int cpt)
 {
 	int npages = rbp->rbp_npages;
 	struct list_head tmp;
-	lnet_rtrbuf_t *rb;
-	lnet_rtrbuf_t *temp;
+	struct lnet_rtrbuf *rb;
+	struct lnet_rtrbuf *temp;
 
 	if (!rbp->rbp_nbuffers) /* not initialized or already freed */
 		return;
@@ -1384,7 +1384,7 @@ static int
 lnet_rtrpool_adjust_bufs(lnet_rtrbufpool_t *rbp, int nbufs, int cpt)
 {
 	struct list_head rb_list;
-	lnet_rtrbuf_t *rb;
+	struct lnet_rtrbuf *rb;
 	int num_rb;
 	int num_buffers = 0;
 	int old_req_nbufs;
@@ -1459,7 +1459,7 @@ lnet_rtrpool_adjust_bufs(lnet_rtrbufpool_t *rbp, int nbufs, int cpt)
 
 failed:
 	while (!list_empty(&rb_list)) {
-		rb = list_entry(rb_list.next, lnet_rtrbuf_t, rb_list);
+		rb = list_entry(rb_list.next, struct lnet_rtrbuf, rb_list);
 		list_del(&rb->rb_list);
 		lnet_destroy_rtrbuf(rb, npages);
 	}
-- 
2.7.4



X-GM-THRID: 6208495086908473344
X-Received: by 10.66.137.43 with SMTP id qf11mr12836227pab.1.1445527907054;
        Thu, 22 Oct 2015 08:31:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.7 with SMTP id g7ls194123ioe.30.gmail; Thu, 22 Oct
 2015 08:31:46 -0700 (PDT)
X-Received: by 10.66.194.166 with SMTP id hx6mr13455940pac.37.1445527906411;
        Thu, 22 Oct 2015 08:31:46 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id el2si1742269pbb.0.2015.10.22.08.31.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 08:31:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id rc13so89241648pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 08:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=q0s2FwsANa3RZS5bbxa6doHBA4JLDcxnekXJYwkuI2E=;
        b=P/jkrKUJrkx68h0vRQAKIv8AfFIrMzMHpzQpvUNIoIucm3U+OwhxM7XKcflsvSWl2f
         P7QK3RimkUI2WRoJ1IeH/cTPz5ElT8kzCX/VUtSkkdOIvhMn6qPbwWOeLaCJ9GzWzvL6
         ZR4anLTr5zL90I2rXTyQ1mV8zfZmqq2qJkBtTnrpFL7tsHdGmF6uX9bPy/XM+TW8JB9j
         dKGRdN92VY65iT0jQ66blyHiofhGLeF9BdiAEhvcQSj/9KijeA+eq7kA9bNMmGaWGJ5V
         ng+WyyWGuyw8kjy4KiEQDVgWKyB1n6aCxnz2+PH/+dsLERTgPRdsqvpnjV7LaWt8wl6i
         8s/w==
X-Received: by 10.66.163.136 with SMTP id yi8mr18093882pab.124.1445527906292;
        Thu, 22 Oct 2015 08:31:46 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id bn1sm14485895pad.17.2015.10.22.08.31.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Oct 2015 08:31:45 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: devel@driverdev.osuosl.org
Subject: [PATCH] Staging: lustre: lnet: Remove typedef srpc_server_rpc_t
Date: Thu, 22 Oct 2015 21:01:39 +0530
Message-Id: <1445527899-21610-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

The Linux kernel coding style guidelines suggest not using typedefs
for structure types. This patch gets rid of the typedef for
srpc_server_rpc_t.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/brw_test.c  |  4 ++--
 drivers/staging/lustre/lnet/selftest/console.c   |  2 +-
 drivers/staging/lustre/lnet/selftest/framework.c |  8 ++++----
 drivers/staging/lustre/lnet/selftest/rpc.c       |  6 +++---
 drivers/staging/lustre/lnet/selftest/selftest.h  | 14 +++++++-------
 5 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/brw_test.c b/drivers/staging/lustre/lnet/selftest/brw_test.c
index 0605c65..0f26226 100644
--- a/drivers/staging/lustre/lnet/selftest/brw_test.c
+++ b/drivers/staging/lustre/lnet/selftest/brw_test.c
@@ -358,7 +358,7 @@ out:
 }
 
 static void
-brw_server_rpc_done(srpc_server_rpc_t *rpc)
+brw_server_rpc_done(struct srpc_server_rpc *rpc)
 {
 	srpc_bulk_t *blk = rpc->srpc_bulk;
 
@@ -378,7 +378,7 @@ brw_server_rpc_done(srpc_server_rpc_t *rpc)
 }
 
 static int
-brw_bulk_ready(srpc_server_rpc_t *rpc, int status)
+brw_bulk_ready(struct srpc_server_rpc *rpc, int status)
 {
 	__u64 magic = BRW_MAGIC;
 	srpc_brw_reply_t *reply = &rpc->srpc_replymsg.msg_body.brw_reply;
diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
index d315dd4..043bf42 100644
--- a/drivers/staging/lustre/lnet/selftest/console.c
+++ b/drivers/staging/lustre/lnet/selftest/console.c
@@ -1891,7 +1891,7 @@ lstcon_session_feats_check(unsigned feats)
 }
 
 static int
-lstcon_acceptor_handle(srpc_server_rpc_t *rpc)
+lstcon_acceptor_handle(struct srpc_server_rpc *rpc)
 {
 	srpc_msg_t *rep  = &rpc->srpc_replymsg;
 	srpc_msg_t *req  = &rpc->srpc_reqstbuf->buf_msg;
diff --git a/drivers/staging/lustre/lnet/selftest/framework.c b/drivers/staging/lustre/lnet/selftest/framework.c
index f18e500..5d68d4a 100644
--- a/drivers/staging/lustre/lnet/selftest/framework.c
+++ b/drivers/staging/lustre/lnet/selftest/framework.c
@@ -111,7 +111,7 @@ static struct smoketest_framework {
 	spinlock_t        fw_lock;            /* serialise */
 	sfw_session_t     *fw_session;        /* _the_ session */
 	int               fw_shuttingdown;    /* shutdown in progress */
-	srpc_server_rpc_t *fw_active_srpc;    /* running RPC */
+	struct srpc_server_rpc *fw_active_srpc;    /* running RPC */
 } sfw_data;
 
 /* forward ref's */
@@ -722,7 +722,7 @@ sfw_unpack_addtest_req(srpc_msg_t *msg)
 }
 
 static int
-sfw_add_test_instance(sfw_batch_t *tsb, srpc_server_rpc_t *rpc)
+sfw_add_test_instance(sfw_batch_t *tsb, struct srpc_server_rpc *rpc)
 {
 	srpc_msg_t *msg = &rpc->srpc_reqstbuf->buf_msg;
 	srpc_test_reqst_t *req = &msg->msg_body.tes_reqst;
@@ -1091,7 +1091,7 @@ sfw_query_batch(sfw_batch_t *tsb, int testidx, srpc_batch_reply_t *reply)
 }
 
 void
-sfw_free_pages(srpc_server_rpc_t *rpc)
+sfw_free_pages(struct srpc_server_rpc *rpc)
 {
 	srpc_free_bulk(rpc->srpc_bulk);
 	rpc->srpc_bulk = NULL;
@@ -1112,7 +1112,7 @@ sfw_alloc_pages(struct srpc_server_rpc *rpc, int cpt, int npages, int len,
 }
 
 static int
-sfw_add_test(srpc_server_rpc_t *rpc)
+sfw_add_test(struct srpc_server_rpc *rpc)
 {
 	sfw_session_t *sn = sfw_data.fw_session;
 	srpc_test_reply_t *reply = &rpc->srpc_replymsg.msg_body.tes_reply;
diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
index 162f9d3..cfd95d1 100644
--- a/drivers/staging/lustre/lnet/selftest/rpc.c
+++ b/drivers/staging/lustre/lnet/selftest/rpc.c
@@ -866,7 +866,7 @@ srpc_prepare_bulk(srpc_client_rpc_t *rpc)
 }
 
 static int
-srpc_do_bulk(srpc_server_rpc_t *rpc)
+srpc_do_bulk(struct srpc_server_rpc *rpc)
 {
 	srpc_event_t *ev = &rpc->srpc_ev;
 	srpc_bulk_t *bk = rpc->srpc_bulk;
@@ -894,7 +894,7 @@ srpc_do_bulk(srpc_server_rpc_t *rpc)
 
 /* only called from srpc_handle_rpc */
 static void
-srpc_server_rpc_done(srpc_server_rpc_t *rpc, int status)
+srpc_server_rpc_done(struct srpc_server_rpc *rpc, int status)
 {
 	struct srpc_service_cd *scd = rpc->srpc_scd;
 	struct srpc_service *sv  = scd->scd_svc;
@@ -1404,7 +1404,7 @@ srpc_lnet_ev_handler(lnet_event_t *ev)
 	struct srpc_service_cd *scd;
 	srpc_event_t *rpcev = ev->md.user_ptr;
 	srpc_client_rpc_t *crpc;
-	srpc_server_rpc_t *srpc;
+	struct srpc_server_rpc *srpc;
 	srpc_buffer_t *buffer;
 	srpc_service_t *sv;
 	srpc_msg_t *msg;
diff --git a/drivers/staging/lustre/lnet/selftest/selftest.h b/drivers/staging/lustre/lnet/selftest/selftest.h
index 8a77d3f..3e95bf3 100644
--- a/drivers/staging/lustre/lnet/selftest/selftest.h
+++ b/drivers/staging/lustre/lnet/selftest/selftest.h
@@ -182,7 +182,7 @@ typedef struct swi_workitem {
 } swi_workitem_t;
 
 /* server-side state of a RPC */
-typedef struct srpc_server_rpc {
+struct srpc_server_rpc {
 	/* chain on srpc_service::*_rpcq */
 	struct list_head       srpc_list;
 	struct srpc_service_cd *srpc_scd;
@@ -198,7 +198,7 @@ typedef struct srpc_server_rpc {
 	unsigned int           srpc_aborted; /* being given up */
 	int                    srpc_status;
 	void                   (*srpc_done)(struct srpc_server_rpc *);
-} srpc_server_rpc_t;
+};
 
 /* client-side state of a RPC */
 typedef struct srpc_client_rpc {
@@ -318,8 +318,8 @@ typedef struct srpc_service {
 	 * - sv_handler: process incoming RPC request
 	 * - sv_bulk_ready: notify bulk data
 	 */
-	int                     (*sv_handler) (srpc_server_rpc_t *);
-	int                     (*sv_bulk_ready) (srpc_server_rpc_t *, int);
+	int                     (*sv_handler) (struct srpc_server_rpc *);
+	int                     (*sv_bulk_ready) (struct srpc_server_rpc *, int);
 } srpc_service_t;
 
 typedef struct {
@@ -423,9 +423,9 @@ void sfw_abort_rpc(srpc_client_rpc_t *rpc);
 void sfw_post_rpc(srpc_client_rpc_t *rpc);
 void sfw_client_rpc_done(srpc_client_rpc_t *rpc);
 void sfw_unpack_message(srpc_msg_t *msg);
-void sfw_free_pages(srpc_server_rpc_t *rpc);
+void sfw_free_pages(struct srpc_server_rpc *rpc);
 void sfw_add_bulk_page(srpc_bulk_t *bk, struct page *pg, int i);
-int sfw_alloc_pages(srpc_server_rpc_t *rpc, int cpt, int npages, int len,
+int sfw_alloc_pages(struct srpc_server_rpc *rpc, int cpt, int npages, int len,
 		    int sink);
 int sfw_make_session (srpc_mksn_reqst_t *request, srpc_mksn_reply_t *reply);
 
@@ -440,7 +440,7 @@ void srpc_free_bulk(srpc_bulk_t *bk);
 srpc_bulk_t *srpc_alloc_bulk(int cpt, unsigned bulk_npg, unsigned bulk_len,
 			     int sink);
 int srpc_send_rpc(swi_workitem_t *wi);
-int srpc_send_reply(srpc_server_rpc_t *rpc);
+int srpc_send_reply(struct srpc_server_rpc *rpc);
 int srpc_add_service(srpc_service_t *sv);
 int srpc_remove_service(srpc_service_t *sv);
 void srpc_shutdown_service(srpc_service_t *sv);
-- 
2.1.4



X-GM-THRID: 6211892414504763392
X-Received: by 10.129.103.139 with SMTP id b133mr13552739ywc.24.1446360714831;
        Sat, 31 Oct 2015 23:51:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.5 with SMTP id c5ls790480qgc.65.gmail; Sat, 31 Oct 2015
 23:51:54 -0700 (PDT)
X-Received: by 10.129.88.87 with SMTP id m84mr13832223ywb.0.1446360714238;
        Sat, 31 Oct 2015 23:51:54 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pe1si1445450pac.2.2015.10.31.23.51.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 23:51:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hy1so108836618pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 23:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=He521gGJXp8S4EHVk49lp2Y+86vZTvHFts+WVAMdXdI=;
        b=ACE3ji5JdyjK/htJyfyuFlBn26BuCfDs+JM88YPpmbHgqvqDw3Q/gT1PjNshFl7Bxg
         oi/Z6xMiz6kqFePmPAKXRLoDCFBLfH1vwfNo0mm7R4gOb/BQt/cAvz+JRSWVb68Ucu3j
         WRmNsHLTTZW5e6xhSsaxf/mam8Ioz+VvE9HfdNcSvP1hMZK0wBWkIhJQzo/OJOfDSxF2
         VVAFmgB1OiQI6wmxg7+lHGotnPpIFkhYuXJihzKMEYaqo0/8m+1B2xkqKa23OdHOxP/p
         HI8wKm8g2rRGDoZLgJdg2rIhUHQmJdrPxJIGIeA/+KTfxvqtZ0kpXRXcXVg4pZnlfKLk
         k8Zw==
X-Received: by 10.68.161.133 with SMTP id xs5mr19123201pbb.13.1446360714100;
        Sat, 31 Oct 2015 23:51:54 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rc5sm16997350pbc.95.2015.10.31.23.51.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 23:51:53 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/2] Staging: lustre: lnet: Remove typedef srpc_server_rpc_t
Date: Sun,  1 Nov 2015 12:21:37 +0530
Message-Id: <1446360698-9942-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446360698-9942-1-git-send-email-shraddha.6596@gmail.com>
References: <1446360698-9942-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5635B687.00B9,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The Linux kernel coding style guidelines suggest not using typedefs
for structure types. This patch gets rid of the typedef for
srpc_server_rpc_t.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Fixed alignment

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
index f18e500..1a2da74 100644
--- a/drivers/staging/lustre/lnet/selftest/framework.c
+++ b/drivers/staging/lustre/lnet/selftest/framework.c
@@ -111,7 +111,7 @@ static struct smoketest_framework {
 	spinlock_t        fw_lock;            /* serialise */
 	sfw_session_t     *fw_session;        /* _the_ session */
 	int               fw_shuttingdown;    /* shutdown in progress */
-	srpc_server_rpc_t *fw_active_srpc;    /* running RPC */
+	struct srpc_server_rpc *fw_active_srpc;/* running RPC */
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
index 8a77d3f..2a53775 100644
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
+	int (*sv_handler)(struct srpc_server_rpc *);
+	int (*sv_bulk_ready)(struct srpc_server_rpc *, int);
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



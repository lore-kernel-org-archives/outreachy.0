X-GM-THRID: 1526974119936
X-Received: by 10.112.159.227 with SMTP id xf3mr665113lbb.11.1424600329116;
        Sun, 22 Feb 2015 02:18:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.23.71 with SMTP id k7ls454285laf.9.gmail; Sun, 22 Feb 2015
 02:18:48 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr657366laa.2.1424600328100;
        Sun, 22 Feb 2015 02:18:48 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id cl5si455232wib.3.2015.02.22.02.18.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 02:18:48 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f44.google.com with SMTP id k14so20638836wgh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 02:18:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6R79Bo/bkIw9hOP7nVQa9JmfFAiycoVBUH+CqLzFYzk=;
        b=ycmocILPQ44OaX+1CUcETO/ogeY0w5XjF8xEtKmo9LRTmcznlOG5y9Q/s29MwF/GnA
         MLeoua0zMAd4T7Yr//VoBUJ1KKV4kEdBqsUGII0456lxI2zaaC4si9oLwmEzT+TtRTxg
         T6/xYZXBx2f3masIrebP9gaptTHdo/s579t2b5EGH1KY86NwNANpf0Kx0mpJe3xS88m9
         rb0xOS4TlpHa+c8lTO7WBpOdvMmfqC38QNuvOd44/lWa1Zj1mJVdTByCLi+jYYmQkV2/
         ks9FGM/L7R542otVWFENAAa8PBxjtwrr2x/gMhpE1tBcEs0LBCIyAJT7Xi9umnKu0TLZ
         h/wA==
X-Received: by 10.194.61.65 with SMTP id n1mr11884295wjr.53.1424600327967;
        Sun, 22 Feb 2015 02:18:47 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id a1sm10757738wiy.10.2015.02.22.02.18.46
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 02:18:47 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 1/2] Staging: lustre: Deleted space prohibited between function name and open parenthesis
Date: Sun, 22 Feb 2015 12:18:04 +0200
Message-Id: <1424600285-20827-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: space prohibited between function name and open parenthesis '('
Remove unnecessary space between function name and opening parenthesis.
That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/framework.c | 220 +++++++++++------------
 1 file changed, 110 insertions(+), 110 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/framework.c b/drivers/staging/lustre/lnet/selftest/framework.c
index 5709148..a93a90d 100644
--- a/drivers/staging/lustre/lnet/selftest/framework.c
+++ b/drivers/staging/lustre/lnet/selftest/framework.c
@@ -115,18 +115,18 @@ static struct smoketest_framework {
 } sfw_data;
 
 /* forward ref's */
-int sfw_stop_batch (sfw_batch_t *tsb, int force);
-void sfw_destroy_session (sfw_session_t *sn);
+int sfw_stop_batch(sfw_batch_t *tsb, int force);
+void sfw_destroy_session(sfw_session_t *sn);
 
 static inline sfw_test_case_t *
 sfw_find_test_case(int id)
 {
 	sfw_test_case_t *tsc;
 
-	LASSERT (id <= SRPC_SERVICE_MAX_ID);
-	LASSERT (id > SRPC_FRAMEWORK_SERVICE_MAX_ID);
+	LASSERT(id <= SRPC_SERVICE_MAX_ID);
+	LASSERT(id > SRPC_FRAMEWORK_SERVICE_MAX_ID);
 
-	list_for_each_entry (tsc, &sfw_data.fw_tests, tsc_list) {
+	list_for_each_entry(tsc, &sfw_data.fw_tests, tsc_list) {
 		if (tsc->tsc_srv_service->sv_id == id)
 			return tsc;
 	}
@@ -135,12 +135,12 @@ sfw_find_test_case(int id)
 }
 
 static int
-sfw_register_test (srpc_service_t *service, sfw_test_client_ops_t *cliops)
+sfw_register_test(srpc_service_t *service, sfw_test_client_ops_t *cliops)
 {
 	sfw_test_case_t *tsc;
 
 	if (sfw_find_test_case(service->sv_id) != NULL) {
-		CERROR ("Failed to register test %s (%d)\n",
+		CERROR("Failed to register test %s (%d)\n",
 			service->sv_name, service->sv_id);
 		return -EEXIST;
 	}
@@ -157,17 +157,17 @@ sfw_register_test (srpc_service_t *service, sfw_test_client_ops_t *cliops)
 }
 
 static void
-sfw_add_session_timer (void)
+sfw_add_session_timer(void)
 {
 	sfw_session_t *sn = sfw_data.fw_session;
 	stt_timer_t   *timer = &sn->sn_timer;
 
-	LASSERT (!sfw_data.fw_shuttingdown);
+	LASSERT(!sfw_data.fw_shuttingdown);
 
 	if (sn == NULL || sn->sn_timeout == 0)
 		return;
 
-	LASSERT (!sn->sn_timer_active);
+	LASSERT(!sn->sn_timer_active);
 
 	sn->sn_timer_active = 1;
 	timer->stt_expires = cfs_time_add(sn->sn_timeout,
@@ -177,14 +177,14 @@ sfw_add_session_timer (void)
 }
 
 static int
-sfw_del_session_timer (void)
+sfw_del_session_timer(void)
 {
 	sfw_session_t *sn = sfw_data.fw_session;
 
 	if (sn == NULL || !sn->sn_timer_active)
 		return 0;
 
-	LASSERT (sn->sn_timeout != 0);
+	LASSERT(sn->sn_timeout != 0);
 
 	if (stt_del_timer(&sn->sn_timer)) { /* timer defused */
 		sn->sn_timer_active = 0;
@@ -195,7 +195,7 @@ sfw_del_session_timer (void)
 }
 
 static void
-sfw_deactivate_session (void)
+sfw_deactivate_session(void)
 	__must_hold(&sfw_data.fw_lock)
 {
 	sfw_session_t *sn = sfw_data.fw_session;
@@ -205,7 +205,7 @@ sfw_deactivate_session (void)
 
 	if (sn == NULL) return;
 
-	LASSERT (!sn->sn_timer_active);
+	LASSERT(!sn->sn_timer_active);
 
 	sfw_data.fw_session = NULL;
 	atomic_inc(&sfw_data.fw_nzombies);
@@ -219,7 +219,7 @@ sfw_deactivate_session (void)
 
 	spin_lock(&sfw_data.fw_lock);
 
-	list_for_each_entry (tsb, &sn->sn_batches, bat_list) {
+	list_for_each_entry(tsb, &sn->sn_batches, bat_list) {
 		if (sfw_batch_active(tsb)) {
 			nactive++;
 			sfw_stop_batch(tsb, 1);
@@ -239,16 +239,16 @@ sfw_deactivate_session (void)
 
 
 static void
-sfw_session_expired (void *data)
+sfw_session_expired(void *data)
 {
 	sfw_session_t *sn = data;
 
 	spin_lock(&sfw_data.fw_lock);
 
-	LASSERT (sn->sn_timer_active);
-	LASSERT (sn == sfw_data.fw_session);
+	LASSERT(sn->sn_timer_active);
+	LASSERT(sn == sfw_data.fw_session);
 
-	CWARN ("Session expired! sid: %s-%llu, name: %s\n",
+	CWARN("Session expired! sid: %s-%llu, name: %s\n",
 	       libcfs_nid2str(sn->sn_id.ses_nid),
 	       sn->sn_id.ses_stamp, &sn->sn_name[0]);
 
@@ -290,7 +290,7 @@ sfw_server_rpc_done(struct srpc_server_rpc *rpc)
 	struct srpc_service	*sv	= rpc->srpc_scd->scd_svc;
 	int			status	= rpc->srpc_status;
 
-	CDEBUG (D_NET,
+	CDEBUG(D_NET,
 		"Incoming framework RPC done: service %s, peer %s, status %s:%d\n",
 		sv->sv_name, libcfs_id2str(rpc->srpc_peer),
 		swi_state2str(rpc->srpc_wi.swi_state),
@@ -302,13 +302,13 @@ sfw_server_rpc_done(struct srpc_server_rpc *rpc)
 }
 
 static void
-sfw_client_rpc_fini (srpc_client_rpc_t *rpc)
+sfw_client_rpc_fini(srpc_client_rpc_t *rpc)
 {
-	LASSERT (rpc->crpc_bulk.bk_niov == 0);
-	LASSERT (list_empty(&rpc->crpc_list));
-	LASSERT (atomic_read(&rpc->crpc_refcount) == 0);
+	LASSERT(rpc->crpc_bulk.bk_niov == 0);
+	LASSERT(list_empty(&rpc->crpc_list));
+	LASSERT(atomic_read(&rpc->crpc_refcount) == 0);
 
-	CDEBUG (D_NET,
+	CDEBUG(D_NET,
 		"Outgoing framework RPC done: service %d, peer %s, status %s:%d:%d\n",
 		rpc->crpc_service, libcfs_id2str(rpc->crpc_dest),
 		swi_state2str(rpc->crpc_wi.swi_state),
@@ -324,14 +324,14 @@ sfw_client_rpc_fini (srpc_client_rpc_t *rpc)
 }
 
 static sfw_batch_t *
-sfw_find_batch (lst_bid_t bid)
+sfw_find_batch(lst_bid_t bid)
 {
 	sfw_session_t *sn = sfw_data.fw_session;
 	sfw_batch_t   *bat;
 
-	LASSERT (sn != NULL);
+	LASSERT(sn != NULL);
 
-	list_for_each_entry (bat, &sn->sn_batches, bat_list) {
+	list_for_each_entry(bat, &sn->sn_batches, bat_list) {
 		if (bat->bat_id.bat_id == bid.bat_id)
 			return bat;
 	}
@@ -340,12 +340,12 @@ sfw_find_batch (lst_bid_t bid)
 }
 
 static sfw_batch_t *
-sfw_bid2batch (lst_bid_t bid)
+sfw_bid2batch(lst_bid_t bid)
 {
 	sfw_session_t *sn = sfw_data.fw_session;
 	sfw_batch_t   *bat;
 
-	LASSERT (sn != NULL);
+	LASSERT(sn != NULL);
 
 	bat = sfw_find_batch(bid);
 	if (bat != NULL)
@@ -366,7 +366,7 @@ sfw_bid2batch (lst_bid_t bid)
 }
 
 static int
-sfw_get_stats (srpc_stat_reqst_t *request, srpc_stat_reply_t *reply)
+sfw_get_stats(srpc_stat_reqst_t *request, srpc_stat_reply_t *reply)
 {
 	sfw_session_t  *sn = sfw_data.fw_session;
 	sfw_counters_t *cnt = &reply->str_fw;
@@ -399,7 +399,7 @@ sfw_get_stats (srpc_stat_reqst_t *request, srpc_stat_reply_t *reply)
 	cnt->zombie_sessions = atomic_read(&sfw_data.fw_nzombies);
 
 	cnt->active_batches = 0;
-	list_for_each_entry (bat, &sn->sn_batches, bat_list) {
+	list_for_each_entry(bat, &sn->sn_batches, bat_list) {
 		if (atomic_read(&bat->bat_nactive) > 0)
 			cnt->active_batches++;
 	}
@@ -456,7 +456,7 @@ sfw_make_session(srpc_mksn_reqst_t *request, srpc_mksn_reply_t *reply)
 	/* brand new or create by force */
 	LIBCFS_ALLOC(sn, sizeof(sfw_session_t));
 	if (sn == NULL) {
-		CERROR ("Dropping RPC (mksn) under memory pressure.\n");
+		CERROR("Dropping RPC (mksn) under memory pressure.\n");
 		return -ENOMEM;
 	}
 
@@ -478,7 +478,7 @@ sfw_make_session(srpc_mksn_reqst_t *request, srpc_mksn_reply_t *reply)
 }
 
 static int
-sfw_remove_session (srpc_rmsn_reqst_t *request, srpc_rmsn_reply_t *reply)
+sfw_remove_session(srpc_rmsn_reqst_t *request, srpc_rmsn_reply_t *reply)
 {
 	sfw_session_t *sn = sfw_data.fw_session;
 
@@ -510,7 +510,7 @@ sfw_remove_session (srpc_rmsn_reqst_t *request, srpc_rmsn_reply_t *reply)
 }
 
 static int
-sfw_debug_session (srpc_debug_reqst_t *request, srpc_debug_reply_t *reply)
+sfw_debug_session(srpc_debug_reqst_t *request, srpc_debug_reply_t *reply)
 {
 	sfw_session_t *sn = sfw_data.fw_session;
 
@@ -531,13 +531,13 @@ sfw_debug_session (srpc_debug_reqst_t *request, srpc_debug_reply_t *reply)
 }
 
 static void
-sfw_test_rpc_fini (srpc_client_rpc_t *rpc)
+sfw_test_rpc_fini(srpc_client_rpc_t *rpc)
 {
 	sfw_test_unit_t     *tsu = rpc->crpc_priv;
 	sfw_test_instance_t *tsi = tsu->tsu_instance;
 
 	/* Called with hold of tsi->tsi_lock */
-	LASSERT (list_empty(&rpc->crpc_list));
+	LASSERT(list_empty(&rpc->crpc_list));
 	list_add(&rpc->crpc_list, &tsi->tsi_free_rpcs);
 }
 
@@ -608,7 +608,7 @@ sfw_unload_test(struct sfw_test_instance *tsi)
 }
 
 static void
-sfw_destroy_test_instance (sfw_test_instance_t *tsi)
+sfw_destroy_test_instance(sfw_test_instance_t *tsi)
 {
 	srpc_client_rpc_t *rpc;
 	sfw_test_unit_t   *tsu;
@@ -617,9 +617,9 @@ sfw_destroy_test_instance (sfw_test_instance_t *tsi)
 
 	tsi->tsi_ops->tso_fini(tsi);
 
-	LASSERT (!tsi->tsi_stopping);
-	LASSERT (list_empty(&tsi->tsi_active_rpcs));
-	LASSERT (!sfw_test_active(tsi));
+	LASSERT(!tsi->tsi_stopping);
+	LASSERT(list_empty(&tsi->tsi_active_rpcs));
+	LASSERT(!sfw_test_active(tsi));
 
 	while (!list_empty(&tsi->tsi_units)) {
 		tsu = list_entry(tsi->tsi_units.next,
@@ -642,12 +642,12 @@ clean:
 }
 
 static void
-sfw_destroy_batch (sfw_batch_t *tsb)
+sfw_destroy_batch(sfw_batch_t *tsb)
 {
 	sfw_test_instance_t *tsi;
 
-	LASSERT (!sfw_batch_active(tsb));
-	LASSERT (list_empty(&tsb->bat_list));
+	LASSERT(!sfw_batch_active(tsb));
+	LASSERT(list_empty(&tsb->bat_list));
 
 	while (!list_empty(&tsb->bat_tests)) {
 		tsi = list_entry(tsb->bat_tests.next,
@@ -661,12 +661,12 @@ sfw_destroy_batch (sfw_batch_t *tsb)
 }
 
 void
-sfw_destroy_session (sfw_session_t *sn)
+sfw_destroy_session(sfw_session_t *sn)
 {
 	sfw_batch_t *batch;
 
-	LASSERT (list_empty(&sn->sn_list));
-	LASSERT (sn != sfw_data.fw_session);
+	LASSERT(list_empty(&sn->sn_list));
+	LASSERT(sn != sfw_data.fw_session);
 
 	while (!list_empty(&sn->sn_batches)) {
 		batch = list_entry(sn->sn_batches.next,
@@ -685,13 +685,13 @@ sfw_unpack_addtest_req(srpc_msg_t *msg)
 {
 	srpc_test_reqst_t *req = &msg->msg_body.tes_reqst;
 
-	LASSERT (msg->msg_type == SRPC_MSG_TEST_REQST);
-	LASSERT (req->tsr_is_client);
+	LASSERT(msg->msg_type == SRPC_MSG_TEST_REQST);
+	LASSERT(req->tsr_is_client);
 
 	if (msg->msg_magic == SRPC_MSG_MAGIC)
 		return; /* no flipping needed */
 
-	LASSERT (msg->msg_magic == __swab32(SRPC_MSG_MAGIC));
+	LASSERT(msg->msg_magic == __swab32(SRPC_MSG_MAGIC));
 
 	if (req->tsr_service == SRPC_SERVICE_BRW) {
 		if ((msg->msg_ses_feats & LST_FEAT_BULK_LEN) == 0) {
@@ -721,12 +721,12 @@ sfw_unpack_addtest_req(srpc_msg_t *msg)
 		return;
 	}
 
-	LBUG ();
+	LBUG();
 	return;
 }
 
 static int
-sfw_add_test_instance (sfw_batch_t *tsb, srpc_server_rpc_t *rpc)
+sfw_add_test_instance(sfw_batch_t *tsb, srpc_server_rpc_t *rpc)
 {
 	srpc_msg_t	  *msg = &rpc->srpc_reqstbuf->buf_msg;
 	srpc_test_reqst_t   *req = &msg->msg_body.tes_reqst;
@@ -739,7 +739,7 @@ sfw_add_test_instance (sfw_batch_t *tsb, srpc_server_rpc_t *rpc)
 
 	LIBCFS_ALLOC(tsi, sizeof(*tsi));
 	if (tsi == NULL) {
-		CERROR ("Can't allocate test instance for batch: %llu\n",
+		CERROR("Can't allocate test instance for batch: %llu\n",
 			tsb->bat_id.bat_id);
 		return -ENOMEM;
 	}
@@ -764,7 +764,7 @@ sfw_add_test_instance (sfw_batch_t *tsb, srpc_server_rpc_t *rpc)
 		return rc;
 	}
 
-	LASSERT (!sfw_batch_active(tsb));
+	LASSERT(!sfw_batch_active(tsb));
 
 	if (!tsi->tsi_is_client) {
 		/* it's test server, just add it to tsb */
@@ -772,8 +772,8 @@ sfw_add_test_instance (sfw_batch_t *tsb, srpc_server_rpc_t *rpc)
 		return 0;
 	}
 
-	LASSERT (bk != NULL);
-	LASSERT (bk->bk_niov * SFW_ID_PER_PAGE >= (unsigned int)ndest);
+	LASSERT(bk != NULL);
+	LASSERT(bk->bk_niov * SFW_ID_PER_PAGE >= (unsigned int)ndest);
 	LASSERT((unsigned int)bk->bk_len >=
 		sizeof(lnet_process_id_packed_t) * ndest);
 
@@ -786,7 +786,7 @@ sfw_add_test_instance (sfw_batch_t *tsb, srpc_server_rpc_t *rpc)
 		int		       j;
 
 		dests = page_address(bk->bk_iovs[i / SFW_ID_PER_PAGE].kiov_page);
-		LASSERT (dests != NULL);  /* my pages are within KVM always */
+		LASSERT(dests != NULL);  /* my pages are within KVM always */
 		id = dests[i % SFW_ID_PER_PAGE];
 		if (msg->msg_magic != SRPC_MSG_MAGIC)
 			sfw_unpack_id(id);
@@ -795,7 +795,7 @@ sfw_add_test_instance (sfw_batch_t *tsb, srpc_server_rpc_t *rpc)
 			LIBCFS_ALLOC(tsu, sizeof(sfw_test_unit_t));
 			if (tsu == NULL) {
 				rc = -ENOMEM;
-				CERROR ("Can't allocate tsu for %d\n",
+				CERROR("Can't allocate tsu for %d\n",
 					tsi->tsi_service);
 				goto error;
 			}
@@ -815,19 +815,19 @@ sfw_add_test_instance (sfw_batch_t *tsb, srpc_server_rpc_t *rpc)
 	}
 
 error:
-	LASSERT (rc != 0);
+	LASSERT(rc != 0);
 	sfw_destroy_test_instance(tsi);
 	return rc;
 }
 
 static void
-sfw_test_unit_done (sfw_test_unit_t *tsu)
+sfw_test_unit_done(sfw_test_unit_t *tsu)
 {
 	sfw_test_instance_t *tsi = tsu->tsu_instance;
 	sfw_batch_t	 *tsb = tsi->tsi_batch;
 	sfw_session_t       *sn = tsb->bat_session;
 
-	LASSERT (sfw_test_active(tsi));
+	LASSERT(sfw_test_active(tsi));
 
 	if (!atomic_dec_and_test(&tsi->tsi_nactive))
 		return;
@@ -847,9 +847,9 @@ sfw_test_unit_done (sfw_test_unit_t *tsu)
 		return;
 	}
 
-	LASSERT (!list_empty(&sn->sn_list)); /* I'm a zombie! */
+	LASSERT(!list_empty(&sn->sn_list)); /* I'm a zombie! */
 
-	list_for_each_entry (tsb, &sn->sn_batches, bat_list) {
+	list_for_each_entry(tsb, &sn->sn_batches, bat_list) {
 		if (sfw_batch_active(tsb)) {
 			spin_unlock(&sfw_data.fw_lock);
 			return;
@@ -864,7 +864,7 @@ sfw_test_unit_done (sfw_test_unit_t *tsu)
 }
 
 static void
-sfw_test_rpc_done (srpc_client_rpc_t *rpc)
+sfw_test_rpc_done(srpc_client_rpc_t *rpc)
 {
 	sfw_test_unit_t     *tsu = rpc->crpc_priv;
 	sfw_test_instance_t *tsi = tsu->tsu_instance;
@@ -874,8 +874,8 @@ sfw_test_rpc_done (srpc_client_rpc_t *rpc)
 
 	spin_lock(&tsi->tsi_lock);
 
-	LASSERT (sfw_test_active(tsi));
-	LASSERT (!list_empty(&rpc->crpc_list));
+	LASSERT(sfw_test_active(tsi));
+	LASSERT(!list_empty(&rpc->crpc_list));
 
 	list_del_init(&rpc->crpc_list);
 
@@ -909,13 +909,13 @@ sfw_create_test_rpc(sfw_test_unit_t *tsu, lnet_process_id_t peer,
 
 	spin_lock(&tsi->tsi_lock);
 
-	LASSERT (sfw_test_active(tsi));
+	LASSERT(sfw_test_active(tsi));
 
 	if (!list_empty(&tsi->tsi_free_rpcs)) {
 		/* pick request from buffer */
 		rpc = list_entry(tsi->tsi_free_rpcs.next,
 				     srpc_client_rpc_t, crpc_list);
-		LASSERT (nblk == rpc->crpc_bulk.bk_niov);
+		LASSERT(nblk == rpc->crpc_bulk.bk_niov);
 		list_del_init(&rpc->crpc_list);
 	}
 
@@ -943,20 +943,20 @@ sfw_create_test_rpc(sfw_test_unit_t *tsu, lnet_process_id_t peer,
 }
 
 static int
-sfw_run_test (swi_workitem_t *wi)
+sfw_run_test(swi_workitem_t *wi)
 {
 	sfw_test_unit_t     *tsu = wi->swi_workitem.wi_data;
 	sfw_test_instance_t *tsi = tsu->tsu_instance;
 	srpc_client_rpc_t   *rpc = NULL;
 
-	LASSERT (wi == &tsu->tsu_worker);
+	LASSERT(wi == &tsu->tsu_worker);
 
 	if (tsi->tsi_ops->tso_prep_rpc(tsu, tsu->tsu_dest, &rpc) != 0) {
-		LASSERT (rpc == NULL);
+		LASSERT(rpc == NULL);
 		goto test_done;
 	}
 
-	LASSERT (rpc != NULL);
+	LASSERT(rpc != NULL);
 
 	spin_lock(&tsi->tsi_lock);
 
@@ -993,7 +993,7 @@ test_done:
 }
 
 static int
-sfw_run_batch (sfw_batch_t *tsb)
+sfw_run_batch(sfw_batch_t *tsb)
 {
 	swi_workitem_t      *wi;
 	sfw_test_unit_t     *tsu;
@@ -1005,16 +1005,16 @@ sfw_run_batch (sfw_batch_t *tsb)
 		return 0;
 	}
 
-	list_for_each_entry (tsi, &tsb->bat_tests, tsi_list) {
+	list_for_each_entry(tsi, &tsb->bat_tests, tsi_list) {
 		if (!tsi->tsi_is_client) /* skip server instances */
 			continue;
 
-		LASSERT (!tsi->tsi_stopping);
-		LASSERT (!sfw_test_active(tsi));
+		LASSERT(!tsi->tsi_stopping);
+		LASSERT(!sfw_test_active(tsi));
 
 		atomic_inc(&tsb->bat_nactive);
 
-		list_for_each_entry (tsu, &tsi->tsi_units, tsu_list) {
+		list_for_each_entry(tsu, &tsi->tsi_units, tsu_list) {
 			atomic_inc(&tsi->tsi_nactive);
 			tsu->tsu_loop = tsi->tsi_loop;
 			wi = &tsu->tsu_worker;
@@ -1029,7 +1029,7 @@ sfw_run_batch (sfw_batch_t *tsb)
 }
 
 int
-sfw_stop_batch (sfw_batch_t *tsb, int force)
+sfw_stop_batch(sfw_batch_t *tsb, int force)
 {
 	sfw_test_instance_t *tsi;
 	srpc_client_rpc_t   *rpc;
@@ -1039,7 +1039,7 @@ sfw_stop_batch (sfw_batch_t *tsb, int force)
 		return 0;
 	}
 
-	list_for_each_entry (tsi, &tsb->bat_tests, tsi_list) {
+	list_for_each_entry(tsi, &tsb->bat_tests, tsi_list) {
 		spin_lock(&tsi->tsi_lock);
 
 		if (!tsi->tsi_is_client ||
@@ -1071,7 +1071,7 @@ sfw_stop_batch (sfw_batch_t *tsb, int force)
 }
 
 static int
-sfw_query_batch (sfw_batch_t *tsb, int testidx, srpc_batch_reply_t *reply)
+sfw_query_batch(sfw_batch_t *tsb, int testidx, srpc_batch_reply_t *reply)
 {
 	sfw_test_instance_t *tsi;
 
@@ -1083,7 +1083,7 @@ sfw_query_batch (sfw_batch_t *tsb, int testidx, srpc_batch_reply_t *reply)
 		return 0;
 	}
 
-	list_for_each_entry (tsi, &tsb->bat_tests, tsi_list) {
+	list_for_each_entry(tsi, &tsb->bat_tests, tsi_list) {
 		if (testidx-- > 1)
 			continue;
 
@@ -1095,7 +1095,7 @@ sfw_query_batch (sfw_batch_t *tsb, int testidx, srpc_batch_reply_t *reply)
 }
 
 void
-sfw_free_pages (srpc_server_rpc_t *rpc)
+sfw_free_pages(srpc_server_rpc_t *rpc)
 {
 	srpc_free_bulk(rpc->srpc_bulk);
 	rpc->srpc_bulk = NULL;
@@ -1116,7 +1116,7 @@ sfw_alloc_pages(struct srpc_server_rpc *rpc, int cpt, int npages, int len,
 }
 
 static int
-sfw_add_test (srpc_server_rpc_t *rpc)
+sfw_add_test(srpc_server_rpc_t *rpc)
 {
 	sfw_session_t     *sn = sfw_data.fw_session;
 	srpc_test_reply_t *reply = &rpc->srpc_replymsg.msg_body.tes_reply;
@@ -1147,7 +1147,7 @@ sfw_add_test (srpc_server_rpc_t *rpc)
 
 	bat = sfw_bid2batch(request->tsr_bid);
 	if (bat == NULL) {
-		CERROR ("Dropping RPC (%s) from %s under memory pressure.\n",
+		CERROR("Dropping RPC (%s) from %s under memory pressure.\n",
 			rpc->srpc_scd->scd_svc->sv_name,
 			libcfs_id2str(rpc->srpc_peer));
 		return -ENOMEM;
@@ -1175,7 +1175,7 @@ sfw_add_test (srpc_server_rpc_t *rpc)
 	}
 
 	rc = sfw_add_test_instance(bat, rpc);
-	CDEBUG (rc == 0 ? D_NET : D_WARNING,
+	CDEBUG(rc == 0 ? D_NET : D_WARNING,
 		"%s test: sv %d %s, loop %d, concur %d, ndest %d\n",
 		rc == 0 ? "Added" : "Failed to add", request->tsr_service,
 		request->tsr_is_client ? "client" : "server",
@@ -1186,7 +1186,7 @@ sfw_add_test (srpc_server_rpc_t *rpc)
 }
 
 static int
-sfw_control_batch (srpc_batch_reqst_t *request, srpc_batch_reply_t *reply)
+sfw_control_batch(srpc_batch_reqst_t *request, srpc_batch_reply_t *reply)
 {
 	sfw_session_t *sn = sfw_data.fw_session;
 	int	    rc = 0;
@@ -1285,7 +1285,7 @@ sfw_handle_server_rpc(struct srpc_server_rpc *rpc)
 
 	switch (sv->sv_id) {
 	default:
-		LBUG ();
+		LBUG();
 	case SRPC_SERVICE_TEST:
 		rc = sfw_add_test(rpc);
 		break;
@@ -1387,8 +1387,8 @@ sfw_create_rpc(lnet_process_id_t peer, int service,
 
 	spin_lock(&sfw_data.fw_lock);
 
-	LASSERT (!sfw_data.fw_shuttingdown);
-	LASSERT (service <= SRPC_FRAMEWORK_SERVICE_MAX_ID);
+	LASSERT(!sfw_data.fw_shuttingdown);
+	LASSERT(service <= SRPC_FRAMEWORK_SERVICE_MAX_ID);
 
 	if (nbulkiov == 0 && !list_empty(&sfw_data.fw_zombie_rpcs)) {
 		rpc = list_entry(sfw_data.fw_zombie_rpcs.next,
@@ -1416,13 +1416,13 @@ sfw_create_rpc(lnet_process_id_t peer, int service,
 }
 
 void
-sfw_unpack_message (srpc_msg_t *msg)
+sfw_unpack_message(srpc_msg_t *msg)
 {
 	if (msg->msg_magic == SRPC_MSG_MAGIC)
 		return; /* no flipping needed */
 
 	/* srpc module should guarantee I wouldn't get crap */
-	LASSERT (msg->msg_magic == __swab32(SRPC_MSG_MAGIC));
+	LASSERT(msg->msg_magic == __swab32(SRPC_MSG_MAGIC));
 
 	if (msg->msg_type == SRPC_MSG_STAT_REQST) {
 		srpc_stat_reqst_t *req = &msg->msg_body.stat_reqst;
@@ -1555,12 +1555,12 @@ sfw_unpack_message (srpc_msg_t *msg)
 		return;
 	}
 
-	LBUG ();
+	LBUG();
 	return;
 }
 
 void
-sfw_abort_rpc (srpc_client_rpc_t *rpc)
+sfw_abort_rpc(srpc_client_rpc_t *rpc)
 {
 	LASSERT(atomic_read(&rpc->crpc_refcount) > 0);
 	LASSERT(rpc->crpc_service <= SRPC_FRAMEWORK_SERVICE_MAX_ID);
@@ -1572,14 +1572,14 @@ sfw_abort_rpc (srpc_client_rpc_t *rpc)
 }
 
 void
-sfw_post_rpc (srpc_client_rpc_t *rpc)
+sfw_post_rpc(srpc_client_rpc_t *rpc)
 {
 	spin_lock(&rpc->crpc_lock);
 
-	LASSERT (!rpc->crpc_closed);
-	LASSERT (!rpc->crpc_aborted);
-	LASSERT (list_empty(&rpc->crpc_list));
-	LASSERT (!sfw_data.fw_shuttingdown);
+	LASSERT(!rpc->crpc_closed);
+	LASSERT(!rpc->crpc_aborted);
+	LASSERT(list_empty(&rpc->crpc_list));
+	LASSERT(!sfw_data.fw_shuttingdown);
 
 	rpc->crpc_timeout = rpc_timeout;
 	srpc_post_rpc(rpc);
@@ -1638,7 +1638,7 @@ extern void brw_init_test_service(void);
 
 
 int
-sfw_startup (void)
+sfw_startup(void)
 {
 	int	      i;
 	int	      rc;
@@ -1648,13 +1648,13 @@ sfw_startup (void)
 
 
 	if (session_timeout < 0) {
-		CERROR ("Session timeout must be non-negative: %d\n",
+		CERROR("Session timeout must be non-negative: %d\n",
 			session_timeout);
 		return -EINVAL;
 	}
 
 	if (rpc_timeout < 0) {
-		CERROR ("RPC timeout must be non-negative: %d\n",
+		CERROR("RPC timeout must be non-negative: %d\n",
 			rpc_timeout);
 		return -EINVAL;
 	}
@@ -1678,21 +1678,21 @@ sfw_startup (void)
 	brw_init_test_client();
 	brw_init_test_service();
 	rc = sfw_register_test(&brw_test_service, &brw_test_client);
-	LASSERT (rc == 0);
+	LASSERT(rc == 0);
 
 	ping_init_test_client();
 	ping_init_test_service();
 	rc = sfw_register_test(&ping_test_service, &ping_test_client);
-	LASSERT (rc == 0);
+	LASSERT(rc == 0);
 
 	error = 0;
-	list_for_each_entry (tsc, &sfw_data.fw_tests, tsc_list) {
+	list_for_each_entry(tsc, &sfw_data.fw_tests, tsc_list) {
 		sv = tsc->tsc_srv_service;
 
 		rc = srpc_add_service(sv);
-		LASSERT (rc != -EBUSY);
+		LASSERT(rc != -EBUSY);
 		if (rc != 0) {
-			CWARN ("Failed to add %s service: %d\n",
+			CWARN("Failed to add %s service: %d\n",
 			       sv->sv_name, rc);
 			error = rc;
 		}
@@ -1709,9 +1709,9 @@ sfw_startup (void)
 			sv->sv_bulk_ready = sfw_bulk_ready;
 
 		rc = srpc_add_service(sv);
-		LASSERT (rc != -EBUSY);
+		LASSERT(rc != -EBUSY);
 		if (rc != 0) {
-			CWARN ("Failed to add %s service: %d\n",
+			CWARN("Failed to add %s service: %d\n",
 			       sv->sv_name, rc);
 			error = rc;
 		}
@@ -1733,7 +1733,7 @@ sfw_startup (void)
 }
 
 void
-sfw_shutdown (void)
+sfw_shutdown(void)
 {
 	srpc_service_t	*sv;
 	sfw_test_case_t	*tsc;
@@ -1766,7 +1766,7 @@ sfw_shutdown (void)
 		srpc_remove_service(sv);
 	}
 
-	list_for_each_entry (tsc, &sfw_data.fw_tests, tsc_list) {
+	list_for_each_entry(tsc, &sfw_data.fw_tests, tsc_list) {
 		sv = tsc->tsc_srv_service;
 		srpc_shutdown_service(sv);
 		srpc_remove_service(sv);
-- 
1.8.3.2



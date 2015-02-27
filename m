X-GM-THRID: 4832889929728
X-Received: by 10.112.145.133 with SMTP id su5mr2309913lbb.17.1425070153171;
        Fri, 27 Feb 2015 12:49:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.71 with SMTP id fu7ls196255wib.29.canary; Fri, 27 Feb
 2015 12:49:12 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr2348023wjb.6.1425070152786;
        Fri, 27 Feb 2015 12:49:12 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id o3si186178wib.2.2015.02.27.12.49.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:49:12 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id k14so22731532wgh.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:49:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=shLShTEMbR6VMCc710BZUgLCHjhRi5uBNPR0RDMCBg4=;
        b=Wg+uQse5xafoSTjugdvjxoLi6AsZfonpPqBs2ukc+X6a5rZun8bcmEhoTcYEqlidMs
         XqsrjA+PYVX9N/OV1Q/IXswrUR6ediwP9ayoQoDryVYkz4jZR6Rc+7WVcF4oqt46NIsB
         wJnsDpyQIHSuyAoIN5ZzBsV620cNwIl8/upKIUJO3Nr3Ne4V2XVFmSRm7w23+MBeZgTl
         Y4BZojEZlgw1UYlJcfQLxkAYFaOz0WdlBNOju8xOaNVxiK/V0qygakZsPryICU+1jX/B
         qC5a8uE4JADYEMZFS0fewhzxySdnnjf2cW9ygxzbxBi9qDHT+UobTP147IvIaOcepGPq
         D7jA==
X-Received: by 10.194.79.226 with SMTP id m2mr31648892wjx.60.1425070152692;
        Fri, 27 Feb 2015 12:49:12 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id v6sm4375467wix.8.2015.02.27.12.49.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 12:49:12 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: selftest: Remove space after the name of that function
Date: Fri, 27 Feb 2015 22:49:04 +0200
Message-Id: <1425070144-17629-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with "space prohibited between function name
and open parenthesis" in rpc.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/rpc.c | 136 ++++++++++++++---------------
 1 file changed, 68 insertions(+), 68 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
index 1f7d9a6..10a7027 100644
--- a/drivers/staging/lustre/lnet/selftest/rpc.c
+++ b/drivers/staging/lustre/lnet/selftest/rpc.c
@@ -71,16 +71,16 @@ srpc_serv_portal(int svc_id)
 }
 
 /* forward ref's */
-int srpc_handle_rpc (swi_workitem_t *wi);
+int srpc_handle_rpc(swi_workitem_t *wi);
 
-void srpc_get_counters (srpc_counters_t *cnt)
+void srpc_get_counters(srpc_counters_t *cnt)
 {
 	spin_lock(&srpc_data.rpc_glock);
 	*cnt = srpc_data.rpc_counters;
 	spin_unlock(&srpc_data.rpc_glock);
 }
 
-void srpc_set_counters (const srpc_counters_t *cnt)
+void srpc_set_counters(const srpc_counters_t *cnt)
 {
 	spin_lock(&srpc_data.rpc_glock);
 	srpc_data.rpc_counters = *cnt;
@@ -102,12 +102,12 @@ srpc_add_bulk_page(srpc_bulk_t *bk, struct page *pg, int i, int nob)
 }
 
 void
-srpc_free_bulk (srpc_bulk_t *bk)
+srpc_free_bulk(srpc_bulk_t *bk)
 {
 	int	 i;
 	struct page *pg;
 
-	LASSERT (bk != NULL);
+	LASSERT(bk != NULL);
 
 	for (i = 0; i < bk->bk_niov; i++) {
 		pg = bk->bk_iovs[i].kiov_page;
@@ -160,7 +160,7 @@ srpc_alloc_bulk(int cpt, unsigned bulk_npg, unsigned bulk_len, int sink)
 }
 
 static inline __u64
-srpc_next_id (void)
+srpc_next_id(void)
 {
 	__u64 id;
 
@@ -335,7 +335,7 @@ srpc_add_service(struct srpc_service *sv)
 }
 
 int
-srpc_remove_service (srpc_service_t *sv)
+srpc_remove_service(srpc_service_t *sv)
 {
 	int id = sv->sv_id;
 
@@ -363,8 +363,8 @@ srpc_post_passive_rdma(int portal, int local, __u64 matchbits, void *buf,
 	rc = LNetMEAttach(portal, peer, matchbits, 0, LNET_UNLINK,
 			  local ? LNET_INS_LOCAL : LNET_INS_AFTER, &meh);
 	if (rc != 0) {
-		CERROR ("LNetMEAttach failed: %d\n", rc);
-		LASSERT (rc == -ENOMEM);
+		CERROR("LNetMEAttach failed: %d\n", rc);
+		LASSERT(rc == -ENOMEM);
 		return -ENOMEM;
 	}
 
@@ -377,15 +377,15 @@ srpc_post_passive_rdma(int portal, int local, __u64 matchbits, void *buf,
 
 	rc = LNetMDAttach(meh, md, LNET_UNLINK, mdh);
 	if (rc != 0) {
-		CERROR ("LNetMDAttach failed: %d\n", rc);
-		LASSERT (rc == -ENOMEM);
+		CERROR("LNetMDAttach failed: %d\n", rc);
+		LASSERT(rc == -ENOMEM);
 
 		rc = LNetMEUnlink(meh);
-		LASSERT (rc == 0);
+		LASSERT(rc == 0);
 		return -ENOMEM;
 	}
 
-	CDEBUG (D_NET,
+	CDEBUG(D_NET,
 		"Posted passive RDMA: peer %s, portal %d, matchbits %#llx\n",
 		libcfs_id2str(peer), portal, matchbits);
 	return 0;
@@ -408,8 +408,8 @@ srpc_post_active_rdma(int portal, __u64 matchbits, void *buf, int len,
 
 	rc = LNetMDBind(md, LNET_UNLINK, mdh);
 	if (rc != 0) {
-		CERROR ("LNetMDBind failed: %d\n", rc);
-		LASSERT (rc == -ENOMEM);
+		CERROR("LNetMDBind failed: %d\n", rc);
+		LASSERT(rc == -ENOMEM);
 		return -ENOMEM;
 	}
 
@@ -420,13 +420,13 @@ srpc_post_active_rdma(int portal, __u64 matchbits, void *buf, int len,
 		rc = LNetPut(self, *mdh, LNET_NOACK_REQ, peer,
 			     portal, matchbits, 0, 0);
 	} else {
-		LASSERT ((options & LNET_MD_OP_GET) != 0);
+		LASSERT((options & LNET_MD_OP_GET) != 0);
 
 		rc = LNetGet(self, *mdh, peer, portal, matchbits, 0);
 	}
 
 	if (rc != 0) {
-		CERROR ("LNet%s(%s, %d, %lld) failed: %d\n",
+		CERROR("LNet%s(%s, %d, %lld) failed: %d\n",
 			((options & LNET_MD_OP_PUT) != 0) ? "Put" : "Get",
 			libcfs_id2str(peer), portal, matchbits, rc);
 
@@ -434,9 +434,9 @@ srpc_post_active_rdma(int portal, __u64 matchbits, void *buf, int len,
 		 * with failure, so fall through and return success here.
 		 */
 		rc = LNetMDUnlink(*mdh);
-		LASSERT (rc == 0);
+		LASSERT(rc == 0);
 	} else {
-		CDEBUG (D_NET,
+		CDEBUG(D_NET,
 			"Posted active RDMA: peer %s, portal %u, matchbits %#llx\n",
 			libcfs_id2str(peer), portal, matchbits);
 	}
@@ -788,7 +788,7 @@ srpc_shutdown_service(srpc_service_t *sv)
 }
 
 static int
-srpc_send_request (srpc_client_rpc_t *rpc)
+srpc_send_request(srpc_client_rpc_t *rpc)
 {
 	srpc_event_t *ev = &rpc->crpc_reqstev;
 	int	   rc;
@@ -801,14 +801,14 @@ srpc_send_request (srpc_client_rpc_t *rpc)
 				     &rpc->crpc_reqstmsg, sizeof(srpc_msg_t),
 				     &rpc->crpc_reqstmdh, ev);
 	if (rc != 0) {
-		LASSERT (rc == -ENOMEM);
+		LASSERT(rc == -ENOMEM);
 		ev->ev_fired = 1;  /* no more event expected */
 	}
 	return rc;
 }
 
 static int
-srpc_prepare_reply (srpc_client_rpc_t *rpc)
+srpc_prepare_reply(srpc_client_rpc_t *rpc)
 {
 	srpc_event_t *ev = &rpc->crpc_replyev;
 	__u64	*id = &rpc->crpc_reqstmsg.msg_body.reqst.rpyid;
@@ -825,14 +825,14 @@ srpc_prepare_reply (srpc_client_rpc_t *rpc)
 				    LNET_MD_OP_PUT, rpc->crpc_dest,
 				    &rpc->crpc_replymdh, ev);
 	if (rc != 0) {
-		LASSERT (rc == -ENOMEM);
+		LASSERT(rc == -ENOMEM);
 		ev->ev_fired = 1;  /* no more event expected */
 	}
 	return rc;
 }
 
 static int
-srpc_prepare_bulk (srpc_client_rpc_t *rpc)
+srpc_prepare_bulk(srpc_client_rpc_t *rpc)
 {
 	srpc_bulk_t  *bk = &rpc->crpc_bulk;
 	srpc_event_t *ev = &rpc->crpc_bulkev;
@@ -840,7 +840,7 @@ srpc_prepare_bulk (srpc_client_rpc_t *rpc)
 	int	   rc;
 	int	   opt;
 
-	LASSERT (bk->bk_niov <= LNET_MAX_IOV);
+	LASSERT(bk->bk_niov <= LNET_MAX_IOV);
 
 	if (bk->bk_niov == 0) return 0; /* nothing to do */
 
@@ -857,14 +857,14 @@ srpc_prepare_bulk (srpc_client_rpc_t *rpc)
 				    &bk->bk_iovs[0], bk->bk_niov, opt,
 				    rpc->crpc_dest, &bk->bk_mdh, ev);
 	if (rc != 0) {
-		LASSERT (rc == -ENOMEM);
+		LASSERT(rc == -ENOMEM);
 		ev->ev_fired = 1;  /* no more event expected */
 	}
 	return rc;
 }
 
 static int
-srpc_do_bulk (srpc_server_rpc_t *rpc)
+srpc_do_bulk(srpc_server_rpc_t *rpc)
 {
 	srpc_event_t  *ev = &rpc->srpc_ev;
 	srpc_bulk_t   *bk = rpc->srpc_bulk;
@@ -872,7 +872,7 @@ srpc_do_bulk (srpc_server_rpc_t *rpc)
 	int	    rc;
 	int	    opt;
 
-	LASSERT (bk != NULL);
+	LASSERT(bk != NULL);
 
 	opt = bk->bk_sink ? LNET_MD_OP_GET : LNET_MD_OP_PUT;
 	opt |= LNET_MD_KIOV;
@@ -898,11 +898,11 @@ srpc_server_rpc_done(srpc_server_rpc_t *rpc, int status)
 	struct srpc_service	*sv  = scd->scd_svc;
 	srpc_buffer_t		*buffer;
 
-	LASSERT (status != 0 || rpc->srpc_wi.swi_state == SWI_STATE_DONE);
+	LASSERT(status != 0 || rpc->srpc_wi.swi_state == SWI_STATE_DONE);
 
 	rpc->srpc_status = status;
 
-	CDEBUG_LIMIT (status == 0 ? D_NET : D_NETERROR,
+	CDEBUG_LIMIT(status == 0 ? D_NET : D_NETERROR,
 		"Server RPC %p done: service %s, peer %s, status %s:%d\n",
 		rpc, sv->sv_name, libcfs_id2str(rpc->srpc_peer),
 		swi_state2str(rpc->srpc_wi.swi_state), status);
@@ -985,7 +985,7 @@ srpc_handle_rpc(swi_workitem_t *wi)
 
 	switch (wi->swi_state) {
 	default:
-		LBUG ();
+		LBUG();
 	case SWI_STATE_NEWBORN: {
 		srpc_msg_t	   *msg;
 		srpc_generic_reply_t *reply;
@@ -1023,12 +1023,12 @@ srpc_handle_rpc(swi_workitem_t *wi)
 			if (rc == 0)
 				return 0; /* wait for bulk */
 
-			LASSERT (ev->ev_fired);
+			LASSERT(ev->ev_fired);
 			ev->ev_status = rc;
 		}
 	}
 	case SWI_STATE_BULK_STARTED:
-		LASSERT (rpc->srpc_bulk == NULL || ev->ev_fired);
+		LASSERT(rpc->srpc_bulk == NULL || ev->ev_fired);
 
 		if (rpc->srpc_bulk != NULL) {
 			rc = ev->ev_status;
@@ -1055,7 +1055,7 @@ srpc_handle_rpc(swi_workitem_t *wi)
 			       rpc, rpc->srpc_bulk, sv->sv_id);
 			CERROR("Event: status %d, type %d, lnet %d\n",
 			       ev->ev_status, ev->ev_type, ev->ev_lnet);
-			LASSERT (ev->ev_fired);
+			LASSERT(ev->ev_fired);
 		}
 
 		wi->swi_state = SWI_STATE_DONE;
@@ -1067,11 +1067,11 @@ srpc_handle_rpc(swi_workitem_t *wi)
 }
 
 static void
-srpc_client_rpc_expired (void *data)
+srpc_client_rpc_expired(void *data)
 {
 	srpc_client_rpc_t *rpc = data;
 
-	CWARN ("Client RPC expired: service %d, peer %s, timeout %d.\n",
+	CWARN("Client RPC expired: service %d, peer %s, timeout %d.\n",
 	       rpc->crpc_service, libcfs_id2str(rpc->crpc_dest),
 	       rpc->crpc_timeout);
 
@@ -1088,7 +1088,7 @@ srpc_client_rpc_expired (void *data)
 }
 
 inline void
-srpc_add_client_rpc_timer (srpc_client_rpc_t *rpc)
+srpc_add_client_rpc_timer(srpc_client_rpc_t *rpc)
 {
 	stt_timer_t *timer = &rpc->crpc_timer;
 
@@ -1109,7 +1109,7 @@ srpc_add_client_rpc_timer (srpc_client_rpc_t *rpc)
  * Upon exit the RPC expiry timer is not queued and the handler is not
  * running on any CPU. */
 static void
-srpc_del_client_rpc_timer (srpc_client_rpc_t *rpc)
+srpc_del_client_rpc_timer(srpc_client_rpc_t *rpc)
 {
 	/* timer not planted or already exploded */
 	if (rpc->crpc_timeout == 0)
@@ -1130,7 +1130,7 @@ srpc_del_client_rpc_timer (srpc_client_rpc_t *rpc)
 }
 
 static void
-srpc_client_rpc_done (srpc_client_rpc_t *rpc, int status)
+srpc_client_rpc_done(srpc_client_rpc_t *rpc, int status)
 {
 	swi_workitem_t *wi = &rpc->crpc_wi;
 
@@ -1144,7 +1144,7 @@ srpc_client_rpc_done (srpc_client_rpc_t *rpc, int status)
 
 	srpc_del_client_rpc_timer(rpc);
 
-	CDEBUG_LIMIT ((status == 0) ? D_NET : D_NETERROR,
+	CDEBUG_LIMIT((status == 0) ? D_NET : D_NETERROR,
 		"Client RPC done: service %d, peer %s, status %s:%d:%d\n",
 		rpc->crpc_service, libcfs_id2str(rpc->crpc_dest),
 		swi_state2str(wi->swi_state), rpc->crpc_aborted, status);
@@ -1157,7 +1157,7 @@ srpc_client_rpc_done (srpc_client_rpc_t *rpc, int status)
 	 *   scheduling me.
 	 * Cancel pending schedules and prevent future schedule attempts:
 	 */
-	LASSERT (!srpc_event_pending(rpc));
+	LASSERT(!srpc_event_pending(rpc));
 	swi_exit_workitem(wi);
 
 	spin_unlock(&rpc->crpc_lock);
@@ -1168,7 +1168,7 @@ srpc_client_rpc_done (srpc_client_rpc_t *rpc, int status)
 
 /* sends an outgoing RPC */
 int
-srpc_send_rpc (swi_workitem_t *wi)
+srpc_send_rpc(swi_workitem_t *wi)
 {
 	int		rc = 0;
 	srpc_client_rpc_t *rpc;
@@ -1179,8 +1179,8 @@ srpc_send_rpc (swi_workitem_t *wi)
 
 	rpc = wi->swi_workitem.wi_data;
 
-	LASSERT (rpc != NULL);
-	LASSERT (wi == &rpc->crpc_wi);
+	LASSERT(rpc != NULL);
+	LASSERT(wi == &rpc->crpc_wi);
 
 	reply = &rpc->crpc_replymsg;
 	do_bulk = rpc->crpc_bulk.bk_niov > 0;
@@ -1196,9 +1196,9 @@ srpc_send_rpc (swi_workitem_t *wi)
 
 	switch (wi->swi_state) {
 	default:
-		LBUG ();
+		LBUG();
 	case SWI_STATE_NEWBORN:
-		LASSERT (!srpc_event_pending(rpc));
+		LASSERT(!srpc_event_pending(rpc));
 
 		rc = srpc_prepare_reply(rpc);
 		if (rc != 0) {
@@ -1292,7 +1292,7 @@ abort:
 }
 
 srpc_client_rpc_t *
-srpc_create_client_rpc (lnet_process_id_t peer, int service,
+srpc_create_client_rpc(lnet_process_id_t peer, int service,
 			int nbulkiov, int bulklen,
 			void (*rpc_done)(srpc_client_rpc_t *),
 			void (*rpc_fini)(srpc_client_rpc_t *), void *priv)
@@ -1311,15 +1311,15 @@ srpc_create_client_rpc (lnet_process_id_t peer, int service,
 
 /* called with rpc->crpc_lock held */
 void
-srpc_abort_rpc (srpc_client_rpc_t *rpc, int why)
+srpc_abort_rpc(srpc_client_rpc_t *rpc, int why)
 {
-	LASSERT (why != 0);
+	LASSERT(why != 0);
 
 	if (rpc->crpc_aborted || /* already aborted */
 	    rpc->crpc_closed)    /* callback imminent */
 		return;
 
-	CDEBUG (D_NET,
+	CDEBUG(D_NET,
 		"Aborting RPC: service %d, peer %s, state %s, why %d\n",
 		rpc->crpc_service, libcfs_id2str(rpc->crpc_dest),
 		swi_state2str(rpc->crpc_wi.swi_state), why);
@@ -1332,12 +1332,12 @@ srpc_abort_rpc (srpc_client_rpc_t *rpc, int why)
 
 /* called with rpc->crpc_lock held */
 void
-srpc_post_rpc (srpc_client_rpc_t *rpc)
+srpc_post_rpc(srpc_client_rpc_t *rpc)
 {
-	LASSERT (!rpc->crpc_aborted);
-	LASSERT (srpc_data.rpc_state == SRPC_STATE_RUNNING);
+	LASSERT(!rpc->crpc_aborted);
+	LASSERT(srpc_data.rpc_state == SRPC_STATE_RUNNING);
 
-	CDEBUG (D_NET, "Posting RPC: peer %s, service %d, timeout %d\n",
+	CDEBUG(D_NET, "Posting RPC: peer %s, service %d, timeout %d\n",
 		libcfs_id2str(rpc->crpc_dest), rpc->crpc_service,
 		rpc->crpc_timeout);
 
@@ -1403,7 +1403,7 @@ srpc_lnet_ev_handler(lnet_event_t *ev)
 	srpc_msg_t	*msg;
 	srpc_msg_type_t    type;
 
-	LASSERT (!in_interrupt());
+	LASSERT(!in_interrupt());
 
 	if (ev->status != 0) {
 		spin_lock(&srpc_data.rpc_glock);
@@ -1417,7 +1417,7 @@ srpc_lnet_ev_handler(lnet_event_t *ev)
 	default:
 		CERROR("Unknown event: status %d, type %d, lnet %d\n",
 		       rpcev->ev_status, rpcev->ev_type, rpcev->ev_lnet);
-		LBUG ();
+		LBUG();
 	case SRPC_REQUEST_SENT:
 		if (ev->status == 0 && ev->type != LNET_EVENT_UNLINK) {
 			spin_lock(&srpc_data.rpc_glock);
@@ -1436,7 +1436,7 @@ srpc_lnet_ev_handler(lnet_event_t *ev)
 			       &crpc->crpc_replyev, &crpc->crpc_bulkev);
 			CERROR("Bad event: status %d, type %d, lnet %d\n",
 			       rpcev->ev_status, rpcev->ev_type, rpcev->ev_lnet);
-			LBUG ();
+			LBUG();
 		}
 
 		spin_lock(&crpc->crpc_lock);
@@ -1458,10 +1458,10 @@ srpc_lnet_ev_handler(lnet_event_t *ev)
 
 		spin_lock(&scd->scd_lock);
 
-		LASSERT (ev->unlinked);
-		LASSERT (ev->type == LNET_EVENT_PUT ||
+		LASSERT(ev->unlinked);
+		LASSERT(ev->type == LNET_EVENT_PUT ||
 			 ev->type == LNET_EVENT_UNLINK);
-		LASSERT (ev->type != LNET_EVENT_UNLINK ||
+		LASSERT(ev->type != LNET_EVENT_UNLINK ||
 			 sv->sv_shuttingdown);
 
 		buffer = container_of(ev->md.start, srpc_buffer_t, buf_msg);
@@ -1536,7 +1536,7 @@ srpc_lnet_ev_handler(lnet_event_t *ev)
 		break;
 
 	case SRPC_BULK_GET_RPLD:
-		LASSERT (ev->type == LNET_EVENT_SEND ||
+		LASSERT(ev->type == LNET_EVENT_SEND ||
 			 ev->type == LNET_EVENT_REPLY ||
 			 ev->type == LNET_EVENT_UNLINK);
 
@@ -1574,7 +1574,7 @@ srpc_lnet_ev_handler(lnet_event_t *ev)
 
 
 int
-srpc_startup (void)
+srpc_startup(void)
 {
 	int rc;
 
@@ -1590,7 +1590,7 @@ srpc_startup (void)
 
 	rc = LNetNIInit(LUSTRE_SRV_LNET_PID);
 	if (rc < 0) {
-		CERROR ("LNetNIInit() has failed: %d\n", rc);
+		CERROR("LNetNIInit() has failed: %d\n", rc);
 		return rc;
 	}
 
@@ -1622,7 +1622,7 @@ bail:
 }
 
 void
-srpc_shutdown (void)
+srpc_shutdown(void)
 {
 	int i;
 	int rc;
@@ -1633,14 +1633,14 @@ srpc_shutdown (void)
 
 	switch (state) {
 	default:
-		LBUG ();
+		LBUG();
 	case SRPC_STATE_RUNNING:
 		spin_lock(&srpc_data.rpc_glock);
 
 		for (i = 0; i <= SRPC_SERVICE_MAX_ID; i++) {
 			srpc_service_t *sv = srpc_data.rpc_services[i];
 
-			LASSERTF (sv == NULL,
+			LASSERTF(sv == NULL,
 				  "service not empty: id %d, name %s\n",
 				  i, sv->sv_name);
 		}
@@ -1652,9 +1652,9 @@ srpc_shutdown (void)
 	case SRPC_STATE_EQ_INIT:
 		rc = LNetClearLazyPortal(SRPC_FRAMEWORK_REQUEST_PORTAL);
 		rc = LNetClearLazyPortal(SRPC_REQUEST_PORTAL);
-		LASSERT (rc == 0);
+		LASSERT(rc == 0);
 		rc = LNetEQFree(srpc_data.rpc_lnet_eq);
-		LASSERT (rc == 0); /* the EQ should have no user by now */
+		LASSERT(rc == 0); /* the EQ should have no user by now */
 
 	case SRPC_STATE_NI_INIT:
 		LNetNIFini();
-- 
1.9.1



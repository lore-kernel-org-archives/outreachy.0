X-GM-THRID: 7913154281472
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d335c0b66309892f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.246.37 with SMTP id xt5mr49347846obc.25.1426263419098;
        Fri, 13 Mar 2015 09:16:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.85 with SMTP id 79ls1695308qgi.9.gmail; Fri, 13 Mar
 2015 09:16:58 -0700 (PDT)
X-Received: by 10.236.1.200 with SMTP id 48mr48946913yhd.41.1426263418903;
        Fri, 13 Mar 2015 09:16:58 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id gu4si454545pac.1.2015.03.13.09.16.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 09:16:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id rd3so30584152pab.6
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 09:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Nx8LR0eSm/E2Dfj3G1P9BDe/MHhLuHO44NRqBnaYW94=;
        b=ka1xcEAKzGM8yIJq3uBBl8/W7m2vcLxBu3OvUMptRigoSYw2keh/lNIqM9QGFyDk2+
         VB3IEAk3JFFs8Ecg6JMJK/7pWewTwsYev7AKsgUy/XYigCFE4xUIbwOuEQeNuxMLkrSF
         jzlgn7Cc2vmZAcVolsIuoDLbdfNhAgYd0+bU01JC7gr2z9d8b483NKngF1dVbvvUSxf3
         fQ+XvmmgO6xxqZe4I3BhY7DQ3g7pb9v1EfgbbHu0zvkudLAq02ONzMWtvLn67BFpp1zh
         EfQiYrSD+BqPm6PzEizdWWKuiRxZJ1Lc7uPrsZ9KoWwKKHRu7v/mVvN57i4z+3xVZPc+
         Ixhg==
X-Received: by 10.70.88.105 with SMTP id bf9mr104624505pdb.77.1426263418654;
        Fri, 13 Mar 2015 09:16:58 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([110.224.242.124])
        by mx.google.com with ESMTPSA id 7sm4255579pdj.16.2015.03.13.09.16.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 09:16:57 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 4/4] Staging: lustre: Iterate list using list_for_each_entry
Date: Fri, 13 Mar 2015 21:47:33 +0530
Message-Id: <1426263453-26331-4-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426263453-26331-1-git-send-email-somyaanand214@gmail.com>
References: <1426263453-26331-1-git-send-email-somyaanand214@gmail.com>

Code using doubly linked list is iterated generally  using list_empty and
list_entry functions, but it can be better written using list_for_each_entry
macro.

This patch replaces the while loop containing list_empty and list_entry with
list_for_each_entry, making sure to keep the logic of code intact. This
transformation is done by using the following coccinelle script.

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry;
@@

- while (list_empty(&E1) == 0) {
+ list_for_each_entry (I1, &E1, I2) {
        ...when != T *I1;
-       I1 = list_entry(E1.next, T, I2);
    ...
}

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    |  4 +--
 .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 15 +++--------
 .../staging/lustre/lnet/klnds/socklnd/socklnd.c    |  8 ++----
 .../staging/lustre/lnet/klnds/socklnd/socklnd_cb.c |  9 ++-----
 .../lustre/lnet/klnds/socklnd/socklnd_proto.c      |  3 +--
 drivers/staging/lustre/lnet/lnet/api-ni.c          | 14 +++-------
 drivers/staging/lustre/lnet/lnet/config.c          |  4 +--
 drivers/staging/lustre/lnet/lnet/lib-move.c        |  7 ++---
 drivers/staging/lustre/lnet/lnet/lib-msg.c         |  4 +--
 drivers/staging/lustre/lnet/lnet/lib-ptl.c         |  4 +--
 drivers/staging/lustre/lnet/lnet/peer.c            |  4 +--
 drivers/staging/lustre/lnet/lnet/router.c          |  8 ++----
 drivers/staging/lustre/lnet/selftest/conrpc.c      |  3 +--
 drivers/staging/lustre/lnet/selftest/console.c     | 25 +++++------------
 drivers/staging/lustre/lnet/selftest/framework.c   | 20 ++++----------
 drivers/staging/lustre/lnet/selftest/rpc.c         |  5 +---
 drivers/staging/lustre/lustre/libcfs/workitem.c    |  4 +--
 drivers/staging/lustre/lustre/llite/llite_rmtacl.c |  8 ++----
 .../lustre/lustre/obdclass/lprocfs_status.c        |  8 ++----
 .../staging/lustre/lustre/obdclass/lustre_peer.c   |  4 +--
 drivers/staging/lustre/lustre/osc/osc_cache.c      | 11 +++-----
 drivers/staging/lustre/lustre/osc/osc_page.c       |  4 +--
 drivers/staging/lustre/lustre/ptlrpc/pinger.c      |  5 +---
 drivers/staging/lustre/lustre/ptlrpc/sec_gc.c      |  4 +--
 drivers/staging/lustre/lustre/ptlrpc/service.c     | 31 +++++-----------------
 25 files changed, 54 insertions(+), 162 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 109f44c..5988048 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -1896,9 +1896,7 @@ kiblnd_destroy_pmr_pool(kib_pool_t *pool)
 
 	LASSERT(pool->po_allocated == 0);
 
-	while (!list_empty(&pool->po_free_list)) {
-		pmr = list_entry(pool->po_free_list.next,
-				     kib_phys_mr_t, pmr_list);
+	list_for_each_entry(pmr, &pool->po_free_list, pmr_list) {
 
 		LASSERT(pmr->pmr_mr == NULL);
 		list_del(&pmr->pmr_list);
diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
index c762dbe..ae00e7a 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
@@ -1941,9 +1941,7 @@ kiblnd_handle_early_rxs(kib_conn_t *conn)
 	LASSERT(conn->ibc_state >= IBLND_CONN_ESTABLISHED);
 
 	write_lock_irqsave(&kiblnd_data.kib_global_lock, flags);
-	while (!list_empty(&conn->ibc_early_rxs)) {
-		rx = list_entry(conn->ibc_early_rxs.next,
-				    kib_rx_t, rx_list);
+	list_for_each_entry(rx, &conn->ibc_early_rxs, rx_list) {
 		list_del(&rx->rx_list);
 		write_unlock_irqrestore(&kiblnd_data.kib_global_lock, flags);
 
@@ -2150,8 +2148,7 @@ kiblnd_connreq_done(kib_conn_t *conn, int status)
 
 	/* Schedule blocked txs */
 	spin_lock(&conn->ibc_lock);
-	while (!list_empty(&txs)) {
-		tx = list_entry(txs.next, kib_tx_t, tx_list);
+	list_for_each_entry(tx, &txs, tx_list) {
 		list_del(&tx->tx_list);
 
 		kiblnd_queue_tx_locked(tx, conn);
@@ -3080,9 +3077,7 @@ kiblnd_check_conns(int idx)
 	/* Handle timeout by closing the whole
 	 * connection. We can only be sure RDMA activity
 	 * has ceased once the QP has been modified. */
-	while (!list_empty(&closes)) {
-		conn = list_entry(closes.next,
-				      kib_conn_t, ibc_connd_list);
+	list_for_each_entry(conn, &closes, ibc_connd_list) {
 		list_del(&conn->ibc_connd_list);
 		kiblnd_close_conn(conn, -ETIMEDOUT);
 		kiblnd_conn_decref(conn);
@@ -3091,9 +3086,7 @@ kiblnd_check_conns(int idx)
 	/* In case we have enough credits to return via a
 	 * NOOP, but there were no non-blocking tx descs
 	 * free to do it last time... */
-	while (!list_empty(&checksends)) {
-		conn = list_entry(checksends.next,
-				      kib_conn_t, ibc_connd_list);
+	list_for_each_entry(conn, &checksends, ibc_connd_list) {
 		list_del(&conn->ibc_connd_list);
 		kiblnd_check_sends(conn);
 		kiblnd_conn_decref(conn);
diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index f815bb8..5adf6c4 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -997,7 +997,6 @@ ksocknal_connecting(ksock_peer_t *peer, __u32 ipaddr)
 	ksock_route_t   *route;
 
 	list_for_each_entry(route, &peer->ksnp_routes, ksnr_list) {
-
 		if (route->ksnr_ipaddr == ipaddr)
 			return route->ksnr_connecting;
 	}
@@ -1531,9 +1530,7 @@ ksocknal_finalize_zcreq(ksock_conn_t *conn)
 
 	spin_unlock(&peer->ksnp_lock);
 
-	while (!list_empty(&zlist)) {
-		tx = list_entry(zlist.next, ksock_tx_t, tx_zc_list);
-
+	list_for_each_entry(tx, &zlist, tx_zc_list) {
 		list_del(&tx->tx_zc_list);
 		ksocknal_tx_decref(tx);
 	}
@@ -2234,8 +2231,7 @@ ksocknal_free_buffers(void)
 		list_del_init(&ksocknal_data.ksnd_idle_noop_txs);
 		spin_unlock(&ksocknal_data.ksnd_tx_lock);
 
-		while (!list_empty(&zlist)) {
-			tx = list_entry(zlist.next, ksock_tx_t, tx_list);
+		list_for_each_entry(tx, &zlist, tx_list) {
 			list_del(&tx->tx_list);
 			LIBCFS_FREE(tx, tx->tx_desc_size);
 		}
diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
index 92760fe..931237b 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
@@ -2318,10 +2318,7 @@ ksocknal_flush_stale_txs(ksock_peer_t *peer)
 
 	write_lock_bh(&ksocknal_data.ksnd_global_lock);
 
-	while (!list_empty (&peer->ksnp_tx_queue)) {
-		tx = list_entry (peer->ksnp_tx_queue.next,
-				     ksock_tx_t, tx_list);
-
+	list_for_each_entry(tx, &peer->ksnp_tx_queue, tx_list) {
 		if (!cfs_time_aftereq(cfs_time_current(),
 				      tx->tx_deadline))
 			break;
@@ -2556,9 +2553,7 @@ ksocknal_reaper (void *arg)
 
 		/* reschedule all the connections that stalled with ENOMEM... */
 		nenomem_conns = 0;
-		while (!list_empty (&enomem_conns)) {
-			conn = list_entry (enomem_conns.next,
-					       ksock_conn_t, ksnc_tx_list);
+		list_for_each_entry(conn, &enomem_conns, ksnc_tx_list) {
 			list_del (&conn->ksnc_tx_list);
 
 			sched = conn->ksnc_scheduler;
diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
index 8596581..711f0c9 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
@@ -440,8 +440,7 @@ ksocknal_handle_zcack(ksock_conn_t *conn, __u64 cookie1, __u64 cookie2)
 
 	spin_unlock(&peer->ksnp_lock);
 
-	while (!list_empty(&zlist)) {
-		tx = list_entry(zlist.next, ksock_tx_t, tx_zc_list);
+	list_for_each_entry(tx, &zlist, tx_zc_list) {
 		list_del(&tx->tx_zc_list);
 		ksocknal_tx_decref(tx);
 	}
diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
index faceb95..7543711 100644
--- a/drivers/staging/lustre/lnet/lnet/api-ni.c
+++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
@@ -923,9 +923,7 @@ lnet_shutdown_lndnis(void)
 	the_lnet.ln_shutdown = 1;	/* flag shutdown */
 
 	/* Unlink NIs from the global table */
-	while (!list_empty(&the_lnet.ln_nis)) {
-		ni = list_entry(the_lnet.ln_nis.next,
-				    lnet_ni_t, ni_list);
+	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
 		/* move it to zombie list and nobody can find it anymore */
 		list_move(&ni->ni_list, &the_lnet.ln_nis_zombie);
 		lnet_ni_decref_locked(ni, 0);	/* drop ln_nis' ref */
@@ -963,12 +961,10 @@ lnet_shutdown_lndnis(void)
 	/* Now wait for the NI's I just nuked to show up on ln_zombie_nis
 	 * and shut them down in guaranteed thread context */
 	i = 2;
-	while (!list_empty(&the_lnet.ln_nis_zombie)) {
+	list_for_each_entry(ni, &the_lnet.ln_nis_zombie, ni_list) {
 		int	*ref;
 		int	j;
 
-		ni = list_entry(the_lnet.ln_nis_zombie.next,
-				    lnet_ni_t, ni_list);
 		list_del_init(&ni->ni_list);
 		cfs_percpt_for_each(ref, j, ni->ni_refs) {
 			if (*ref == 0)
@@ -1044,8 +1040,7 @@ lnet_startup_lndnis(void)
 	if (rc != 0)
 		goto failed;
 
-	while (!list_empty(&nilist)) {
-		ni = list_entry(nilist.next, lnet_ni_t, ni_list);
+	list_for_each_entry(ni, &nilist, ni_list) {
 		lnd_type = LNET_NETTYP(LNET_NIDNET(ni->ni_nid));
 
 		LASSERT(libcfs_isknown_lnd(lnd_type));
@@ -1155,8 +1150,7 @@ lnet_startup_lndnis(void)
  failed:
 	lnet_shutdown_lndnis();
 
-	while (!list_empty(&nilist)) {
-		ni = list_entry(nilist.next, lnet_ni_t, ni_list);
+	list_for_each_entry(ni, &nilist, ni_list) {
 		list_del(&ni->ni_list);
 		lnet_ni_free(ni);
 	}
diff --git a/drivers/staging/lustre/lnet/lnet/config.c b/drivers/staging/lustre/lnet/lnet/config.c
index af171e2..0986b36 100644
--- a/drivers/staging/lustre/lnet/lnet/config.c
+++ b/drivers/staging/lustre/lnet/lnet/config.c
@@ -1011,9 +1011,7 @@ lnet_match_networks(char **networksp, char *ip2nets, __u32 *ipaddrs, int nip)
 	len = 0;
 	rc = 0;
 
-	while (!list_empty(&raw_entries)) {
-		tb = list_entry(raw_entries.next, lnet_text_buf_t,
-				    ltb_list);
+	list_for_each_entry(tb, &raw_entries, ltb_list) {
 
 		strncpy(source, tb->ltb_text, sizeof(source)-1);
 		source[sizeof(source)-1] = 0;
diff --git a/drivers/staging/lustre/lnet/lnet/lib-move.c b/drivers/staging/lustre/lnet/lnet/lib-move.c
index 0f53c76..b1baf8b 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-move.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
@@ -90,9 +90,7 @@ lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)
 
 	lnet_net_unlock(0);
 
-	while (!list_empty(&cull)) {
-		tp = list_entry(cull.next, lnet_test_peer_t, tp_list);
-
+	list_for_each_entry(tp, &cull, tp_list) {
 		list_del(&tp->tp_list);
 		LIBCFS_FREE(tp, sizeof(*tp));
 	}
@@ -147,8 +145,7 @@ fail_peer(lnet_nid_t nid, int outgoing)
 
 	lnet_net_unlock(0);
 
-	while (!list_empty(&cull)) {
-		tp = list_entry(cull.next, lnet_test_peer_t, tp_list);
+	list_for_each_entry(tp, &cull, tp_list) {
 		list_del(&tp->tp_list);
 
 		LIBCFS_FREE(tp, sizeof(*tp));
diff --git a/drivers/staging/lustre/lnet/lnet/lib-msg.c b/drivers/staging/lustre/lnet/lnet/lib-msg.c
index a46ccbf..14417d9 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-msg.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-msg.c
@@ -510,9 +510,7 @@ lnet_finalize(lnet_ni_t *ni, lnet_msg_t *msg, int status)
 
 	container->msc_finalizers[my_slot] = current;
 
-	while (!list_empty(&container->msc_finalizing)) {
-		msg = list_entry(container->msc_finalizing.next,
-				     lnet_msg_t, msg_list);
+	list_for_each_entry(msg, &container->msc_finalizing, msg_list) {
 
 		list_del(&msg->msg_list);
 
diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
index 3ba0da9..6b0c63f 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
@@ -733,9 +733,7 @@ lnet_ptl_cleanup(struct lnet_portal *ptl)
 		mhash = mtable->mt_mhash;
 		/* cleanup ME */
 		for (j = 0; j < LNET_MT_HASH_SIZE + 1; j++) {
-			while (!list_empty(&mhash[j])) {
-				me = list_entry(mhash[j].next,
-						    lnet_me_t, me_list);
+			list_for_each_entry(me, &mhash[j], me_list) {
 				CERROR("Active ME %p on exit\n", me);
 				list_del(&me->me_list);
 				lnet_me_free(me);
diff --git a/drivers/staging/lustre/lnet/lnet/peer.c b/drivers/staging/lustre/lnet/lnet/peer.c
index c93ae85..76cbc12 100644
--- a/drivers/staging/lustre/lnet/lnet/peer.c
+++ b/drivers/staging/lustre/lnet/lnet/peer.c
@@ -153,9 +153,7 @@ lnet_peer_tables_cleanup(void)
 
 		lnet_net_unlock(i);
 
-		while (!list_empty(&deathrow)) {
-			lp = list_entry(deathrow.next,
-					    lnet_peer_t, lp_hashlist);
+		list_for_each_entry(lp, &deathrow, lp_hashlist) {
 			list_del(&lp->lp_hashlist);
 			LIBCFS_FREE(lp, sizeof(*lp));
 		}
diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index c0a6aeb..0f4ce0b 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -1145,9 +1145,7 @@ lnet_prune_rc_data(int wait_unlink)
 
 		lnet_net_unlock(LNET_LOCK_EX);
 
-		while (!list_empty(&head)) {
-			rcd = list_entry(head.next,
-					     lnet_rc_data_t, rcd_list);
+		list_for_each_entry(rcd, &head, rcd_list) {
 			list_del_init(&rcd->rcd_list);
 			lnet_destroy_rc_data(rcd);
 		}
@@ -1294,11 +1292,9 @@ lnet_rtrpool_free_bufs(lnet_rtrbufpool_t *rbp)
 	LASSERT(list_empty(&rbp->rbp_msgs));
 	LASSERT(rbp->rbp_credits == rbp->rbp_nbuffers);
 
-	while (!list_empty(&rbp->rbp_bufs)) {
+	list_for_each_entry(rb, &rbp->rbp_bufs, rb_list) {
 		LASSERT(rbp->rbp_credits > 0);
 
-		rb = list_entry(rbp->rbp_bufs.next,
-				    lnet_rtrbuf_t, rb_list);
 		list_del(&rb->rb_list);
 		lnet_destroy_rtrbuf(rb, npages);
 		nbuffers++;
diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c b/drivers/staging/lustre/lnet/selftest/conrpc.c
index 77f02b7..27473c8 100644
--- a/drivers/staging/lustre/lnet/selftest/conrpc.c
+++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
@@ -1364,8 +1364,7 @@ lstcon_rpc_cleanup_wait(void)
 
 	spin_unlock(&console_session.ses_rpc_lock);
 
-	while (!list_empty(&zlist)) {
-		crpc = list_entry(zlist.next, lstcon_rpc_t, crp_link);
+	list_for_each_entry(crpc, &zlist, crp_link) {
 
 		list_del(&crpc->crp_link);
 		LIBCFS_FREE(crpc, sizeof(lstcon_rpc_t));
diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
index 2b5f53c..da7c2d2 100644
--- a/drivers/staging/lustre/lnet/selftest/console.c
+++ b/drivers/staging/lustre/lnet/selftest/console.c
@@ -334,9 +334,7 @@ lstcon_group_move(lstcon_group_t *old, lstcon_group_t *new)
 {
 	lstcon_ndlink_t *ndl;
 
-	while (!list_empty(&old->grp_ndl_list)) {
-		ndl = list_entry(old->grp_ndl_list.next,
-				     lstcon_ndlink_t, ndl_link);
+	list_for_each_entry(ndl, &old->grp_ndl_list, ndl_link) {
 		lstcon_group_ndlink_move(old, new, ndl);
 	}
 }
@@ -1090,9 +1088,7 @@ lstcon_batch_destroy(lstcon_batch_t *bat)
 
 	list_del(&bat->bat_link);
 
-	while (!list_empty(&bat->bat_test_list)) {
-		test = list_entry(bat->bat_test_list.next,
-				      lstcon_test_t, tes_link);
+	list_for_each_entry(test, &bat->bat_test_list, tes_link) {
 		LASSERT(list_empty(&test->tes_trans_list));
 
 		list_del(&test->tes_link);
@@ -1106,17 +1102,13 @@ lstcon_batch_destroy(lstcon_batch_t *bat)
 
 	LASSERT(list_empty(&bat->bat_trans_list));
 
-	while (!list_empty(&bat->bat_cli_list)) {
-		ndl = list_entry(bat->bat_cli_list.next,
-				     lstcon_ndlink_t, ndl_link);
+	list_for_each_entry(ndl, &bat->bat_cli_list, ndl_link) {
 		list_del_init(&ndl->ndl_link);
 
 		lstcon_ndlink_release(ndl);
 	}
 
-	while (!list_empty(&bat->bat_srv_list)) {
-		ndl = list_entry(bat->bat_srv_list.next,
-				     lstcon_ndlink_t, ndl_link);
+	list_for_each_entry(ndl, &bat->bat_srv_list, ndl_link) {
 		list_del_init(&ndl->ndl_link);
 
 		lstcon_ndlink_release(ndl);
@@ -1835,17 +1827,12 @@ lstcon_session_end(void)
 	console_session.ses_feats_updated = 0;
 
 	/* destroy all batches */
-	while (!list_empty(&console_session.ses_bat_list)) {
-		bat = list_entry(console_session.ses_bat_list.next,
-				     lstcon_batch_t, bat_link);
-
+	list_for_each_entry(bat, &console_session.ses_bat_list, bat_link) {
 		lstcon_batch_destroy(bat);
 	}
 
 	/* destroy all groups */
-	while (!list_empty(&console_session.ses_grp_list)) {
-		grp = list_entry(console_session.ses_grp_list.next,
-				     lstcon_group_t, grp_link);
+	list_for_each_entry(grp, &console_session.ses_grp_list, grp_link) {
 		LASSERT(grp->grp_ref == 1);
 
 		lstcon_group_put(grp);
diff --git a/drivers/staging/lustre/lnet/selftest/framework.c b/drivers/staging/lustre/lnet/selftest/framework.c
index a93a90d..82db462 100644
--- a/drivers/staging/lustre/lnet/selftest/framework.c
+++ b/drivers/staging/lustre/lnet/selftest/framework.c
@@ -621,16 +621,12 @@ sfw_destroy_test_instance(sfw_test_instance_t *tsi)
 	LASSERT(list_empty(&tsi->tsi_active_rpcs));
 	LASSERT(!sfw_test_active(tsi));
 
-	while (!list_empty(&tsi->tsi_units)) {
-		tsu = list_entry(tsi->tsi_units.next,
-				     sfw_test_unit_t, tsu_list);
+	list_for_each_entry(tsu, &tsi->tsi_units, tsu_list) {
 		list_del(&tsu->tsu_list);
 		LIBCFS_FREE(tsu, sizeof(*tsu));
 	}
 
-	while (!list_empty(&tsi->tsi_free_rpcs)) {
-		rpc = list_entry(tsi->tsi_free_rpcs.next,
-				     srpc_client_rpc_t, crpc_list);
+	list_for_each_entry(rpc, &tsi->tsi_free_rpcs, crpc_list) {
 		list_del(&rpc->crpc_list);
 		LIBCFS_FREE(rpc, srpc_client_rpc_size(rpc));
 	}
@@ -649,9 +645,7 @@ sfw_destroy_batch(sfw_batch_t *tsb)
 	LASSERT(!sfw_batch_active(tsb));
 	LASSERT(list_empty(&tsb->bat_list));
 
-	while (!list_empty(&tsb->bat_tests)) {
-		tsi = list_entry(tsb->bat_tests.next,
-				     sfw_test_instance_t, tsi_list);
+	list_for_each_entry(tsi, &tsb->bat_tests, tsi_list) {
 		list_del_init(&tsi->tsi_list);
 		sfw_destroy_test_instance(tsi);
 	}
@@ -668,9 +662,7 @@ sfw_destroy_session(sfw_session_t *sn)
 	LASSERT(list_empty(&sn->sn_list));
 	LASSERT(sn != sfw_data.fw_session);
 
-	while (!list_empty(&sn->sn_batches)) {
-		batch = list_entry(sn->sn_batches.next,
-				       sfw_batch_t, bat_list);
+	list_for_each_entry(batch, &sn->sn_batches, bat_list) {
 		list_del_init(&batch->bat_list);
 		sfw_destroy_batch(batch);
 	}
@@ -1790,9 +1782,7 @@ sfw_shutdown(void)
 		srpc_wait_service_shutdown(sv);
 	}
 
-	while (!list_empty(&sfw_data.fw_tests)) {
-		tsc = list_entry(sfw_data.fw_tests.next,
-				     sfw_test_case_t, tsc_list);
+	list_for_each_entry(tsc, &sfw_data.fw_tests, tsc_list) {
 
 		srpc_wait_service_shutdown(tsc->tsc_srv_service);
 
diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
index 080788a..49a9991 100644
--- a/drivers/staging/lustre/lnet/selftest/rpc.c
+++ b/drivers/staging/lustre/lnet/selftest/rpc.c
@@ -222,10 +222,7 @@ srpc_service_fini(struct srpc_service *svc)
 
 		LASSERT(list_empty(&scd->scd_rpc_active));
 
-		while (!list_empty(&scd->scd_rpc_free)) {
-			rpc = list_entry(scd->scd_rpc_free.next,
-					     struct srpc_server_rpc,
-					     srpc_list);
+		list_for_each_entry(rpc, &scd->scd_rpc_free, srpc_list) {
 			list_del(&rpc->srpc_list);
 			LIBCFS_FREE(rpc, sizeof(*rpc));
 		}
diff --git a/drivers/staging/lustre/lustre/libcfs/workitem.c b/drivers/staging/lustre/lustre/libcfs/workitem.c
index c4afaea..98953c3 100644
--- a/drivers/staging/lustre/lustre/libcfs/workitem.c
+++ b/drivers/staging/lustre/lustre/libcfs/workitem.c
@@ -467,9 +467,7 @@ cfs_wi_shutdown (void)
 		}
 		spin_unlock(&cfs_wi_data.wi_glock);
 	}
-	while (!list_empty(&cfs_wi_data.wi_scheds)) {
-		sched = list_entry(cfs_wi_data.wi_scheds.next,
-				       struct cfs_wi_sched, ws_list);
+	list_for_each_entry(sched, &cfs_wi_data.wi_scheds, ws_list) {
 		list_del(&sched->ws_list);
 		LIBCFS_FREE(sched, sizeof(*sched));
 	}
diff --git a/drivers/staging/lustre/lustre/llite/llite_rmtacl.c b/drivers/staging/lustre/lustre/llite/llite_rmtacl.c
index f4da156..68cb421 100644
--- a/drivers/staging/lustre/lustre/llite/llite_rmtacl.c
+++ b/drivers/staging/lustre/lustre/llite/llite_rmtacl.c
@@ -170,9 +170,7 @@ void rct_fini(struct rmtacl_ctl_table *rct)
 
 	spin_lock(&rct->rct_lock);
 	for (i = 0; i < RCE_HASHES; i++)
-		while (!list_empty(&rct->rct_entries[i])) {
-			rce = list_entry(rct->rct_entries[i].next,
-					     struct rmtacl_ctl_entry, rce_list);
+		list_for_each_entry(rce, &rct->rct_entries[i], rce_list) {
 			rce_free(rce);
 		}
 	spin_unlock(&rct->rct_lock);
@@ -289,9 +287,7 @@ void et_fini(struct eacl_table *et)
 
 	spin_lock(&et->et_lock);
 	for (i = 0; i < EE_HASHES; i++)
-		while (!list_empty(&et->et_entries[i])) {
-			ee = list_entry(et->et_entries[i].next,
-					    struct eacl_entry, ee_list);
+		list_for_each_entry(ee, &et->et_entries[i], ee_list) {
 			ee_free(ee);
 		}
 	spin_unlock(&et->et_lock);
diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index c171c6c..31d7e18 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -1018,9 +1018,7 @@ void lprocfs_free_per_client_stats(struct obd_device *obd)
 
 	/* we need extra list - because hash_exit called to early */
 	/* not need locking because all clients is died */
-	while (!list_empty(&obd->obd_nid_stats)) {
-		stat = list_entry(obd->obd_nid_stats.next,
-				      struct nid_stat, nid_list);
+	list_for_each_entry(stat, &obd->obd_nid_stats, nid_list) {
 		list_del_init(&stat->nid_list);
 		cfs_hash_del(hash, &stat->nid, &stat->nid_hash);
 		lprocfs_free_client_stats(stat);
@@ -1646,9 +1644,7 @@ int lprocfs_nid_stats_clear_write(struct file *file, const char *buffer,
 	cfs_hash_cond_del(obd->obd_nid_stats_hash,
 			  lprocfs_nid_stats_clear_write_cb, &free_list);
 
-	while (!list_empty(&free_list)) {
-		client_stat = list_entry(free_list.next, struct nid_stat,
-					     nid_list);
+	list_for_each_entry(client_stat, &free_list, nid_list) {
 		list_del_init(&client_stat->nid_list);
 		lprocfs_free_client_stats(client_stat);
 	}
diff --git a/drivers/staging/lustre/lustre/obdclass/lustre_peer.c b/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
index 64b2f35..87b649b 100644
--- a/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
+++ b/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
@@ -170,9 +170,7 @@ int class_del_uuid(const char *uuid)
 		return -EINVAL;
 	}
 
-	while (!list_empty(&deathrow)) {
-		data = list_entry(deathrow.next, struct uuid_nid_data,
-				      un_list);
+	list_for_each_entry(data, &deathrow, un_list) {
 		list_del(&data->un_list);
 
 		CDEBUG(D_INFO, "del uuid %s %s/%d\n",
diff --git a/drivers/staging/lustre/lustre/osc/osc_cache.c b/drivers/staging/lustre/lustre/osc/osc_cache.c
index 7022ed4..6ab5c85 100644
--- a/drivers/staging/lustre/lustre/osc/osc_cache.c
+++ b/drivers/staging/lustre/lustre/osc/osc_cache.c
@@ -1884,9 +1884,7 @@ static int get_write_extents(struct osc_object *obj, struct list_head *rpclist)
 	unsigned int max_pages = cli->cl_max_pages_per_rpc;
 
 	LASSERT(osc_object_is_locked(obj));
-	while (!list_empty(&obj->oo_hp_exts)) {
-		ext = list_entry(obj->oo_hp_exts.next, struct osc_extent,
-				     oe_link);
+	list_for_each_entry(ext, &obj->oo_hp_exts, oe_link) {
 		LASSERT(ext->oe_state == OES_CACHE);
 		if (!try_to_add_extent_for_io(cli, ext, rpclist, &page_count,
 					      &max_pages))
@@ -1896,9 +1894,7 @@ static int get_write_extents(struct osc_object *obj, struct list_head *rpclist)
 	if (page_count == max_pages)
 		return page_count;
 
-	while (!list_empty(&obj->oo_urgent_exts)) {
-		ext = list_entry(obj->oo_urgent_exts.next,
-				     struct osc_extent, oe_link);
+	list_for_each_entry(ext, &obj->oo_urgent_exts, oe_link) {
 		if (!try_to_add_extent_for_io(cli, ext, rpclist, &page_count,
 					      &max_pages))
 			return page_count;
@@ -2682,10 +2678,9 @@ again:
 
 	osc_list_maint(cli, obj);
 
-	while (!list_empty(&list)) {
+	list_for_each_entry(ext, &list, oe_link) {
 		int rc;
 
-		ext = list_entry(list.next, struct osc_extent, oe_link);
 		list_del_init(&ext->oe_link);
 
 		/* extent may be in OES_ACTIVE state because inode mutex
diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/staging/lustre/lustre/osc/osc_page.c
index 76ba58b..c9c4839 100644
--- a/drivers/staging/lustre/lustre/osc/osc_page.c
+++ b/drivers/staging/lustre/lustre/osc/osc_page.c
@@ -672,14 +672,12 @@ int osc_lru_shrink(struct client_obd *cli, int target)
 	client_obd_list_lock(&cli->cl_lru_list_lock);
 	atomic_inc(&cli->cl_lru_shrinkers);
 	maxscan = min(target << 1, atomic_read(&cli->cl_lru_in_list));
-	while (!list_empty(&cli->cl_lru_list)) {
+	list_for_each_entry(opg, &cli->cl_lru_list, ops_lru) {
 		struct cl_page *page;
 
 		if (--maxscan < 0)
 			break;
 
-		opg = list_entry(cli->cl_lru_list.next, struct osc_page,
-				     ops_lru);
 		page = cl_page_top(opg->ops_cl.cpl_page);
 		if (cl_page_in_use_noref(page)) {
 			list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/pinger.c b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
index 9dbda93..bdff3fe 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pinger.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
@@ -610,10 +610,7 @@ static int ping_evictor_main(void *arg)
 		 * lose the last ref on the export.  If they've already been
 		 * removed from the list, we won't find them here. */
 		spin_lock(&obd->obd_dev_lock);
-		while (!list_empty(&obd->obd_exports_timed)) {
-			exp = list_entry(obd->obd_exports_timed.next,
-					     struct obd_export,
-					     exp_obd_chain_timed);
+		list_for_each_entry(exp, &obd->obd_exports_timed, exp_obd_chain_timed) {
 			if (expire_time > exp->exp_last_request_time) {
 				class_export_get(exp);
 				spin_unlock(&obd->obd_dev_lock);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
index 81de68e..265c5c1 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
@@ -124,9 +124,7 @@ static void sec_process_ctx_list(void)
 
 	spin_lock(&sec_gc_ctx_list_lock);
 
-	while (!list_empty(&sec_gc_ctx_list)) {
-		ctx = list_entry(sec_gc_ctx_list.next,
-				     struct ptlrpc_cli_ctx, cc_gc_chain);
+	list_for_each_entry(ctx, &sec_gc_ctx_list, cc_gc_chain) {
 		list_del_init(&ctx->cc_gc_chain);
 		spin_unlock(&sec_gc_ctx_list_lock);
 
diff --git a/drivers/staging/lustre/lustre/ptlrpc/service.c b/drivers/staging/lustre/lustre/ptlrpc/service.c
index 8e61421..90bf1d5 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/service.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/service.c
@@ -1463,9 +1463,7 @@ static int ptlrpc_at_check_timed(struct ptlrpc_service_part *svcpt)
 
 	/* we took additional refcount so entries can't be deleted from list, no
 	 * locking is needed */
-	while (!list_empty(&work_list)) {
-		rq = list_entry(work_list.next, struct ptlrpc_request,
-				    rq_timed_list);
+	list_for_each_entry(rq, &work_list, rq_timed_list) {
 		list_del_init(&rq->rq_timed_list);
 
 		if (ptlrpc_at_send_early_reply(rq) == 0)
@@ -2572,9 +2570,7 @@ static void ptlrpc_svcpt_stop_threads(struct ptlrpc_service_part *svcpt)
 
 	wake_up_all(&svcpt->scp_waitq);
 
-	while (!list_empty(&svcpt->scp_threads)) {
-		thread = list_entry(svcpt->scp_threads.next,
-					struct ptlrpc_thread, t_link);
+	list_for_each_entry(thread, &svcpt->scp_threads, t_link) {
 		if (thread_is_stopped(thread)) {
 			list_del(&thread->t_link);
 			list_add(&thread->t_link, &zombie);
@@ -2592,9 +2588,7 @@ static void ptlrpc_svcpt_stop_threads(struct ptlrpc_service_part *svcpt)
 
 	spin_unlock(&svcpt->scp_lock);
 
-	while (!list_empty(&zombie)) {
-		thread = list_entry(zombie.next,
-					struct ptlrpc_thread, t_link);
+	list_for_each_entry(thread, &zombie, t_link) {
 		list_del(&thread->t_link);
 		OBD_FREE_PTR(thread);
 	}
@@ -2929,9 +2923,7 @@ ptlrpc_service_purge_all(struct ptlrpc_service *svc)
 			break;
 
 		spin_lock(&svcpt->scp_rep_lock);
-		while (!list_empty(&svcpt->scp_rep_active)) {
-			rs = list_entry(svcpt->scp_rep_active.next,
-					    struct ptlrpc_reply_state, rs_list);
+		list_for_each_entry(rs, &svcpt->scp_rep_active, rs_list) {
 			spin_lock(&rs->rs_lock);
 			ptlrpc_schedule_difficult_reply(rs);
 			spin_unlock(&rs->rs_lock);
@@ -2941,10 +2933,7 @@ ptlrpc_service_purge_all(struct ptlrpc_service *svc)
 		/* purge the request queue.  NB No new replies (rqbds
 		 * all unlinked) and no service threads, so I'm the only
 		 * thread noodling the request queue now */
-		while (!list_empty(&svcpt->scp_req_incoming)) {
-			req = list_entry(svcpt->scp_req_incoming.next,
-					     struct ptlrpc_request, rq_list);
-
+		list_for_each_entry(req, &svcpt->scp_req_incoming, rq_list) {
 			list_del(&req->rq_list);
 			svcpt->scp_nreqs_incoming--;
 			ptlrpc_server_finish_request(svcpt, req);
@@ -2965,18 +2954,12 @@ ptlrpc_service_purge_all(struct ptlrpc_service *svc)
 		/* Now free all the request buffers since nothing
 		 * references them any more... */
 
-		while (!list_empty(&svcpt->scp_rqbd_idle)) {
-			rqbd = list_entry(svcpt->scp_rqbd_idle.next,
-					      struct ptlrpc_request_buffer_desc,
-					      rqbd_list);
+		list_for_each_entry(rqbd, &svcpt->scp_rqbd_idle, rqbd_list) {
 			ptlrpc_free_rqbd(rqbd);
 		}
 		ptlrpc_wait_replies(svcpt);
 
-		while (!list_empty(&svcpt->scp_rep_idle)) {
-			rs = list_entry(svcpt->scp_rep_idle.next,
-					    struct ptlrpc_reply_state,
-					    rs_list);
+		list_for_each_entry(rs, &svcpt->scp_rep_idle, rs_list) {
 			list_del(&rs->rs_list);
 			OBD_FREE_LARGE(rs, svc->srv_max_reply_size);
 		}
-- 
1.9.1



X-GM-THRID: 6202249828233117696
X-Received: by 10.180.188.211 with SMTP id gc19mr2782076wic.6.1444073819590;
        Mon, 05 Oct 2015 12:36:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.73 with SMTP id g9ls898538wiy.30.gmail; Mon, 05 Oct
 2015 12:36:59 -0700 (PDT)
X-Received: by 10.180.106.197 with SMTP id gw5mr2519658wib.7.1444073819203;
        Mon, 05 Oct 2015 12:36:59 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id c1si403512wiv.3.2015.10.05.12.36.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 12:36:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=haticeerturk27@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id gb1so134663260wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 12:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=OmE40hOJef13RScvfzOgeTEyI2Z4fYUhxAfoBhrePWQ=;
        b=SB7lxvjaCpXRW+8Unf7FT/Vze1zem7QKrkGsaYBJSTj9LUcCe8V8OT2hUqcbOEnegh
         nhbSDIvDoY6+wb/nBvukxUbKIwQWlgFdOuFL9vAlReuZAwIgYfYBK0yZkdceuRIAH3Nm
         vcTm82QiNz+SiHJjRrUNfpP1HPfK4TGTy7+Cn6ZOvsrShIJ6olyRkRPUaShoHthKjmvZ
         KM7Ae1vuBeOsT2lg1J5+YF4y+LM7ljXU3JnexJEZTfoRIu8myVeqXt2EdShFB7tjZRJo
         tYmYqxhZiAxg40gaNJJpYqxKIHZ1DsdkxwXo6QI8TCnZfoAk8uRRJMoIUeS8/XJTZOZb
         XGsw==
X-Received: by 10.180.76.177 with SMTP id l17mr13855888wiw.16.1444073819092;
        Mon, 05 Oct 2015 12:36:59 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([88.242.105.163])
        by smtp.googlemail.com with ESMTPSA id jf3sm16229764wic.8.2015.10.05.12.36.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Oct 2015 12:36:58 -0700 (PDT)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: lnet: klnds: socklnd: Fixed comment style warnings
Date: Mon,  5 Oct 2015 22:36:54 +0300
Message-Id: <1444073814-10274-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fixed 'Block comments use a trailing */ on a separate line' and 'Block comments use * on subsequent lines' checkpatch warnings

Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
---
 .../staging/lustre/lnet/klnds/socklnd/socklnd.c    | 204 ++++++++++++++-------
 1 file changed, 136 insertions(+), 68 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index 1b472f4..d5268e9 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -163,10 +163,12 @@ ksocknal_destroy_peer(ksock_peer_t *peer)
 
 	LIBCFS_FREE(peer, sizeof(*peer));
 
-	/* NB a peer's connections and routes keep a reference on their peer
+	/*
+	 * NB a peer's connections and routes keep a reference on their peer
 	 * until they are destroyed, so we can be assured that _all_ state to
 	 * do with this peer has been cleaned up when its refcount drops to
-	 * zero. */
+	 * zero.
+	 */
 	spin_lock_bh(&net->ksnn_lock);
 	net->ksnn_npeers--;
 	spin_unlock_bh(&net->ksnn_lock);
@@ -226,8 +228,10 @@ ksocknal_unlink_peer_locked(ksock_peer_t *peer)
 		ip = peer->ksnp_passive_ips[i];
 
 		iface = ksocknal_ip2iface(peer->ksnp_ni, ip);
-		/* All IPs in peer->ksnp_passive_ips[] come from the
-		 * interface list, therefore the call must succeed. */
+		/* 
+		 * All IPs in peer->ksnp_passive_ips[] come from the
+		 * interface list, therefore the call must succeed.
+		 */
 		LASSERT(iface != NULL);
 
 		CDEBUG(D_NET, "peer=%p iface=%p ksni_nroutes=%d\n",
@@ -358,8 +362,10 @@ ksocknal_associate_route_conn_locked(ksock_route_t *route, ksock_conn_t *conn)
 	route->ksnr_connected |= (1<<type);
 	route->ksnr_conn_count++;
 
-	/* Successful connection => further attempts can
-	 * proceed immediately */
+	/* 
+	 * Successful connection => further attempts can
+	 * proceed immediately
+	 */
 	route->ksnr_retry_interval = 0;
 }
 
@@ -438,8 +444,10 @@ ksocknal_del_route_locked(ksock_route_t *route)
 
 	if (list_empty(&peer->ksnp_routes) &&
 	    list_empty(&peer->ksnp_conns)) {
-		/* I've just removed the last route to a peer with no active
-		 * connections */
+		/* 
+		 * I've just removed the last route to a peer with no active
+		 * connections
+		 */
 		ksocknal_unlink_peer_locked(peer);
 	}
 }
@@ -539,8 +547,10 @@ ksocknal_del_peer_locked(ksock_peer_t *peer, __u32 ip)
 	}
 
 	if (nshared == 0) {
-		/* remove everything else if there are no explicit entries
-		 * left */
+		/* 
+		 * remove everything else if there are no explicit entries
+		 * left
+		 */
 
 		list_for_each_safe(tmp, nxt, &peer->ksnp_routes) {
 			route = list_entry(tmp, ksock_route_t, ksnr_list);
@@ -692,8 +702,10 @@ ksocknal_local_ipvec(lnet_ni_t *ni, __u32 *ipaddrs)
 	nip = net->ksnn_ninterfaces;
 	LASSERT(nip <= LNET_MAX_INTERFACES);
 
-	/* Only offer interfaces for additional connections if I have
-	 * more than one. */
+	/* 
+	 * Only offer interfaces for additional connections if I have
+	 * more than one.
+	 */
 	if (nip < 2) {
 		read_unlock(&ksocknal_data.ksnd_global_lock);
 		return 0;
@@ -757,32 +769,40 @@ ksocknal_select_ips(ksock_peer_t *peer, __u32 *peerips, int n_peerips)
 	int best_netmatch;
 	int best_npeers;
 
-	/* CAVEAT EMPTOR: We do all our interface matching with an
+	/* 
+	 * CAVEAT EMPTOR: We do all our interface matching with an
 	 * exclusive hold of global lock at IRQ priority.  We're only
 	 * expecting to be dealing with small numbers of interfaces, so the
-	 * O(n**3)-ness shouldn't matter */
+	 * O(n**3)-ness shouldn't matter
+	 */
 
-	/* Also note that I'm not going to return more than n_peerips
-	 * interfaces, even if I have more myself */
+	/*
+	 * Also note that I'm not going to return more than n_peerips
+	 * interfaces, even if I have more myself
+	 */
 
 	write_lock_bh(global_lock);
 
 	LASSERT(n_peerips <= LNET_MAX_INTERFACES);
 	LASSERT(net->ksnn_ninterfaces <= LNET_MAX_INTERFACES);
 
-	/* Only match interfaces for additional connections
-	 * if I have > 1 interface */
+	/*
+	 * Only match interfaces for additional connections
+	 * if I have > 1 interface
+	 */
 	n_ips = (net->ksnn_ninterfaces < 2) ? 0 :
 		min(n_peerips, net->ksnn_ninterfaces);
 
 	for (i = 0; peer->ksnp_n_passive_ips < n_ips; i++) {
 		/*	      ^ yes really... */
 
-		/* If we have any new interfaces, first tick off all the
+		/*
+		 * If we have any new interfaces, first tick off all the
 		 * peer IPs that match old interfaces, then choose new
 		 * interfaces to match the remaining peer IPS.
 		 * We don't forget interfaces we've stopped using; we might
-		 * start using them again... */
+		 * start using them again...
+		 */
 
 		if (i < peer->ksnp_n_passive_ips) {
 			/* Old interface. */
@@ -860,16 +880,20 @@ ksocknal_create_routes(ksock_peer_t *peer, int port,
 	int i;
 	int j;
 
-	/* CAVEAT EMPTOR: We do all our interface matching with an
+	/*
+	 * CAVEAT EMPTOR: We do all our interface matching with an
 	 * exclusive hold of global lock at IRQ priority.  We're only
 	 * expecting to be dealing with small numbers of interfaces, so the
-	 * O(n**3)-ness here shouldn't matter */
+	 * O(n**3)-ness here shouldn't matter
+	 */
 
 	write_lock_bh(global_lock);
 
 	if (net->ksnn_ninterfaces < 2) {
-		/* Only create additional connections
-		 * if I have > 1 interface */
+		/*
+		 * Only create additional connections
+		 * if I have > 1 interface
+		 */
 		write_unlock_bh(global_lock);
 		return;
 	}
@@ -1039,8 +1063,10 @@ ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 	conn->ksnc_peer = NULL;
 	conn->ksnc_route = NULL;
 	conn->ksnc_sock = sock;
-	/* 2 ref, 1 for conn, another extra ref prevents socket
-	 * being closed before establishment of connection */
+	/*
+	 * 2 ref, 1 for conn, another extra ref prevents socket
+	 * being closed before establishment of connection
+	 */
 	atomic_set(&conn->ksnc_sock_refcount, 2);
 	conn->ksnc_type = type;
 	ksocknal_lib_save_callback(sock, conn);
@@ -1067,10 +1093,12 @@ ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 	if (rc != 0)
 		goto failed_1;
 
-	/* Find out/confirm peer's NID and connection type and get the
+	/*
+	 * Find out/confirm peer's NID and connection type and get the
 	 * vector of interfaces she's willing to let me connect to.
 	 * Passive connections use the listener timeout since the peer sends
-	 * eagerly */
+	 * eagerly
+	 */
 
 	if (active) {
 		peer = route->ksnr_peer;
@@ -1130,8 +1158,10 @@ ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 
 		peer2 = ksocknal_find_peer_locked(ni, peerid);
 		if (peer2 == NULL) {
-			/* NB this puts an "empty" peer in the peer
-			 * table (which takes my ref) */
+			/*
+			 * NB this puts an "empty" peer in the peer
+			 * table (which takes my ref)
+			 */
 			list_add_tail(&peer->ksnp_list,
 					  ksocknal_nid2peerlist(peerid.nid));
 		} else {
@@ -1143,8 +1173,10 @@ ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 		ksocknal_peer_addref(peer);
 		peer->ksnp_accepting++;
 
-		/* Am I already connecting to this guy?  Resolve in
-		 * favour of higher NID... */
+		/*
+		 * Am I already connecting to this guy?  Resolve in
+		 * favour of higher NID...
+		 */
 		if (peerid.nid < ni->ni_nid &&
 		    ksocknal_connecting(peer, conn->ksnc_ipaddr)) {
 			rc = EALREADY;
@@ -1198,8 +1230,10 @@ ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 		goto failed_2;
 	}
 
-	/* Refuse to duplicate an existing connection, unless this is a
-	 * loopback connection */
+	/*
+	 * Refuse to duplicate an existing connection, unless this is a
+	 * loopback connection
+	 */
 	if (conn->ksnc_ipaddr != conn->ksnc_myipaddr) {
 		list_for_each(tmp, &peer->ksnp_conns) {
 			conn2 = list_entry(tmp, ksock_conn_t, ksnc_list);
@@ -1209,8 +1243,10 @@ ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 			    conn2->ksnc_type != conn->ksnc_type)
 				continue;
 
-			/* Reply on a passive connection attempt so the peer
-			 * realises we're connected. */
+			/*
+			 * Reply on a passive connection attempt so the peer
+			 * realises we're connected.
+			 */
 			LASSERT(rc == 0);
 			if (!active)
 				rc = EALREADY;
@@ -1220,9 +1256,11 @@ ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 		}
 	}
 
-	/* If the connection created by this route didn't bind to the IP
+	/*
+	 * If the connection created by this route didn't bind to the IP
 	 * address the route connected to, the connection/route matching
-	 * code below probably isn't going to work. */
+	 * code below probably isn't going to work.
+	 */
 	if (active &&
 	    route->ksnr_ipaddr != conn->ksnc_ipaddr) {
 		CERROR("Route %s %pI4h connected to %pI4h\n",
@@ -1231,10 +1269,12 @@ ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 		       &conn->ksnc_ipaddr);
 	}
 
-	/* Search for a route corresponding to the new connection and
+	/*
+	 * Search for a route corresponding to the new connection and
 	 * create an association.  This allows incoming connections created
 	 * by routes in my peer to match my own route entries so I don't
-	 * continually create duplicate routes. */
+	 * continually create duplicate routes.
+	 */
 	list_for_each(tmp, &peer->ksnp_routes) {
 		route = list_entry(tmp, ksock_route_t, ksnr_list);
 
@@ -1305,11 +1345,13 @@ ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 	LIBCFS_FREE(hello, offsetof(ksock_hello_msg_t,
 				    kshm_ips[LNET_MAX_INTERFACES]));
 
-	/* setup the socket AFTER I've received hello (it disables
+	/*
+	 * setup the socket AFTER I've received hello (it disables
 	 * SO_LINGER).  I might call back to the acceptor who may want
 	 * to send a protocol version response and then close the
 	 * socket; this ensures the socket only tears down after the
-	 * response has been sent. */
+	 * response has been sent.
+	 */
 	if (rc == 0)
 		rc = ksocknal_lib_setup_sock(sock);
 
@@ -1363,8 +1405,10 @@ ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 
 	if (!active) {
 		if (rc > 0) {
-			/* Request retry by replying with CONN_NONE
-			 * ksnc_proto has been set already */
+			/*
+			 * Request retry by replying with CONN_NONE
+			 * ksnc_proto has been set already
+			 */
 			conn->ksnc_type = SOCKLND_CONN_NONE;
 			hello->kshm_nips = 0;
 			ksocknal_send_hello(ni, conn, peerid.nid, hello);
@@ -1393,9 +1437,11 @@ failed_0:
 void
 ksocknal_close_conn_locked(ksock_conn_t *conn, int error)
 {
-	/* This just does the immmediate housekeeping, and queues the
+	/*
+	 * This just does the immmediate housekeeping, and queues the
 	 * connection for the reaper to terminate.
-	 * Caller holds ksnd_global_lock exclusively in irq context */
+	 * Caller holds ksnd_global_lock exclusively in irq context
+	 */
 	ksock_peer_t *peer = conn->ksnc_peer;
 	ksock_route_t *route;
 	ksock_conn_t *conn2;
@@ -1445,8 +1491,10 @@ ksocknal_close_conn_locked(ksock_conn_t *conn, int error)
 
 			LASSERT(conn->ksnc_proto == &ksocknal_protocol_v3x);
 
-			/* throw them to the last connection...,
-			 * these TXs will be send to /dev/null by scheduler */
+			/*
+			 * throw them to the last connection...,
+			 * these TXs will be send to /dev/null by scheduler
+			 */
 			list_for_each_entry(tx, &peer->ksnp_tx_queue,
 						tx_list)
 				ksocknal_tx_prep(conn, tx);
@@ -1461,8 +1509,10 @@ ksocknal_close_conn_locked(ksock_conn_t *conn, int error)
 		peer->ksnp_error = error;       /* stash last conn close reason */
 
 		if (list_empty(&peer->ksnp_routes)) {
-			/* I've just closed last conn belonging to a
-			 * peer with no routes to it */
+			/*
+			 * I've just closed last conn belonging to a
+			 * peer with no routes to it
+			 */
 			ksocknal_unlink_peer_locked(peer);
 		}
 	}
@@ -1482,9 +1532,11 @@ ksocknal_peer_failed(ksock_peer_t *peer)
 	int notify = 0;
 	unsigned long last_alive = 0;
 
-	/* There has been a connection failure or comms error; but I'll only
+	/*
+	 * There has been a connection failure or comms error; but I'll only
 	 * tell LNET I think the peer is dead if it's to another kernel and
-	 * there are no connections or connection attempts in existence. */
+	 * there are no connections or connection attempts in existence.
+	 */
 
 	read_lock(&ksocknal_data.ksnd_global_lock);
 
@@ -1511,8 +1563,10 @@ ksocknal_finalize_zcreq(ksock_conn_t *conn)
 	ksock_tx_t *tmp;
 	LIST_HEAD(zlist);
 
-	/* NB safe to finalize TXs because closing of socket will
-	 * abort all buffered data */
+	/*
+	 * NB safe to finalize TXs because closing of socket will
+	 * abort all buffered data
+	 */
 	LASSERT(conn->ksnc_sock == NULL);
 
 	spin_lock(&peer->ksnp_lock);
@@ -1542,10 +1596,12 @@ ksocknal_finalize_zcreq(ksock_conn_t *conn)
 void
 ksocknal_terminate_conn(ksock_conn_t *conn)
 {
-	/* This gets called by the reaper (guaranteed thread context) to
+	/*
+	 * This gets called by the reaper (guaranteed thread context) to
 	 * disengage the socket from its callbacks and close it.
 	 * ksnc_refcount will eventually hit zero, and then the reaper will
-	 * destroy it. */
+	 * destroy it.
+	 */
 	ksock_peer_t *peer = conn->ksnc_peer;
 	ksock_sched_t *sched = conn->ksnc_scheduler;
 	int failed = 0;
@@ -1576,8 +1632,10 @@ ksocknal_terminate_conn(ksock_conn_t *conn)
 
 	ksocknal_lib_reset_callback(conn->ksnc_sock, conn);
 
-	/* OK, so this conn may not be completely disengaged from its
-	 * scheduler yet, but it _has_ committed to terminate... */
+	/*
+	 * OK, so this conn may not be completely disengaged from its
+	 * scheduler yet, but it _has_ committed to terminate...
+	 */
 	conn->ksnc_scheduler->kss_nconns--;
 
 	if (peer->ksnp_error != 0) {
@@ -1592,11 +1650,13 @@ ksocknal_terminate_conn(ksock_conn_t *conn)
 	if (failed)
 		ksocknal_peer_failed(peer);
 
-	/* The socket is closed on the final put; either here, or in
+	/*
+	 * The socket is closed on the final put; either here, or in
 	 * ksocknal_{send,recv}msg().  Since we set up the linger2 option
 	 * when the connection was established, this will close the socket
 	 * immediately, aborting anything buffered in it. Any hung
-	 * zero-copy transmits will therefore complete in finite time. */
+	 * zero-copy transmits will therefore complete in finite time.
+	 */
 	ksocknal_connsock_decref(conn);
 }
 
@@ -1760,8 +1820,10 @@ ksocknal_close_matching_conns(lnet_process_id_t id, __u32 ipaddr)
 void
 ksocknal_notify(lnet_ni_t *ni, lnet_nid_t gw_nid, int alive)
 {
-	/* The router is telling me she's been notified of a change in
-	 * gateway state.... */
+	/*
+	 * The router is telling me she's been notified of a change in
+	 * gateway state....
+	 */
 	lnet_process_id_t id = {0};
 
 	id.nid = gw_nid;
@@ -1776,8 +1838,10 @@ ksocknal_notify(lnet_ni_t *ni, lnet_nid_t gw_nid, int alive)
 		return;
 	}
 
-	/* ...otherwise do nothing.  We can only establish new connections
-	 * if we have autroutes, and these connect on demand. */
+	/*
+	 * ...otherwise do nothing.  We can only establish new connections
+	 * if we have autroutes, and these connect on demand.
+	 */
 }
 
 void
@@ -2399,8 +2463,10 @@ ksocknal_base_startup(void)
 		if (*ksocknal_tunables.ksnd_nscheds > 0) {
 			nthrs = min(nthrs, *ksocknal_tunables.ksnd_nscheds);
 		} else {
-			/* max to half of CPUs, assume another half should be
-			 * reserved for upper layer modules */
+			/*
+			 * max to half of CPUs, assume another half should be
+			 * reserved for upper layer modules
+			 */
 			nthrs = min(max(SOCKNAL_NSCHEDS, nthrs >> 1), nthrs);
 		}
 
@@ -2427,8 +2493,10 @@ ksocknal_base_startup(void)
 	ksocknal_data.ksnd_connd_starting       = 0;
 	ksocknal_data.ksnd_connd_failed_stamp   = 0;
 	ksocknal_data.ksnd_connd_starting_stamp = ktime_get_real_seconds();
-	/* must have at least 2 connds to remain responsive to accepts while
-	 * connecting */
+	/*
+	 * must have at least 2 connds to remain responsive to accepts while
+	 * connecting
+	 */
 	if (*ksocknal_tunables.ksnd_nconnds < SOCKNAL_CONND_RESV + 1)
 		*ksocknal_tunables.ksnd_nconnds = SOCKNAL_CONND_RESV + 1;
 
-- 
1.9.1



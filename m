X-GM-THRID: 1328454565888
X-Received: by 10.180.105.129 with SMTP id gm1mr1480912wib.3.1424446116877;
        Fri, 20 Feb 2015 07:28:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.74.229 with SMTP id x5ls121585wiv.8.gmail; Fri, 20 Feb
 2015 07:28:35 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr1476475wib.7.1424446115655;
        Fri, 20 Feb 2015 07:28:35 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id r6si134780wix.0.2015.02.20.07.28.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 07:28:35 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f50.google.com with SMTP id l2so13718794wgh.9
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 07:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=f23f8JnnjCINQ+dQucINxjlFEEDNC/HNh2Iiql0jDF4=;
        b=0ki5UPa9LE418pYTCogVeSasIfhj1I29TgNkyBFPjAHkT2c/ZvGTG2gACH3Myizgwv
         SEWF98GIeyKRbvxeqJ9PGU7+akv4JAWnWLQtWzqQ1W/+ZhmKq8FTEUY8homh+8RsTMXC
         +2on7TvapDXej/R5ZehH7aWIumgG1LkRHoGg0CGGD4ZmknPKcEI2VIRmB/aUEoNF/2Ao
         uq+L3GKbzXM0Xlpd52Uy73GVO5ULTNOQ6bTSTywN6mAvMAwkahvah6jcFtkhKIPNphfF
         vs0IQ6yYoaFW5gDacdReEMGtIfqckwjtWsRdox3tBWDXyw3ue4DmRrHh3Zrq5azG2mE/
         uW6w==
X-Received: by 10.180.73.1 with SMTP id h1mr25949308wiv.10.1424446115388;
        Fri, 20 Feb 2015 07:28:35 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id dx11sm39614476wjb.23.2015.02.20.07.28.33
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 07:28:34 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 1/4] Staging: lustre: lnet: klnds: socklnd: Deleted space prohibited between function name and open parenthesis
Date: Fri, 20 Feb 2015 17:27:47 +0200
Message-Id: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: space prohibited between function name and open parenthesis '('
checkpatch.pl warning in socklnd.c

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 .../staging/lustre/lnet/klnds/socklnd/socklnd.c    | 448 ++++++++++-----------
 1 file changed, 224 insertions(+), 224 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index 5956dba..aac3a7d 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -65,15 +65,15 @@ ksocknal_ip2iface(lnet_ni_t *ni, __u32 ip)
 }
 
 static ksock_route_t *
-ksocknal_create_route (__u32 ipaddr, int port)
+ksocknal_create_route(__u32 ipaddr, int port)
 {
 	ksock_route_t *route;
 
-	LIBCFS_ALLOC (route, sizeof (*route));
+	LIBCFS_ALLOC(route, sizeof(*route));
 	if (route == NULL)
 		return NULL;
 
-	atomic_set (&route->ksnr_refcount, 1);
+	atomic_set(&route->ksnr_refcount, 1);
 	route->ksnr_peer = NULL;
 	route->ksnr_retry_interval = 0;	 /* OK to connect at any time */
 	route->ksnr_ipaddr = ipaddr;
@@ -89,43 +89,43 @@ ksocknal_create_route (__u32 ipaddr, int port)
 }
 
 void
-ksocknal_destroy_route (ksock_route_t *route)
+ksocknal_destroy_route(ksock_route_t *route)
 {
-	LASSERT (atomic_read(&route->ksnr_refcount) == 0);
+	LASSERT(atomic_read(&route->ksnr_refcount) == 0);
 
 	if (route->ksnr_peer != NULL)
 		ksocknal_peer_decref(route->ksnr_peer);
 
-	LIBCFS_FREE (route, sizeof (*route));
+	LIBCFS_FREE(route, sizeof(*route));
 }
 
 static int
-ksocknal_create_peer (ksock_peer_t **peerp, lnet_ni_t *ni, lnet_process_id_t id)
+ksocknal_create_peer(ksock_peer_t **peerp, lnet_ni_t *ni, lnet_process_id_t id)
 {
 	ksock_net_t   *net = ni->ni_data;
 	ksock_peer_t  *peer;
 
-	LASSERT (id.nid != LNET_NID_ANY);
-	LASSERT (id.pid != LNET_PID_ANY);
-	LASSERT (!in_interrupt());
+	LASSERT(id.nid != LNET_NID_ANY);
+	LASSERT(id.pid != LNET_PID_ANY);
+	LASSERT(!in_interrupt());
 
-	LIBCFS_ALLOC (peer, sizeof (*peer));
+	LIBCFS_ALLOC(peer, sizeof(*peer));
 	if (peer == NULL)
 		return -ENOMEM;
 
 	peer->ksnp_ni = ni;
 	peer->ksnp_id = id;
-	atomic_set (&peer->ksnp_refcount, 1);   /* 1 ref for caller */
+	atomic_set(&peer->ksnp_refcount, 1);   /* 1 ref for caller */
 	peer->ksnp_closing = 0;
 	peer->ksnp_accepting = 0;
 	peer->ksnp_proto = NULL;
 	peer->ksnp_last_alive = 0;
 	peer->ksnp_zc_next_cookie = SOCKNAL_KEEPALIVE_PING + 1;
 
-	INIT_LIST_HEAD (&peer->ksnp_conns);
-	INIT_LIST_HEAD (&peer->ksnp_routes);
-	INIT_LIST_HEAD (&peer->ksnp_tx_queue);
-	INIT_LIST_HEAD (&peer->ksnp_zc_req_list);
+	INIT_LIST_HEAD(&peer->ksnp_conns);
+	INIT_LIST_HEAD(&peer->ksnp_routes);
+	INIT_LIST_HEAD(&peer->ksnp_tx_queue);
+	INIT_LIST_HEAD(&peer->ksnp_zc_req_list);
 	spin_lock_init(&peer->ksnp_lock);
 
 	spin_lock_bh(&net->ksnn_lock);
@@ -147,21 +147,21 @@ ksocknal_create_peer (ksock_peer_t **peerp, lnet_ni_t *ni, lnet_process_id_t id)
 }
 
 void
-ksocknal_destroy_peer (ksock_peer_t *peer)
+ksocknal_destroy_peer(ksock_peer_t *peer)
 {
 	ksock_net_t    *net = peer->ksnp_ni->ni_data;
 
-	CDEBUG (D_NET, "peer %s %p deleted\n",
+	CDEBUG(D_NET, "peer %s %p deleted\n",
 		libcfs_id2str(peer->ksnp_id), peer);
 
-	LASSERT (atomic_read (&peer->ksnp_refcount) == 0);
-	LASSERT (peer->ksnp_accepting == 0);
-	LASSERT (list_empty (&peer->ksnp_conns));
-	LASSERT (list_empty (&peer->ksnp_routes));
-	LASSERT (list_empty (&peer->ksnp_tx_queue));
-	LASSERT (list_empty (&peer->ksnp_zc_req_list));
+	LASSERT(atomic_read(&peer->ksnp_refcount) == 0);
+	LASSERT(peer->ksnp_accepting == 0);
+	LASSERT(list_empty(&peer->ksnp_conns));
+	LASSERT(list_empty(&peer->ksnp_routes));
+	LASSERT(list_empty(&peer->ksnp_tx_queue));
+	LASSERT(list_empty(&peer->ksnp_zc_req_list));
 
-	LIBCFS_FREE (peer, sizeof (*peer));
+	LIBCFS_FREE(peer, sizeof(*peer));
 
 	/* NB a peer's connections and routes keep a reference on their peer
 	 * until they are destroyed, so we can be assured that _all_ state to
@@ -173,17 +173,17 @@ ksocknal_destroy_peer (ksock_peer_t *peer)
 }
 
 ksock_peer_t *
-ksocknal_find_peer_locked (lnet_ni_t *ni, lnet_process_id_t id)
+ksocknal_find_peer_locked(lnet_ni_t *ni, lnet_process_id_t id)
 {
 	struct list_head       *peer_list = ksocknal_nid2peerlist(id.nid);
 	struct list_head       *tmp;
 	ksock_peer_t     *peer;
 
-	list_for_each (tmp, peer_list) {
+	list_for_each(tmp, peer_list) {
 
-		peer = list_entry (tmp, ksock_peer_t, ksnp_list);
+		peer = list_entry(tmp, ksock_peer_t, ksnp_list);
 
-		LASSERT (!peer->ksnp_closing);
+		LASSERT(!peer->ksnp_closing);
 
 		if (peer->ksnp_ni != ni)
 			continue;
@@ -201,7 +201,7 @@ ksocknal_find_peer_locked (lnet_ni_t *ni, lnet_process_id_t id)
 }
 
 ksock_peer_t *
-ksocknal_find_peer (lnet_ni_t *ni, lnet_process_id_t id)
+ksocknal_find_peer(lnet_ni_t *ni, lnet_process_id_t id)
 {
 	ksock_peer_t     *peer;
 
@@ -215,37 +215,37 @@ ksocknal_find_peer (lnet_ni_t *ni, lnet_process_id_t id)
 }
 
 static void
-ksocknal_unlink_peer_locked (ksock_peer_t *peer)
+ksocknal_unlink_peer_locked(ksock_peer_t *peer)
 {
 	int		i;
 	__u32	      ip;
 	ksock_interface_t *iface;
 
 	for (i = 0; i < peer->ksnp_n_passive_ips; i++) {
-		LASSERT (i < LNET_MAX_INTERFACES);
+		LASSERT(i < LNET_MAX_INTERFACES);
 		ip = peer->ksnp_passive_ips[i];
 
 		iface = ksocknal_ip2iface(peer->ksnp_ni, ip);
 		/* All IPs in peer->ksnp_passive_ips[] come from the
 		 * interface list, therefore the call must succeed. */
-		LASSERT (iface != NULL);
+		LASSERT(iface != NULL);
 
 		CDEBUG(D_NET, "peer=%p iface=%p ksni_nroutes=%d\n",
 		       peer, iface, iface->ksni_nroutes);
 		iface->ksni_npeers--;
 	}
 
-	LASSERT (list_empty(&peer->ksnp_conns));
-	LASSERT (list_empty(&peer->ksnp_routes));
-	LASSERT (!peer->ksnp_closing);
+	LASSERT(list_empty(&peer->ksnp_conns));
+	LASSERT(list_empty(&peer->ksnp_routes));
+	LASSERT(!peer->ksnp_closing);
 	peer->ksnp_closing = 1;
-	list_del (&peer->ksnp_list);
+	list_del(&peer->ksnp_list);
 	/* lose peerlist's ref */
 	ksocknal_peer_decref(peer);
 }
 
 static int
-ksocknal_get_peer_info (lnet_ni_t *ni, int index,
+ksocknal_get_peer_info(lnet_ni_t *ni, int index,
 			lnet_process_id_t *id, __u32 *myip, __u32 *peer_ip,
 			int *port, int *conn_count, int *share_count)
 {
@@ -261,8 +261,8 @@ ksocknal_get_peer_info (lnet_ni_t *ni, int index,
 
 	for (i = 0; i < ksocknal_data.ksnd_peer_hash_size; i++) {
 
-		list_for_each (ptmp, &ksocknal_data.ksnd_peers[i]) {
-			peer = list_entry (ptmp, ksock_peer_t, ksnp_list);
+		list_for_each(ptmp, &ksocknal_data.ksnd_peers[i]) {
+			peer = list_entry(ptmp, ksock_peer_t, ksnp_list);
 
 			if (peer->ksnp_ni != ni)
 				continue;
@@ -296,7 +296,7 @@ ksocknal_get_peer_info (lnet_ni_t *ni, int index,
 				goto out;
 			}
 
-			list_for_each (rtmp, &peer->ksnp_routes) {
+			list_for_each(rtmp, &peer->ksnp_routes) {
 				if (index-- > 0)
 					continue;
 
@@ -364,17 +364,17 @@ ksocknal_associate_route_conn_locked(ksock_route_t *route, ksock_conn_t *conn)
 }
 
 static void
-ksocknal_add_route_locked (ksock_peer_t *peer, ksock_route_t *route)
+ksocknal_add_route_locked(ksock_peer_t *peer, ksock_route_t *route)
 {
 	struct list_head	*tmp;
 	ksock_conn_t      *conn;
 	ksock_route_t     *route2;
 
-	LASSERT (!peer->ksnp_closing);
-	LASSERT (route->ksnr_peer == NULL);
-	LASSERT (!route->ksnr_scheduled);
-	LASSERT (!route->ksnr_connecting);
-	LASSERT (route->ksnr_connected == 0);
+	LASSERT(!peer->ksnp_closing);
+	LASSERT(route->ksnr_peer == NULL);
+	LASSERT(!route->ksnr_scheduled);
+	LASSERT(!route->ksnr_connecting);
+	LASSERT(route->ksnr_connected == 0);
 
 	/* LASSERT(unique) */
 	list_for_each(tmp, &peer->ksnp_routes) {
@@ -405,7 +405,7 @@ ksocknal_add_route_locked (ksock_peer_t *peer, ksock_route_t *route)
 }
 
 static void
-ksocknal_del_route_locked (ksock_route_t *route)
+ksocknal_del_route_locked(ksock_route_t *route)
 {
 	ksock_peer_t      *peer = route->ksnr_peer;
 	ksock_interface_t *iface;
@@ -413,16 +413,16 @@ ksocknal_del_route_locked (ksock_route_t *route)
 	struct list_head	*ctmp;
 	struct list_head	*cnxt;
 
-	LASSERT (!route->ksnr_deleted);
+	LASSERT(!route->ksnr_deleted);
 
 	/* Close associated conns */
-	list_for_each_safe (ctmp, cnxt, &peer->ksnp_conns) {
+	list_for_each_safe(ctmp, cnxt, &peer->ksnp_conns) {
 		conn = list_entry(ctmp, ksock_conn_t, ksnc_list);
 
 		if (conn->ksnc_route != route)
 			continue;
 
-		ksocknal_close_conn_locked (conn, 0);
+		ksocknal_close_conn_locked(conn, 0);
 	}
 
 	if (route->ksnr_myipaddr != 0) {
@@ -433,19 +433,19 @@ ksocknal_del_route_locked (ksock_route_t *route)
 	}
 
 	route->ksnr_deleted = 1;
-	list_del (&route->ksnr_list);
+	list_del(&route->ksnr_list);
 	ksocknal_route_decref(route);	     /* drop peer's ref */
 
-	if (list_empty (&peer->ksnp_routes) &&
-	    list_empty (&peer->ksnp_conns)) {
+	if (list_empty(&peer->ksnp_routes) &&
+	    list_empty(&peer->ksnp_conns)) {
 		/* I've just removed the last route to a peer with no active
 		 * connections */
-		ksocknal_unlink_peer_locked (peer);
+		ksocknal_unlink_peer_locked(peer);
 	}
 }
 
 int
-ksocknal_add_peer (lnet_ni_t *ni, lnet_process_id_t id, __u32 ipaddr, int port)
+ksocknal_add_peer(lnet_ni_t *ni, lnet_process_id_t id, __u32 ipaddr, int port)
 {
 	struct list_head	*tmp;
 	ksock_peer_t      *peer;
@@ -463,7 +463,7 @@ ksocknal_add_peer (lnet_ni_t *ni, lnet_process_id_t id, __u32 ipaddr, int port)
 	if (rc != 0)
 		return rc;
 
-	route = ksocknal_create_route (ipaddr, port);
+	route = ksocknal_create_route(ipaddr, port);
 	if (route == NULL) {
 		ksocknal_peer_decref(peer);
 		return -ENOMEM;
@@ -472,20 +472,20 @@ ksocknal_add_peer (lnet_ni_t *ni, lnet_process_id_t id, __u32 ipaddr, int port)
 	write_lock_bh(&ksocknal_data.ksnd_global_lock);
 
 	/* always called with a ref on ni, so shutdown can't have started */
-	LASSERT (((ksock_net_t *) ni->ni_data)->ksnn_shutdown == 0);
+	LASSERT(((ksock_net_t *) ni->ni_data)->ksnn_shutdown == 0);
 
-	peer2 = ksocknal_find_peer_locked (ni, id);
+	peer2 = ksocknal_find_peer_locked(ni, id);
 	if (peer2 != NULL) {
 		ksocknal_peer_decref(peer);
 		peer = peer2;
 	} else {
 		/* peer table takes my ref on peer */
-		list_add_tail (&peer->ksnp_list,
-				   ksocknal_nid2peerlist (id.nid));
+		list_add_tail(&peer->ksnp_list,
+				   ksocknal_nid2peerlist(id.nid));
 	}
 
 	route2 = NULL;
-	list_for_each (tmp, &peer->ksnp_routes) {
+	list_for_each(tmp, &peer->ksnp_routes) {
 		route2 = list_entry(tmp, ksock_route_t, ksnr_list);
 
 		if (route2->ksnr_ipaddr == ipaddr)
@@ -507,7 +507,7 @@ ksocknal_add_peer (lnet_ni_t *ni, lnet_process_id_t id, __u32 ipaddr, int port)
 }
 
 static void
-ksocknal_del_peer_locked (ksock_peer_t *peer, __u32 ip)
+ksocknal_del_peer_locked(ksock_peer_t *peer, __u32 ip)
 {
 	ksock_conn_t     *conn;
 	ksock_route_t    *route;
@@ -515,12 +515,12 @@ ksocknal_del_peer_locked (ksock_peer_t *peer, __u32 ip)
 	struct list_head       *nxt;
 	int	       nshared;
 
-	LASSERT (!peer->ksnp_closing);
+	LASSERT(!peer->ksnp_closing);
 
 	/* Extra ref prevents peer disappearing until I'm done with it */
 	ksocknal_peer_addref(peer);
 
-	list_for_each_safe (tmp, nxt, &peer->ksnp_routes) {
+	list_for_each_safe(tmp, nxt, &peer->ksnp_routes) {
 		route = list_entry(tmp, ksock_route_t, ksnr_list);
 
 		/* no match */
@@ -529,11 +529,11 @@ ksocknal_del_peer_locked (ksock_peer_t *peer, __u32 ip)
 
 		route->ksnr_share_count = 0;
 		/* This deletes associated conns too */
-		ksocknal_del_route_locked (route);
+		ksocknal_del_route_locked(route);
 	}
 
 	nshared = 0;
-	list_for_each_safe (tmp, nxt, &peer->ksnp_routes) {
+	list_for_each_safe(tmp, nxt, &peer->ksnp_routes) {
 		route = list_entry(tmp, ksock_route_t, ksnr_list);
 		nshared += route->ksnr_share_count;
 	}
@@ -542,15 +542,15 @@ ksocknal_del_peer_locked (ksock_peer_t *peer, __u32 ip)
 		/* remove everything else if there are no explicit entries
 		 * left */
 
-		list_for_each_safe (tmp, nxt, &peer->ksnp_routes) {
+		list_for_each_safe(tmp, nxt, &peer->ksnp_routes) {
 			route = list_entry(tmp, ksock_route_t, ksnr_list);
 
 			/* we should only be removing auto-entries */
 			LASSERT(route->ksnr_share_count == 0);
-			ksocknal_del_route_locked (route);
+			ksocknal_del_route_locked(route);
 		}
 
-		list_for_each_safe (tmp, nxt, &peer->ksnp_conns) {
+		list_for_each_safe(tmp, nxt, &peer->ksnp_conns) {
 			conn = list_entry(tmp, ksock_conn_t, ksnc_list);
 
 			ksocknal_close_conn_locked(conn, 0);
@@ -562,9 +562,9 @@ ksocknal_del_peer_locked (ksock_peer_t *peer, __u32 ip)
 }
 
 static int
-ksocknal_del_peer (lnet_ni_t *ni, lnet_process_id_t id, __u32 ip)
+ksocknal_del_peer(lnet_ni_t *ni, lnet_process_id_t id, __u32 ip)
 {
-	LIST_HEAD     (zombies);
+	LIST_HEAD(zombies);
 	struct list_head	*ptmp;
 	struct list_head	*pnxt;
 	ksock_peer_t      *peer;
@@ -583,9 +583,9 @@ ksocknal_del_peer (lnet_ni_t *ni, lnet_process_id_t id, __u32 ip)
 	}
 
 	for (i = lo; i <= hi; i++) {
-		list_for_each_safe (ptmp, pnxt,
+		list_for_each_safe(ptmp, pnxt,
 					&ksocknal_data.ksnd_peers[i]) {
-			peer = list_entry (ptmp, ksock_peer_t, ksnp_list);
+			peer = list_entry(ptmp, ksock_peer_t, ksnp_list);
 
 			if (peer->ksnp_ni != ni)
 				continue;
@@ -596,12 +596,12 @@ ksocknal_del_peer (lnet_ni_t *ni, lnet_process_id_t id, __u32 ip)
 
 			ksocknal_peer_addref(peer);     /* a ref for me... */
 
-			ksocknal_del_peer_locked (peer, ip);
+			ksocknal_del_peer_locked(peer, ip);
 
 			if (peer->ksnp_closing &&
 			    !list_empty(&peer->ksnp_tx_queue)) {
-				LASSERT (list_empty(&peer->ksnp_conns));
-				LASSERT (list_empty(&peer->ksnp_routes));
+				LASSERT(list_empty(&peer->ksnp_conns));
+				LASSERT(list_empty(&peer->ksnp_routes));
 
 				list_splice_init(&peer->ksnp_tx_queue,
 						     &zombies);
@@ -621,7 +621,7 @@ ksocknal_del_peer (lnet_ni_t *ni, lnet_process_id_t id, __u32 ip)
 }
 
 static ksock_conn_t *
-ksocknal_get_conn_by_idx (lnet_ni_t *ni, int index)
+ksocknal_get_conn_by_idx(lnet_ni_t *ni, int index)
 {
 	ksock_peer_t      *peer;
 	struct list_head	*ptmp;
@@ -632,19 +632,19 @@ ksocknal_get_conn_by_idx (lnet_ni_t *ni, int index)
 	read_lock(&ksocknal_data.ksnd_global_lock);
 
 	for (i = 0; i < ksocknal_data.ksnd_peer_hash_size; i++) {
-		list_for_each (ptmp, &ksocknal_data.ksnd_peers[i]) {
-			peer = list_entry (ptmp, ksock_peer_t, ksnp_list);
+		list_for_each(ptmp, &ksocknal_data.ksnd_peers[i]) {
+			peer = list_entry(ptmp, ksock_peer_t, ksnp_list);
 
-			LASSERT (!peer->ksnp_closing);
+			LASSERT(!peer->ksnp_closing);
 
 			if (peer->ksnp_ni != ni)
 				continue;
 
-			list_for_each (ctmp, &peer->ksnp_conns) {
+			list_for_each(ctmp, &peer->ksnp_conns) {
 				if (index-- > 0)
 					continue;
 
-				conn = list_entry (ctmp, ksock_conn_t,
+				conn = list_entry(ctmp, ksock_conn_t,
 						       ksnc_list);
 				ksocknal_conn_addref(conn);
 				read_unlock(&ksocknal_data.ksnd_global_lock);
@@ -681,7 +681,7 @@ ksocknal_choose_scheduler_locked(unsigned int cpt)
 }
 
 static int
-ksocknal_local_ipvec (lnet_ni_t *ni, __u32 *ipaddrs)
+ksocknal_local_ipvec(lnet_ni_t *ni, __u32 *ipaddrs)
 {
 	ksock_net_t       *net = ni->ni_data;
 	int		i;
@@ -690,7 +690,7 @@ ksocknal_local_ipvec (lnet_ni_t *ni, __u32 *ipaddrs)
 	read_lock(&ksocknal_data.ksnd_global_lock);
 
 	nip = net->ksnn_ninterfaces;
-	LASSERT (nip <= LNET_MAX_INTERFACES);
+	LASSERT(nip <= LNET_MAX_INTERFACES);
 
 	/* Only offer interfaces for additional connections if I have
 	 * more than one. */
@@ -701,7 +701,7 @@ ksocknal_local_ipvec (lnet_ni_t *ni, __u32 *ipaddrs)
 
 	for (i = 0; i < nip; i++) {
 		ipaddrs[i] = net->ksnn_interfaces[i].ksni_ipaddr;
-		LASSERT (ipaddrs[i] != 0);
+		LASSERT(ipaddrs[i] != 0);
 	}
 
 	read_unlock(&ksocknal_data.ksnd_global_lock);
@@ -709,7 +709,7 @@ ksocknal_local_ipvec (lnet_ni_t *ni, __u32 *ipaddrs)
 }
 
 static int
-ksocknal_match_peerip (ksock_interface_t *iface, __u32 *ips, int nips)
+ksocknal_match_peerip(ksock_interface_t *iface, __u32 *ips, int nips)
 {
 	int   best_netmatch = 0;
 	int   best_xor      = 0;
@@ -736,7 +736,7 @@ ksocknal_match_peerip (ksock_interface_t *iface, __u32 *ips, int nips)
 		best_xor = this_xor;
 	}
 
-	LASSERT (best >= 0);
+	LASSERT(best >= 0);
 	return best;
 }
 
@@ -767,8 +767,8 @@ ksocknal_select_ips(ksock_peer_t *peer, __u32 *peerips, int n_peerips)
 
 	write_lock_bh(global_lock);
 
-	LASSERT (n_peerips <= LNET_MAX_INTERFACES);
-	LASSERT (net->ksnn_ninterfaces <= LNET_MAX_INTERFACES);
+	LASSERT(n_peerips <= LNET_MAX_INTERFACES);
+	LASSERT(net->ksnn_ninterfaces <= LNET_MAX_INTERFACES);
 
 	/* Only match interfaces for additional connections
 	 * if I have > 1 interface */
@@ -791,7 +791,7 @@ ksocknal_select_ips(ksock_peer_t *peer, __u32 *peerips, int n_peerips)
 
 		} else {
 			/* choose a new interface */
-			LASSERT (i == peer->ksnp_n_passive_ips);
+			LASSERT(i == peer->ksnp_n_passive_ips);
 
 			best_iface = NULL;
 			best_netmatch = 0;
@@ -874,7 +874,7 @@ ksocknal_create_routes(ksock_peer_t *peer, int port,
 		return;
 	}
 
-	LASSERT (npeer_ipaddrs <= LNET_MAX_INTERFACES);
+	LASSERT(npeer_ipaddrs <= LNET_MAX_INTERFACES);
 
 	for (i = 0; i < npeer_ipaddrs; i++) {
 		if (newroute != NULL) {
@@ -911,7 +911,7 @@ ksocknal_create_routes(ksock_peer_t *peer, int port,
 		best_nroutes = 0;
 		best_netmatch = 0;
 
-		LASSERT (net->ksnn_ninterfaces <= LNET_MAX_INTERFACES);
+		LASSERT(net->ksnn_ninterfaces <= LNET_MAX_INTERFACES);
 
 		/* Select interface to connect from */
 		for (j = 0; j < net->ksnn_ninterfaces; j++) {
@@ -961,7 +961,7 @@ ksocknal_create_routes(ksock_peer_t *peer, int port,
 }
 
 int
-ksocknal_accept (lnet_ni_t *ni, struct socket *sock)
+ksocknal_accept(lnet_ni_t *ni, struct socket *sock)
 {
 	ksock_connreq_t    *cr;
 	int		 rc;
@@ -969,7 +969,7 @@ ksocknal_accept (lnet_ni_t *ni, struct socket *sock)
 	int		 peer_port;
 
 	rc = libcfs_sock_getaddr(sock, 1, &peer_ip, &peer_port);
-	LASSERT (rc == 0);		      /* we succeeded before */
+	LASSERT(rc == 0);		      /* we succeeded before */
 
 	LIBCFS_ALLOC(cr, sizeof(*cr));
 	if (cr == NULL) {
@@ -992,11 +992,11 @@ ksocknal_accept (lnet_ni_t *ni, struct socket *sock)
 }
 
 static int
-ksocknal_connecting (ksock_peer_t *peer, __u32 ipaddr)
+ksocknal_connecting(ksock_peer_t *peer, __u32 ipaddr)
 {
 	ksock_route_t   *route;
 
-	list_for_each_entry (route, &peer->ksnp_routes, ksnr_list) {
+	list_for_each_entry(route, &peer->ksnp_routes, ksnr_list) {
 
 		if (route->ksnr_ipaddr == ipaddr)
 			return route->ksnr_connecting;
@@ -1005,11 +1005,11 @@ ksocknal_connecting (ksock_peer_t *peer, __u32 ipaddr)
 }
 
 int
-ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
+ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 		      struct socket *sock, int type)
 {
 	rwlock_t		*global_lock = &ksocknal_data.ksnd_global_lock;
-	LIST_HEAD     (zombies);
+	LIST_HEAD(zombies);
 	lnet_process_id_t  peerid;
 	struct list_head	*tmp;
 	__u64	      incarnation;
@@ -1028,7 +1028,7 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 
 	active = (route != NULL);
 
-	LASSERT (active == (type != SOCKLND_CONN_NONE));
+	LASSERT(active == (type != SOCKLND_CONN_NONE));
 
 	LIBCFS_ALLOC(conn, sizeof(*conn));
 	if (conn == NULL) {
@@ -1041,19 +1041,19 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 	conn->ksnc_sock = sock;
 	/* 2 ref, 1 for conn, another extra ref prevents socket
 	 * being closed before establishment of connection */
-	atomic_set (&conn->ksnc_sock_refcount, 2);
+	atomic_set(&conn->ksnc_sock_refcount, 2);
 	conn->ksnc_type = type;
 	ksocknal_lib_save_callback(sock, conn);
-	atomic_set (&conn->ksnc_conn_refcount, 1); /* 1 ref for me */
+	atomic_set(&conn->ksnc_conn_refcount, 1); /* 1 ref for me */
 
 	conn->ksnc_rx_ready = 0;
 	conn->ksnc_rx_scheduled = 0;
 
-	INIT_LIST_HEAD (&conn->ksnc_tx_queue);
+	INIT_LIST_HEAD(&conn->ksnc_tx_queue);
 	conn->ksnc_tx_ready = 0;
 	conn->ksnc_tx_scheduled = 0;
 	conn->ksnc_tx_carrier = NULL;
-	atomic_set (&conn->ksnc_tx_nob, 0);
+	atomic_set(&conn->ksnc_tx_nob, 0);
 
 	LIBCFS_ALLOC(hello, offsetof(ksock_hello_msg_t,
 				     kshm_ips[LNET_MAX_INTERFACES]));
@@ -1063,7 +1063,7 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 	}
 
 	/* stash conn's local and remote addrs */
-	rc = ksocknal_lib_get_conn_addrs (conn);
+	rc = ksocknal_lib_get_conn_addrs(conn);
 	if (rc != 0)
 		goto failed_1;
 
@@ -1094,7 +1094,7 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 #endif
 		}
 
-		rc = ksocknal_send_hello (ni, conn, peerid.nid, hello);
+		rc = ksocknal_send_hello(ni, conn, peerid.nid, hello);
 		if (rc != 0)
 			goto failed_1;
 	} else {
@@ -1105,13 +1105,13 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 		conn->ksnc_proto = NULL;
 	}
 
-	rc = ksocknal_recv_hello (ni, conn, hello, &peerid, &incarnation);
+	rc = ksocknal_recv_hello(ni, conn, hello, &peerid, &incarnation);
 	if (rc < 0)
 		goto failed_1;
 
-	LASSERT (rc == 0 || active);
-	LASSERT (conn->ksnc_proto != NULL);
-	LASSERT (peerid.nid != LNET_NID_ANY);
+	LASSERT(rc == 0 || active);
+	LASSERT(conn->ksnc_proto != NULL);
+	LASSERT(peerid.nid != LNET_NID_ANY);
 
 	cpt = lnet_cpt_of_nid(peerid.nid);
 
@@ -1126,7 +1126,7 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 		write_lock_bh(global_lock);
 
 		/* called with a ref on ni, so shutdown can't have started */
-		LASSERT (((ksock_net_t *) ni->ni_data)->ksnn_shutdown == 0);
+		LASSERT(((ksock_net_t *) ni->ni_data)->ksnn_shutdown == 0);
 
 		peer2 = ksocknal_find_peer_locked(ni, peerid);
 		if (peer2 == NULL) {
@@ -1166,7 +1166,7 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 		 * NB recv_hello may have returned EPROTO to signal my peer
 		 * wants a different protocol than the one I asked for.
 		 */
-		LASSERT (list_empty(&peer->ksnp_conns));
+		LASSERT(list_empty(&peer->ksnp_conns));
 
 		peer->ksnp_proto = conn->ksnc_proto;
 		peer->ksnp_incarnation = incarnation;
@@ -1211,7 +1211,7 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 
 			/* Reply on a passive connection attempt so the peer
 			 * realises we're connected. */
-			LASSERT (rc == 0);
+			LASSERT(rc == 0);
 			if (!active)
 				rc = EALREADY;
 
@@ -1235,7 +1235,7 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 	 * create an association.  This allows incoming connections created
 	 * by routes in my peer to match my own route entries so I don't
 	 * continually create duplicate routes. */
-	list_for_each (tmp, &peer->ksnp_routes) {
+	list_for_each(tmp, &peer->ksnp_routes) {
 		route = list_entry(tmp, ksock_route_t, ksnr_list);
 
 		if (route->ksnr_ipaddr != conn->ksnc_ipaddr)
@@ -1260,7 +1260,7 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 	conn->ksnc_tx_deadline = cfs_time_shift(*ksocknal_tunables.ksnd_timeout);
 	mb();   /* order with adding to peer's conn list */
 
-	list_add (&conn->ksnc_list, &peer->ksnp_conns);
+	list_add(&conn->ksnc_list, &peer->ksnp_conns);
 	ksocknal_conn_addref(conn);
 
 	ksocknal_new_packet(conn, 0);
@@ -1272,8 +1272,8 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 		if (conn->ksnc_proto->pro_match_tx(conn, tx, tx->tx_nonblk) == SOCKNAL_MATCH_NO)
 				continue;
 
-		list_del (&tx->tx_list);
-		ksocknal_queue_tx_locked (tx, conn);
+		list_del(&tx->tx_list);
+		ksocknal_queue_tx_locked(tx, conn);
 	}
 
 	write_unlock_bh(global_lock);
@@ -1343,8 +1343,8 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 
  failed_2:
 	if (!peer->ksnp_closing &&
-	    list_empty (&peer->ksnp_conns) &&
-	    list_empty (&peer->ksnp_routes)) {
+	    list_empty(&peer->ksnp_conns) &&
+	    list_empty(&peer->ksnp_routes)) {
 		list_add(&zombies, &peer->ksnp_tx_queue);
 		list_del_init(&peer->ksnp_tx_queue);
 		ksocknal_unlink_peer_locked(peer);
@@ -1383,7 +1383,7 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 		LIBCFS_FREE(hello, offsetof(ksock_hello_msg_t,
 					    kshm_ips[LNET_MAX_INTERFACES]));
 
-	LIBCFS_FREE (conn, sizeof(*conn));
+	LIBCFS_FREE(conn, sizeof(*conn));
 
  failed_0:
 	libcfs_sock_release(sock);
@@ -1391,7 +1391,7 @@ ksocknal_create_conn (lnet_ni_t *ni, ksock_route_t *route,
 }
 
 void
-ksocknal_close_conn_locked (ksock_conn_t *conn, int error)
+ksocknal_close_conn_locked(ksock_conn_t *conn, int error)
 {
 	/* This just does the immmediate housekeeping, and queues the
 	 * connection for the reaper to terminate.
@@ -1401,18 +1401,18 @@ ksocknal_close_conn_locked (ksock_conn_t *conn, int error)
 	ksock_conn_t      *conn2;
 	struct list_head	*tmp;
 
-	LASSERT (peer->ksnp_error == 0);
-	LASSERT (!conn->ksnc_closing);
+	LASSERT(peer->ksnp_error == 0);
+	LASSERT(!conn->ksnc_closing);
 	conn->ksnc_closing = 1;
 
 	/* ksnd_deathrow_conns takes over peer's ref */
-	list_del (&conn->ksnc_list);
+	list_del(&conn->ksnc_list);
 
 	route = conn->ksnc_route;
 	if (route != NULL) {
 		/* dissociate conn from route... */
-		LASSERT (!route->ksnr_deleted);
-		LASSERT ((route->ksnr_connected & (1 << conn->ksnc_type)) != 0);
+		LASSERT(!route->ksnr_deleted);
+		LASSERT((route->ksnr_connected & (1 << conn->ksnc_type)) != 0);
 
 		conn2 = NULL;
 		list_for_each(tmp, &peer->ksnp_conns) {
@@ -1431,19 +1431,19 @@ ksocknal_close_conn_locked (ksock_conn_t *conn, int error)
 
 #if 0	   /* irrelevant with only eager routes */
 		/* make route least favourite */
-		list_del (&route->ksnr_list);
-		list_add_tail (&route->ksnr_list, &peer->ksnp_routes);
+		list_del(&route->ksnr_list);
+		list_add_tail(&route->ksnr_list, &peer->ksnp_routes);
 #endif
 		ksocknal_route_decref(route);     /* drop conn's ref on route */
 	}
 
-	if (list_empty (&peer->ksnp_conns)) {
+	if (list_empty(&peer->ksnp_conns)) {
 		/* No more connections to this peer */
 
 		if (!list_empty(&peer->ksnp_tx_queue)) {
 			ksock_tx_t *tx;
 
-			LASSERT (conn->ksnc_proto == &ksocknal_protocol_v3x);
+			LASSERT(conn->ksnc_proto == &ksocknal_protocol_v3x);
 
 			/* throw them to the last connection...,
 			 * these TXs will be send to /dev/null by scheduler */
@@ -1460,10 +1460,10 @@ ksocknal_close_conn_locked (ksock_conn_t *conn, int error)
 		peer->ksnp_proto = NULL;	/* renegotiate protocol version */
 		peer->ksnp_error = error;       /* stash last conn close reason */
 
-		if (list_empty (&peer->ksnp_routes)) {
+		if (list_empty(&peer->ksnp_routes)) {
 			/* I've just closed last conn belonging to a
 			 * peer with no routes to it */
-			ksocknal_unlink_peer_locked (peer);
+			ksocknal_unlink_peer_locked(peer);
 		}
 	}
 
@@ -1477,7 +1477,7 @@ ksocknal_close_conn_locked (ksock_conn_t *conn, int error)
 }
 
 void
-ksocknal_peer_failed (ksock_peer_t *peer)
+ksocknal_peer_failed(ksock_peer_t *peer)
 {
 	int	notify = 0;
 	unsigned long last_alive = 0;
@@ -1499,7 +1499,7 @@ ksocknal_peer_failed (ksock_peer_t *peer)
 	read_unlock(&ksocknal_data.ksnd_global_lock);
 
 	if (notify)
-		lnet_notify (peer->ksnp_ni, peer->ksnp_id.nid, 0,
+		lnet_notify(peer->ksnp_ni, peer->ksnp_id.nid, 0,
 			     last_alive);
 }
 
@@ -1509,11 +1509,11 @@ ksocknal_finalize_zcreq(ksock_conn_t *conn)
 	ksock_peer_t     *peer = conn->ksnc_peer;
 	ksock_tx_t       *tx;
 	ksock_tx_t       *tmp;
-	LIST_HEAD    (zlist);
+	LIST_HEAD(zlist);
 
 	/* NB safe to finalize TXs because closing of socket will
 	 * abort all buffered data */
-	LASSERT (conn->ksnc_sock == NULL);
+	LASSERT(conn->ksnc_sock == NULL);
 
 	spin_lock(&peer->ksnp_lock);
 
@@ -1521,7 +1521,7 @@ ksocknal_finalize_zcreq(ksock_conn_t *conn)
 		if (tx->tx_conn != conn)
 			continue;
 
-		LASSERT (tx->tx_msg.ksm_zc_cookies[0] != 0);
+		LASSERT(tx->tx_msg.ksm_zc_cookies[0] != 0);
 
 		tx->tx_msg.ksm_zc_cookies[0] = 0;
 		tx->tx_zc_aborted = 1; /* mark it as not-acked */
@@ -1540,7 +1540,7 @@ ksocknal_finalize_zcreq(ksock_conn_t *conn)
 }
 
 void
-ksocknal_terminate_conn (ksock_conn_t *conn)
+ksocknal_terminate_conn(ksock_conn_t *conn)
 {
 	/* This gets called by the reaper (guaranteed thread context) to
 	 * disengage the socket from its callbacks and close it.
@@ -1560,13 +1560,13 @@ ksocknal_terminate_conn (ksock_conn_t *conn)
 
 	if (!conn->ksnc_tx_scheduled &&
 	    !list_empty(&conn->ksnc_tx_queue)) {
-		list_add_tail (&conn->ksnc_tx_list,
+		list_add_tail(&conn->ksnc_tx_list,
 			       &sched->kss_tx_conns);
 		conn->ksnc_tx_scheduled = 1;
 		/* extra ref for scheduler */
 		ksocknal_conn_addref(conn);
 
-		wake_up (&sched->kss_waitq);
+		wake_up(&sched->kss_waitq);
 	}
 
 	spin_unlock_bh(&sched->kss_lock);
@@ -1582,7 +1582,7 @@ ksocknal_terminate_conn (ksock_conn_t *conn)
 
 	if (peer->ksnp_error != 0) {
 		/* peer's last conn closed in error */
-		LASSERT (list_empty (&peer->ksnp_conns));
+		LASSERT(list_empty(&peer->ksnp_conns));
 		failed = 1;
 		peer->ksnp_error = 0;     /* avoid multiple notifications */
 	}
@@ -1601,7 +1601,7 @@ ksocknal_terminate_conn (ksock_conn_t *conn)
 }
 
 void
-ksocknal_queue_zombie_conn (ksock_conn_t *conn)
+ksocknal_queue_zombie_conn(ksock_conn_t *conn)
 {
 	/* Queue the conn for the reaper to destroy */
 
@@ -1615,20 +1615,20 @@ ksocknal_queue_zombie_conn (ksock_conn_t *conn)
 }
 
 void
-ksocknal_destroy_conn (ksock_conn_t *conn)
+ksocknal_destroy_conn(ksock_conn_t *conn)
 {
 	unsigned long      last_rcv;
 
 	/* Final coup-de-grace of the reaper */
-	CDEBUG (D_NET, "connection %p\n", conn);
+	CDEBUG(D_NET, "connection %p\n", conn);
 
-	LASSERT (atomic_read (&conn->ksnc_conn_refcount) == 0);
-	LASSERT (atomic_read (&conn->ksnc_sock_refcount) == 0);
-	LASSERT (conn->ksnc_sock == NULL);
-	LASSERT (conn->ksnc_route == NULL);
-	LASSERT (!conn->ksnc_tx_scheduled);
-	LASSERT (!conn->ksnc_rx_scheduled);
-	LASSERT (list_empty(&conn->ksnc_tx_queue));
+	LASSERT(atomic_read(&conn->ksnc_conn_refcount) == 0);
+	LASSERT(atomic_read(&conn->ksnc_sock_refcount) == 0);
+	LASSERT(conn->ksnc_sock == NULL);
+	LASSERT(conn->ksnc_route == NULL);
+	LASSERT(!conn->ksnc_tx_scheduled);
+	LASSERT(!conn->ksnc_rx_scheduled);
+	LASSERT(list_empty(&conn->ksnc_tx_queue));
 
 	/* complete current receive if any */
 	switch (conn->ksnc_rx_state) {
@@ -1641,7 +1641,7 @@ ksocknal_destroy_conn (ksock_conn_t *conn)
 		       conn->ksnc_rx_nob_wanted, conn->ksnc_rx_nob_left,
 		       cfs_duration_sec(cfs_time_sub(cfs_time_current(),
 						     last_rcv)));
-		lnet_finalize (conn->ksnc_peer->ksnp_ni,
+		lnet_finalize(conn->ksnc_peer->ksnp_ni,
 			       conn->ksnc_cookie, -EIO);
 		break;
 	case SOCKNAL_RX_LNET_HEADER:
@@ -1665,30 +1665,30 @@ ksocknal_destroy_conn (ksock_conn_t *conn)
 			       &conn->ksnc_ipaddr, conn->ksnc_port);
 	       break;
 	default:
-		LBUG ();
+		LBUG();
 		break;
 	}
 
 	ksocknal_peer_decref(conn->ksnc_peer);
 
-	LIBCFS_FREE (conn, sizeof (*conn));
+	LIBCFS_FREE(conn, sizeof(*conn));
 }
 
 int
-ksocknal_close_peer_conns_locked (ksock_peer_t *peer, __u32 ipaddr, int why)
+ksocknal_close_peer_conns_locked(ksock_peer_t *peer, __u32 ipaddr, int why)
 {
 	ksock_conn_t       *conn;
 	struct list_head	 *ctmp;
 	struct list_head	 *cnxt;
 	int		 count = 0;
 
-	list_for_each_safe (ctmp, cnxt, &peer->ksnp_conns) {
-		conn = list_entry (ctmp, ksock_conn_t, ksnc_list);
+	list_for_each_saf(ctmp, cnxt, &peer->ksnp_conns) {
+		conn = list_entry(ctmp, ksock_conn_t, ksnc_list);
 
 		if (ipaddr == 0 ||
 		    conn->ksnc_ipaddr == ipaddr) {
 			count++;
-			ksocknal_close_conn_locked (conn, why);
+			ksocknal_close_conn_locked(conn, why);
 		}
 	}
 
@@ -1696,7 +1696,7 @@ ksocknal_close_peer_conns_locked (ksock_peer_t *peer, __u32 ipaddr, int why)
 }
 
 int
-ksocknal_close_conn_and_siblings (ksock_conn_t *conn, int why)
+ksocknal_close_conn_and_siblings(ksock_conn_t *conn, int why)
 {
 	ksock_peer_t     *peer = conn->ksnc_peer;
 	__u32	     ipaddr = conn->ksnc_ipaddr;
@@ -1704,7 +1704,7 @@ ksocknal_close_conn_and_siblings (ksock_conn_t *conn, int why)
 
 	write_lock_bh(&ksocknal_data.ksnd_global_lock);
 
-	count = ksocknal_close_peer_conns_locked (peer, ipaddr, why);
+	count = ksocknal_close_peer_conns_locked(peer, ipaddr, why);
 
 	write_unlock_bh(&ksocknal_data.ksnd_global_lock);
 
@@ -1712,7 +1712,7 @@ ksocknal_close_conn_and_siblings (ksock_conn_t *conn, int why)
 }
 
 int
-ksocknal_close_matching_conns (lnet_process_id_t id, __u32 ipaddr)
+ksocknal_close_matching_conns(lnet_process_id_t id, __u32 ipaddr)
 {
 	ksock_peer_t       *peer;
 	struct list_head	 *ptmp;
@@ -1732,16 +1732,16 @@ ksocknal_close_matching_conns (lnet_process_id_t id, __u32 ipaddr)
 	}
 
 	for (i = lo; i <= hi; i++) {
-		list_for_each_safe (ptmp, pnxt,
+		list_for_each_safe(ptmp, pnxt,
 					&ksocknal_data.ksnd_peers[i]) {
 
-			peer = list_entry (ptmp, ksock_peer_t, ksnp_list);
+			peer = list_entry(ptmp, ksock_peer_t, ksnp_list);
 
 			if (!((id.nid == LNET_NID_ANY || id.nid == peer->ksnp_id.nid) &&
 			      (id.pid == LNET_PID_ANY || id.pid == peer->ksnp_id.pid)))
 				continue;
 
-			count += ksocknal_close_peer_conns_locked (peer, ipaddr, 0);
+			count += ksocknal_close_peer_conns_locked(peer, ipaddr, 0);
 		}
 	}
 
@@ -1758,7 +1758,7 @@ ksocknal_close_matching_conns (lnet_process_id_t id, __u32 ipaddr)
 }
 
 void
-ksocknal_notify (lnet_ni_t *ni, lnet_nid_t gw_nid, int alive)
+ksocknal_notify(lnet_ni_t *ni, lnet_nid_t gw_nid, int alive)
 {
 	/* The router is telling me she's been notified of a change in
 	 * gateway state.... */
@@ -1767,12 +1767,12 @@ ksocknal_notify (lnet_ni_t *ni, lnet_nid_t gw_nid, int alive)
 	id.nid = gw_nid;
 	id.pid = LNET_PID_ANY;
 
-	CDEBUG (D_NET, "gw %s %s\n", libcfs_nid2str(gw_nid),
+	CDEBUG(D_NET, "gw %s %s\n", libcfs_nid2str(gw_nid),
 		alive ? "up" : "down");
 
 	if (!alive) {
 		/* If the gateway crashed, close all open connections... */
-		ksocknal_close_matching_conns (id, 0);
+		ksocknal_close_matching_conns(id, 0);
 		return;
 	}
 
@@ -1781,7 +1781,7 @@ ksocknal_notify (lnet_ni_t *ni, lnet_nid_t gw_nid, int alive)
 }
 
 void
-ksocknal_query (lnet_ni_t *ni, lnet_nid_t nid, unsigned long *when)
+ksocknal_query(lnet_ni_t *ni, lnet_nid_t nid, unsigned long *when)
 {
 	int		connect = 1;
 	unsigned long	 last_alive = 0;
@@ -1798,7 +1798,7 @@ ksocknal_query (lnet_ni_t *ni, lnet_nid_t nid, unsigned long *when)
 		ksock_conn_t     *conn;
 		int	       bufnob;
 
-		list_for_each (tmp, &peer->ksnp_conns) {
+		list_for_each(tmp, &peer->ksnp_conns) {
 			conn = list_entry(tmp, ksock_conn_t, ksnc_list);
 			bufnob = conn->ksnc_sock->sk->sk_wmem_queued;
 
@@ -1842,7 +1842,7 @@ ksocknal_query (lnet_ni_t *ni, lnet_nid_t nid, unsigned long *when)
 }
 
 static void
-ksocknal_push_peer (ksock_peer_t *peer)
+ksocknal_push_peer(ksock_peer_t *peer)
 {
 	int	       index;
 	int	       i;
@@ -1855,9 +1855,9 @@ ksocknal_push_peer (ksock_peer_t *peer)
 		i = 0;
 		conn = NULL;
 
-		list_for_each (tmp, &peer->ksnp_conns) {
+		list_for_each(tmp, &peer->ksnp_conns) {
 			if (i++ == index) {
-				conn = list_entry (tmp, ksock_conn_t,
+				conn = list_entry(tmp, ksock_conn_t,
 						       ksnc_list);
 				ksocknal_conn_addref(conn);
 				break;
@@ -1869,13 +1869,13 @@ ksocknal_push_peer (ksock_peer_t *peer)
 		if (conn == NULL)
 			break;
 
-		ksocknal_lib_push_conn (conn);
+		ksocknal_lib_push_conn(conn);
 		ksocknal_conn_decref(conn);
 	}
 }
 
 static int
-ksocknal_push (lnet_ni_t *ni, lnet_process_id_t id)
+ksocknal_push(lnet_ni_t *ni, lnet_process_id_t id)
 {
 	ksock_peer_t      *peer;
 	struct list_head	*tmp;
@@ -1891,7 +1891,7 @@ ksocknal_push (lnet_ni_t *ni, lnet_process_id_t id)
 			index = 0;
 			peer = NULL;
 
-			list_for_each (tmp, &ksocknal_data.ksnd_peers[i]) {
+			list_for_each(tmp, &ksocknal_data.ksnd_peers[i]) {
 				peer = list_entry(tmp, ksock_peer_t,
 						      ksnp_list);
 
@@ -1913,7 +1913,7 @@ ksocknal_push (lnet_ni_t *ni, lnet_process_id_t id)
 
 			if (peer != NULL) {
 				rc = 0;
-				ksocknal_push_peer (peer);
+				ksocknal_push_peer(peer);
 				ksocknal_peer_decref(peer);
 			}
 		}
@@ -2005,7 +2005,7 @@ ksocknal_peer_del_interface_locked(ksock_peer_t *peer, __u32 ipaddr)
 		}
 
 	list_for_each_safe(tmp, nxt, &peer->ksnp_routes) {
-		route = list_entry (tmp, ksock_route_t, ksnr_list);
+		route = list_entry(tmp, ksock_route_t, ksnr_list);
 
 		if (route->ksnr_myipaddr != ipaddr)
 			continue;
@@ -2022,7 +2022,7 @@ ksocknal_peer_del_interface_locked(ksock_peer_t *peer, __u32 ipaddr)
 		conn = list_entry(tmp, ksock_conn_t, ksnc_list);
 
 		if (conn->ksnc_myipaddr == ipaddr)
-			ksocknal_close_conn_locked (conn, 0);
+			ksocknal_close_conn_locked(conn, 0);
 	}
 }
 
@@ -2139,21 +2139,21 @@ ksocknal_ctl(lnet_ni_t *ni, unsigned int cmd, void *arg)
 	case IOC_LIBCFS_ADD_PEER:
 		id.nid = data->ioc_nid;
 		id.pid = LUSTRE_SRV_LNET_PID;
-		return ksocknal_add_peer (ni, id,
+		return ksocknal_add_peer(ni, id,
 					  data->ioc_u32[0], /* IP */
 					  data->ioc_u32[1]); /* port */
 
 	case IOC_LIBCFS_DEL_PEER:
 		id.nid = data->ioc_nid;
 		id.pid = LNET_PID_ANY;
-		return ksocknal_del_peer (ni, id,
+		return ksocknal_del_peer(ni, id,
 					  data->ioc_u32[0]); /* IP */
 
 	case IOC_LIBCFS_GET_CONN: {
 		int	   txmem;
 		int	   rxmem;
 		int	   nagle;
-		ksock_conn_t *conn = ksocknal_get_conn_by_idx (ni, data->ioc_count);
+		ksock_conn_t *conn = ksocknal_get_conn_by_idx(ni, data->ioc_count);
 
 		if (conn == NULL)
 			return -ENOENT;
@@ -2177,7 +2177,7 @@ ksocknal_ctl(lnet_ni_t *ni, unsigned int cmd, void *arg)
 	case IOC_LIBCFS_CLOSE_CONNECTION:
 		id.nid = data->ioc_nid;
 		id.pid = LNET_PID_ANY;
-		return ksocknal_close_matching_conns (id,
+		return ksocknal_close_matching_conns(id,
 						      data->ioc_u32[0]);
 
 	case IOC_LIBCFS_REGISTER_MYNID:
@@ -2202,9 +2202,9 @@ ksocknal_ctl(lnet_ni_t *ni, unsigned int cmd, void *arg)
 }
 
 static void
-ksocknal_free_buffers (void)
+ksocknal_free_buffers(void)
 {
-	LASSERT (atomic_read(&ksocknal_data.ksnd_nactive_txs) == 0);
+	LASSERT(atomic_read(&ksocknal_data.ksnd_nactive_txs) == 0);
 
 	if (ksocknal_data.ksnd_sched_info != NULL) {
 		struct ksock_sched_info	*info;
@@ -2220,8 +2220,8 @@ ksocknal_free_buffers (void)
 		cfs_percpt_free(ksocknal_data.ksnd_sched_info);
 	}
 
-	LIBCFS_FREE (ksocknal_data.ksnd_peers,
-		     sizeof (struct list_head) *
+	LIBCFS_FREE(ksocknal_data.ksnd_peers,
+		     sizeof(struct list_head) *
 		     ksocknal_data.ksnd_peer_hash_size);
 
 	spin_lock(&ksocknal_data.ksnd_tx_lock);
@@ -2253,25 +2253,25 @@ ksocknal_base_shutdown(void)
 	int			j;
 
 	CDEBUG(D_MALLOC, "before NAL cleanup: kmem %d\n",
-	       atomic_read (&libcfs_kmemory));
-	LASSERT (ksocknal_data.ksnd_nnets == 0);
+	       atomic_read(&libcfs_kmemory));
+	LASSERT(ksocknal_data.ksnd_nnets == 0);
 
 	switch (ksocknal_data.ksnd_init) {
 	default:
-		LASSERT (0);
+		LASSERT(0);
 
 	case SOCKNAL_INIT_ALL:
 	case SOCKNAL_INIT_DATA:
-		LASSERT (ksocknal_data.ksnd_peers != NULL);
+		LASSERT(ksocknal_data.ksnd_peers != NULL);
 		for (i = 0; i < ksocknal_data.ksnd_peer_hash_size; i++) {
-			LASSERT (list_empty (&ksocknal_data.ksnd_peers[i]));
+			LASSERT(list_empty(&ksocknal_data.ksnd_peers[i]));
 		}
 
 		LASSERT(list_empty(&ksocknal_data.ksnd_nets));
-		LASSERT (list_empty (&ksocknal_data.ksnd_enomem_conns));
-		LASSERT (list_empty (&ksocknal_data.ksnd_zombie_conns));
-		LASSERT (list_empty (&ksocknal_data.ksnd_connd_connreqs));
-		LASSERT (list_empty (&ksocknal_data.ksnd_connd_routes));
+		LASSERT(list_empty(&ksocknal_data.ksnd_enomem_conns));
+		LASSERT(list_empty(&ksocknal_data.ksnd_zombie_conns));
+		LASSERT(list_empty(&ksocknal_data.ksnd_connd_connreqs));
+		LASSERT(list_empty(&ksocknal_data.ksnd_connd_routes));
 
 		if (ksocknal_data.ksnd_sched_info != NULL) {
 			cfs_percpt_for_each(info, i,
@@ -2332,13 +2332,13 @@ ksocknal_base_shutdown(void)
 	}
 
 	CDEBUG(D_MALLOC, "after NAL cleanup: kmem %d\n",
-	       atomic_read (&libcfs_kmemory));
+	       atomic_read(&libcfs_kmemory));
 
 	module_put(THIS_MODULE);
 }
 
 static __u64
-ksocknal_new_incarnation (void)
+ksocknal_new_incarnation(void)
 {
 
 	/* The incarnation number is the time this module loaded and it
@@ -2354,14 +2354,14 @@ ksocknal_base_startup(void)
 	int			rc;
 	int			i;
 
-	LASSERT (ksocknal_data.ksnd_init == SOCKNAL_INIT_NOTHING);
-	LASSERT (ksocknal_data.ksnd_nnets == 0);
+	LASSERT(ksocknal_data.ksnd_init == SOCKNAL_INIT_NOTHING);
+	LASSERT(ksocknal_data.ksnd_nnets == 0);
 
-	memset (&ksocknal_data, 0, sizeof (ksocknal_data)); /* zero pointers */
+	memset(&ksocknal_data, 0, sizeof(ksocknal_data)); /* zero pointers */
 
 	ksocknal_data.ksnd_peer_hash_size = SOCKNAL_PEER_HASH_SIZE;
-	LIBCFS_ALLOC (ksocknal_data.ksnd_peers,
-		      sizeof (struct list_head) *
+	LIBCFS_ALLOC(ksocknal_data.ksnd_peers,
+		      sizeof(struct list_head) *
 		      ksocknal_data.ksnd_peer_hash_size);
 	if (ksocknal_data.ksnd_peers == NULL)
 		return -ENOMEM;
@@ -2373,18 +2373,18 @@ ksocknal_base_startup(void)
 	INIT_LIST_HEAD(&ksocknal_data.ksnd_nets);
 
 	spin_lock_init(&ksocknal_data.ksnd_reaper_lock);
-	INIT_LIST_HEAD (&ksocknal_data.ksnd_enomem_conns);
-	INIT_LIST_HEAD (&ksocknal_data.ksnd_zombie_conns);
-	INIT_LIST_HEAD (&ksocknal_data.ksnd_deathrow_conns);
+	INIT_LIST_HEAD(&ksocknal_data.ksnd_enomem_conns);
+	INIT_LIST_HEAD(&ksocknal_data.ksnd_zombie_conns);
+	INIT_LIST_HEAD(&ksocknal_data.ksnd_deathrow_conns);
 	init_waitqueue_head(&ksocknal_data.ksnd_reaper_waitq);
 
 	spin_lock_init(&ksocknal_data.ksnd_connd_lock);
-	INIT_LIST_HEAD (&ksocknal_data.ksnd_connd_connreqs);
-	INIT_LIST_HEAD (&ksocknal_data.ksnd_connd_routes);
+	INIT_LIST_HEAD(&ksocknal_data.ksnd_connd_connreqs);
+	INIT_LIST_HEAD(&ksocknal_data.ksnd_connd_routes);
 	init_waitqueue_head(&ksocknal_data.ksnd_connd_waitq);
 
 	spin_lock_init(&ksocknal_data.ksnd_tx_lock);
-	INIT_LIST_HEAD (&ksocknal_data.ksnd_idle_noop_txs);
+	INIT_LIST_HEAD(&ksocknal_data.ksnd_idle_noop_txs);
 
 	/* NB memset above zeros whole of ksocknal_data */
 
@@ -2465,7 +2465,7 @@ ksocknal_base_startup(void)
 
 	rc = ksocknal_thread_start(ksocknal_reaper, NULL, "socknal_reaper");
 	if (rc != 0) {
-		CERROR ("Can't spawn socknal reaper: %d\n", rc);
+		CERROR("Can't spawn socknal reaper: %d\n", rc);
 		goto failed;
 	}
 
@@ -2480,7 +2480,7 @@ ksocknal_base_startup(void)
 }
 
 static void
-ksocknal_debug_peerhash (lnet_ni_t *ni)
+ksocknal_debug_peerhash(lnet_ni_t *ni)
 {
 	ksock_peer_t	*peer = NULL;
 	struct list_head	*tmp;
@@ -2489,8 +2489,8 @@ ksocknal_debug_peerhash (lnet_ni_t *ni)
 	read_lock(&ksocknal_data.ksnd_global_lock);
 
 	for (i = 0; i < ksocknal_data.ksnd_peer_hash_size; i++) {
-		list_for_each (tmp, &ksocknal_data.ksnd_peers[i]) {
-			peer = list_entry (tmp, ksock_peer_t, ksnp_list);
+		list_for_each(tmp, &ksocknal_data.ksnd_peers[i]) {
+			peer = list_entry(tmp, ksock_peer_t, ksnp_list);
 
 			if (peer->ksnp_ni == ni)
 				break;
@@ -2512,7 +2512,7 @@ ksocknal_debug_peerhash (lnet_ni_t *ni)
 		      !list_empty(&peer->ksnp_tx_queue),
 		      !list_empty(&peer->ksnp_zc_req_list));
 
-		list_for_each (tmp, &peer->ksnp_routes) {
+		list_for_each(tmp, &peer->ksnp_routes) {
 			route = list_entry(tmp, ksock_route_t, ksnr_list);
 			CWARN("Route: ref %d, schd %d, conn %d, cnted %d, del %d\n",
 			      atomic_read(&route->ksnr_refcount),
@@ -2520,9 +2520,9 @@ ksocknal_debug_peerhash (lnet_ni_t *ni)
 			      route->ksnr_connected, route->ksnr_deleted);
 		}
 
-		list_for_each (tmp, &peer->ksnp_conns) {
+		list_for_each(tmp, &peer->ksnp_conns) {
 			conn = list_entry(tmp, ksock_conn_t, ksnc_list);
-			CWARN ("Conn: ref %d, sref %d, t %d, c %d\n",
+			CWARN("Conn: ref %d, sref %d, t %d, c %d\n",
 			       atomic_read(&conn->ksnc_conn_refcount),
 			       atomic_read(&conn->ksnc_sock_refcount),
 			       conn->ksnc_type, conn->ksnc_closing);
@@ -2534,7 +2534,7 @@ ksocknal_debug_peerhash (lnet_ni_t *ni)
 }
 
 void
-ksocknal_shutdown (lnet_ni_t *ni)
+ksocknal_shutdown(lnet_ni_t *ni)
 {
 	ksock_net_t      *net = ni->ni_data;
 	int	       i;
@@ -2573,8 +2573,8 @@ ksocknal_shutdown (lnet_ni_t *ni)
 	spin_unlock_bh(&net->ksnn_lock);
 
 	for (i = 0; i < net->ksnn_ninterfaces; i++) {
-		LASSERT (net->ksnn_interfaces[i].ksni_npeers == 0);
-		LASSERT (net->ksnn_interfaces[i].ksni_nroutes == 0);
+		LASSERT(net->ksnn_interfaces[i].ksni_npeers == 0);
+		LASSERT(net->ksnn_interfaces[i].ksni_nroutes == 0);
 	}
 
 	list_del(&net->ksnn_list);
@@ -2757,13 +2757,13 @@ ksocknal_net_start_threads(ksock_net_t *net, __u32 *cpts, int ncpts)
 }
 
 int
-ksocknal_startup (lnet_ni_t *ni)
+ksocknal_startup(lnet_ni_t *ni)
 {
 	ksock_net_t  *net;
 	int	   rc;
 	int	   i;
 
-	LASSERT (ni->ni_lnd == &the_ksocklnd);
+	LASSERT(ni->ni_lnd == &the_ksocklnd);
 
 	if (ksocknal_data.ksnd_init == SOCKNAL_INIT_NOTHING) {
 		rc = ksocknal_base_startup();
@@ -2843,19 +2843,19 @@ ksocknal_startup (lnet_ni_t *ni)
 
 
 static void __exit
-ksocknal_module_fini (void)
+ksocknal_module_fini(void)
 {
 	lnet_unregister_lnd(&the_ksocklnd);
 }
 
 static int __init
-ksocknal_module_init (void)
+ksocknal_module_init(void)
 {
 	int    rc;
 
 	/* check ksnr_connected/connecting field large enough */
-	CLASSERT (SOCKLND_CONN_NTYPES <= 4);
-	CLASSERT (SOCKLND_CONN_ACK == SOCKLND_CONN_BULK_IN);
+	CLASSERT(SOCKLND_CONN_NTYPES <= 4);
+	CLASSERT(SOCKLND_CONN_ACK == SOCKLND_CONN_BULK_IN);
 
 	/* initialize the_ksocklnd */
 	the_ksocklnd.lnd_type     = SOCKLND;
-- 
1.8.3.2



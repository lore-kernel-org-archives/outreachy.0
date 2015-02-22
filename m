X-GM-THRID: 2273030701056
X-Received: by 10.112.77.101 with SMTP id r5mr556498lbw.4.1424574501542;
        Sat, 21 Feb 2015 19:08:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.164 with SMTP id jx4ls340324wid.5.canary; Sat, 21 Feb
 2015 19:08:21 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr21258wiy.6.1424574501233;
        Sat, 21 Feb 2015 19:08:21 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id cl5si404972wib.3.2015.02.21.19.08.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 19:08:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f182.google.com with SMTP id l15so10127636wiw.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 19:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Aq5I6FegdQjTXsTYr7FYdQqLOIuwOfys1sxNtbIN2Ng=;
        b=PtoEIEAQtOpYZhswMO8hAgR3YzX/yy8YvsdSFEfcsyt9DKY+VI/vuCuRnilj+k+VRb
         vojqdp05GikFDmISYt/Yoxw5PmpZyC7aMJR2m9P/DLMRVWC3Mu4QgQpDLsnvhyGlFUyY
         pfhmey3gMLWttqIhGScY9c801VswLnclsXmE9gElfHPWaZGph+HS5c/lg0oEeI99l8bS
         wyyWTW6LjCgMr7FHrGbiOKrc443gby6+5Tbra27UbWyyDs1owsiJ/vH5ii+Bqff0aKQb
         /07kE3aJKI0VFTT5XtrB0lBaFIcQLmvcZ9xUR87RtOpiqz+zvv2DKmkQEd26AVXRT/HO
         0rSQ==
X-Received: by 10.194.118.198 with SMTP id ko6mr9165634wjb.47.1424574501139;
        Sat, 21 Feb 2015 19:08:21 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id gm2sm9446449wib.5.2015.02.21.19.08.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 19:08:20 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 1/4] staging: lustre: lnet: klnds: o2iblnd: Removed unnecessary spaces.
Date: Sun, 22 Feb 2015 05:08:04 +0200
Message-Id: <87f7f8deb8cc0f01f784993529474038b8b64fd0.1424574336.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424574336.git.gulsah.1004@gmail.com>
References: <cover.1424574336.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424574336.git.gulsah.1004@gmail.com>
References: <cover.1424574336.git.gulsah.1004@gmail.com>

Removed unnecessary spaces between function name and open parenthesis '('.
Removed following checkpatch.pl warnings:
WARNING: space prohibited between function name and open parenthesis '('

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    | 208 ++++++++++-----------
 1 file changed, 104 insertions(+), 104 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 6510169..64d5ea3 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -147,7 +147,7 @@ kiblnd_unpack_rd(kib_msg_t *msg, int flip)
 	int		n;
 	int		i;
 
-	LASSERT (msg->ibm_type == IBLND_MSG_GET_REQ ||
+	LASSERT(msg->ibm_type == IBLND_MSG_GET_REQ ||
 		 msg->ibm_type == IBLND_MSG_PUT_ACK);
 
 	rd = msg->ibm_type == IBLND_MSG_GET_REQ ?
@@ -167,7 +167,7 @@ kiblnd_unpack_rd(kib_msg_t *msg, int flip)
 		return 1;
 	}
 
-	nob = offsetof (kib_msg_t, ibm_u) +
+	nob = offsetof(kib_msg_t, ibm_u) +
 	      kiblnd_rd_msg_size(rd, msg->ibm_type, n);
 
 	if (msg->ibm_nob < nob) {
@@ -188,7 +188,7 @@ kiblnd_unpack_rd(kib_msg_t *msg, int flip)
 }
 
 void
-kiblnd_pack_msg (lnet_ni_t *ni, kib_msg_t *msg, int version,
+kiblnd_pack_msg(lnet_ni_t *ni, kib_msg_t *msg, int version,
 		 int credits, lnet_nid_t dstnid, __u64 dststamp)
 {
 	kib_net_t *net = ni->ni_data;
@@ -269,8 +269,8 @@ kiblnd_unpack_msg(kib_msg_t *msg, int nob)
 	if (flip) {
 		/* leave magic unflipped as a clue to peer endianness */
 		msg->ibm_version = version;
-		CLASSERT (sizeof(msg->ibm_type) == 1);
-		CLASSERT (sizeof(msg->ibm_credits) == 1);
+		CLASSERT(sizeof(msg->ibm_type) == 1);
+		CLASSERT(sizeof(msg->ibm_credits) == 1);
 		msg->ibm_nob     = msg_nob;
 		__swab64s(&msg->ibm_srcnid);
 		__swab64s(&msg->ibm_srcstamp);
@@ -356,7 +356,7 @@ kiblnd_create_peer(lnet_ni_t *ni, kib_peer_t **peerp, lnet_nid_t nid)
 	write_lock_irqsave(&kiblnd_data.kib_global_lock, flags);
 
 	/* always called with a ref on ni, which prevents ni being shutdown */
-	LASSERT (net->ibn_shutdown == 0);
+	LASSERT(net->ibn_shutdown == 0);
 
 	/* npeers only grows with the global lock held */
 	atomic_inc(&net->ibn_npeers);
@@ -368,17 +368,17 @@ kiblnd_create_peer(lnet_ni_t *ni, kib_peer_t **peerp, lnet_nid_t nid)
 }
 
 void
-kiblnd_destroy_peer (kib_peer_t *peer)
+kiblnd_destroy_peer(kib_peer_t *peer)
 {
 	kib_net_t *net = peer->ibp_ni->ni_data;
 
-	LASSERT (net != NULL);
-	LASSERT (atomic_read(&peer->ibp_refcount) == 0);
-	LASSERT (!kiblnd_peer_active(peer));
-	LASSERT (peer->ibp_connecting == 0);
-	LASSERT (peer->ibp_accepting == 0);
-	LASSERT (list_empty(&peer->ibp_conns));
-	LASSERT (list_empty(&peer->ibp_tx_queue));
+	LASSERT(net != NULL);
+	LASSERT(atomic_read(&peer->ibp_refcount) == 0);
+	LASSERT(!kiblnd_peer_active(peer));
+	LASSERT(peer->ibp_connecting == 0);
+	LASSERT(peer->ibp_accepting == 0);
+	LASSERT(list_empty(&peer->ibp_conns));
+	LASSERT(list_empty(&peer->ibp_tx_queue));
 
 	LIBCFS_FREE(peer, sizeof(*peer));
 
@@ -390,7 +390,7 @@ kiblnd_destroy_peer (kib_peer_t *peer)
 }
 
 kib_peer_t *
-kiblnd_find_peer_locked (lnet_nid_t nid)
+kiblnd_find_peer_locked(lnet_nid_t nid)
 {
 	/* the caller is responsible for accounting the additional reference
 	 * that this creates */
@@ -398,11 +398,11 @@ kiblnd_find_peer_locked (lnet_nid_t nid)
 	struct list_head       *tmp;
 	kib_peer_t       *peer;
 
-	list_for_each (tmp, peer_list) {
+	list_for_each(tmp, peer_list) {
 
 		peer = list_entry(tmp, kib_peer_t, ibp_list);
 
-		LASSERT (peer->ibp_connecting > 0 || /* creating conns */
+		LASSERT(peer->ibp_connecting > 0 || /* creating conns */
 			 peer->ibp_accepting > 0 ||
 			 !list_empty(&peer->ibp_conns));  /* active conn */
 
@@ -419,11 +419,11 @@ kiblnd_find_peer_locked (lnet_nid_t nid)
 }
 
 void
-kiblnd_unlink_peer_locked (kib_peer_t *peer)
+kiblnd_unlink_peer_locked(kib_peer_t *peer)
 {
-	LASSERT (list_empty(&peer->ibp_conns));
+	LASSERT(list_empty(&peer->ibp_conns));
 
-	LASSERT (kiblnd_peer_active(peer));
+	LASSERT(kiblnd_peer_active(peer));
 	list_del_init(&peer->ibp_list);
 	/* lose peerlist's ref */
 	kiblnd_peer_decref(peer);
@@ -442,10 +442,10 @@ kiblnd_get_peer_info(lnet_ni_t *ni, int index,
 
 	for (i = 0; i < kiblnd_data.kib_peer_hash_size; i++) {
 
-		list_for_each (ptmp, &kiblnd_data.kib_peers[i]) {
+		list_for_each(ptmp, &kiblnd_data.kib_peers[i]) {
 
 			peer = list_entry(ptmp, kib_peer_t, ibp_list);
-			LASSERT (peer->ibp_connecting > 0 ||
+			LASSERT(peer->ibp_connecting > 0 ||
 				 peer->ibp_accepting > 0 ||
 				 !list_empty(&peer->ibp_conns));
 
@@ -478,7 +478,7 @@ kiblnd_del_peer_locked(kib_peer_t *peer)
 	if (list_empty(&peer->ibp_conns)) {
 		kiblnd_unlink_peer_locked(peer);
 	} else {
-		list_for_each_safe (ctmp, cnxt, &peer->ibp_conns) {
+		list_for_each_safe(ctmp, cnxt, &peer->ibp_conns) {
 			conn = list_entry(ctmp, kib_conn_t, ibc_list);
 
 			kiblnd_close_conn_locked(conn, 0);
@@ -492,7 +492,7 @@ kiblnd_del_peer_locked(kib_peer_t *peer)
 static int
 kiblnd_del_peer(lnet_ni_t *ni, lnet_nid_t nid)
 {
-	LIST_HEAD	 (zombies);
+	LIST_HEAD(zombies);
 	struct list_head	    *ptmp;
 	struct list_head	    *pnxt;
 	kib_peer_t	    *peer;
@@ -512,9 +512,9 @@ kiblnd_del_peer(lnet_ni_t *ni, lnet_nid_t nid)
 	}
 
 	for (i = lo; i <= hi; i++) {
-		list_for_each_safe (ptmp, pnxt, &kiblnd_data.kib_peers[i]) {
+		list_for_each_safe(ptmp, pnxt, &kiblnd_data.kib_peers[i]) {
 			peer = list_entry(ptmp, kib_peer_t, ibp_list);
-			LASSERT (peer->ibp_connecting > 0 ||
+			LASSERT(peer->ibp_connecting > 0 ||
 				 peer->ibp_accepting > 0 ||
 				 !list_empty(&peer->ibp_conns));
 
@@ -525,7 +525,7 @@ kiblnd_del_peer(lnet_ni_t *ni, lnet_nid_t nid)
 				continue;
 
 			if (!list_empty(&peer->ibp_tx_queue)) {
-				LASSERT (list_empty(&peer->ibp_conns));
+				LASSERT(list_empty(&peer->ibp_conns));
 
 				list_splice_init(&peer->ibp_tx_queue,
 						     &zombies);
@@ -556,17 +556,17 @@ kiblnd_get_conn_by_idx(lnet_ni_t *ni, int index)
 	read_lock_irqsave(&kiblnd_data.kib_global_lock, flags);
 
 	for (i = 0; i < kiblnd_data.kib_peer_hash_size; i++) {
-		list_for_each (ptmp, &kiblnd_data.kib_peers[i]) {
+		list_for_each(ptmp, &kiblnd_data.kib_peers[i]) {
 
 			peer = list_entry(ptmp, kib_peer_t, ibp_list);
-			LASSERT (peer->ibp_connecting > 0 ||
+			LASSERT(peer->ibp_connecting > 0 ||
 				 peer->ibp_accepting > 0 ||
 				 !list_empty(&peer->ibp_conns));
 
 			if (peer->ibp_ni != ni)
 				continue;
 
-			list_for_each (ctmp, &peer->ibp_conns) {
+			list_for_each(ctmp, &peer->ibp_conns) {
 				if (index-- > 0)
 					continue;
 
@@ -615,7 +615,7 @@ kiblnd_setup_mtu_locked(struct rdma_cm_id *cmid)
 		return;
 
 	mtu = kiblnd_translate_mtu(*kiblnd_tunables.kib_ib_mtu);
-	LASSERT (mtu >= 0);
+	LASSERT(mtu >= 0);
 	if (mtu != 0)
 		cmid->route.path_rec->mtu = mtu;
 }
@@ -835,7 +835,7 @@ kiblnd_create_conn(kib_peer_t *peer, struct rdma_cm_id *cmid,
 	}
 
 	/* Init successful! */
-	LASSERT (state == IBLND_CONN_ACTIVE_CONNECT ||
+	LASSERT(state == IBLND_CONN_ACTIVE_CONNECT ||
 		 state == IBLND_CONN_PASSIVE_WAIT);
 	conn->ibc_state = state;
 
@@ -852,22 +852,22 @@ kiblnd_create_conn(kib_peer_t *peer, struct rdma_cm_id *cmid,
 }
 
 void
-kiblnd_destroy_conn (kib_conn_t *conn)
+kiblnd_destroy_conn(kib_conn_t *conn)
 {
 	struct rdma_cm_id *cmid = conn->ibc_cmid;
 	kib_peer_t	*peer = conn->ibc_peer;
 	int		rc;
 
-	LASSERT (!in_interrupt());
-	LASSERT (atomic_read(&conn->ibc_refcount) == 0);
-	LASSERT (list_empty(&conn->ibc_early_rxs));
-	LASSERT (list_empty(&conn->ibc_tx_noops));
-	LASSERT (list_empty(&conn->ibc_tx_queue));
-	LASSERT (list_empty(&conn->ibc_tx_queue_rsrvd));
-	LASSERT (list_empty(&conn->ibc_tx_queue_nocred));
-	LASSERT (list_empty(&conn->ibc_active_txs));
-	LASSERT (conn->ibc_noops_posted == 0);
-	LASSERT (conn->ibc_nsends_posted == 0);
+	LASSERT(!in_interrupt());
+	LASSERT(atomic_read(&conn->ibc_refcount) == 0);
+	LASSERT(list_empty(&conn->ibc_early_rxs));
+	LASSERT(list_empty(&conn->ibc_tx_noops));
+	LASSERT(list_empty(&conn->ibc_tx_queue));
+	LASSERT(list_empty(&conn->ibc_tx_queue_rsrvd));
+	LASSERT(list_empty(&conn->ibc_tx_queue_nocred));
+	LASSERT(list_empty(&conn->ibc_active_txs));
+	LASSERT(conn->ibc_noops_posted == 0);
+	LASSERT(conn->ibc_nsends_posted == 0);
 
 	switch (conn->ibc_state) {
 	default:
@@ -876,7 +876,7 @@ kiblnd_destroy_conn (kib_conn_t *conn)
 
 	case IBLND_CONN_DISCONNECTED:
 		/* connvars should have been freed already */
-		LASSERT (conn->ibc_connvars == NULL);
+		LASSERT(conn->ibc_connvars == NULL);
 		break;
 
 	case IBLND_CONN_INIT:
@@ -920,14 +920,14 @@ kiblnd_destroy_conn (kib_conn_t *conn)
 }
 
 int
-kiblnd_close_peer_conns_locked (kib_peer_t *peer, int why)
+kiblnd_close_peer_conns_locked(kib_peer_t *peer, int why)
 {
 	kib_conn_t	     *conn;
 	struct list_head	     *ctmp;
 	struct list_head	     *cnxt;
 	int		     count = 0;
 
-	list_for_each_safe (ctmp, cnxt, &peer->ibp_conns) {
+	list_for_each_safe(ctmp, cnxt, &peer->ibp_conns) {
 		conn = list_entry(ctmp, kib_conn_t, ibc_list);
 
 		CDEBUG(D_NET, "Closing conn -> %s, version: %x, reason: %d\n",
@@ -942,7 +942,7 @@ kiblnd_close_peer_conns_locked (kib_peer_t *peer, int why)
 }
 
 int
-kiblnd_close_stale_conns_locked (kib_peer_t *peer,
+kiblnd_close_stale_conns_locked(kib_peer_t *peer,
 				 int version, __u64 incarnation)
 {
 	kib_conn_t	     *conn;
@@ -950,7 +950,7 @@ kiblnd_close_stale_conns_locked (kib_peer_t *peer,
 	struct list_head	     *cnxt;
 	int		     count = 0;
 
-	list_for_each_safe (ctmp, cnxt, &peer->ibp_conns) {
+	list_for_each_safe(ctmp, cnxt, &peer->ibp_conns) {
 		conn = list_entry(ctmp, kib_conn_t, ibc_list);
 
 		if (conn->ibc_version     == version &&
@@ -991,10 +991,10 @@ kiblnd_close_matching_conns(lnet_ni_t *ni, lnet_nid_t nid)
 	}
 
 	for (i = lo; i <= hi; i++) {
-		list_for_each_safe (ptmp, pnxt, &kiblnd_data.kib_peers[i]) {
+		list_for_each_safe(ptmp, pnxt, &kiblnd_data.kib_peers[i]) {
 
 			peer = list_entry(ptmp, kib_peer_t, ibp_list);
-			LASSERT (peer->ibp_connecting > 0 ||
+			LASSERT(peer->ibp_connecting > 0 ||
 				 peer->ibp_accepting > 0 ||
 				 !list_empty(&peer->ibp_conns));
 
@@ -1049,7 +1049,7 @@ kiblnd_ctl(lnet_ni_t *ni, unsigned int cmd, void *arg)
 			break;
 		}
 
-		LASSERT (conn->ibc_cmid != NULL);
+		LASSERT(conn->ibc_cmid != NULL);
 		data->ioc_nid = conn->ibc_peer->ibp_nid;
 		if (conn->ibc_cmid->route.path_rec == NULL)
 			data->ioc_u32[0] = 0; /* iWarp has no path MTU */
@@ -1072,7 +1072,7 @@ kiblnd_ctl(lnet_ni_t *ni, unsigned int cmd, void *arg)
 }
 
 void
-kiblnd_query (lnet_ni_t *ni, lnet_nid_t nid, unsigned long *when)
+kiblnd_query(lnet_ni_t *ni, lnet_nid_t nid, unsigned long *when)
 {
 	unsigned long	last_alive = 0;
 	unsigned long	now = cfs_time_current();
@@ -1084,7 +1084,7 @@ kiblnd_query (lnet_ni_t *ni, lnet_nid_t nid, unsigned long *when)
 
 	peer = kiblnd_find_peer_locked(nid);
 	if (peer != NULL) {
-		LASSERT (peer->ibp_connecting > 0 || /* creating conns */
+		LASSERT(peer->ibp_connecting > 0 || /* creating conns */
 			 peer->ibp_accepting > 0 ||
 			 !list_empty(&peer->ibp_conns));  /* active conn */
 		last_alive = peer->ibp_last_alive;
@@ -1157,13 +1157,13 @@ kiblnd_unmap_rx_descs(kib_conn_t *conn)
 	kib_rx_t *rx;
 	int       i;
 
-	LASSERT (conn->ibc_rxs != NULL);
-	LASSERT (conn->ibc_hdev != NULL);
+	LASSERT(conn->ibc_rxs != NULL);
+	LASSERT(conn->ibc_hdev != NULL);
 
 	for (i = 0; i < IBLND_RX_MSGS(conn->ibc_version); i++) {
 		rx = &conn->ibc_rxs[i];
 
-		LASSERT (rx->rx_nob >= 0); /* not posted */
+		LASSERT(rx->rx_nob >= 0); /* not posted */
 
 		kiblnd_dma_unmap_single(conn->ibc_hdev->ibh_ibdev,
 					KIBLND_UNMAP_ADDR(rx, rx_msgunmap,
@@ -1196,7 +1196,7 @@ kiblnd_map_rx_descs(kib_conn_t *conn)
 		rx->rx_msgaddr = kiblnd_dma_map_single(conn->ibc_hdev->ibh_ibdev,
 						       rx->rx_msg, IBLND_MSG_SIZE,
 						       DMA_FROM_DEVICE);
-		LASSERT (!kiblnd_dma_mapping_error(conn->ibc_hdev->ibh_ibdev,
+		LASSERT(!kiblnd_dma_mapping_error(conn->ibc_hdev->ibh_ibdev,
 						   rx->rx_msgaddr));
 		KIBLND_UNMAP_ADDR_SET(rx, rx_msgunmap, rx->rx_msgaddr);
 
@@ -1205,12 +1205,12 @@ kiblnd_map_rx_descs(kib_conn_t *conn)
 		       lnet_page2phys(pg) + pg_off);
 
 		pg_off += IBLND_MSG_SIZE;
-		LASSERT (pg_off <= PAGE_SIZE);
+		LASSERT(pg_off <= PAGE_SIZE);
 
 		if (pg_off == PAGE_SIZE) {
 			pg_off = 0;
 			ipg++;
-			LASSERT (ipg <= IBLND_RX_MSG_PAGES(conn->ibc_version));
+			LASSERT(ipg <= IBLND_RX_MSG_PAGES(conn->ibc_version));
 		}
 	}
 }
@@ -1222,7 +1222,7 @@ kiblnd_unmap_tx_pool(kib_tx_pool_t *tpo)
 	kib_tx_t       *tx;
 	int	     i;
 
-	LASSERT (tpo->tpo_pool.po_allocated == 0);
+	LASSERT(tpo->tpo_pool.po_allocated == 0);
 
 	if (hdev == NULL)
 		return;
@@ -1278,15 +1278,15 @@ kiblnd_map_tx_pool(kib_tx_pool_t *tpo)
 	int	     ipage;
 	int	     i;
 
-	LASSERT (net != NULL);
+	LASSERT(net != NULL);
 
 	dev = net->ibn_dev;
 
 	/* pre-mapped messages are not bigger than 1 page */
-	CLASSERT (IBLND_MSG_SIZE <= PAGE_SIZE);
+	CLASSERT(IBLND_MSG_SIZE <= PAGE_SIZE);
 
 	/* No fancy arithmetic when we do the buffer calculations */
-	CLASSERT (PAGE_SIZE % IBLND_MSG_SIZE == 0);
+	CLASSERT(PAGE_SIZE % IBLND_MSG_SIZE == 0);
 
 	tpo->tpo_hdev = kiblnd_current_hdev(dev);
 
@@ -1300,19 +1300,19 @@ kiblnd_map_tx_pool(kib_tx_pool_t *tpo)
 		tx->tx_msgaddr = kiblnd_dma_map_single(
 			tpo->tpo_hdev->ibh_ibdev, tx->tx_msg,
 			IBLND_MSG_SIZE, DMA_TO_DEVICE);
-		LASSERT (!kiblnd_dma_mapping_error(tpo->tpo_hdev->ibh_ibdev,
+		LASSERT(!kiblnd_dma_mapping_error(tpo->tpo_hdev->ibh_ibdev,
 						   tx->tx_msgaddr));
 		KIBLND_UNMAP_ADDR_SET(tx, tx_msgunmap, tx->tx_msgaddr);
 
 		list_add(&tx->tx_list, &pool->po_free_list);
 
 		page_offset += IBLND_MSG_SIZE;
-		LASSERT (page_offset <= PAGE_SIZE);
+		LASSERT(page_offset <= PAGE_SIZE);
 
 		if (page_offset == PAGE_SIZE) {
 			page_offset = 0;
 			ipage++;
-			LASSERT (ipage <= txpgs->ibp_npages);
+			LASSERT(ipage <= txpgs->ibp_npages);
 		}
 	}
 }
@@ -1322,7 +1322,7 @@ kiblnd_find_dma_mr(kib_hca_dev_t *hdev, __u64 addr, __u64 size)
 {
 	__u64   index;
 
-	LASSERT (hdev->ibh_mrs[0] != NULL);
+	LASSERT(hdev->ibh_mrs[0] != NULL);
 
 	if (hdev->ibh_nmrs == 1)
 		return hdev->ibh_mrs[0];
@@ -1343,7 +1343,7 @@ kiblnd_find_rd_dma_mr(kib_hca_dev_t *hdev, kib_rdma_desc_t *rd)
 	struct ib_mr *mr;
 	int	   i;
 
-	LASSERT (hdev->ibh_mrs[0] != NULL);
+	LASSERT(hdev->ibh_mrs[0] != NULL);
 
 	if (*kiblnd_tunables.kib_map_on_demand > 0 &&
 	    *kiblnd_tunables.kib_map_on_demand <= rd->rd_nfrags)
@@ -1373,7 +1373,7 @@ kiblnd_find_rd_dma_mr(kib_hca_dev_t *hdev, kib_rdma_desc_t *rd)
 static void
 kiblnd_destroy_fmr_pool(kib_fmr_pool_t *pool)
 {
-	LASSERT (pool->fpo_map_count == 0);
+	LASSERT(pool->fpo_map_count == 0);
 
 	if (pool->fpo_fmr_pool != NULL)
 		ib_destroy_fmr_pool(pool->fpo_fmr_pool);
@@ -1519,7 +1519,7 @@ kiblnd_fmr_pool_is_idle(kib_fmr_pool_t *fpo, unsigned long now)
 void
 kiblnd_fmr_pool_unmap(kib_fmr_t *fmr, int status)
 {
-	LIST_HEAD     (zombies);
+	LIST_HEAD(zombies);
 	kib_fmr_pool_t    *fpo = fmr->fmr_pool;
 	kib_fmr_poolset_t *fps = fpo->fpo_owner;
 	unsigned long	 now = cfs_time_current();
@@ -1527,11 +1527,11 @@ kiblnd_fmr_pool_unmap(kib_fmr_t *fmr, int status)
 	int		rc;
 
 	rc = ib_fmr_pool_unmap(fmr->fmr_pfmr);
-	LASSERT (rc == 0);
+	LASSERT(rc == 0);
 
 	if (status != 0) {
 		rc = ib_flush_fmr_pool(fpo->fpo_fmr_pool);
-		LASSERT (rc == 0);
+		LASSERT(rc == 0);
 	}
 
 	fmr->fmr_pool = NULL;
@@ -1630,8 +1630,8 @@ kiblnd_fmr_pool_map(kib_fmr_poolset_t *fps, __u64 *pages, int npages,
 static void
 kiblnd_fini_pool(kib_pool_t *pool)
 {
-	LASSERT (list_empty(&pool->po_free_list));
-	LASSERT (pool->po_allocated == 0);
+	LASSERT(list_empty(&pool->po_free_list));
+	LASSERT(pool->po_allocated == 0);
 
 	CDEBUG(D_NET, "Finalize %s pool\n", pool->po_owner->ps_name);
 }
@@ -1657,7 +1657,7 @@ kiblnd_destroy_pool_list(struct list_head *head)
 		pool = list_entry(head->next, kib_pool_t, po_list);
 		list_del(&pool->po_list);
 
-		LASSERT (pool->po_owner != NULL);
+		LASSERT(pool->po_owner != NULL);
 		pool->po_owner->ps_pool_destroy(pool);
 	}
 }
@@ -1740,7 +1740,7 @@ kiblnd_pool_is_idle(kib_pool_t *pool, unsigned long now)
 void
 kiblnd_pool_free_node(kib_pool_t *pool, struct list_head *node)
 {
-	LIST_HEAD  (zombies);
+	LIST_HEAD(zombies);
 	kib_poolset_t  *ps = pool->po_owner;
 	kib_pool_t     *tmp;
 	unsigned long      now = cfs_time_current();
@@ -1750,7 +1750,7 @@ kiblnd_pool_free_node(kib_pool_t *pool, struct list_head *node)
 	if (ps->ps_node_fini != NULL)
 		ps->ps_node_fini(pool, node);
 
-	LASSERT (pool->po_allocated > 0);
+	LASSERT(pool->po_allocated > 0);
 	list_add(node, &pool->po_free_list);
 	pool->po_allocated--;
 
@@ -1895,13 +1895,13 @@ kiblnd_destroy_pmr_pool(kib_pool_t *pool)
 	kib_pmr_pool_t *ppo = container_of(pool, kib_pmr_pool_t, ppo_pool);
 	kib_phys_mr_t  *pmr;
 
-	LASSERT (pool->po_allocated == 0);
+	LASSERT(pool->po_allocated == 0);
 
 	while (!list_empty(&pool->po_free_list)) {
 		pmr = list_entry(pool->po_free_list.next,
 				     kib_phys_mr_t, pmr_list);
 
-		LASSERT (pmr->pmr_mr == NULL);
+		LASSERT(pmr->pmr_mr == NULL);
 		list_del(&pmr->pmr_list);
 
 		if (pmr->pmr_ipb != NULL) {
@@ -1976,7 +1976,7 @@ kiblnd_destroy_tx_pool(kib_pool_t *pool)
 	kib_tx_pool_t  *tpo = container_of(pool, kib_tx_pool_t, tpo_pool);
 	int	     i;
 
-	LASSERT (pool->po_allocated == 0);
+	LASSERT(pool->po_allocated == 0);
 
 	if (tpo->tpo_tx_pages != NULL) {
 		kiblnd_unmap_tx_pool(tpo);
@@ -2442,7 +2442,7 @@ kiblnd_hdev_setup_mrs(kib_hca_dev_t *hdev)
 			return PTR_ERR(mr);
 		}
 
-		LASSERT (iova == ipb.addr);
+		LASSERT(iova == ipb.addr);
 
 		hdev->ibh_mrs[i] = mr;
 	}
@@ -2519,9 +2519,9 @@ kiblnd_dev_need_failover(kib_dev_t *dev)
 int
 kiblnd_dev_failover(kib_dev_t *dev)
 {
-	LIST_HEAD      (zombie_tpo);
-	LIST_HEAD      (zombie_ppo);
-	LIST_HEAD      (zombie_fpo);
+	LIST_HEAD(zombie_tpo);
+	LIST_HEAD(zombie_ppo);
+	LIST_HEAD(zombie_fpo);
 	struct rdma_cm_id  *cmid  = NULL;
 	kib_hca_dev_t      *hdev  = NULL;
 	kib_hca_dev_t      *old;
@@ -2532,7 +2532,7 @@ kiblnd_dev_failover(kib_dev_t *dev)
 	int		 rc = 0;
 	int		    i;
 
-	LASSERT (*kiblnd_tunables.kib_dev_failover > 1 ||
+	LASSERT(*kiblnd_tunables.kib_dev_failover > 1 ||
 		 dev->ibd_can_failover ||
 		 dev->ibd_hdev == NULL);
 
@@ -2656,10 +2656,10 @@ kiblnd_dev_failover(kib_dev_t *dev)
 }
 
 void
-kiblnd_destroy_dev (kib_dev_t *dev)
+kiblnd_destroy_dev(kib_dev_t *dev)
 {
-	LASSERT (dev->ibd_nnets == 0);
-	LASSERT (list_empty(&dev->ibd_nets));
+	LASSERT(dev->ibd_nnets == 0);
+	LASSERT(list_empty(&dev->ibd_nets));
 
 	list_del(&dev->ibd_fail_list);
 	list_del(&dev->ibd_list);
@@ -2729,7 +2729,7 @@ kiblnd_base_shutdown(void)
 	struct kib_sched_info	*sched;
 	int			i;
 
-	LASSERT (list_empty(&kiblnd_data.kib_devs));
+	LASSERT(list_empty(&kiblnd_data.kib_devs));
 
 	CDEBUG(D_MALLOC, "before LND base cleanup: kmem %d\n",
 	       atomic_read(&libcfs_kmemory));
@@ -2740,12 +2740,12 @@ kiblnd_base_shutdown(void)
 
 	case IBLND_INIT_ALL:
 	case IBLND_INIT_DATA:
-		LASSERT (kiblnd_data.kib_peers != NULL);
+		LASSERT(kiblnd_data.kib_peers != NULL);
 		for (i = 0; i < kiblnd_data.kib_peer_hash_size; i++) {
-			LASSERT (list_empty(&kiblnd_data.kib_peers[i]));
+			LASSERT(list_empty(&kiblnd_data.kib_peers[i]));
 		}
-		LASSERT (list_empty(&kiblnd_data.kib_connd_zombies));
-		LASSERT (list_empty(&kiblnd_data.kib_connd_conns));
+		LASSERT(list_empty(&kiblnd_data.kib_connd_zombies));
+		LASSERT(list_empty(&kiblnd_data.kib_connd_conns));
 
 		/* flag threads to terminate; wake and wait for them to die */
 		kiblnd_data.kib_shutdown = 1;
@@ -2792,7 +2792,7 @@ kiblnd_base_shutdown(void)
 }
 
 void
-kiblnd_shutdown (lnet_ni_t *ni)
+kiblnd_shutdown(lnet_ni_t *ni)
 {
 	kib_net_t	*net = ni->ni_data;
 	rwlock_t     *g_lock = &kiblnd_data.kib_global_lock;
@@ -2842,7 +2842,7 @@ kiblnd_shutdown (lnet_ni_t *ni)
 		/* fall through */
 
 	case IBLND_INIT_NOTHING:
-		LASSERT (atomic_read(&net->ibn_nconns) == 0);
+		LASSERT(atomic_read(&net->ibn_nconns) == 0);
 
 		if (net->ibn_dev != NULL &&
 		    net->ibn_dev->ibd_nnets == 0)
@@ -2872,7 +2872,7 @@ kiblnd_base_startup(void)
 	int			rc;
 	int			i;
 
-	LASSERT (kiblnd_data.kib_init == IBLND_INIT_NOTHING);
+	LASSERT(kiblnd_data.kib_init == IBLND_INIT_NOTHING);
 
 	try_module_get(THIS_MODULE);
 	memset(&kiblnd_data, 0, sizeof(kiblnd_data)); /* zero pointers, flags etc */
@@ -3056,7 +3056,7 @@ kiblnd_dev_search(char *ifname)
 }
 
 int
-kiblnd_startup (lnet_ni_t *ni)
+kiblnd_startup(lnet_ni_t *ni)
 {
 	char		     *ifname;
 	kib_dev_t		*ibdev = NULL;
@@ -3066,7 +3066,7 @@ kiblnd_startup (lnet_ni_t *ni)
 	int		       rc;
 	int			  newdev;
 
-	LASSERT (ni->ni_lnd == &the_o2iblnd);
+	LASSERT(ni->ni_lnd == &the_o2iblnd);
 
 	if (kiblnd_data.kib_init == IBLND_INIT_NOTHING) {
 		rc = kiblnd_base_startup();
@@ -3090,7 +3090,7 @@ kiblnd_startup (lnet_ni_t *ni)
 	if (ni->ni_interfaces[0] != NULL) {
 		/* Use the IPoIB interface specified in 'networks=' */
 
-		CLASSERT (LNET_MAX_INTERFACES > 1);
+		CLASSERT(LNET_MAX_INTERFACES > 1);
 		if (ni->ni_interfaces[1] != NULL) {
 			CERROR("Multiple interfaces not supported\n");
 			goto failed;
@@ -3151,20 +3151,20 @@ net_failed:
 }
 
 static void __exit
-kiblnd_module_fini (void)
+kiblnd_module_fini(void)
 {
 	lnet_unregister_lnd(&the_o2iblnd);
 }
 
 static int __init
-kiblnd_module_init (void)
+kiblnd_module_init(void)
 {
 	int    rc;
 
-	CLASSERT (sizeof(kib_msg_t) <= IBLND_MSG_SIZE);
-	CLASSERT (offsetof(kib_msg_t, ibm_u.get.ibgm_rd.rd_frags[IBLND_MAX_RDMA_FRAGS])
+	CLASSERT(sizeof(kib_msg_t) <= IBLND_MSG_SIZE);
+	CLASSERT(offsetof(kib_msg_t, ibm_u.get.ibgm_rd.rd_frags[IBLND_MAX_RDMA_FRAGS])
 		  <= IBLND_MSG_SIZE);
-	CLASSERT (offsetof(kib_msg_t, ibm_u.putack.ibpam_rd.rd_frags[IBLND_MAX_RDMA_FRAGS])
+	CLASSERT(offsetof(kib_msg_t, ibm_u.putack.ibpam_rd.rd_frags[IBLND_MAX_RDMA_FRAGS])
 		  <= IBLND_MSG_SIZE);
 
 	rc = kiblnd_tunables_init();
-- 
1.9.1



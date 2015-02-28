X-GM-THRID: 5130019667968
X-Received: by 10.152.29.97 with SMTP id j1mr2794845lah.3.1425147320804;
        Sat, 28 Feb 2015 10:15:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.201 with SMTP id m9ls296432lah.6.gmail; Sat, 28 Feb
 2015 10:15:20 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr2805989lbc.0.1425147320335;
        Sat, 28 Feb 2015 10:15:20 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id by11si369154wib.1.2015.02.28.10.15.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 10:15:20 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x232.google.com with SMTP id m14so25960650wev.13
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 10:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=SkCCP103xUMThkpb3/e+3glc8UPw7KHAiDMKaU6KDgM=;
        b=JXvD+3PIrChbC507dNzGiPuaGwiXfGpVh4CHEyjy+ZwBSjdd3R0cn5/k5RWcZ1XUov
         5m3tGvXxMFp30MWhZhFspLaqBwKJqhvUAykt4ELY1TuDKzJXCcbiDyVKtNkqD9+yHT92
         Gn+n4rCmtJ8QCGWxu63LKwcrNWWDcFW9YQt0s0d3RpUH781ysPSDOSUod7Rzib6azk8i
         JFUBt9ppiSh9AMcePL17zd/YGxetTLVRvEfl69qhEAfC5cVACJDf8PViH5k8/3hRvM/i
         lz4uRoHjXImatKn7dvNYAX3UNyZi329GXC1nz72dyLmvFZAkySz82xq/ea1HvNHExt83
         bOJg==
X-Received: by 10.194.86.135 with SMTP id p7mr41314895wjz.89.1425147320220;
        Sat, 28 Feb 2015 10:15:20 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id y3sm11150820wju.14.2015.02.28.10.15.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 10:15:19 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: klnds: o2iblnd: Remove space after the name of that function
Date: Sat, 28 Feb 2015 20:15:10 +0200
Message-Id: <1425147310-26423-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Function names must be adjacent to the parenthesis opened after.That's
why remove space after the name of that function.

This Warning found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 382 ++++++++++-----------
 1 file changed, 191 insertions(+), 191 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
index 48d885d..c762dbe 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
@@ -41,19 +41,19 @@
 #include "o2iblnd.h"
 
 static void
-kiblnd_tx_done (lnet_ni_t *ni, kib_tx_t *tx)
+kiblnd_tx_done(lnet_ni_t *ni, kib_tx_t *tx)
 {
 	lnet_msg_t *lntmsg[2];
 	kib_net_t  *net = ni->ni_data;
 	int	 rc;
 	int	 i;
 
-	LASSERT (net != NULL);
-	LASSERT (!in_interrupt());
-	LASSERT (!tx->tx_queued);	       /* mustn't be queued for sending */
-	LASSERT (tx->tx_sending == 0);	  /* mustn't be awaiting sent callback */
-	LASSERT (!tx->tx_waiting);	      /* mustn't be awaiting peer response */
-	LASSERT (tx->tx_pool != NULL);
+	LASSERT(net != NULL);
+	LASSERT(!in_interrupt());
+	LASSERT(!tx->tx_queued);	       /* mustn't be queued for sending */
+	LASSERT(tx->tx_sending == 0);	  /* mustn't be awaiting sent callback */
+	LASSERT(!tx->tx_waiting);	      /* mustn't be awaiting peer response */
+	LASSERT(tx->tx_pool != NULL);
 
 	kiblnd_unmap_tx(ni, tx);
 
@@ -63,7 +63,7 @@ kiblnd_tx_done (lnet_ni_t *ni, kib_tx_t *tx)
 	rc = tx->tx_status;
 
 	if (tx->tx_conn != NULL) {
-		LASSERT (ni == tx->tx_conn->ibc_peer->ibp_ni);
+		LASSERT(ni == tx->tx_conn->ibc_peer->ibp_ni);
 
 		kiblnd_conn_decref(tx->tx_conn);
 		tx->tx_conn = NULL;
@@ -84,12 +84,12 @@ kiblnd_tx_done (lnet_ni_t *ni, kib_tx_t *tx)
 }
 
 void
-kiblnd_txlist_done (lnet_ni_t *ni, struct list_head *txlist, int status)
+kiblnd_txlist_done(lnet_ni_t *ni, struct list_head *txlist, int status)
 {
 	kib_tx_t *tx;
 
-	while (!list_empty (txlist)) {
-		tx = list_entry (txlist->next, kib_tx_t, tx_list);
+	while (!list_empty(txlist)) {
+		tx = list_entry(txlist->next, kib_tx_t, tx_list);
 
 		list_del(&tx->tx_list);
 		/* complete now */
@@ -113,16 +113,16 @@ kiblnd_get_idle_tx(lnet_ni_t *ni, lnet_nid_t target)
 		return NULL;
 	tx = container_of(node, kib_tx_t, tx_list);
 
-	LASSERT (tx->tx_nwrq == 0);
-	LASSERT (!tx->tx_queued);
-	LASSERT (tx->tx_sending == 0);
-	LASSERT (!tx->tx_waiting);
-	LASSERT (tx->tx_status == 0);
-	LASSERT (tx->tx_conn == NULL);
-	LASSERT (tx->tx_lntmsg[0] == NULL);
-	LASSERT (tx->tx_lntmsg[1] == NULL);
-	LASSERT (tx->tx_u.pmr == NULL);
-	LASSERT (tx->tx_nfrags == 0);
+	LASSERT(tx->tx_nwrq == 0);
+	LASSERT(!tx->tx_queued);
+	LASSERT(tx->tx_sending == 0);
+	LASSERT(!tx->tx_waiting);
+	LASSERT(tx->tx_status == 0);
+	LASSERT(tx->tx_conn == NULL);
+	LASSERT(tx->tx_lntmsg[0] == NULL);
+	LASSERT(tx->tx_lntmsg[1] == NULL);
+	LASSERT(tx->tx_u.pmr == NULL);
+	LASSERT(tx->tx_nfrags == 0);
 
 	return tx;
 }
@@ -143,7 +143,7 @@ kiblnd_drop_rx(kib_rx_t *rx)
 }
 
 int
-kiblnd_post_rx (kib_rx_t *rx, int credit)
+kiblnd_post_rx(kib_rx_t *rx, int credit)
 {
 	kib_conn_t	 *conn = rx->rx_conn;
 	kib_net_t	  *net = conn->ibc_peer->ibp_ni->ni_data;
@@ -151,14 +151,14 @@ kiblnd_post_rx (kib_rx_t *rx, int credit)
 	struct ib_mr       *mr;
 	int		 rc;
 
-	LASSERT (net != NULL);
-	LASSERT (!in_interrupt());
-	LASSERT (credit == IBLND_POSTRX_NO_CREDIT ||
+	LASSERT(net != NULL);
+	LASSERT(!in_interrupt());
+	LASSERT(credit == IBLND_POSTRX_NO_CREDIT ||
 		 credit == IBLND_POSTRX_PEER_CREDIT ||
 		 credit == IBLND_POSTRX_RSRVD_CREDIT);
 
 	mr = kiblnd_find_dma_mr(conn->ibc_hdev, rx->rx_msgaddr, IBLND_MSG_SIZE);
-	LASSERT (mr != NULL);
+	LASSERT(mr != NULL);
 
 	rx->rx_sge.lkey   = mr->lkey;
 	rx->rx_sge.addr   = rx->rx_msgaddr;
@@ -169,8 +169,8 @@ kiblnd_post_rx (kib_rx_t *rx, int credit)
 	rx->rx_wrq.num_sge = 1;
 	rx->rx_wrq.wr_id = kiblnd_ptr2wreqid(rx, IBLND_WID_RX);
 
-	LASSERT (conn->ibc_state >= IBLND_CONN_INIT);
-	LASSERT (rx->rx_nob >= 0);	      /* not posted */
+	LASSERT(conn->ibc_state >= IBLND_CONN_INIT);
+	LASSERT(rx->rx_nob >= 0);	      /* not posted */
 
 	if (conn->ibc_state > IBLND_CONN_ESTABLISHED) {
 		kiblnd_drop_rx(rx);	     /* No more posts for this rx */
@@ -217,8 +217,8 @@ kiblnd_find_waiting_tx_locked(kib_conn_t *conn, int txtype, __u64 cookie)
 	list_for_each(tmp, &conn->ibc_active_txs) {
 		kib_tx_t *tx = list_entry(tmp, kib_tx_t, tx_list);
 
-		LASSERT (!tx->tx_queued);
-		LASSERT (tx->tx_sending != 0 || tx->tx_waiting);
+		LASSERT(!tx->tx_queued);
+		LASSERT(tx->tx_sending != 0 || tx->tx_waiting);
 
 		if (tx->tx_cookie != cookie)
 			continue;
@@ -293,7 +293,7 @@ kiblnd_send_completion(kib_conn_t *conn, int type, int status, __u64 cookie)
 }
 
 static void
-kiblnd_handle_rx (kib_rx_t *rx)
+kiblnd_handle_rx(kib_rx_t *rx)
 {
 	kib_msg_t    *msg = rx->rx_msg;
 	kib_conn_t   *conn = rx->rx_conn;
@@ -304,9 +304,9 @@ kiblnd_handle_rx (kib_rx_t *rx)
 	int	   rc2;
 	int	   post_credit;
 
-	LASSERT (conn->ibc_state >= IBLND_CONN_ESTABLISHED);
+	LASSERT(conn->ibc_state >= IBLND_CONN_ESTABLISHED);
 
-	CDEBUG (D_NET, "Received %x[%d] from %s\n",
+	CDEBUG(D_NET, "Received %x[%d] from %s\n",
 		msg->ibm_type, credits,
 		libcfs_nid2str(conn->ibc_peer->ibp_nid));
 
@@ -377,7 +377,7 @@ kiblnd_handle_rx (kib_rx_t *rx)
 		break;
 
 	case IBLND_MSG_PUT_NAK:
-		CWARN ("PUT_NACK from %s\n",
+		CWARN("PUT_NACK from %s\n",
 		       libcfs_nid2str(conn->ibc_peer->ibp_nid));
 		post_credit = IBLND_POSTRX_RSRVD_CREDIT;
 		kiblnd_handle_completion(conn, IBLND_MSG_PUT_REQ,
@@ -402,7 +402,7 @@ kiblnd_handle_rx (kib_rx_t *rx)
 			break;
 		}
 
-		LASSERT (tx->tx_waiting);
+		LASSERT(tx->tx_waiting);
 		/* CAVEAT EMPTOR: I could be racing with tx_complete, but...
 		 * (a) I can overwrite tx_msg since my peer has received it!
 		 * (b) tx_waiting set tells tx_complete() it's not done. */
@@ -454,7 +454,7 @@ kiblnd_handle_rx (kib_rx_t *rx)
 }
 
 static void
-kiblnd_rx_complete (kib_rx_t *rx, int status, int nob)
+kiblnd_rx_complete(kib_rx_t *rx, int status, int nob)
 {
 	kib_msg_t    *msg = rx->rx_msg;
 	kib_conn_t   *conn = rx->rx_conn;
@@ -463,8 +463,8 @@ kiblnd_rx_complete (kib_rx_t *rx, int status, int nob)
 	int	   rc;
 	int	   err = -EIO;
 
-	LASSERT (net != NULL);
-	LASSERT (rx->rx_nob < 0);	       /* was posted */
+	LASSERT(net != NULL);
+	LASSERT(rx->rx_nob < 0);	       /* was posted */
 	rx->rx_nob = 0;			 /* isn't now */
 
 	if (conn->ibc_state > IBLND_CONN_ESTABLISHED)
@@ -476,12 +476,12 @@ kiblnd_rx_complete (kib_rx_t *rx, int status, int nob)
 		goto failed;
 	}
 
-	LASSERT (nob >= 0);
+	LASSERT(nob >= 0);
 	rx->rx_nob = nob;
 
 	rc = kiblnd_unpack_msg(msg, rx->rx_nob);
 	if (rc != 0) {
-		CERROR ("Error %d unpacking rx from %s\n",
+		CERROR("Error %d unpacking rx from %s\n",
 			rc, libcfs_nid2str(conn->ibc_peer->ibp_nid));
 		goto failed;
 	}
@@ -490,7 +490,7 @@ kiblnd_rx_complete (kib_rx_t *rx, int status, int nob)
 	    msg->ibm_dstnid != ni->ni_nid ||
 	    msg->ibm_srcstamp != conn->ibc_incarnation ||
 	    msg->ibm_dststamp != net->ibn_incarnation) {
-		CERROR ("Stale rx from %s\n",
+		CERROR("Stale rx from %s\n",
 			libcfs_nid2str(conn->ibc_peer->ibp_nid));
 		err = -ESTALE;
 		goto failed;
@@ -525,13 +525,13 @@ kiblnd_rx_complete (kib_rx_t *rx, int status, int nob)
 }
 
 static struct page *
-kiblnd_kvaddr_to_page (unsigned long vaddr)
+kiblnd_kvaddr_to_page(unsigned long vaddr)
 {
 	struct page *page;
 
 	if (is_vmalloc_addr((void *)vaddr)) {
-		page = vmalloc_to_page ((void *)vaddr);
-		LASSERT (page != NULL);
+		page = vmalloc_to_page((void *)vaddr);
+		LASSERT(page != NULL);
 		return page;
 	}
 #ifdef CONFIG_HIGHMEM
@@ -542,8 +542,8 @@ kiblnd_kvaddr_to_page (unsigned long vaddr)
 		LBUG();
 	}
 #endif
-	page = virt_to_page (vaddr);
-	LASSERT (page != NULL);
+	page = virt_to_page(vaddr);
+	LASSERT(page != NULL);
 	return page;
 }
 
@@ -577,7 +577,7 @@ kiblnd_fmr_map_tx(kib_net_t *net, kib_tx_t *tx, kib_rdma_desc_t *rd, int nob)
 	fps = net->ibn_fmr_ps[cpt];
 	rc = kiblnd_fmr_pool_map(fps, pages, npages, 0, &tx->tx_u.fmr);
 	if (rc != 0) {
-		CERROR ("Can't map %d pages: %d\n", npages, rc);
+		CERROR("Can't map %d pages: %d\n", npages, rc);
 		return rc;
 	}
 
@@ -706,26 +706,26 @@ kiblnd_setup_rd_iov(lnet_ni_t *ni, kib_tx_t *tx, kib_rdma_desc_t *rd,
 	int		 fragnob;
 	int		 page_offset;
 
-	LASSERT (nob > 0);
-	LASSERT (niov > 0);
-	LASSERT (net != NULL);
+	LASSERT(nob > 0);
+	LASSERT(niov > 0);
+	LASSERT(net != NULL);
 
 	while (offset >= iov->iov_len) {
 		offset -= iov->iov_len;
 		niov--;
 		iov++;
-		LASSERT (niov > 0);
+		LASSERT(niov > 0);
 	}
 
 	sg = tx->tx_frags;
 	do {
-		LASSERT (niov > 0);
+		LASSERT(niov > 0);
 
 		vaddr = ((unsigned long)iov->iov_base) + offset;
 		page_offset = vaddr & (PAGE_SIZE - 1);
 		page = kiblnd_kvaddr_to_page(vaddr);
 		if (page == NULL) {
-			CERROR ("Can't find page\n");
+			CERROR("Can't find page\n");
 			return -EFAULT;
 		}
 
@@ -749,7 +749,7 @@ kiblnd_setup_rd_iov(lnet_ni_t *ni, kib_tx_t *tx, kib_rdma_desc_t *rd,
 }
 
 static int
-kiblnd_setup_rd_kiov (lnet_ni_t *ni, kib_tx_t *tx, kib_rdma_desc_t *rd,
+kiblnd_setup_rd_kiov(lnet_ni_t *ni, kib_tx_t *tx, kib_rdma_desc_t *rd,
 		      int nkiov, lnet_kiov_t *kiov, int offset, int nob)
 {
 	kib_net_t	  *net = ni->ni_data;
@@ -758,20 +758,20 @@ kiblnd_setup_rd_kiov (lnet_ni_t *ni, kib_tx_t *tx, kib_rdma_desc_t *rd,
 
 	CDEBUG(D_NET, "niov %d offset %d nob %d\n", nkiov, offset, nob);
 
-	LASSERT (nob > 0);
-	LASSERT (nkiov > 0);
-	LASSERT (net != NULL);
+	LASSERT(nob > 0);
+	LASSERT(nkiov > 0);
+	LASSERT(net != NULL);
 
 	while (offset >= kiov->kiov_len) {
 		offset -= kiov->kiov_len;
 		nkiov--;
 		kiov++;
-		LASSERT (nkiov > 0);
+		LASSERT(nkiov > 0);
 	}
 
 	sg = tx->tx_frags;
 	do {
-		LASSERT (nkiov > 0);
+		LASSERT(nkiov > 0);
 
 		fragnob = min((int)(kiov->kiov_len - offset), nob);
 
@@ -789,7 +789,7 @@ kiblnd_setup_rd_kiov (lnet_ni_t *ni, kib_tx_t *tx, kib_rdma_desc_t *rd,
 }
 
 static int
-kiblnd_post_tx_locked (kib_conn_t *conn, kib_tx_t *tx, int credit)
+kiblnd_post_tx_locked(kib_conn_t *conn, kib_tx_t *tx, int credit)
 	__releases(conn->ibc_lock)
 	__acquires(conn->ibc_lock)
 {
@@ -800,16 +800,16 @@ kiblnd_post_tx_locked (kib_conn_t *conn, kib_tx_t *tx, int credit)
 	int		done;
 	struct ib_send_wr *bad_wrq;
 
-	LASSERT (tx->tx_queued);
+	LASSERT(tx->tx_queued);
 	/* We rely on this for QP sizing */
-	LASSERT (tx->tx_nwrq > 0);
-	LASSERT (tx->tx_nwrq <= 1 + IBLND_RDMA_FRAGS(ver));
+	LASSERT(tx->tx_nwrq > 0);
+	LASSERT(tx->tx_nwrq <= 1 + IBLND_RDMA_FRAGS(ver));
 
-	LASSERT (credit == 0 || credit == 1);
-	LASSERT (conn->ibc_outstanding_credits >= 0);
-	LASSERT (conn->ibc_outstanding_credits <= IBLND_MSG_QUEUE_SIZE(ver));
-	LASSERT (conn->ibc_credits >= 0);
-	LASSERT (conn->ibc_credits <= IBLND_MSG_QUEUE_SIZE(ver));
+	LASSERT(credit == 0 || credit == 1);
+	LASSERT(conn->ibc_outstanding_credits >= 0);
+	LASSERT(conn->ibc_outstanding_credits <= IBLND_MSG_QUEUE_SIZE(ver));
+	LASSERT(conn->ibc_credits >= 0);
+	LASSERT(conn->ibc_credits <= IBLND_MSG_QUEUE_SIZE(ver));
 
 	if (conn->ibc_nsends_posted == IBLND_CONCURRENT_SENDS(ver)) {
 		/* tx completions outstanding... */
@@ -923,7 +923,7 @@ kiblnd_post_tx_locked (kib_conn_t *conn, kib_tx_t *tx, int credit)
 }
 
 void
-kiblnd_check_sends (kib_conn_t *conn)
+kiblnd_check_sends(kib_conn_t *conn)
 {
 	int	ver = conn->ibc_version;
 	lnet_ni_t *ni = conn->ibc_peer->ibp_ni;
@@ -938,10 +938,10 @@ kiblnd_check_sends (kib_conn_t *conn)
 
 	spin_lock(&conn->ibc_lock);
 
-	LASSERT (conn->ibc_nsends_posted <= IBLND_CONCURRENT_SENDS(ver));
-	LASSERT (!IBLND_OOB_CAPABLE(ver) ||
+	LASSERT(conn->ibc_nsends_posted <= IBLND_CONCURRENT_SENDS(ver));
+	LASSERT(!IBLND_OOB_CAPABLE(ver) ||
 		 conn->ibc_noops_posted <= IBLND_OOB_MSGS(ver));
-	LASSERT (conn->ibc_reserved_credits >= 0);
+	LASSERT(conn->ibc_reserved_credits >= 0);
 
 	while (conn->ibc_reserved_credits > 0 &&
 	       !list_empty(&conn->ibc_tx_queue_rsrvd)) {
@@ -974,7 +974,7 @@ kiblnd_check_sends (kib_conn_t *conn)
 			tx = list_entry(conn->ibc_tx_queue_nocred.next,
 					    kib_tx_t, tx_list);
 		} else if (!list_empty(&conn->ibc_tx_noops)) {
-			LASSERT (!IBLND_OOB_CAPABLE(ver));
+			LASSERT(!IBLND_OOB_CAPABLE(ver));
 			credit = 1;
 			tx = list_entry(conn->ibc_tx_noops.next,
 					kib_tx_t, tx_list);
@@ -995,13 +995,13 @@ kiblnd_check_sends (kib_conn_t *conn)
 }
 
 static void
-kiblnd_tx_complete (kib_tx_t *tx, int status)
+kiblnd_tx_complete(kib_tx_t *tx, int status)
 {
 	int	   failed = (status != IB_WC_SUCCESS);
 	kib_conn_t   *conn = tx->tx_conn;
 	int	   idle;
 
-	LASSERT (tx->tx_sending > 0);
+	LASSERT(tx->tx_sending > 0);
 
 	if (failed) {
 		if (conn->ibc_state == IBLND_CONN_ESTABLISHED)
@@ -1049,22 +1049,22 @@ kiblnd_tx_complete (kib_tx_t *tx, int status)
 }
 
 void
-kiblnd_init_tx_msg (lnet_ni_t *ni, kib_tx_t *tx, int type, int body_nob)
+kiblnd_init_tx_msg(lnet_ni_t *ni, kib_tx_t *tx, int type, int body_nob)
 {
 	kib_hca_dev_t     *hdev = tx->tx_pool->tpo_hdev;
 	struct ib_sge     *sge = &tx->tx_sge[tx->tx_nwrq];
 	struct ib_send_wr *wrq = &tx->tx_wrq[tx->tx_nwrq];
-	int		nob = offsetof (kib_msg_t, ibm_u) + body_nob;
+	int		nob = offsetof(kib_msg_t, ibm_u) + body_nob;
 	struct ib_mr      *mr;
 
-	LASSERT (tx->tx_nwrq >= 0);
-	LASSERT (tx->tx_nwrq < IBLND_MAX_RDMA_FRAGS + 1);
-	LASSERT (nob <= IBLND_MSG_SIZE);
+	LASSERT(tx->tx_nwrq >= 0);
+	LASSERT(tx->tx_nwrq < IBLND_MAX_RDMA_FRAGS + 1);
+	LASSERT(nob <= IBLND_MSG_SIZE);
 
 	kiblnd_init_msg(tx->tx_msg, type, body_nob);
 
 	mr = kiblnd_find_dma_mr(hdev, tx->tx_msgaddr, nob);
-	LASSERT (mr != NULL);
+	LASSERT(mr != NULL);
 
 	sge->lkey   = mr->lkey;
 	sge->addr   = tx->tx_msgaddr;
@@ -1083,7 +1083,7 @@ kiblnd_init_tx_msg (lnet_ni_t *ni, kib_tx_t *tx, int type, int body_nob)
 }
 
 int
-kiblnd_init_rdma (kib_conn_t *conn, kib_tx_t *tx, int type,
+kiblnd_init_rdma(kib_conn_t *conn, kib_tx_t *tx, int type,
 		  int resid, kib_rdma_desc_t *dstrd, __u64 dstcookie)
 {
 	kib_msg_t	 *ibmsg = tx->tx_msg;
@@ -1095,9 +1095,9 @@ kiblnd_init_rdma (kib_conn_t *conn, kib_tx_t *tx, int type,
 	int		dstidx;
 	int		wrknob;
 
-	LASSERT (!in_interrupt());
-	LASSERT (tx->tx_nwrq == 0);
-	LASSERT (type == IBLND_MSG_GET_DONE ||
+	LASSERT(!in_interrupt());
+	LASSERT(tx->tx_nwrq == 0);
+	LASSERT(type == IBLND_MSG_GET_DONE ||
 		 type == IBLND_MSG_PUT_DONE);
 
 	srcidx = dstidx = 0;
@@ -1162,19 +1162,19 @@ kiblnd_init_rdma (kib_conn_t *conn, kib_tx_t *tx, int type,
 	ibmsg->ibm_u.completion.ibcm_status = rc;
 	ibmsg->ibm_u.completion.ibcm_cookie = dstcookie;
 	kiblnd_init_tx_msg(conn->ibc_peer->ibp_ni, tx,
-			   type, sizeof (kib_completion_msg_t));
+			   type, sizeof(kib_completion_msg_t));
 
 	return rc;
 }
 
 void
-kiblnd_queue_tx_locked (kib_tx_t *tx, kib_conn_t *conn)
+kiblnd_queue_tx_locked(kib_tx_t *tx, kib_conn_t *conn)
 {
 	struct list_head   *q;
 
-	LASSERT (tx->tx_nwrq > 0);	      /* work items set up */
-	LASSERT (!tx->tx_queued);	       /* not queued for sending already */
-	LASSERT (conn->ibc_state >= IBLND_CONN_ESTABLISHED);
+	LASSERT(tx->tx_nwrq > 0);	      /* work items set up */
+	LASSERT(!tx->tx_queued);	       /* not queued for sending already */
+	LASSERT(conn->ibc_state >= IBLND_CONN_ESTABLISHED);
 
 	tx->tx_queued = 1;
 	tx->tx_deadline = jiffies + (*kiblnd_tunables.kib_timeout * HZ);
@@ -1182,11 +1182,11 @@ kiblnd_queue_tx_locked (kib_tx_t *tx, kib_conn_t *conn)
 	if (tx->tx_conn == NULL) {
 		kiblnd_conn_addref(conn);
 		tx->tx_conn = conn;
-		LASSERT (tx->tx_msg->ibm_type != IBLND_MSG_PUT_DONE);
+		LASSERT(tx->tx_msg->ibm_type != IBLND_MSG_PUT_DONE);
 	} else {
 		/* PUT_DONE first attached to conn as a PUT_REQ */
-		LASSERT (tx->tx_conn == conn);
-		LASSERT (tx->tx_msg->ibm_type == IBLND_MSG_PUT_DONE);
+		LASSERT(tx->tx_conn == conn);
+		LASSERT(tx->tx_msg->ibm_type == IBLND_MSG_PUT_DONE);
 	}
 
 	switch (tx->tx_msg->ibm_type) {
@@ -1221,7 +1221,7 @@ kiblnd_queue_tx_locked (kib_tx_t *tx, kib_conn_t *conn)
 }
 
 void
-kiblnd_queue_tx (kib_tx_t *tx, kib_conn_t *conn)
+kiblnd_queue_tx(kib_tx_t *tx, kib_conn_t *conn)
 {
 	spin_lock(&conn->ibc_lock);
 	kiblnd_queue_tx_locked(tx, conn);
@@ -1268,7 +1268,7 @@ static int kiblnd_resolve_addr(struct rdma_cm_id *cmid,
 }
 
 static void
-kiblnd_connect_peer (kib_peer_t *peer)
+kiblnd_connect_peer(kib_peer_t *peer)
 {
 	struct rdma_cm_id *cmid;
 	kib_dev_t	 *dev;
@@ -1277,8 +1277,8 @@ kiblnd_connect_peer (kib_peer_t *peer)
 	struct sockaddr_in dstaddr;
 	int		rc;
 
-	LASSERT (net != NULL);
-	LASSERT (peer->ibp_connecting > 0);
+	LASSERT(net != NULL);
+	LASSERT(peer->ibp_connecting > 0);
 
 	cmid = kiblnd_rdma_create_id(kiblnd_cm_callback, peer, RDMA_PS_TCP,
 				     IB_QPT_RC);
@@ -1318,7 +1318,7 @@ kiblnd_connect_peer (kib_peer_t *peer)
 		goto failed2;
 	}
 
-	LASSERT (cmid->device != NULL);
+	LASSERT(cmid->device != NULL);
 	CDEBUG(D_NET, "%s: connection bound to %s:%pI4h:%s\n",
 	       libcfs_nid2str(peer->ibp_nid), dev->ibd_ifname,
 	       &dev->ibd_ifip, cmid->device->name);
@@ -1333,7 +1333,7 @@ kiblnd_connect_peer (kib_peer_t *peer)
 }
 
 void
-kiblnd_launch_tx (lnet_ni_t *ni, kib_tx_t *tx, lnet_nid_t nid)
+kiblnd_launch_tx(lnet_ni_t *ni, kib_tx_t *tx, lnet_nid_t nid)
 {
 	kib_peer_t	*peer;
 	kib_peer_t	*peer2;
@@ -1345,8 +1345,8 @@ kiblnd_launch_tx (lnet_ni_t *ni, kib_tx_t *tx, lnet_nid_t nid)
 	/* If I get here, I've committed to send, so I complete the tx with
 	 * failure on any problems */
 
-	LASSERT (tx == NULL || tx->tx_conn == NULL); /* only set when assigned a conn */
-	LASSERT (tx == NULL || tx->tx_nwrq > 0);     /* work items have been set up */
+	LASSERT(tx == NULL || tx->tx_conn == NULL); /* only set when assigned a conn */
+	LASSERT(tx == NULL || tx->tx_nwrq > 0);     /* work items have been set up */
 
 	/* First time, just use a read lock since I expect to find my peer
 	 * connected */
@@ -1374,7 +1374,7 @@ kiblnd_launch_tx (lnet_ni_t *ni, kib_tx_t *tx, lnet_nid_t nid)
 	if (peer != NULL) {
 		if (list_empty(&peer->ibp_conns)) {
 			/* found a peer, but it's still connecting... */
-			LASSERT (peer->ibp_connecting != 0 ||
+			LASSERT(peer->ibp_connecting != 0 ||
 				 peer->ibp_accepting != 0);
 			if (tx != NULL)
 				list_add_tail(&tx->tx_list,
@@ -1413,7 +1413,7 @@ kiblnd_launch_tx (lnet_ni_t *ni, kib_tx_t *tx, lnet_nid_t nid)
 	if (peer2 != NULL) {
 		if (list_empty(&peer2->ibp_conns)) {
 			/* found a peer, but it's still connecting... */
-			LASSERT (peer2->ibp_connecting != 0 ||
+			LASSERT(peer2->ibp_connecting != 0 ||
 				 peer2->ibp_accepting != 0);
 			if (tx != NULL)
 				list_add_tail(&tx->tx_list,
@@ -1435,11 +1435,11 @@ kiblnd_launch_tx (lnet_ni_t *ni, kib_tx_t *tx, lnet_nid_t nid)
 	}
 
 	/* Brand new peer */
-	LASSERT (peer->ibp_connecting == 0);
+	LASSERT(peer->ibp_connecting == 0);
 	peer->ibp_connecting = 1;
 
 	/* always called with a ref on ni, which prevents ni being shutdown */
-	LASSERT (((kib_net_t *)ni->ni_data)->ibn_shutdown == 0);
+	LASSERT(((kib_net_t *)ni->ni_data)->ibn_shutdown == 0);
 
 	if (tx != NULL)
 		list_add_tail(&tx->tx_list, &peer->ibp_tx_queue);
@@ -1454,7 +1454,7 @@ kiblnd_launch_tx (lnet_ni_t *ni, kib_tx_t *tx, lnet_nid_t nid)
 }
 
 int
-kiblnd_send (lnet_ni_t *ni, void *private, lnet_msg_t *lntmsg)
+kiblnd_send(lnet_ni_t *ni, void *private, lnet_msg_t *lntmsg)
 {
 	lnet_hdr_t       *hdr = &lntmsg->msg_hdr;
 	int	       type = lntmsg->msg_type;
@@ -1476,13 +1476,13 @@ kiblnd_send (lnet_ni_t *ni, void *private, lnet_msg_t *lntmsg)
 	CDEBUG(D_NET, "sending %d bytes in %d frags to %s\n",
 	       payload_nob, payload_niov, libcfs_id2str(target));
 
-	LASSERT (payload_nob == 0 || payload_niov > 0);
-	LASSERT (payload_niov <= LNET_MAX_IOV);
+	LASSERT(payload_nob == 0 || payload_niov > 0);
+	LASSERT(payload_niov <= LNET_MAX_IOV);
 
 	/* Thread context */
-	LASSERT (!in_interrupt());
+	LASSERT(!in_interrupt());
 	/* payload is either all vaddrs or all pages */
-	LASSERT (!(payload_kiov != NULL && payload_iov != NULL));
+	LASSERT(!(payload_kiov != NULL && payload_iov != NULL));
 
 	switch (type) {
 	default:
@@ -1490,7 +1490,7 @@ kiblnd_send (lnet_ni_t *ni, void *private, lnet_msg_t *lntmsg)
 		return -EIO;
 
 	case LNET_MSG_ACK:
-		LASSERT (payload_nob == 0);
+		LASSERT(payload_nob == 0);
 		break;
 
 	case LNET_MSG_GET:
@@ -1592,12 +1592,12 @@ kiblnd_send (lnet_ni_t *ni, void *private, lnet_msg_t *lntmsg)
 
 	/* send IMMEDIATE */
 
-	LASSERT (offsetof(kib_msg_t, ibm_u.immediate.ibim_payload[payload_nob])
+	LASSERT(offsetof(kib_msg_t, ibm_u.immediate.ibim_payload[payload_nob])
 		 <= IBLND_MSG_SIZE);
 
 	tx = kiblnd_get_idle_tx(ni, target.nid);
 	if (tx == NULL) {
-		CERROR ("Can't send %d to %s: tx descs exhausted\n",
+		CERROR("Can't send %d to %s: tx descs exhausted\n",
 			type, libcfs_nid2str(target.nid));
 		return -ENOMEM;
 	}
@@ -1625,7 +1625,7 @@ kiblnd_send (lnet_ni_t *ni, void *private, lnet_msg_t *lntmsg)
 }
 
 static void
-kiblnd_reply (lnet_ni_t *ni, kib_rx_t *rx, lnet_msg_t *lntmsg)
+kiblnd_reply(lnet_ni_t *ni, kib_rx_t *rx, lnet_msg_t *lntmsg)
 {
 	lnet_process_id_t target = lntmsg->msg_target;
 	unsigned int      niov = lntmsg->msg_niov;
@@ -1687,7 +1687,7 @@ kiblnd_reply (lnet_ni_t *ni, kib_rx_t *rx, lnet_msg_t *lntmsg)
 }
 
 int
-kiblnd_recv (lnet_ni_t *ni, void *private, lnet_msg_t *lntmsg, int delayed,
+kiblnd_recv(lnet_ni_t *ni, void *private, lnet_msg_t *lntmsg, int delayed,
 	     unsigned int niov, struct kvec *iov, lnet_kiov_t *kiov,
 	     unsigned int offset, unsigned int mlen, unsigned int rlen)
 {
@@ -1700,10 +1700,10 @@ kiblnd_recv (lnet_ni_t *ni, void *private, lnet_msg_t *lntmsg, int delayed,
 	int	  post_credit = IBLND_POSTRX_PEER_CREDIT;
 	int	  rc = 0;
 
-	LASSERT (mlen <= rlen);
-	LASSERT (!in_interrupt());
+	LASSERT(mlen <= rlen);
+	LASSERT(!in_interrupt());
 	/* Either all pages or all vaddrs */
-	LASSERT (!(kiov != NULL && iov != NULL));
+	LASSERT(!(kiov != NULL && iov != NULL));
 
 	switch (rxmsg->ibm_type) {
 	default:
@@ -1712,7 +1712,7 @@ kiblnd_recv (lnet_ni_t *ni, void *private, lnet_msg_t *lntmsg, int delayed,
 	case IBLND_MSG_IMMEDIATE:
 		nob = offsetof(kib_msg_t, ibm_u.immediate.ibim_payload[rlen]);
 		if (nob > rx->rx_nob) {
-			CERROR ("Immediate message from %s too big: %d(%d)\n",
+			CERROR("Immediate message from %s too big: %d(%d)\n",
 				libcfs_nid2str(rxmsg->ibm_u.immediate.ibim_hdr.src_nid),
 				nob, rx->rx_nob);
 			rc = -EPROTO;
@@ -1729,7 +1729,7 @@ kiblnd_recv (lnet_ni_t *ni, void *private, lnet_msg_t *lntmsg, int delayed,
 					   IBLND_MSG_SIZE, rxmsg,
 					   offsetof(kib_msg_t, ibm_u.immediate.ibim_payload),
 					   mlen);
-		lnet_finalize (ni, lntmsg, 0);
+		lnet_finalize(ni, lntmsg, 0);
 		break;
 
 	case IBLND_MSG_PUT_REQ:
@@ -1812,13 +1812,13 @@ kiblnd_thread_start(int (*fn)(void *arg), void *arg, char *name)
 }
 
 static void
-kiblnd_thread_fini (void)
+kiblnd_thread_fini(void)
 {
-	atomic_dec (&kiblnd_data.kib_nthreads);
+	atomic_dec(&kiblnd_data.kib_nthreads);
 }
 
 void
-kiblnd_peer_alive (kib_peer_t *peer)
+kiblnd_peer_alive(kib_peer_t *peer)
 {
 	/* This is racy, but everyone's only writing cfs_time_current() */
 	peer->ibp_last_alive = cfs_time_current();
@@ -1826,7 +1826,7 @@ kiblnd_peer_alive (kib_peer_t *peer)
 }
 
 static void
-kiblnd_peer_notify (kib_peer_t *peer)
+kiblnd_peer_notify(kib_peer_t *peer)
 {
 	int	   error = 0;
 	unsigned long    last_alive = 0;
@@ -1852,7 +1852,7 @@ kiblnd_peer_notify (kib_peer_t *peer)
 }
 
 void
-kiblnd_close_conn_locked (kib_conn_t *conn, int error)
+kiblnd_close_conn_locked(kib_conn_t *conn, int error)
 {
 	/* This just does the immediate housekeeping.  'error' is zero for a
 	 * normal shutdown which can happen only after the connection has been
@@ -1864,7 +1864,7 @@ kiblnd_close_conn_locked (kib_conn_t *conn, int error)
 	kib_dev_t	*dev;
 	unsigned long     flags;
 
-	LASSERT (error != 0 || conn->ibc_state >= IBLND_CONN_ESTABLISHED);
+	LASSERT(error != 0 || conn->ibc_state >= IBLND_CONN_ESTABLISHED);
 
 	if (error != 0 && conn->ibc_comms_error == 0)
 		conn->ibc_comms_error = error;
@@ -1894,7 +1894,7 @@ kiblnd_close_conn_locked (kib_conn_t *conn, int error)
 	list_del(&conn->ibc_list);
 	/* connd (see below) takes over ibc_list's ref */
 
-	if (list_empty (&peer->ibp_conns) &&    /* no more conns */
+	if (list_empty(&peer->ibp_conns) &&    /* no more conns */
 	    kiblnd_peer_active(peer)) {	 /* still in peer table */
 		kiblnd_unlink_peer_locked(peer);
 
@@ -1957,22 +1957,22 @@ kiblnd_handle_early_rxs(kib_conn_t *conn)
 static void
 kiblnd_abort_txs(kib_conn_t *conn, struct list_head *txs)
 {
-	LIST_HEAD       (zombies);
+	LIST_HEAD(zombies);
 	struct list_head	  *tmp;
 	struct list_head	  *nxt;
 	kib_tx_t	    *tx;
 
 	spin_lock(&conn->ibc_lock);
 
-	list_for_each_safe (tmp, nxt, txs) {
-		tx = list_entry (tmp, kib_tx_t, tx_list);
+	list_for_each_safe(tmp, nxt, txs) {
+		tx = list_entry(tmp, kib_tx_t, tx_list);
 
 		if (txs == &conn->ibc_active_txs) {
-			LASSERT (!tx->tx_queued);
-			LASSERT (tx->tx_waiting ||
+			LASSERT(!tx->tx_queued);
+			LASSERT(tx->tx_waiting ||
 				 tx->tx_sending != 0);
 		} else {
-			LASSERT (tx->tx_queued);
+			LASSERT(tx->tx_queued);
 		}
 
 		tx->tx_status = -ECONNABORTED;
@@ -1980,8 +1980,8 @@ kiblnd_abort_txs(kib_conn_t *conn, struct list_head *txs)
 
 		if (tx->tx_sending == 0) {
 			tx->tx_queued = 0;
-			list_del (&tx->tx_list);
-			list_add (&tx->tx_list, &zombies);
+			list_del(&tx->tx_list);
+			list_add(&tx->tx_list, &zombies);
 		}
 	}
 
@@ -1991,10 +1991,10 @@ kiblnd_abort_txs(kib_conn_t *conn, struct list_head *txs)
 }
 
 static void
-kiblnd_finalise_conn (kib_conn_t *conn)
+kiblnd_finalise_conn(kib_conn_t *conn)
 {
-	LASSERT (!in_interrupt());
-	LASSERT (conn->ibc_state > IBLND_CONN_INIT);
+	LASSERT(!in_interrupt());
+	LASSERT(conn->ibc_state > IBLND_CONN_INIT);
 
 	kiblnd_set_conn_state(conn, IBLND_CONN_DISCONNECTED);
 
@@ -2016,21 +2016,21 @@ kiblnd_finalise_conn (kib_conn_t *conn)
 }
 
 void
-kiblnd_peer_connect_failed (kib_peer_t *peer, int active, int error)
+kiblnd_peer_connect_failed(kib_peer_t *peer, int active, int error)
 {
-	LIST_HEAD    (zombies);
+	LIST_HEAD(zombies);
 	unsigned long     flags;
 
-	LASSERT (error != 0);
-	LASSERT (!in_interrupt());
+	LASSERT(error != 0);
+	LASSERT(!in_interrupt());
 
 	write_lock_irqsave(&kiblnd_data.kib_global_lock, flags);
 
 	if (active) {
-		LASSERT (peer->ibp_connecting > 0);
+		LASSERT(peer->ibp_connecting > 0);
 		peer->ibp_connecting--;
 	} else {
-		LASSERT (peer->ibp_accepting > 0);
+		LASSERT(peer->ibp_accepting > 0);
 		peer->ibp_accepting--;
 	}
 
@@ -2053,14 +2053,14 @@ kiblnd_peer_connect_failed (kib_peer_t *peer, int active, int error)
 		peer->ibp_error = error;
 	} else {
 		/* Can't have blocked transmits if there are connections */
-		LASSERT (list_empty(&peer->ibp_tx_queue));
+		LASSERT(list_empty(&peer->ibp_tx_queue));
 	}
 
 	write_unlock_irqrestore(&kiblnd_data.kib_global_lock, flags);
 
 	kiblnd_peer_notify(peer);
 
-	if (list_empty (&zombies))
+	if (list_empty(&zombies))
 		return;
 
 	CNETERR("Deleting messages for %s: connection failed\n",
@@ -2084,8 +2084,8 @@ kiblnd_connreq_done(kib_conn_t *conn, int status)
 	       libcfs_nid2str(peer->ibp_nid), active,
 	       conn->ibc_version, status);
 
-	LASSERT (!in_interrupt());
-	LASSERT ((conn->ibc_state == IBLND_CONN_ACTIVE_CONNECT &&
+	LASSERT(!in_interrupt());
+	LASSERT((conn->ibc_state == IBLND_CONN_ACTIVE_CONNECT &&
 		  peer->ibp_connecting > 0) ||
 		 (conn->ibc_state == IBLND_CONN_PASSIVE_WAIT &&
 		  peer->ibp_accepting > 0));
@@ -2176,7 +2176,7 @@ kiblnd_reject(struct rdma_cm_id *cmid, kib_rej_t *rej)
 }
 
 static int
-kiblnd_passive_connect (struct rdma_cm_id *cmid, void *priv, int priv_nob)
+kiblnd_passive_connect(struct rdma_cm_id *cmid, void *priv, int priv_nob)
 {
 	rwlock_t		*g_lock = &kiblnd_data.kib_global_lock;
 	kib_msg_t	     *reqmsg = priv;
@@ -2194,11 +2194,11 @@ kiblnd_passive_connect (struct rdma_cm_id *cmid, void *priv, int priv_nob)
 	unsigned long	  flags;
 	int		    rc;
 	struct sockaddr_in    *peer_addr;
-	LASSERT (!in_interrupt());
+	LASSERT(!in_interrupt());
 
 	/* cmid inherits 'context' from the corresponding listener id */
 	ibdev = (kib_dev_t *)cmid->context;
-	LASSERT (ibdev != NULL);
+	LASSERT(ibdev != NULL);
 
 	memset(&rej, 0, sizeof(rej));
 	rej.ibr_magic		= IBLND_MSG_MAGIC;
@@ -2366,8 +2366,8 @@ kiblnd_passive_connect (struct rdma_cm_id *cmid, void *priv, int priv_nob)
 		peer = peer2;
 	} else {
 		/* Brand new peer */
-		LASSERT (peer->ibp_accepting == 0);
-		LASSERT (peer->ibp_version == 0 &&
+		LASSERT(peer->ibp_accepting == 0);
+		LASSERT(peer->ibp_version == 0 &&
 			 peer->ibp_incarnation == 0);
 
 		peer->ibp_accepting   = 1;
@@ -2375,7 +2375,7 @@ kiblnd_passive_connect (struct rdma_cm_id *cmid, void *priv, int priv_nob)
 		peer->ibp_incarnation = reqmsg->ibm_srcstamp;
 
 		/* I have a ref on ni that prevents it being shutdown */
-		LASSERT (net->ibn_shutdown == 0);
+		LASSERT(net->ibn_shutdown == 0);
 
 		kiblnd_peer_addref(peer);
 		list_add_tail(&peer->ibp_list, kiblnd_nid2peerlist(nid));
@@ -2397,7 +2397,7 @@ kiblnd_passive_connect (struct rdma_cm_id *cmid, void *priv, int priv_nob)
 	conn->ibc_incarnation      = reqmsg->ibm_srcstamp;
 	conn->ibc_credits	  = IBLND_MSG_QUEUE_SIZE(version);
 	conn->ibc_reserved_credits = IBLND_MSG_QUEUE_SIZE(version);
-	LASSERT (conn->ibc_credits + conn->ibc_reserved_credits + IBLND_OOB_MSGS(version)
+	LASSERT(conn->ibc_credits + conn->ibc_reserved_credits + IBLND_OOB_MSGS(version)
 		 <= IBLND_RX_MSGS(version));
 
 	ackmsg = &conn->ibc_connvars->cv_msg;
@@ -2449,7 +2449,7 @@ kiblnd_passive_connect (struct rdma_cm_id *cmid, void *priv, int priv_nob)
 }
 
 static void
-kiblnd_reconnect (kib_conn_t *conn, int version,
+kiblnd_reconnect(kib_conn_t *conn, int version,
 		  __u64 incarnation, int why, kib_connparams_t *cp)
 {
 	kib_peer_t    *peer = conn->ibc_peer;
@@ -2457,8 +2457,8 @@ kiblnd_reconnect (kib_conn_t *conn, int version,
 	int	    retry = 0;
 	unsigned long  flags;
 
-	LASSERT (conn->ibc_state == IBLND_CONN_ACTIVE_CONNECT);
-	LASSERT (peer->ibp_connecting > 0);     /* 'conn' at least */
+	LASSERT(conn->ibc_state == IBLND_CONN_ACTIVE_CONNECT);
+	LASSERT(peer->ibp_connecting > 0);     /* 'conn' at least */
 
 	write_lock_irqsave(&kiblnd_data.kib_global_lock, flags);
 
@@ -2512,12 +2512,12 @@ kiblnd_reconnect (kib_conn_t *conn, int version,
 }
 
 static void
-kiblnd_rejected (kib_conn_t *conn, int reason, void *priv, int priv_nob)
+kiblnd_rejected(kib_conn_t *conn, int reason, void *priv, int priv_nob)
 {
 	kib_peer_t    *peer = conn->ibc_peer;
 
-	LASSERT (!in_interrupt());
-	LASSERT (conn->ibc_state == IBLND_CONN_ACTIVE_CONNECT);
+	LASSERT(!in_interrupt());
+	LASSERT(conn->ibc_state == IBLND_CONN_ACTIVE_CONNECT);
 
 	switch (reason) {
 	case IB_CM_REJ_STALE_CONN:
@@ -2651,7 +2651,7 @@ kiblnd_rejected (kib_conn_t *conn, int reason, void *priv, int priv_nob)
 }
 
 static void
-kiblnd_check_connreply (kib_conn_t *conn, void *priv, int priv_nob)
+kiblnd_check_connreply(kib_conn_t *conn, void *priv, int priv_nob)
 {
 	kib_peer_t    *peer = conn->ibc_peer;
 	lnet_ni_t     *ni   = peer->ibp_ni;
@@ -2661,7 +2661,7 @@ kiblnd_check_connreply (kib_conn_t *conn, void *priv, int priv_nob)
 	int	    rc   = kiblnd_unpack_msg(msg, priv_nob);
 	unsigned long  flags;
 
-	LASSERT (net != NULL);
+	LASSERT(net != NULL);
 
 	if (rc != 0) {
 		CERROR("Can't unpack connack from %s: %d\n",
@@ -2730,7 +2730,7 @@ kiblnd_check_connreply (kib_conn_t *conn, void *priv, int priv_nob)
 	conn->ibc_incarnation      = msg->ibm_srcstamp;
 	conn->ibc_credits	  =
 	conn->ibc_reserved_credits = IBLND_MSG_QUEUE_SIZE(ver);
-	LASSERT (conn->ibc_credits + conn->ibc_reserved_credits + IBLND_OOB_MSGS(ver)
+	LASSERT(conn->ibc_credits + conn->ibc_reserved_credits + IBLND_OOB_MSGS(ver)
 		 <= IBLND_RX_MSGS(ver));
 
 	kiblnd_connreq_done(conn, 0);
@@ -2742,13 +2742,13 @@ kiblnd_check_connreply (kib_conn_t *conn, void *priv, int priv_nob)
 	 * kiblnd_connreq_done(0) moves the conn state to ESTABLISHED, but then
 	 * immediately tears it down. */
 
-	LASSERT (rc != 0);
+	LASSERT(rc != 0);
 	conn->ibc_comms_error = rc;
 	kiblnd_connreq_done(conn, 0);
 }
 
 static int
-kiblnd_active_connect (struct rdma_cm_id *cmid)
+kiblnd_active_connect(struct rdma_cm_id *cmid)
 {
 	kib_peer_t	      *peer = (kib_peer_t *)cmid->context;
 	kib_conn_t	      *conn;
@@ -2913,7 +2913,7 @@ kiblnd_cm_callback(struct rdma_cm_id *cmid, struct rdma_cm_event *event)
 			LBUG();
 
 		case IBLND_CONN_PASSIVE_WAIT:
-			CERROR ("%s: REJECTED %d\n",
+			CERROR("%s: REJECTED %d\n",
 				libcfs_nid2str(conn->ibc_peer->ibp_nid),
 				event->status);
 			kiblnd_connreq_done(conn, -ECONNRESET);
@@ -2987,17 +2987,17 @@ kiblnd_check_txs_locked(kib_conn_t *conn, struct list_head *txs)
 	kib_tx_t	  *tx;
 	struct list_head	*ttmp;
 
-	list_for_each (ttmp, txs) {
-		tx = list_entry (ttmp, kib_tx_t, tx_list);
+	list_for_each(ttmp, txs) {
+		tx = list_entry(ttmp, kib_tx_t, tx_list);
 
 		if (txs != &conn->ibc_active_txs) {
-			LASSERT (tx->tx_queued);
+			LASSERT(tx->tx_queued);
 		} else {
-			LASSERT (!tx->tx_queued);
-			LASSERT (tx->tx_waiting || tx->tx_sending != 0);
+			LASSERT(!tx->tx_queued);
+			LASSERT(tx->tx_waiting || tx->tx_sending != 0);
 		}
 
-		if (cfs_time_aftereq (jiffies, tx->tx_deadline)) {
+		if (cfs_time_aftereq(jiffies, tx->tx_deadline)) {
 			CERROR("Timed out tx: %s, %lu seconds\n",
 			       kiblnd_queue2str(conn, txs),
 			       cfs_duration_sec(jiffies - tx->tx_deadline));
@@ -3019,10 +3019,10 @@ kiblnd_conn_timed_out_locked(kib_conn_t *conn)
 }
 
 static void
-kiblnd_check_conns (int idx)
+kiblnd_check_conns(int idx)
 {
-	LIST_HEAD (closes);
-	LIST_HEAD (checksends);
+	LIST_HEAD(closes);
+	LIST_HEAD(checksends);
 	struct list_head    *peers = &kiblnd_data.kib_peers[idx];
 	struct list_head    *ptmp;
 	kib_peer_t    *peer;
@@ -3035,16 +3035,16 @@ kiblnd_check_conns (int idx)
 	 * take a look... */
 	read_lock_irqsave(&kiblnd_data.kib_global_lock, flags);
 
-	list_for_each (ptmp, peers) {
-		peer = list_entry (ptmp, kib_peer_t, ibp_list);
+	list_for_each(ptmp, peers) {
+		peer = list_entry(ptmp, kib_peer_t, ibp_list);
 
-		list_for_each (ctmp, &peer->ibp_conns) {
+		list_for_each(ctmp, &peer->ibp_conns) {
 			int timedout;
 			int sendnoop;
 
 			conn = list_entry(ctmp, kib_conn_t, ibc_list);
 
-			LASSERT (conn->ibc_state == IBLND_CONN_ESTABLISHED);
+			LASSERT(conn->ibc_state == IBLND_CONN_ESTABLISHED);
 
 			spin_lock(&conn->ibc_lock);
 
@@ -3101,11 +3101,11 @@ kiblnd_check_conns (int idx)
 }
 
 static void
-kiblnd_disconnect_conn (kib_conn_t *conn)
+kiblnd_disconnect_conn(kib_conn_t *conn)
 {
-	LASSERT (!in_interrupt());
-	LASSERT (current == kiblnd_data.kib_connd);
-	LASSERT (conn->ibc_state == IBLND_CONN_CLOSING);
+	LASSERT(!in_interrupt());
+	LASSERT(current == kiblnd_data.kib_connd);
+	LASSERT(conn->ibc_state == IBLND_CONN_CLOSING);
 
 	rdma_disconnect(conn->ibc_cmid);
 	kiblnd_finalise_conn(conn);
@@ -3114,7 +3114,7 @@ kiblnd_disconnect_conn (kib_conn_t *conn)
 }
 
 int
-kiblnd_connd (void *arg)
+kiblnd_connd(void *arg)
 {
 	wait_queue_t     wait;
 	unsigned long      flags;
@@ -3125,7 +3125,7 @@ kiblnd_connd (void *arg)
 	int		peer_index = 0;
 	unsigned long      deadline = jiffies;
 
-	cfs_block_allsigs ();
+	cfs_block_allsigs();
 
 	init_waitqueue_entry(&wait, current);
 	kiblnd_data.kib_connd = current;
@@ -3136,7 +3136,7 @@ kiblnd_connd (void *arg)
 
 		dropped_lock = 0;
 
-		if (!list_empty (&kiblnd_data.kib_connd_zombies)) {
+		if (!list_empty(&kiblnd_data.kib_connd_zombies)) {
 			conn = list_entry(kiblnd_data. \
 					      kib_connd_zombies.next,
 					      kib_conn_t, ibc_list);
@@ -3239,7 +3239,7 @@ kiblnd_qp_event(struct ib_event *event, void *arg)
 }
 
 static void
-kiblnd_complete (struct ib_wc *wc)
+kiblnd_complete(struct ib_wc *wc)
 {
 	switch (kiblnd_wreqid2type(wc->wr_id)) {
 	default:
@@ -3440,9 +3440,9 @@ kiblnd_failover_thread(void *arg)
 	unsigned long      flags;
 	int		rc;
 
-	LASSERT (*kiblnd_tunables.kib_dev_failover != 0);
+	LASSERT(*kiblnd_tunables.kib_dev_failover != 0);
 
-	cfs_block_allsigs ();
+	cfs_block_allsigs();
 
 	init_waitqueue_entry(&wait, current);
 	write_lock_irqsave(glock, flags);
@@ -3469,7 +3469,7 @@ kiblnd_failover_thread(void *arg)
 
 			write_lock_irqsave(glock, flags);
 
-			LASSERT (dev->ibd_failover);
+			LASSERT(dev->ibd_failover);
 			dev->ibd_failover = 0;
 			if (rc >= 0) { /* Device is OK or failover succeed */
 				dev->ibd_next_failover = cfs_time_shift(3);
-- 
1.9.1



X-GM-THRID: 4928464486400
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ce5c5857fa5d05c6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr2665088lbf.21.1425130403057;
        Sat, 28 Feb 2015 05:33:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.165 with SMTP id uf5ls278368lac.60.gmail; Sat, 28 Feb
 2015 05:33:20 -0800 (PST)
X-Received: by 10.112.156.65 with SMTP id wc1mr33209lbb.7.1425130400356;
        Sat, 28 Feb 2015 05:33:20 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id r6si309976wix.0.2015.02.28.05.33.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 05:33:20 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id n12so25345021wgh.1
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 05:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=iMDUWnUno4i0iykc6FAy+aBBjSI/iLDsNSzFm9ggu+w=;
        b=i8DHZ6ky6QOsaSkGYMVRQH4/aWiUDC/7W0h54fiT8bt7NOvEDO1XQnIU9U3G89AGg/
         HrQaYX1LrLm+kgJd46BbT6uB12xgY2VfY6945c1DpJ5QCwS105O1LYqQMhhimpMn0yrM
         dsUvm5reFu24YKMGRp31ovMvmV8ixrfyCfkF6yDZfjKyThtUiBQU5IG15bHfCYPxoeTU
         aMOY12YfI26nCNVPAkOGaew7RGq2zr5pb6gyiMwHTGPTz1FVEHaVjcHVjUIM8m0M5/q7
         nJCl+4NZqoPH4aS4uhaEanIA+kVkmX5JEyehvRT00qgCLBrSjqAQBmKPomngIZxzMvWy
         xAFQ==
X-Received: by 10.180.8.165 with SMTP id s5mr16721281wia.16.1425130400255;
        Sat, 28 Feb 2015 05:33:20 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id u6sm7069757wix.12.2015.02.28.05.33.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 05:33:19 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: klnds: socklnd: Remove space after the name of that function
Date: Sat, 28 Feb 2015 15:33:12 +0200
Message-Id: <1425130392-23580-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Function names must be adjacent to the parenthesis opened after.That's
why remove space after the name of that function.

This Warning found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 .../lustre/lnet/klnds/socklnd/socklnd_lib-linux.c  | 104 ++++++++++-----------
 1 file changed, 52 insertions(+), 52 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_lib-linux.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_lib-linux.c
index 66cc509..f5e8ab0 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_lib-linux.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_lib-linux.c
@@ -37,24 +37,24 @@
 #include "socklnd.h"
 
 int
-ksocknal_lib_get_conn_addrs (ksock_conn_t *conn)
+ksocknal_lib_get_conn_addrs(ksock_conn_t *conn)
 {
 	int rc = libcfs_sock_getaddr(conn->ksnc_sock, 1,
 				     &conn->ksnc_ipaddr,
 				     &conn->ksnc_port);
 
 	/* Didn't need the {get,put}connsock dance to deref ksnc_sock... */
-	LASSERT (!conn->ksnc_closing);
+	LASSERT(!conn->ksnc_closing);
 
 	if (rc != 0) {
-		CERROR ("Error %d getting sock peer IP\n", rc);
+		CERROR("Error %d getting sock peer IP\n", rc);
 		return rc;
 	}
 
 	rc = libcfs_sock_getaddr(conn->ksnc_sock, 0,
 				 &conn->ksnc_myipaddr, NULL);
 	if (rc != 0) {
-		CERROR ("Error %d getting sock local IP\n", rc);
+		CERROR("Error %d getting sock local IP\n", rc);
 		return rc;
 	}
 
@@ -75,7 +75,7 @@ ksocknal_lib_zc_capable(ksock_conn_t *conn)
 }
 
 int
-ksocknal_lib_send_iov (ksock_conn_t *conn, ksock_tx_t *tx)
+ksocknal_lib_send_iov(ksock_conn_t *conn, ksock_tx_t *tx)
 {
 	struct socket *sock = conn->ksnc_sock;
 	int	    nob;
@@ -117,7 +117,7 @@ ksocknal_lib_send_iov (ksock_conn_t *conn, ksock_tx_t *tx)
 }
 
 int
-ksocknal_lib_send_kiov (ksock_conn_t *conn, ksock_tx_t *tx)
+ksocknal_lib_send_kiov(ksock_conn_t *conn, ksock_tx_t *tx)
 {
 	struct socket *sock = conn->ksnc_sock;
 	lnet_kiov_t   *kiov = tx->tx_kiov;
@@ -125,7 +125,7 @@ ksocknal_lib_send_kiov (ksock_conn_t *conn, ksock_tx_t *tx)
 	int	    nob;
 
 	/* Not NOOP message */
-	LASSERT (tx->tx_lnetmsg != NULL);
+	LASSERT(tx->tx_lnetmsg != NULL);
 
 	/* NB we can't trust socket ops to either consume our iovs
 	 * or leave them alone. */
@@ -185,7 +185,7 @@ ksocknal_lib_send_kiov (ksock_conn_t *conn, ksock_tx_t *tx)
 }
 
 void
-ksocknal_lib_eager_ack (ksock_conn_t *conn)
+ksocknal_lib_eager_ack(ksock_conn_t *conn)
 {
 	int	    opt = 1;
 	struct socket *sock = conn->ksnc_sock;
@@ -196,11 +196,11 @@ ksocknal_lib_eager_ack (ksock_conn_t *conn)
 	 * peer. */
 
 	kernel_setsockopt(sock, SOL_TCP, TCP_QUICKACK,
-			       (char *)&opt, sizeof (opt));
+			       (char *)&opt, sizeof(opt));
 }
 
 int
-ksocknal_lib_recv_iov (ksock_conn_t *conn)
+ksocknal_lib_recv_iov(ksock_conn_t *conn)
 {
 #if SOCKNAL_SINGLE_FRAG_RX
 	struct kvec  scratch;
@@ -223,13 +223,13 @@ ksocknal_lib_recv_iov (ksock_conn_t *conn)
 
 	/* NB we can't trust socket ops to either consume our iovs
 	 * or leave them alone. */
-	LASSERT (niov > 0);
+	LASSERT(niov > 0);
 
 	for (nob = i = 0; i < niov; i++) {
 		scratchiov[i] = iov[i];
 		nob += scratchiov[i].iov_len;
 	}
-	LASSERT (nob <= conn->ksnc_rx_nob_wanted);
+	LASSERT(nob <= conn->ksnc_rx_nob_wanted);
 
 	rc = kernel_recvmsg(conn->ksnc_sock, &msg,
 		scratchiov, niov, nob, MSG_DONTWAIT);
@@ -243,7 +243,7 @@ ksocknal_lib_recv_iov (ksock_conn_t *conn)
 	if (saved_csum != 0) {
 		/* accumulate checksum */
 		for (i = 0, sum = rc; sum > 0; i++, sum -= fragnob) {
-			LASSERT (i < niov);
+			LASSERT(i < niov);
 
 			fragnob = iov[i].iov_len;
 			if (fragnob > sum)
@@ -278,7 +278,7 @@ ksocknal_lib_kiov_vmap(lnet_kiov_t *kiov, int niov,
 	if (!*ksocknal_tunables.ksnd_zc_recv || pages == NULL)
 		return NULL;
 
-	LASSERT (niov <= LNET_MAX_IOV);
+	LASSERT(niov <= LNET_MAX_IOV);
 
 	if (niov < 2 ||
 	    niov < *ksocknal_tunables.ksnd_zc_recv_min_nfrags)
@@ -304,7 +304,7 @@ ksocknal_lib_kiov_vmap(lnet_kiov_t *kiov, int niov,
 }
 
 int
-ksocknal_lib_recv_kiov (ksock_conn_t *conn)
+ksocknal_lib_recv_kiov(ksock_conn_t *conn)
 {
 #if SOCKNAL_SINGLE_FRAG_RX || !SOCKNAL_RISK_KMAP_DEADLOCK
 	struct kvec   scratch;
@@ -348,14 +348,14 @@ ksocknal_lib_recv_kiov (ksock_conn_t *conn)
 		n = niov;
 	}
 
-	LASSERT (nob <= conn->ksnc_rx_nob_wanted);
+	LASSERT(nob <= conn->ksnc_rx_nob_wanted);
 
 	rc = kernel_recvmsg(conn->ksnc_sock, &msg,
 			(struct kvec *)scratchiov, n, nob, MSG_DONTWAIT);
 
 	if (conn->ksnc_msg.ksm_csum != 0) {
 		for (i = 0, sum = rc; sum > 0; i++, sum -= fragnob) {
-			LASSERT (i < niov);
+			LASSERT(i < niov);
 
 			/* Dang! have to kmap again because I have nowhere to stash the
 			 * mapped address.  But by doing it while the page is still
@@ -423,7 +423,7 @@ ksocknal_lib_csum_tx(ksock_tx_t *tx)
 }
 
 int
-ksocknal_lib_get_conn_tunables (ksock_conn_t *conn, int *txmem, int *rxmem, int *nagle)
+ksocknal_lib_get_conn_tunables(ksock_conn_t *conn, int *txmem, int *rxmem, int *nagle)
 {
 	struct socket *sock = conn->ksnc_sock;
 	int	    len;
@@ -431,7 +431,7 @@ ksocknal_lib_get_conn_tunables (ksock_conn_t *conn, int *txmem, int *rxmem, int
 
 	rc = ksocknal_connsock_addref(conn);
 	if (rc != 0) {
-		LASSERT (conn->ksnc_closing);
+		LASSERT(conn->ksnc_closing);
 		*txmem = *rxmem = *nagle = 0;
 		return -ESHUTDOWN;
 	}
@@ -454,7 +454,7 @@ ksocknal_lib_get_conn_tunables (ksock_conn_t *conn, int *txmem, int *rxmem, int
 }
 
 int
-ksocknal_lib_setup_sock (struct socket *sock)
+ksocknal_lib_setup_sock(struct socket *sock)
 {
 	int	     rc;
 	int	     option;
@@ -473,17 +473,17 @@ ksocknal_lib_setup_sock (struct socket *sock)
 	linger.l_linger = 0;
 
 	rc = kernel_setsockopt(sock, SOL_SOCKET, SO_LINGER,
-			      (char *)&linger, sizeof (linger));
+			      (char *)&linger, sizeof(linger));
 	if (rc != 0) {
-		CERROR ("Can't set SO_LINGER: %d\n", rc);
+		CERROR("Can't set SO_LINGER: %d\n", rc);
 		return rc;
 	}
 
 	option = -1;
 	rc = kernel_setsockopt(sock, SOL_TCP, TCP_LINGER2,
-				    (char *)&option, sizeof (option));
+				    (char *)&option, sizeof(option));
 	if (rc != 0) {
-		CERROR ("Can't set SO_LINGER2: %d\n", rc);
+		CERROR("Can't set SO_LINGER2: %d\n", rc);
 		return rc;
 	}
 
@@ -491,9 +491,9 @@ ksocknal_lib_setup_sock (struct socket *sock)
 		option = 1;
 
 		rc = kernel_setsockopt(sock, SOL_TCP, TCP_NODELAY,
-					    (char *)&option, sizeof (option));
+					    (char *)&option, sizeof(option));
 		if (rc != 0) {
-			CERROR ("Can't disable nagle: %d\n", rc);
+			CERROR("Can't disable nagle: %d\n", rc);
 			return rc;
 		}
 	}
@@ -502,7 +502,7 @@ ksocknal_lib_setup_sock (struct socket *sock)
 				*ksocknal_tunables.ksnd_tx_buffer_size,
 				*ksocknal_tunables.ksnd_rx_buffer_size);
 	if (rc != 0) {
-		CERROR ("Can't set buffer tx %d, rx %d buffers: %d\n",
+		CERROR("Can't set buffer tx %d, rx %d buffers: %d\n",
 			*ksocknal_tunables.ksnd_tx_buffer_size,
 			*ksocknal_tunables.ksnd_rx_buffer_size, rc);
 		return rc;
@@ -519,9 +519,9 @@ ksocknal_lib_setup_sock (struct socket *sock)
 
 	option = (do_keepalive ? 1 : 0);
 	rc = kernel_setsockopt(sock, SOL_SOCKET, SO_KEEPALIVE,
-			      (char *)&option, sizeof (option));
+			      (char *)&option, sizeof(option));
 	if (rc != 0) {
-		CERROR ("Can't set SO_KEEPALIVE: %d\n", rc);
+		CERROR("Can't set SO_KEEPALIVE: %d\n", rc);
 		return rc;
 	}
 
@@ -529,23 +529,23 @@ ksocknal_lib_setup_sock (struct socket *sock)
 		return 0;
 
 	rc = kernel_setsockopt(sock, SOL_TCP, TCP_KEEPIDLE,
-				    (char *)&keep_idle, sizeof (keep_idle));
+				    (char *)&keep_idle, sizeof(keep_idle));
 	if (rc != 0) {
-		CERROR ("Can't set TCP_KEEPIDLE: %d\n", rc);
+		CERROR("Can't set TCP_KEEPIDLE: %d\n", rc);
 		return rc;
 	}
 
 	rc = kernel_setsockopt(sock, SOL_TCP, TCP_KEEPINTVL,
-				    (char *)&keep_intvl, sizeof (keep_intvl));
+				    (char *)&keep_intvl, sizeof(keep_intvl));
 	if (rc != 0) {
-		CERROR ("Can't set TCP_KEEPINTVL: %d\n", rc);
+		CERROR("Can't set TCP_KEEPINTVL: %d\n", rc);
 		return rc;
 	}
 
 	rc = kernel_setsockopt(sock, SOL_TCP, TCP_KEEPCNT,
-				    (char *)&keep_count, sizeof (keep_count));
+				    (char *)&keep_count, sizeof(keep_count));
 	if (rc != 0) {
-		CERROR ("Can't set TCP_KEEPCNT: %d\n", rc);
+		CERROR("Can't set TCP_KEEPCNT: %d\n", rc);
 		return rc;
 	}
 
@@ -553,7 +553,7 @@ ksocknal_lib_setup_sock (struct socket *sock)
 }
 
 void
-ksocknal_lib_push_conn (ksock_conn_t *conn)
+ksocknal_lib_push_conn(ksock_conn_t *conn)
 {
 	struct sock    *sk;
 	struct tcp_sock *tp;
@@ -568,29 +568,29 @@ ksocknal_lib_push_conn (ksock_conn_t *conn)
 	sk = conn->ksnc_sock->sk;
 	tp = tcp_sk(sk);
 
-	lock_sock (sk);
+	lock_sock(sk);
 	nonagle = tp->nonagle;
 	tp->nonagle = 1;
-	release_sock (sk);
+	release_sock(sk);
 
 	rc = kernel_setsockopt(conn->ksnc_sock, SOL_TCP, TCP_NODELAY,
-				      (char *)&val, sizeof (val));
-	LASSERT (rc == 0);
+				      (char *)&val, sizeof(val));
+	LASSERT(rc == 0);
 
-	lock_sock (sk);
+	lock_sock(sk);
 	tp->nonagle = nonagle;
-	release_sock (sk);
+	release_sock(sk);
 
 	ksocknal_connsock_decref(conn);
 }
 
-extern void ksocknal_read_callback (ksock_conn_t *conn);
-extern void ksocknal_write_callback (ksock_conn_t *conn);
+extern void ksocknal_read_callback(ksock_conn_t *conn);
+extern void ksocknal_write_callback(ksock_conn_t *conn);
 /*
  * socket call back in Linux
  */
 static void
-ksocknal_data_ready (struct sock *sk)
+ksocknal_data_ready(struct sock *sk)
 {
 	ksock_conn_t  *conn;
 
@@ -600,8 +600,8 @@ ksocknal_data_ready (struct sock *sk)
 
 	conn = sk->sk_user_data;
 	if (conn == NULL) {	     /* raced with ksocknal_terminate_conn */
-		LASSERT (sk->sk_data_ready != &ksocknal_data_ready);
-		sk->sk_data_ready (sk);
+		LASSERT(sk->sk_data_ready != &ksocknal_data_ready);
+		sk->sk_data_ready(sk);
 	} else
 		ksocknal_read_callback(conn);
 
@@ -609,7 +609,7 @@ ksocknal_data_ready (struct sock *sk)
 }
 
 static void
-ksocknal_write_space (struct sock *sk)
+ksocknal_write_space(struct sock *sk)
 {
 	ksock_conn_t  *conn;
 	int	    wspace;
@@ -629,12 +629,12 @@ ksocknal_write_space (struct sock *sk)
 				      " ready" : " blocked"),
 	       (conn == NULL) ? "" : (conn->ksnc_tx_scheduled ?
 				      " scheduled" : " idle"),
-	       (conn == NULL) ? "" : (list_empty (&conn->ksnc_tx_queue) ?
+	       (conn == NULL) ? "" : (list_empty(&conn->ksnc_tx_queue) ?
 				      " empty" : " queued"));
 
 	if (conn == NULL) {	     /* raced with ksocknal_terminate_conn */
-		LASSERT (sk->sk_write_space != &ksocknal_write_space);
-		sk->sk_write_space (sk);
+		LASSERT(sk->sk_write_space != &ksocknal_write_space);
+		sk->sk_write_space(sk);
 
 		read_unlock(&ksocknal_data.ksnd_global_lock);
 		return;
@@ -647,7 +647,7 @@ ksocknal_write_space (struct sock *sk)
 		 * ENOMEM check in ksocknal_transmit is race-free (think about
 		 * it). */
 
-		clear_bit (SOCK_NOSPACE, &sk->sk_socket->flags);
+		clear_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
 	}
 
 	read_unlock(&ksocknal_data.ksnd_global_lock);
-- 
1.9.1



X-GM-THRID: 5204372094976
X-Received: by 10.112.167.98 with SMTP id zn2mr2787383lbb.6.1425154466993;
        Sat, 28 Feb 2015 12:14:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.120.65 with SMTP id la1ls268116lab.77.gmail; Sat, 28 Feb
 2015 12:14:26 -0800 (PST)
X-Received: by 10.112.126.194 with SMTP id na2mr2905156lbb.18.1425154466568;
        Sat, 28 Feb 2015 12:14:26 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id el6si360333wib.2.2015.02.28.12.14.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 12:14:26 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id k14so26433599wgh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 12:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=hcoQb+mEAy+BWYA+uO9m9FoEr+ijBp8qrYYqHP2JPtI=;
        b=wKSgKP1GwgXvXxlBydgCLZQW4UHwQXDByx/frkldoKVdb5RFFz3u+0uF09GI2X8w/u
         zy1WBQrS+zzbF44zav2bluL8+Ju5nvD4y+p4W1zaSIJp7/dAPvn6NZoUFfFDjh9JbSNI
         Zz06Qo0dQDHphhzumfgbAcNa2ZR/ZjCtvYHyDmDifngKmFJzwcQuN7zzbR2z1GFcj7d5
         pEB+IL8CDSTRKSn0inm8YtRnJ/v4cS5U8k6lW9ae4/RREPAkxbAtJo5aVHUsDMA9Mfza
         8ctibIBOdanhmgaJm/YObUfDKjeXxkUPXOG+HBQLbgUuZoFrqR7/LVqQdEEIqsKxoVgI
         pPzg==
X-Received: by 10.180.82.129 with SMTP id i1mr19290148wiy.1.1425154466461;
        Sat, 28 Feb 2015 12:14:26 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id g1sm8576834wjy.24.2015.02.28.12.14.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 12:14:25 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre:lnet: klnds: socklnd: Remove space after the name of  that function
Date: Sat, 28 Feb 2015 22:14:19 +0200
Message-Id: <1425154459-28921-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Function names must be adjacent to the parenthesis opened after.That's
why remove space after the name of that function.

This Warning found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 .../lustre/lnet/klnds/socklnd/socklnd_proto.c      | 40 +++++++++++-----------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
index b2f88eb..8596581 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
@@ -55,8 +55,8 @@ ksocknal_next_tx_carrier(ksock_conn_t *conn)
 	ksock_tx_t     *tx = conn->ksnc_tx_carrier;
 
 	/* Called holding BH lock: conn->ksnc_scheduler->kss_lock */
-	LASSERT (!list_empty(&conn->ksnc_tx_queue));
-	LASSERT (tx != NULL);
+	LASSERT(!list_empty(&conn->ksnc_tx_queue));
+	LASSERT(tx != NULL);
 
 	/* Next TX that can carry ZC-ACK or LNet message */
 	if (tx->tx_list.next == &conn->ksnc_tx_queue) {
@@ -65,7 +65,7 @@ ksocknal_next_tx_carrier(ksock_conn_t *conn)
 	} else {
 		conn->ksnc_tx_carrier = list_entry(tx->tx_list.next,
 						       ksock_tx_t, tx_list);
-		LASSERT (conn->ksnc_tx_carrier->tx_msg.ksm_type == tx->tx_msg.ksm_type);
+		LASSERT(conn->ksnc_tx_carrier->tx_msg.ksm_type == tx->tx_msg.ksm_type);
 	}
 }
 
@@ -75,7 +75,7 @@ ksocknal_queue_tx_zcack_v2(ksock_conn_t *conn,
 {
 	ksock_tx_t *tx = conn->ksnc_tx_carrier;
 
-	LASSERT (tx_ack == NULL ||
+	LASSERT(tx_ack == NULL ||
 		 tx_ack->tx_msg.ksm_type == KSOCK_MSG_NOOP);
 
 	/*
@@ -139,7 +139,7 @@ ksocknal_queue_tx_msg_v2(ksock_conn_t *conn, ksock_tx_t *tx_msg)
 		return NULL;
 	}
 
-	LASSERT (tx->tx_msg.ksm_type == KSOCK_MSG_NOOP);
+	LASSERT(tx->tx_msg.ksm_type == KSOCK_MSG_NOOP);
 
 	/* There is a noop zc-ack can be piggybacked */
 	tx_msg->tx_msg.ksm_zc_cookies[1] = tx->tx_msg.ksm_zc_cookies[1];
@@ -162,7 +162,7 @@ ksocknal_queue_tx_zcack_v3(ksock_conn_t *conn,
 		return ksocknal_queue_tx_zcack_v2(conn, tx_ack, cookie);
 
 	/* non-blocking ZC-ACK (to router) */
-	LASSERT (tx_ack == NULL ||
+	LASSERT(tx_ack == NULL ||
 		 tx_ack->tx_msg.ksm_type == KSOCK_MSG_NOOP);
 
 	tx = conn->ksnc_tx_carrier;
@@ -185,7 +185,7 @@ ksocknal_queue_tx_zcack_v3(ksock_conn_t *conn,
 
 	if (tx->tx_msg.ksm_zc_cookies[1] == SOCKNAL_KEEPALIVE_PING) {
 		/* replace the keepalive PING with a real ACK */
-		LASSERT (tx->tx_msg.ksm_zc_cookies[0] == 0);
+		LASSERT(tx->tx_msg.ksm_zc_cookies[0] == 0);
 		tx->tx_msg.ksm_zc_cookies[1] = cookie;
 		return 1;
 	}
@@ -220,7 +220,7 @@ ksocknal_queue_tx_zcack_v3(ksock_conn_t *conn,
 		__u64   tmp = 0;
 
 		/* two separated cookies: (a+2, a) or (a+1, a) */
-		LASSERT (tx->tx_msg.ksm_zc_cookies[0] -
+		LASSERT(tx->tx_msg.ksm_zc_cookies[0] -
 			 tx->tx_msg.ksm_zc_cookies[1] <= 2);
 
 		if (tx->tx_msg.ksm_zc_cookies[0] -
@@ -408,7 +408,7 @@ ksocknal_handle_zcack(ksock_conn_t *conn, __u64 cookie1, __u64 cookie2)
 	ksock_peer_t      *peer = conn->ksnc_peer;
 	ksock_tx_t	*tx;
 	ksock_tx_t	*tmp;
-	LIST_HEAD     (zlist);
+	LIST_HEAD(zlist);
 	int		count;
 
 	if (cookie1 == 0)
@@ -450,7 +450,7 @@ ksocknal_handle_zcack(ksock_conn_t *conn, __u64 cookie1, __u64 cookie2)
 }
 
 static int
-ksocknal_send_hello_v1 (ksock_conn_t *conn, ksock_hello_msg_t *hello)
+ksocknal_send_hello_v1(ksock_conn_t *conn, ksock_hello_msg_t *hello)
 {
 	struct socket	*sock = conn->ksnc_sock;
 	lnet_hdr_t	  *hdr;
@@ -526,7 +526,7 @@ out:
 }
 
 static int
-ksocknal_send_hello_v2 (ksock_conn_t *conn, ksock_hello_msg_t *hello)
+ksocknal_send_hello_v2(ksock_conn_t *conn, ksock_hello_msg_t *hello)
 {
 	struct socket *sock = conn->ksnc_sock;
 	int	     rc;
@@ -584,12 +584,12 @@ ksocknal_recv_hello_v1(ksock_conn_t *conn, ksock_hello_msg_t *hello,
 	}
 
 	rc = libcfs_sock_read(sock, &hdr->src_nid,
-			      sizeof (*hdr) - offsetof (lnet_hdr_t, src_nid),
+			      sizeof(*hdr) - offsetof(lnet_hdr_t, src_nid),
 			      timeout);
 	if (rc != 0) {
 		CERROR("Error %d reading rest of HELLO hdr from %pI4h\n",
 			rc, &conn->ksnc_ipaddr);
-		LASSERT (rc < 0 && rc != -EALREADY);
+		LASSERT(rc < 0 && rc != -EALREADY);
 		goto out;
 	}
 
@@ -602,12 +602,12 @@ ksocknal_recv_hello_v1(ksock_conn_t *conn, ksock_hello_msg_t *hello,
 		goto out;
 	}
 
-	hello->kshm_src_nid	 = le64_to_cpu (hdr->src_nid);
-	hello->kshm_src_pid	 = le32_to_cpu (hdr->src_pid);
-	hello->kshm_src_incarnation = le64_to_cpu (hdr->msg.hello.incarnation);
-	hello->kshm_ctype	   = le32_to_cpu (hdr->msg.hello.type);
-	hello->kshm_nips	    = le32_to_cpu (hdr->payload_length) /
-					 sizeof (__u32);
+	hello->kshm_src_nid	 = le64_to_cpu(hdr->src_nid);
+	hello->kshm_src_pid	 = le32_to_cpu(hdr->src_pid);
+	hello->kshm_src_incarnation = le64_to_cpu(hdr->msg.hello.incarnation);
+	hello->kshm_ctype	   = le32_to_cpu(hdr->msg.hello.type);
+	hello->kshm_nips	    = le32_to_cpu(hdr->payload_length) /
+					 sizeof(__u32);
 
 	if (hello->kshm_nips > LNET_MAX_INTERFACES) {
 		CERROR("Bad nips %d from ip %pI4h\n",
@@ -645,7 +645,7 @@ out:
 }
 
 static int
-ksocknal_recv_hello_v2 (ksock_conn_t *conn, ksock_hello_msg_t *hello, int timeout)
+ksocknal_recv_hello_v2(ksock_conn_t *conn, ksock_hello_msg_t *hello, int timeout)
 {
 	struct socket   *sock = conn->ksnc_sock;
 	int		rc;
-- 
1.9.1



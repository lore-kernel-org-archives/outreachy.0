X-GM-THRID: 4832889929728
X-Received: by 10.180.80.35 with SMTP id o3mr819130wix.0.1425068520366;
        Fri, 27 Feb 2015 12:22:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls219514lah.23.gmail; Fri, 27 Feb
 2015 12:21:59 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr2326269lan.1.1425068519605;
        Fri, 27 Feb 2015 12:21:59 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id ta1si187058wic.1.2015.02.27.12.21.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:21:59 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id a1so22548232wgh.12
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=vwZofl+u/GRUuMyHfXGJvm4p+W2pRs47AVIkN0kItvQ=;
        b=jHV5i5dUI/8GOYGpMH77kdYffrLJbCxfSPNuzSZYIl0//fQsuWjcMgihBLTNqtAKYw
         +szYdomLenIo2dnSTGpvukCYker8cb3iE8lrOc+22G7CQuT+DxqJZi5Sf4zaysrO1Gbx
         TKVRi5/iKbaG8bCpzsvFC7oV0EGkR+gWu0sk3Hpbxwh6MQqVZnL4tymyzyZQbVL8Cgwe
         NJ8NyNI5fipkuBnEqPuaft9k1j8yV8s52bomiyzRDlRBwzK2c0Lw9w1bBCFJPgZ5zd5Q
         7pIbzNhKSccYAdqTMQ+Ro+s5GIGyyU0m+Dgk9YMvYT4lzLpBaww6JH09uO/5HVqkI24Q
         KEhw==
X-Received: by 10.194.177.195 with SMTP id cs3mr30757160wjc.141.1425068519465;
        Fri, 27 Feb 2015 12:21:59 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id u18sm7390069wjq.42.2015.02.27.12.21.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 12:21:58 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: selftest: Remove space after the name of that function
Date: Fri, 27 Feb 2015 22:21:50 +0200
Message-Id: <1425068510-16987-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with "space prohibited between function name
and open parenthesis" in console.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/console.c | 80 +++++++++++++-------------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
index 1e0afc2..2b5f53c 100644
--- a/drivers/staging/lustre/lnet/selftest/console.c
+++ b/drivers/staging/lustre/lnet/selftest/console.c
@@ -64,7 +64,7 @@ lstcon_session_t	console_session;
 static void
 lstcon_node_get(lstcon_node_t *nd)
 {
-	LASSERT (nd->nd_ref >= 1);
+	LASSERT(nd->nd_ref >= 1);
 
 	nd->nd_ref++;
 }
@@ -75,7 +75,7 @@ lstcon_node_find(lnet_process_id_t id, lstcon_node_t **ndpp, int create)
 	lstcon_ndlink_t *ndl;
 	unsigned int     idx = LNET_NIDADDR(id.nid) % LST_GLOBAL_HASHSIZE;
 
-	LASSERT (id.nid != LNET_NID_ANY);
+	LASSERT(id.nid != LNET_NID_ANY);
 
 	list_for_each_entry(ndl, &console_session.ses_ndl_hash[idx], ndl_hlink) {
 		if (ndl->ndl_node->nd_id.nid != id.nid ||
@@ -119,15 +119,15 @@ lstcon_node_put(lstcon_node_t *nd)
 {
 	lstcon_ndlink_t  *ndl;
 
-	LASSERT (nd->nd_ref > 0);
+	LASSERT(nd->nd_ref > 0);
 
 	if (--nd->nd_ref > 0)
 		return;
 
 	ndl = (lstcon_ndlink_t *)(nd + 1);
 
-	LASSERT (!list_empty(&ndl->ndl_link));
-	LASSERT (!list_empty(&ndl->ndl_hlink));
+	LASSERT(!list_empty(&ndl->ndl_link));
+	LASSERT(!list_empty(&ndl->ndl_hlink));
 
 	/* remove from session */
 	list_del(&ndl->ndl_link);
@@ -184,8 +184,8 @@ lstcon_ndlink_find(struct list_head *hash,
 static void
 lstcon_ndlink_release(lstcon_ndlink_t *ndl)
 {
-	LASSERT (list_empty(&ndl->ndl_link));
-	LASSERT (!list_empty(&ndl->ndl_hlink));
+	LASSERT(list_empty(&ndl->ndl_link));
+	LASSERT(!list_empty(&ndl->ndl_hlink));
 
 	list_del(&ndl->ndl_hlink); /* delete from hash */
 	lstcon_node_put(ndl->ndl_node);
@@ -254,7 +254,7 @@ lstcon_group_decref(lstcon_group_t *grp)
 	lstcon_group_drain(grp, 0);
 
 	for (i = 0; i < LST_NODE_HASHSIZE; i++) {
-		LASSERT (list_empty(&grp->grp_ndl_hash[i]));
+		LASSERT(list_empty(&grp->grp_ndl_hash[i]));
 	}
 
 	LIBCFS_FREE(grp, offsetof(lstcon_group_t,
@@ -552,8 +552,8 @@ lstcon_nodes_add(char *name, int count, lnet_process_id_t *ids_up,
 	lstcon_group_t	 *grp;
 	int		     rc;
 
-	LASSERT (count > 0);
-	LASSERT (ids_up != NULL);
+	LASSERT(count > 0);
+	LASSERT(ids_up != NULL);
 
 	rc = lstcon_group_find(name, &grp);
 	if (rc != 0) {
@@ -726,8 +726,8 @@ lstcon_group_list(int index, int len, char *name_up)
 {
 	lstcon_group_t *grp;
 
-	LASSERT (index >= 0);
-	LASSERT (name_up != NULL);
+	LASSERT(index >= 0);
+	LASSERT(name_up != NULL);
 
 	list_for_each_entry(grp, &console_session.ses_grp_list, grp_link) {
 		if (index-- == 0) {
@@ -748,10 +748,10 @@ lstcon_nodes_getent(struct list_head *head, int *index_p,
 	int	       count = 0;
 	int	       index = 0;
 
-	LASSERT (index_p != NULL && count_p != NULL);
-	LASSERT (dents_up != NULL);
-	LASSERT (*index_p >= 0);
-	LASSERT (*count_p > 0);
+	LASSERT(index_p != NULL && count_p != NULL);
+	LASSERT(dents_up != NULL);
+	LASSERT(*index_p >= 0);
+	LASSERT(*count_p > 0);
 
 	list_for_each_entry(ndl, head, ndl_link) {
 		if (index++ < *index_p)
@@ -905,8 +905,8 @@ lstcon_batch_list(int index, int len, char *name_up)
 {
 	lstcon_batch_t    *bat;
 
-	LASSERT (name_up != NULL);
-	LASSERT (index >= 0);
+	LASSERT(name_up != NULL);
+	LASSERT(index >= 0);
 
 	list_for_each_entry(bat, &console_session.ses_bat_list, bat_link) {
 		if (index-- == 0) {
@@ -1093,7 +1093,7 @@ lstcon_batch_destroy(lstcon_batch_t *bat)
 	while (!list_empty(&bat->bat_test_list)) {
 		test = list_entry(bat->bat_test_list.next,
 				      lstcon_test_t, tes_link);
-		LASSERT (list_empty(&test->tes_trans_list));
+		LASSERT(list_empty(&test->tes_trans_list));
 
 		list_del(&test->tes_link);
 
@@ -1104,7 +1104,7 @@ lstcon_batch_destroy(lstcon_batch_t *bat)
 					   tes_param[test->tes_paramlen]));
 	}
 
-	LASSERT (list_empty(&bat->bat_trans_list));
+	LASSERT(list_empty(&bat->bat_trans_list));
 
 	while (!list_empty(&bat->bat_cli_list)) {
 		ndl = list_entry(bat->bat_cli_list.next,
@@ -1123,8 +1123,8 @@ lstcon_batch_destroy(lstcon_batch_t *bat)
 	}
 
 	for (i = 0; i < LST_NODE_HASHSIZE; i++) {
-		LASSERT (list_empty(&bat->bat_cli_hash[i]));
-		LASSERT (list_empty(&bat->bat_srv_hash[i]));
+		LASSERT(list_empty(&bat->bat_cli_hash[i]));
+		LASSERT(list_empty(&bat->bat_srv_hash[i]));
 	}
 
 	LIBCFS_FREE(bat->bat_cli_hash,
@@ -1144,10 +1144,10 @@ lstcon_testrpc_condition(int transop, lstcon_node_t *nd, void *arg)
 	struct list_head       *head;
 
 	test = (lstcon_test_t *)arg;
-	LASSERT (test != NULL);
+	LASSERT(test != NULL);
 
 	batch = test->tes_batch;
-	LASSERT (batch != NULL);
+	LASSERT(batch != NULL);
 
 	if (test->tes_oneside &&
 	    transop == LST_TRANS_TSBSRVADD)
@@ -1161,13 +1161,13 @@ lstcon_testrpc_condition(int transop, lstcon_node_t *nd, void *arg)
 		head = &batch->bat_cli_list;
 
 	} else {
-		LASSERT (transop == LST_TRANS_TSBSRVADD);
+		LASSERT(transop == LST_TRANS_TSBSRVADD);
 
 		hash = batch->bat_srv_hash;
 		head = &batch->bat_srv_list;
 	}
 
-	LASSERT (nd->nd_id.nid != LNET_NID_ANY);
+	LASSERT(nd->nd_id.nid != LNET_NID_ANY);
 
 	if (lstcon_ndlink_find(hash, nd->nd_id, &ndl, 1) != 0)
 		return -ENOMEM;
@@ -1186,8 +1186,8 @@ lstcon_test_nodes_add(lstcon_test_t *test, struct list_head *result_up)
 	int		     transop;
 	int		     rc;
 
-	LASSERT (test->tes_src_grp != NULL);
-	LASSERT (test->tes_dst_grp != NULL);
+	LASSERT(test->tes_src_grp != NULL);
+	LASSERT(test->tes_dst_grp != NULL);
 
 	transop = LST_TRANS_TSBSRVADD;
 	grp  = test->tes_dst_grp;
@@ -1382,7 +1382,7 @@ lstcon_tsbrpc_readent(int transop, srpc_msg_t *msg,
 {
 	srpc_batch_reply_t *rep = &msg->msg_body.bat_reply;
 
-	LASSERT (transop == LST_TRANS_TSBCLIQRY ||
+	LASSERT(transop == LST_TRANS_TSBCLIQRY ||
 		 transop == LST_TRANS_TSBSRVQRY);
 
 	/* positive errno, framework error code */
@@ -1691,7 +1691,7 @@ lstcon_new_session_id(lst_sid_t *sid)
 {
 	lnet_process_id_t      id;
 
-	LASSERT (console_session.ses_state == LST_SESSION_NONE);
+	LASSERT(console_session.ses_state == LST_SESSION_NONE);
 
 	LNetGetId(1, &id);
 	sid->ses_nid   = id.nid;
@@ -1806,7 +1806,7 @@ lstcon_session_end(void)
 	lstcon_batch_t     *bat;
 	int		 rc = 0;
 
-	LASSERT (console_session.ses_state == LST_SESSION_ACTIVE);
+	LASSERT(console_session.ses_state == LST_SESSION_ACTIVE);
 
 	rc = lstcon_rpc_trans_ndlist(&console_session.ses_ndl_list,
 				     NULL, LST_TRANS_SESEND, NULL,
@@ -1846,13 +1846,13 @@ lstcon_session_end(void)
 	while (!list_empty(&console_session.ses_grp_list)) {
 		grp = list_entry(console_session.ses_grp_list.next,
 				     lstcon_group_t, grp_link);
-		LASSERT (grp->grp_ref == 1);
+		LASSERT(grp->grp_ref == 1);
 
 		lstcon_group_put(grp);
 	}
 
 	/* all nodes should be released */
-	LASSERT (list_empty(&console_session.ses_ndl_list));
+	LASSERT(list_empty(&console_session.ses_ndl_list));
 
 	console_session.ses_shutdown = 0;
 	console_session.ses_expired  = 0;
@@ -1892,7 +1892,7 @@ lstcon_session_feats_check(unsigned feats)
 }
 
 static int
-lstcon_acceptor_handle (srpc_server_rpc_t *rpc)
+lstcon_acceptor_handle(srpc_server_rpc_t *rpc)
 {
 	srpc_msg_t	*rep  = &rpc->srpc_replymsg;
 	srpc_msg_t	*req  = &rpc->srpc_reqstbuf->buf_msg;
@@ -2026,7 +2026,7 @@ lstcon_console_init(void)
 	lstcon_init_acceptor_service();
 
 	rc = srpc_add_service(&lstcon_acceptor_service);
-	LASSERT (rc != -EBUSY);
+	LASSERT(rc != -EBUSY);
 	if (rc != 0) {
 		LIBCFS_FREE(console_session.ses_ndl_hash,
 			    sizeof(struct list_head) * LST_GLOBAL_HASHSIZE);
@@ -2078,13 +2078,13 @@ lstcon_console_fini(void)
 
 	mutex_unlock(&console_session.ses_mutex);
 
-	LASSERT (list_empty(&console_session.ses_ndl_list));
-	LASSERT (list_empty(&console_session.ses_grp_list));
-	LASSERT (list_empty(&console_session.ses_bat_list));
-	LASSERT (list_empty(&console_session.ses_trans_list));
+	LASSERT(list_empty(&console_session.ses_ndl_list));
+	LASSERT(list_empty(&console_session.ses_grp_list));
+	LASSERT(list_empty(&console_session.ses_bat_list));
+	LASSERT(list_empty(&console_session.ses_trans_list));
 
 	for (i = 0; i < LST_NODE_HASHSIZE; i++) {
-		LASSERT (list_empty(&console_session.ses_ndl_hash[i]));
+		LASSERT(list_empty(&console_session.ses_ndl_hash[i]));
 	}
 
 	LIBCFS_FREE(console_session.ses_ndl_hash,
-- 
1.9.1



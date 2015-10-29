X-GM-THRID: 6210938115276668928
X-Received: by 10.66.248.9 with SMTP id yi9mr19473332pac.43.1446096753099;
        Wed, 28 Oct 2015 22:32:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.67 with SMTP id f61ls240260qge.95.gmail; Wed, 28 Oct
 2015 22:32:32 -0700 (PDT)
X-Received: by 10.129.39.65 with SMTP id n62mr36447406ywn.13.1446096752627;
        Wed, 28 Oct 2015 22:32:32 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si5386193pac.2.2015.10.28.22.32.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 22:32:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv9so30585827pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 22:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=JYYVkZeZY+fMaqthVMNM85RuRX9RF3QMqxzymc6HHBY=;
        b=YW1aIJ0YdInHc6CMtGGvXefWPk/F26BTws73aBLz+za8oPSphb7JJwkMGYHcSbv1rs
         AoOR2uVWWTzggJNOIze9w4edssPjcMvsKk4+/7EEaHwz1giqzS62iQbx2OUVooCWAvCk
         jwWz04/l0jjfcfM4j9sjgwtiYnpzXibzjQoJLJlxDNIWCZkSZPA9C7+/3AE13/6gqL0i
         mjVY4bedOLBFlJFNr0YXyQdCMlm/gp/ZjpSZQ14st2fZxUmOVhD00NA35AyKgUusbuOv
         S+HyxjZdwdRqNOlEnULv0/sVOPActMPnG/6FIFQDmoIjNGvcneJ6GuH2hlbPUkRROCZ0
         JRFw==
X-Received: by 10.68.239.105 with SMTP id vr9mr38748072pbc.161.1446096752492;
        Wed, 28 Oct 2015 22:32:32 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id iy1sm48592074pbb.85.2015.10.28.22.32.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 22:32:31 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:02:23 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: lustre: console: Drop unnecessary wrapper
 function
Message-ID: <f77092e33545916797ef6560c984c9e33b1e7001.1446096468.git.shivanib134@gmail.com>
References: <cover.1446096468.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446096468.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function lstcon_group_put() and replace all its calls with the
function lstcon_group_decref() because the former function just
performs the job of calling the latter.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/console.c | 78 ++++++++++++--------------
 1 file changed, 36 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
index d315dd4..9748a09 100644
--- a/drivers/staging/lustre/lnet/selftest/console.c
+++ b/drivers/staging/lustre/lnet/selftest/console.c
@@ -277,12 +277,6 @@ lstcon_group_find(const char *name, lstcon_group_t **grpp)
 	return -ENOENT;
 }
 
-static void
-lstcon_group_put(lstcon_group_t *grp)
-{
-	lstcon_group_decref(grp);
-}
-
 static int
 lstcon_group_ndlink_find(lstcon_group_t *grp, lnet_process_id_t id,
 			 lstcon_ndlink_t **ndlpp, int create)
@@ -436,7 +430,7 @@ lstcon_group_nodes_add(lstcon_group_t *grp,
 	}
 
 	if (rc != 0) {
-		lstcon_group_put(tmp);
+		lstcon_group_decref(tmp);
 		return rc;
 	}
 
@@ -445,7 +439,7 @@ lstcon_group_nodes_add(lstcon_group_t *grp,
 				     tmp, lstcon_sesrpc_condition, &trans);
 	if (rc != 0) {
 		CERROR("Can't create transaction: %d\n", rc);
-		lstcon_group_put(tmp);
+		lstcon_group_decref(tmp);
 		return rc;
 	}
 
@@ -460,7 +454,7 @@ lstcon_group_nodes_add(lstcon_group_t *grp,
 	lstcon_rpc_trans_destroy(trans);
 
 	lstcon_group_move(tmp, grp);
-	lstcon_group_put(tmp);
+	lstcon_group_decref(tmp);
 
 	return rc;
 }
@@ -510,12 +504,12 @@ lstcon_group_nodes_remove(lstcon_group_t *grp,
 
 	lstcon_rpc_trans_destroy(trans);
 	/* release nodes anyway, because we can't rollback status */
-	lstcon_group_put(tmp);
+	lstcon_group_decref(tmp);
 
 	return rc;
 error:
 	lstcon_group_move(tmp, grp);
-	lstcon_group_put(tmp);
+	lstcon_group_decref(tmp);
 
 	return rc;
 }
@@ -529,7 +523,7 @@ lstcon_group_add(char *name)
 	rc = (lstcon_group_find(name, &grp) == 0) ? -EEXIST : 0;
 	if (rc != 0) {
 		/* find a group with same name */
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 		return rc;
 	}
 
@@ -563,14 +557,14 @@ lstcon_nodes_add(char *name, int count, lnet_process_id_t *ids_up,
 	if (grp->grp_ref > 2) {
 		/* referred by other threads or test */
 		CDEBUG(D_NET, "Group %s is busy\n", name);
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 
 		return -EBUSY;
 	}
 
 	rc = lstcon_group_nodes_add(grp, count, ids_up, featp, result_up);
 
-	lstcon_group_put(grp);
+	lstcon_group_decref(grp);
 
 	return rc;
 }
@@ -591,7 +585,7 @@ lstcon_group_del(char *name)
 	if (grp->grp_ref > 2) {
 		/* referred by others threads or test */
 		CDEBUG(D_NET, "Group %s is busy\n", name);
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 		return -EBUSY;
 	}
 
@@ -600,7 +594,7 @@ lstcon_group_del(char *name)
 				     grp, lstcon_sesrpc_condition, &trans);
 	if (rc != 0) {
 		CERROR("Can't create transaction: %d\n", rc);
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 		return rc;
 	}
 
@@ -608,10 +602,10 @@ lstcon_group_del(char *name)
 
 	lstcon_rpc_trans_destroy(trans);
 
-	lstcon_group_put(grp);
+	lstcon_group_decref(grp);
 	/* -ref for session, it's destroyed,
 	 * status can't be rolled back, destroy group anyway */
-	lstcon_group_put(grp);
+	lstcon_group_decref(grp);
 
 	return rc;
 }
@@ -631,7 +625,7 @@ lstcon_group_clean(char *name, int args)
 	if (grp->grp_ref > 2) {
 		/* referred by test */
 		CDEBUG(D_NET, "Group %s is busy\n", name);
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 		return -EBUSY;
 	}
 
@@ -640,10 +634,10 @@ lstcon_group_clean(char *name, int args)
 
 	lstcon_group_drain(grp, args);
 
-	lstcon_group_put(grp);
+	lstcon_group_decref(grp);
 	/* release empty group */
 	if (list_empty(&grp->grp_ndl_list))
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 
 	return 0;
 }
@@ -664,16 +658,16 @@ lstcon_nodes_remove(char *name, int count,
 	if (grp->grp_ref > 2) {
 		/* referred by test */
 		CDEBUG(D_NET, "Group %s is busy\n", name);
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 		return -EBUSY;
 	}
 
 	rc = lstcon_group_nodes_remove(grp, count, ids_up, result_up);
 
-	lstcon_group_put(grp);
+	lstcon_group_decref(grp);
 	/* release empty group */
 	if (list_empty(&grp->grp_ndl_list))
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 
 	return rc;
 }
@@ -694,7 +688,7 @@ lstcon_group_refresh(char *name, struct list_head *result_up)
 	if (grp->grp_ref > 2) {
 		/* referred by test */
 		CDEBUG(D_NET, "Group %s is busy\n", name);
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 		return -EBUSY;
 	}
 
@@ -705,7 +699,7 @@ lstcon_group_refresh(char *name, struct list_head *result_up)
 	if (rc != 0) {
 		/* local error, return */
 		CDEBUG(D_NET, "Can't create transaction: %d\n", rc);
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 		return rc;
 	}
 
@@ -715,7 +709,7 @@ lstcon_group_refresh(char *name, struct list_head *result_up)
 
 	lstcon_rpc_trans_destroy(trans);
 	/* -ref for me */
-	lstcon_group_put(grp);
+	lstcon_group_decref(grp);
 
 	return rc;
 }
@@ -797,7 +791,7 @@ lstcon_group_info(char *name, lstcon_ndlist_ent_t *gents_p,
 		/* verbose query */
 		rc = lstcon_nodes_getent(&grp->grp_ndl_list,
 					 index_p, count_p, dents_up);
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 
 		return rc;
 	}
@@ -806,7 +800,7 @@ lstcon_group_info(char *name, lstcon_ndlist_ent_t *gents_p,
 	LIBCFS_ALLOC(gentp, sizeof(lstcon_ndlist_ent_t));
 	if (gentp == NULL) {
 		CERROR("Can't allocate ndlist_ent\n");
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 
 		return -ENOMEM;
 	}
@@ -819,7 +813,7 @@ lstcon_group_info(char *name, lstcon_ndlist_ent_t *gents_p,
 
 	LIBCFS_FREE(gentp, sizeof(lstcon_ndlist_ent_t));
 
-	lstcon_group_put(grp);
+	lstcon_group_decref(grp);
 
 	return 0;
 }
@@ -1096,8 +1090,8 @@ lstcon_batch_destroy(lstcon_batch_t *bat)
 
 		list_del(&test->tes_link);
 
-		lstcon_group_put(test->tes_src_grp);
-		lstcon_group_put(test->tes_dst_grp);
+		lstcon_group_decref(test->tes_src_grp);
+		lstcon_group_decref(test->tes_dst_grp);
 
 		LIBCFS_FREE(test, offsetof(lstcon_test_t,
 					   tes_param[test->tes_paramlen]));
@@ -1352,10 +1346,10 @@ out:
 		LIBCFS_FREE(test, offsetof(lstcon_test_t, tes_param[paramlen]));
 
 	if (dst_grp != NULL)
-		lstcon_group_put(dst_grp);
+		lstcon_group_decref(dst_grp);
 
 	if (src_grp != NULL)
-		lstcon_group_put(src_grp);
+		lstcon_group_decref(src_grp);
 
 	return rc;
 }
@@ -1518,7 +1512,7 @@ lstcon_group_stat(char *grp_name, int timeout, struct list_head *result_up)
 
 	rc = lstcon_ndlist_stat(&grp->grp_ndl_list, timeout, result_up);
 
-	lstcon_group_put(grp);
+	lstcon_group_decref(grp);
 
 	return rc;
 }
@@ -1556,13 +1550,13 @@ lstcon_nodes_stat(int count, lnet_process_id_t *ids_up,
 	}
 
 	if (rc != 0) {
-		lstcon_group_put(tmp);
+		lstcon_group_decref(tmp);
 		return rc;
 	}
 
 	rc = lstcon_ndlist_stat(&tmp->grp_ndl_list, timeout, result_up);
 
-	lstcon_group_put(tmp);
+	lstcon_group_decref(tmp);
 
 	return rc;
 }
@@ -1629,7 +1623,7 @@ lstcon_group_debug(int timeout, char *name,
 
 	rc = lstcon_debug_ndlist(&grp->grp_ndl_list, NULL,
 				 timeout, result_up);
-	lstcon_group_put(grp);
+	lstcon_group_decref(grp);
 
 	return rc;
 }
@@ -1666,14 +1660,14 @@ lstcon_nodes_debug(int timeout,
 	}
 
 	if (rc != 0) {
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 		return rc;
 	}
 
 	rc = lstcon_debug_ndlist(&grp->grp_ndl_list, NULL,
 				 timeout, result_up);
 
-	lstcon_group_put(grp);
+	lstcon_group_decref(grp);
 
 	return rc;
 }
@@ -1847,7 +1841,7 @@ lstcon_session_end(void)
 				     lstcon_group_t, grp_link);
 		LASSERT(grp->grp_ref == 1);
 
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 	}
 
 	/* all nodes should be released */
@@ -1966,7 +1960,7 @@ lstcon_acceptor_handle(srpc_server_rpc_t *rpc)
 out:
 	rep->msg_ses_feats = console_session.ses_features;
 	if (grp != NULL)
-		lstcon_group_put(grp);
+		lstcon_group_decref(grp);
 
 	mutex_unlock(&console_session.ses_mutex);
 
-- 
2.1.0



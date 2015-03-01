X-GM-THRID: 5221884362752
X-Received: by 10.112.131.106 with SMTP id ol10mr2953516lbb.20.1425169221798;
        Sat, 28 Feb 2015 16:20:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.134 with SMTP id dc6ls258962lad.87.gmail; Sat, 28 Feb
 2015 16:20:21 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr2943975lbb.11.1425169221227;
        Sat, 28 Feb 2015 16:20:21 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id ew5si392057wid.1.2015.02.28.16.20.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:20:21 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id bs8so7541473wib.4
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 16:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HTEODY8dYUSdXsoD/qyEA+nnhIOmd/dTBQjsIGd+O0Y=;
        b=Wr24pI3/3KvMSlJTXBPsbU5owuLq+1JQE+TMQWARwKjstwwI+72mzeUERQNARXEK7k
         uR8YAeYV29nJvzDCcSwoKcgYsKAAY5OVci/XYOJXBXTOxLwfz3yTa06QL9cSVg5Ec0dI
         Q97aElqhU5PAFhe3EOitsQTJpjoziPmapW2zjWMBaCj95zvXmNcqNefegNaENX5IVjNJ
         Lv7Q+6lbXam9SvBiUR+2MAKirjMijKM0Y2LEeR9VJKE0bOujl09j7WG6acrf6r8dGy5/
         CgTbyX9ktUe8V1BRT+4+NZg3uWyiPOUPCEub63irjTD2kaigviZu0SaeGZ13BW4R+tGo
         w15A==
X-Received: by 10.180.79.227 with SMTP id m3mr21506088wix.3.1425169221111;
        Sat, 28 Feb 2015 16:20:21 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id uc18sm9131257wib.0.2015.02.28.16.20.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:20:20 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id D544163424; Sun,  1 Mar 2015 03:20:18 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 1/5] Staging: lustre: Fix line over 80 characters
Date: Sun,  1 Mar 2015 03:20:07 +0300
Message-Id: <1425169207-20073-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>

This patch splits line over 80 characters addressing checkpatch.pl
warning.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/interval_tree.c |  9 +++--
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 46 +++++++++++++++-------
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    | 12 ++++--
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     | 11 +++---
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 12 ++++--
 6 files changed, 62 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/interval_tree.c b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
index eab2bd6..1b2bf08 100644
--- a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
+++ b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
@@ -433,7 +433,8 @@ static void interval_erase_color(struct interval_node *node,
 
 					o_left = tmp->in_left;
 					if (o_left)
-						o_left->in_color = INTERVAL_BLACK;
+						o_left->in_color =
+							INTERVAL_BLACK;
 					tmp->in_color = INTERVAL_RED;
 					__rotate_right(tmp, root);
 					tmp = parent->in_right;
@@ -441,7 +442,8 @@ static void interval_erase_color(struct interval_node *node,
 				tmp->in_color = parent->in_color;
 				parent->in_color = INTERVAL_BLACK;
 				if (tmp->in_right)
-					tmp->in_right->in_color = INTERVAL_BLACK;
+					tmp->in_right->in_color =
+						INTERVAL_BLACK;
 				__rotate_left(parent, root);
 				node = *root;
 				break;
@@ -465,7 +467,8 @@ static void interval_erase_color(struct interval_node *node,
 
 					o_right = tmp->in_right;
 					if (o_right)
-						o_right->in_color = INTERVAL_BLACK;
+						o_right->in_color =
+							INTERVAL_BLACK;
 					tmp->in_color = INTERVAL_RED;
 					__rotate_left(tmp, root);
 					tmp = parent->in_left;
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
index a4c252f..6541c9d 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
@@ -622,7 +622,8 @@ ldlm_flock_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 		return 0;
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
+	LDLM_DEBUG(lock,
+			"client-side enqueue returned a blocked lock, sleeping");
 	fwd.fwd_lock = lock;
 	obd = class_exp2obd(lock->l_conn_export);
 
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
index 84b111e..bd8d458 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
@@ -2229,13 +2229,16 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 		libcfs_debug_vmsg2(msgdata, fmt, args,
 				   " ns: \?\? lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: \?\? rrc=\?\? type: \?\?\? flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
 				   lock,
-				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
+				   lock->l_handle.h_cookie,
+				   atomic_read(&lock->l_refc),
 				   lock->l_readers, lock->l_writers,
 				   ldlm_lockname[lock->l_granted_mode],
 				   ldlm_lockname[lock->l_req_mode],
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
-				   lock->l_pid, lock->l_callback_timeout, lock->l_lvb_type);
+				   lock->l_pid, lock->l_callback_timeout,
+				   lock->l_lvb_type);
 		va_end(args);
 		return;
 	}
@@ -2243,9 +2246,12 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 	switch (resource->lr_type) {
 	case LDLM_EXTENT:
 		libcfs_debug_vmsg2(msgdata, fmt, args,
-				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s [%llu->%llu] (req %llu->%llu) flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
+				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
+				   DLDLMRES
+				   " rrc: %d type: %s [%llu->%llu] (req %llu->%llu) flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
 				   ldlm_lock_to_ns_name(lock), lock,
-				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
+				   lock->l_handle.h_cookie,
+				   atomic_read(&lock->l_refc),
 				   lock->l_readers, lock->l_writers,
 				   ldlm_lockname[lock->l_granted_mode],
 				   ldlm_lockname[lock->l_req_mode],
@@ -2254,8 +2260,10 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   ldlm_typename[resource->lr_type],
 				   lock->l_policy_data.l_extent.start,
 				   lock->l_policy_data.l_extent.end,
-				   lock->l_req_extent.start, lock->l_req_extent.end,
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_req_extent.start,
+				   lock->l_req_extent.end,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout,
 				   lock->l_lvb_type);
@@ -2263,9 +2271,12 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 
 	case LDLM_FLOCK:
 		libcfs_debug_vmsg2(msgdata, fmt, args,
-				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s pid: %d [%llu->%llu] flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu\n",
+				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
+				   DLDLMRES
+				   " rrc: %d type: %s pid: %d [%llu->%llu] flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu\n",
 				   ldlm_lock_to_ns_name(lock), lock,
-				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
+				   lock->l_handle.h_cookie,
+				   atomic_read(&lock->l_refc),
 				   lock->l_readers, lock->l_writers,
 				   ldlm_lockname[lock->l_granted_mode],
 				   ldlm_lockname[lock->l_req_mode],
@@ -2275,14 +2286,17 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   lock->l_policy_data.l_flock.pid,
 				   lock->l_policy_data.l_flock.start,
 				   lock->l_policy_data.l_flock.end,
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout);
 		break;
 
 	case LDLM_IBITS:
 		libcfs_debug_vmsg2(msgdata, fmt, args,
-				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " bits %#llx rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
+				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
+				   DLDLMRES
+				   " bits %#llx rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
 				   ldlm_lock_to_ns_name(lock),
 				   lock, lock->l_handle.h_cookie,
 				   atomic_read(&lock->l_refc),
@@ -2293,7 +2307,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   lock->l_policy_data.l_inodebits.bits,
 				   atomic_read(&resource->lr_refcount),
 				   ldlm_typename[resource->lr_type],
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout,
 				   lock->l_lvb_type);
@@ -2301,7 +2316,9 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 
 	default:
 		libcfs_debug_vmsg2(msgdata, fmt, args,
-				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
+				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
+				   DLDLMRES
+				   " rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
 				   ldlm_lock_to_ns_name(lock),
 				   lock, lock->l_handle.h_cookie,
 				   atomic_read(&lock->l_refc),
@@ -2311,7 +2328,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   PLDLMRES(resource),
 				   atomic_read(&resource->lr_refcount),
 				   ldlm_typename[resource->lr_type],
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags,
+				   nid, lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout,
 				   lock->l_lvb_type);
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
index e0a8157..cd15445 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
@@ -202,7 +202,8 @@ static void ldlm_handle_cp_callback(struct ptlrpc_request *req,
 
 	lvb_len = req_capsule_get_size(&req->rq_pill, &RMF_DLM_LVB, RCL_CLIENT);
 	if (lvb_len < 0) {
-		LDLM_ERROR(lock, "Fail to get lvb_len, rc = %d", lvb_len);
+		LDLM_ERROR(lock,
+				"Fail to get lvb_len, rc = %d", lvb_len);
 		rc = lvb_len;
 		goto out;
 	} else if (lvb_len > 0) {
@@ -211,7 +212,8 @@ static void ldlm_handle_cp_callback(struct ptlrpc_request *req,
 			LASSERT(lock->l_lvb_data != NULL);
 
 			if (unlikely(lock->l_lvb_len < lvb_len)) {
-				LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
+				LDLM_ERROR(lock,
+						"Replied LVB is larger than expectation, expected = %d, replied = %d",
 					   lock->l_lvb_len, lvb_len);
 				rc = -EINVAL;
 				goto out;
@@ -638,7 +640,8 @@ static int ldlm_callback_handler(struct ptlrpc_request *req)
 
 	lock = ldlm_handle2lock_long(&dlm_req->lock_handle[0], 0);
 	if (!lock) {
-		CDEBUG(D_DLMTRACE, "callback on lock %#llx - lock disappeared\n",
+		CDEBUG(D_DLMTRACE,
+				"callback on lock %#llx - lock disappeared\n",
 		       dlm_req->lock_handle[0].cookie);
 		rc = ldlm_callback_reply(req, -EINVAL);
 		ldlm_callback_errmsg(req, "Operate with invalid parameter", rc,
@@ -662,7 +665,8 @@ static int ldlm_callback_handler(struct ptlrpc_request *req)
 		if (((lock->l_flags & LDLM_FL_CANCELING) &&
 		    (lock->l_flags & LDLM_FL_BL_DONE)) ||
 		    (lock->l_flags & LDLM_FL_FAILED)) {
-			LDLM_DEBUG(lock, "callback on lock %#llx - lock disappeared\n",
+			LDLM_DEBUG(lock,
+					"callback on lock %#llx - lock disappeared\n",
 				   dlm_req->lock_handle[0].cookie);
 			unlock_res_and_lock(lock);
 			LDLM_LOCK_RELEASE(lock);
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index d20d277..3af2687 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -605,10 +605,10 @@ int ldlm_pool_recalc(struct ldlm_pool *pl)
 			      pl->pl_recalc_period;
 	if (recalc_interval_sec <= 0) {
 		/* Prevent too frequent recalculation. */
-		CDEBUG(D_DLMTRACE, "Negative interval(%ld), "
-		       "too short period(%ld)",
-		       recalc_interval_sec,
-		       pl->pl_recalc_period);
+		CDEBUG(D_DLMTRACE,
+			"Negative interval(%ld), too short period(%ld)",
+			recalc_interval_sec,
+			pl->pl_recalc_period);
 		recalc_interval_sec = 1;
 	}
 
@@ -634,7 +634,8 @@ int ldlm_pool_shrink(struct ldlm_pool *pl, int nr,
 			lprocfs_counter_add(pl->pl_stats,
 					    LDLM_POOL_SHRINK_FREED_STAT,
 					    cancel);
-			CDEBUG(D_DLMTRACE, "%s: request to shrink %d locks, shrunk %d\n",
+			CDEBUG(D_DLMTRACE,
+					"%s: request to shrink %d locks, shrunk %d\n",
 			       pl->pl_name, nr, cancel);
 		}
 	}
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
index c6f62a9..898f896 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
@@ -193,7 +193,8 @@ static ssize_t lprocfs_lru_size_seq_write(struct file *file,
 					const char __user *buffer,
 					size_t count, loff_t *off)
 {
-	struct ldlm_namespace *ns = ((struct seq_file *)file->private_data)->private;
+	struct ldlm_namespace *ns =
+		((struct seq_file *)file->private_data)->private;
 	char dummy[MAX_STRING_SIZE + 1];
 	unsigned long tmp;
 	int lru_resize;
@@ -291,7 +292,8 @@ static ssize_t lprocfs_elc_seq_write(struct file *file,
 				const char __user *buffer,
 				size_t count, loff_t *off)
 {
-	struct ldlm_namespace *ns = ((struct seq_file *)file->private_data)->private;
+	struct ldlm_namespace *ns =
+		((struct seq_file *)file->private_data)->private;
 	unsigned int supp = -1;
 	int rc;
 
@@ -738,7 +740,8 @@ static void cleanup_resource(struct ldlm_resource *res, struct list_head *q,
 		} else {
 			ldlm_resource_unlink_lock(lock);
 			unlock_res(res);
-			LDLM_DEBUG(lock, "Freeing a lock still held by a client node");
+			LDLM_DEBUG(lock,
+					"Freeing a lock still held by a client node");
 			ldlm_lock_destroy(lock);
 		}
 		LDLM_LOCK_RELEASE(lock);
@@ -1406,7 +1409,8 @@ void ldlm_resource_dump(int level, struct ldlm_resource *res)
 			LDLM_DEBUG_LIMIT(level, lock, "###");
 			if (!(level & D_CANTMASK) &&
 			    ++granted > ldlm_dump_granted_max) {
-				CDEBUG(level, "only dump %d granted locks to avoid DDOS.\n",
+				CDEBUG(level,
+					"only dump %d granted locks to avoid DDOS.\n",
 				       granted);
 				break;
 			}
-- 
1.9.1



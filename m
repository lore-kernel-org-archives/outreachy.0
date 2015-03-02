X-GM-THRID: 5221884362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b3fa01965e3a4916
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr4080876lbf.21.1425336955196;
        Mon, 02 Mar 2015 14:55:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.72 with SMTP id v8ls673602wiz.15.gmail; Mon, 02 Mar
 2015 14:55:54 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr4120988wjb.1.1425336954814;
        Mon, 02 Mar 2015 14:55:54 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id r6si769689wix.0.2015.03.02.14.55.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 14:55:54 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id h11so18679159wiw.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 14:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=x4OZH+eJBbnXAc5bKbeJk/nZL2ZMdxg9uBKA3x36gRc=;
        b=yp4uojz45gBmEeJyGEC6esCPa1bpBZDyjPHXq2TPWqrbss6jypsnzwfzc+MrIz8mKK
         gCHALYOe0mh4Gou64Hrk7geAueN+QFDRgL42VPa+zEgIFh8XQLCDHvqlxdt/SHFIJ3vb
         5B1JZsJoVZPZBirqz2B7+feXxkPKBIPtRPlJOUhKRK9HxDJhgy43jluW5Q3RKThKZ8uc
         3I1M8plJXwLCgU5BXtYpBBdfg5PoHb3V8xYpX/sAHbSmYiVjK+wx8PBxy45mB0P3PLHj
         oTyFrzL1VPiURJfh1Cg+U1Ezk9vwubhd50vX4Q12moY/b2PEv65sp+X/RwRpbd3eAyzp
         t26w==
X-Received: by 10.180.83.69 with SMTP id o5mr38945195wiy.48.1425336954718;
        Mon, 02 Mar 2015 14:55:54 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id v6sm17989997wix.8.2015.03.02.14.55.52
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 14:55:54 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 52DF8621FB; Tue,  3 Mar 2015 01:55:56 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v4] Staging: lustre: Fix line over 80 characters
Date: Tue,  3 Mar 2015 01:55:54 +0300
Message-Id: <1425336954-18675-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch splits line over 80 characters addressing checkpatch.pl
warning.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v4: reorganizing alignments.

 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 46 +++++++++++++++-------
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    | 14 ++++---
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  5 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  8 ++--
 5 files changed, 51 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
index a4c252f..61c1e3d 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
@@ -622,7 +622,8 @@ ldlm_flock_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 		return 0;
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
+	LDLM_DEBUG(lock,
+			  "client-side enqueue returned a blocked lock, sleeping");
 	fwd.fwd_lock = lock;
 	obd = class_exp2obd(lock->l_conn_export);
 
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
index 8191005..a85966e 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
@@ -2231,13 +2231,16 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
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
@@ -2245,9 +2248,12 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
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
@@ -2256,8 +2262,10 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
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
@@ -2265,9 +2273,12 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 
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
@@ -2277,14 +2288,17 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
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
@@ -2295,7 +2309,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   lock->l_policy_data.l_inodebits.bits,
 				   atomic_read(&resource->lr_refcount),
 				   ldlm_typename[resource->lr_type],
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout,
 				   lock->l_lvb_type);
@@ -2303,7 +2318,9 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 
 	default:
 		libcfs_debug_vmsg2(msgdata, fmt, args,
-				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
+				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: "
+				   DLDLMRES
+				   " rrc: %d type: %s flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
 				   ldlm_lock_to_ns_name(lock),
 				   lock, lock->l_handle.h_cookie,
 				   atomic_read(&lock->l_refc),
@@ -2313,7 +2330,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   PLDLMRES(resource),
 				   atomic_read(&resource->lr_refcount),
 				   ldlm_typename[resource->lr_type],
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout,
 				   lock->l_lvb_type);
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
index 98fbd3f..052f728 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
@@ -213,8 +213,10 @@ static void ldlm_handle_cp_callback(struct ptlrpc_request *req,
 			LASSERT(lock->l_lvb_data != NULL);
 
 			if (unlikely(lock->l_lvb_len < lvb_len)) {
-				LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
-					   lock->l_lvb_len, lvb_len);
+				LDLM_ERROR(lock,
+							"Replied LVB is larger than expectation, expected = %d, replied = %d",
+							lock->l_lvb_len,
+							lvb_len);
 				rc = -EINVAL;
 				goto out;
 			}
@@ -640,7 +642,8 @@ static int ldlm_callback_handler(struct ptlrpc_request *req)
 
 	lock = ldlm_handle2lock_long(&dlm_req->lock_handle[0], 0);
 	if (!lock) {
-		CDEBUG(D_DLMTRACE, "callback on lock %#llx - lock disappeared\n",
+		CDEBUG(D_DLMTRACE,
+				"callback on lock %#llx - lock disappeared\n",
 		       dlm_req->lock_handle[0].cookie);
 		rc = ldlm_callback_reply(req, -EINVAL);
 		ldlm_callback_errmsg(req, "Operate with invalid parameter", rc,
@@ -664,8 +667,9 @@ static int ldlm_callback_handler(struct ptlrpc_request *req)
 		if (((lock->l_flags & LDLM_FL_CANCELING) &&
 		    (lock->l_flags & LDLM_FL_BL_DONE)) ||
 		    (lock->l_flags & LDLM_FL_FAILED)) {
-			LDLM_DEBUG(lock, "callback on lock %#llx - lock disappeared\n",
-				   dlm_req->lock_handle[0].cookie);
+			LDLM_DEBUG(lock,
+					   "callback on lock %#llx - lock disappeared\n",
+				       dlm_req->lock_handle[0].cookie);
 			unlock_res_and_lock(lock);
 			LDLM_LOCK_RELEASE(lock);
 			rc = ldlm_callback_reply(req, -EINVAL);
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index 3d264e9..6073dc0b 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -632,8 +632,9 @@ int ldlm_pool_shrink(struct ldlm_pool *pl, int nr,
 			lprocfs_counter_add(pl->pl_stats,
 					    LDLM_POOL_SHRINK_FREED_STAT,
 					    cancel);
-			CDEBUG(D_DLMTRACE, "%s: request to shrink %d locks, shrunk %d\n",
-			       pl->pl_name, nr, cancel);
+			CDEBUG(D_DLMTRACE,
+					"%s: request to shrink %d locks, shrunk %d\n",
+					pl->pl_name, nr, cancel);
 		}
 	}
 	return cancel;
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
index c6f62a9..1640e9a 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
@@ -738,7 +738,8 @@ static void cleanup_resource(struct ldlm_resource *res, struct list_head *q,
 		} else {
 			ldlm_resource_unlink_lock(lock);
 			unlock_res(res);
-			LDLM_DEBUG(lock, "Freeing a lock still held by a client node");
+			LDLM_DEBUG(lock,
+						"Freeing a lock still held by a client node");
 			ldlm_lock_destroy(lock);
 		}
 		LDLM_LOCK_RELEASE(lock);
@@ -1406,8 +1407,9 @@ void ldlm_resource_dump(int level, struct ldlm_resource *res)
 			LDLM_DEBUG_LIMIT(level, lock, "###");
 			if (!(level & D_CANTMASK) &&
 			    ++granted > ldlm_dump_granted_max) {
-				CDEBUG(level, "only dump %d granted locks to avoid DDOS.\n",
-				       granted);
+				CDEBUG(level,
+						"only dump %d granted locks to avoid DDOS.\n",
+						granted);
 				break;
 			}
 		}
-- 
1.9.1



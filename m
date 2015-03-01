X-GM-THRID: 4945298325504
X-Received: by 10.112.219.102 with SMTP id pn6mr2878861lbc.12.1425170365168;
        Sat, 28 Feb 2015 16:39:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.207.101 with SMTP id lv5ls309203lac.22.gmail; Sat, 28 Feb
 2015 16:39:24 -0800 (PST)
X-Received: by 10.112.126.194 with SMTP id na2mr2981267lbb.18.1425170364698;
        Sat, 28 Feb 2015 16:39:24 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id r6si394371wix.0.2015.02.28.16.39.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:39:24 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id w62so26862911wes.9
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 16:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=yxjFAXc0f1ykFz4kBVjSmyxWzZfv2DCkRLtTmNwp/so=;
        b=hKH7HKo9F1Ws5abRBT5zt3a9WnDHftxTmm4lzHBGZeS5/mdDvr9zyxYWz0LY6paVlP
         5bAda6xKGSMhAg6SXk/r/vpIt/WPZhZi2GXZAx88I2n/7+z5mH3QxFlB9V1aVIswc01q
         AiwUogPTMk/7vClOB9z+aems+8PsnRRiB8gjXKJOr/nIXG+B0Sfe9dxugv0V2JEu3WfB
         xxuF+bKhNoFU2TJBmmgXsL2RnpZ5plultnfsNVWy5BNsPyiHc9r8Vhf/Lr/50HRQi9Zc
         H1qjIJiZi7gEmjH8B3P8lQ5R/KMxD6SjLfIuMa99X4RrmF4oCxv3POAOpmFixVL9ubJc
         pu9w==
X-Received: by 10.195.13.104 with SMTP id ex8mr42705938wjd.12.1425170364583;
        Sat, 28 Feb 2015 16:39:24 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id yy9sm12310703wjc.20.2015.02.28.16.39.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:39:23 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 6ED9163424; Sun,  1 Mar 2015 03:39:22 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v2] Staging: lustre: Fix line over 80 characters
Date: Sun,  1 Mar 2015 03:39:21 +0300
Message-Id: <1425170361-22321-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425077868-27905-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425077868-27905-1-git-send-email-hamohammed.sa@gmail.com>

This patch splits line over 80 characters addressing checkpatch.pl
warning.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v2: edit subject line

 drivers/staging/lustre/lustre/ldlm/ldlm_request.c | 32 +++++++++++++++--------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
index 287da32..a913c01 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
@@ -102,7 +102,10 @@ int ldlm_expired_completion_wait(void *data)
 			      lock->l_last_activity,
 			      cfs_time_sub(get_seconds(),
 					   lock->l_last_activity));
-		LDLM_DEBUG(lock, "lock timed out (enqueued at " CFS_TIME_T ", " CFS_DURATION_T "s ago); not entering recovery in server code, just going back to sleep",
+		LDLM_DEBUG(lock,
+				"lock timed out (enqueued at "
+				CFS_TIME_T ", " CFS_DURATION_T
+				"s ago); not entering recovery in server code, just going back to sleep",
 			   lock->l_last_activity,
 			   cfs_time_sub(get_seconds(),
 					lock->l_last_activity));
@@ -190,7 +193,8 @@ int ldlm_completion_ast_async(struct ldlm_lock *lock, __u64 flags, void *data)
 		return ldlm_completion_tail(lock);
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, going forward");
+	LDLM_DEBUG(lock,
+			"client-side enqueue returned a blocked lock, going forward");
 	ldlm_reprocess_all(lock->l_resource);
 	return 0;
 }
@@ -238,7 +242,8 @@ int ldlm_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 		return 0;
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
+	LDLM_DEBUG(lock,
+			"client-side enqueue returned a blocked lock, sleeping");
 
 noreproc:
 
@@ -320,7 +325,8 @@ int ldlm_blocking_ast_nocheck(struct ldlm_lock *lock)
 		if (rc < 0)
 			CERROR("ldlm_cli_cancel: %d\n", rc);
 	} else {
-		LDLM_DEBUG(lock, "Lock still has references, will be cancelled later");
+		LDLM_DEBUG(lock,
+				"Lock still has references, will be cancelled later");
 	}
 	return 0;
 }
@@ -551,7 +557,8 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, struct ptlrpc_request *req,
 			rc = size;
 			goto cleanup;
 		} else if (unlikely(size > lvb_len)) {
-			LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
+			LDLM_ERROR(lock,
+					"Replied LVB is larger than expectation, expected = %d, replied = %d",
 				   lvb_len, size);
 			rc = -EINVAL;
 			goto cleanup;
@@ -1104,7 +1111,8 @@ static __u64 ldlm_cli_cancel_local(struct ldlm_lock *lock)
 		unlock_res_and_lock(lock);
 
 		if (local_only) {
-			CDEBUG(D_DLMTRACE, "not sending request (at caller's instruction)\n");
+			CDEBUG(D_DLMTRACE,
+					"not sending request (at caller's instruction)\n");
 			rc = LDLM_FL_LOCAL_ONLY;
 		}
 		ldlm_lock_cancel(lock);
@@ -1219,9 +1227,10 @@ int ldlm_cli_cancel_req(struct obd_export *exp, struct list_head *cancels,
 			rc = ptlrpc_queue_wait(req);
 		}
 		if (rc == LUSTRE_ESTALE) {
-			CDEBUG(D_DLMTRACE, "client/server (nid %s) out of sync -- not fatal\n",
-			       libcfs_nid2str(req->rq_import->
-					      imp_connection->c_peer.nid));
+			CDEBUG(D_DLMTRACE,
+					"client/server (nid %s) out of sync -- not fatal\n",
+					libcfs_nid2str(req->rq_import->
+					imp_connection->c_peer.nid));
 			rc = 0;
 		} else if (rc == -ETIMEDOUT && /* check there was no reconnect*/
 			   req->rq_import_generation == imp->imp_generation) {
@@ -2244,8 +2253,9 @@ static void ldlm_cancel_unused_locks_for_replay(struct ldlm_namespace *ns)
 	int canceled;
 	LIST_HEAD(cancels);
 
-	CDEBUG(D_DLMTRACE, "Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
-	       ldlm_ns_name(ns), ns->ns_nr_unused);
+	CDEBUG(D_DLMTRACE,
+			"Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
+			ldlm_ns_name(ns), ns->ns_nr_unused);
 
 	/* We don't need to care whether or not LRU resize is enabled
 	 * because the LDLM_CANCEL_NO_WAIT policy doesn't use the
-- 
1.9.1



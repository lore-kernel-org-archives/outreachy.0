X-GM-THRID: 5221884362752
X-Received: by 10.194.63.208 with SMTP id i16mr1486817wjs.2.1425332533596;
        Mon, 02 Mar 2015 13:42:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.129 with SMTP id r1ls660299wia.43.canary; Mon, 02 Mar
 2015 13:42:12 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr2507918wid.1.1425332532308;
        Mon, 02 Mar 2015 13:42:12 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id cl5si750841wib.3.2015.03.02.13.42.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 13:42:12 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghn12 with SMTP id n12so36302074wgh.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 13:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=SvhkujI0njl2efqPLkE0TdDjO8keGATAdwlWa/JuDBQ=;
        b=VIOdcSrL0rcqDnk3hKSY4wJDu5ZKRd15Hin/H7wHvZZWc7cGnGHf6vIpduzlI7H3zH
         yMAqyQlKrovApyuCgDik+EtcwmESE7W1fA2HLai53L137M4VtcTpoArHW5u0XFSSaqY6
         dNwcDw1TGAmdleNFh9kCFUKX8VDSAzrN9JWVyE79ejAABGtlPjnWRu0oW1OF0c4RaIwY
         fpNBHEsXbaG70qk2zsAZ9QhSpVBWUD1UD/5MH6RCytr6+qfmDM5QoeQiPI4IR9srhxHH
         d8nbPCVlL7rleZweAYn09aLefxtJJ8Ek+qQGgsar5CaAq9tyEkP91T2+FG/QwyTjnqPe
         7MYw==
X-Received: by 10.180.106.70 with SMTP id gs6mr39700874wib.39.1425332532186;
        Mon, 02 Mar 2015 13:42:12 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id ul1sm2637038wjc.0.2015.03.02.13.42.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 13:42:11 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 0B304621FB; Tue,  3 Mar 2015 00:42:15 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v4] Staging: lustre: Fix line over 80 characters
Date: Tue,  3 Mar 2015 00:42:14 +0300
Message-Id: <1425332534-14163-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch splits line over 80 characters addressing checkpatch.pl
warning.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v4: solve problems with identation

 drivers/staging/lustre/lustre/ldlm/ldlm_request.c | 34 +++++++++++++++--------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
index 53226b8..7d1e665 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
@@ -102,9 +102,12 @@ int ldlm_expired_completion_wait(void *data)
 			      lock->l_last_activity,
 			      cfs_time_sub(get_seconds(),
 					   lock->l_last_activity));
-		LDLM_DEBUG(lock, "lock timed out (enqueued at " CFS_TIME_T ", " CFS_DURATION_T "s ago); not entering recovery in server code, just going back to sleep",
-			   lock->l_last_activity,
-			   cfs_time_sub(get_seconds(),
+		LDLM_DEBUG(lock,
+					"lock timed out (enqueued at "
+					CFS_TIME_T ", " CFS_DURATION_T
+					"s ago); not entering recovery in server code, just going back to sleep",
+					lock->l_last_activity,
+					cfs_time_sub(get_seconds(),
 					lock->l_last_activity));
 		if (cfs_time_after(cfs_time_current(), next_dump)) {
 			last_dump = next_dump;
@@ -190,7 +193,8 @@ int ldlm_completion_ast_async(struct ldlm_lock *lock, __u64 flags, void *data)
 		return ldlm_completion_tail(lock);
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, going forward");
+	LDLM_DEBUG(lock,
+				"client-side enqueue returned a blocked lock, going forward");
 	ldlm_reprocess_all(lock->l_resource);
 	return 0;
 }
@@ -238,7 +242,8 @@ int ldlm_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 		return 0;
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
+	LDLM_DEBUG(lock,
+				"client-side enqueue returned a blocked lock, sleeping");
 
 noreproc:
 
@@ -320,7 +325,8 @@ int ldlm_blocking_ast_nocheck(struct ldlm_lock *lock)
 		if (rc < 0)
 			CERROR("ldlm_cli_cancel: %d\n", rc);
 	} else {
-		LDLM_DEBUG(lock, "Lock still has references, will be cancelled later");
+		LDLM_DEBUG(lock,
+					"Lock still has references, will be cancelled later");
 	}
 	return 0;
 }
@@ -551,8 +557,9 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, struct ptlrpc_request *req,
 			rc = size;
 			goto cleanup;
 		} else if (unlikely(size > lvb_len)) {
-			LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
-				   lvb_len, size);
+			LDLM_ERROR(lock,
+					"Replied LVB is larger than expectation, expected = %d, replied = %d",
+				    lvb_len, size);
 			rc = -EINVAL;
 			goto cleanup;
 		}
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
+			CDEBUG(D_DLMTRACE,
+					"client/server (nid %s) out of sync -- not fatal\n",
 			       libcfs_nid2str(req->rq_import->
-					      imp_connection->c_peer.nid));
+					imp_connection->c_peer.nid));
 			rc = 0;
 		} else if (rc == -ETIMEDOUT && /* check there was no reconnect*/
 			   req->rq_import_generation == imp->imp_generation) {
@@ -2243,7 +2252,8 @@ static void ldlm_cancel_unused_locks_for_replay(struct ldlm_namespace *ns)
 	int canceled;
 	LIST_HEAD(cancels);
 
-	CDEBUG(D_DLMTRACE, "Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
+	CDEBUG(D_DLMTRACE,
+			"Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
 	       ldlm_ns_name(ns), ns->ns_nr_unused);
 
 	/* We don't need to care whether or not LRU resize is enabled
-- 
1.9.1



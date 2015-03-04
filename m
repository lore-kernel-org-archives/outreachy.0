X-GM-THRID: 4945298325504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c497780d2890c69d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.160.176 with SMTP id xl16mr3779936wib.6.1425470753875;
        Wed, 04 Mar 2015 04:05:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.167 with SMTP id an7ls146784lac.47.gmail; Wed, 04 Mar
 2015 04:05:53 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr609593lbc.0.1425470753340;
        Wed, 04 Mar 2015 04:05:53 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id i8si309568wif.1.2015.03.04.04.05.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 04:05:53 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id hm9so6926560wib.2
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 04:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=09oMtgyGkhdkKP29E9Bwbc3t6RbXtWsTgH/h2OJmy+M=;
        b=QBIleeHGuWVBwa5t5q20VoahAuK8czXtIiCrH0w2Wvx23UL+BgQDi7z85zXzGhB07L
         2zYltEdhPv78xWvUeVI/Yab7HMOGoLhUJwi9VXrATi2OtjjfqV3Kx41XNOuqfE13AMw8
         UuriLDnExm5PVVqPjhLnKxYeXnSnoFvWr7Ly29Zo6sTsG66jPIjTYpZ4/ZM2nWc65nLB
         oSm0JOT8L3Yl8I9d0eGiiEx0WM3Hc0Hl+U75gb+y1lYopQJgia4aO6NfQ8lVYixuX+to
         zHksNMzoF/2THzGH2XKd43x8ac9vHf5ZmuRmAVbWa3kGx/ygsHwsGlM6pALgyfJhMUIF
         Mq/Q==
X-Received: by 10.180.107.71 with SMTP id ha7mr55589086wib.23.1425470753202;
        Wed, 04 Mar 2015 04:05:53 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([212.138.130.2])
        by mx.google.com with ESMTPSA id h11sm24901741wic.14.2015.03.04.04.05.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 04:05:52 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 67CD962676; Wed,  4 Mar 2015 14:34:51 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v5] Staging: lustre: line over 80 characters
Date: Wed,  4 Mar 2015 14:34:50 +0300
Message-Id: <1425468890-10873-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425077868-27905-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425077868-27905-1-git-send-email-hamohammed.sa@gmail.com>

This patch splits line over 80 characters addressing checkpatch.pl warning.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 v5: address identation problem
 v4: solve problems with identation

 drivers/staging/lustre/lustre/ldlm/ldlm_request.c | 33 +++++++++++++++--------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
index 53226b8..ddfae44 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
@@ -102,10 +102,13 @@ int ldlm_expired_completion_wait(void *data)
 			      lock->l_last_activity,
 			      cfs_time_sub(get_seconds(),
 					   lock->l_last_activity));
-		LDLM_DEBUG(lock, "lock timed out (enqueued at " CFS_TIME_T ", " CFS_DURATION_T "s ago); not entering recovery in server code, just going back to sleep",
+		LDLM_DEBUG(lock,
+			   "lock timed out (enqueued at "
+			   CFS_TIME_T ", " CFS_DURATION_T
+			   "s ago); not entering recovery in server code, just going back to sleep",
 			   lock->l_last_activity,
 			   cfs_time_sub(get_seconds(),
-					lock->l_last_activity));
+			   lock->l_last_activity));
 		if (cfs_time_after(cfs_time_current(), next_dump)) {
 			last_dump = next_dump;
 			next_dump = cfs_time_shift(300);
@@ -190,7 +193,8 @@ int ldlm_completion_ast_async(struct ldlm_lock *lock, __u64 flags, void *data)
 		return ldlm_completion_tail(lock);
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, going forward");
+	LDLM_DEBUG(lock,
+		   "client-side enqueue returned a blocked lock, going forward");
 	ldlm_reprocess_all(lock->l_resource);
 	return 0;
 }
@@ -238,7 +242,8 @@ int ldlm_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 		return 0;
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
+	LDLM_DEBUG(lock,
+		   "client-side enqueue returned a blocked lock, sleeping");
 
 noreproc:
 
@@ -320,7 +325,8 @@ int ldlm_blocking_ast_nocheck(struct ldlm_lock *lock)
 		if (rc < 0)
 			CERROR("ldlm_cli_cancel: %d\n", rc);
 	} else {
-		LDLM_DEBUG(lock, "Lock still has references, will be cancelled later");
+		LDLM_DEBUG(lock,
+			   "Lock still has references, will be cancelled later");
 	}
 	return 0;
 }
@@ -551,7 +557,8 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, struct ptlrpc_request *req,
 			rc = size;
 			goto cleanup;
 		} else if (unlikely(size > lvb_len)) {
-			LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
+			LDLM_ERROR(lock,
+				   "Replied LVB is larger than expectation, expected = %d, replied = %d",
 				   lvb_len, size);
 			rc = -EINVAL;
 			goto cleanup;
@@ -1104,7 +1111,8 @@ static __u64 ldlm_cli_cancel_local(struct ldlm_lock *lock)
 		unlock_res_and_lock(lock);
 
 		if (local_only) {
-			CDEBUG(D_DLMTRACE, "not sending request (at caller's instruction)\n");
+			CDEBUG(D_DLMTRACE,
+			       "not sending request (at caller's instruction)\n");
 			rc = LDLM_FL_LOCAL_ONLY;
 		}
 		ldlm_lock_cancel(lock);
@@ -1219,7 +1227,8 @@ int ldlm_cli_cancel_req(struct obd_export *exp, struct list_head *cancels,
 			rc = ptlrpc_queue_wait(req);
 		}
 		if (rc == LUSTRE_ESTALE) {
-			CDEBUG(D_DLMTRACE, "client/server (nid %s) out of sync -- not fatal\n",
+			CDEBUG(D_DLMTRACE,
+			       "client/server (nid %s) out of sync -- not fatal\n",
 			       libcfs_nid2str(req->rq_import->
 					      imp_connection->c_peer.nid));
 			rc = 0;
@@ -2243,7 +2252,8 @@ static void ldlm_cancel_unused_locks_for_replay(struct ldlm_namespace *ns)
 	int canceled;
 	LIST_HEAD(cancels);
 
-	CDEBUG(D_DLMTRACE, "Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
+	CDEBUG(D_DLMTRACE,
+	       "Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
 	       ldlm_ns_name(ns), ns->ns_nr_unused);
 
 	/* We don't need to care whether or not LRU resize is enabled
@@ -2252,8 +2262,9 @@ static void ldlm_cancel_unused_locks_for_replay(struct ldlm_namespace *ns)
 	canceled = ldlm_cancel_lru_local(ns, &cancels, ns->ns_nr_unused, 0,
 					 LCF_LOCAL, LDLM_CANCEL_NO_WAIT);
 
-	CDEBUG(D_DLMTRACE, "Canceled %d unused locks from namespace %s\n",
-			   canceled, ldlm_ns_name(ns));
+	CDEBUG(D_DLMTRACE,
+	       "Canceled %d unused locks from namespace %s\n",
+	       canceled, ldlm_ns_name(ns));
 }
 
 int ldlm_replay_locks(struct obd_import *imp)
-- 
1.9.1



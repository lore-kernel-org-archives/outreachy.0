X-GM-THRID: 5221884362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b3fa01965e3a4916
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr3142186lbf.21.1425220989972;
        Sun, 01 Mar 2015 06:43:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.101.103 with SMTP id ff7ls3950wib.53.canary; Sun, 01 Mar
 2015 06:43:09 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr1580571wid.1.1425220989642;
        Sun, 01 Mar 2015 06:43:09 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id ta1si485732wic.1.2015.03.01.06.43.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 06:43:09 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wibbs8 with SMTP id bs8so9547453wib.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 06:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:reply-to:mime-version:content-type
         :content-disposition:user-agent;
        bh=vITYnJuJZhPwttRi3rDunPztEqQXZ0Ouin5BpfIMtZk=;
        b=08hdxnjUIaMn8ahQgDlIxxDM0gzOpkLUJtFDVmPP+JVqNuYRVcVdqHDCxu66KpA93W
         Fe4SbDbu2aGEXe2yGCBkEwY+lNtFW2ct5phuIGNgT00EAcgzqLGT83dU5PzhblYBjwFJ
         jGzbfC0kYb5gjP2GaFP24svbHMATOkyQbgblrAl+nvVL8r+bXYU4duTMS3oj7cEEZzPX
         lJWFcAU8QGSnkPcy4tKHjLwQmzxR7JCf02AIDTWEj+hucryj87u/ugX1jYojXdRmTi5G
         23Y8C9yLq7iLx4J7dAA2r1QnKwHVzti5swzeoY+5qbcVCtXvUYrCIY+FTKjMbRzE2Rit
         6jkg==
X-Received: by 10.180.75.4 with SMTP id y4mr26271286wiv.35.1425220989541;
        Sun, 01 Mar 2015 06:43:09 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([79.170.55.43])
        by mx.google.com with ESMTPSA id q10sm14925332wjr.41.2015.03.01.06.43.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 06:43:08 -0800 (PST)
Date: Sun, 1 Mar 2015 17:43:10 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: lustre: Fix line over 80 characters
Message-ID: <20150301144310.GA7807@example.com>
Reply-To: 1425077868-27905-1-git-send-email-hamohammed.sa@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch splits line over 80 characters addressing checkpatch.pl
warning.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v3: fix identation.
v2: edit subject line.

 drivers/staging/lustre/lustre/ldlm/ldlm_request.c | 44 ++++++++++++++---------
 1 file changed, 27 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
index 287da32..ec09c08 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
@@ -98,13 +98,16 @@ int ldlm_expired_completion_wait(void *data)
 		static unsigned long next_dump, last_dump;
 
 		LCONSOLE_WARN("lock timed out (enqueued at "CFS_TIME_T", "
-			      CFS_DURATION_T"s ago)\n",
-			      lock->l_last_activity,
-			      cfs_time_sub(get_seconds(),
-					   lock->l_last_activity));
-		LDLM_DEBUG(lock, "lock timed out (enqueued at " CFS_TIME_T ", " CFS_DURATION_T "s ago); not entering recovery in server code, just going back to sleep",
-			   lock->l_last_activity,
-			   cfs_time_sub(get_seconds(),
+						CFS_DURATION_T"s ago)\n",
+						lock->l_last_activity,
+						cfs_time_sub(get_seconds(),
+						lock->l_last_activity));
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
@@ -551,7 +557,8 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, struct ptlrpc_request *req,
 			rc = size;
 			goto cleanup;
 		} else if (unlikely(size > lvb_len)) {
-			LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
+			LDLM_ERROR(lock,
+						"Replied LVB is larger than expectation, expected = %d, replied = %d",
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



X-GM-THRID: 6473410411176656896
X-Received: by 10.176.6.74 with SMTP id f68mr8869040uaf.18.1508352612926;
        Wed, 18 Oct 2017 11:50:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.86.23 with SMTP id y23ls1320728uaa.7.gmail; Wed, 18 Oct
 2017 11:50:12 -0700 (PDT)
X-Received: by 10.31.254.205 with SMTP id l196mr8837438vki.125.1508352612360;
        Wed, 18 Oct 2017 11:50:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508352612; cv=none;
        d=google.com; s=arc-20160816;
        b=F9oDKYfbzvxeMHtI7fXG4U523mzQ1XCTXHQNuIE4JThYWwaEIrRb1rmKvibZYQLSWF
         TlpHw7LScV1Is1bJQgk+2uJYIgim7+yFHKy0bSSOWb7XRUcXFaeYUngRCb7bVruWx943
         AORypGPzfXW6GjVxxCi2hij2CxLHtbuVGKxomt9rd5gZr0J2TaVYlT9QrQREGt+KE8Cg
         DEPMVXUBey8pbRnrWiDDfQsYFJHJfg6gtWLsml8yPYu/Dggixrw3uSNceCIPwdz2Tahz
         ceBcFR6KS7NiF767MZb7u/Zc0j0ewG/fPz0xzPorWU7fT2yQV4h+29pYy5pmVJed3ywH
         m73A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=81vZzy+zP2d0CK+eRiC+jEU675lVQzIi0VYaXwBYt9Y=;
        b=z7/juGBVFiacj9t2LVTtI+uwstHcpYCh/ZP2cupVIK/aL7ssHqL8+4hJOyVPc0QqBy
         x4QzxHFiahaRJRH/BEpu7ZF+p2fpyYSYnG3F0Z/jQOAvf8LrdCGBCFI8SR1BkgkJdwbG
         +zovURTzfI5e/tckPWSMy35HufZbUgrhzSmElUPpkDBpznT4nwiqN89Gkkkg61pE6r6L
         wc3+l0V4H65NCoUFvw1JNtAyi4w9CIkuCeTW2gCLFX0+/Z3AZ8dvqcVuB5qevhwPQxFe
         tdsgEDkMGzbWHniONOEBwdgDRuBmdUj7ffDbuPte5cDOcPP61XO7bAagt3RYRU8YrbOi
         Hbrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=freDPWbz;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22e as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x22e.google.com (mail-pg0-x22e.google.com. [2607:f8b0:400e:c05::22e])
        by gmr-mx.google.com with ESMTPS id t48si722776uad.5.2017.10.18.11.50.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:50:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22e as permitted sender) client-ip=2607:f8b0:400e:c05::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=freDPWbz;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22e as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22e.google.com with SMTP id j3so5000190pga.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=81vZzy+zP2d0CK+eRiC+jEU675lVQzIi0VYaXwBYt9Y=;
        b=freDPWbzGEewJu95KDu+Y0DW0DpXJLORT2zS41ZNo1OCq3klIqYmi1cn2LC2NsHf8M
         Ga1XJEM0c7xOvczc2xXwcl4Zg7eZVO442u59oId+09Z202zJ/x0bYCh/cW9wAaZdQmGz
         6RF5EHi0VdjGdsSgCHmQIjgCLt6/jAgwyZQppgZSl/ongWBGG026zNH8pQ4gGhbvb+Rr
         df74JPkRj+qyfM+zM6ek7a2EP9DE6t4ZEAzm0zqP845MiAmYN2szjt1K0rUQIrFb13fQ
         mtPHBGzr+cf6BujerWCTbZ2LTLqbT0ymzAj9Put+lPPQTqXNHDRoYLWwjxJwIucJi3sN
         j2+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=81vZzy+zP2d0CK+eRiC+jEU675lVQzIi0VYaXwBYt9Y=;
        b=IpCp/399SoKVTQepNhtX16CmEJCt0DQfTuS9yb1wlDT+Y+LXO1nrP/FEZeTLQx4rna
         i5im7sUfQCeodO3YNB8Bxd/Tqqs7n1ZGaorXSo8ld0ZvofK9KlCn4p/kNrZ43PAhPD6a
         fYke+X1PwS4UBtL3K2g8BD3XWSusZ/iNAzsTu0MvqD534L6YC0EvJPjrwWKjgeDo5Dbw
         ichCLBXKvBdaXNAYRGd7BvWbyrp+Gy6gvA7E3zt8VZNlqG0o5vxQN12tRFwT64NR5Jax
         +TTQHQAHv7WDQTw+dSiGWT802u4woiORUbjFnq1F7h6Fq2kB8unIo/CuVg5skurxxlc3
         mB/g==
X-Gm-Message-State: AMCzsaUx/tcBoO1RqikHwQLKcZ4UBcSqKxtxRH6Lzdidiv7pBlmgq2xr
	yn1Dq+Iw+TvQ8J2VzZMAQ4U=
X-Google-Smtp-Source: AOwi7QCu974DbW6kXi/VlmT29gqzDtdXWUyQroJD9TsLkHo0/gVUdLww4Tmu1iFXMx+GN7PABMUMMQ==
X-Received: by 10.84.168.132 with SMTP id f4mr15968690plb.424.1508352611776;
        Wed, 18 Oct 2017 11:50:11 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id u8sm20177751pgp.17.2017.10.18.11.50.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 11:50:11 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v4 4/7] staging: lustre: ldlm: fix lines over 80 characters in ldlm files
Date: Thu, 19 Oct 2017 00:19:43 +0530
Message-Id: <1508352586-25475-5-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  2 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++++------
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 42 +++++++++++++---------
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
 8 files changed, 65 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
index 2cc6dc2..f9b4c0a 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
@@ -207,7 +207,8 @@ void ldlm_extent_add_lock(struct ldlm_resource *res,
 				continue;
 			if (ldlm_extent_overlap(&lck->l_req_extent,
 						&lock->l_req_extent)) {
-				CDEBUG(D_ERROR, "granting conflicting lock %p %p\n",
+				CDEBUG(D_ERROR,
+				       "granting conflicting lock %p %p\n",
 				       lck, lock);
 				ldlm_resource_dump(D_ERROR, res);
 				LBUG();
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
index cb826e9..04e1d4c 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_flock.c
@@ -479,7 +479,8 @@ ldlm_flock_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 		return 0;
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
+	LDLM_DEBUG(lock,
+		   "client-side enqueue returned a blocked lock, sleeping");
 	fwd.fwd_lock = lock;
 	obd = class_exp2obd(lock->l_conn_export);
 
@@ -561,7 +562,8 @@ ldlm_flock_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 			mode = lock->l_granted_mode;
 
 		if (ldlm_is_flock_deadlock(lock)) {
-			LDLM_DEBUG(lock, "client-side enqueue deadlock received");
+			LDLM_DEBUG(lock,
+				   "client-side enqueue deadlock received");
 			rc = -EDEADLK;
 		}
 		ldlm_flock_destroy(lock, mode, LDLM_FL_WAIT_NOREPROC);
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
index 36808db..03c137f 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
@@ -88,7 +88,7 @@ struct ldlm_namespace *ldlm_namespace_first_locked(enum ldlm_side client);
 /* ldlm_request.c */
 /* Cancel lru flag, it indicates we cancel aged locks. */
 enum {
-	LDLM_LRU_FLAG_AGED	= BIT(0), /* Cancel aged locks (non lru resize). */
+	LDLM_LRU_FLAG_AGED	= BIT(0), /* Cancel old non-LRU resize locks */
 	LDLM_LRU_FLAG_PASSED	= BIT(1), /* Cancel passed number of locks. */
 	LDLM_LRU_FLAG_SHRINK	= BIT(2), /* Cancel locks from shrinker. */
 	LDLM_LRU_FLAG_LRUR	= BIT(3), /* Cancel locks from lru resize. */
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
index b5d84f3..adfc0b4 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
@@ -1035,7 +1035,8 @@ void ldlm_grant_lock(struct ldlm_lock *lock, struct list_head *work_list)
 		ldlm_extent_add_lock(res, lock);
 	} else if (res->lr_type == LDLM_FLOCK) {
 		/*
-		 * We should not add locks to granted list in the following cases:
+		 * We should not add locks to granted list in
+		 * the following cases:
 		 * - this is an UNLOCK but not a real lock;
 		 * - this is a TEST lock;
 		 * - this is a F_CANCELLK lock (async flock has req_mode == 0)
@@ -2051,13 +2052,16 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
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
@@ -2067,7 +2071,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 		libcfs_debug_vmsg2(msgdata, fmt, args,
 				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s [%llu->%llu] (req %llu->%llu) flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
 				   ldlm_lock_to_ns_name(lock), lock,
-				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
+				   lock->l_handle.h_cookie,
+				   atomic_read(&lock->l_refc),
 				   lock->l_readers, lock->l_writers,
 				   ldlm_lockname[lock->l_granted_mode],
 				   ldlm_lockname[lock->l_req_mode],
@@ -2076,8 +2081,10 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
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
@@ -2087,7 +2094,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 		libcfs_debug_vmsg2(msgdata, fmt, args,
 				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s pid: %d [%llu->%llu] flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu\n",
 				   ldlm_lock_to_ns_name(lock), lock,
-				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
+				   lock->l_handle.h_cookie,
+				   atomic_read(&lock->l_refc),
 				   lock->l_readers, lock->l_writers,
 				   ldlm_lockname[lock->l_granted_mode],
 				   ldlm_lockname[lock->l_req_mode],
@@ -2097,7 +2105,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   lock->l_policy_data.l_flock.pid,
 				   lock->l_policy_data.l_flock.start,
 				   lock->l_policy_data.l_flock.end,
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout);
 		break;
@@ -2115,7 +2124,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   lock->l_policy_data.l_inodebits.bits,
 				   atomic_read(&resource->lr_refcount),
 				   ldlm_typename[resource->lr_type],
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout,
 				   lock->l_lvb_type);
@@ -2133,7 +2143,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
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
index e270733..1b2dbb9 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
@@ -184,7 +184,8 @@ static void ldlm_handle_cp_callback(struct ptlrpc_request *req,
 			LASSERT(lock->l_lvb_data);
 
 			if (unlikely(lock->l_lvb_len < lvb_len)) {
-				LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
+				LDLM_ERROR(lock,
+					   "Replied LVB is larger than expectation, expected = %d, replied = %d",
 					   lock->l_lvb_len, lvb_len);
 				rc = -EINVAL;
 				goto out;
@@ -598,7 +599,8 @@ static int ldlm_callback_handler(struct ptlrpc_request *req)
 
 	lock = ldlm_handle2lock_long(&dlm_req->lock_handle[0], 0);
 	if (!lock) {
-		CDEBUG(D_DLMTRACE, "callback on lock %#llx - lock disappeared\n",
+		CDEBUG(D_DLMTRACE,
+		       "callback on lock %#llx - lock disappeared\n",
 		       dlm_req->lock_handle[0].cookie);
 		rc = ldlm_callback_reply(req, -EINVAL);
 		ldlm_callback_errmsg(req, "Operate with invalid parameter", rc,
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index d77bf0b..24b0b7d 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -386,7 +386,8 @@ static int ldlm_pool_recalc(struct ldlm_pool *pl)
 			      pl->pl_recalc_period;
 	if (recalc_interval_sec <= 0) {
 		/* DEBUG: should be re-removed after LU-4536 is fixed */
-		CDEBUG(D_DLMTRACE, "%s: Negative interval(%ld), too short period(%ld)\n",
+		CDEBUG(D_DLMTRACE,
+		       "%s: Negative interval(%ld), too short period(%ld)\n",
 		       pl->pl_name, (long)recalc_interval_sec,
 		       (long)pl->pl_recalc_period);
 
@@ -415,7 +416,8 @@ static int ldlm_pool_shrink(struct ldlm_pool *pl, int nr, gfp_t gfp_mask)
 			lprocfs_counter_add(pl->pl_stats,
 					    LDLM_POOL_SHRINK_FREED_STAT,
 					    cancel);
-			CDEBUG(D_DLMTRACE, "%s: request to shrink %d locks, shrunk %d\n",
+			CDEBUG(D_DLMTRACE,
+			       "%s: request to shrink %d locks, shrunk %d\n",
 			       pl->pl_name, nr, cancel);
 		}
 	}
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
index 6943987..5c22085 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
@@ -121,7 +121,8 @@ static int ldlm_expired_completion_wait(void *data)
 	if (!lock->l_conn_export) {
 		static unsigned long next_dump, last_dump;
 
-		LDLM_ERROR(lock, "lock timed out (enqueued at %lld, %llds ago); not entering recovery in server code, just going back to sleep",
+		LDLM_ERROR(lock,
+			   "lock timed out (enqueued at %lld, %llds ago); not entering recovery in server code, just going back to sleep",
 			   (s64)lock->l_last_activity,
 			   (s64)(ktime_get_real_seconds() -
 				 lock->l_last_activity));
@@ -139,7 +140,8 @@ static int ldlm_expired_completion_wait(void *data)
 	obd = lock->l_conn_export->exp_obd;
 	imp = obd->u.cli.cl_import;
 	ptlrpc_fail_import(imp, lwd->lwd_conn_cnt);
-	LDLM_ERROR(lock, "lock timed out (enqueued at %lld, %llds ago), entering recovery for %s@%s",
+	LDLM_ERROR(lock,
+		   "lock timed out (enqueued at %lld, %llds ago), entering recovery for %s@%s",
 		   (s64)lock->l_last_activity,
 		   (s64)(ktime_get_real_seconds() - lock->l_last_activity),
 		   obd2cli_tgt(obd), imp->imp_connection->c_remote_uuid.uuid);
@@ -218,7 +220,8 @@ int ldlm_completion_ast_async(struct ldlm_lock *lock, __u64 flags, void *data)
 		return ldlm_completion_tail(lock, data);
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, going forward");
+	LDLM_DEBUG(lock,
+		   "client-side enqueue returned a blocked lock, going forward");
 	return 0;
 }
 EXPORT_SYMBOL(ldlm_completion_ast_async);
@@ -264,7 +267,8 @@ int ldlm_completion_ast(struct ldlm_lock *lock, __u64 flags, void *data)
 		return 0;
 	}
 
-	LDLM_DEBUG(lock, "client-side enqueue returned a blocked lock, sleeping");
+	LDLM_DEBUG(lock,
+		   "client-side enqueue returned a blocked lock, sleeping");
 
 noreproc:
 
@@ -414,7 +418,8 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, struct ptlrpc_request *req,
 			rc = size;
 			goto cleanup;
 		} else if (unlikely(size > lvb_len)) {
-			LDLM_ERROR(lock, "Replied LVB is larger than expectation, expected = %d, replied = %d",
+			LDLM_ERROR(lock,
+				   "Replied LVB is larger than expectation, expected = %d, replied = %d",
 				   lvb_len, size);
 			rc = -EINVAL;
 			goto cleanup;
@@ -473,8 +478,8 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, struct ptlrpc_request *req,
 
 		if (!ldlm_res_eq(&reply->lock_desc.l_resource.lr_name,
 				 &lock->l_resource->lr_name)) {
-			CDEBUG(D_INFO, "remote intent success, locking " DLDLMRES
-				       " instead of " DLDLMRES "\n",
+			CDEBUG(D_INFO,
+			       "remote intent success, locking " DLDLMRES " instead of " DLDLMRES "\n",
 			       PLDLMRES(&reply->lock_desc.l_resource),
 			       PLDLMRES(lock->l_resource));
 
@@ -850,7 +855,8 @@ static __u64 ldlm_cli_cancel_local(struct ldlm_lock *lock)
 		unlock_res_and_lock(lock);
 
 		if (local_only) {
-			CDEBUG(D_DLMTRACE, "not sending request (at caller's instruction)\n");
+			CDEBUG(D_DLMTRACE,
+			       "not sending request (at caller's instruction)\n");
 			rc = LDLM_FL_LOCAL_ONLY;
 		}
 		ldlm_lock_cancel(lock);
@@ -963,7 +969,8 @@ static int ldlm_cli_cancel_req(struct obd_export *exp,
 
 		rc = ptlrpc_queue_wait(req);
 		if (rc == LUSTRE_ESTALE) {
-			CDEBUG(D_DLMTRACE, "client/server (nid %s) out of sync -- not fatal\n",
+			CDEBUG(D_DLMTRACE,
+			       "client/server (nid %s) out of sync -- not fatal\n",
 			       libcfs_nid2str(req->rq_import->
 					      imp_connection->c_peer.nid));
 			rc = 0;
@@ -1364,13 +1371,14 @@ ldlm_cancel_lru_policy(struct ldlm_namespace *ns, int flags)
  * flags & LDLM_LRU_FLAG_LRUR	- use LRU resize policy (SLV from server) to
  *				  cancel not more than \a count locks;
  *
- * flags & LDLM_LRU_FLAG_PASSED - cancel \a count number of old locks (located at
- *				  the beginning of LRU list);
+ * flags & LDLM_LRU_FLAG_PASSED - cancel \a count number of old locks (located
+ *				  at the beginning of LRU list);
  *
- * flags & LDLM_LRU_FLAG_SHRINK - cancel not more than \a count locks according to
- *				  memory pressure policy function;
+ * flags & LDLM_LRU_FLAG_SHRINK - cancel not more than \a count locks according
+ *				  to memory pressure policy function;
  *
- * flags & LDLM_LRU_FLAG_AGED   - cancel \a count locks according to "aged policy".
+ * flags & LDLM_LRU_FLAG_AGED   - cancel \a count locks according to
+ *				  "aged policy".
  *
  * flags & LDLM_LRU_FLAG_NO_WAIT - cancel as many unused locks as possible
  *				   (typically before replaying locks) w/o
@@ -1384,7 +1392,8 @@ static int ldlm_prepare_lru_list(struct ldlm_namespace *ns,
 	ldlm_cancel_lru_policy_t pf;
 	struct ldlm_lock *lock, *next;
 	int added = 0, unused, remained;
-	int no_wait = flags & (LDLM_LRU_FLAG_NO_WAIT | LDLM_LRU_FLAG_LRUR_NO_WAIT);
+	int no_wait = flags &
+		(LDLM_LRU_FLAG_NO_WAIT | LDLM_LRU_FLAG_LRUR_NO_WAIT);
 
 	spin_lock(&ns->ns_lock);
 	unused = ns->ns_nr_unused;
@@ -2035,7 +2044,8 @@ static void ldlm_cancel_unused_locks_for_replay(struct ldlm_namespace *ns)
 	int canceled;
 	LIST_HEAD(cancels);
 
-	CDEBUG(D_DLMTRACE, "Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
+	CDEBUG(D_DLMTRACE,
+	       "Dropping as many unused locks as possible before replay for namespace %s (%d)\n",
 	       ldlm_ns_name(ns), ns->ns_nr_unused);
 
 	/* We don't need to care whether or not LRU resize is enabled
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
index c2ddf73..c374f14 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
@@ -1358,7 +1358,8 @@ void ldlm_resource_dump(int level, struct ldlm_resource *res)
 			LDLM_DEBUG_LIMIT(level, lock, "###");
 			if (!(level & D_CANTMASK) &&
 			    ++granted > ldlm_dump_granted_max) {
-				CDEBUG(level, "only dump %d granted locks to avoid DDOS.\n",
+				CDEBUG(level,
+				       "only dump %d granted locks to avoid DDOS.\n",
 				       granted);
 				break;
 			}
-- 
2.7.4



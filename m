X-GM-THRID: 6473410411176656896
X-Received: by 10.159.214.139 with SMTP id n11mr298002plp.52.1507782726007;
        Wed, 11 Oct 2017 21:32:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.185.6 with SMTP id z6ls839025pfe.1.gmail; Wed, 11 Oct 2017
 21:32:05 -0700 (PDT)
X-Received: by 10.84.129.131 with SMTP id b3mr276312plb.49.1507782725333;
        Wed, 11 Oct 2017 21:32:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507782725; cv=none;
        d=google.com; s=arc-20160816;
        b=LY8JuC+j79Vqsswankb/FGFHo7rwTQJaEdUxAbMxd+CeVc7Rkp1/ScCVoJ/tBK0IZm
         Z5fjcPR2lgIkizaR3rJq8cnSJFpBf4djHJELe9eL/peprg1Tp18eEpBvharCT9RwSJFv
         1pBxxbly6x3ZNMgiiIrmPB1oMh4VqpAeNtbMOobKj0VTKKULOfuDYalDMxxXzyMNvMrH
         lB9xHRXSC0sDsznthNrIUW+lfIKGObHluitK3CrCkkUjUYCNmjB3Da0ElZXe8bUl795t
         i9/yJ/pofHPaH0X7u2jIzb8DBW6rCmW8MhXvwJsvT8Lnj2GJZqEAHupGBKagYpVw0lzW
         VKuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=5TrnRrcNjtBYB1JMRFXT2VcblMA/Go45AXlGnSJV/gQ=;
        b=RWLHxriBW9AJJ3sl1wMvbLGYPhRURwBrPYPm5d5J3qQjdvtHyn2ksUkxA7bxOM0uOn
         KGKjfvFiqqjpzd9MeM0vvJM79lw4s3GzglqXsnK8qj0blKn8UzMj661bCVDCOHuzMpbL
         4vT0Sz+nrRbrr60Oan1dKzorRpy5KGOKswH5TNN5+AL4FsT1XPYn+NfnAgu6A8KMoi31
         oCUVT+nEceehunAo9750koDKyJW08AoxxoAeuqphOiGx/Kb25oUbG0XuFI+EkIjrU5Lc
         qPe3BwlGQpeRQwz6JaD8sI8hilSnaJEKhOTXC1lDFAGD54RpdL0wXagYHwSfqvnWa58h
         nEMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZGZYlWdS;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 82si1614695pfz.6.2017.10.11.21.32.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 21:32:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZGZYlWdS;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id m28so4462331pfi.0
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 21:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5TrnRrcNjtBYB1JMRFXT2VcblMA/Go45AXlGnSJV/gQ=;
        b=ZGZYlWdSs6p67DnN5BHZoA8wc2gjwoqDhR2Reh/eQXYvaaeV3nnoYsAJiCe0AYCFxu
         V18EFMLlaV3UCiA6XWhG+eAhyDS4XVnKbmnFj7mf27vd0vDsWt44fR4sxRGOUUnX9w1i
         Funr0Tw0nV12GzC5Ijs+y8FWZjTOkANJRalk/bWHxxIffsc0T753RAv761zFWjDhuFqV
         3NQKTBxRmaVp6bewtdKAghxgGS8xwuRYOv6QHLVaQjY+AGY8APHvuhEF5Ln4ltEFA2df
         3Sge/K/mRztM32VeTdivd/FLU1MgrJ1pm3qDX7MSPbrb7Xk6d/hfrYn9ZJU5gTfQkfk+
         BZKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5TrnRrcNjtBYB1JMRFXT2VcblMA/Go45AXlGnSJV/gQ=;
        b=IAcKQGp5vzWAzss0soMHIhHslAC2rY2Awmk0oyPDkQrse4azfrEfPG5T5xoj8fC2Ps
         xdewe7LJdxyjq1c76V5auQxn1wtEEVIchMdGuGnXRxNEA8mNp2ZFAI3cN+DX3OhiGxUn
         r053fqZF32YMlotJ+FPOBqVxOV8CMrh14QFfTY9p0Is4//LbRLXAuqnRbI5iF3EuaZ1D
         Owu24cu+uXlWyQUzbaYUkq2L5mdcoyFegzs7ccqTU751J60lAaDHgRmqh59gih8x44rZ
         IuXhFar2QsslyODeBcQOIVA7RG90AvRhHfklp6BH0xqf6mBegLQ/9eBgdnQsib7yiGhh
         Dqnw==
X-Gm-Message-State: AMCzsaXNZGclTJIqSf1W1mDg+BPU14uIKvVhgwyWdlTFJ4fYbaXTErl0
	EHym1fht53tqe9HoKbL1kPk=
X-Google-Smtp-Source: AOwi7QAMWQph+6lNcvzsD3n2FK1nsxWsHDL7UegPwDct8ymjmumk5c3wLJdfXcZN8z8NSpxr1HR6BA==
X-Received: by 10.84.185.106 with SMTP id e39mr1033213plg.333.1507782724948;
        Wed, 11 Oct 2017 21:32:04 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id l66sm26931313pfl.17.2017.10.11.21.32.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Oct 2017 21:32:04 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 07/10] staging: lustre: ldlm: fix lines over 80 characters in ldlm files
Date: Thu, 12 Oct 2017 10:01:20 +0530
Message-Id: <1507782683-12754-8-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  4 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++++------
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 41 ++++++++++++++--------
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
 8 files changed, 67 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
index d19203f..cefbfad 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
@@ -204,7 +204,8 @@ void ldlm_extent_add_lock(struct ldlm_resource *res,
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
index 36808db..9776c39 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_internal.h
@@ -88,7 +88,9 @@ struct ldlm_namespace *ldlm_namespace_first_locked(enum ldlm_side client);
 /* ldlm_request.c */
 /* Cancel lru flag, it indicates we cancel aged locks. */
 enum {
-	LDLM_LRU_FLAG_AGED	= BIT(0), /* Cancel aged locks (non lru resize). */
+	LDLM_LRU_FLAG_AGED	= BIT(0), /* Cancel aged locks (non
+					   * lru resize).
+					   */
 	LDLM_LRU_FLAG_PASSED	= BIT(1), /* Cancel passed number of locks. */
 	LDLM_LRU_FLAG_SHRINK	= BIT(2), /* Cancel locks from shrinker. */
 	LDLM_LRU_FLAG_LRUR	= BIT(3), /* Cancel locks from lru resize. */
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
index ee1ea79..e23cdec 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
@@ -1032,7 +1032,8 @@ void ldlm_grant_lock(struct ldlm_lock *lock, struct list_head *work_list)
 		ldlm_extent_add_lock(res, lock);
 	} else if (res->lr_type == LDLM_FLOCK) {
 		/*
-		 * We should not add locks to granted list in the following cases:
+		 * We should not add locks to granted list in
+		 * the following cases:
 		 * - this is an UNLOCK but not a real lock;
 		 * - this is a TEST lock;
 		 * - this is a F_CANCELLK lock (async flock has req_mode == 0)
@@ -2048,13 +2049,16 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
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
@@ -2064,7 +2068,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 		libcfs_debug_vmsg2(msgdata, fmt, args,
 				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s [%llu->%llu] (req %llu->%llu) flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu lvb_type: %d\n",
 				   ldlm_lock_to_ns_name(lock), lock,
-				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
+				   lock->l_handle.h_cookie,
+				   atomic_read(&lock->l_refc),
 				   lock->l_readers, lock->l_writers,
 				   ldlm_lockname[lock->l_granted_mode],
 				   ldlm_lockname[lock->l_req_mode],
@@ -2073,8 +2078,10 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
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
@@ -2084,7 +2091,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 		libcfs_debug_vmsg2(msgdata, fmt, args,
 				   " ns: %s lock: %p/%#llx lrc: %d/%d,%d mode: %s/%s res: " DLDLMRES " rrc: %d type: %s pid: %d [%llu->%llu] flags: %#llx nid: %s remote: %#llx expref: %d pid: %u timeout: %lu\n",
 				   ldlm_lock_to_ns_name(lock), lock,
-				   lock->l_handle.h_cookie, atomic_read(&lock->l_refc),
+				   lock->l_handle.h_cookie,
+				   atomic_read(&lock->l_refc),
 				   lock->l_readers, lock->l_writers,
 				   ldlm_lockname[lock->l_granted_mode],
 				   ldlm_lockname[lock->l_req_mode],
@@ -2094,7 +2102,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   lock->l_policy_data.l_flock.pid,
 				   lock->l_policy_data.l_flock.start,
 				   lock->l_policy_data.l_flock.end,
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout);
 		break;
@@ -2112,7 +2121,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
 				   lock->l_policy_data.l_inodebits.bits,
 				   atomic_read(&resource->lr_refcount),
 				   ldlm_typename[resource->lr_type],
-				   lock->l_flags, nid, lock->l_remote_handle.cookie,
+				   lock->l_flags, nid,
+				   lock->l_remote_handle.cookie,
 				   exp ? atomic_read(&exp->exp_refcount) : -99,
 				   lock->l_pid, lock->l_callback_timeout,
 				   lock->l_lvb_type);
@@ -2130,7 +2140,8 @@ void _ldlm_lock_debug(struct ldlm_lock *lock,
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
index f3bf238..4660aa7 100644
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
@@ -473,7 +478,8 @@ int ldlm_cli_enqueue_fini(struct obd_export *exp, struct ptlrpc_request *req,
 
 		if (!ldlm_res_eq(&reply->lock_desc.l_resource.lr_name,
 				 &lock->l_resource->lr_name)) {
-			CDEBUG(D_INFO, "remote intent success, locking " DLDLMRES
+			CDEBUG(D_INFO,
+			       "remote intent success, locking " DLDLMRES
 				       " instead of " DLDLMRES "\n",
 			       PLDLMRES(&reply->lock_desc.l_resource),
 			       PLDLMRES(lock->l_resource));
@@ -850,7 +856,8 @@ static __u64 ldlm_cli_cancel_local(struct ldlm_lock *lock)
 		unlock_res_and_lock(lock);
 
 		if (local_only) {
-			CDEBUG(D_DLMTRACE, "not sending request (at caller's instruction)\n");
+			CDEBUG(D_DLMTRACE,
+			       "not sending request (at caller's instruction)\n");
 			rc = LDLM_FL_LOCAL_ONLY;
 		}
 		ldlm_lock_cancel(lock);
@@ -963,7 +970,8 @@ static int ldlm_cli_cancel_req(struct obd_export *exp,
 
 		rc = ptlrpc_queue_wait(req);
 		if (rc == LUSTRE_ESTALE) {
-			CDEBUG(D_DLMTRACE, "client/server (nid %s) out of sync -- not fatal\n",
+			CDEBUG(D_DLMTRACE,
+			       "client/server (nid %s) out of sync -- not fatal\n",
 			       libcfs_nid2str(req->rq_import->
 					      imp_connection->c_peer.nid));
 			rc = 0;
@@ -1363,13 +1371,14 @@ ldlm_cancel_lru_policy(struct ldlm_namespace *ns, int flags)
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
@@ -1383,7 +1392,8 @@ static int ldlm_prepare_lru_list(struct ldlm_namespace *ns,
 	ldlm_cancel_lru_policy_t pf;
 	struct ldlm_lock *lock, *next;
 	int added = 0, unused, remained;
-	int no_wait = flags & (LDLM_LRU_FLAG_NO_WAIT | LDLM_LRU_FLAG_LRUR_NO_WAIT);
+	int no_wait = flags &
+		(LDLM_LRU_FLAG_NO_WAIT | LDLM_LRU_FLAG_LRUR_NO_WAIT);
 
 	spin_lock(&ns->ns_lock);
 	unused = ns->ns_nr_unused;
@@ -2034,7 +2044,8 @@ static void ldlm_cancel_unused_locks_for_replay(struct ldlm_namespace *ns)
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



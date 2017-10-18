X-GM-THRID: 6473410411176656896
X-Received: by 10.237.53.98 with SMTP id b31mr1471089qte.53.1508328907246;
        Wed, 18 Oct 2017 05:15:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.19.197 with SMTP id i5ls1853053qtj.13.gmail; Wed, 18 Oct
 2017 05:15:06 -0700 (PDT)
X-Received: by 10.237.60.59 with SMTP id t56mr1415478qte.43.1508328906616;
        Wed, 18 Oct 2017 05:15:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508328906; cv=none;
        d=google.com; s=arc-20160816;
        b=nletZcK66eXvTKPTjgdxVthpqd8j/Tv4EEo6dd9OMrBPEywgGJJQwosvIr9Ht83eHz
         VlftC4YKs3LzJP3f8a4oO1cpKGdT9PsbyO8JsTNCm2qJ5YEZve6rF5Xrttot532XGY24
         ZmO9crQwRsLMHNStvwVpO/bK0V50zncsBI4YYvX7enyVUhi6CMT3DmjPbTFylTvUxB9p
         1X2IKKuAquoGVrfJ93oAYDH43ZAbfUVZCI8CtkSEb4kDN9Sh72i87dmHHNJ83/fr6yVw
         sJ6PYAYa8pS+YmR9UUT6NrqBkBKMQjS5Wbh99IRGktnPS8zJqRO5JVjOk6YGeg8N84ZJ
         O57g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=vK/SHxl0vBHhddGzQZ7+pGpRgBbztBX0kzoDbK62bfs=;
        b=RfPXjBXDl8faXHRwFIXM8I5JzXHvADpSIcNl5j24dDAvtGd0nHTZskablEaTeZNQz7
         vO4Wflu/O0rvn2tDKpGlKyI1tdCQeL1+TVJI01yyNLN/FGaxoEdpyF8tB1iWH8FM7E4c
         7oBJ1xl31j7qrPKSXKIRUutRXAm13Ap4StW9QUX1Ptx8iBSAyniLXR5/8BKmHc68Alno
         rxCEx1cqeNmcXJAJfrM82ui4IiFe2HF9iLIVSPvJdDzQBRr129EpQP0/r2jZv/MF2B23
         oFxjJzq/nIj30lXpjN4QBC4ElEwHpcmcPCxY5o6tcENarIfbj/lkMO9oOdLpohV5+leG
         UuMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ma0HaEQg;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id v90si649092qte.4.2017.10.18.05.15.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:15:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ma0HaEQg;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id y7so4128247pgb.7
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vK/SHxl0vBHhddGzQZ7+pGpRgBbztBX0kzoDbK62bfs=;
        b=Ma0HaEQgikpaHeUMUDZhUcwUHHBoM9GkMqhQj3UuxBYQytaaZHpPrLEzFptKTbjxmF
         BRwcKj2m2CECNwwuyYEMJuDiMIF8soQHUcmIs6W+5C4lYfVjIyaVyOjxmDCx85VMsJdB
         ineIu+HqyvbdiO9kqp4/erfsm073ukNWaKU/QP6rXNUnJ4s5Rnwrx2x2s7uPdfnKmPUn
         cv0RndkpXFNnhRIx0RJM93fdA2GbIf5gJpeZ0E6oqS1FchBfOl/Z/hAj/wvEsQEa4nYi
         991zpz/6NcyHYTpRkKzxoTBkyT00vMCCVEf7VfJ4BLOvf5Q6z1Se++0hUd94jCJ5AkFI
         32xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=vK/SHxl0vBHhddGzQZ7+pGpRgBbztBX0kzoDbK62bfs=;
        b=lUnpu9rLKjwQ7M2jwJYSDRMZR+kS6LbPSoX2IrKJueYaWvZtMmbF6+Lqfvd8FJMihN
         AuGSd0UGUie+hVF5S3AgYTDM3JQMTRjxgLmModn9RtLVrj+6VdZr6W6eUNge0tTraIpW
         0VTiv1DvxWSftV/xeDkuOCgEGkG0sndeFhTMIWAZWg8oHntPQd5ZeHTK8Oe0Yo7P6o3F
         sAyxMjFuKKAgwFEqK18/GA+2pqTA6GffHCuvAqsBuXGotpp+mZUyGCPVGj0LOccKfcmS
         +L9x0m1m1o5gTtrRWHZVnnAi1BLqGrbUdsDvIxgghZiBIoZYeemfuWyhaTdN7vlSguJU
         En9w==
X-Gm-Message-State: AMCzsaUvOS8o8ku22sXvcpcYF/b10dDxc2MUhmW2BQiB8XtC3fFYdOv+
	atXtWaQZWpEyuooYbmoO2to=
X-Google-Smtp-Source: ABhQp+TUsyTGcOdtijfkWEpjeo48HiRhcIKkRWAL0uk8EIfisEYjR07W+ndQiaFQa2B58bbSVXBoGQ==
X-Received: by 10.84.139.129 with SMTP id 1mr11868208plr.167.1508328905605;
        Wed, 18 Oct 2017 05:15:05 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id g16sm24032873pfd.87.2017.10.18.05.15.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 05:15:05 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 07/10] staging: lustre: ldlm: fix lines over 80 characters in ldlm files
Date: Wed, 18 Oct 2017 17:44:27 +0530
Message-Id: <1508328870-9416-8-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>

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
index f3bf238..dcf2afc 100644
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
@@ -1363,13 +1370,14 @@ ldlm_cancel_lru_policy(struct ldlm_namespace *ns, int flags)
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
@@ -1383,7 +1391,8 @@ static int ldlm_prepare_lru_list(struct ldlm_namespace *ns,
 	ldlm_cancel_lru_policy_t pf;
 	struct ldlm_lock *lock, *next;
 	int added = 0, unused, remained;
-	int no_wait = flags & (LDLM_LRU_FLAG_NO_WAIT | LDLM_LRU_FLAG_LRUR_NO_WAIT);
+	int no_wait = flags &
+		(LDLM_LRU_FLAG_NO_WAIT | LDLM_LRU_FLAG_LRUR_NO_WAIT);
 
 	spin_lock(&ns->ns_lock);
 	unused = ns->ns_nr_unused;
@@ -2034,7 +2043,8 @@ static void ldlm_cancel_unused_locks_for_replay(struct ldlm_namespace *ns)
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



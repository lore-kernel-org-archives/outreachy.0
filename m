X-GM-THRID: 6465879632669310976
X-Received: by 10.129.172.99 with SMTP id z35mr13154705ywj.171.1505457541005;
        Thu, 14 Sep 2017 23:39:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.201 with SMTP id n70ls6668171ioo.53.gmail; Thu, 14 Sep
 2017 23:39:00 -0700 (PDT)
X-Received: by 10.107.47.139 with SMTP id v11mr2497160iov.106.1505457540559;
        Thu, 14 Sep 2017 23:39:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505457540; cv=none;
        d=google.com; s=arc-20160816;
        b=T3I374keKnMlZ1BSVYKKIGNkZedmz+Lplt5dU8JhbOwzPdK+xryqN9RgRF23azufWf
         FTh31RF9FKQpS/F20S5FbcIZ3WTRJTeYaQUWkH175E0lQls6u1LZSoJngnA/jVOYBsvI
         vgsk0loorfOMMnbgE7noF3YgwhkMViaygX2QBMaeyJ4yjkecGJ3LKdjz0snACyA4HocO
         jOuP8NSOoflWRVDWRxZF12F4W0ybXTExJL4HB+qMlu+461hE1JvR1hzZupFsnysrt4at
         Zq+MQmZjInw/82APmUndFiAygyFzUdoklOfv1aN9E+lavxa07jdjOaI7Y0PnesPqOwHy
         T1qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=iNhpx08hXMgoSaNMcKanFOCehCAkY8yPpcAY1ars0kA=;
        b=WMoh4VC86WROEMzQ/Da5DuVE7uak/yvR44rFjNUUE1ouE1Op/DVSIKlb6CGzGZfW6c
         Zz4b0BVen3B3tpwVog3Xhh1N6hYDjf+mhBypcksTACfUl7gT2ZdUWGTbfiRhTnk4X3v3
         Vv78/NNxYZjjwAkZNtZcDK3iEYNUR81QR3iijMVc16zs6qDbnB8Bk3UAeoaeleGCIUbw
         2OtmhkefnmpN/2AFss9+XBFsEyQxagHP05Hore7SNiSwc3RIEduhYIXJaTj+PFI3lkk+
         pH5w683bph4YJdZTIFMlMWeDQkGc/pH2F6Fa/bqcrNeGKr/Jlxc0iVEhg7Gz9JpdI+Na
         POyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h40SfZbQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id v25si17613pfg.11.2017.09.14.23.39.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:39:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h40SfZbQ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id d8so884319pgt.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=iNhpx08hXMgoSaNMcKanFOCehCAkY8yPpcAY1ars0kA=;
        b=h40SfZbQRsLHD1hwGOugUHKQy2GCrpaoTShTdVgRV0W9THADPI+OrmoGDMwADeoYeU
         i/npVukC2AKYnZUVHGDWoh5N5HLwx9qNj/J3uVCzbz2n0DpYvVy+5aDnDjncdZ/VwWUu
         0TJUptgLwpPMOMq2Wl3dnEDXlhqyIRw0fc/iwFMKBBjrT89aqQy0Eq+ojddYNxU1WJ9P
         SE1V2NT5d9CI4Mp63Ar0dh/9dvYz1LYasRrmyjjUs848h6Dwwz2YbFpNfrf3TZASGN0Z
         nh5JoezNscF44ps/erEXIFyIueqz98AR+wmE5aKEYO3i46zl2dsXe7xp9dxCDR6DkyqC
         jnDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=iNhpx08hXMgoSaNMcKanFOCehCAkY8yPpcAY1ars0kA=;
        b=qDtDinvaB/FilNGZpgTdoqiAIZ2dfmt0K3yZQgkWVC+dPmfFX3bdTjBNBzFc+VKE0z
         ETQ/WvqdQIULO0kC4VkmjSNLgJs3NDrIev3fQ+M/moSesZpVKfUmlk4uiOYNaoZYNET5
         71/Hhtp4vdi9p6h234ULh76es+WZF3r7g16R6jzjo06d3QAnMGhydNwhssNztmMROsnQ
         idFAKjqkysS/1o+GjSCSOnMGy99I2vZX1zE7VHHmucEoExqW/gtxYfIk02E/VMvAQ+jp
         s3Tcb0/GbwF25Kh34YnUTu3FPVA4aEakxELMH5Cunme46G4bESbpVcmjphv+QyOcZI6c
         k53g==
X-Gm-Message-State: AHPjjUiNtqxOQOe3prKXr2N39u5i9DYwwoUZN2tnyxrUWGFeR9SQIYTo
	5u7HlEkeIkazhdCdQIg=
X-Google-Smtp-Source: AOwi7QCAvT4x6UVcLs0m9V8b42eXbqdGLgsLVjSnxfyL9h9CVgIZhZSfWfb0CNpdFU6hszXheYiB4A==
X-Received: by 10.98.144.155 with SMTP id q27mr2762849pfk.275.1505457540200;
        Thu, 14 Sep 2017 23:39:00 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id f88sm632574pfh.95.2017.09.14.23.38.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 23:38:59 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 7/8] staging: lustre: ldlm: fix lines over 80 characters in ldlm_request
Date: Fri, 15 Sep 2017 12:08:22 +0530
Message-Id: <4cfa0713948206743bc083e49ae14250e5517982.1505456961.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <alpine.DEB.2.20.1709150814460.2287@hadrien>
 <cover.1505456960.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <cover.1505456960.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c | 41 ++++++++++++++---------
 1 file changed, 26 insertions(+), 15 deletions(-)

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
-- 
2.7.4



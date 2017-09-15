X-GM-THRID: 6465879632669310976
X-Received: by 10.129.109.85 with SMTP id i82mr15222450ywc.196.1505455037939;
        Thu, 14 Sep 2017 22:57:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.210 with SMTP id f201ls6070054ioe.5.gmail; Thu, 14 Sep
 2017 22:57:17 -0700 (PDT)
X-Received: by 10.99.127.9 with SMTP id a9mr14852028pgd.81.1505454948613;
        Thu, 14 Sep 2017 22:55:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505454948; cv=none;
        d=google.com; s=arc-20160816;
        b=mRK3svh+POaM88KXTNxLF+dTFs6BR0p/1PxG3hbURFkRF2ksLY7wHyeoNUAGQwyPkc
         /H9BEg4WTi6w/5GYsKIYJ27Heh9GGCxo8LHG5+ON03Gzx6+30FMGIygbb8ZZPZ54QHs9
         i2E1M8Sd6L5nNOLS4xFU0PhEqekwKAYYLeM3LZtkU7ChXEokDVQ75LL6A9ekn1ceVNSK
         rT23K9469gohg9tGjVWsuOVHqTbbYN7IT4vbuEPyfbx7rv8KOceaGB7l2ORmQ+D6F5Jw
         Tvk2UD0o77zgDOW5ij91pbxRZi2EbnEwzZC14D1d+rPH2FXm9ipabQzPXSzAXFMRAGTN
         YkaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=iNhpx08hXMgoSaNMcKanFOCehCAkY8yPpcAY1ars0kA=;
        b=t1B3pW3hIrlmvf6aUjsUIrzERIwkf2GzezdcJjzsk6e611WKOxvA9wstM6vTyKSxXU
         bmhr3w0Z+UeVVR3o8hlgn27PntUAaJhXVWH+pQKUnvuJzb7QAkv0OYKn6QFs3/4oPeyj
         haj0Cg4+PKYANVhDdQgzi/KKAYOe8hfmVAdbNc63/86CWcP2jrq+OQ3nQC4R163YMZfU
         uFNDzp9M9yHW0AxUzwthuh+iZBZ3CRqd9PL2Z+R+juJlMghORikhYSztfC0fcbFSXe1E
         2IA27d6G38m7tcMGy/hlD4Lk54MyOxu4t06e2NPfzrz6q/m4+vYE5mAyjHnD2oWmE0F+
         U6Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FtC58nb1;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id t77si12259pfi.13.2017.09.14.22.55.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 22:55:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FtC58nb1;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v82so844485pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 22:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=iNhpx08hXMgoSaNMcKanFOCehCAkY8yPpcAY1ars0kA=;
        b=FtC58nb1/35T2jxXnU6UYNqFOfNLCacNdT+vIZiSS/A/W4NZvgz0roigxVBUP+h+Ub
         ZkBnWWbXq8cjcw3n9PxpDo6AGwqbkSMSrwHvNBrT7qLQcKAkq1lZZ/3gJJIEHRDIurdx
         YRMY83m7/m8jMJ5kpOKp4+pm9WRh2U9mus5nffPbFlAVJr6eCprw3zk28clqdmFrAIKE
         50lvSt4K6H/vfRVuFblLXlYTXD8uTdp3x8auxVjsTbm4EaMZ0c7x2B2Z7/xkQIWiqHb4
         OOMGRLjU8UTE7V7iuYqF2Rrkw+LdiSFYMfVJgNNxiNtF1S5m4jFWK/NVMTzdC7t2DVhM
         lkPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=iNhpx08hXMgoSaNMcKanFOCehCAkY8yPpcAY1ars0kA=;
        b=Ifos5QHZ204iRbZs06ds5hSctQwkD10DIVzFfRU6ADfj38DaRom1NhsM+y8aM5yh1w
         nWjKha72tej9kVXSsjJwWbDhkOkKQSlXh5IcN2vQ7XdxGAyk4QiSf9aMrAGU5vvdDsnB
         PedbDXG+gvr9zbrU4YiKXKsGuegM6hkhGis8tky7oZC7rzqrFPgtqS7WS6WQgVZ/fM96
         0AqDxL0NmgGux30VjGvR7waW85Q4dBiqqRsiTKeFvgc8whZFDUSzG/77daPJRF+KD9le
         mUnPyPyw/ldBUGV5gYU7deGDpwAeL+EO2OCADnzlHBaYsECXEDqoT3fcO8w9patDoOc1
         V03A==
X-Gm-Message-State: AHPjjUiUGSykPkXT+HHBSK9wM3LIP+yN71i+fhWCAdRV8Q0sXJfAfa8U
	R+8+Z8u6BjqwPw==
X-Google-Smtp-Source: ADKCNb7LQU/pZkgpzaWzN1Zy8MqBn9SwbbRh6PiSXCyNfIdJwAleEDNp2+IsZsJ+i5u6VsC7zJ2qgA==
X-Received: by 10.84.228.207 with SMTP id y15mr25687167pli.301.1505454948219;
        Thu, 14 Sep 2017 22:55:48 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id l131sm437101pga.24.2017.09.14.22.55.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 22:55:47 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 7/8] staging: lustre: ldlm: fix lines over 80 characters
Date: Fri, 15 Sep 2017 11:25:07 +0530
Message-Id: <834db6f66fad29a6b01fff9d37357854b8c0a9bb.1505454643.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>

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



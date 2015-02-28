X-GM-THRID: 5152931053568
X-Received: by 10.180.87.166 with SMTP id az6mr1307287wib.1.1425151446667;
        Sat, 28 Feb 2015 11:24:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.245.4 with SMTP id xk4ls13791lac.78.gmail; Sat, 28 Feb
 2015 11:24:06 -0800 (PST)
X-Received: by 10.152.6.41 with SMTP id x9mr2829347lax.10.1425151446205;
        Sat, 28 Feb 2015 11:24:06 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id ta1si352257wic.1.2015.02.28.11.24.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 11:24:06 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id bs8so6866356wib.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 11:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9ui0uc+F7ztMT+ZUKWa9QiNm++F1y+ISHoXnIwVxhRo=;
        b=sXQi0f6duGoz7R6e8gqCVM83U/2C//SL+DLIvI1xkFZEJiDN2O2eqtxEj9WHz6h7Fc
         caWuVy15Jx0R4sYrfiz/2HRh/AX8XZet2vixR/dNjUyROIpMvNRJDWR9pjiChWjGRVeJ
         B8afiePFlsZA87uiHa5AtBDe493zPMicsL730ODfIriB0Zw4RY2vMQIm5uUUvhrz1Cfe
         doAgyDmfwiRg/r2THJvmMXcQ0bLWlpWOCf584UhuXB/rrHkOz8rkjAT5HNG7FBz024vw
         EPHPlQhaW+trUCxLOqN3gx6v43udGrUSGkiIlQ0zb4uFE0INIM0vYg7BrdlfH7sX9Q6k
         RNqg==
X-Received: by 10.194.158.234 with SMTP id wx10mr42000890wjb.23.1425151446100;
        Sat, 28 Feb 2015 11:24:06 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id n3sm11348968wja.36.2015.02.28.11.24.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 11:24:05 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id DCFF763456; Sat, 28 Feb 2015 22:23:58 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 4/5] Staging: lustre: lustre: ldlm: Remove unnecessary else after return
Date: Sat, 28 Feb 2015 22:23:05 +0300
Message-Id: <1425151385-31082-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425150717-30750-1-git-send-email-hamohammed.sa@gmail.com>

This patch fix else is not usefull after break or return.
Issue addressed by checkpatch.pl

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_lib.c   |  4 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c  | 10 +++++-----
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c | 17 ++++++++---------
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c  |  3 +--
 4 files changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lib.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lib.c
index c5c86e7..7bcae30 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lib.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lib.c
@@ -668,10 +668,10 @@ int target_send_reply_msg(struct ptlrpc_request *req, int rc, int fail_id)
 		DEBUG_REQ(D_NET, req, "processing error (%d)", rc);
 		req->rq_status = rc;
 		return ptlrpc_send_error(req, 1);
-	} else {
-		DEBUG_REQ(D_NET, req, "sending reply");
 	}
 
+	DEBUG_REQ(D_NET, req, "sending reply");
+
 	return ptlrpc_send_reply(req, PTLRPC_REPLY_MAYBE_DIFFICULT);
 }
 
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
index bd8d458..28f2639 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
@@ -932,7 +932,8 @@ static void search_granted_lock(struct list_head *queue,
 			prev->mode_link = &mode_end->l_sl_mode;
 			prev->policy_link = &req->l_sl_policy;
 			return;
-		} else if (lock->l_resource->lr_type == LDLM_IBITS) {
+		}
+		if (lock->l_resource->lr_type == LDLM_IBITS) {
 			for (;;) {
 				policy_end =
 					list_entry(lock->l_sl_policy.prev,
@@ -968,11 +969,10 @@ static void search_granted_lock(struct list_head *queue,
 			prev->mode_link = &mode_end->l_sl_mode;
 			prev->policy_link = &req->l_sl_policy;
 			return;
-		} else {
-			LDLM_ERROR(lock,
-				   "is not LDLM_PLAIN or LDLM_IBITS lock");
-			LBUG();
 		}
+		LDLM_ERROR(lock,
+				"is not LDLM_PLAIN or LDLM_IBITS lock");
+		LBUG();
 	}
 
 	/* insert point is last lock on the queue,
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
index cd15445..4abca14 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c
@@ -456,16 +456,15 @@ static int ldlm_bl_to_thread(struct ldlm_namespace *ns,
 		init_blwi(blwi, ns, ld, cancels, count, lock, cancel_flags);
 
 		return __ldlm_bl_to_thread(blwi, cancel_flags);
-	} else {
-		/* if it is synchronous call do minimum mem alloc, as it could
-		 * be triggered from kernel shrinker
-		 */
-		struct ldlm_bl_work_item blwi;
-
-		memset(&blwi, 0, sizeof(blwi));
-		init_blwi(&blwi, ns, ld, cancels, count, lock, cancel_flags);
-		return __ldlm_bl_to_thread(&blwi, cancel_flags);
 	}
+	/* if it is synchronous call do minimum mem alloc, as it could
+	* be triggered from kernel shrinker
+	*/
+	struct ldlm_bl_work_item blwi;
+
+	memset(&blwi, 0, sizeof(blwi));
+	init_blwi(&blwi, ns, ld, cancels, count, lock, cancel_flags);
+	return __ldlm_bl_to_thread(&blwi, cancel_flags);
 }
 
 
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index 54e2478..bfdb2b3 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -1363,8 +1363,7 @@ static int ldlm_pools_thread_main(void *arg)
 
 		if (thread_test_and_clear_flags(thread, SVC_STOPPING))
 			break;
-		else
-			thread_test_and_clear_flags(thread, SVC_EVENT);
+		thread_test_and_clear_flags(thread, SVC_EVENT);
 	}
 
 	thread_set_flags(thread, SVC_STOPPED);
-- 
1.9.1



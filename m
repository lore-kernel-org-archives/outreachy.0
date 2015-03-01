X-GM-THRID: 5221884362752
X-Received: by 10.180.87.166 with SMTP id az6mr1393001wib.1.1425169527362;
        Sat, 28 Feb 2015 16:25:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.71 with SMTP id fu7ls345041wib.29.canary; Sat, 28 Feb
 2015 16:25:27 -0800 (PST)
X-Received: by 10.180.11.34 with SMTP id n2mr1317785wib.2.1425169527096;
        Sat, 28 Feb 2015 16:25:27 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id ta1si387159wic.1.2015.02.28.16.25.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:25:27 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id h11so7558827wiw.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 16:25:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Q0lI/elL3c66otud+uhNBM1jh3yxoCebK72hAz+5bmk=;
        b=BanMu9tlR09okcKmH83K22Lw6mLEml4dCjhmsf0a3XCAo2kwGJ0bXJ51XZRiYtfdKC
         FjoGcXOFsZ8f8yfSvfS8TjzPWCTx6Yos5pLiqOdHWva5cxGmYgLrQXzEhB9Nl41fWKf/
         tqNfGA1MZIiRMaNofGd0XY4SADYV2RAftEc/LMsH9rcA2Wl6fklScY00t4CL2hHFu+OQ
         8OH2s/I9ux403qPoGMsr544j8kgPZeV5zyc6CXEnzxQ/69dDtIGWxTYup7O54RMTuxvo
         THhZyzL+TKrR1CkfS5eK7rTMQG6eiTPrz7hrzsoG2SVWkI7e1vnykgdLe1b9lsZpswtY
         o8QA==
X-Received: by 10.180.79.227 with SMTP id m3mr21535546wix.3.1425169526990;
        Sat, 28 Feb 2015 16:25:26 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id v16sm9126349wib.5.2015.02.28.16.25.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 16:25:26 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id CAA7C63424; Sun,  1 Mar 2015 03:25:24 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 4/5] Staging: lustre: Remove unnecessary else after return
Date: Sun,  1 Mar 2015 03:25:23 +0300
Message-Id: <1425169523-20232-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425161054-19092-1-git-send-email-hamohammed.sa@gmail.com>

This patch fix else is not useful after break or return.
Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v3: unmodified the removal of an else statement for it introduces "mixed declaration and code" warning.

 drivers/staging/lustre/lustre/ldlm/ldlm_lib.c  |  4 ++--
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c | 10 +++++-----
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c |  3 +--
 3 files changed, 8 insertions(+), 9 deletions(-)

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



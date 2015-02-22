X-GM-THRID: 1526974119936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7ff0cbb979278efc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.77.101 with SMTP id r5mr686065lbw.4.1424600331765;
        Sun, 22 Feb 2015 02:18:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.23.71 with SMTP id k7ls454292laf.9.gmail; Sun, 22 Feb 2015
 02:18:51 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr681054lbc.22.1424600331423;
        Sun, 22 Feb 2015 02:18:51 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id ev8si447926wib.3.2015.02.22.02.18.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 02:18:51 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f179.google.com with SMTP id hi2so11010830wib.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 02:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jHLFdcBtNqGoBQLUw/edvGkPcgVLSMgF0DZQlpEpCBE=;
        b=UGBs5t+cv8OBfxkiBsblUbVjmJVsqzSkruzVMvizlTwE7gnkWfnE3WAy17luevhDb7
         5I+tW5IZbcSbbNoe5Qhx6pfMUlRt6RiLJFFncNBkbIp8cbNg2xmTbMRXLifGoFe/D6TM
         BRvINc7MxMInnsQDf6f/RYl4gSnkNfAKZyx5EY2gp5ZVyCObvKfUNOBEXAtkOkDZSzMQ
         BGxU13MiopRMMx+H9bLc45qmuAGVWO0rMOvlYx/MRyyVCzjTZs3QysWQP9Y1aRGS5ceC
         e5ioOW9bG8fCUwO3w+XwEqiRbH81d78NuhdTnqNSK5JZqgYEqX2oZ8eWqszwBqGnnb98
         w/Kw==
X-Received: by 10.194.122.196 with SMTP id lu4mr11966718wjb.154.1424600331306;
        Sun, 22 Feb 2015 02:18:51 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id a1sm10757738wiy.10.2015.02.22.02.18.49
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 02:18:50 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 2/2] Staging: lustre: Remove return in void function
Date: Sun, 22 Feb 2015 12:18:05 +0200
Message-Id: <1424600285-20827-2-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424600285-20827-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424600285-20827-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: void function return statements are not generally useful
Remove return in void function.That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/framework.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/framework.c b/drivers/staging/lustre/lnet/selftest/framework.c
index a93a90d..729069c 100644
--- a/drivers/staging/lustre/lnet/selftest/framework.c
+++ b/drivers/staging/lustre/lnet/selftest/framework.c
@@ -173,7 +173,6 @@ sfw_add_session_timer(void)
 	timer->stt_expires = cfs_time_add(sn->sn_timeout,
 					  get_seconds());
 	stt_add_timer(timer);
-	return;
 }
 
 static int
@@ -298,7 +297,6 @@ sfw_server_rpc_done(struct srpc_server_rpc *rpc)
 
 	if (rpc->srpc_bulk != NULL)
 		sfw_free_pages(rpc);
-	return;
 }
 
 static void
@@ -604,7 +602,6 @@ sfw_unload_test(struct sfw_test_instance *tsi)
 	 * some buffers behind, but never mind... */
 	srpc_service_remove_buffers(tsc->tsc_srv_service,
 				    sfw_test_buffers(tsi));
-	return;
 }
 
 static void
@@ -638,7 +635,6 @@ sfw_destroy_test_instance(sfw_test_instance_t *tsi)
 clean:
 	sfw_unload_test(tsi);
 	LIBCFS_FREE(tsi, sizeof(*tsi));
-	return;
 }
 
 static void
@@ -657,7 +653,6 @@ sfw_destroy_batch(sfw_batch_t *tsb)
 	}
 
 	LIBCFS_FREE(tsb, sizeof(sfw_batch_t));
-	return;
 }
 
 void
@@ -677,7 +672,6 @@ sfw_destroy_session(sfw_session_t *sn)
 
 	LIBCFS_FREE(sn, sizeof(*sn));
 	atomic_dec(&sfw_data.fw_nzombies);
-	return;
 }
 
 static void
@@ -722,7 +716,6 @@ sfw_unpack_addtest_req(srpc_msg_t *msg)
 	}
 
 	LBUG();
-	return;
 }
 
 static int
@@ -860,7 +853,6 @@ sfw_test_unit_done(sfw_test_unit_t *tsu)
 	spin_unlock(&sfw_data.fw_lock);
 
 	sfw_destroy_session(sn);
-	return;
 }
 
 static void
@@ -896,7 +888,6 @@ sfw_test_rpc_done(srpc_client_rpc_t *rpc)
 	}
 
 	sfw_test_unit_done(tsu);
-	return;
 }
 
 int
@@ -1556,7 +1547,6 @@ sfw_unpack_message(srpc_msg_t *msg)
 	}
 
 	LBUG();
-	return;
 }
 
 void
@@ -1568,7 +1558,6 @@ sfw_abort_rpc(srpc_client_rpc_t *rpc)
 	spin_lock(&rpc->crpc_lock);
 	srpc_abort_rpc(rpc, -EINTR);
 	spin_unlock(&rpc->crpc_lock);
-	return;
 }
 
 void
@@ -1585,7 +1574,6 @@ sfw_post_rpc(srpc_client_rpc_t *rpc)
 	srpc_post_rpc(rpc);
 
 	spin_unlock(&rpc->crpc_lock);
-	return;
 }
 
 static srpc_service_t sfw_services[] = {
@@ -1800,5 +1788,4 @@ sfw_shutdown(void)
 		LIBCFS_FREE(tsc, sizeof(*tsc));
 	}
 
-	return;
 }
-- 
1.8.3.2



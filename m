X-GM-THRID: 4799843008512
X-Received: by 10.112.224.12 with SMTP id qy12mr1310245lbc.10.1425072427944;
        Fri, 27 Feb 2015 13:27:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.68 with SMTP id y4ls199434wix.19.canary; Fri, 27 Feb
 2015 13:27:07 -0800 (PST)
X-Received: by 10.180.13.195 with SMTP id j3mr772349wic.2.1425072427564;
        Fri, 27 Feb 2015 13:27:07 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id ev8si187942wib.3.2015.02.27.13.27.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 13:27:07 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id bs8so3158941wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 13:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=MqQkFPmS+t0C4R17kRKZ9fK596LM0j1BYdZeaZjt+3Q=;
        b=J10GcIZz+vHxL3NRBRnZBdEVslVTL61NGGLq3lJB58kqdaKek3SzznvvnwpieSk5FP
         G2mOO3DbVUCLue362XGDPeVimK3f+pohE2XeeYXecefwGpKbQSnGYuseKi4LU3RrCGxc
         lzvaJKgGniMgfLGAOhUS4e02Do8wTGSkt70b8D1WW+q1HJUbB9eBNAqPi9oQk3UZECSp
         stJ7w3O3Qpm0yjtK40VlHOgHYgL7DbgFqGKrFvXR6j0isPAd4bNAge0JfbQ4yUFHnBye
         hDYXNv8ju4fEo2v0f8Cd7ucvh2+ORvk6JFr5J8a4vv8XEQxF3/wCa/ezUwBz8mvQdr5F
         OWSw==
X-Received: by 10.194.94.1 with SMTP id cy1mr31159963wjb.127.1425072427504;
        Fri, 27 Feb 2015 13:27:07 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id k6sm4484266wia.6.2015.02.27.13.27.05
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 13:27:06 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 2/3] Staging: lustre: Deleted space prohibited between function name and open parenthesis
Date: Fri, 27 Feb 2015 23:25:55 +0200
Message-Id: <1425072356-1314-3-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1425072356-1314-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1425072356-1314-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: space prohibited between function name and open parenthesis '('
Remove unnecessary space between function name and opening parenthesis.
That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
index 7fe2e58..a66dc3c 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
+++ b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
@@ -76,7 +76,7 @@ void ptlrpc_initiate_recovery(struct obd_import *imp);
 int lustre_unpack_req_ptlrpc_body(struct ptlrpc_request *req, int offset);
 int lustre_unpack_rep_ptlrpc_body(struct ptlrpc_request *req, int offset);
 
-#if defined (CONFIG_PROC_FS)
+#if defined(CONFIG_PROC_FS)
 void ptlrpc_lprocfs_register_service(struct proc_dir_entry *proc_entry,
 				     struct ptlrpc_service *svc);
 void ptlrpc_lprocfs_unregister_service(struct ptlrpc_service *svc);
@@ -263,7 +263,7 @@ void sptlrpc_enc_pool_fini(void);
 int sptlrpc_proc_enc_pool_seq_show(struct seq_file *m, void *v);
 
 /* sec_lproc.c */
-#if defined (CONFIG_PROC_FS)
+#if defined(CONFIG_PROC_FS)
 int  sptlrpc_lproc_init(void);
 void sptlrpc_lproc_fini(void);
 #else
-- 
1.8.3.2



X-GM-THRID: 4799843008512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,37879575871abf20
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.91.76 with SMTP id cc12mr752292wib.7.1425069800390;
        Fri, 27 Feb 2015 12:43:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.131 with SMTP id am3ls227821lac.35.gmail; Fri, 27 Feb
 2015 12:43:19 -0800 (PST)
X-Received: by 10.112.161.9 with SMTP id xo9mr2370892lbb.7.1425069799981;
        Fri, 27 Feb 2015 12:43:19 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id l8si227397wia.0.2015.02.27.12.43.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:43:19 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id l18so22649119wgh.7
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RkmAQTX9V9TVNor2UL19JFTM98oZo+bqbQzgSCxsQPE=;
        b=Vbmw5dJ0NfeRi+Y4W1cjd5U5cawjUoKz+q2zSOA/zBcP74Pp30KVquoQzOOspBxWlB
         9nq3dAPEJ8verNYyOutxSIP0/C/rXVvEV4wh/CGC5H7H5OsLTB74ML1A5Whvt9Y9xnZR
         x5CpP7ZtK0rKIEXgYSfyByh9kHITlDEq47kxFYFtdNZXRvVWAgctRsLUDJFh2VK0U90X
         WzIPxjNPMMODEUO4hmEJhMGeRb9bMDL2emgWODLYm7wkUNtxBDh3M3JRI64x1Fkiphb0
         1pM19srTzYsChh7vtwIJvDA0h5Ubl8v9vw+v1hyOYEJMzrA6JDF+TEw0Pbs/3mDJBrqx
         Cknw==
X-Received: by 10.194.202.162 with SMTP id kj2mr21545550wjc.19.1425069799886;
        Fri, 27 Feb 2015 12:43:19 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id fo15sm4330473wic.19.2015.02.27.12.43.18
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 12:43:19 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 1/3] Staging: lustre: Added const
Date: Fri, 27 Feb 2015 22:42:09 +0200
Message-Id: <1425069731-30165-2-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1425069731-30165-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1425069731-30165-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: struct file_operations should normally be const.
That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index 0e2071b..bc0e8e4 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -1083,7 +1083,7 @@ void ptlrpc_lprocfs_register_service(struct proc_dir_entry *entry,
 		 .data	     = svc},
 		{NULL}
 	};
-	static struct file_operations req_history_fops = {
+	static const struct file_operations req_history_fops = {
 		.owner       = THIS_MODULE,
 		.open	= ptlrpc_lprocfs_svc_req_history_open,
 		.read	= seq_read,
-- 
1.8.3.2



X-GM-THRID: 4799843008512
X-Received: by 10.194.221.65 with SMTP id qc1mr2314711wjc.7.1425066736510;
        Fri, 27 Feb 2015 11:52:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.13 with SMTP id n13ls214236laa.80.gmail; Fri, 27 Feb
 2015 11:52:16 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr2292648lbo.8.1425066736216;
        Fri, 27 Feb 2015 11:52:16 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id cl5si180419wib.3.2015.02.27.11.52.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:52:16 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so2659706wiw.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=dHnfi44NKQ0B97ViCqG5rVZyjfYx0xsIA0o1vECDXZU=;
        b=E1rWC9lIa72mO9nq/dwmq79fUnBgiowOLRk9Ek/uc8PaL2Qs9kv8nq/loqtdAcUelg
         uz7UlkVMskDCYjwutF9WNwV3cuh4OeZ61GWZ872Bm3reCRz3M5A8ZT8b6Xyjj1/XKX8h
         Ach3p3CZ8QBAC3SjzUM+BsE+bMGl4t2Q6PUzA9crim8opqjgcd54mSLjZDc+ExMbUbSg
         XObc4kBSTScLHg3vG/zNsfHK60SOazHh6Gs7rQXV4T9ut4hjCRH4Qujncisj4jdqb+HT
         jn1apPsC67xWpwed27WWJX2GAPNRSgTX/sPSdSiyk/4HatxHhd0TBzyfhYDClK0SbT2I
         gGsA==
X-Received: by 10.194.192.4 with SMTP id hc4mr31628913wjc.59.1425066736126;
        Fri, 27 Feb 2015 11:52:16 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id vq9sm7356804wjc.6.2015.02.27.11.52.14
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 11:52:15 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 1/3] Staging: lustre: Remove return in void function
Date: Fri, 27 Feb 2015 21:51:02 +0200
Message-Id: <1425066664-25535-2-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1425066664-25535-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1425066664-25535-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: void function return statements are not generally useful
Remove return in void function. That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/client.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
index 4882dd0..0f83492 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
@@ -468,7 +468,6 @@ void ptlrpc_add_rqs_to_pool(struct ptlrpc_request_pool *pool, int num_rq)
 		list_add_tail(&req->rq_list, &pool->prp_req_list);
 	}
 	spin_unlock(&pool->prp_lock);
-	return;
 }
 EXPORT_SYMBOL(ptlrpc_add_rqs_to_pool);
 
-- 
1.8.3.2



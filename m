X-GM-THRID: 4799843008512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,37879575871abf20
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.146.65 with SMTP id ta1mr2316784lbb.19.1425066739219;
        Fri, 27 Feb 2015 11:52:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.188.172 with SMTP id gb12ls188659wic.21.gmail; Fri, 27 Feb
 2015 11:52:18 -0800 (PST)
X-Received: by 10.180.182.201 with SMTP id eg9mr723587wic.3.1425066738963;
        Fri, 27 Feb 2015 11:52:18 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id ew5si188363wid.1.2015.02.27.11.52.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:52:18 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id r20so2683191wiv.2
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7x7qSWei4U95z2YXli2T1qM7066h0HN1NNOndsX2yzU=;
        b=ZdXYYO6cHil9oVFrjx8hudKkFlu7XIY0ivRRVcfotxF2bkt5mJJPyC31aMs3AzsGyl
         h4wfFYmirVQFVa4JAowNW9Agd9MjUA9+QiKFprHTxH5aJ8zqem10fEi31qex6WcCc3Lt
         tw+66ULEyNglaDKwTEw5xYjjdW5SqNkZG/8BwDdMa9h5wUXo3nl5B6FHhsh8xrIz7fx0
         Pn8d15Vu6GwcKO86Pl1Tph+x9TDE3eH9DEeuJRKzNh4ZCagOqsNxzaKiDLkFF9LmxcPS
         kMvXgZdjvqXHKtHSowsi7RlJA5LlZhP6mR9RJBU65zPtAlUkzqJGJLycsBxjr6dcviVM
         k6lw==
X-Received: by 10.180.12.233 with SMTP id b9mr9525913wic.49.1425066738896;
        Fri, 27 Feb 2015 11:52:18 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id vq9sm7356804wjc.6.2015.02.27.11.52.17
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 11:52:18 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 2/3] Staging: lustre: Remove unnecessary else after return
Date: Fri, 27 Feb 2015 21:51:03 +0200
Message-Id: <1425066664-25535-3-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1425066664-25535-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1425066664-25535-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: else is not generally useful after a break or return
Remove unnecessary else after return. That was found by running
checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/client.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
index 0f83492..2ccb72a 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
@@ -1438,12 +1438,11 @@ static int ptlrpc_send_new_req(struct ptlrpc_request *req)
 		if (req->rq_err) {
 			req->rq_status = rc;
 			return 1;
-		} else {
-			spin_lock(&req->rq_lock);
-			req->rq_wait_ctx = 1;
-			spin_unlock(&req->rq_lock);
-			return 0;
 		}
+		spin_lock(&req->rq_lock);
+		req->rq_wait_ctx = 1;
+		spin_unlock(&req->rq_lock);
+		return 0;
 	}
 
 	CDEBUG(D_RPCTRACE, "Sending RPC pname:cluuid:pid:xid:nid:opc %s:%s:%d:%llu:%s:%d\n",
-- 
1.8.3.2



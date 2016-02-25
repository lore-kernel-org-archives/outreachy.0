X-GM-THRID: 6254957171854802944
X-Received: by 10.182.118.169 with SMTP id kn9mr41402077obb.11.1456401903757;
        Thu, 25 Feb 2016 04:05:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.248.137 with SMTP id ym9ls173370obc.87.gmail; Thu, 25 Feb
 2016 04:05:03 -0800 (PST)
X-Received: by 10.182.118.169 with SMTP id kn9mr41402056obb.11.1456401903457;
        Thu, 25 Feb 2016 04:05:03 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id u66si1218427pfa.2.2016.02.25.04.05.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 04:05:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so2598858pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 04:05:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=JOzj2/cTvc3mpMUs03RlTfAM708WjxDmpcLre3+nhQE=;
        b=w7ckRBwahqW6gIpJYN6oOqcny+Npbo19YMxYORzGau3Ashnr5jBGNZYFhzhuPQZnNU
         cE92H+Ev4O2hkrq6BEYd0k4aEnHIa0mvBYMQpe8Rc7k6mKzNRjpN9Un9rtNIgNtDM9uV
         nyupdlpMkxr8wOs6rSpqy4CWr05aU5LvHH4V4x2mDYduo0rQqH23SJOh1XJght44xGS1
         ysAAmN08fQILzsDdDGJnuG37jXk/XOj2G1pb/XhmippSxs0yBntE0t5RRffcHNfQhpa9
         29uVojZKov49DMhtfbeI1+Izlmvv2TGrOyjrnVArlOZKQxjbW9LXlzKZrHP0qJVs1ZZp
         fQaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=JOzj2/cTvc3mpMUs03RlTfAM708WjxDmpcLre3+nhQE=;
        b=boIIiAWmDyJBoR0E+7mZ+mIr2M8PNLKPjo0iFBgWJve6bD7WIKeDzlgAv9kKoxhkY/
         J4ufpz/s1kKBZ2mYiwjVui7JLhULTiKPKti7h4n76UjoXhK8HGlvhB25ZpKWBrd/L+ej
         HgkQBOp6/7S0U9M1CxOdISGVxHJQJObyGLjVR7y9A0898tJ4AjJATRinmxaY1x+67fwx
         5r/OzfqBLeI677WEfsmF/R9/eO/0g4oDfcAUkxbPVDBAWtS63akc77EwwaXRBaAzCvn3
         3SA5yRUspX5kpPhoSYncJ2jjuoNyw8NNtO2z0HsEVo1LFJ+E/ZzKuT7kERBeJrkoDe8s
         okig==
X-Gm-Message-State: AG10YOTAtodWlfJ2FUH1863NevwaR+BmqHk6C/IJZVKSk8fXefPSmioQNiS44izeLbWXGQ==
X-Received: by 10.67.8.100 with SMTP id dj4mr62421174pad.88.1456401903292;
        Thu, 25 Feb 2016 04:05:03 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ra1sm11943567pab.24.2016.02.25.04.05.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 04:05:02 -0800 (PST)
Date: Thu, 25 Feb 2016 17:35:37 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 8/8] staging: lusture: ptlrpc: Remove useless return
 variables
Message-ID: <20160225120537.GA5653@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:
@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-No change

 drivers/staging/lustre/lustre/ptlrpc/client.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
index 9b89068..031502e 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
@@ -421,10 +421,7 @@ void ptlrpc_request_cache_fini(void)

 struct ptlrpc_request *ptlrpc_request_cache_alloc(gfp_t flags)
 {
-	struct ptlrpc_request *req;
-
-	req = kmem_cache_alloc(request_cache, flags | __GFP_ZERO);
-	return req;
+	return kmem_cache_alloc(request_cache, flags | __GFP_ZERO);
 }

 void ptlrpc_request_cache_free(struct ptlrpc_request *req)
--
2.1.4



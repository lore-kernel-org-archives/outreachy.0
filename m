X-GM-THRID: 6254957171854802944
X-Received: by 10.182.72.137 with SMTP id d9mr38468401obv.31.1456345704383;
        Wed, 24 Feb 2016 12:28:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.130 with SMTP id p124ls171954iop.68.gmail; Wed, 24 Feb
 2016 12:28:24 -0800 (PST)
X-Received: by 10.66.141.102 with SMTP id rn6mr39021611pab.26.1456345704036;
        Wed, 24 Feb 2016 12:28:24 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id u66si707876pfa.2.2016.02.24.12.28.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:28:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so1517759pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 12:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+yIpa5jyWH6bNEpPzo5NCqeT9vRXaVZm6dXFtRpt2rc=;
        b=M6yznv9liC1nK9GtiPBu6RnQn5FELmLfIIo/xQEtK9yEhiAAdCSynwJPYqrN5Qq5Sv
         BlHnlF49UAvP/uK0FfCQ1HEq8uO9DnF+V7a07M9Tw7LxS7Be2FzqDXver89NxNwfvZty
         LCBcge7XXDMT9mh4NbxTDHRb2J84BEzaxZ6xtRpwtdXB8O5IjrxYxxzgZb5Le/bUG0nY
         te9V8b8/aHe7yK5h5LD44wSThB8SnrXDJ0MQI8I9SMMF/cPDQwmfTK2oXo7BOYW8z2++
         8HDWMblK7Lo4UeFvzMALelzOOhaZ25pxf/YbQC2KK6BYvtBVriiCtjfCbxdjW611DaEq
         kgfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=+yIpa5jyWH6bNEpPzo5NCqeT9vRXaVZm6dXFtRpt2rc=;
        b=CDvzPadxlWW4uevqmgqBMMkg1MVsecY9+NZxSdv90cSGjkGDT5iHNGplXpGXLkifo9
         t6yQkLAcOOVURONyy0VPRXfSX0OHjoWZOy8Eyy8CaCzX2weHqA+ZaePxCs1CvMb8lyaK
         GX6Y9qcBQRrLFop1pxw5FjCdHKzMKeIPD9uxUZxyhKV9845LwiMF6QWog1d4sKe8aBl+
         TlhOP9vx50b07LNi6hDACFr845uaHq3BjJIWZmXqmPcMShV9dbOqHPK31sMErwg+vKZY
         9LrkTCJYLDxM7Y9jwtr5pJmpw8XTtUiqsByumooqfS8mSOohVDQACoW0ZIY/mTmZtwNx
         BaOA==
X-Gm-Message-State: AG10YORprA9tFrUDoB8JVd/2nrpS4Xz2NTpwwPhhoCtblCjU5ECThxir4Q9YmheRe0PzGA==
X-Received: by 10.66.191.202 with SMTP id ha10mr57863965pac.8.1456345703912;
        Wed, 24 Feb 2016 12:28:23 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l24sm6960602pfb.73.2016.02.24.12.28.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 12:28:23 -0800 (PST)
Date: Thu, 25 Feb 2016 01:58:58 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 8/8] staging: lusture: ptlrpc: Remove useless return variables
Message-ID: <20160224202858.GA23036@Karyakshetra>
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



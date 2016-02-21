X-GM-THRID: 6253796107454775296
X-Received: by 10.107.44.67 with SMTP id s64mr7439570ios.29.1456075372697;
        Sun, 21 Feb 2016 09:22:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.138 with SMTP id w10ls372797igl.32.gmail; Sun, 21 Feb
 2016 09:22:52 -0800 (PST)
X-Received: by 10.107.62.8 with SMTP id l8mr24575563ioa.11.1456075372356;
        Sun, 21 Feb 2016 09:22:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id 12si2688582pfb.1.2016.02.21.09.22.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 09:22:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id e127so79398293pfe.3
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 09:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=GFsmb+8lRWVlicKMWRkSF5d2JTSElgWYgEmksNzRe8o=;
        b=fju8wiEFR1ttjQiQC7yvSIf38PP+GJn1ngJx6htJ9n5bG0UMP1QPWtB159mU+gk4TC
         Ue648E67Q0cx+4CRy2tVvBbuuWL3pvv0U6Wp4bIwXeicQMZJMkWbgm4VD2OL4rkmseip
         czoulbVmzatXGMysPh3z07AaBLsNlTnedtjBtPGQ67g09LioqK5zTX4OKuDjlsPxR00M
         EnNYgUPDbQdDvP0O0kuInx/06DNCP+Va7ZFKUr+DuH94AmQ2Q2WB5HtQZyj8bvzAcp8F
         oEFQX20WFoo5tyLbmyj/et/VF0rB7hcpjP5Wa6qNBaClfTK10nedJUpsgcx53Zw7143R
         IHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=GFsmb+8lRWVlicKMWRkSF5d2JTSElgWYgEmksNzRe8o=;
        b=BXQaKEBltk3fkOSBrDPSCJtpxWUrMrG5XRu3VqoM2WKgNWdbhuOAu8npTWSv8zqLxN
         /aG9i9PwME83JjtMzx3K6rV1vUm1CGRtAJzEml3MOrYUlyBOLXrasFhkg6lQVxBB7RZF
         vPIRtF+LuWN94QCCPtVCa7pb8WBPGXnx7JlXyNMFVTr0LE6wFk+51Q5wLbNbigGQlrIZ
         29IRHzCpkMMgU9QaitYmNJWMUbbcv2q75XF8EStJatPKC74DKIYQ3xmBhr2iK6SiQvMK
         QRPC9Mw9Lq4rVV3Emf5iEDu2ab9JiT8JXAlmk4ne8MXml8O3enqXvufJl62joi72gjAT
         JhMg==
X-Gm-Message-State: AG10YOTNDsMxoX118gyW2EraKvJalzcQN3BEMDbnP3hLl3eAHYUGO2jjnZwTp67XkLZv+Q==
X-Received: by 10.98.16.85 with SMTP id y82mr32178260pfi.90.1456075372243;
        Sun, 21 Feb 2016 09:22:52 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id wh9sm31313605pab.8.2016.02.21.09.22.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 09:22:51 -0800 (PST)
Date: Sun, 21 Feb 2016 22:53:25 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lusture: ptlrpc: Prefer using macro DIV_ROUND_UP
Message-ID: <20160221172324.GA345@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/niobuf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
index 47f53b4..9f8111a 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
@@ -160,7 +160,7 @@ static int ptlrpc_register_bulk(struct ptlrpc_request *req)
 		 "registered: %d  rq_xid: %llu bd_last_xid: %llu\n",
 		 desc->bd_registered, xid, desc->bd_last_xid);

-	total_md = (desc->bd_iov_count + LNET_MAX_IOV - 1) / LNET_MAX_IOV;
+	total_md = DIV_ROUND_UP(desc->bd_iov_count, LNET_MAX_IOV);
 	desc->bd_registered = 1;
 	desc->bd_last_xid = xid;
 	desc->bd_md_count = total_md;
--
2.1.4



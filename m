X-GM-THRID: 6255532991219499008
X-Received: by 10.98.68.194 with SMTP id m63mr374091pfi.7.1456479772288;
        Fri, 26 Feb 2016 01:42:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.43 with SMTP id h40ls920813qge.39.gmail; Fri, 26 Feb
 2016 01:42:51 -0800 (PST)
X-Received: by 10.129.27.3 with SMTP id b3mr408055ywb.0.1456479771671;
        Fri, 26 Feb 2016 01:42:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r75si266271pfr.0.2016.02.26.01.42.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 01:42:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e127so4422032pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 01:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kAqEY8jeVWmmyTgaD4PpFipXL0lH3ObLtHEBSr7Shqs=;
        b=XVREKbi+yNBca14HH8JCE4hqx9V5p2QbC8d77mzaEZNUcMDNJKmCn3V6AlfoBHzJSR
         OpmcuQVM9nPLENxRsatz/sxGP1QYXbQrCeeeGd5HJhSf3Wm1OW7uP4FE3Y28dlCZAU91
         uvW1gwnNxj95yYNYYX7leC9+RJIbpIfU6E/PsTXWuhQlsbFHM+y0IL7OvhjI4Lm/cDIk
         9khDGTx4OZ4MUVu357ya2fn11BdLDuWP12mVb8Fkd8sP+1nx4iECwkhyFoIM6vYOH+1I
         bJU4VpZKjyDzTwP23FqSLUOpCiQe6NF+W0nhIwQ6VPDxULZ+p/AB5cUF5G7eNs08DoIR
         H7xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kAqEY8jeVWmmyTgaD4PpFipXL0lH3ObLtHEBSr7Shqs=;
        b=d+vQ9Liish8H8yZUMtbJr0Y23+9H/G9MmMv4E453O5DcrV7FZKoUM4/yTaNwIe55At
         3QpsV30jF5qaD+cWDLmxPtS/7btUtKds4T0mNbrBPYqbcBXnZtDvd5naLXrfDVb9MKxm
         X3PmZvRFZYl4jhKo5RlFbsnRUXxYQPT9H3owOMbmRLXVpiFg5n5Ywnl6h8qGIrG/Si1F
         TgWFWfgh8lohEDUw6AR2bYQvhrimsVSmRjZvRHq7ono/hKh56rGSuWJEERLn+jX3LUzz
         tKIQd/mtFUVDDuHDqftl2AFQRfNwhb94XCRiApRDQUxoo6Rwi5PMaUYCk1YpqN1HL+dr
         WBSg==
X-Gm-Message-State: AD7BkJLJS1YUxg2Ix+jb1ZfH/K1kxW83Q4JzHezyhF3YFr26jexi1VyG+t5n7DV9qi29mQ==
X-Received: by 10.98.79.214 with SMTP id f83mr772040pfj.56.1456479771486;
        Fri, 26 Feb 2016 01:42:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 81sm1157527pfa.12.2016.02.26.01.42.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 01:42:51 -0800 (PST)
Date: Fri, 26 Feb 2016 15:13:28 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 5/5] staging: lustre: ptlrpc: Remove useless return
 variables
Message-ID: <20160226094328.GA10635@Karyakshetra>
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
 Changes in v4:
	-Corrected typo lusture in the subject. Made it to lustre

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



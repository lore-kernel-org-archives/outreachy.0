X-GM-THRID: 6258243445600550912
X-Received: by 10.140.27.180 with SMTP id 49mr6585839qgx.19.1457110849719;
        Fri, 04 Mar 2016 09:00:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.130.229 with SMTP id oh5ls218569obb.74.gmail; Fri, 04 Mar
 2016 09:00:49 -0800 (PST)
X-Received: by 10.182.220.132 with SMTP id pw4mr6556733obc.4.1457110849023;
        Fri, 04 Mar 2016 09:00:49 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id ui7si1542127pab.0.2016.03.04.09.00.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Mar 2016 09:00:48 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id x188so14556392pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 04 Mar 2016 09:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TZsU+BpzLwW9na6L8q4Mff5T64Se7jRjSbdQiLiLiyc=;
        b=UhECXcuUuQFSDbEiatVDUQWFBYXPwuFbt2bXZ4GRCzb+PP5V+gJhUIV6UTG8tJfMnD
         pF+5YqLtZ5Byt57FdldpJhq7ALrKZuzDQDatvClSYrWAsAZUyHyNSyLpHwO2FyQNpEEU
         zWKIsNekUmwxDve5VmwSn0l2p1qoTlA65mILBBEiYd28x66Eg7+tDJqhNGn1UaE2A7UD
         H1WbXWh8o99AVuTC+9Ajh3V4Q8sEOZrH2dpVzZSzzn5sVJsumL7ZeT1aVRCyahYUrwJe
         0Ayno6QLJStpuLhqVgA7u8neIALhxpqGjETODx50vokW06SscsDveJdbBmWT32Q7WjgJ
         rJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TZsU+BpzLwW9na6L8q4Mff5T64Se7jRjSbdQiLiLiyc=;
        b=VVx5CjxgphG2a0AbKbzLY4Ocj50IjQLWgHnFrdFupEHAeuX8QXQUKG8CIBBPZXemjC
         8rZupRYsjyZOkXF69xvQlTGn30Lt0hQhvdMzkZcB3qPkWL35rhL+JcepyCBGpSIucOcx
         DTuuAcLwCNZFAZCzEbqHuPuthiEaRNeEGdhVzPzjMXVyTqAqNh+E6fSeGxDMEn/+hqeb
         c24H0DU+q4y0dq77yUxxvIhzaohYA5L+Q/Nn0xp9t+ry/JjE3xdnDYHmQZVrv8NOrs4e
         eq2+I2xxP01PkpEvRFyK8NEifF+uSluDeuM3Tg3srjDHZd51C1hyBkyamWkiOItF/Yrs
         dILQ==
X-Gm-Message-State: AD7BkJJ0FQAsWNHGyjW4d2eJTl9oDbTRBQSriUrbIYD2ySXLfZlyuzw9Y8kqAjDB+/2isw==
X-Received: by 10.98.75.138 with SMTP id d10mr13762868pfj.108.1457110848798;
        Fri, 04 Mar 2016 09:00:48 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.77.50.199])
        by smtp.gmail.com with ESMTPSA id g85sm6776875pfj.13.2016.03.04.09.00.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 04 Mar 2016 09:00:47 -0800 (PST)
Date: Fri, 4 Mar 2016 22:30:43 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Replace ALIGN with PAGE_ALIGN
Message-ID: <20160304170043.GA24655@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

mm.h contains a helper function PAGE_ALIGN which aligns the pointer
to the page boundary instead of using ALIGN(expression, PAGE_SIZE)

This change was made with the help of the following Coccinelle
semantic patch:
//<smpl>
@@
expression e;
symbol PAGE_SIZE;
@@
(
- ALIGN(e, PAGE_SIZE)
+ PAGE_ALIGN(e)
|
- IS_ALIGNED(e, PAGE_SIZE)
+ PAGE_ALIGNED(e)
)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/init.c      | 8 ++++----
 drivers/staging/rdma/hfi1/user_sdma.c | 3 +--
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/init.c b/drivers/staging/rdma/hfi1/init.c
index 3107103..02df291 100644
--- a/drivers/staging/rdma/hfi1/init.c
+++ b/drivers/staging/rdma/hfi1/init.c
@@ -735,8 +735,8 @@ int hfi1_init(struct hfi1_devdata *dd, int reinit)
 		ret = lastfail;
 
 	/* Allocate enough memory for user event notification. */
-	len = ALIGN(dd->chip_rcv_contexts * HFI1_MAX_SHARED_CTXTS *
-		    sizeof(*dd->events), PAGE_SIZE);
+	len = PAGE_ALIGN(dd->chip_rcv_contexts * HFI1_MAX_SHARED_CTXTS *
+			 sizeof(*dd->events));
 	dd->events = vmalloc_user(len);
 	if (!dd->events)
 		dd_dev_err(dd, "Failed to allocate user events page\n");
@@ -1505,8 +1505,8 @@ int hfi1_create_rcvhdrq(struct hfi1_devdata *dd, struct hfi1_ctxtdata *rcd)
 		 * rcvhdrqentsize is in DWs, so we have to convert to bytes
 		 * (* sizeof(u32)).
 		 */
-		amt = ALIGN(rcd->rcvhdrq_cnt * rcd->rcvhdrqentsize *
-			    sizeof(u32), PAGE_SIZE);
+		amt = PAGE_ALIGN(rcd->rcvhdrq_cnt * rcd->rcvhdrqentsize *
+				 sizeof(u32));
 
 		gfp_flags = (rcd->ctxt >= dd->first_user_ctxt) ?
 			GFP_USER : GFP_KERNEL;
diff --git a/drivers/staging/rdma/hfi1/user_sdma.c b/drivers/staging/rdma/hfi1/user_sdma.c
index 2f48419..8699b22 100644
--- a/drivers/staging/rdma/hfi1/user_sdma.c
+++ b/drivers/staging/rdma/hfi1/user_sdma.c
@@ -413,8 +413,7 @@ int hfi1_user_sdma_alloc_queues(struct hfi1_ctxtdata *uctxt, struct file *fp)
 	if (!cq)
 		goto cq_nomem;
 
-	memsize = ALIGN(sizeof(*cq->comps) * hfi1_sdma_comp_ring_size,
-			PAGE_SIZE);
+	memsize = PAGE_ALIGN(sizeof(*cq->comps) * hfi1_sdma_comp_ring_size);
 	cq->comps = vmalloc_user(memsize);
 	if (!cq->comps)
 		goto cq_comps_nomem;
-- 
1.9.1



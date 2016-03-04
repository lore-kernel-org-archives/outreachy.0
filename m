X-GM-THRID: 6258247119145009152
X-Received: by 10.50.112.232 with SMTP id it8mr2479igb.9.1457111704794;
        Fri, 04 Mar 2016 09:15:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.97 with SMTP id e1ls268087igl.29.gmail; Fri, 04 Mar 2016
 09:15:04 -0800 (PST)
X-Received: by 10.107.16.87 with SMTP id y84mr7019367ioi.2.1457111704405;
        Fri, 04 Mar 2016 09:15:04 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id 12si1534466pfb.1.2016.03.04.09.15.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Mar 2016 09:15:04 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fi3so35959634pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 04 Mar 2016 09:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Vz7/2wa2M4FyheCSf3VqQN3b0wsybYpQNUnko89nNEY=;
        b=rGvRgt+h8AMwDLszrLPH6tzvkPtelOsKUlCZlkH3xlcr99vKVqkNYbf/lt3EokusM7
         DOco0dJ/x2ydvWXAUoUopEVe9jM276XUGTNfggWQPglqsw0RRzXph0UWRW5AqazdGLez
         Yqq7bFUVamaYDwwTsvSPGLdrpAWDR5MIxkJbTybGocxzA22DVyk6XU9lN966ZQD0S+XJ
         40C12J8Ho6Zu3Zm6EXKICl4BJJGnpROZJcMgB5yU45f4v+p7FKzso1IvT6HOmQ7SZ54Z
         RQP63ICIJA+xkgSpYzh1NMbBG3ZPn2ftL1FxXnzqSJ157xfYJNub65rYH5esNZcasFkb
         KMpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Vz7/2wa2M4FyheCSf3VqQN3b0wsybYpQNUnko89nNEY=;
        b=fyxDAsQpNXo1KB+Nmv21jWZNW5qO/xPI4s4N9jC8HSgmw+eZW/uBkqScfcosr2IWXD
         c6HlJVEDtiknEOPbMjWGwxarDt+aqygOSr5ar8p4epuTi2o2DVMZ33LWRGb+JTSRnM1p
         qtBBXLiINZeJV0pMbWSxvotZmI3c4jrQ4w1S26FPEVpkbMnakbqUfvTriFG/no/s6g65
         xql5XcoHbW0l4R+BBfr1DUbDjF0wEUL63CDequCTmsEUDB8oWLIxuig5B9jmMiZRWCFf
         Hxg4RDGaSIjaChkv3fitVkPUgcK/VUJr5qj+Cqwba7qMZYUrKfLfhQuntKIisEnMSleo
         JKng==
X-Gm-Message-State: AD7BkJKJCKvWbEAsp4pJUWxPZd24PZJ8a58s/oTk5xt7+hWuS/Od9g9e3zk0kQSMAG1LGg==
X-Received: by 10.66.193.161 with SMTP id hp1mr13693738pac.9.1457111704209;
        Fri, 04 Mar 2016 09:15:04 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.77.50.199])
        by smtp.gmail.com with ESMTPSA id yj1sm6833104pac.16.2016.03.04.09.15.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 04 Mar 2016 09:15:03 -0800 (PST)
Date: Fri, 4 Mar 2016 22:45:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: file_ops: Replace ALIGN with PAGE_ALIGN
Message-ID: <20160304171459.GA28765@amitoj-Inspiron-3542>
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
 drivers/staging/rdma/hfi1/file_ops.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/file_ops.c b/drivers/staging/rdma/hfi1/file_ops.c
index d57d549..8b911e8 100644
--- a/drivers/staging/rdma/hfi1/file_ops.c
+++ b/drivers/staging/rdma/hfi1/file_ops.c
@@ -487,8 +487,7 @@ static int hfi1_file_mmap(struct file *fp, struct vm_area_struct *vma)
 		 * Map only the amount allocated to the context, not the
 		 * entire available context's PIO space.
 		 */
-		memlen = ALIGN(uctxt->sc->credits * PIO_BLOCK_SIZE,
-			       PAGE_SIZE);
+		memlen = PAGE_ALIGN(uctxt->sc->credits * PIO_BLOCK_SIZE);
 		flags &= ~VM_MAYREAD;
 		flags |= VM_DONTCOPY | VM_DONTEXPAND;
 		vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
@@ -638,7 +637,7 @@ static int hfi1_file_mmap(struct file *fp, struct vm_area_struct *vma)
 			goto done;
 		}
 		memaddr = (u64)cq->comps;
-		memlen = ALIGN(sizeof(*cq->comps) * cq->nentries, PAGE_SIZE);
+		memlen = PAGE_ALIGN(sizeof(*cq->comps) * cq->nentries);
 		flags |= VM_IO | VM_DONTEXPAND;
 		vmf = 1;
 		break;
-- 
1.9.1



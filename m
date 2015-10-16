X-GM-THRID: 6206255870558339072
X-Received: by 10.50.62.49 with SMTP id v17mr4828905igr.1.1445011634477;
        Fri, 16 Oct 2015 09:07:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.177 with SMTP id t46ls1438258qgd.2.gmail; Fri, 16 Oct
 2015 09:07:13 -0700 (PDT)
X-Received: by 10.129.154.137 with SMTP id r131mr13380099ywg.0.1445011633761;
        Fri, 16 Oct 2015 09:07:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si2074964pbb.0.2015.10.16.09.07.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:07:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id ez2so8569347pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=4UjPyv7eeUPxoByZQkIQHbzQ6XV5WUymxtaySaJkwdc=;
        b=ghfIUZ5U1O7teUjNoujlJqtb9yXz3ndN3mvdyfJTWQO2EKH3HXPkwiq+4/t6uh5/7O
         q+znVgcRz+0cq2mN3ovgEiRuviuotRO9lHCD5eqZ6knm2zFdsdIQftReOY8n2ApqWjzV
         trjuv3lOs6hmDUIjUomziNGepkADe1BF0catnEjVAdL8qc5brJtlV3ch5paBNJX5HD49
         PjCKTzLmutdVsMxfOxBDqBuYqj9PRs7CrpM7vY5OJT9udnFr7MYIBk2k9i81f9BY+VKv
         JtXBAduTzGcBFa00vq4tmfqLYCXvZiEIOPIuGQ6UMfArRlmVbZbpilztbWYPVmklcB8e
         3NLg==
X-Received: by 10.68.96.67 with SMTP id dq3mr17353106pbb.161.1445011633626;
        Fri, 16 Oct 2015 09:07:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id zk3sm4792429pbb.41.2015.10.16.09.07.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 09:07:13 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rdma: hfi1: delete unneeded tabs in conditional statement block
Date: Fri, 16 Oct 2015 09:06:52 -0700
Message-Id: <1445011612-16929-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20151016144218.GA25993@Ubuntu-D830>
References: <20151016144218.GA25993@Ubuntu-D830>

Delete unneeded tabs to indent statement block correctly at (8, 16).
checkpatch.pl:
	WARNING: suspect code indent for conditional statements (8, 24)

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---

Change in v2: add staging to commit log

 drivers/staging/rdma/hfi1/mr.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/mr.c b/drivers/staging/rdma/hfi1/mr.c
index bd64e4f..0208fc2 100644
--- a/drivers/staging/rdma/hfi1/mr.c
+++ b/drivers/staging/rdma/hfi1/mr.c
@@ -284,20 +284,20 @@ struct ib_mr *hfi1_reg_user_mr(struct ib_pd *pd, u64 start, u64 length,
 	m = 0;
 	n = 0;
 	for_each_sg(umem->sg_head.sgl, sg, umem->nmap, entry) {
-			void *vaddr;
-
-			vaddr = page_address(sg_page(sg));
-			if (!vaddr) {
-				ret = ERR_PTR(-EINVAL);
-				goto bail;
-			}
-			mr->mr.map[m]->segs[n].vaddr = vaddr;
-			mr->mr.map[m]->segs[n].length = umem->page_size;
-			n++;
-			if (n == HFI1_SEGSZ) {
-				m++;
-				n = 0;
-			}
+		void *vaddr;
+
+		vaddr = page_address(sg_page(sg));
+		if (!vaddr) {
+			ret = ERR_PTR(-EINVAL);
+			goto bail;
+		}
+		mr->mr.map[m]->segs[n].vaddr = vaddr;
+		mr->mr.map[m]->segs[n].length = umem->page_size;
+		n++;
+		if (n == HFI1_SEGSZ) {
+			m++;
+			n = 0;
+		}
 	}
 	ret = &mr->ibmr;
 
-- 
2.1.4



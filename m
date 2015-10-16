X-GM-THRID: 6206255870558339072
X-Received: by 10.182.44.130 with SMTP id e2mr12866216obm.32.1445006549422;
        Fri, 16 Oct 2015 07:42:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.205 with SMTP id j196ls896723ioj.79.gmail; Fri, 16 Oct
 2015 07:42:28 -0700 (PDT)
X-Received: by 10.66.252.6 with SMTP id zo6mr12757117pac.29.1445006548883;
        Fri, 16 Oct 2015 07:42:28 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pe1si1982563pac.2.2015.10.16.07.42.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 07:42:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id cn9so7786727pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 07:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=eTHIho0irhbStzEfJdw20hAAwd+fuId+c3cyQ7lfCHI=;
        b=t3ZLPNPiE7QwXVTVGqsS7e6KevRrKetM2F+nznTnm0ytGwOgQoJbITMbR+qL61yCX4
         xfvO8vEHRwQk2I/wTqCG0JoI/yJOWRG+fgpKJzP8IQtsqdPEjA1ChDoCx+F6N0wSImJG
         cKhpOyvW0EgyR39rZmzW3uygVTOfTSlJR4A4G4auGhp3YwOTFOm59SThbroI5sGxgJJ0
         xX2cz58gArMLDMiIEc5Ruac25bEmS3iQo5sNKMkxQxrElvPuUYRtSlg3QCKitNy7vTec
         mkEhv/aCc8vZ+azOJqvDCs6ExFNpB7VR4CQavdUATtuzycaLW7YhhtL2JcD/Y4N44Rw2
         Iotg==
X-Received: by 10.68.240.2 with SMTP id vw2mr16785920pbc.41.1445006548766;
        Fri, 16 Oct 2015 07:42:28 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id ih4sm21685126pbc.28.2015.10.16.07.42.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 07:42:28 -0700 (PDT)
Date: Fri, 16 Oct 2015 07:42:27 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] rdma: hfi1: delete unneeded tabs in conditional statement
 block
Message-ID: <20151016144218.GA25993@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Delete unneeded tabs to indent statement block correctly at (8, 16).
checkpatch.pl:
	WARNING: suspect code indent for conditional statements (8, 24)

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
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



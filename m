X-GM-THRID: 6253287344425664512
X-Received: by 10.107.135.93 with SMTP id j90mr12101085iod.27.1455956917516;
        Sat, 20 Feb 2016 00:28:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.183.7 with SMTP id ei7ls151613igc.16.gmail; Sat, 20 Feb
 2016 00:28:37 -0800 (PST)
X-Received: by 10.50.13.69 with SMTP id f5mr1119190igc.7.1455956917143;
        Sat, 20 Feb 2016 00:28:37 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id yd9si2098649pab.1.2016.02.20.00.28.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 00:28:37 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id e127so64295015pfe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 00:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Ku7y+UH8BifXxjzuye4yoHCWG2h9hnMoQxb1DqWq0Gk=;
        b=JW2vEL5LKL+ywgaUfF6rUel4mRkJo1QzaCXW3B87F2c4u5wxxJ6wCONSzwTRPrhwPx
         mfQgNcDpnjyIDtVVoxoa7Y4qTMPJHPsoJPgS6/wEsTo0DjXylxASY0ar+pl7snFyjnX5
         ZL2wCAjdr6Imr9h9rvtIPUHKCOeRWrIDEgjSYu1jed03uy+gWJGlHL9BDMMCVsXDdhND
         rbt/Lvt6jrG1GfJCepRGJib0cUfolcBjrBvBAy+bTGDLmXbyPjnPRqCPB1GNGmfZut0M
         PUnJ67rQ0cKhcna8pAp0Z0km/GxshWm/XvXPN5q4Dm32+JOc6UymcjIMQhDHYatMtzwf
         dymQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Ku7y+UH8BifXxjzuye4yoHCWG2h9hnMoQxb1DqWq0Gk=;
        b=cqtDoeOi1saT71AOOP4tm7GWlRs7kXaKa+X6mdnKKv4CUfuIqM65vbmAkDG3Aero8b
         93qOwum8Zem7hBVrJ7DEVaNIK3DU/L5FdtQrkVNB/Q3iQYIIZCRQcZ4Sawlxtya/NURh
         N2p28ffXIF2j5+0qxX28lkkrGlEi7cWMVMLmYi8njkMZhJRos16Bioj1txhe5Wm4VG8t
         MghqrIubAwU7XowbI1Z5cwuCBKbw5zBo1r7ITYBmopYhCYj9nH047hTevkv1rFO04gam
         DC4lQZYDyDuUz3tvWtnCMTAIessS9SIKAP5q3l8JlrgmUhuKutu9Oqs1U45m66y85krZ
         WR1A==
X-Gm-Message-State: AG10YORCereE3X/m8OUSsyr5FM/NysM9Sc3IsgH1AZb2fwMXQ+7rtov6Qqit+r2s9WhAow==
X-Received: by 10.98.13.68 with SMTP id v65mr23876134pfi.150.1455956916942;
        Sat, 20 Feb 2016 00:28:36 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id h89sm22676590pfj.52.2016.02.20.00.28.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 00:28:36 -0800 (PST)
Date: Sat, 20 Feb 2016 13:58:27 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Use DIV_ROUND_UP
Message-ID: <20160220082827.GA14902@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The kernel.h macro DIV_ROUND_UP performs the computation 
(((n) + (d) - 1) /(d)) but is perhaps more readable.

The Coccinelle script used is as follows:

// <smpl>
@@
expression n,d;
@@
(
- (n + d - 1) / d
+ DIV_ROUND_UP(n,d)
|
- (n + (d - 1)) / d
+ DIV_ROUND_UP(n,d)
)
@@
expression n,d;
@@
- DIV_ROUND_UP((n),d)
+ DIV_ROUND_UP(n,d)
@@
expression n,d;
@@
- DIV_ROUND_UP(n,(d))
+ DIV_ROUND_UP(n,d)
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/mr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/mr.c b/drivers/staging/rdma/hfi1/mr.c
index a3f8b88..3825321 100644
--- a/drivers/staging/rdma/hfi1/mr.c
+++ b/drivers/staging/rdma/hfi1/mr.c
@@ -70,7 +70,7 @@ static int init_mregion(struct hfi1_mregion *mr, struct ib_pd *pd,
 	int m, i = 0;
 	int rval = 0;
 
-	m = (count + HFI1_SEGSZ - 1) / HFI1_SEGSZ;
+	m = DIV_ROUND_UP(count, HFI1_SEGSZ);
 	for (; i < m; i++) {
 		mr->map[i] = kzalloc(sizeof(*mr->map[0]), GFP_KERNEL);
 		if (!mr->map[i])
@@ -159,7 +159,7 @@ static struct hfi1_mr *alloc_mr(int count, struct ib_pd *pd)
 	int m;
 
 	/* Allocate struct plus pointers to first level page tables. */
-	m = (count + HFI1_SEGSZ - 1) / HFI1_SEGSZ;
+	m = DIV_ROUND_UP(count, HFI1_SEGSZ);
 	mr = kzalloc(sizeof(*mr) + m * sizeof(mr->mr.map[0]), GFP_KERNEL);
 	if (!mr)
 		goto bail;
@@ -333,7 +333,7 @@ struct ib_fmr *hfi1_alloc_fmr(struct ib_pd *pd, int mr_access_flags,
 	int rval = -ENOMEM;
 
 	/* Allocate struct plus pointers to first level page tables. */
-	m = (fmr_attr->max_pages + HFI1_SEGSZ - 1) / HFI1_SEGSZ;
+	m = DIV_ROUND_UP(fmr_attr->max_pages, HFI1_SEGSZ);
 	fmr = kzalloc(sizeof(*fmr) + m * sizeof(fmr->mr.map[0]), GFP_KERNEL);
 	if (!fmr)
 		goto bail;
-- 
1.9.1



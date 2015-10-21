X-GM-THRID: 6208147011756097536
X-Received: by 10.112.184.170 with SMTP id ev10mr2491568lbc.4.1445446874996;
        Wed, 21 Oct 2015 10:01:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.88 with SMTP id m85ls248996lfi.21.gmail; Wed, 21 Oct
 2015 10:01:14 -0700 (PDT)
X-Received: by 10.112.148.202 with SMTP id tu10mr2057898lbb.12.1445446874337;
        Wed, 21 Oct 2015 10:01:14 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id bn7si551631wib.0.2015.10.21.10.01.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 10:01:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id ll6so100278123wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 10:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=kcCZd7mYjLqmBKB6erfmwjdzgA5T79Vg65q+vWuSigc=;
        b=Kz26JXZx+pX415ITnb938DHHqUx2hLaLiZ/b7HcSFzx9iblsu0soVSVWXaUruC+d7n
         0h0SfIaylz7A2NyoBOuBzHdkG1+zoq4NhkbZUIM7UAfdywgJFFJvGD1N9WJ46qnCfs6j
         EyWpUnEz5VPSEbm4oW1j5+OLrEadqOHe7J1Eo/NgI89MVR/T/Zvj5gn/XuW75Ea12fxu
         RzLa9EjKeP17RHW2W0sHzlPgqqlVmRCLf8HCA7tkNHE3cQUQLzZ1vXIJDympku6Lylnu
         noQbwZyIu0SXnigrLk+mfHTiuLuN1GZhas1YLAmgTHa8ILT+9pp4Nj9ZuFtSjsSbssTq
         dRvw==
X-Received: by 10.194.19.133 with SMTP id f5mr5038539wje.91.1445446874246;
        Wed, 21 Oct 2015 10:01:14 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.204])
        by smtp.gmail.com with ESMTPSA id x7sm24456745wia.10.2015.10.21.10.01.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 10:01:13 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 3/3] staging: rdma: Replace kmalloc with kmalloc_array
Date: Wed, 21 Oct 2015 20:00:51 +0300
Message-Id: <69b1d980779b74a59bfeecae09b31d70e1228309.1445379358.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445379358.git.cristina.moraru09@gmail.com>
References: <cover.1445379358.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445379358.git.cristina.moraru09@gmail.com>
References: <cover.1445379358.git.cristina.moraru09@gmail.com>

Replace kmalloc with specialized function kmalloc_array
when the size is a multiplication of:
	number_of_elements * size_of_element

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/rdma/amso1100/c2_provider.c | 2 +-
 drivers/staging/rdma/ipath/ipath_verbs.c    | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rdma/amso1100/c2_provider.c b/drivers/staging/rdma/amso1100/c2_provider.c
index 956d76b..6597a62 100644
--- a/drivers/staging/rdma/amso1100/c2_provider.c
+++ b/drivers/staging/rdma/amso1100/c2_provider.c
@@ -462,7 +462,7 @@ static struct ib_mr *c2_reg_user_mr(struct ib_pd *pd, u64 start, u64 length,
 	shift = ffs(c2mr->umem->page_size) - 1;
 	n = c2mr->umem->nmap;
 
-	pages = kmalloc(n * sizeof(u64), GFP_KERNEL);
+	pages = kmalloc_array(n, sizeof(u64), GFP_KERNEL);
 	if (!pages) {
 		err = -ENOMEM;
 		goto err;
diff --git a/drivers/staging/rdma/ipath/ipath_verbs.c b/drivers/staging/rdma/ipath/ipath_verbs.c
index 40f7f05..ea3f21a 100644
--- a/drivers/staging/rdma/ipath/ipath_verbs.c
+++ b/drivers/staging/rdma/ipath/ipath_verbs.c
@@ -2025,8 +2025,8 @@ int ipath_register_ib_device(struct ipath_devdata *dd)
 	dev = &idev->ibdev;
 
 	if (dd->ipath_sdma_descq_cnt) {
-		tx = kmalloc(dd->ipath_sdma_descq_cnt * sizeof *tx,
-			     GFP_KERNEL);
+		tx = kmalloc_array(dd->ipath_sdma_descq_cnt, sizeof *tx,
+				   GFP_KERNEL);
 		if (tx == NULL) {
 			ret = -ENOMEM;
 			goto err_tx;
-- 
1.9.1



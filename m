X-GM-THRID: 6469118697195700224
X-Received: by 10.25.169.1 with SMTP id s1mr172054lfe.29.1506209070267;
        Sat, 23 Sep 2017 16:24:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.155.208 with SMTP id e16ls2001099wrc.11.gmail; Sat, 23 Sep
 2017 16:24:29 -0700 (PDT)
X-Received: by 10.28.136.143 with SMTP id k137mr182791wmd.3.1506209069490;
        Sat, 23 Sep 2017 16:24:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506209069; cv=none;
        d=google.com; s=arc-20160816;
        b=aPLdkNKupjzs9XEOEhM+ESeqFq7zFbeJoPQHY3oEd5JVDbCK5IFFrb2/dwXyLLgFIC
         X+t6F5ds/iIK8Dbloa0fAVECf8th3Tj+Lnf49z+QN1ly6mKPT5kwJmmKVsJCrm/Rwp0Z
         GWmV6luPWy72zRJFY/pfRdFrfUBcdFW4k+RujG/KzafZwM4ulA3ANouuXrPW68wT0lqI
         WbkUTluVIOsYNQ3gNuv1r/+zOitlQd/v/kuxgldNaNKmXvuf2NMKqvxl4fgCm3rGOFiW
         ARzZFZInICpFlrdljjgJ0i51INOFM65eE0WU6bUdS6SnpxwIw2xy7srr6p8e4IALU2na
         4Vlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Vvzz4BhqClP6EzAT1l1g/GepAQEI259ncf8+PiU0t9k=;
        b=Bqs5OYPVpP4XfyS+xscoJKPnTWwTwt3jh13howGbhTLHypx+B10RV+yJmGLlfTMpHk
         iG9ebDJSE5ZtH939UaBDILwhmFtXafZNSM/8t17nun0gAZLEtUlAxnMFVtZXFdhHgPr6
         NPaXwkOcQAUg3NidZm/PDZ2n3a336eVDcDpriOwnS2TQ52EncyQi9QXy73k0NNZGlp9r
         s89B25nMW6f5JaBaut2Ai4Ss2RJVxSgNzl6ZRnKDnfzx6F4ppW5kue8JXwPaNBKS0TvA
         a35+RyI3GnwzuqwozogoZJe1DUbDjE254Frmrf72w+eqq8orzdFMAIwbwhf8v8dwII/j
         AywQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JxNW4xYt;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id c142si594705wmh.3.2017.09.23.16.24.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 16:24:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JxNW4xYt;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id p37so2327347wrb.5
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 16:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Vvzz4BhqClP6EzAT1l1g/GepAQEI259ncf8+PiU0t9k=;
        b=JxNW4xYtLRJz/VQ59faHqay5w5EcXt4P3mzOPSX17EvzL74jVBxI+dEYaf7LaYjLw5
         n4UxS1z7QYfu19fXX5KoImzfr38UvGoZMevkr/4kLR7TytPDQn76GOsDLV08wKkfuk3p
         Bf+mWFLiooQVAEJrG3UJHeKA8YDCwT9hGEt1FeI7xzA8Ei7IR1eI23cotXEMshM6066y
         LhzBFKzgumhSTC0Ed8UV2/Dw3JzbOoKockUCpSavyUYpRCGLrAmTaaZy3Bjz4WZQStTj
         zDQt/hZzQvfqrtwyO4lpCU1GFsnQh8mU4IZq1HShp6KgAuVcipC6j3/vVyd/QIKQ8Sbb
         TYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Vvzz4BhqClP6EzAT1l1g/GepAQEI259ncf8+PiU0t9k=;
        b=H1BEJbIJ2hjB1tC6AhSTHislKZUC4vr7INjdfOklxKLgoo2T+RrpmPCN7Ch9LGX1zp
         q2ODXfy3XkEG1eiA4FpUAba905od1vfOQftjiYJest9ZOGMFwOD4pqaBwNn0AYqt836C
         xfwUjjUddpVdca6MHM8r1E6pgld1guCGBr1id4pgYmXAdEcBoB8h/o2IOMiGp64ertyw
         6JRxiolIz+pzPUYUdjML9aBPKSnxNeh0WtNYO3Aew4ce7qqkYt4owvJ/b8WssshRd6BN
         ESHkk93m1CklERZGbLnJdZQbGAB+yYxoTXfljLXFopG597vCqpMs9iKwsgfUJ4GcjWbM
         pSZQ==
X-Gm-Message-State: AHPjjUiSDrcQW2pCCI/8oBLdyXEUUFhhzlVn1LD1tRr4l0arZyQQCKP2
	JHioMTVS1/MDMXkqIrZjMSbvAU8E
X-Google-Smtp-Source: AOwi7QBybeoRvHCXFyp/Ntjy2J/5DktGM/bWkFrihnbTQKLp3CaYiDGYFNRR4K1N2ox6IZgE3z1vzg==
X-Received: by 10.223.171.167 with SMTP id s36mr2664512wrc.256.1506209069204;
        Sat, 23 Sep 2017 16:24:29 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.127.134.154])
        by smtp.gmail.com with ESMTPSA id e17sm9059621wmf.46.2017.09.23.16.24.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Sep 2017 16:24:28 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: media: atomisp: Use kmalloc_array instead of kmalloc
Date: Sun, 24 Sep 2017 02:24:19 +0300
Message-Id: <20170923232419.21625-1-georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0

Prefer kmalloc_array over kmalloc with multiply
because kmalloc_array performs additional checks
before memory allocation.

Fix the following issues reported by :
* WARNING: Prefer kmalloc_array over kmalloc with multiply
* CHECK: Alignment should match open parenthesis

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 11162f595fc7..22dbd79fe123 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -725,8 +725,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 
 	pgnr = bo->pgnr;
 
-	bo->page_obj = kmalloc(sizeof(struct hmm_page_object) * pgnr,
-				GFP_KERNEL);
+	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
+				     GFP_KERNEL);
 	if (unlikely(!bo->page_obj)) {
 		dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
 		return -ENOMEM;
@@ -990,7 +990,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	struct vm_area_struct *vma;
 	struct page **pages;
 
-	pages = kmalloc(sizeof(struct page *) * bo->pgnr, GFP_KERNEL);
+	pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
 	if (unlikely(!pages)) {
 		dev_err(atomisp_dev, "out of memory for pages...\n");
 		return -ENOMEM;
-- 
2.11.0



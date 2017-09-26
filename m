X-GM-THRID: 6470117861435113472
X-Received: by 10.46.23.218 with SMTP id 87mr884917ljx.30.1506441713955;
        Tue, 26 Sep 2017 09:01:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.143.66 with SMTP id r63ls1873088wmd.7.canary-gmail; Tue, 26
 Sep 2017 09:01:53 -0700 (PDT)
X-Received: by 10.28.109.193 with SMTP id b62mr360122wmi.16.1506441713284;
        Tue, 26 Sep 2017 09:01:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506441713; cv=none;
        d=google.com; s=arc-20160816;
        b=0FHq7xYe/BgCzEx7qON/bKkdDksrPE8jnWvh7xQ7HYprT3qYI0Vcuvyk80TNYiBiIb
         qY9Qw4RG/qmaQ12bNt7ELUjd4syowy574X5TFzZvr8lyU+Ysx7iLVcRTu1+eNS5MmRC+
         HTNHhO+35iLiLwKfearQXtc3CvkMf69FKp/yjltC3WFwWCZr7o38AQ5/71MUXQPx/fJf
         yKCN+TG4ookRa3hJ6HtTgLc5IPkhuJyXIfPu/6pRzcMOGUyknz8hPZgxTbp/Oh1bmK1X
         86eLkbfBct/sqmOYVVfo4cmaRmzEJDglMKCdhKMtjk47MidnA9ZXYhPljSqedBwdrBs4
         B/Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=70lvxpWxEse6jRX0EkzKqzagoxyuCbInfHyI5GBI7G4=;
        b=rqjhye9sjtTeL/KxnI6Lj6lL6L0gpzZU1PNC0M2pOy3QeAjYcn/9E7Ftv1ZUdjNapP
         DS/mJgPGWjgwbfDvgRw0gCnHHtj4fvsr/FZsuO2OQX6z4hbtsWTEYKlDijx6aFJq0kCz
         PZEgPxw+kDKiSxmsmHP94lpA85dut2nEm4vOS9cKvsTNPMopj4hKB1F3z4In4wBq06IW
         XbPcktaJwjuZ9eQJeUre4cOEIo/Bnz+4nKJqnuSUnc7aVhHh5jrd5LaXDV8ptjt0t4wm
         QPtAMn5EoepUGX9z4k/9MILjDHRDkPX8oPdI1IMSzsOXeKk6VJw1rFNP2S1P4a/0tZoL
         F2rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T6AUbl5W;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id c142si1292374wmh.3.2017.09.26.09.01.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:01:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T6AUbl5W;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id m127so16391561wmm.1
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=70lvxpWxEse6jRX0EkzKqzagoxyuCbInfHyI5GBI7G4=;
        b=T6AUbl5WjHt7dlUyDxE9nL6J7bxtkDfe3in9jA6d7RuuHM343Tnpzz4n70UHyRDv2N
         Fq2C4hzMjQhJ1/zTM1+eb3pLiG7IdAB6Vs0vQwJnz/GYUsY8BAPvn/SmAvbobzw2HB9j
         YH1/Kx+3R4tOSDWIOwkzBcdiR4tmTTBN+8aydVfETZ7uSF6YbvJltuIiiwjDXx7Rlff/
         ozMF+6gtvWKTLTXR/jdyPOj0+lyJSKX6rgjtTC2lfI3EgR+mnAQ8cmFIUfm8EQ/RwqG2
         v97EbRytDywM8aO9TeiWMBk3AQbFG1vHrsSCrxHtAlq0vagLTHLPFFswOQX7I6PCfp0B
         vQLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=70lvxpWxEse6jRX0EkzKqzagoxyuCbInfHyI5GBI7G4=;
        b=pKVBZGyh03fewjiQBtWgCqUN0ycUgES0h6cyUqoZdtgw43Cjw3XwXt07IRzXvTcah3
         SxbIQ5r42BzPBTWbOiN31j68+mImsL7mKjwbzLLCj+MGud2m5NzLuQpDJY2OUv+KGnVE
         v4PZDm0A2oqnplgfZjovgDuNPnSp3T4qHViSBJXxCqPsKrJ3WjSOL0rZV1lTnhhG4dC2
         Ty+QANzbKR84DmxBW4D6Sq8c+rfONvssHnr5VLcm/9vSJt9/i8OlxgyUDcYUcKjexrWH
         CQQe38WV1mHsxe8maDFrvZjJe0iWLc8+nSrtffruzUuiVTRL162TKHZKOHzI6NjVKE+z
         /Ywg==
X-Gm-Message-State: AHPjjUgAhE+t7srEKLIniF/+d9RyqbyIthUs9zWUp5WjLZTSyaX70aAm
	H1jY99b0ToxyZb/ol6UbUUg=
X-Google-Smtp-Source: AOwi7QDegEr+lVEvZ0S84n99tQTJCWiKg343U4vePN+fiEd84uXMzIquyp1kscAAWNs8WblGUDNnfw==
X-Received: by 10.28.10.142 with SMTP id 136mr3361422wmk.92.1506441709005;
        Tue, 26 Sep 2017 09:01:49 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id 110sm5422091wra.39.2017.09.26.09.01.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 09:01:48 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 01/10] Staging: media: atomisp: Use kmalloc_array instead of kmalloc
Date: Tue, 26 Sep 2017 09:01:29 -0700
Message-Id: <7f2c6c0598ee41d956a04533dc65595f5f7353aa.1506436974.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>

Prefer kmalloc_array over kmalloc with multiply
because kmalloc_array performs additional checks
before memory allocation.

Fix the following issue reported by checkpatch.pl:
* WARNING: Prefer kmalloc_array over kmalloc with multiply

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* nothing changed in the patch
* the patch was added to a patchset

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 11162f5..5232327 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -725,7 +725,7 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 
 	pgnr = bo->pgnr;
 
-	bo->page_obj = kmalloc(sizeof(struct hmm_page_object) * pgnr,
+	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
 				GFP_KERNEL);
 	if (unlikely(!bo->page_obj)) {
 		dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
@@ -990,13 +990,13 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	struct vm_area_struct *vma;
 	struct page **pages;
 
-	pages = kmalloc(sizeof(struct page *) * bo->pgnr, GFP_KERNEL);
+	pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
 	if (unlikely(!pages)) {
 		dev_err(atomisp_dev, "out of memory for pages...\n");
 		return -ENOMEM;
 	}
 
-	bo->page_obj = kmalloc(sizeof(struct hmm_page_object) * bo->pgnr,
+	bo->page_obj = kmalloc_array(bo->pgnr, sizeof(struct hmm_page_object),
 		GFP_KERNEL);
 	if (unlikely(!bo->page_obj)) {
 		dev_err(atomisp_dev, "out of memory for bo->page_obj...\n");
@@ -1363,7 +1363,7 @@ void *hmm_bo_vmap(struct hmm_buffer_object *bo, bool cached)
 		bo->status &= ~(HMM_BO_VMAPED | HMM_BO_VMAPED_CACHED);
 	}
 
-	pages = kmalloc(sizeof(*pages) * bo->pgnr, GFP_KERNEL);
+	pages = kmalloc_array(bo->pgnr, sizeof(*pages), GFP_KERNEL);
 	if (unlikely(!pages)) {
 		mutex_unlock(&bo->mutex);
 		dev_err(atomisp_dev, "out of memory for pages...\n");
-- 
2.7.4



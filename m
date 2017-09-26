X-GM-THRID: 6470117861435113472
X-Received: by 10.223.172.8 with SMTP id v8mr630147wrc.32.1506441729305;
        Tue, 26 Sep 2017 09:02:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.206.200 with SMTP id e191ls1875987wmg.2.canary-gmail; Tue,
 26 Sep 2017 09:02:07 -0700 (PDT)
X-Received: by 10.223.175.194 with SMTP id y2mr572304wrd.8.1506441727722;
        Tue, 26 Sep 2017 09:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506441727; cv=none;
        d=google.com; s=arc-20160816;
        b=NRI1Qhh6Zboizb6ak0bfVOI+x+klRanAhJchp1AO/P5sBaCaYWnHxpupiXsX8KTs4b
         rBu+dLohrxa8XbGvKFAKgXKSZphVn/YFlCYNpONeTRDk4+JxpuTku4nVZ+Aqo+tfZ5RV
         4pCjvHNb8JULZQnPW5kj1PCRrTAeusMROVDcpbOtCrPZmnsHufz2eOE9Dnzh3aI6nbUP
         l9aBOjcmqfBKxR1cRklrKcVZszVD1AtEd50UQes+JaZW2JFokre4L9EOvHXity5wzeKm
         bhn0seVTY9q6ZUWOSCOTImat9l7q7IcCNliNZeSjWhOTlhkkNsii3Deg6hq0T3UKhTYl
         Dhrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=H+cf98QWdcgg8GKIsab09BGO1HYAhp/PFip7kgVtyMU=;
        b=xC47ixQ48q7Lhd9tWhNomg+DGeKGxjWMnoZ8lQ6t3L1ztxHQYNYvivxGqGA0uCRmtc
         icYqcZ6MyTldFSBP7xzz5WpnA4n78I/1EoUwhR1VsLQhy7YBATfNfiTUQGgJvL759Dww
         2uGlQDS9rdInMKjsK61HWeQx2QFMbHz45ekbSLZSl5znrbIelfHETzzFHMiT7aRIpDTe
         +VqIhsZLsOGevpJNd/S7Y0HC3SrzXy8X0JSKORxa3LJjuxs8Zn7opUgJXpNrD24fVIEV
         wuqXgiONFVu2TqZBjBUauKrq6QG3LlS6Hxy3N9LwugMudfqrEDP7jg7+rb2r/I7+6Ro8
         eGAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DCmhE6e4;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x22d.google.com (mail-wm0-x22d.google.com. [2a00:1450:400c:c09::22d])
        by gmr-mx.google.com with ESMTPS id p200si201974wmg.4.2017.09.26.09.02.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) client-ip=2a00:1450:400c:c09::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DCmhE6e4;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22d.google.com with SMTP id r74so9464136wme.4
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=H+cf98QWdcgg8GKIsab09BGO1HYAhp/PFip7kgVtyMU=;
        b=DCmhE6e40mu7UWbStS33d3iUCpmYX+TXrvg2byTOgWrQZ1PgsR+/yZHgdZuMrUMARB
         xJ6v7ZKhrCoOW1vN31xx77gzHsuaGJg6D+h1zNAgLso9jdcInLyIXttDrDTtEjYn9MbD
         xFXO7DTLtSiT7M8FUMBN2JSSeSWJ/HJZBe5nN0+WyYMRrkFHWXPS5Xl97/NQ+t0ky74R
         +eazxCmnN6rSNMjV2Ifa79aSQc6AYmWJLwjOnAL+GKbC4HyGLLItmkZE7CrxCTIjh+m9
         YQ5WTtU5IHuX/S28L17eHpcNTZLrMSvq/cPAhlY0+oPBjxuXVrT0OSqXUPBwyVt2uNLp
         qdGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=H+cf98QWdcgg8GKIsab09BGO1HYAhp/PFip7kgVtyMU=;
        b=bfi/JCfUCHAIws9OpaLPOVtofckwif1/s6RMztyjGp+yRJYH/gsxN00ouVY8u4Dm7w
         crjCwk29Rugoj8B8dGjyPbyvIodL2K2cQCMCq0DXmua9fGKobJVj8sqenSprJnwbNHfg
         MNURlg0BeLWUo6NEOnhNffF7J2aTauKdqdFPEBRjhaPmEHqsYpNOhEaaaE5PZ7Wgg+A8
         veEqmYLtJl6aItUPEb4frX9nbA7E1OFyaACY3GNwFnmKkxjYqRsDZ2MITb/ONwJuZ2+2
         +uAhCRaI04Xg5hkEyGFTmKZ/hn1yIkrpmA3WGLrg1rHR5JPBQQ/QXwwz8j2mBwE7rySs
         iphQ==
X-Gm-Message-State: AHPjjUgcVHg2Qu49HwKpCMD1iYANOqpQaQ3F/ZiItlcg6GYyU5JrVIvE
	pw64KhUnuGk5bm6GLZltzMw=
X-Google-Smtp-Source: AOwi7QCZ3R0W9H/xM7RTSRO2Tnh+oNoWb4qeWXaKU5Drhk7TgJ3JIT4CD9A5woyuGqOGdY6ZulBhFA==
X-Received: by 10.28.135.209 with SMTP id j200mr3414844wmd.40.1506441724182;
        Tue, 26 Sep 2017 09:02:04 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id b89sm17509217wrd.42.2017.09.26.09.02.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 09:02:03 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 09/10] Staging: media: atomisp: Merge quoted string split across lines
Date: Tue, 26 Sep 2017 09:01:37 -0700
Message-Id: <dabb490d524257f4da753f71f5a00ee28634ccc8.1506436974.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>

Prefer merging quoted strings on one line than splitting them,
even if the line exceeds 80 characters. It is easier to
read and grep for strings that are not split.

Warning found by the checkpatch.pl script:
* WARNING: quoted string split across lines

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 1781ee2..48f801c 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -821,8 +821,7 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 				ret = set_pages_uc(pages, blk_pgnr);
 				if (ret) {
 					dev_err(atomisp_dev,
-						"set page uncacheable"
-						"failed.\n");
+						"set page uncacheable failed.\n");
 
 					__free_pages(pages, order);
 
@@ -1031,8 +1030,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	/* can be written by caller, not forced */
 	if (page_nr != bo->pgnr) {
 		dev_err(atomisp_dev,
-			"get_user_pages err: bo->pgnr = %d, "
-			"pgnr actually pinned = %d.\n",
+			"get_user_pages err: bo->pgnr = %d, pgnr actually pinned = %d.\n",
 			bo->pgnr, page_nr);
 		goto out_of_mem;
 	}
@@ -1497,8 +1495,7 @@ int hmm_bo_mmap(struct vm_area_struct *vma, struct hmm_buffer_object *bo)
 	 */
 	if ((start + pgnr_to_size(pgnr)) != end) {
 		dev_warn(atomisp_dev,
-			 "vma's address space size not equal"
-			 " to buffer object's size");
+			 "vma's address space size not equal to buffer object's size");
 		return -EINVAL;
 	}
 
@@ -1507,9 +1504,8 @@ int hmm_bo_mmap(struct vm_area_struct *vma, struct hmm_buffer_object *bo)
 		pfn = page_to_pfn(bo->page_obj[i].page);
 		if (remap_pfn_range(vma, virt, pfn, PAGE_SIZE, PAGE_SHARED)) {
 			dev_warn(atomisp_dev,
-				 "remap_pfn_range failed:"
-				 " virt = 0x%x, pfn = 0x%x,"
-				 " mapped_pgnr = %d\n", virt, pfn, 1);
+				 "remap_pfn_range failed: virt = 0x%x, pfn = 0x%x, mapped_pgnr = %d\n",
+				 virt, pfn, 1);
 			return -EINVAL;
 		}
 		virt += PAGE_SIZE;
-- 
2.7.4



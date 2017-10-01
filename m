X-GM-THRID: 6470117861435113472
X-Received: by 10.28.13.14 with SMTP id 14mr983847wmn.32.1506893698186;
        Sun, 01 Oct 2017 14:34:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.66.197 with SMTP id k66ls530197wmi.6.gmail; Sun, 01 Oct
 2017 14:34:57 -0700 (PDT)
X-Received: by 10.28.13.14 with SMTP id 14mr983844wmn.32.1506893697536;
        Sun, 01 Oct 2017 14:34:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506893697; cv=none;
        d=google.com; s=arc-20160816;
        b=RkqR+3xFUYuCPJAK3eP3hXZ62zbLSE25LXFP/ZjxHtaGfnotdU1TedEDEc1HPqyrHe
         glOu8nSsbXxpyolLeMWev7C39AhLe+ARLJVm6lcu369NSagnDpepiCcbg2ig5HWDEcCa
         jwPqWeLzVhKA5vOVh7BbXfwQCOrGfPQkS8LJa3cewSiqptYTaXHwtMM6IcpVCjAhzGmM
         tkj7TjXHXtgjebjpTzA1ny6nUcHO6w1r8Mjh8u386uCVlaG0APXTn/zDk8ZxoGFoAzxV
         yA+n/bmr40sgz7XAFHonSAaT3CQAYK5bYJKFM2ZWLmeaeW3iruVhRrMopTjQjCdio7+0
         vCEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=GrReB7eEtGT+jYxeHl5qE4ZFfGYwsAYz9KYyhseklZg=;
        b=muGeA4u7qhwK6DLS0SJpU6a796Jjk5dp+DvzPQDLJa0E2Gs0IxY2MnIDCY8hQ+GRqv
         KUZlDBzYc/IDW1vR2MaMvL+oJp+Blsiz/BJSBlVOKp9GHIROXBT6/5uem2dVu4m+tqOG
         3AEdg1RBVRUNNmoR4WlHBKe2JKZZlvqMvA6KL5LRNFdDPd9EpFJL1Pz3DXCmadqXY/Xu
         UH1vRR1ygCoULFcn0OEqZReDoMFhwav1/mcow7hL04kHgHfuo9eF17eonH2vUFZSzSdi
         nhmPgvhsZkamvNSZ0x2PN9D7yHiRL6uETfupMXRgyjNlRdOXSDJLlXPYH2iK6vxwrGeg
         f01w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uXWkihqR;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id p200si1111461wmg.4.2017.10.01.14.34.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 14:34:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uXWkihqR;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id r74so1389857wrb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 14:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=GrReB7eEtGT+jYxeHl5qE4ZFfGYwsAYz9KYyhseklZg=;
        b=uXWkihqRpTQyDynYDfGP9hG1mvmygQH6Hc02EnIyHteVrXFcpvJ/pz2n0LhxEFLaqr
         5rUnOQPUWEdDGxtgXucW0Mv2qK2ALKu7j/uDoTk2D5d0Yswf/JbkpJ4AS6AXIrEQtm/a
         i18NTrnH7mRfpNmgrfOx7mJGm6IVU/BCATNUFgAeGEcXcsMl9zKtwn1tJYO3JI4MG0ci
         fHKLTTUL8TsMrhA82q95cTnbhwTLCLW/tXHCpak7jdmMNM456Xu/Y4jyRAdWH9sibPNU
         z0wLkSYbkPOwXkL+pOAO+mLiIFhp1SgY5icz5S5MvFhOvxoGxvMdsQBDiXyLpbD4+Zdw
         wIoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=GrReB7eEtGT+jYxeHl5qE4ZFfGYwsAYz9KYyhseklZg=;
        b=o6/QkacD2mOxShzvvFdU8kGW52gMJfAQnswya7EEw0xt+bpMGAz78k4+cjZK5zC28i
         rNVajF4kdZZZCLX+E1omeW9C5tcNNngF9D5CYX71WSxk5aaba8Wn0fUo3lmVLspSjMTr
         RbCm5zR7zUH2qkmVsiEmOyorjKDccXA/YA9wfrG8FI5byQR+SlzWwgUdfSq7HrUcr/aW
         0taWqRqqAfYnTBKn1mKv8pkz0C60xdLGAtQVolkalFn9GMWbO7ptuI4UJ/0ZNe9q0ff8
         q+yRKIiurv7z8gA9OFxQTG9DV661tuDIYrjnBcsVm1oAFxAu0NBqmGWosP46zp1B9O71
         c1Gw==
X-Gm-Message-State: AHPjjUjhy6rl3P96f8qLzJOoanh/8EjOOZfzkN3w6SlS3UZzIF+MpPEg
	w2S4rFdQzebVRRdsXcfvHiA=
X-Google-Smtp-Source: AOwi7QAnK5EKQwe1AgVdFwAMZ6s52SlxQJOSaYj9tn0NdtsDApN5NePKk+KDJb7/LSYYD2+a341++Q==
X-Received: by 10.223.151.139 with SMTP id s11mr13825233wrb.237.1506893697301;
        Sun, 01 Oct 2017 14:34:57 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-133-163.residential.rdsnet.ro. [5.12.133.163])
        by smtp.gmail.com with ESMTPSA id 9sm8229482wml.24.2017.10.01.14.34.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 14:34:56 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 6/7] Staging: media: atomisp: Merge quoted string split across lines
Date: Mon,  2 Oct 2017 00:34:41 +0300
Message-Id: <89918bf8d752305d253b9fda889fdbfe04456900.1506891671.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>

Prefer merging quoted strings on one line than splitting them,
even if the line exceeds 80 characters. It is easier to
read and grep for strings that are not split. Also, split
one line with over 80 characters.

Warning found by the checkpatch.pl script:
* WARNING: quoted string split across lines

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

Changes in v3:
* fixed the "line over 80 characters" warning
introduced in v2
* updated the commit message

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 0dcdcdd16462..d039e2607116 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -822,8 +822,7 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 				ret = set_pages_uc(pages, blk_pgnr);
 				if (ret) {
 					dev_err(atomisp_dev,
-						     "set page uncacheable"
-							"failed.\n");
+						"set page uncacheable failed.\n");
 
 					__free_pages(pages, order);
 
@@ -1032,8 +1031,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	/* can be written by caller, not forced */
 	if (page_nr != bo->pgnr) {
 		dev_err(atomisp_dev,
-				"get_user_pages err: bo->pgnr = %d, "
-				"pgnr actually pinned = %d.\n",
+			"get_user_pages err: bo->pgnr = %d, pgnr actually pinned = %d.\n",
 				bo->pgnr, page_nr);
 		goto out_of_mem;
 	}
@@ -1498,8 +1496,7 @@ int hmm_bo_mmap(struct vm_area_struct *vma, struct hmm_buffer_object *bo)
 	 */
 	if ((start + pgnr_to_size(pgnr)) != end) {
 		dev_warn(atomisp_dev,
-			     "vma's address space size not equal"
-			     " to buffer object's size");
+			 "vma's address space size not equal to buffer object's size");
 		return -EINVAL;
 	}
 
@@ -1508,9 +1505,8 @@ int hmm_bo_mmap(struct vm_area_struct *vma, struct hmm_buffer_object *bo)
 		pfn = page_to_pfn(bo->page_obj[i].page);
 		if (remap_pfn_range(vma, virt, pfn, PAGE_SIZE, PAGE_SHARED)) {
 			dev_warn(atomisp_dev,
-					"remap_pfn_range failed:"
-					" virt = 0x%x, pfn = 0x%x,"
-					" mapped_pgnr = %d\n", virt, pfn, 1);
+				 "remap_pfn_range failed: virt = 0x%x, pfn = 0x%x, mapped_pgnr = %d\n",
+				 virt, pfn, 1);
 			return -EINVAL;
 		}
 		virt += PAGE_SIZE;
-- 
2.11.0



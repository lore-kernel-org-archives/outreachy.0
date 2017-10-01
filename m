X-GM-THRID: 6470117861435113472
X-Received: by 10.28.92.18 with SMTP id q18mr1376675wmb.15.1506893699558;
        Sun, 01 Oct 2017 14:34:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.188.18 with SMTP id s18ls2972266wrg.9.gmail; Sun, 01 Oct
 2017 14:34:59 -0700 (PDT)
X-Received: by 10.28.133.68 with SMTP id h65mr1300768wmd.28.1506893699040;
        Sun, 01 Oct 2017 14:34:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506893699; cv=none;
        d=google.com; s=arc-20160816;
        b=OKD0BVGT5OpkCRVI1MTIYicwg5hMI4HrselPPmCvPqftNF7QXPrIa5en2j7A+HfjW0
         WcHBSd4WqoA6ZL3s18jA1/cDrt7AofGZB6wIjtxo2MYrbeenkpfOKbHgVuFRp9Qt75Rz
         EJT5x5p11Yg2MiI5j88FEWQ6mEw7RDTbC+0nO4IiNs8viab9ubc/x9dcd4VTmaA7+8r7
         VZoKvHGomTthDvMBuMT2YAzekzgVcM6ZiUEvdzIHEtmhYE39CHKIcpamzV/h1y7ib2US
         IlFYGg5JktfVNFEJeCT89dKLmxGBk8/DRc4dcmIFf4A21ZaelqfmHU+q00jN+YmMUt0X
         jalg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=YU36PmiqPsLdNsUH9tdkDI6B7xTiAYCWeXuC1bj32RI=;
        b=KKBnnw7htXcswBcl0p90sBdfjtP+iquPad2PC/ZbORl0nwLjndma6AoLEOxnJlA6aM
         h5EYRtv13As92EgQjRRfYDfOwegZcLNYnwf0mtet0iflLo6C4ZqFBEvl/2DOtd4xMLJW
         Q1yBCjjPE+EJnWlVWiDkceKZDDZ5cu6uFD8FBFUYhCd0RdOmXvqxBomkeohbEGbnHgWw
         f6CN+5228O+S0Ml9sftVD+bn/i2FVT90JgMHvqLEtHgdGnycax+pkmx2/MhWy1Q7gQ1p
         LQisIoyEkLNp3W3bT4lf5DU4vUplf6iZVAamFF5vOWmQ+OkPrXXoREsYkgc+WGtzBeHU
         xBuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ej3QX89i;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id l133si1086167wmb.3.2017.10.01.14.34.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 14:34:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ej3QX89i;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id k10so2670263wrk.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 14:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YU36PmiqPsLdNsUH9tdkDI6B7xTiAYCWeXuC1bj32RI=;
        b=Ej3QX89i4LS34o1ajc2qm6faCVSEVsoEmjRx86Z8oskVuWxh2Wt8QC8Xn8RJ1PxuI9
         AM9OCqqDWg5xhLFwghIi/pcIzFZjLVCEak85LLiMfUD6g4jZ3WtbTDPiXPy0fB8dZLK/
         nqMl46r1xABFMfnQSH5eL+4ueq+5dQffvOSFyHI6o3m/WsNWhXRYUPCjITkomxuQZ+YC
         DlwM5n5vF6q4A+mS4rJQtIzx3qtG1mqU230sSdz4aMqX3vgo+TclC5rWOxuizHFss7ey
         tSFD0x+uRGy1+vz+bgcNWaxYhUMJrghapcoiA82eaOj5x6HL3rM0Ler4HkrbEzlFYbvr
         BMNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=YU36PmiqPsLdNsUH9tdkDI6B7xTiAYCWeXuC1bj32RI=;
        b=psMhJ8NrYhYI1+wF2D8tl8xZK2usq5TuOKnP1n61xB9aNMr/tK8xSTsAVwfxeXFS4o
         ejan+Ko1SppgKHpd1zk9u/i7QcZnGuSB6kWeW3TrmZrUdGbDpJCQz31ouxl3G351vcqm
         qyJUXWzO1KZriaDusV+fp8SeXXbu1N0UPGy0VrDh2aGZGvUjD7Jmb+5HhG8AbdTBkAV6
         gTT4izibtOK2ib487RyXdhs7qdvK5UdF1CeFoOfF5whZs9BaxEjAI2SH35Dl7OFpFakM
         pp53ldWlHwkokxunDPzAU7QEve9fcgtC+nii4Baut8m38pPOG4xD3xGrkWSqzeqZa4ih
         LcBw==
X-Gm-Message-State: AHPjjUgyxn70YPX1sE4RRZGhEBoGiKQs2EXK7yZmh6YtBZ9+fiL9kwsB
	HYlZYUTZ1GnjLlmJ/28mJJL9CQ==
X-Google-Smtp-Source: AOwi7QB2six0IQAVnxciTWELg/X0EygpGRnnSyamc0xOKe+sIKYgiBc6TSHeDamP1ROv4v0OQRQeCg==
X-Received: by 10.223.130.194 with SMTP id 60mr13428617wrc.54.1506893698648;
        Sun, 01 Oct 2017 14:34:58 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-133-163.residential.rdsnet.ro. [5.12.133.163])
        by smtp.gmail.com with ESMTPSA id e14sm5234644wra.55.2017.10.01.14.34.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 14:34:58 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 7/7] Staging: media: atomisp: Align code with open parenthesis
Date: Mon,  2 Oct 2017 00:34:42 +0300
Message-Id: <9c9781aaa849f795c8e4e515511716ea00af6094.1506891671.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>

Improve the code readability by aligning the code
with the open parenthesis. Also, split lines
with over 80 characters.

Fix issue reported by checkpatch.pl
* CHECK: Alignment should match open parenthesis

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

Changes in v3:
* fixed the "line over 80 characters" warning
introduced in v2
* updated the commit message to reflect the changes

 .../media/atomisp/pci/atomisp2/hmm/hmm_bo.c        | 104 +++++++++++----------
 1 file changed, 53 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index d039e2607116..fbf10041a6d5 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -70,11 +70,11 @@ struct hmm_buffer_object *__bo_alloc(struct kmem_cache *bo_cache)
 }
 
 static int __bo_init(struct hmm_bo_device *bdev, struct hmm_buffer_object *bo,
-					unsigned int pgnr)
+		     unsigned int pgnr)
 {
 	check_bodev_null_return(bdev, -EINVAL);
 	var_equal_return(hmm_bo_device_inited(bdev), 0, -EINVAL,
-			"hmm_bo_device not inited yet.\n");
+			 "hmm_bo_device not inited yet.\n");
 	/* prevent zero size buffer object */
 	if (pgnr == 0) {
 		dev_err(atomisp_dev, "0 size buffer is not allowed.\n");
@@ -106,7 +106,7 @@ struct hmm_buffer_object *__bo_search_and_remove_from_free_rbtree(
 
 	this = rb_entry(node, struct hmm_buffer_object, node);
 	if (this->pgnr == pgnr ||
-		(this->pgnr > pgnr && !this->node.rb_left)) {
+	    (this->pgnr > pgnr && !this->node.rb_left)) {
 		goto remove_bo_and_return;
 	} else {
 		if (this->pgnr < pgnr) {
@@ -151,7 +151,7 @@ struct hmm_buffer_object *__bo_search_and_remove_from_free_rbtree(
 }
 
 struct hmm_buffer_object *__bo_search_by_addr(struct rb_root *root,
-							ia_css_ptr start)
+					      ia_css_ptr start)
 {
 	struct rb_node *n = root->rb_node;
 	struct hmm_buffer_object *bo;
@@ -176,7 +176,7 @@ struct hmm_buffer_object *__bo_search_by_addr(struct rb_root *root,
 }
 
 struct hmm_buffer_object *__bo_search_by_addr_in_range(struct rb_root *root,
-					unsigned int start)
+						       unsigned int start)
 {
 	struct rb_node *n = root->rb_node;
 	struct hmm_buffer_object *bo;
@@ -201,7 +201,7 @@ struct hmm_buffer_object *__bo_search_by_addr_in_range(struct rb_root *root,
 }
 
 static void __bo_insert_to_free_rbtree(struct rb_root *root,
-					struct hmm_buffer_object *bo)
+				       struct hmm_buffer_object *bo)
 {
 	struct rb_node **new = &(root->rb_node);
 	struct rb_node *parent = NULL;
@@ -332,7 +332,7 @@ static void __bo_take_off_handling(struct hmm_buffer_object *bo)
 }
 
 struct hmm_buffer_object *__bo_merge(struct hmm_buffer_object *bo,
-					struct hmm_buffer_object *next_bo)
+				     struct hmm_buffer_object *next_bo)
 {
 	struct hmm_bo_device *bdev;
 	unsigned long flags;
@@ -354,9 +354,9 @@ struct hmm_buffer_object *__bo_merge(struct hmm_buffer_object *bo,
  * hmm_bo_device functions.
  */
 int hmm_bo_device_init(struct hmm_bo_device *bdev,
-				struct isp_mmu_client *mmu_driver,
-				unsigned int vaddr_start,
-				unsigned int size)
+		       struct isp_mmu_client *mmu_driver,
+		       unsigned int vaddr_start,
+		       unsigned int size)
 {
 	struct hmm_buffer_object *bo;
 	unsigned long flags;
@@ -384,7 +384,8 @@ int hmm_bo_device_init(struct hmm_bo_device *bdev,
 	bdev->free_rbtree = RB_ROOT;
 
 	bdev->bo_cache = kmem_cache_create("bo_cache",
-				sizeof(struct hmm_buffer_object), 0, 0, NULL);
+					   sizeof(struct hmm_buffer_object),
+					   0, 0, NULL);
 	if (!bdev->bo_cache) {
 		dev_err(atomisp_dev, "%s: create cache failed!\n", __func__);
 		isp_mmu_exit(&bdev->mmu);
@@ -416,14 +417,14 @@ int hmm_bo_device_init(struct hmm_bo_device *bdev,
 }
 
 struct hmm_buffer_object *hmm_bo_alloc(struct hmm_bo_device *bdev,
-					unsigned int pgnr)
+				       unsigned int pgnr)
 {
 	struct hmm_buffer_object *bo, *new_bo;
 	struct rb_root *root = &bdev->free_rbtree;
 
 	check_bodev_null_return(bdev, NULL);
 	var_equal_return(hmm_bo_device_inited(bdev), 0, NULL,
-			"hmm_bo_device not inited yet.\n");
+			 "hmm_bo_device not inited yet.\n");
 
 	if (pgnr == 0) {
 		dev_err(atomisp_dev, "0 size buffer is not allowed.\n");
@@ -504,15 +505,15 @@ void hmm_bo_release(struct hmm_buffer_object *bo)
 	next_bo = list_entry(bo->list.next, struct hmm_buffer_object, list);
 
 	if (bo->list.prev != &bdev->entire_bo_list &&
-		prev_bo->end == bo->start &&
-		(prev_bo->status & HMM_BO_MASK) == HMM_BO_FREE) {
+	    prev_bo->end == bo->start &&
+	    (prev_bo->status & HMM_BO_MASK) == HMM_BO_FREE) {
 		__bo_take_off_handling(prev_bo);
 		bo = __bo_merge(prev_bo, bo);
 	}
 
 	if (bo->list.next != &bdev->entire_bo_list &&
-		next_bo->start == bo->end &&
-		(next_bo->status & HMM_BO_MASK) == HMM_BO_FREE) {
+	    next_bo->start == bo->end &&
+	    (next_bo->status & HMM_BO_MASK) == HMM_BO_FREE) {
 		__bo_take_off_handling(next_bo);
 		bo = __bo_merge(bo, next_bo);
 	}
@@ -642,9 +643,9 @@ struct hmm_buffer_object *hmm_bo_device_search_vmap_start(
 
 
 static void free_private_bo_pages(struct hmm_buffer_object *bo,
-				struct hmm_pool *dypool,
-				struct hmm_pool *repool,
-				int free_pgnr)
+				  struct hmm_pool *dypool,
+				  struct hmm_pool *repool,
+				  int free_pgnr)
 {
 	int i, ret;
 
@@ -683,8 +684,8 @@ static void free_private_bo_pages(struct hmm_buffer_object *bo,
 			ret = set_pages_wb(bo->page_obj[i].page, 1);
 			if (ret)
 				dev_err(atomisp_dev,
-						"set page to WB err ...ret = %d\n",
-							ret);
+					"set page to WB err ...ret = %d\n",
+					ret);
 			/*
 			W/A: set_pages_wb seldom return value = -EFAULT
 			indicate that address of page is not in valid
@@ -703,10 +704,10 @@ static void free_private_bo_pages(struct hmm_buffer_object *bo,
 
 /*Allocate pages which will be used only by ISP*/
 static int alloc_private_pages(struct hmm_buffer_object *bo,
-				int from_highmem,
-				bool cached,
-				struct hmm_pool *dypool,
-				struct hmm_pool *repool)
+			       int from_highmem,
+			       bool cached,
+			       struct hmm_pool *dypool,
+			       struct hmm_pool *repool)
 {
 	int ret;
 	unsigned int pgnr, order, blk_pgnr, alloc_pgnr;
@@ -723,7 +724,7 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 	pgnr = bo->pgnr;
 
 	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
-				GFP_KERNEL);
+				     GFP_KERNEL);
 	if (!bo->page_obj)
 		return -ENOMEM;
 
@@ -735,8 +736,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 	 */
 	if (dypool->pops && dypool->pops->pool_alloc_pages) {
 		alloc_pgnr = dypool->pops->pool_alloc_pages(dypool->pool_info,
-							bo->page_obj, pgnr,
-							cached);
+							    bo->page_obj, pgnr,
+							    cached);
 		hmm_mem_stat.dyc_size -= alloc_pgnr;
 
 		if (alloc_pgnr == pgnr)
@@ -860,8 +861,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 }
 
 static void free_private_pages(struct hmm_buffer_object *bo,
-				struct hmm_pool *dypool,
-				struct hmm_pool *repool)
+			       struct hmm_pool *dypool,
+			       struct hmm_pool *repool)
 {
 	free_private_bo_pages(bo, dypool, repool, bo->pgnr);
 
@@ -958,8 +959,9 @@ static int __get_pfnmap_pages(struct task_struct *tsk, struct mm_struct *mm,
 }
 
 static int get_pfnmap_pages(struct task_struct *tsk, struct mm_struct *mm,
-		     unsigned long start, int nr_pages, int write, int force,
-		     struct page **pages, struct vm_area_struct **vmas)
+			    unsigned long start, int nr_pages, int write,
+			    int force, struct page **pages,
+			    struct vm_area_struct **vmas)
 {
 	int flags = FOLL_TOUCH;
 
@@ -977,7 +979,7 @@ static int get_pfnmap_pages(struct task_struct *tsk, struct mm_struct *mm,
  * Convert user space virtual address into pages list
  */
 static int alloc_user_pages(struct hmm_buffer_object *bo,
-			      void *userptr, bool cached)
+			    void *userptr, bool cached)
 {
 	int page_nr;
 	int i;
@@ -989,7 +991,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 		return -ENOMEM;
 
 	bo->page_obj = kmalloc_array(bo->pgnr, sizeof(struct hmm_page_object),
-		GFP_KERNEL);
+				     GFP_KERNEL);
 	if (!bo->page_obj) {
 		kfree(pages);
 		return -ENOMEM;
@@ -1032,7 +1034,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	if (page_nr != bo->pgnr) {
 		dev_err(atomisp_dev,
 			"get_user_pages err: bo->pgnr = %d, pgnr actually pinned = %d.\n",
-				bo->pgnr, page_nr);
+			bo->pgnr, page_nr);
 		goto out_of_mem;
 	}
 
@@ -1097,7 +1099,8 @@ int hmm_bo_alloc_pages(struct hmm_buffer_object *bo,
 	 */
 	if (type == HMM_BO_PRIVATE) {
 		ret = alloc_private_pages(bo, from_highmem,
-				cached, &dynamic_pool, &reserved_pool);
+					  cached, &dynamic_pool,
+					  &reserved_pool);
 	} else if (type == HMM_BO_USER) {
 		ret = alloc_user_pages(bo, userptr, cached);
 	} else {
@@ -1122,7 +1125,7 @@ int hmm_bo_alloc_pages(struct hmm_buffer_object *bo,
 status_err:
 	mutex_unlock(&bo->mutex);
 	dev_err(atomisp_dev,
-			"buffer object has already page allocated.\n");
+		"buffer object has already page allocated.\n");
 	return -EINVAL;
 }
 
@@ -1153,7 +1156,7 @@ void hmm_bo_free_pages(struct hmm_buffer_object *bo)
 status_err2:
 	mutex_unlock(&bo->mutex);
 	dev_err(atomisp_dev,
-			"buffer object not page allocated yet.\n");
+		"buffer object not page allocated yet.\n");
 }
 
 int hmm_bo_page_allocated(struct hmm_buffer_object *bo)
@@ -1188,7 +1191,7 @@ int hmm_bo_get_page_info(struct hmm_buffer_object *bo,
 
 status_err:
 	dev_err(atomisp_dev,
-			"buffer object not page allocated yet.\n");
+		"buffer object not page allocated yet.\n");
 	mutex_unlock(&bo->mutex);
 	return -EINVAL;
 }
@@ -1207,9 +1210,8 @@ int hmm_bo_bind(struct hmm_buffer_object *bo)
 
 	mutex_lock(&bo->mutex);
 
-	check_bo_status_yes_goto(bo,
-				   HMM_BO_PAGE_ALLOCED | HMM_BO_ALLOCED,
-				   status_err1);
+	check_bo_status_yes_goto(bo, HMM_BO_PAGE_ALLOCED | HMM_BO_ALLOCED,
+				 status_err1);
 
 	check_bo_status_no_goto(bo, HMM_BO_BINDED, status_err2);
 
@@ -1239,7 +1241,7 @@ int hmm_bo_bind(struct hmm_buffer_object *bo)
 	 */
 	if (bo->start != 0x0)
 		isp_mmu_flush_tlb_range(&bdev->mmu, bo->start,
-						(bo->pgnr << PAGE_SHIFT));
+					(bo->pgnr << PAGE_SHIFT));
 
 	bo->status |= HMM_BO_BINDED;
 
@@ -1257,7 +1259,7 @@ int hmm_bo_bind(struct hmm_buffer_object *bo)
 
 	mutex_unlock(&bo->mutex);
 	dev_err(atomisp_dev,
-			"setup MMU address mapping failed.\n");
+		"setup MMU address mapping failed.\n");
 	return ret;
 
 status_err2:
@@ -1267,7 +1269,7 @@ int hmm_bo_bind(struct hmm_buffer_object *bo)
 status_err1:
 	mutex_unlock(&bo->mutex);
 	dev_err(atomisp_dev,
-		     "buffer object vm_node or page not allocated.\n");
+		"buffer object vm_node or page not allocated.\n");
 	return -EINVAL;
 }
 
@@ -1285,9 +1287,9 @@ void hmm_bo_unbind(struct hmm_buffer_object *bo)
 	mutex_lock(&bo->mutex);
 
 	check_bo_status_yes_goto(bo,
-				   HMM_BO_PAGE_ALLOCED |
-				   HMM_BO_ALLOCED |
-				   HMM_BO_BINDED, status_err);
+				 HMM_BO_PAGE_ALLOCED |
+				 HMM_BO_ALLOCED |
+				 HMM_BO_BINDED, status_err);
 
 	bdev = bo->bdev;
 
@@ -1314,7 +1316,7 @@ void hmm_bo_unbind(struct hmm_buffer_object *bo)
 status_err:
 	mutex_unlock(&bo->mutex);
 	dev_err(atomisp_dev,
-		     "buffer vm or page not allocated or not binded yet.\n");
+		"buffer vm or page not allocated or not binded yet.\n");
 }
 
 int hmm_bo_binded(struct hmm_buffer_object *bo)
@@ -1363,7 +1365,7 @@ void *hmm_bo_vmap(struct hmm_buffer_object *bo, bool cached)
 		pages[i] = bo->page_obj[i].page;
 
 	bo->vmap_addr = vmap(pages, bo->pgnr, VM_MAP,
-		cached ? PAGE_KERNEL : PAGE_KERNEL_NOCACHE);
+			     cached ? PAGE_KERNEL : PAGE_KERNEL_NOCACHE);
 	if (unlikely(!bo->vmap_addr)) {
 		kfree(pages);
 		mutex_unlock(&bo->mutex);
-- 
2.11.0



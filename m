X-GM-THRID: 6470117861435113472
X-Received: by 10.46.42.196 with SMTP id q187mr863874ljq.29.1506441724038;
        Tue, 26 Sep 2017 09:02:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.72 with SMTP id x8ls2854095ljd.12.gmail; Tue, 26 Sep
 2017 09:02:03 -0700 (PDT)
X-Received: by 10.25.195.77 with SMTP id t74mr374657lff.37.1506441723332;
        Tue, 26 Sep 2017 09:02:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506441723; cv=none;
        d=google.com; s=arc-20160816;
        b=Ux3fRlP7H/oXokNzvWD33GkTHGbb5kQaHxG9rTLGM98qAvVuTMBskVwmj3o90cGjK2
         nx2fV0zDSjvL9KM7zf+T3hlSpxMn94RWeATvE8F8iFoiwoxdD73Es+OyxrJz9f3bmBuC
         wGiCXK9ywKW2qzagTO9EuUk2vuobiWDBnX13mcby9rz4PREqxmOQorN2ljV4FKSrWGLM
         glPyG7fgBOx7Js+Gg5TyeT9VpJUbOgIhlRI4266s4zMwacvdUHeofgiMwao7YFyJtSsO
         6h+6+RMBaxiZ9B3HLVrWOFTNR1TA++a7g4rHLZkedFBq0iqjTPnBtmVjV1EXeSbgpeBy
         dY6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=6v4idQCABa+PkmX2ZFpHT/aVP42XoV4y3BBPd6R2jog=;
        b=slp1w2Yi3GOtNapJC7UDNX9GmEjwDLIKj43ptdV9k1SZhKCVWuXlO8oH2mPzxH6Q6d
         1mL3qWlxeNzLK3AAUy9fA3nkvmlu6VTehvsP7oO184bxVO9gr6wpoXFb1ckt50Nf+nCD
         4yeEDuCQAJDVXmgl4wEgR8npXquCVF1h2A03KMmZurGIqdEdLGeNf+Fg+4s+4z7q2032
         Kf25XZ7Ug8fGVM5rjT2Pc4C71lZlgDXPKNROgbRlIvscvFswJ2/mskTdEaX2EMTvhFpH
         JGnUfvMaBYapuHpmD+956kHfAdv9MYZFGlFZ8UCRyJb4oDis1Ibog2RBl4j2HKwMMyD4
         Z/3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sEZy3JKY;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id t142si906058wmt.2.2017.09.26.09.02.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:02:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sEZy3JKY;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id g50so2777503wra.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=6v4idQCABa+PkmX2ZFpHT/aVP42XoV4y3BBPd6R2jog=;
        b=sEZy3JKYkf4II7RYqWj6PhFZUuJod3UJmguEiambkmrV9JgGijZl0mELnpilca7n7P
         xJ/MCrlpfwWU3O4cD/UGxXDI6GobPNp8ytukzZgdDWyrabHAv9cmjj1bn7/c72bkL6SF
         RddOQAQSVLlCk3lLLGnue8FKwMZCpth7fxUl5bNwBYqqBAIm5ax4eZsLGXlo/sPEuGEx
         o6akLGTCXLfJ3GEOmENfTUuavTGoJ/ADMCRf5dEbJI54qBRLiysGFd+ReDqtFcgIHl7n
         GfyuUw+AO52Q6cb3VZMTtqyB3maDusKq65dQAiYDJJ5rU0KlbPk/tOkvYigv9Ve4IO/m
         5tQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=6v4idQCABa+PkmX2ZFpHT/aVP42XoV4y3BBPd6R2jog=;
        b=QCCgyv9FnCDfbXouuEgk7fLN9Oj80cf7cQuv9FZUi6dqhSIHSwLOvuLM2NN2gCuJPC
         Dc3MovmajfPVGRetr2nrD36MRWoKwj5NgtFCqSCSXxdtew7F6EGSw3bDnfqi4ztvZSGK
         8FGAdE9cXvaiBU5o82MOjNo4bXqLGT936ZyyBZlApImqzjoCjKlOT+mHOY53dy7OVhal
         VfNDk3ylHsd79RQNKFalLR1AJpwIgFy7a2q/ybSpE/u5KwUoevoRFG4d0ntTcXhiO8E7
         lw9j7Wf4H9wPVKCyT5acYaU3+IKLunLvnjXfyN8F/sRt+VdjVQ1YP/YjKh2F0mZyjpkP
         J7RQ==
X-Gm-Message-State: AHPjjUjcNfT4sToLLbCyBCLU+GoFjIByGcddb7pJWRfxNHZ3nU0CPZc2
	CC8V+VGmwH/5oHLe5R4ddCSDwn8w
X-Google-Smtp-Source: AOwi7QCND6bDPx4QVEpkHSEb6I1lFQCtpXnQNqluGA+mh9J/k7f6yYpp+iJy5sNH91zMjQ2l1K4fQQ==
X-Received: by 10.223.152.175 with SMTP id w44mr9029082wrb.98.1506441722516;
        Tue, 26 Sep 2017 09:02:02 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id o11sm5976678wrg.5.2017.09.26.09.02.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 09:02:02 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 08/10] Staging: media: atomisp: Align code with open parenthesis
Date: Tue, 26 Sep 2017 09:01:36 -0700
Message-Id: <70d1b575d96baec2c05094c222814624aa7644d5.1506436974.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>

Improve the code readability by aligning the code
with the open parenthesis.c

Fix issue reported by checkpatch.pl
* CHECK: Alignment should match open parenthesis

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

 .../media/atomisp/pci/atomisp2/hmm/hmm_bo.c        | 119 ++++++++++-----------
 1 file changed, 59 insertions(+), 60 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 0dcdcdd..1781ee2 100644
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
@@ -384,7 +384,7 @@ int hmm_bo_device_init(struct hmm_bo_device *bdev,
 	bdev->free_rbtree = RB_ROOT;
 
 	bdev->bo_cache = kmem_cache_create("bo_cache",
-				sizeof(struct hmm_buffer_object), 0, 0, NULL);
+					   sizeof(struct hmm_buffer_object), 0, 0, NULL);
 	if (!bdev->bo_cache) {
 		dev_err(atomisp_dev, "%s: create cache failed!\n", __func__);
 		isp_mmu_exit(&bdev->mmu);
@@ -416,14 +416,14 @@ int hmm_bo_device_init(struct hmm_bo_device *bdev,
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
@@ -504,15 +504,15 @@ void hmm_bo_release(struct hmm_buffer_object *bo)
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
@@ -642,9 +642,9 @@ struct hmm_buffer_object *hmm_bo_device_search_vmap_start(
 
 
 static void free_private_bo_pages(struct hmm_buffer_object *bo,
-				struct hmm_pool *dypool,
-				struct hmm_pool *repool,
-				int free_pgnr)
+				  struct hmm_pool *dypool,
+				  struct hmm_pool *repool,
+				  int free_pgnr)
 {
 	int i, ret;
 
@@ -683,8 +683,7 @@ static void free_private_bo_pages(struct hmm_buffer_object *bo,
 			ret = set_pages_wb(bo->page_obj[i].page, 1);
 			if (ret)
 				dev_err(atomisp_dev,
-						"set page to WB err ...ret = %d\n",
-							ret);
+					"set page to WB err ...ret = %d\n", ret);
 			/*
 			W/A: set_pages_wb seldom return value = -EFAULT
 			indicate that address of page is not in valid
@@ -703,10 +702,10 @@ static void free_private_bo_pages(struct hmm_buffer_object *bo,
 
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
@@ -723,7 +722,7 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 	pgnr = bo->pgnr;
 
 	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
-				GFP_KERNEL);
+				     GFP_KERNEL);
 	if (!bo->page_obj)
 		return -ENOMEM;
 
@@ -735,8 +734,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 	 */
 	if (dypool->pops && dypool->pops->pool_alloc_pages) {
 		alloc_pgnr = dypool->pops->pool_alloc_pages(dypool->pool_info,
-							bo->page_obj, pgnr,
-							cached);
+							    bo->page_obj, pgnr,
+							    cached);
 		hmm_mem_stat.dyc_size -= alloc_pgnr;
 
 		if (alloc_pgnr == pgnr)
@@ -822,8 +821,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 				ret = set_pages_uc(pages, blk_pgnr);
 				if (ret) {
 					dev_err(atomisp_dev,
-						     "set page uncacheable"
-							"failed.\n");
+						"set page uncacheable"
+						"failed.\n");
 
 					__free_pages(pages, order);
 
@@ -861,8 +860,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 }
 
 static void free_private_pages(struct hmm_buffer_object *bo,
-				struct hmm_pool *dypool,
-				struct hmm_pool *repool)
+			       struct hmm_pool *dypool,
+			       struct hmm_pool *repool)
 {
 	free_private_bo_pages(bo, dypool, repool, bo->pgnr);
 
@@ -959,8 +958,8 @@ static int __get_pfnmap_pages(struct task_struct *tsk, struct mm_struct *mm,
 }
 
 static int get_pfnmap_pages(struct task_struct *tsk, struct mm_struct *mm,
-		     unsigned long start, int nr_pages, int write, int force,
-		     struct page **pages, struct vm_area_struct **vmas)
+			    unsigned long start, int nr_pages, int write, int force,
+			    struct page **pages, struct vm_area_struct **vmas)
 {
 	int flags = FOLL_TOUCH;
 
@@ -978,7 +977,7 @@ static int get_pfnmap_pages(struct task_struct *tsk, struct mm_struct *mm,
  * Convert user space virtual address into pages list
  */
 static int alloc_user_pages(struct hmm_buffer_object *bo,
-			      void *userptr, bool cached)
+			    void *userptr, bool cached)
 {
 	int page_nr;
 	int i;
@@ -990,7 +989,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 		return -ENOMEM;
 
 	bo->page_obj = kmalloc_array(bo->pgnr, sizeof(struct hmm_page_object),
-		GFP_KERNEL);
+				     GFP_KERNEL);
 	if (!bo->page_obj) {
 		kfree(pages);
 		return -ENOMEM;
@@ -1032,9 +1031,9 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	/* can be written by caller, not forced */
 	if (page_nr != bo->pgnr) {
 		dev_err(atomisp_dev,
-				"get_user_pages err: bo->pgnr = %d, "
-				"pgnr actually pinned = %d.\n",
-				bo->pgnr, page_nr);
+			"get_user_pages err: bo->pgnr = %d, "
+			"pgnr actually pinned = %d.\n",
+			bo->pgnr, page_nr);
 		goto out_of_mem;
 	}
 
@@ -1099,7 +1098,8 @@ int hmm_bo_alloc_pages(struct hmm_buffer_object *bo,
 	 */
 	if (type == HMM_BO_PRIVATE) {
 		ret = alloc_private_pages(bo, from_highmem,
-				cached, &dynamic_pool, &reserved_pool);
+					  cached, &dynamic_pool,
+					  &reserved_pool);
 	} else if (type == HMM_BO_USER) {
 		ret = alloc_user_pages(bo, userptr, cached);
 	} else {
@@ -1124,7 +1124,7 @@ int hmm_bo_alloc_pages(struct hmm_buffer_object *bo,
 status_err:
 	mutex_unlock(&bo->mutex);
 	dev_err(atomisp_dev,
-			"buffer object has already page allocated.\n");
+		"buffer object has already page allocated.\n");
 	return -EINVAL;
 }
 
@@ -1155,7 +1155,7 @@ void hmm_bo_free_pages(struct hmm_buffer_object *bo)
 status_err2:
 	mutex_unlock(&bo->mutex);
 	dev_err(atomisp_dev,
-			"buffer object not page allocated yet.\n");
+		"buffer object not page allocated yet.\n");
 }
 
 int hmm_bo_page_allocated(struct hmm_buffer_object *bo)
@@ -1190,7 +1190,7 @@ int hmm_bo_get_page_info(struct hmm_buffer_object *bo,
 
 status_err:
 	dev_err(atomisp_dev,
-			"buffer object not page allocated yet.\n");
+		"buffer object not page allocated yet.\n");
 	mutex_unlock(&bo->mutex);
 	return -EINVAL;
 }
@@ -1209,9 +1209,8 @@ int hmm_bo_bind(struct hmm_buffer_object *bo)
 
 	mutex_lock(&bo->mutex);
 
-	check_bo_status_yes_goto(bo,
-				   HMM_BO_PAGE_ALLOCED | HMM_BO_ALLOCED,
-				   status_err1);
+	check_bo_status_yes_goto(bo, HMM_BO_PAGE_ALLOCED | HMM_BO_ALLOCED,
+				 status_err1);
 
 	check_bo_status_no_goto(bo, HMM_BO_BINDED, status_err2);
 
@@ -1241,7 +1240,7 @@ int hmm_bo_bind(struct hmm_buffer_object *bo)
 	 */
 	if (bo->start != 0x0)
 		isp_mmu_flush_tlb_range(&bdev->mmu, bo->start,
-						(bo->pgnr << PAGE_SHIFT));
+					(bo->pgnr << PAGE_SHIFT));
 
 	bo->status |= HMM_BO_BINDED;
 
@@ -1259,7 +1258,7 @@ int hmm_bo_bind(struct hmm_buffer_object *bo)
 
 	mutex_unlock(&bo->mutex);
 	dev_err(atomisp_dev,
-			"setup MMU address mapping failed.\n");
+		"setup MMU address mapping failed.\n");
 	return ret;
 
 status_err2:
@@ -1269,7 +1268,7 @@ int hmm_bo_bind(struct hmm_buffer_object *bo)
 status_err1:
 	mutex_unlock(&bo->mutex);
 	dev_err(atomisp_dev,
-		     "buffer object vm_node or page not allocated.\n");
+		"buffer object vm_node or page not allocated.\n");
 	return -EINVAL;
 }
 
@@ -1287,9 +1286,9 @@ void hmm_bo_unbind(struct hmm_buffer_object *bo)
 	mutex_lock(&bo->mutex);
 
 	check_bo_status_yes_goto(bo,
-				   HMM_BO_PAGE_ALLOCED |
-				   HMM_BO_ALLOCED |
-				   HMM_BO_BINDED, status_err);
+				 HMM_BO_PAGE_ALLOCED |
+				 HMM_BO_ALLOCED |
+				 HMM_BO_BINDED, status_err);
 
 	bdev = bo->bdev;
 
@@ -1316,7 +1315,7 @@ void hmm_bo_unbind(struct hmm_buffer_object *bo)
 status_err:
 	mutex_unlock(&bo->mutex);
 	dev_err(atomisp_dev,
-		     "buffer vm or page not allocated or not binded yet.\n");
+		"buffer vm or page not allocated or not binded yet.\n");
 }
 
 int hmm_bo_binded(struct hmm_buffer_object *bo)
@@ -1365,7 +1364,7 @@ void *hmm_bo_vmap(struct hmm_buffer_object *bo, bool cached)
 		pages[i] = bo->page_obj[i].page;
 
 	bo->vmap_addr = vmap(pages, bo->pgnr, VM_MAP,
-		cached ? PAGE_KERNEL : PAGE_KERNEL_NOCACHE);
+			     cached ? PAGE_KERNEL : PAGE_KERNEL_NOCACHE);
 	if (unlikely(!bo->vmap_addr)) {
 		kfree(pages);
 		mutex_unlock(&bo->mutex);
@@ -1498,8 +1497,8 @@ int hmm_bo_mmap(struct vm_area_struct *vma, struct hmm_buffer_object *bo)
 	 */
 	if ((start + pgnr_to_size(pgnr)) != end) {
 		dev_warn(atomisp_dev,
-			     "vma's address space size not equal"
-			     " to buffer object's size");
+			 "vma's address space size not equal"
+			 " to buffer object's size");
 		return -EINVAL;
 	}
 
@@ -1508,9 +1507,9 @@ int hmm_bo_mmap(struct vm_area_struct *vma, struct hmm_buffer_object *bo)
 		pfn = page_to_pfn(bo->page_obj[i].page);
 		if (remap_pfn_range(vma, virt, pfn, PAGE_SIZE, PAGE_SHARED)) {
 			dev_warn(atomisp_dev,
-					"remap_pfn_range failed:"
-					" virt = 0x%x, pfn = 0x%x,"
-					" mapped_pgnr = %d\n", virt, pfn, 1);
+				 "remap_pfn_range failed:"
+				 " virt = 0x%x, pfn = 0x%x,"
+				 " mapped_pgnr = %d\n", virt, pfn, 1);
 			return -EINVAL;
 		}
 		virt += PAGE_SIZE;
-- 
2.7.4



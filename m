X-GM-THRID: 6470117861435113472
X-Received: by 10.28.63.130 with SMTP id m124mr1488627wma.20.1506893693882;
        Sun, 01 Oct 2017 14:34:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.160.247 with SMTP id n52ls2964652wrn.6.gmail; Sun, 01 Oct
 2017 14:34:53 -0700 (PDT)
X-Received: by 10.28.174.201 with SMTP id x192mr307389wme.14.1506893693342;
        Sun, 01 Oct 2017 14:34:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506893693; cv=none;
        d=google.com; s=arc-20160816;
        b=yWknELHhR3p4JxXYdpXCG/DnrpLnWuK6B4jUO3fiakt/vnbsmaRZy4Hp0vPWduA/jD
         XUUkaQhK8m2LC2sDewLDCRgUIMmoUgHn6jtRG9txxdvvqoYab/nTSQ+ftCHuO6Bv4ec5
         VSgVvoPf1uN5CerCh4yXW3zwcLWI6ZcJFR4QM1hSr1fWhWcMVw5SGALNdGa4+CIp+bGP
         0Ux/8Uu19eN24VNngS0Q86UmImEPku2TtETFJGdZP0eqHJasKQu2cbGk4EzoWUSGX/6Y
         JFaYro3q3iPiDqB9XIhqHLq+F3g5s/+pZgs2dOck8uBUtEasSbbCFN2LyJHazObCbkSW
         nIRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=sa3DvHtbiUQUZlXpXYF1GbTEcEBPL8Xd/dHw+7rn2RA=;
        b=DRchc3Yv+1y3A6f/OGpYwTyQhrDu8YzNOF2YdjNKgPHttvPB8ZDjrXwIgkYLb4gPHY
         jHK5xrGZxPpFaXSdgYZ+kzkBesbbv+0bowr2Ygm+TGdYa/Mg6kzUp58h+U9GmZ+uBiDB
         cBc6/NMLDUpW+i7VwGRpBv5tZHxIC2d5sTHrsY7YNBDBggUTEnMiLf7xXU3wOHBzIgIk
         /svGLk6FQK8neFbgXc0RpsYhkSYbiOnnmM7BBDYYDkL3TSvHgEOCatOhmfZmqQg0q+p9
         Id12PfAOHKl7rytktGvoBrbU/1huDO61iiZGOXWsxQ5uDzUjeCLxPNqm/T0PPespGZat
         h9Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dpuX67Z0;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id t65si674491wmg.3.2017.10.01.14.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 14:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dpuX67Z0;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id 45so2665995wry.5
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 14:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=sa3DvHtbiUQUZlXpXYF1GbTEcEBPL8Xd/dHw+7rn2RA=;
        b=dpuX67Z0VCghPjQSoDLMpnZr95yxV9C+vzxYwuZ9yAF9qqSMyh3SPLUp9bcW3DiHqJ
         nBHplM55Rex5976Mqp4ML/Rd2tIcaHTPTIiDO1g+pVa2G1WgBpcOedlqJX0v49TtHEaY
         8yjPentYc3JyPwmWNn2joBYGLBPBu6A+jwJzGQmgj2MbCPZNj6NiUZIYZn2BLkVaKJPd
         c1JTqeQc72kxwqQVNzgEr9OCwj7Bmd06ilyGPjVWJeIA8EH4KK7prlaqWvpuN6O8Tyul
         QRpdr1mIzVuLB+4clHu5SCIVTd11Je7kTuyp18s0vUscDpY+FvLBF0rcLYJauyKWz4Pa
         ogng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=sa3DvHtbiUQUZlXpXYF1GbTEcEBPL8Xd/dHw+7rn2RA=;
        b=E+nCKbncNVF45+HJlilUB3W2MQJV/HrXYyaPC3iBWnW9/s+zjWzd6k1ltY044YG+MV
         ovB7z76YSnsjdSngxiTxh/2ZE5ubRWbjeOHn9DhL9sGcta26GC9mCkGdP66imsbSMSNX
         vG5LtkSTL8qFFMbaJM9sgGfkVFizeEOpzG7CxHGD90FOSYScVCBbTvellqSREelZx7hY
         ZgkmjQkwHwtpwCj1ikQlGNiW3p1O+F4bbT+NuSvOGD13MfBm6kwXwBpnG3iwwyAEpQeY
         dhvO9joVxwIi1CNHdw6Aqgpthofv59q8P4W+O2Uc0lHQHoQ0/onb2IOvLtdwV6wWEY2q
         eA0w==
X-Gm-Message-State: AMCzsaWqnkTIA2ClI1cvgwIhbXA5U/vLrVLiL+V103ycuqbxxm+0cAtX
	AZWJR/toOXJldoAyXWyKGLzeyw==
X-Google-Smtp-Source: AOwi7QAwAxvtkgAthfOuJaGBNf1k9SV4hSlRd9utW5UTVBeVgBBv/4gNJBEO8d3fSeXbU09aPVDWcw==
X-Received: by 10.223.177.137 with SMTP id q9mr5739738wra.122.1506893693000;
        Sun, 01 Oct 2017 14:34:53 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-133-163.residential.rdsnet.ro. [5.12.133.163])
        by smtp.gmail.com with ESMTPSA id q4sm9641603wmd.19.2017.10.01.14.34.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 14:34:52 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 3/7] Staging: media: atomisp: Adjust checks for null pointers
Date: Mon,  2 Oct 2017 00:34:38 +0300
Message-Id: <eef8dc41a3477b3c5f8bc57cd21ff969fdf8177e.1506891671.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>

Rewrite the comparison to NULL for better coding style.

Fix issue reported by checkpatch.pl:
* CHECK: Comparison to NULL could be written

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

Changes in v3:
* nothing changed

 .../staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c  | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 80952b7a9cc6..a180752e7c66 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -106,7 +106,7 @@ struct hmm_buffer_object *__bo_search_and_remove_from_free_rbtree(
 
 	this = rb_entry(node, struct hmm_buffer_object, node);
 	if (this->pgnr == pgnr ||
-		(this->pgnr > pgnr && this->node.rb_left == NULL)) {
+		(this->pgnr > pgnr && !this->node.rb_left)) {
 		goto remove_bo_and_return;
 	} else {
 		if (this->pgnr < pgnr) {
@@ -132,7 +132,7 @@ struct hmm_buffer_object *__bo_search_and_remove_from_free_rbtree(
 	 * 1. check if 'this->next' is NULL:
 	 *	yes: erase 'this' node and rebalance rbtree, return 'this'.
 	 */
-	if (this->next == NULL) {
+	if (!this->next) {
 		rb_erase(&this->node, &this->bdev->free_rbtree);
 		return this;
 	}
@@ -160,11 +160,11 @@ struct hmm_buffer_object *__bo_search_by_addr(struct rb_root *root,
 		bo = rb_entry(n, struct hmm_buffer_object, node);
 
 		if (bo->start > start) {
-			if (n->rb_left == NULL)
+			if (!n->rb_left)
 				return NULL;
 			n = n->rb_left;
 		} else if (bo->start < start) {
-			if (n->rb_right == NULL)
+			if (!n->rb_right)
 				return NULL;
 			n = n->rb_right;
 		} else {
@@ -185,13 +185,13 @@ struct hmm_buffer_object *__bo_search_by_addr_in_range(struct rb_root *root,
 		bo = rb_entry(n, struct hmm_buffer_object, node);
 
 		if (bo->start > start) {
-			if (n->rb_left == NULL)
+			if (!n->rb_left)
 				return NULL;
 			n = n->rb_left;
 		} else {
 			if (bo->end > start)
 				return bo;
-			if (n->rb_right == NULL)
+			if (!n->rb_right)
 				return NULL;
 			n = n->rb_right;
 		}
@@ -298,14 +298,14 @@ static void __bo_take_off_handling(struct hmm_buffer_object *bo)
 	 *	and does not have a linked list after bo, to take off this bo,
 	 *	we just need erase bo directly and rebalance the free rbtree
 	 */
-	if (bo->prev == NULL && bo->next == NULL) {
+	if (!bo->prev && !bo->next) {
 		rb_erase(&bo->node, &bdev->free_rbtree);
 	/* 2. when bo->next != NULL && bo->prev == NULL, bo is a rbtree node,
 	 *	and has a linked list,to take off this bo we need erase bo
 	 *	first, then, insert bo->next into free rbtree and rebalance
 	 *	the free rbtree
 	 */
-	} else if (bo->prev == NULL && bo->next != NULL) {
+	} else if (!bo->prev && bo->next) {
 		bo->next->prev = NULL;
 		rb_erase(&bo->node, &bdev->free_rbtree);
 		__bo_insert_to_free_rbtree(&bdev->free_rbtree, bo->next);
@@ -315,7 +315,7 @@ static void __bo_take_off_handling(struct hmm_buffer_object *bo)
 	 *	node, to take off this bo, we just need set the "prev/next"
 	 *	pointers to NULL, the free rbtree stays unchaged
 	 */
-	} else if (bo->prev != NULL && bo->next == NULL) {
+	} else if (bo->prev && !bo->next) {
 		bo->prev->next = NULL;
 		bo->prev = NULL;
 	/* 4. when bo->prev != NULL && bo->next != NULL ,bo is not a rbtree
@@ -1003,7 +1003,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	down_read(&current->mm->mmap_sem);
 	vma = find_vma(current->mm, (unsigned long)userptr);
 	up_read(&current->mm->mmap_sem);
-	if (vma == NULL) {
+	if (!vma) {
 		dev_err(atomisp_dev, "find_vma failed\n");
 		kfree(bo->page_obj);
 		kfree(pages);
-- 
2.11.0



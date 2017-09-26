X-GM-THRID: 6470117861435113472
X-Received: by 10.46.25.66 with SMTP id p63mr838620lje.12.1506441719071;
        Tue, 26 Sep 2017 09:01:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.161.208 with SMTP id v16ls3485110wrv.8.gmail; Tue, 26 Sep
 2017 09:01:58 -0700 (PDT)
X-Received: by 10.28.230.198 with SMTP id e67mr374665wmi.24.1506441718312;
        Tue, 26 Sep 2017 09:01:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506441718; cv=none;
        d=google.com; s=arc-20160816;
        b=x4l22DZ6pabqhcpJq7x6JBR/8GkPLJpv4Sunbt6pMUoIE8a0AdTYvKgWUq1e5tzDnt
         z68TANfVTZAbbqC5h5/Bm7hLKvber1o4gDuv1JWNwTjOI2iL86qRUhs0/9dMUAyCL3iu
         /kIK6Yon6M4KG5k8qRQ072U5fm6cDmdQlhVnJyENvKgoT6fwuuC51UqFuYbtjtO8htMj
         tjvCmdd4M7B+c0U+lrIupPUqUlTHJ6qih35fpdZ8fjeyzH9/DurhA0Qrrw/CcHT1CTYP
         BXzVsbtXYqwhBOPhd6642fm9YvZ2DvmQReM7C8WDJaeHyW3a4usD8w4paK3+lyTl2zG8
         DRtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=TEfEZFnwhAYzrbDguN+t6i9mXxkll3OnTxEbmxDtyxM=;
        b=mmJNBg9x5cttZVBsuQZKKA462LdQl8JpqiLuqVwPkkWps20OgWLONqeDmYkH9plNHi
         aKhyEBL7q5iU7rkArzovxHJ3j4wcPuK1AxazxoYFl4EG2ZwA5u/iG0vpEAOonvkBmDHF
         qbEvOjvErdDcLXDgGprppoM2yFRB4N5XL/g8E5CigzzkvgGHs+HYxdz0iMM0odWruUNw
         VR6MfPxTRRU8uznKS1NwNr/mZeCzbPVXh9A7mKDf9K3ECiWqA4QrVnyHatbOWB/sy8Xg
         X+z2qlSo2UkT4Zy4NT+aTzYrXy41qIO9a6HT1INYPxo1ULEVxbOJK2tH9dUyB4okuPMQ
         HGoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ojpsAhjH;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id j4si243298wmi.2.2017.09.26.09.01.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:01:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ojpsAhjH;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id x17so9531831wmd.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=TEfEZFnwhAYzrbDguN+t6i9mXxkll3OnTxEbmxDtyxM=;
        b=ojpsAhjHShyKU9TQFr+t+mp3lMb7R9jd60gdeB5yfxNds2Pik5gzs/mTgdtKFlu4dD
         eCFXCCxwD2sVRQqadtCWDopRI63aiWDWZqP7g9Obc12Qv0EPv/XvPIjZlCmx/85yh2cR
         cTbh9e9+eASAdR2s3cIIPMnIsEN8clMjkFo53wrBad1x9+GORNgJtMxVgrPSM9piXtYA
         0tP+8qoAHx8u2ITOVmsejtFNb+Y5MnU2qwaTPm2ZUBXsP5yccuvrn9DXVqetoEaJwuAa
         d+U7wEm/mA5LNA/uvS6+tFeWRRRdBN5YojGD1u5cFXLkU51IzOZrwWFwxHBKY08+PNoT
         gI7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=TEfEZFnwhAYzrbDguN+t6i9mXxkll3OnTxEbmxDtyxM=;
        b=BQ0BO8oJg9sEu7a+IvDSmPw+cyMkfm3UNc5bqdRPf+xweM5UkS/wdeueiQ5Wp807o/
         TPhmNl1y1smCUNqtWJ4ZC3/OkZu7c9wkHCAOQIfazCb6JFjCwlnI6LTiLDhrGW1/mSSi
         sieB/lHk8VkQuSo2E1CbP8t5Lo4WcETHyw9ngEDwZIPYe+Ac5qZ/3A8zbXVVBFrR05qy
         X0Q6cj0rRkhoszODN7ppRSj1QxRcjNmHgYRwxzs2+SjmAg3oedQ99pWbomSXhNwqisYx
         iI5kAnb5Sjk81+KnNvC72qVdmWHLxLWwR4vOfPlGXx6NN96zGa96K4qBo8PbRe86GnLE
         /sNw==
X-Gm-Message-State: AHPjjUiUz3XW6EwkJkyDD0Gv90F8bbOngpovk4qLbvnVlpoy0mQ71wyH
	L0//Hmpngc4C82tMX2DQvXf8OZEH
X-Google-Smtp-Source: AOwi7QAMnySlb6sgm2DnwSM/QjEoJCRpBJoiljS1PtX/36MprRpYoUoyyGKNVc8e4d/QHZzBAGMhXA==
X-Received: by 10.28.203.4 with SMTP id b4mr3663199wmg.17.1506441716558;
        Tue, 26 Sep 2017 09:01:56 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id o27sm5678622wro.72.2017.09.26.09.01.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 09:01:55 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 04/10] Staging: media: atomisp: Adjust checks for null pointers
Date: Tue, 26 Sep 2017 09:01:32 -0700
Message-Id: <679d87a57fb14aa892fff8471da3de66eb5e1821.1506436974.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>

Rewrite the comparison to NULL for better coding style.

Fix issue reported by checkpatch.pl:
* CHECK: Comparison to NULL could be written

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

 .../staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c  | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 64f246f..a2aa3bf 100644
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
@@ -1005,7 +1005,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	down_read(&current->mm->mmap_sem);
 	vma = find_vma(current->mm, (unsigned long)userptr);
 	up_read(&current->mm->mmap_sem);
-	if (vma == NULL) {
+	if (!vma) {
 		dev_err(atomisp_dev, "find_vma failed\n");
 		kfree(bo->page_obj);
 		kfree(pages);
-- 
2.7.4



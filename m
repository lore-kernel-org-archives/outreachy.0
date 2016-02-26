X-GM-THRID: 6255520477727424512
X-Received: by 10.129.108.3 with SMTP id h3mr244832ywc.31.1456476880650;
        Fri, 26 Feb 2016 00:54:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.135 with SMTP id n7ls1162526qgd.10.gmail; Fri, 26 Feb
 2016 00:54:40 -0800 (PST)
X-Received: by 10.13.236.84 with SMTP id v81mr279083ywe.2.1456476880188;
        Fri, 26 Feb 2016 00:54:40 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ff2si1924434pad.2.2016.02.26.00.54.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 00:54:40 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id yy13so4176587pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 00:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wTWHScpKdQaZ6JtmSHLGxvv4OYGvXthdXgZTslicqdA=;
        b=NbXipeY82cGws5s/bmu/Zvn1FBdHxhACP8ErIyYIedbLzQw1+KtceN3o/NxAW2H30Z
         h0Ia2yzNsPmIpZuDQ4Qxl0LHvW930hfC+UUh/4S94zdrg9U1VJLfzCxlq+4JgSaWxZJE
         u6g/B470NMhJf+nr+3UGl4FZIdV4GlE7fcMksWBMM3BVkdbsj3VZUKgLitPdJL4UwG4g
         woBOyC6EwVdzDz6TGGeDmGH/sSwHI7CfaibOOJmDYjmpO1otQkradGJ4oIYeOcDqZAqN
         TRhMXTh4ltVxItJFWvpF2hTSKdppKjiW3ErbuSbwAto9URe0j70ucUk0kwiJOfRUuY6O
         NCNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wTWHScpKdQaZ6JtmSHLGxvv4OYGvXthdXgZTslicqdA=;
        b=MjgSwtpzMH9FPedUjEjwHm4IYKTjDQ2GCJ48y4GX/mAxz5G1/usTy5TuceTpuK3W2l
         GibYwwWX7cYmfIOBAdsvOyG0AhLi4ysd6BmP80/pnxBLuK3A7LQnv4ij/SsI60cLsB1l
         mL27ymZk7HsD6Ug0XaU3upsu9jtF1dQYB/cfR4Ojl3BYXaHQHWbJD4tXvxrRPIVLT5RI
         CGLMAam2Yp4LvgApBGo2nFjJ7Rb6iEQkJuckY7m7Gaz5QcwmPnJg9R8a/kQoK9G+mJ2t
         u3F08c/Pw7lw+mNrSGyP8tKZlRKGt9MhT27aGap+MNDvyx2D8sruWEA5stD06GTTjstg
         6Xpg==
X-Gm-Message-State: AD7BkJIOWCbaE39GHHl+HXYduYfDQHZU8YpEITYUlZns3vBWfQH9cbP4fhTRmECtm7tqiw==
X-Received: by 10.66.220.162 with SMTP id px2mr458712pac.15.1456476879939;
        Fri, 26 Feb 2016 00:54:39 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id l62sm17603053pfj.7.2016.02.26.00.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 00:54:39 -0800 (PST)
Date: Fri, 26 Feb 2016 14:24:35 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/8] staging: lustre: lov: Replace kmem_cache_alloc with
 kmem_cache_zalloc
Message-ID: <bba1543d515e03e990eca6b700df3e1b49377d45.1456475758.git.amitoj1606@gmail.com>
References: <cover.1456475758.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456475758.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Use kmem_cache_zalloc instead of manually setting kmem_cache_alloc
with flag GFP_ZERO since kmem_alloc_zalloc sets allocated memory
to zero.

The Coccinelle semantic patch used to make this change is as
follows:
// <smpl>
@@ 
expression e,f;
@@
- kmem_cache_alloc(e, f |__GFP_ZERO)
+ kmem_cache_zalloc(e, f)
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_dev.c       |  6 +++---
 drivers/staging/lustre/lustre/lov/lov_ea.c        |  2 +-
 drivers/staging/lustre/lustre/lov/lov_lock.c      |  6 +++---
 drivers/staging/lustre/lustre/lov/lov_object.c    |  2 +-
 drivers/staging/lustre/lustre/lov/lov_request.c   | 11 ++++-------
 drivers/staging/lustre/lustre/lov/lovsub_dev.c    |  2 +-
 drivers/staging/lustre/lustre/lov/lovsub_lock.c   |  2 +-
 drivers/staging/lustre/lustre/lov/lovsub_object.c |  2 +-
 8 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_dev.c b/drivers/staging/lustre/lustre/lov/lov_dev.c
index ee093e0..532ef87 100644
--- a/drivers/staging/lustre/lustre/lov/lov_dev.c
+++ b/drivers/staging/lustre/lustre/lov/lov_dev.c
@@ -142,7 +142,7 @@ static void *lov_key_init(const struct lu_context *ctx,
 {
 	struct lov_thread_info *info;
 
-	info = kmem_cache_alloc(lov_thread_kmem, GFP_NOFS | __GFP_ZERO);
+	info = kmem_cache_zalloc(lov_thread_kmem, GFP_NOFS);
 	if (info)
 		INIT_LIST_HEAD(&info->lti_closure.clc_list);
 	else
@@ -170,7 +170,7 @@ static void *lov_session_key_init(const struct lu_context *ctx,
 {
 	struct lov_session *info;
 
-	info = kmem_cache_alloc(lov_session_kmem, GFP_NOFS | __GFP_ZERO);
+	info = kmem_cache_zalloc(lov_session_kmem, GFP_NOFS);
 	if (!info)
 		info = ERR_PTR(-ENOMEM);
 	return info;
@@ -261,7 +261,7 @@ static int lov_req_init(const struct lu_env *env, struct cl_device *dev,
 	struct lov_req *lr;
 	int result;
 
-	lr = kmem_cache_alloc(lov_req_kmem, GFP_NOFS | __GFP_ZERO);
+	lr = kmem_cache_zalloc(lov_req_kmem, GFP_NOFS);
 	if (lr) {
 		cl_req_slice_add(req, &lr->lr_cl, dev, &lov_req_ops);
 		result = 0;
diff --git a/drivers/staging/lustre/lustre/lov/lov_ea.c b/drivers/staging/lustre/lustre/lov/lov_ea.c
index c27b884..973bb79 100644
--- a/drivers/staging/lustre/lustre/lov/lov_ea.c
+++ b/drivers/staging/lustre/lustre/lov/lov_ea.c
@@ -100,7 +100,7 @@ struct lov_stripe_md *lsm_alloc_plain(__u16 stripe_count, int *size)
 		return NULL;
 
 	for (i = 0; i < stripe_count; i++) {
-		loi = kmem_cache_alloc(lov_oinfo_slab, GFP_NOFS | __GFP_ZERO);
+		loi = kmem_cache_zalloc(lov_oinfo_slab, GFP_NOFS);
 		if (!loi)
 			goto err;
 		lsm->lsm_oinfo[i] = loi;
diff --git a/drivers/staging/lustre/lustre/lov/lov_lock.c b/drivers/staging/lustre/lustre/lov/lov_lock.c
index e0a6438..d3a30ce 100644
--- a/drivers/staging/lustre/lustre/lov/lov_lock.c
+++ b/drivers/staging/lustre/lustre/lov/lov_lock.c
@@ -144,7 +144,7 @@ static struct cl_lock *lov_sublock_alloc(const struct lu_env *env,
 
 	LASSERT(idx < lck->lls_nr);
 
-	link = kmem_cache_alloc(lov_lock_link_kmem, GFP_NOFS | __GFP_ZERO);
+	link = kmem_cache_zalloc(lov_lock_link_kmem, GFP_NOFS);
 	if (link) {
 		struct lov_sublock_env *subenv;
 		struct lov_lock_sub  *lls;
@@ -1107,7 +1107,7 @@ int lov_lock_init_raid0(const struct lu_env *env, struct cl_object *obj,
 	struct lov_lock *lck;
 	int result;
 
-	lck = kmem_cache_alloc(lov_lock_kmem, GFP_NOFS | __GFP_ZERO);
+	lck = kmem_cache_zalloc(lov_lock_kmem, GFP_NOFS);
 	if (lck) {
 		cl_lock_slice_add(lock, &lck->lls_cl, obj, &lov_lock_ops);
 		result = lov_lock_sub_init(env, lck, io);
@@ -1143,7 +1143,7 @@ int lov_lock_init_empty(const struct lu_env *env, struct cl_object *obj,
 	struct lov_lock *lck;
 	int result = -ENOMEM;
 
-	lck = kmem_cache_alloc(lov_lock_kmem, GFP_NOFS | __GFP_ZERO);
+	lck = kmem_cache_zalloc(lov_lock_kmem, GFP_NOFS);
 	if (lck) {
 		cl_lock_slice_add(lock, &lck->lls_cl, obj, &lov_empty_lock_ops);
 		lck->lls_orig = lock->cll_descr;
diff --git a/drivers/staging/lustre/lustre/lov/lov_object.c b/drivers/staging/lustre/lustre/lov/lov_object.c
index 4101696..843f4aa 100644
--- a/drivers/staging/lustre/lustre/lov/lov_object.c
+++ b/drivers/staging/lustre/lustre/lov/lov_object.c
@@ -899,7 +899,7 @@ struct lu_object *lov_object_alloc(const struct lu_env *env,
 	struct lov_object *lov;
 	struct lu_object  *obj;
 
-	lov = kmem_cache_alloc(lov_object_kmem, GFP_NOFS | __GFP_ZERO);
+	lov = kmem_cache_zalloc(lov_object_kmem, GFP_NOFS);
 	if (lov) {
 		obj = lov2lu(lov);
 		lu_object_init(obj, NULL, dev);
diff --git a/drivers/staging/lustre/lustre/lov/lov_request.c b/drivers/staging/lustre/lustre/lov/lov_request.c
index 42660f2..4f568f0 100644
--- a/drivers/staging/lustre/lustre/lov/lov_request.c
+++ b/drivers/staging/lustre/lustre/lov/lov_request.c
@@ -200,7 +200,7 @@ static int common_attr_done(struct lov_request_set *set)
 	if (!atomic_read(&set->set_success))
 		return -EIO;
 
-	tmp_oa = kmem_cache_alloc(obdo_cachep, GFP_NOFS | __GFP_ZERO);
+	tmp_oa = kmem_cache_zalloc(obdo_cachep, GFP_NOFS);
 	if (!tmp_oa) {
 		rc = -ENOMEM;
 		goto out;
@@ -307,8 +307,7 @@ int lov_prep_getattr_set(struct obd_export *exp, struct obd_info *oinfo,
 		req->rq_stripe = i;
 		req->rq_idx = loi->loi_ost_idx;
 
-		req->rq_oi.oi_oa = kmem_cache_alloc(obdo_cachep,
-						    GFP_NOFS | __GFP_ZERO);
+		req->rq_oi.oi_oa = kmem_cache_zalloc(obdo_cachep, GFP_NOFS);
 		if (!req->rq_oi.oi_oa) {
 			kfree(req);
 			rc = -ENOMEM;
@@ -390,8 +389,7 @@ int lov_prep_destroy_set(struct obd_export *exp, struct obd_info *oinfo,
 		req->rq_stripe = i;
 		req->rq_idx = loi->loi_ost_idx;
 
-		req->rq_oi.oi_oa = kmem_cache_alloc(obdo_cachep,
-						    GFP_NOFS | __GFP_ZERO);
+		req->rq_oi.oi_oa = kmem_cache_zalloc(obdo_cachep, GFP_NOFS);
 		if (!req->rq_oi.oi_oa) {
 			kfree(req);
 			rc = -ENOMEM;
@@ -507,8 +505,7 @@ int lov_prep_setattr_set(struct obd_export *exp, struct obd_info *oinfo,
 		req->rq_stripe = i;
 		req->rq_idx = loi->loi_ost_idx;
 
-		req->rq_oi.oi_oa = kmem_cache_alloc(obdo_cachep,
-						    GFP_NOFS | __GFP_ZERO);
+		req->rq_oi.oi_oa = kmem_cache_zalloc(obdo_cachep, GFP_NOFS);
 		if (!req->rq_oi.oi_oa) {
 			kfree(req);
 			rc = -ENOMEM;
diff --git a/drivers/staging/lustre/lustre/lov/lovsub_dev.c b/drivers/staging/lustre/lustre/lov/lovsub_dev.c
index 233740c..c335c02 100644
--- a/drivers/staging/lustre/lustre/lov/lovsub_dev.c
+++ b/drivers/staging/lustre/lustre/lov/lovsub_dev.c
@@ -147,7 +147,7 @@ static int lovsub_req_init(const struct lu_env *env, struct cl_device *dev,
 	struct lovsub_req *lsr;
 	int result;
 
-	lsr = kmem_cache_alloc(lovsub_req_kmem, GFP_NOFS | __GFP_ZERO);
+	lsr = kmem_cache_zalloc(lovsub_req_kmem, GFP_NOFS);
 	if (lsr) {
 		cl_req_slice_add(req, &lsr->lsrq_cl, dev, &lovsub_req_ops);
 		result = 0;
diff --git a/drivers/staging/lustre/lustre/lov/lovsub_lock.c b/drivers/staging/lustre/lustre/lov/lovsub_lock.c
index 0046812..4213957 100644
--- a/drivers/staging/lustre/lustre/lov/lovsub_lock.c
+++ b/drivers/staging/lustre/lustre/lov/lovsub_lock.c
@@ -455,7 +455,7 @@ int lovsub_lock_init(const struct lu_env *env, struct cl_object *obj,
 	struct lovsub_lock *lsk;
 	int result;
 
-	lsk = kmem_cache_alloc(lovsub_lock_kmem, GFP_NOFS | __GFP_ZERO);
+	lsk = kmem_cache_zalloc(lovsub_lock_kmem, GFP_NOFS);
 	if (lsk) {
 		INIT_LIST_HEAD(&lsk->lss_parents);
 		cl_lock_slice_add(lock, &lsk->lss_cl, obj, &lovsub_lock_ops);
diff --git a/drivers/staging/lustre/lustre/lov/lovsub_object.c b/drivers/staging/lustre/lustre/lov/lovsub_object.c
index 0a9bf51..6c5430d 100644
--- a/drivers/staging/lustre/lustre/lov/lovsub_object.c
+++ b/drivers/staging/lustre/lustre/lov/lovsub_object.c
@@ -143,7 +143,7 @@ struct lu_object *lovsub_object_alloc(const struct lu_env *env,
 	struct lovsub_object *los;
 	struct lu_object     *obj;
 
-	los = kmem_cache_alloc(lovsub_object_kmem, GFP_NOFS | __GFP_ZERO);
+	los = kmem_cache_zalloc(lovsub_object_kmem, GFP_NOFS);
 	if (los) {
 		struct cl_object_header *hdr;
 
-- 
1.9.1



X-GM-THRID: 6468616389791842304
X-Received: by 10.99.54.136 with SMTP id d130mr5705575pga.19.1506092117299;
        Fri, 22 Sep 2017 07:55:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.62.37 with SMTP id l37ls93400ywa.36.gmail; Fri, 22 Sep
 2017 07:55:16 -0700 (PDT)
X-Received: by 10.129.50.18 with SMTP id y18mr7065070ywy.229.1506092116353;
        Fri, 22 Sep 2017 07:55:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506092116; cv=none;
        d=google.com; s=arc-20160816;
        b=E6F7ejbBu3U4mzZN7rmgUU5WblbEWvgFw6wZRvMWjRNbEO5rQrP6DY7k3wSoE/iJt1
         rhPB3Bb2SDPTi4I1/Ag2BEuLZSHrOygZ2gN0T/OXh4GWw+ypxwpOurCFjEXXv6+t5bR0
         BJjCULcYYCv9Rd0l12Rzv1yoa6ttAKB/cqFiUOSpE5PtxxAT/MtNQXOBNEeTcfCAaNxW
         ln1p17e5aUvBnuSUxa61VYaf2TrgieUXwWDJ+ApzAwadA++7hfNb+HNg8nPNNB/n82wV
         P9mWXRlrTTutoM2+b7Cr02T/Iozc71OeUbca0gQgbPnbAO8qC0XQs43jDnew7n6+vLvA
         tcHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=ws3O9pyfz1HH8BluOaxUG/k/f1fILNxQQVfC+ITvz2U=;
        b=fluqJrhLav41LC1wJB9Kyyu21Sd8tn2OjlDS5qqB4TbbFJ/J/6UCUB04QX0tX23tzo
         mqvesZFuv2JAYXhQZ+IEqh+y7QEFb1swwZdA9CXMpw7+IwbylKEIw07xKQ3rYkIMxMcA
         IcoMBN0JqmdFrKfzVzNN+/J8oNd3lMggTcgpVmjLqjgqCNrFG6y3JX0dkVmdoZhGXwBn
         zYJOV6sM1Q/49Zi/8Qm1cKI6+CEE+IITNoc0GihfkiTGgSQzEeln6/B7i/VL2m6K2e2t
         UCeRGM/JenzP3ESU6G/vXgG0s9QcA576BZgSJqxkvhcrcP9AezwVZSES4lAWSpT5p2LL
         8rWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VhytMved;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r78si3958pfb.3.2017.09.22.07.55.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 07:55:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VhytMved;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so551879pfg.4
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 07:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ws3O9pyfz1HH8BluOaxUG/k/f1fILNxQQVfC+ITvz2U=;
        b=VhytMvedYe5QQFcKpkg6pshZ5hK6b1mrvfd8yNHQl1rpZOiZQJ5U1v8Y0gxYaKoEYI
         yEUtMbujtX1r/0/jEFMy4J74zw2BG7k9Xe3BA0LsTuNJ8LFnjuP9n4HJ5PhI3Um347wi
         3VnK7VcnhaoDiuGy9RWc9xQXtHwzx/ZftHSRdF1SOZ22kU+At5oLU0KsLPNZmQRU7tDN
         Iq38u06VkWbS5IYczV8HYdDcKuOM1azwGcIEOIMUO0nFsIEXBkQE3bQSRMN03Jxd83lM
         Xfnj7zdv6YVQN1gsTFiMOe5jLYgikJB5cnWox0XzWdAQDvUTxCGBDcWffHbSm/16bfpf
         IN+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ws3O9pyfz1HH8BluOaxUG/k/f1fILNxQQVfC+ITvz2U=;
        b=KulWUDilu8IPIk2z952jrgCs3WkNd5/HTjAcJAkGNeVk9NjaB41uLDVUmiay4KE/oO
         Vw2m+PC+d9GpDE7EhNxtuIWJBHBWSsbG7KCdx3n/+H1QhHRCG0nDQSfjV5KeNfojEEq8
         FhBpVafL+uBRl7IsWZT5QBpJ5H3bO4/WutKeEaiLafefGJBkjQ6M550Jrm8KAXQn0vbp
         vbLqag1KZtlp9WTr5YI4h/T151qbLWQMl4HXQ6wELs/JUhX/UQNF348eQ9OkD4DJRw/O
         J8p6drsKjT9N1LlCY0CTSEW1me3HX5V4rrtvWuhT4+8Ab4+tFDgpN+GpSTUTnUfKdJSe
         ceXw==
X-Gm-Message-State: AHPjjUisgcFUiEj++ti9aIzCWE+DbhroNQ5WFFll+nARbwqypNNFR/Ar
	CCXcJ3HVm9hSDaQhGRSbSvXSmA==
X-Google-Smtp-Source: AOwi7QDQuCWeYsKfEx25wMLL5xUh6dZN8ztMzvLRHQoXB1nNTzS08UNSiS3DgaXXpkeameWonMEzxA==
X-Received: by 10.84.129.193 with SMTP id b59mr9131353plb.76.1506092115493;
        Fri, 22 Sep 2017 07:55:15 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id d190sm39400pgc.11.2017.09.22.07.55.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 07:55:14 -0700 (PDT)
Date: Fri, 22 Sep 2017 20:25:08 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/amdgpu: Replace ref/unref with get/put
Message-ID: <20170922145502.GA15692@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace functions with reference/unreference suffix with
get/put suffix. Get/put is shorter and more consistent with
the kernel function suffixes.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c    |  4 ++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c |  4 ++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_bo_list.c   | 12 ++++++------
 drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c       |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c        |  6 +++---
 drivers/gpu/drm/amd/amdgpu/amdgpu_display.c   |  6 +++---
 drivers/gpu/drm/amd/amdgpu/amdgpu_gart.c      |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c       |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c    | 26 +++++++++++++++++++-------
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.h    |  2 ++
 drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c        |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_test.c      |  6 +++---
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c       |  2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c     |  4 ++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c       | 10 +++++-----
 drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c       | 10 +++++-----
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c        | 12 ++++++------
 17 files changed, 63 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c
index 5432af3..4d04194 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c
@@ -223,7 +223,7 @@ int alloc_gtt_mem(struct kgd_dev *kgd, size_t size,
 allocate_mem_pin_bo_failed:
 	amdgpu_bo_unreserve((*mem)->bo);
 allocate_mem_reserve_bo_failed:
-	amdgpu_bo_unref(&(*mem)->bo);
+	amdgpu_bo_put(&(*mem)->bo);
 
 	return r;
 }
@@ -238,7 +238,7 @@ void free_gtt_mem(struct kgd_dev *kgd, void *mem_obj)
 	amdgpu_bo_kunmap(mem->bo);
 	amdgpu_bo_unpin(mem->bo);
 	amdgpu_bo_unreserve(mem->bo);
-	amdgpu_bo_unref(&(mem->bo));
+	amdgpu_bo_put(&(mem->bo));
 	kfree(mem);
 }
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c
index 63ec1e1..a218d340 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c
@@ -128,7 +128,7 @@ static void amdgpu_benchmark_move(struct amdgpu_device *adev, unsigned size,
 			amdgpu_bo_unpin(sobj);
 			amdgpu_bo_unreserve(sobj);
 		}
-		amdgpu_bo_unref(&sobj);
+		amdgpu_bo_put(&sobj);
 	}
 	if (dobj) {
 		r = amdgpu_bo_reserve(dobj, true);
@@ -136,7 +136,7 @@ static void amdgpu_benchmark_move(struct amdgpu_device *adev, unsigned size,
 			amdgpu_bo_unpin(dobj);
 			amdgpu_bo_unreserve(dobj);
 		}
-		amdgpu_bo_unref(&dobj);
+		amdgpu_bo_put(&dobj);
 	}
 }
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_bo_list.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_bo_list.c
index 59089e0..6a6c8c2 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_bo_list.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_bo_list.c
@@ -48,7 +48,7 @@ static void amdgpu_bo_list_release_rcu(struct kref *ref)
 						   refcount);
 
 	for (i = 0; i < list->num_entries; ++i)
-		amdgpu_bo_unref(&list->array[i].robj);
+		amdgpu_bo_put(&list->array[i].robj);
 
 	mutex_destroy(&list->lock);
 	kvfree(list->array);
@@ -135,13 +135,13 @@ static int amdgpu_bo_list_set(struct amdgpu_device *adev,
 			goto error_free;
 		}
 
-		bo = amdgpu_bo_ref(gem_to_amdgpu_bo(gobj));
+		bo = amdgpu_bo_get(gem_to_amdgpu_bo(gobj));
 		drm_gem_object_put_unlocked(gobj);
 
 		usermm = amdgpu_ttm_tt_get_usermm(bo->tbo.ttm);
 		if (usermm) {
 			if (usermm != current->mm) {
-				amdgpu_bo_unref(&bo);
+				amdgpu_bo_put(&bo);
 				r = -EPERM;
 				goto error_free;
 			}
@@ -168,7 +168,7 @@ static int amdgpu_bo_list_set(struct amdgpu_device *adev,
 	}
 
 	for (i = 0; i < list->num_entries; ++i)
-		amdgpu_bo_unref(&list->array[i].robj);
+		amdgpu_bo_put(&list->array[i].robj);
 
 	kvfree(list->array);
 
@@ -184,7 +184,7 @@ static int amdgpu_bo_list_set(struct amdgpu_device *adev,
 
 error_free:
 	while (i--)
-		amdgpu_bo_unref(&array[i].robj);
+		amdgpu_bo_put(&array[i].robj);
 	kvfree(array);
 	return r;
 }
@@ -254,7 +254,7 @@ void amdgpu_bo_list_free(struct amdgpu_bo_list *list)
 	unsigned i;
 
 	for (i = 0; i < list->num_entries; ++i)
-		amdgpu_bo_unref(&list->array[i].robj);
+		amdgpu_bo_put(&list->array[i].robj);
 
 	mutex_destroy(&list->lock);
 	kvfree(list->array);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c
index fd435a9..f8c4450 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c
@@ -145,7 +145,7 @@ static int amdgpu_cgs_free_gpu_mem(struct cgs_device *cgs_device, cgs_handle_t h
 			amdgpu_bo_unpin(obj);
 			amdgpu_bo_unreserve(obj);
 		}
-		amdgpu_bo_unref(&obj);
+		amdgpu_bo_put(&obj);
 
 	}
 	return 0;
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
index 60d8bed..1f08748 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
@@ -42,7 +42,7 @@ static int amdgpu_cs_user_fence_chunk(struct amdgpu_cs_parser *p,
 	if (gobj == NULL)
 		return -EINVAL;
 
-	p->uf_entry.robj = amdgpu_bo_ref(gem_to_amdgpu_bo(gobj));
+	p->uf_entry.robj = amdgpu_bo_get(gem_to_amdgpu_bo(gobj));
 	p->uf_entry.priority = 0;
 	p->uf_entry.tv.bo = &p->uf_entry.robj->tbo;
 	p->uf_entry.tv.shared = true;
@@ -57,7 +57,7 @@ static int amdgpu_cs_user_fence_chunk(struct amdgpu_cs_parser *p,
 	drm_gem_object_put_unlocked(gobj);
 
 	if (amdgpu_ttm_tt_get_usermm(p->uf_entry.robj->tbo.ttm)) {
-		amdgpu_bo_unref(&p->uf_entry.robj);
+		amdgpu_bo_put(&p->uf_entry.robj);
 		return -EINVAL;
 	}
 
@@ -752,7 +752,7 @@ static void amdgpu_cs_parser_fini(struct amdgpu_cs_parser *parser, int error,
 	kfree(parser->chunks);
 	if (parser->job)
 		amdgpu_job_free(parser->job);
-	amdgpu_bo_unref(&parser->uf_entry.robj);
+	amdgpu_bo_put(&parser->uf_entry.robj);
 }
 
 static int amdgpu_bo_vm_update_pte(struct amdgpu_cs_parser *p)
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
index 6ad2432..0d6cf9a 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
@@ -133,7 +133,7 @@ static void amdgpu_unpin_work_func(struct work_struct *__work)
 	} else
 		DRM_ERROR("failed to reserve buffer after flip\n");
 
-	amdgpu_bo_unref(&work->old_abo);
+	amdgpu_bo_put(&work->old_abo);
 	kfree(work->shared);
 	kfree(work);
 }
@@ -175,7 +175,7 @@ int amdgpu_crtc_page_flip_target(struct drm_crtc *crtc,
 
 	/* take a reference to the old object */
 	work->old_abo = gem_to_amdgpu_bo(obj);
-	amdgpu_bo_ref(work->old_abo);
+	amdgpu_bo_get(work->old_abo);
 
 	new_amdgpu_fb = to_amdgpu_framebuffer(fb);
 	obj = new_amdgpu_fb->obj;
@@ -243,7 +243,7 @@ int amdgpu_crtc_page_flip_target(struct drm_crtc *crtc,
 	amdgpu_bo_unreserve(new_abo);
 
 cleanup:
-	amdgpu_bo_unref(&work->old_abo);
+	amdgpu_bo_put(&work->old_abo);
 	dma_fence_put(work->excl);
 	for (i = 0; i < work->shared_count; ++i)
 		dma_fence_put(work->shared[i]);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gart.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gart.c
index f437008..129da03 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gart.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gart.c
@@ -210,7 +210,7 @@ void amdgpu_gart_table_vram_free(struct amdgpu_device *adev)
 	if (adev->gart.robj == NULL) {
 		return;
 	}
-	amdgpu_bo_unref(&adev->gart.robj);
+	amdgpu_bo_put(&adev->gart.robj);
 }
 
 /*
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
index 7171968..6ddd5b1 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
@@ -39,7 +39,7 @@ void amdgpu_gem_object_free(struct drm_gem_object *gobj)
 		if (robj->gem_base.import_attach)
 			drm_prime_gem_destroy(&robj->gem_base, robj->tbo.sg);
 		amdgpu_mn_unregister(robj);
-		amdgpu_bo_unref(&robj);
+		amdgpu_bo_put(&robj);
 	}
 }
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
index 9e495da..7e86e6f 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
@@ -47,7 +47,7 @@ static void amdgpu_ttm_bo_destroy(struct ttm_buffer_object *tbo)
 	amdgpu_bo_kunmap(bo);
 
 	drm_gem_object_release(&bo->gem_base);
-	amdgpu_bo_unref(&bo->parent);
+	amdgpu_bo_put(&bo->parent);
 	if (!list_empty(&bo->shadow_list)) {
 		mutex_lock(&adev->shadow_list_lock);
 		list_del_init(&bo->shadow_list);
@@ -236,7 +236,7 @@ int amdgpu_bo_create_reserved(struct amdgpu_device *adev,
 
 error_free:
 	if (free)
-		amdgpu_bo_unref(bo_ptr);
+		amdgpu_bo_put(bo_ptr);
 
 	return r;
 }
@@ -294,7 +294,7 @@ void amdgpu_bo_free_kernel(struct amdgpu_bo **bo, u64 *gpu_addr,
 		amdgpu_bo_unpin(*bo);
 		amdgpu_bo_unreserve(*bo);
 	}
-	amdgpu_bo_unref(bo);
+	amdgpu_bo_put(bo);
 
 	if (gpu_addr)
 		*gpu_addr = 0;
@@ -464,7 +464,7 @@ static int amdgpu_bo_create_shadow(struct amdgpu_device *adev,
 					0,
 					&bo->shadow);
 	if (!r) {
-		bo->shadow->parent = amdgpu_bo_ref(bo);
+		bo->shadow->parent = amdgpu_bo_get(bo);
 		mutex_lock(&adev->shadow_list_lock);
 		list_add_tail(&bo->shadow_list, &adev->shadow_list);
 		mutex_unlock(&adev->shadow_list_lock);
@@ -510,7 +510,7 @@ int amdgpu_bo_create(struct amdgpu_device *adev,
 			reservation_object_unlock((*bo_ptr)->tbo.resv);
 
 		if (r)
-			amdgpu_bo_unref(bo_ptr);
+			amdgpu_bo_put(bo_ptr);
 	}
 
 	return r;
@@ -644,7 +644,7 @@ void amdgpu_bo_kunmap(struct amdgpu_bo *bo)
 		ttm_bo_kunmap(&bo->kmap);
 }
 
-struct amdgpu_bo *amdgpu_bo_ref(struct amdgpu_bo *bo)
+struct amdgpu_bo *amdgpu_bo_get(struct amdgpu_bo *bo)
 {
 	if (bo == NULL)
 		return NULL;
@@ -653,7 +653,7 @@ struct amdgpu_bo *amdgpu_bo_ref(struct amdgpu_bo *bo)
 	return bo;
 }
 
-void amdgpu_bo_unref(struct amdgpu_bo **bo)
+void amdgpu_bo_put(struct amdgpu_bo **bo)
 {
 	struct ttm_buffer_object *tbo;
 
@@ -666,6 +666,18 @@ void amdgpu_bo_unref(struct amdgpu_bo **bo)
 		*bo = NULL;
 }
 
+/* Compatibility wrapper for amdgpu_bo_get(). */
+struct amdgpu_bo *amdgpu_bo_ref(struct amdgpu_bo *bo)
+{
+	return amdgpu_bo_get(bo);
+}
+
+/* Compatibility wrapper for amdgpu_bo_put(). */
+void amdgpu_bo_unref(struct amdgpu_bo **bo)
+{
+	amdgpu_bo_put(bo);
+}
+
 int amdgpu_bo_pin_restricted(struct amdgpu_bo *bo, u32 domain,
 			     u64 min_offset, u64 max_offset,
 			     u64 *gpu_addr)
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.h
index a288fa6..ef18d63 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.h
@@ -211,7 +211,9 @@ int amdgpu_bo_kmap(struct amdgpu_bo *bo, void **ptr);
 void *amdgpu_bo_kptr(struct amdgpu_bo *bo);
 void amdgpu_bo_kunmap(struct amdgpu_bo *bo);
 struct amdgpu_bo *amdgpu_bo_ref(struct amdgpu_bo *bo);
+struct amdgpu_bo *amdgpu_bo_get(struct amdgpu_bo *bo);
 void amdgpu_bo_unref(struct amdgpu_bo **bo);
+void amdgpu_bo_put(struct amdgpu_bo **bo);
 int amdgpu_bo_pin(struct amdgpu_bo *bo, u32 domain, u64 *gpu_addr);
 int amdgpu_bo_pin_restricted(struct amdgpu_bo *bo, u32 domain,
 			     u64 min_offset, u64 max_offset,
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
index 3144400..986decd 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c
@@ -88,7 +88,7 @@ void amdgpu_sa_bo_manager_fini(struct amdgpu_device *adev,
 	list_for_each_entry_safe(sa_bo, tmp, &sa_manager->olist, olist) {
 		amdgpu_sa_bo_remove_locked(sa_bo);
 	}
-	amdgpu_bo_unref(&sa_manager->bo);
+	amdgpu_bo_put(&sa_manager->bo);
 	sa_manager->size = 0;
 }
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_test.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_test.c
index ed8c373..445aaed 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_test.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_test.c
@@ -208,12 +208,12 @@ static void amdgpu_do_test_moves(struct amdgpu_device *adev)
 out_lclean_unres:
 		amdgpu_bo_unreserve(gtt_obj[i]);
 out_lclean_unref:
-		amdgpu_bo_unref(&gtt_obj[i]);
+		amdgpu_bo_put(&gtt_obj[i]);
 out_lclean:
 		for (--i; i >= 0; --i) {
 			amdgpu_bo_unpin(gtt_obj[i]);
 			amdgpu_bo_unreserve(gtt_obj[i]);
-			amdgpu_bo_unref(&gtt_obj[i]);
+			amdgpu_bo_put(&gtt_obj[i]);
 		}
 		if (fence)
 			dma_fence_put(fence);
@@ -224,7 +224,7 @@ static void amdgpu_do_test_moves(struct amdgpu_device *adev)
 out_unres:
 	amdgpu_bo_unreserve(vram_obj);
 out_unref:
-	amdgpu_bo_unref(&vram_obj);
+	amdgpu_bo_put(&vram_obj);
 out_cleanup:
 	kfree(gtt_obj);
 	if (r) {
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
index 7ef6c28..e63b515 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
@@ -1368,7 +1368,7 @@ void amdgpu_ttm_fini(struct amdgpu_device *adev)
 			amdgpu_bo_unpin(adev->stolen_vga_memory);
 			amdgpu_bo_unreserve(adev->stolen_vga_memory);
 		}
-		amdgpu_bo_unref(&adev->stolen_vga_memory);
+		amdgpu_bo_put(&adev->stolen_vga_memory);
 	}
 	ttm_bo_clean_mm(&adev->mman.bdev, TTM_PL_VRAM);
 	ttm_bo_clean_mm(&adev->mman.bdev, TTM_PL_TT);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c
index 36c7633..987be19 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c
@@ -445,7 +445,7 @@ int amdgpu_ucode_init_bo(struct amdgpu_device *adev)
 failed_pin:
 	amdgpu_bo_unreserve(*bo);
 failed_reserve:
-	amdgpu_bo_unref(bo);
+	amdgpu_bo_put(bo);
 failed:
 	if (err)
 		adev->firmware.load_type = AMDGPU_FW_LOAD_DIRECT;
@@ -468,7 +468,7 @@ int amdgpu_ucode_fini_bo(struct amdgpu_device *adev)
 			ucode->kaddr = NULL;
 		}
 	}
-	amdgpu_bo_unref(&adev->firmware.fw_buf);
+	amdgpu_bo_put(&adev->firmware.fw_buf);
 	adev->firmware.fw_buf = NULL;
 
 	return 0;
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
index e19928d..4512464 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
@@ -1027,7 +1027,7 @@ static int amdgpu_uvd_send_msg(struct amdgpu_ring *ring, struct amdgpu_bo *bo,
 
 	if (fence)
 		*fence = dma_fence_get(f);
-	amdgpu_bo_unref(&bo);
+	amdgpu_bo_put(&bo);
 	dma_fence_put(f);
 
 	return 0;
@@ -1061,14 +1061,14 @@ int amdgpu_uvd_get_create_msg(struct amdgpu_ring *ring, uint32_t handle,
 
 	r = amdgpu_bo_reserve(bo, false);
 	if (r) {
-		amdgpu_bo_unref(&bo);
+		amdgpu_bo_put(&bo);
 		return r;
 	}
 
 	r = amdgpu_bo_kmap(bo, (void **)&msg);
 	if (r) {
 		amdgpu_bo_unreserve(bo);
-		amdgpu_bo_unref(&bo);
+		amdgpu_bo_put(&bo);
 		return r;
 	}
 
@@ -1111,14 +1111,14 @@ int amdgpu_uvd_get_destroy_msg(struct amdgpu_ring *ring, uint32_t handle,
 
 	r = amdgpu_bo_reserve(bo, false);
 	if (r) {
-		amdgpu_bo_unref(&bo);
+		amdgpu_bo_put(&bo);
 		return r;
 	}
 
 	r = amdgpu_bo_kmap(bo, (void **)&msg);
 	if (r) {
 		amdgpu_bo_unreserve(bo);
-		amdgpu_bo_unref(&bo);
+		amdgpu_bo_put(&bo);
 		return r;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c
index 041e012..9d971dd 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vcn.c
@@ -334,7 +334,7 @@ static int amdgpu_vcn_dec_send_msg(struct amdgpu_ring *ring, struct amdgpu_bo *b
 
 	if (fence)
 		*fence = dma_fence_get(f);
-	amdgpu_bo_unref(&bo);
+	amdgpu_bo_put(&bo);
 	dma_fence_put(f);
 
 	return 0;
@@ -365,14 +365,14 @@ static int amdgpu_vcn_dec_get_create_msg(struct amdgpu_ring *ring, uint32_t hand
 
 	r = amdgpu_bo_reserve(bo, false);
 	if (r) {
-		amdgpu_bo_unref(&bo);
+		amdgpu_bo_put(&bo);
 		return r;
 	}
 
 	r = amdgpu_bo_kmap(bo, (void **)&msg);
 	if (r) {
 		amdgpu_bo_unreserve(bo);
-		amdgpu_bo_unref(&bo);
+		amdgpu_bo_put(&bo);
 		return r;
 	}
 
@@ -417,14 +417,14 @@ static int amdgpu_vcn_dec_get_destroy_msg(struct amdgpu_ring *ring, uint32_t han
 
 	r = amdgpu_bo_reserve(bo, false);
 	if (r) {
-		amdgpu_bo_unref(&bo);
+		amdgpu_bo_put(&bo);
 		return r;
 	}
 
 	r = amdgpu_bo_kmap(bo, (void **)&msg);
 	if (r) {
 		amdgpu_bo_unreserve(bo);
-		amdgpu_bo_unref(&bo);
+		amdgpu_bo_put(&bo);
 		return r;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
index bd20ff0..70d5c68 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
@@ -311,7 +311,7 @@ static int amdgpu_vm_alloc_levels(struct amdgpu_device *adev,
 			if (vm->use_cpu_for_update) {
 				r = amdgpu_bo_kmap(pt, NULL);
 				if (r) {
-					amdgpu_bo_unref(&pt);
+					amdgpu_bo_put(&pt);
 					return r;
 				}
 			}
@@ -319,7 +319,7 @@ static int amdgpu_vm_alloc_levels(struct amdgpu_device *adev,
 			/* Keep a reference to the root directory to avoid
 			* freeing them up in the wrong order.
 			*/
-			pt->parent = amdgpu_bo_ref(vm->root.bo);
+			pt->parent = amdgpu_bo_get(vm->root.bo);
 
 			entry->bo = pt;
 			entry->addr = 0;
@@ -2540,8 +2540,8 @@ int amdgpu_vm_init(struct amdgpu_device *adev, struct amdgpu_vm *vm,
 	return 0;
 
 error_free_root:
-	amdgpu_bo_unref(&vm->root.bo->shadow);
-	amdgpu_bo_unref(&vm->root.bo);
+	amdgpu_bo_put(&vm->root.bo->shadow);
+	amdgpu_bo_put(&vm->root.bo);
 	vm->root.bo = NULL;
 
 error_free_sched_entity:
@@ -2562,8 +2562,8 @@ static void amdgpu_vm_free_levels(struct amdgpu_vm_pt *level)
 	unsigned i;
 
 	if (level->bo) {
-		amdgpu_bo_unref(&level->bo->shadow);
-		amdgpu_bo_unref(&level->bo);
+		amdgpu_bo_put(&level->bo->shadow);
+		amdgpu_bo_put(&level->bo);
 	}
 
 	if (level->entries)
-- 
2.7.4



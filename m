X-GM-THRID: 6471138860416892928
X-Received: by 10.98.196.204 with SMTP id h73mr604624pfk.35.1506679426143;
        Fri, 29 Sep 2017 03:03:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.80.133 with SMTP id r5ls478762pgp.31.gmail; Fri, 29 Sep
 2017 03:03:45 -0700 (PDT)
X-Received: by 10.99.38.132 with SMTP id m126mr102279pgm.9.1506679425154;
        Fri, 29 Sep 2017 03:03:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506679425; cv=none;
        d=google.com; s=arc-20160816;
        b=I9KBAXlxCEZZI7znJJ45W4XAaallE27yjO5q6HI1rwKyEiHDz09lO3amRR9KEtjJq1
         u6rFRjsqZGrrtS/aIrA9a9LL+Jdl7osh96ieFoH6UJUJTeZrqMnSobqmrpui7xKimoEX
         wCXrKPtjgH/zKw6JzlL1UfXxDKcP45hG66Pu1Wct+T8g5Fb3S8v4h5M4OPQbDN5K+E4u
         Ow5s2cMCS2BaHizmHSdQG57aeAgxoD4mxibrG5QeKOTldXVZpEiLnEk9mBoUbo9xwgY1
         vzRoWZdCk2LmEZ8OGXAwcotspuNxUOotIyne+rBxa+mi/Att0lIqCMYms81AYeBzdDd7
         YQBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=K3saAbJlPR8p1od9EIphOXoztjxoI5uTLM/Bn8+/Gjc=;
        b=b6gW0U7wYz+GqYyg081Pc9fBdFATFAkyavnt82dbBFnQetSAfdfBgH63sdWDKvSDjq
         u1OegQQcGNND17uCg67vRulXqhCHzOBJpV8MLn9WthZyaill+j1AsoXKKdq8BbmLPFUL
         Gfxj7UztTDfSQau6LhQJZyV/400RFQmqcRd/hNjRTB2dlj4CJYFNpfs9fk2t4dDlyLj1
         MOBs8DKH5FWRPDExJpc6wSlEWZRDPILWG26OhrAjaxjm6UAPgQ17MvX2uXfBJCthvm0O
         reuFmxa5G3YooMQ2zPotwRdTudBemktHGrhRhKzziORnla0FOxiS6lKz6hS3eUe50G8h
         RXVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PsQrcUO/;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a83si488110pfl.25.2017.09.29.03.03.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 03:03:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PsQrcUO/;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id u18so1124347pgo.1
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 03:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=K3saAbJlPR8p1od9EIphOXoztjxoI5uTLM/Bn8+/Gjc=;
        b=PsQrcUO/44TypUIeTNsmx41Kl4jyZVOzmPjFAvWCn4vXzMogw//0ASznIO0FxazBCN
         pZqoyUTSEt2XBO/PwHaBDPAI/0BleuxI5TymIDGmqb5dCY7ZrLznjy9+ufDeCWrYDTJI
         yrZv5j7o1GvaPO/NwBl5EUOiI+n9wggTOx4NzhIFpz51JfPfC2R1qgJfMDUuNXOPhQZe
         J4yAjbnPO2NBKAZyzOVWrr/f4fDCsrl0wIoiz/mmKONAShcy2fffCo4T6WrLKZd4KXKk
         j2buc0QVo7hLPx7FUifgpiviUMA8dN2PlJwRLwZlYR4SeigOvjjAuiPnQnB63OroLFtn
         0RqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=K3saAbJlPR8p1od9EIphOXoztjxoI5uTLM/Bn8+/Gjc=;
        b=rBg41HTQ+mCg+XD1PiL122INCp/ijnxDpPwuki8PKlgsxAQ9HDjPbF4afXD/E/fLaz
         esRhMRAKj40Mvz5345vkH+DLx/nfEeSNfWwJ3STtYEYdUYpKsslWTWZNr0YVsa0mVAJd
         eYUM5P2xhY1/X+HxRXGHQnmocvAF2Pt93dqQOnvjEOVZd9nXIwWPDgU4gljMxeCaAsbB
         h3DjcJKEsHDL4xi5HPpP/xoWzqSediSADO/aooNtLrwCxMKN548ZbDx/jN9IrovcxIHs
         cpWXrRYsnhXt2xBn9NqyCEtMyem1skFZIJvWveRixVEWJAjitYSuqeNUtZMXYqr14VmV
         WWmQ==
X-Gm-Message-State: AHPjjUjR8NvohqGWRMs4e3/lwuglMGq/TtInagB3463djcSmsvKezi+7
	pLmbMCmS6RFFJv64uNx7Wks=
X-Google-Smtp-Source: AOwi7QAVK+NuRv8b2z0n3R8o6sRF3Ze0Y6oRn832xNuxEjiTBBUfEXy/njNzyu/SN1K9vnCXHD25Kg==
X-Received: by 10.98.65.214 with SMTP id g83mr6770645pfd.230.1506679424897;
        Fri, 29 Sep 2017 03:03:44 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.175.215.134])
        by smtp.gmail.com with ESMTPSA id s76sm7030257pfj.119.2017.09.29.03.03.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Sep 2017 03:03:44 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: daniel.vetter@ffwll.ch
Cc: seanpaul@chromium.org,
	kraxel@redhat.com,
	virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] drm/virtio: Replace instances of reference/unreference with get/put
Date: Fri, 29 Sep 2017 15:33:39 +0530
Message-Id: <1506679419-7130-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace reference/unreference with get/put as it is consistent
with the kernel coding style. Done using the following semantic
patch by coccinelle.

@r@
expression e;
@@

-drm_gem_object_unreference_unlocked(e);
+drm_gem_object_put_unlocked(e);

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/gpu/drm/virtio/virtgpu_display.c |  4 ++--
 drivers/gpu/drm/virtio/virtgpu_gem.c     |  4 ++--
 drivers/gpu/drm/virtio/virtgpu_ioctl.c   | 12 ++++++------
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_display.c b/drivers/gpu/drm/virtio/virtgpu_display.c
index b6d5205..41b0930 100644
--- a/drivers/gpu/drm/virtio/virtgpu_display.c
+++ b/drivers/gpu/drm/virtio/virtgpu_display.c
@@ -53,7 +53,7 @@ static void virtio_gpu_user_framebuffer_destroy(struct drm_framebuffer *fb)
 	struct virtio_gpu_framebuffer *virtio_gpu_fb
 		= to_virtio_gpu_framebuffer(fb);
 
-	drm_gem_object_unreference_unlocked(virtio_gpu_fb->obj);
+	drm_gem_object_put_unlocked(virtio_gpu_fb->obj);
 	drm_framebuffer_cleanup(fb);
 	kfree(virtio_gpu_fb);
 }
@@ -327,7 +327,7 @@ virtio_gpu_user_framebuffer_create(struct drm_device *dev,
 	ret = virtio_gpu_framebuffer_init(dev, virtio_gpu_fb, mode_cmd, obj);
 	if (ret) {
 		kfree(virtio_gpu_fb);
-		drm_gem_object_unreference_unlocked(obj);
+		drm_gem_object_put_unlocked(obj);
 		return NULL;
 	}
 
diff --git a/drivers/gpu/drm/virtio/virtgpu_gem.c b/drivers/gpu/drm/virtio/virtgpu_gem.c
index 72ad7b1..92fb277 100644
--- a/drivers/gpu/drm/virtio/virtgpu_gem.c
+++ b/drivers/gpu/drm/virtio/virtgpu_gem.c
@@ -72,7 +72,7 @@ int virtio_gpu_gem_create(struct drm_file *file,
 	*obj_p = &obj->gem_base;
 
 	/* drop reference from allocate - handle holds it now */
-	drm_gem_object_unreference_unlocked(&obj->gem_base);
+	drm_gem_object_put_unlocked(&obj->gem_base);
 
 	*handle_p = handle;
 	return 0;
@@ -130,7 +130,7 @@ int virtio_gpu_mode_dumb_mmap(struct drm_file *file_priv,
 		return -ENOENT;
 	obj = gem_to_virtio_gpu_obj(gobj);
 	*offset_p = virtio_gpu_object_mmap_offset(obj);
-	drm_gem_object_unreference_unlocked(gobj);
+	drm_gem_object_put_unlocked(gobj);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/virtio/virtgpu_ioctl.c b/drivers/gpu/drm/virtio/virtgpu_ioctl.c
index b94bd54..0528edb 100644
--- a/drivers/gpu/drm/virtio/virtgpu_ioctl.c
+++ b/drivers/gpu/drm/virtio/virtgpu_ioctl.c
@@ -86,7 +86,7 @@ static void virtio_gpu_unref_list(struct list_head *head)
 		bo = buf->bo;
 		qobj = container_of(bo, struct virtio_gpu_object, tbo);
 
-		drm_gem_object_unreference_unlocked(&qobj->gem_base);
+		drm_gem_object_put_unlocked(&qobj->gem_base);
 	}
 }
 
@@ -304,7 +304,7 @@ static int virtio_gpu_resource_create_ioctl(struct drm_device *dev, void *data,
 		}
 		return ret;
 	}
-	drm_gem_object_unreference_unlocked(obj);
+	drm_gem_object_put_unlocked(obj);
 
 	rc->res_handle = res_id; /* similiar to a VM address */
 	rc->bo_handle = handle;
@@ -341,7 +341,7 @@ static int virtio_gpu_resource_info_ioctl(struct drm_device *dev, void *data,
 
 	ri->size = qobj->gem_base.size;
 	ri->res_handle = qobj->hw_res_handle;
-	drm_gem_object_unreference_unlocked(gobj);
+	drm_gem_object_put_unlocked(gobj);
 	return 0;
 }
 
@@ -389,7 +389,7 @@ static int virtio_gpu_transfer_from_host_ioctl(struct drm_device *dev,
 out_unres:
 	virtio_gpu_object_unreserve(qobj);
 out:
-	drm_gem_object_unreference_unlocked(gobj);
+	drm_gem_object_put_unlocked(gobj);
 	return ret;
 }
 
@@ -439,7 +439,7 @@ static int virtio_gpu_transfer_to_host_ioctl(struct drm_device *dev, void *data,
 out_unres:
 	virtio_gpu_object_unreserve(qobj);
 out:
-	drm_gem_object_unreference_unlocked(gobj);
+	drm_gem_object_put_unlocked(gobj);
 	return ret;
 }
 
@@ -462,7 +462,7 @@ static int virtio_gpu_wait_ioctl(struct drm_device *dev, void *data,
 		nowait = true;
 	ret = virtio_gpu_object_wait(qobj, nowait);
 
-	drm_gem_object_unreference_unlocked(gobj);
+	drm_gem_object_put_unlocked(gobj);
 	return ret;
 }
 
-- 
2.7.4



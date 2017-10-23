X-GM-THRID: 6480146584250089472
X-Received: by 10.31.3.232 with SMTP id f101mr7266365vki.101.1508776700831;
        Mon, 23 Oct 2017 09:38:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.115.6 with SMTP id o6ls2252617vkc.14.gmail; Mon, 23 Oct
 2017 09:38:19 -0700 (PDT)
X-Received: by 10.31.98.66 with SMTP id w63mr7188977vkb.0.1508776699963;
        Mon, 23 Oct 2017 09:38:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508776699; cv=none;
        d=google.com; s=arc-20160816;
        b=btI395arVf1ZaF8Sg2SUBMw45/rJ8lo7WBB4nv/pclY50ENeNuq8ORl6YUQdYoiWwN
         L7JIAPtMiW+aKQaKBrE8HhqIA9hnB0Nd6tveQn0tauqffvyMWK9Iol6IE3Z1Eza3f7Y3
         068GXxfPU4COjuGYVGRkGiY3PkEmoZrfTWBf+/VV+KTKtuaduh+/EVykI/UfKhq6gBuJ
         Za3Brqj5j1s9EKZYNRqjGE5yw1ckrCTk0EDu2mvViS4WjdPy+NKZXFhBX+HiCg9+iI5W
         LJ4O6B+Mun3z61qnL9yuXF0kuzDUq8fsX13DlxUQXTji8Af/Hx10UGTk6co/enZnxImI
         KV1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=8qc/nEyd+MKfrUjs5FYK/Z8G8j8CmJxoDLOYrmx3C0M=;
        b=WOOaUI9lTTAS71R6vdTj3NPPn+uFyfhqt/cuDTMLt3wjK1+K9g1zjRWnSUgdrX2QVO
         /mOreZGZLlSjl7UOm0R5FOvtA9xsRar7zRTTVkqS9XBCrH5riQZ85J6W8O6tVvU8E8lR
         VMqdz1UxJMdKZGiSTK4DKEpgo8ko/u10hu+proFvQdgUBNdKBgLQYqzu4EVSgw54+Om/
         GFtQg9yVXWFKPEzcDfw+t6cCtSontbM91HtSgjvCV329Rwzmlt5SjFLUNrEHwLBS+Ki1
         4UwAFGmvkOSnaXoNxvsitzCZp8sWV9YTUZBR8vxappCb+rgf8I70KMGYNApnZgrluv2w
         dvkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FrrnvZZT;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x235.google.com (mail-pg0-x235.google.com. [2607:f8b0:400e:c05::235])
        by gmr-mx.google.com with ESMTPS id l14si456171vki.1.2017.10.23.09.38.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Oct 2017 09:38:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) client-ip=2607:f8b0:400e:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FrrnvZZT;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x235.google.com with SMTP id g6so12197345pgn.6
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Oct 2017 09:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8qc/nEyd+MKfrUjs5FYK/Z8G8j8CmJxoDLOYrmx3C0M=;
        b=FrrnvZZT5sprfx3o397kDpyhAnKw/KR1l570p8Tl0+9G2WgVN4lbCo2QL+Imfqv5tA
         tXkaCFKDEy+5/HMlmMEXz07y+fSWxig2sXkX8zcadcZB23vzhR9lL2CZ9ceO0NO2HWul
         oOFXHbKWVI85E4nNpreCbt4nu0FtKoZ4eOyAJWZpVDgT6jQUhXwBBQe/TYb4AvBnlEAm
         wB/4rLkoCJ+oHBMUBfgrLxUcNiLzUKR6r1RnO9IeKUUVoLj0fKsUF4xYUcgMLDMB0Kja
         PfaqXu4NYBByYv86A3dTz5L33FmDoNWKp31RB2JsgH0LHdSpuyX1MmIE+kDCl/rFDUY7
         YTUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8qc/nEyd+MKfrUjs5FYK/Z8G8j8CmJxoDLOYrmx3C0M=;
        b=ewqGuH3A+X7GjuqHQurA8FwNJWWt/+c8sdoen/Qo/QIYZ3aSk2IQKLtItCEPfwo/Gx
         nRUHIib0XfAY0CTifJRBNRUij/bbh5rwos9ZlxTBos2XajoKFPpHX2sGOcPB7LfcnMdO
         PICBP/5EWXi8NDmAc2hazGj3eQI7Epfo0PxleLOyDypxXnCpjPdfRUPJBEwfv1yZaMQz
         vP4Zib0p3We78W0WcwleYIh11eTWQ+Z5L8Glofj5tBnXsygocRvImXMjTW7lviEbFfUt
         Hpf5w/JvNkvmF3fwxKHBzHz0aVz1+wLJKZOqMShxcAo4XBURClnYzPK7+bnyFxbTfoeP
         y+BA==
X-Gm-Message-State: AMCzsaU5WtXtwrmCfY5yeqXkeDXB4DptQw6EDgmkTeU2BVU5esNh5ABO
	wBzI2dUcy80Smzgktt7lMfE=
X-Google-Smtp-Source: ABhQp+RgjetPi/FpjhGzkv07jRHKiGHnWl27MRvV+rKXswppsHBr9KhzMbLdCBArPVHIH7ZTfaD3zw==
X-Received: by 10.84.169.36 with SMTP id g33mr9499383plb.216.1508776699445;
        Mon, 23 Oct 2017 09:38:19 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id l23sm14436044pfg.83.2017.10.23.09.38.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Oct 2017 09:38:18 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: airlied@linux.ie,
	kraxel@redhat.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] drm: virtio: replace reference/unreference with get/put
Date: Mon, 23 Oct 2017 22:08:06 +0530
Message-Id: <1508776686-29664-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

DRM core uses reference/unreference suffixes for refcounting
functions, but kernel uses get/put (e.g. kref_get/put()).
Replace reference/unreference with get/put for consistency
and also it's shorter.

The following cocci script was used to generate the patch:

@@
expression e;
@@

(
-drm_gem_object_reference(e);
+drm_gem_object_get(e);
|
-drm_gem_object_unreference(e);
+drm_gem_object_put(e);
|
-drm_gem_object_unreference_unlocked(e);
+drm_gem_object_put_unlocked(e);
)

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/gpu/drm/virtio/virtgpu_display.c |  4 ++--
 drivers/gpu/drm/virtio/virtgpu_gem.c     |  4 ++--
 drivers/gpu/drm/virtio/virtgpu_ioctl.c   | 14 +++++++-------
 3 files changed, 11 insertions(+), 11 deletions(-)

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
index b94bd54..461f81a 100644
--- a/drivers/gpu/drm/virtio/virtgpu_ioctl.c
+++ b/drivers/gpu/drm/virtio/virtgpu_ioctl.c
@@ -86,7 +86,7 @@ static void virtio_gpu_unref_list(struct list_head *head)
 		bo = buf->bo;
 		qobj = container_of(bo, struct virtio_gpu_object, tbo);
 
-		drm_gem_object_unreference_unlocked(&qobj->gem_base);
+		drm_gem_object_put_unlocked(&qobj->gem_base);
 	}
 }
 
@@ -261,7 +261,7 @@ static int virtio_gpu_resource_create_ioctl(struct drm_device *dev, void *data,
 		ret = virtio_gpu_object_attach(vgdev, qobj, res_id, NULL);
 	} else {
 		/* use a gem reference since unref list undoes them */
-		drm_gem_object_reference(&qobj->gem_base);
+		drm_gem_object_get(&qobj->gem_base);
 		mainbuf.bo = &qobj->tbo;
 		list_add(&mainbuf.head, &validate_list);
 
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



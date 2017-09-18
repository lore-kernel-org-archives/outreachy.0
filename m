X-GM-THRID: 6466935626239311872
X-Received: by 10.129.118.79 with SMTP id j15mr724345ywk.62.1505700932168;
        Sun, 17 Sep 2017 19:15:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.222.13 with SMTP id v13ls9803196iog.40.gmail; Sun, 17 Sep
 2017 19:15:31 -0700 (PDT)
X-Received: by 10.99.175.72 with SMTP id s8mr2059655pgo.98.1505700931436;
        Sun, 17 Sep 2017 19:15:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505700931; cv=none;
        d=google.com; s=arc-20160816;
        b=XznyrScFtvpqmywPq0/sUE7ON8cX4E7231McYW4dVixJjBeNtHU9pqo+ih9rXcxdE+
         bqY45VS7GFBC3aOnuy5M2c4E5xwwulFCibApzCptgilSxCDX8w/aQJW8m0JBI3DHsFDU
         T7CdffBdlXzCQz65k7eXkaPeit7n8VfiEBYgmKiYSdYFDp18CGljRkM2hmKHKJsaKTX2
         R8tNuL04T+I8nxuzLLNygxc0iycESqwVcgImB1pFt8Y6x3j76I8I3jTqpahxpJ8TvyjV
         D6B71lCQpLzE9oaKqbG771Jbt8Ez3DSwJ3CIhJzaF1tVJDnXJ4KwII2oRw1gc7uV6Co6
         ZkYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=8bcDNKNyLOgSwlyne54ilrR7jW3SYKnfGStzilV1nMA=;
        b=vtxCTpLX1c1Dy6mZs9dljzlCoWyH2k0avqOl0OrsHqm+h/XxymhnAwXj4BccAsjbSw
         ox6fJ5e/3YMtq4E8IFuQmFTUsp7dMa39reJwOMr21X0Uw2apGl2w6RsDXY7T3wOiV55E
         /TZ490SkUt7mb2krVSqwm4LrC2MxsXO8s3hYXvY8OpMKNDuVxfYUiLAGa0yGcI6KySyx
         ODlXU8WOQjMTYHslQ/m9YIJxgUnHOgYkX2maMf/YgX073VqzWxbe7Q56SkPop6HT6UQ7
         DN1KhNc91Eh3/MyUOLxC+NNDy1S+4Q6q7Hc8tLnPZzU60lH21Sr33fGVbuw+9lWFlH9Q
         d7+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kcSyQNyu;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y18si606090pfj.18.2017.09.17.19.15.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 19:15:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kcSyQNyu;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so3987597pfe.1
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Sep 2017 19:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8bcDNKNyLOgSwlyne54ilrR7jW3SYKnfGStzilV1nMA=;
        b=kcSyQNyuqpCyGbC8GNtqeGPTrOSgGR7XobRviZmkBSAbq+Jq6oSOdG8lasMrkfWP+l
         5SeJJz2fVV6sEmP4pXcgYZ9WH2XBgvWWW8qjdrNzUj3iG4gg3gNYszJNsqKA1h0B6HX0
         05QP9Wh5HuPfv4vpS9Vj6DabJdBdD60XxrEtboMYd1wpBCEyG2chR4cPdo08yRfcJCSD
         JZYLYLcjUgc03qWloxJoQAGCm73V1MFFmQZKceEj+4G0OW3MBK6UzCOxg3VLMccT87qK
         q/X2kywDMiHaIZBbvvq9uGJ/BYIfOuV0p0hu/7POJ18KJueLdjlqFT/0C2o7WRkTI9I7
         KKPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8bcDNKNyLOgSwlyne54ilrR7jW3SYKnfGStzilV1nMA=;
        b=JdMAtgLSIPPueea7SGEmqBtEJsY8bEt8JIALlk9VMr/BCMu+vmxT6eYyaYxhgs1RXv
         VzrwoSXNaDevDs+3GRgUr/1bGG+lNog+IGSVfsD7wUIlsy/5GIhgbFeCN+fqGOUCkNXr
         wduUyRG38F/jigK1OEtYJf5JbRCJ1LLnDU9zb+uPrbPyOMwOyKpD99CBBaHo/5k40kzp
         YnjpveQLCLWjqZbDnCHHJ89Jq9q+HC/b6l08AgYBiLfwepzO73Pj9CbdFXZzxcGQ0avq
         IRzqjJ/rFO25LKPR2Fg1xk8gZRhOwdPHgKmX980vyeEORmorgWuq4FMeW1o6hv6RQgSb
         RqYQ==
X-Gm-Message-State: AHPjjUg0S6MsfqOroa6TvmdkER8LBTcSs9jwQ4dKnIJW4h70BWO5+DvT
	XKxv66M0dO5VDWtE/K8=
X-Google-Smtp-Source: AOwi7QAkSbGRLlURMY6liaZImz7KIIlN5yNmaSts32RGH18ZTgvE/usUbFRP7S7GYBAUaVffft9WQg==
X-Received: by 10.101.65.205 with SMTP id b13mr3604854pgq.319.1505700930954;
        Sun, 17 Sep 2017 19:15:30 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id r81sm12171813pfj.106.2017.09.17.19.15.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 19:15:30 -0700 (PDT)
Date: Sun, 17 Sep 2017 20:15:28 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: hamohammed.sa@gmail.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
	gregkh@linuxfoundation.org, Russell King <linux@armlinux.org.uk>,
	David Airlie <airlied@linux.ie>
Subject: [PATCH 1/2] drm/armada: Replace
 drm_gem_object_reference/unreference() with _get/put()
Message-ID: <50965fcdc468ed49713efe46a2711ab4077acb4f.1505699582.git.hamohammed.sa@gmail.com>
References: <cover.1505699582.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505699582.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replace instances of drm_gem_object_reference/unreference with
*_get/put() suffixes, because get/put is shorter and consistent with the
kernel use of *_get/put() suffixes.
This was done with the following Coccinelle script:

@r1@
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

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/gpu/drm/armada/armada_crtc.c  |  8 ++++----
 drivers/gpu/drm/armada/armada_fb.c    |  8 ++++----
 drivers/gpu/drm/armada/armada_fbdev.c |  6 +++---
 drivers/gpu/drm/armada/armada_gem.c   | 14 +++++++-------
 4 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
index 2a4d163..381dfa1 100644
--- a/drivers/gpu/drm/armada/armada_crtc.c
+++ b/drivers/gpu/drm/armada/armada_crtc.c
@@ -947,13 +947,13 @@ static int armada_drm_crtc_cursor_set(struct drm_crtc *crtc,
 
 		/* Must be a kernel-mapped object */
 		if (!obj->addr) {
-			drm_gem_object_unreference_unlocked(&obj->obj);
+			drm_gem_object_put_unlocked(&obj->obj);
 			return -EINVAL;
 		}
 
 		if (obj->obj.size < w * h * 4) {
 			DRM_ERROR("buffer is too small\n");
-			drm_gem_object_unreference_unlocked(&obj->obj);
+			drm_gem_object_put_unlocked(&obj->obj);
 			return -ENOMEM;
 		}
 	}
@@ -961,7 +961,7 @@ static int armada_drm_crtc_cursor_set(struct drm_crtc *crtc,
 	if (dcrtc->cursor_obj) {
 		dcrtc->cursor_obj->update = NULL;
 		dcrtc->cursor_obj->update_data = NULL;
-		drm_gem_object_unreference_unlocked(&dcrtc->cursor_obj->obj);
+		drm_gem_object_put_unlocked(&dcrtc->cursor_obj->obj);
 	}
 	dcrtc->cursor_obj = obj;
 	dcrtc->cursor_w = w;
@@ -997,7 +997,7 @@ static void armada_drm_crtc_destroy(struct drm_crtc *crtc)
 	struct armada_private *priv = crtc->dev->dev_private;
 
 	if (dcrtc->cursor_obj)
-		drm_gem_object_unreference_unlocked(&dcrtc->cursor_obj->obj);
+		drm_gem_object_put_unlocked(&dcrtc->cursor_obj->obj);
 
 	priv->dcrtc[dcrtc->num] = NULL;
 	drm_crtc_cleanup(&dcrtc->crtc);
diff --git a/drivers/gpu/drm/armada/armada_fb.c b/drivers/gpu/drm/armada/armada_fb.c
index 92e6b08..51839c1 100644
--- a/drivers/gpu/drm/armada/armada_fb.c
+++ b/drivers/gpu/drm/armada/armada_fb.c
@@ -18,7 +18,7 @@ static void armada_fb_destroy(struct drm_framebuffer *fb)
 	struct armada_framebuffer *dfb = drm_fb_to_armada_fb(fb);
 
 	drm_framebuffer_cleanup(&dfb->fb);
-	drm_gem_object_unreference_unlocked(&dfb->obj->obj);
+	drm_gem_object_put_unlocked(&dfb->obj->obj);
 	kfree(dfb);
 }
 
@@ -95,7 +95,7 @@ struct armada_framebuffer *armada_framebuffer_create(struct drm_device *dev,
 	 * the above call, but the caller will drop their reference
 	 * to it.  Hence we need to take our own reference.
 	 */
-	drm_gem_object_reference(&obj->obj);
+	drm_gem_object_get(&obj->obj);
 
 	return dfb;
 }
@@ -144,12 +144,12 @@ static struct drm_framebuffer *armada_fb_create(struct drm_device *dev,
 		goto err;
 	}
 
-	drm_gem_object_unreference_unlocked(&obj->obj);
+	drm_gem_object_put_unlocked(&obj->obj);
 
 	return &dfb->fb;
 
  err_unref:
-	drm_gem_object_unreference_unlocked(&obj->obj);
+	drm_gem_object_put_unlocked(&obj->obj);
  err:
 	DRM_ERROR("failed to initialize framebuffer: %d\n", ret);
 	return ERR_PTR(ret);
diff --git a/drivers/gpu/drm/armada/armada_fbdev.c b/drivers/gpu/drm/armada/armada_fbdev.c
index 29c7d04..cf6bad1 100644
--- a/drivers/gpu/drm/armada/armada_fbdev.c
+++ b/drivers/gpu/drm/armada/armada_fbdev.c
@@ -52,13 +52,13 @@ static int armada_fb_create(struct drm_fb_helper *fbh,
 
 	ret = armada_gem_linear_back(dev, obj);
 	if (ret) {
-		drm_gem_object_unreference_unlocked(&obj->obj);
+		drm_gem_object_put_unlocked(&obj->obj);
 		return ret;
 	}
 
 	ptr = armada_gem_map_object(dev, obj);
 	if (!ptr) {
-		drm_gem_object_unreference_unlocked(&obj->obj);
+		drm_gem_object_put_unlocked(&obj->obj);
 		return -ENOMEM;
 	}
 
@@ -68,7 +68,7 @@ static int armada_fb_create(struct drm_fb_helper *fbh,
 	 * A reference is now held by the framebuffer object if
 	 * successful, otherwise this drops the ref for the error path.
 	 */
-	drm_gem_object_unreference_unlocked(&obj->obj);
+	drm_gem_object_put_unlocked(&obj->obj);
 
 	if (IS_ERR(dfb))
 		return PTR_ERR(dfb);
diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
index a76ca21..49d40aa 100644
--- a/drivers/gpu/drm/armada/armada_gem.c
+++ b/drivers/gpu/drm/armada/armada_gem.c
@@ -266,7 +266,7 @@ int armada_gem_dumb_create(struct drm_file *file, struct drm_device *dev,
 	/* drop reference from allocate - handle holds it now */
 	DRM_DEBUG_DRIVER("obj %p size %zu handle %#x\n", dobj, size, handle);
  err:
-	drm_gem_object_unreference_unlocked(&dobj->obj);
+	drm_gem_object_put_unlocked(&dobj->obj);
 	return ret;
 }
 
@@ -295,7 +295,7 @@ int armada_gem_dumb_map_offset(struct drm_file *file, struct drm_device *dev,
 	}
 
  err_unref:
-	drm_gem_object_unreference_unlocked(&obj->obj);
+	drm_gem_object_put_unlocked(&obj->obj);
 
 	return ret;
 }
@@ -334,7 +334,7 @@ int armada_gem_create_ioctl(struct drm_device *dev, void *data,
 	/* drop reference from allocate - handle holds it now */
 	DRM_DEBUG_DRIVER("obj %p size %zu handle %#x\n", dobj, size, handle);
  err:
-	drm_gem_object_unreference_unlocked(&dobj->obj);
+	drm_gem_object_put_unlocked(&dobj->obj);
 	return ret;
 }
 
@@ -351,13 +351,13 @@ int armada_gem_mmap_ioctl(struct drm_device *dev, void *data,
 		return -ENOENT;
 
 	if (!dobj->obj.filp) {
-		drm_gem_object_unreference_unlocked(&dobj->obj);
+		drm_gem_object_put_unlocked(&dobj->obj);
 		return -EINVAL;
 	}
 
 	addr = vm_mmap(dobj->obj.filp, 0, args->size, PROT_READ | PROT_WRITE,
 		       MAP_SHARED, args->offset);
-	drm_gem_object_unreference_unlocked(&dobj->obj);
+	drm_gem_object_put_unlocked(&dobj->obj);
 	if (IS_ERR_VALUE(addr))
 		return addr;
 
@@ -412,7 +412,7 @@ int armada_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 	}
 
  unref:
-	drm_gem_object_unreference_unlocked(&dobj->obj);
+	drm_gem_object_put_unlocked(&dobj->obj);
 	return ret;
 }
 
@@ -561,7 +561,7 @@ armada_gem_prime_import(struct drm_device *dev, struct dma_buf *buf)
 			 * Importing our own dmabuf(s) increases the
 			 * refcount on the gem object itself.
 			 */
-			drm_gem_object_reference(obj);
+			drm_gem_object_get(obj);
 			return obj;
 		}
 	}
-- 
2.7.4



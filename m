X-GM-THRID: 6466935626239311872
X-Received: by 10.237.56.234 with SMTP id k97mr2902968qte.60.1505933692969;
        Wed, 20 Sep 2017 11:54:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.241.72 with SMTP id u8ls271249plm.6.gmail; Wed, 20 Sep 2017
 11:54:51 -0700 (PDT)
X-Received: by 10.84.137.169 with SMTP id 38mr1683507pln.45.1505933691884;
        Wed, 20 Sep 2017 11:54:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505933691; cv=none;
        d=google.com; s=arc-20160816;
        b=zG8mpuWe/ZlzsPH5P5FtD46Arbo6YKBROlN8gMbXpkUJnjB7PnoLSrdK0tqYXB3QFN
         xrLhhYCvrFXUtVOKnResAzzerMKtKYOweANAGbbCcZGidbrVkuSlTAF/UGKwM8Fehjuh
         zZjzadt5Gi8DVhdfL3sJrs5YpXNcM9P1/FJ2zkfc4XFDEbChtIPE7HpKW6/1UendokDj
         u+um+x2s43FUTP0kcBo4bhsxfkWe0Wbtg6I9red60Nu+23wRkcNgrVl9w8XJGrnPpsRc
         Q+g0VXRyWetReOXFN9BCTD7mBOjPZeWGvfIOFyF+i5aV916jlCJUsywNAeEFSqRqNkY2
         k7jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=8bcDNKNyLOgSwlyne54ilrR7jW3SYKnfGStzilV1nMA=;
        b=kDLJUWz1FSWtFxDM9bbSpjXQZntKldo6PYKVIwLlV8C48H9JdM67rhsOePkq/8lYrv
         tE7dt7Hu0wCysbR/Amqdyzdi4bhSb/Hzg7MwBxZuoHjeAEJfA615CFTSFx3roJL2Yjk1
         9v/S8UW2fyo4P5vnOKXWLuJOKSHb/xA0Ou5yiKvoq03G5iXZv5Dby+tEKhCjtnErzY2v
         fsxt1bcB7HUISB4TfjZ5e5S91zL+4d7ghwy+pAAIZYQkYoGHb+8yhQQI1L4AD97WUbTt
         IObUg3j7qdwqg4jjg0AA4SOo0nPp2q1fijNcH6rTzRc+zZJtLHrqYBPWNYmicYv1SyYi
         J7AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IuOG/cEl;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 82si611198pfz.6.2017.09.20.11.54.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 11:54:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IuOG/cEl;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so1520334pfg.4
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 11:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8bcDNKNyLOgSwlyne54ilrR7jW3SYKnfGStzilV1nMA=;
        b=IuOG/cElUJGR4X9x5l5SwRD7YTSIW1T7dFdoDpicvRuh5SdAvcwKR+S+/XPY1M0wXT
         DZFYbkuPZn79T9Xklg2iv20GOmV6/qMMD+BAY7K4RgwRMjt2rWB4Ws9H8PMnyBBa2fw3
         ktu81WTOzDk0OesTJtZ6tSW98PtlFb/NGabuvVRPoY3NlBaH6EW+CBirY0S+kHv1Gs8k
         z6CzvCp02T52PQE0SqhTqA7gGFwQwpiJieQgV6/xzoEdr648eRYalQzU94A+wmX6jim/
         EJgi1eQVv2H7XimSsJmsOq4s8Udddwq//8hFvl6BJy2ZZWl4oqemkmA2IcFo9pTn0du9
         26Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8bcDNKNyLOgSwlyne54ilrR7jW3SYKnfGStzilV1nMA=;
        b=qZRE3yKD0gKULym5v3B6FHSiAqw8eT3yz3lUI8uoo2yEeb94q5C7TYHDKatQ1Y61xD
         5FlIqYpeUivneD0lsHaqWeo5csy7jFo9vPvskaGTfP2OBatTgxVbUhbU5KRYM/ZFuYVB
         k5Otk0s1L1EtHDKCwZFAjvhNuFD0rEOB6HPPcPL3Jfizq7PPkEpJJSWgsGC9CWDLPkXJ
         x3ll2lwZ6gDILejX+Wn2JCdLTf3LHTl2/zmyCuM06n8dW5UejKDy0sPX2HKVEhzI/CvA
         TdDbfOsBdSNOt1XnErtqCFIbMleQpt1qy7IH1uxhpFAbTxgH/epn6NESYaJ+d3PFO81b
         w91g==
X-Gm-Message-State: AHPjjUhB9zp/DohOHvJ/42aR9AmrKuiwGGflZmM8REntb9z+DVinpSdW
	tHTSjlknXrfd9+86kohOMx6Jhiup
X-Google-Smtp-Source: AOwi7QA7KR7k+bUUiR8jwruBggrtQzrLqS6AszBJw69TPcO3Ji+3mgofEKfoWOijfeQJUGXT8W5/qg==
X-Received: by 10.84.245.136 with SMTP id j8mr3079778pll.428.1505933691398;
        Wed, 20 Sep 2017 11:54:51 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id k195sm8601228pgc.4.2017.09.20.11.54.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 11:54:50 -0700 (PDT)
Date: Wed, 20 Sep 2017 12:54:48 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: hamohammed.sa@gmail.com, Russell King <linux@armlinux.org.uk>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Sean Paul <seanpaul@chromium.org>, gregkh@linuxfoundation.org,
	dri-devel@lists.freedesktop.org
Subject: [RESEND PATCH 1/2] drm/armada: Replace
 drm_gem_object_reference/unreference() with _get/put()
Message-ID: <a59ef1ed109ade897bcffcb01b33214262db8942.1505932812.git.hamohammed.sa@gmail.com>
References: <cover.1505932812.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505932812.git.hamohammed.sa@gmail.com>
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



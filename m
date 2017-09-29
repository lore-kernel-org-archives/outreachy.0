X-GM-THRID: 6470825285154504704
X-Received: by 10.84.235.67 with SMTP id g3mr587788plt.22.1506659550032;
        Thu, 28 Sep 2017 21:32:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.236.65 with SMTP id h1ls1686714pln.13.gmail; Thu, 28 Sep
 2017 21:32:28 -0700 (PDT)
X-Received: by 10.99.97.16 with SMTP id v16mr211050pgb.30.1506659548922;
        Thu, 28 Sep 2017 21:32:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506659548; cv=none;
        d=google.com; s=arc-20160816;
        b=FD4+xb2ffCUp/JTtWl2XFo2QVqisd3PQqzmVO7ccx+MSqUhA5ZEK3JK59PoaBmopjz
         +7AvYmf869oXolLtY3cEsiPIHJzQCRB5A7KDeJCj643wQTYEz1d1tU32Ras4u9+EcjzV
         8i/4gnTheqS6xYauFXEX1Ydk9UdeFVYCyThYwoZiAVyKUyTfELuDf//BBDXX/hX7+y1R
         Roz7JfWZiIupSZXR/FUUTtpvJQzqsiRXHwJepYZSCC4N9WPMsDLwlHJuP90y247/n9FU
         H3rZSnOKMlNhzgxNVRAoMvhijZMgaGkWGtJ+a/m4cz0hWuU0uqKXhjZxOHgD4dQoPQ0+
         7XYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=6mjue4xnEFR+kVdfQb5K5i1Z+E/bNoV8xyF3DF1tLho=;
        b=KgLpDPclA75IaU6vM/qrpUQA1qHwi0msgIE7Jc5GIWd29RajWtS1XprV2GPvY+TNTT
         7kHhv54Md6B6NUQkC/FjuQ3llIqZ1TxGNwOjKA4AAEFvyjy2YO33JpBWO2alISwB8Zzf
         X+4v+8iPDuWGqHsoUDbLKD4zEzixNZwyuKo9v4aGoIfLJOInxm33zJUekCu9wbSDAnOr
         7B6YDxszn+PZvnQavDm0iqouxzchI4NxU56yTKeQkmwY76h5W/ABUZV6iKqZM+3Th1zA
         VzGAIzl8PDa/+JZX1T9/sAqBL5AvqREeBonm0+w7kNJGB0YGLt/sWUJTjHYEvVAjAmPD
         bMCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P0XAcaPR;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y18si401503pfj.18.2017.09.28.21.32.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 21:32:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P0XAcaPR;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id j16so292439pga.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 21:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=6mjue4xnEFR+kVdfQb5K5i1Z+E/bNoV8xyF3DF1tLho=;
        b=P0XAcaPRVBKlKtWVcdKn+XvMeM+1g7VzxWSmr3h3WaWp1tROrogqqSFGmqr7oyLTaA
         ahsE4qc9VrhJet4Xsn+VhFn86Qj8rQf/VwZWag8BALQVnwK7q4Xo3vZainNpU3hkGIjI
         FLwSd70yXuir7i/q8y6LSR7O1fWX0QpYhKfzu8zlLZ3Yxo+IIk2VjK/0j8EUqb35ulk7
         iWhODU0pTWFLP4cSvod+fXC0YrTzkS9TOKS2wplqKjHTmPfEQyHHR0UAJKxSmY2FQ5yw
         KnMsMof5zw2hDBB5CYxiT9tGBi7z1KY92PvB/VJAaeEEccXIPs66WdOZfyUi6mqQuXK9
         YBsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6mjue4xnEFR+kVdfQb5K5i1Z+E/bNoV8xyF3DF1tLho=;
        b=N6lDdeKmY6jJ/sLMTArdicYRQkzWFPSlUy6uVyL9dToPCN23YZs94A/UwEXDSmujZT
         2Fsx5eE6B1MSOPVsqooWv6Gvwv2UsVdzblf320UTq/rrwgGzZkNBf9Sm+sFA/WtFqIW+
         OgYpw85ygYOhioaMVmGXfgnQWzaodc1nvefeNnaMpZODbWU6AeHve2o4J3TnmrC0bbdC
         9+dVFItOklr1HpKAEGsfbQUDoeSaCmokalMoBz0ZORaynq84zvR1UCP11JtaRtWA9Gfl
         oLkSw5ku2XCXW+acYfr2gyDmOAMJHJNVXDR7oyvU5AzAEut3Gbn0okaEp758T8yDqm2N
         yzLQ==
X-Gm-Message-State: AHPjjUg/O9wGACQI+p+d0q8qTkpIxTzw5ewhLd3gpGyUuatrhmeMBj8Y
	B9uIBfmtyt9Vlu+uFICCdrw=
X-Google-Smtp-Source: AOwi7QCvJdxwOxCh/SJyzWCjmWXflY/icbwAEYdYgN2V5af5ddMd4lz4QpN1HAM4LMdlnrQnRvt25w==
X-Received: by 10.99.114.4 with SMTP id n4mr3330997pgc.416.1506659548644;
        Thu, 28 Sep 2017 21:32:28 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id x124sm4772948pfx.56.2017.09.28.21.32.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 21:32:28 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: daniel.vetter@ffwll.ch,
	seanpaul@chromium.org,
	jani.nikula@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] drm/i915: Replace *_reference/unreference() or *_ref/unref with _get/put()
Date: Fri, 29 Sep 2017 10:00:19 +0530
Message-Id: <1506659419-5834-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace instances of drm_framebuffer_reference/unreference() with
*_get/put() suffixes and drm_dev_unref with *_put() suffix
because get/put is shorter and consistent with the
kernel use of *_get/put suffixes.
Done with following coccinelle semantic patch

@@ 
expression ex; 
@@ 

( 
-drm_framebuffer_unreference(ex); 
+drm_framebuffer_put(ex); 
| 
-drm_dev_unref(ex); 
+drm_dev_put(ex); 
| 
-drm_framebuffer_reference(ex); 
+drm_framebuffer_get(ex); 
) 


Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v2:
 -Added coccinelle patch in log message 
 -cc to all driver-specific mailing lists

 drivers/gpu/drm/i915/i915_pci.c                    |  2 +-
 drivers/gpu/drm/i915/intel_display.c               | 10 +++++-----
 drivers/gpu/drm/i915/intel_fbdev.c                 |  4 ++--
 drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c   |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_evict.c    |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c      |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_object.c   |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_request.c  |  2 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c          |  2 +-
 drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c |  2 +-
 10 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 09d97e0..2f106cc 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -510,7 +510,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
 	struct drm_device *dev = pci_get_drvdata(pdev);
 
 	i915_driver_unload(dev);
-	drm_dev_unref(dev);
+	drm_dev_put(dev);
 }
 
 static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
index f172755..92f8304 100644
--- a/drivers/gpu/drm/i915/intel_display.c
+++ b/drivers/gpu/drm/i915/intel_display.c
@@ -2856,7 +2856,7 @@ static int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 
 		if (intel_plane_ggtt_offset(state) == plane_config->base) {
 			fb = c->primary->fb;
-			drm_framebuffer_reference(fb);
+			drm_framebuffer_get(fb);
 			goto valid_fb;
 		}
 	}
@@ -2887,7 +2887,7 @@ static int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 			  intel_crtc->pipe, PTR_ERR(intel_state->vma));
 
 		intel_state->vma = NULL;
-		drm_framebuffer_unreference(fb);
+		drm_framebuffer_put(fb);
 		return;
 	}
 
@@ -2908,7 +2908,7 @@ static int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 	if (i915_gem_object_is_tiled(obj))
 		dev_priv->preserve_bios_swizzle = true;
 
-	drm_framebuffer_reference(fb);
+	drm_framebuffer_get(fb);
 	primary->fb = primary->state->fb = fb;
 	primary->crtc = primary->state->crtc = &intel_crtc->base;
 
@@ -9847,7 +9847,7 @@ struct drm_framebuffer *
 	if (obj->base.size < mode->vdisplay * fb->pitches[0])
 		return NULL;
 
-	drm_framebuffer_reference(fb);
+	drm_framebuffer_get(fb);
 	return fb;
 #else
 	return NULL;
@@ -10028,7 +10028,7 @@ int intel_get_load_detect_pipe(struct drm_connector *connector,
 	if (ret)
 		goto fail;
 
-	drm_framebuffer_unreference(fb);
+	drm_framebuffer_put(fb);
 
 	ret = drm_atomic_set_mode_for_crtc(&crtc_state->base, mode);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/intel_fbdev.c b/drivers/gpu/drm/i915/intel_fbdev.c
index 262e75c..1ff7149 100644
--- a/drivers/gpu/drm/i915/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/intel_fbdev.c
@@ -189,7 +189,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 			      " releasing it\n",
 			      intel_fb->base.width, intel_fb->base.height,
 			      sizes->fb_width, sizes->fb_height);
-		drm_framebuffer_unreference(&intel_fb->base);
+		drm_framebuffer_put(&intel_fb->base);
 		intel_fb = ifbdev->fb = NULL;
 	}
 	if (!intel_fb || WARN_ON(!intel_fb->obj)) {
@@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 	ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8;
 	ifbdev->fb = fb;
 
-	drm_framebuffer_reference(&ifbdev->fb->base);
+	drm_framebuffer_put(&ifbdev->fb->base);
 
 	/* Final pass to check if any active pipes don't have fbs */
 	for_each_crtc(dev, crtc) {
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
index 89dc25a..a7055b1 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
@@ -389,7 +389,7 @@ int i915_gem_dmabuf_mock_selftests(void)
 
 	err = i915_subtests(tests, i915);
 
-	drm_dev_unref(&i915->drm);
+	drm_dev_put(&i915->drm);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 5ea3732..75764fd 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -345,6 +345,6 @@ int i915_gem_evict_mock_selftests(void)
 	err = i915_subtests(tests, i915);
 	mutex_unlock(&i915->drm.struct_mutex);
 
-	drm_dev_unref(&i915->drm);
+	drm_dev_put(&i915->drm);
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 6b132ca..bc3c4a5 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1540,7 +1540,7 @@ int i915_gem_gtt_mock_selftests(void)
 	err = i915_subtests(tests, i915);
 	mutex_unlock(&i915->drm.struct_mutex);
 
-	drm_dev_unref(&i915->drm);
+	drm_dev_put(&i915->drm);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_object.c b/drivers/gpu/drm/i915/selftests/i915_gem_object.c
index 8f011c4..7bfd990 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_object.c
@@ -586,7 +586,7 @@ int i915_gem_object_mock_selftests(void)
 
 	err = i915_subtests(tests, i915);
 
-	drm_dev_unref(&i915->drm);
+	drm_dev_put(&i915->drm);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_request.c b/drivers/gpu/drm/i915/selftests/i915_gem_request.c
index 6664cb2..8985578 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_request.c
@@ -260,7 +260,7 @@ int i915_gem_request_mock_selftests(void)
 		return -ENOMEM;
 
 	err = i915_subtests(tests, i915);
-	drm_dev_unref(&i915->drm);
+	drm_dev_put(&i915->drm);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 2e86ec1..d8cc0a6 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -734,7 +734,7 @@ int i915_vma_mock_selftests(void)
 	err = i915_subtests(tests, i915);
 	mutex_unlock(&i915->drm.struct_mutex);
 
-	drm_dev_unref(&i915->drm);
+	drm_dev_put(&i915->drm);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
index 828904b..3c8bf44 100644
--- a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
@@ -475,7 +475,7 @@ int intel_breadcrumbs_mock_selftests(void)
 		return -ENOMEM;
 
 	err = i915_subtests(tests, i915->engine[RCS]);
-	drm_dev_unref(&i915->drm);
+	drm_dev_put(&i915->drm);
 
 	return err;
 }
-- 
1.9.1



X-GM-THRID: 6470825285154504704
X-Received: by 10.101.81.196 with SMTP id i4mr133873pgq.174.1506606416308;
        Thu, 28 Sep 2017 06:46:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.209.206 with SMTP id y72ls1268671plh.7.gmail; Thu, 28 Sep
 2017 06:46:55 -0700 (PDT)
X-Received: by 10.98.163.197 with SMTP id q66mr467276pfl.14.1506606415198;
        Thu, 28 Sep 2017 06:46:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506606415; cv=none;
        d=google.com; s=arc-20160816;
        b=Wh2DrZWjXVOMU/IQigXcgEaUh0AT65wSMR1wjD/0okcgRzVM2jQiBsq02zTTIQITMl
         q/Y7Ctgg/sYJS8rDT034uDg98QbjiFMT5U7ek9BIuxJ2LFnpCCnQIohE41vWcst69r0N
         cbfeO5+o8waC4wYheTV0Zg83AKgGY+wwtQ/nctJyxtXJTrbtkl7UNIqutVJ9hbczF2ox
         /dxNHXak+G695+6w4495nMhZ1uU6IBwccHhXrAvERJvbNLCZpPQzk7cflDVpxYbFpQ82
         VsBlcdNlWqtGM7YyelxI0xsMnzqw/tfcONFhU4kcy9CWPrrKeTZktH6W10neFsdDkQMW
         2XQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=k7PMrGl3U5pkfupbbl2Oon1JNk8mO1LqET71Yj/A8tg=;
        b=Snwl4Z7tp6g2Aba2ERHdwDGtLFXEtcCLsOcq9FFmOINi8i2RkwY/co/gNaa1V7K+JM
         ZeVUEmT8ST0h1X70qDsabb6KIBrJmGmJAfxrjeEK5Tns+mQOfxPIRL0gpjrC0rJupPMI
         qC/D0WY23tg94nnfh49denuBRblAFtm4fszgFnE8kyv884nK1apiC7asskD//DikPyy7
         EBGvIrDcCOU+FcAmmv1SFnjvGsS4Ii09yuTB5XxhPtoCxhWr1hrgJ8ivr4f1nM0c/yNj
         QnSB59JYwxUbDRfmKZJUgt0Gq/A17OE/kX0Yra13x+gd+RS5sLbcdpNpKQMLzA+ELOlx
         oElA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gQnauLMl;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id x71si225780pfe.0.2017.09.28.06.46.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 06:46:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gQnauLMl;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id u136so2116807pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 06:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=k7PMrGl3U5pkfupbbl2Oon1JNk8mO1LqET71Yj/A8tg=;
        b=gQnauLMlkECnGC0Yi2q8sd+MklHU3YIwi25Qu7VwYGOEmkH4ZWkUyTpMXeKKity2US
         V+33qhUdw7mkRG0L1x10a8AMRswRM83mKbTxWXEIMOPySJ+AJB2GMxrp3uulzLKISRvX
         Nj6hs1L5tDOMkqNNSE8mvp/cm2+h/c0Q83OLH2i9klSuMPAW/WqW5UO5SjeSBvWz1Zeu
         TwXiIANvo6wcsnQfEgjiozbNl7VJZSwZGno4YVwtZafoTclqhfL6k1qmuojpWLYsHWJo
         LFsGT79tPRk/nKT808DZ1ztjAEeWx9j2hnHB6klq+Jc8nDKc1fkz3ncZoYMb7tJY2Boj
         BFaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=k7PMrGl3U5pkfupbbl2Oon1JNk8mO1LqET71Yj/A8tg=;
        b=aNr/P3L3gjl0JoEB6byUdbqKdRzb1t8C3cVg0yU2HJJGQ8zMmWbxaaM7mp+tfFvCd+
         dKn4aGUvmGspeqWYOzYA8Npa7ke4p5y6/FU+7HBE+xi2lOnThZCEn9g1p3PG2Kvlcl9M
         4uMmCAG1MZ7UXiYmzljHrk306Q6Nh6B4xGznsX2IdhcGCebe3PmQsbqAnKshRptpVyPj
         D16MCMPDK1jZURcKW9k25h8EPcPZuXFl9+WqippRoDVEYJGkoYUy0Z4mhy3ue4nHYSPj
         DNzHoXZ11IdPc4aDaWT8op2egyU/emSpyels+yJS/oBOZ0iQX1WlG0Uz1JiY+l3Ai5N3
         T8hQ==
X-Gm-Message-State: AHPjjUiFW1DTpGVAXMmhfR1a6d3PLdRiTJi9ES1x5UfkiaTjOGA49rq9
	pX1twZVv7us64tVam2TDhwU=
X-Google-Smtp-Source: AOwi7QDelW3zugRmIKosmNhYdpy5pLH2VOx+pl/JnjBONmnUBj5bNMqZ34HHkz/7V12u4ejRL5JTJg==
X-Received: by 10.84.211.144 with SMTP id c16mr4188126pli.233.1506606414775;
        Thu, 28 Sep 2017 06:46:54 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id q7sm3398234pgn.56.2017.09.28.06.46.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 06:46:54 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: daniel.vetter@ffwll.ch,
	seanpaul@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] drm/i915: Replace *_reference/unreference() or *_ref/unref with _get/put()
Date: Thu, 28 Sep 2017 19:14:42 +0530
Message-Id: <1506606282-628-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace instances of drm_framebuffer_reference/unreference() with
*_get/put() suffixes and drm_dev_unref with *_put() suffix
because get/put is shorter and consistent with the
kernel use of *_get/put suffixes .

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
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



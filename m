X-GM-THRID: 6470825285154504704
X-Received: by 10.99.151.25 with SMTP id n25mr117754pge.104.1507471598488;
        Sun, 08 Oct 2017 07:06:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.54.65 with SMTP id d62ls661363pga.33.gmail; Sun, 08 Oct
 2017 07:06:37 -0700 (PDT)
X-Received: by 10.99.55.74 with SMTP id g10mr697069pgn.114.1507471597542;
        Sun, 08 Oct 2017 07:06:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507471597; cv=none;
        d=google.com; s=arc-20160816;
        b=xSoESY/TAoAR3tSCFHfopzsIq+0d1xBCV5/r6QdNSKbvl9LcrvGTWGQKcCnrSQFQAz
         8DnDMnKfocWf3iW2iZDotoqDAUTg+lodKzZg+4JUziJRHFCOLeNB1sqQruxHtNliiWv5
         9tDdyOBUEVNIRABKLyVZUDpBz5HLZJjMuGjzx2yM4rpxBl/yTT1LyV2uWptXemsvpQgv
         sJFzx+O7ruij9QHVNU8lKtHrVgF4xBWGQHmaM6rsju7YnN3q8v6SJT/eiuuNrU5lGZWn
         H4WasXylIK7KMCU41pbDZYAOKyS8wP4jUeK1pJRn/dpQ1b/uU50z9K8hS8QnMq5fQxTh
         fOHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=rg43mTR6XSrbfDuk4XdZW9EQXYKs8Lxs/dNWX9ukEYc=;
        b=j/+HG5cco5OWJn2tGdy9c/QCwqtU/JDZjdfCsg0iFC27ob+J6+Vk+M+w4Xfo/o8JUv
         fPSfWatAPZdzxSKf/yBrEbm1Wu1PA6x17LfKGVJ6AvmDIzHTSEEKk5Fuzk/Pk5jmg55V
         RXuy1uy/G+bLOtV0PbpH94yUtuKeqpMfXJ/BJOmygFd8Q4A7+nguLXPqR0OPTSAhFKjt
         hNCK+/SlTmggqUjOg8e0bj8q4Shldz5s4osOSz2g4R+Wr/BD/4pwrY51l04U0qIxn/8h
         nB4qJyHg32zYRQ45wqwfALsDag5U6qjGHPLcB8Ud8ib2tmRqqDy5FF7ljbFz6At6rQNl
         TnTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hLb7GsaZ;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u89si689279pfi.27.2017.10.08.07.06.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 07:06:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hLb7GsaZ;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id o1so22684453pga.4
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 07:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=rg43mTR6XSrbfDuk4XdZW9EQXYKs8Lxs/dNWX9ukEYc=;
        b=hLb7GsaZmsg9vBrBh7w1CrUxZJKeZEti5mvpoPW+QgcCSB4dOFvB/mckOJmm030ogi
         +qCFAEOXPN35BVA2uHuEyMjHutCoJz3JJNY62LAljP1pPE6WYbRbJW9pnWcWpj8RLWKQ
         dfA+GqxBRQfwbdrfUHAu6Cf/8s2R2+DEouGVa1Jw9OOa10BbWphsaaPQyghAFF1NUaRx
         D97Qt+G5ZMZL1UEkuy4+SQ+xlDctJ5GYbS9QPwoFA9wYgb7iJEtJMRgIkXquF4Wcavdv
         r1RcmoEIhETdODzgC3kEUhfB43UvQjhw3qXsQnS+NDSb5TOQ/+DHuYrVIkOKuVY0rBZH
         4ifw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rg43mTR6XSrbfDuk4XdZW9EQXYKs8Lxs/dNWX9ukEYc=;
        b=nk279eXVgez4z4+COnAvUKv2orz+q4N4PAUMkOvgbyguv1cBc1gJBrYStZLN7SE30r
         HOSYSOUUJsoQYtQ+6lGQwGgUBwcPR7i9PVX1ZfTZiGmJ8F610XntUYCPx6Vv+rwUWjLm
         DliboZeJcgt94jwCrzBZRP9UjqxQAOG+EodEasYZmj3aqmgTJAc/nPaaVtm6xZtTUinQ
         reTTXSOcbZjIsUbyTdRZjdbCcaDisuYxGmfT5wG7Y6sdYaatVRF7O5tUizTxha2gXdkm
         43ao6SBdriQrNQ0+FsV8AbPZofFOKCG+LyR/AaO4upDXGq4moboiH69BAbhD398ivLnK
         xpLA==
X-Gm-Message-State: AMCzsaVqwYF0UHxzF8ivdey/ieVHg5cgz8AE2y+okhe6mPpGca2L8wyw
	C9kJMUkZkVMjiLTkud4oDhA=
X-Google-Smtp-Source: AOwi7QDSsHRL8ADlg8VYTUAmtxKqwiYlOPDTaq7fygFTWFAVInV6Akzke5DTB+wglYwBvtRRWUr4LQ==
X-Received: by 10.99.156.26 with SMTP id f26mr6915580pge.433.1507471597279;
        Sun, 08 Oct 2017 07:06:37 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id l12sm10351474pgr.10.2017.10.08.07.06.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 07:06:36 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: daniel.vetter@ffwll.ch,
	seanpaul@chromium.org,
	jani.nikula@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v3] drm/i915: Replace *_reference/unreference() or *_ref/unref with _get/put()
Date: Sun,  8 Oct 2017 19:34:07 +0530
Message-Id: <20171008140407.13927-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

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
Changes in v3:
 -Removed changes in selftests
Changes in v2:
 -Added cocinelle patch in log message
 -cc to all driver-specific mailing lists

 drivers/gpu/drm/i915/i915_pci.c      |  2 +-
 drivers/gpu/drm/i915/intel_display.c | 10 +++++-----
 drivers/gpu/drm/i915/intel_fbdev.c   |  4 ++--
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 09d97e0990b7..2f106cca46b4 100644
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
index f17275519484..92f83045878f 100644
--- a/drivers/gpu/drm/i915/intel_display.c
+++ b/drivers/gpu/drm/i915/intel_display.c
@@ -2856,7 +2856,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 
 		if (intel_plane_ggtt_offset(state) == plane_config->base) {
 			fb = c->primary->fb;
-			drm_framebuffer_reference(fb);
+			drm_framebuffer_get(fb);
 			goto valid_fb;
 		}
 	}
@@ -2887,7 +2887,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 			  intel_crtc->pipe, PTR_ERR(intel_state->vma));
 
 		intel_state->vma = NULL;
-		drm_framebuffer_unreference(fb);
+		drm_framebuffer_put(fb);
 		return;
 	}
 
@@ -2908,7 +2908,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	if (i915_gem_object_is_tiled(obj))
 		dev_priv->preserve_bios_swizzle = true;
 
-	drm_framebuffer_reference(fb);
+	drm_framebuffer_get(fb);
 	primary->fb = primary->state->fb = fb;
 	primary->crtc = primary->state->crtc = &intel_crtc->base;
 
@@ -9847,7 +9847,7 @@ mode_fits_in_fbdev(struct drm_device *dev,
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
index 262e75c00dd2..1ff714935c38 100644
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
-- 
2.11.0



X-GM-THRID: 6470825285154504704
X-Received: by 10.101.67.130 with SMTP id m2mr724171pgp.178.1507550947938;
        Mon, 09 Oct 2017 05:09:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.248.133 with SMTP id q5ls941403pll.7.gmail; Mon, 09 Oct
 2017 05:09:06 -0700 (PDT)
X-Received: by 10.98.181.10 with SMTP id y10mr619273pfe.51.1507550946973;
        Mon, 09 Oct 2017 05:09:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507550946; cv=none;
        d=google.com; s=arc-20160816;
        b=i3AXht8p9Uh4ENhIzHjyg3GFIXHJEUPhD661alDXaRZYwckhAY9ztmB7H4Ab7cD08z
         CtEUxBa/oy/xiJCBSbPPgCTo53tt85CN6G3wMu6jNknOSa+vpbNp8Jp3GrB41hXqS4t/
         g88SAjzM4xaDXyDZ3Ks+PMVeepfWy02rAVeO2lFizlkvrVC0bOB09p1ancItQLwvd7Pe
         YGokCmZrdhNyIkbJdqj2akf7VspumS4pOTV2Ific5d4OD4UvpphXafDVwuGN6gS9k4ye
         XVCDw8R470f/VmfjZ5C4ijS525Jm1jJY6qCnP5wQAeCqyiZ8WngfYoPbm2Z1zmOEq6RC
         OhEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=KXSPjlrziZmFVrvsjSGtPQdnMBukwPLvP4jdApfyBCE=;
        b=VbvNUuVUVTQmQPyGIN+sAICB9Bb1cTApRl9fiI9Uzw1SXOISKljTa5eY4GVfCaISnP
         qTG5RLrS5iv/FCQBGs2ccM46X1zKjaA6gowS5a7F55FWA+adSb207wpmOnLhDNNG/h7s
         ZAe/uTB3dgw1L2YQCJnQtrJQtiqkgZXUo7lhgjoTR7qVtZ+IDj4l8xBA7rVpCuqNtoG2
         N2qaxWHRzbPJoqPxBxz3CP89J4NcgzULSEK4P0Eh2pOZO88xNP91JhEbIib5Nwe3s69x
         krQcWfqHsZCIeaSooLOqERsXhFd7Qs+KEtGTvzm5INYrXYEALGbjvEvxoWIDOJN5oKKg
         L/nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tytcv3XQ;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y6si893655pfd.28.2017.10.09.05.09.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 05:09:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tytcv3XQ;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id b85so6921242pfj.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 05:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KXSPjlrziZmFVrvsjSGtPQdnMBukwPLvP4jdApfyBCE=;
        b=Tytcv3XQCxXbJ0IwSvukp85SnVpsx2ZXHzifHSHoi5EcBQZMmokHAqENoeZ2HPBFGt
         ym0ZanjtB4D0cFui8LQqz/9Mk9C7jby3gDm4tziJQddueRdHg3KjP+l4mYTbOngUgU1b
         1rOU80tQkzZa52vCZtP1h6WzBbMJ54fpQU41Rh/T27Rw5dEZNhult1teA7zZVz1HO2Z/
         aiHYiQBegAym63x0Q7c/EMwB0NRJ6VUzbNqw2qzXxgV0OwE3UcGC7DHc69Zmc+8V1nkf
         FMx0ImFlRwrj/0whtn2rNp03bRpq3g2Ot/TJohq7MCfXjvIflUicP5r2pRVQjX/vb3hG
         7D2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KXSPjlrziZmFVrvsjSGtPQdnMBukwPLvP4jdApfyBCE=;
        b=F+326fs9ONYk6LAfb2zCh3YKBC8ovgexxpqXiTu95F1/T8DOW+5vLdQ8KZtCgZKffS
         6wQX2zIUkNJCz4avwBOsPUh7IFqV4c57KjII+5c3vwdXV6f0Ua0QYN93WQFM+n+FWHPk
         oPSwPRBFGs0t1v8WpChamcYqGyLhKKSMpJQR2A3vXg1QtS1Hgz5p5npBXFmznb/aB9kJ
         axx6m9GoQl0B3ndhQDjsfbGEZCUn8ppG/8FwKkc+goVCQw3MBk0o3m7hMHiWlPCD/fOk
         9OK8bKs04KXQ5cOwHSKsObXcnEJ8IFWcF5T/MsNalwVt1BIxK2eG4LvNxII0pa0E4fe9
         lDWw==
X-Gm-Message-State: AMCzsaUQ6T8v1p3sIp+/KfeurAH9vl0+C8X5pvKVyn2com23kcoCT3CJ
	V7SKHbSNUUHBtq6SYgFDGtVwV2TZ
X-Google-Smtp-Source: AOwi7QAUyGf0MZ5t8DvThlb9UTxHup7q5hNZMtx/YKi/0J6VrTnf21f7WndHwbLhxxG77pYOjyW0iA==
X-Received: by 10.99.149.15 with SMTP id p15mr9122215pgd.406.1507550946681;
        Mon, 09 Oct 2017 05:09:06 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id e7sm15429278pfi.188.2017.10.09.05.08.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 05:09:06 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: daniel.vetter@ffwll.ch,
	seanpaul@chromium.org,
	jani.nikula@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v4] drm/i915: Replace *_reference/unreference() or *_ref/unref with _get/put()
Date: Mon,  9 Oct 2017 17:36:43 +0530
Message-Id: <20171009120643.11953-1-harshasharmaiitr@gmail.com>
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
Changes in v4:
 -change one instance of *_put to *_get
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
index 64f7b51ed97c..cb62f7e5d59a 100644
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
index 262e75c00dd2..e34334a1fbf9 100644
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
+	drm_framebuffer_get(&ifbdev->fb->base);
 
 	/* Final pass to check if any active pipes don't have fbs */
 	for_each_crtc(dev, crtc) {
-- 
2.11.0



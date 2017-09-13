X-GM-THRID: 6465205340686254080
X-Received: by 10.84.224.65 with SMTP id a1mr11201196plt.18.1505298141946;
        Wed, 13 Sep 2017 03:22:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.254.129 with SMTP id w123ls2800457ith.18.canary-gmail; Wed,
 13 Sep 2017 03:22:21 -0700 (PDT)
X-Received: by 10.13.244.198 with SMTP id d189mr8064762ywf.60.1505298141444;
        Wed, 13 Sep 2017 03:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505298141; cv=none;
        d=google.com; s=arc-20160816;
        b=miIHIWidELnFgrOhXWRrOKtr2nBHsi+sxCJVJdyH2ZJnPjQ5cQdKIexfzdL9T0oC7J
         ZgLmJJ32zAGHadOL+Btlgxz1I9QuSXy6xZpZLq28KYuCFmDlcXGNrn2yEF8JAXNpslMS
         06zcK9Poqu/1Fz6gwEnOl0ILZmQvT/8qxhMRqRALkqYhD3yp/H7zGLqL7UJmKBIPin71
         pY/72ZbSe/jW5gMNkTPtunefpJF5wCt6pGli3fhzMXkmy1feN7mCU0j3Hx/De1dHUNJP
         2PIWiHKV+A7YjXki6ExDZoxGk5wHlklu48kAQnMamrkeN9mE4vp8jE3D6ylUBELYaUK0
         oJ8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=KqKyRRUBuCxJjVanWj0rz58/nx+vBqjU1z5Co2shRFg=;
        b=z192eyDA7oTauzbMksAU3j5UQjqMB63dKRnsZ//l6+WGT6XnWH3a30+XnI8ldMcrEV
         Zrx2Izgfh5Az6CpyRIqqWGNYZCKvG4m5WBWAPoT+43uFZBu/AWtK5qsgQVtE36r2JMvF
         El3OvBMmpX7zykF3TAV3QWHeLXvfGULM41mudJVrHJU3S3HQoZcKI5AHoBz6kkpBUCg3
         7Nnok/vfUFLCkgBDYkaEbPG0DbhQ9LfaIVJSFFDQ2Ub4Md6xvEX+CzN/w/7hNAoU9pw2
         SnzNFakbeUW3uKrRkr96+tww5NkERgnDkaH/kGDLOAi9xlx6bH01ehcKK4WWmAXT8oI0
         te7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b6sXZuYN;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 82si600455pfz.6.2017.09.13.03.22.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 03:22:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b6sXZuYN;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so5557705pfg.4
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 03:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KqKyRRUBuCxJjVanWj0rz58/nx+vBqjU1z5Co2shRFg=;
        b=b6sXZuYNmhheeJtUAyKTjmbNguzLqg58tDLEMKGbZCPUxTYiYYED00RcfQsOZDa+Ta
         m4JAmrTh5Fz1K4ai760iN6wPtByfSI1iDmNboU1ofgVyJZAb84lJAv1zzCP/ytgzroCX
         iNgCj6aB1evVYeMPHC13LujcRyzSK+gfb/9L6v+BFRQprZd1xsQCq20IDOYUcX5f+B3T
         7GdJV4vVvZYxNBendot6sLXX2EjX5Gsukk6zs9JxpDMuk0wNapW86/YJIOAsc5KTvxTu
         mfszMVKW7QmfqOOUGgjLGFOvGKo/u852RIwBCxKF8jexH8wjja0IgcMOOkEYj2Dzb28i
         ka8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KqKyRRUBuCxJjVanWj0rz58/nx+vBqjU1z5Co2shRFg=;
        b=E2I3x6RM/GAtkSRngGtULieb+a5BP6Cxg0tSZnaJg+BK22gpciYqb2h6Grv7uUGsyt
         Gjj348lbsNlP2QjPwu/dQtb1Lpgimj/pkUNeb4pM5mRrmbGASahUws8GjL3HhvVDxBwd
         5/PP/mUO76wJEPAeHnCHyaN+h8QzAnZtCV8G8GL7ueTz7Ctq+4xJnsZt2FY7g3ER3Btf
         bSiePLQnREg3uT1y1lC9s3X8Yd8KzBr1wdQhpHPlvBNSImNTYGipwP7yISUEpqfFCz5I
         aaoRGBSjE6qo0Vy+LC2+VqpFlmQIMv4r96axhIfXoMuA3PvCI/D3BTr4vegLlO7ZYEka
         0STw==
X-Gm-Message-State: AHPjjUiowjf9MkHy5aqFsy4+BHhr3gtfWTVJkLLv6BNE9JeSl2mkbxmu
	4b9bXRP5CvnXzw==
X-Google-Smtp-Source: ADKCNb74V5zn755i6Bo588B8fF9o+ttMOHhQZH9n4PYzOsk2kZ8FDEPZ7VAev4xV0Qj5t3shHfBlbQ==
X-Received: by 10.98.141.77 with SMTP id z74mr17613809pfd.179.1505298141132;
        Wed, 13 Sep 2017 03:22:21 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id i3sm21585579pgs.23.2017.09.13.03.22.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 03:22:20 -0700 (PDT)
Date: Wed, 13 Sep 2017 15:52:14 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] GPU: DRM: Replace "foo * bar" with "foo *bar"
Message-ID: <3fefbb68a40ca5483a6b0e4c528c020e2d42f6bf.1505296813.git.meghana.madhyastha@gmail.com>
References: <cover.1505296813.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505296813.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This replaces all instances of foo * bar with foo *bar
in drm_agpsupport.c. This is so that it adheres to
standard C syntax for pointers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/gpu/drm/drm_agpsupport.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
index 928248e..993e486 100644
--- a/drivers/gpu/drm/drm_agpsupport.c
+++ b/drivers/gpu/drm/drm_agpsupport.c
@@ -94,7 +94,7 @@ int drm_agp_info_ioctl(struct drm_device *dev, void *data,
  * Verifies the AGP device hasn't been acquired before and calls
  * \c agp_backend_acquire.
  */
-int drm_agp_acquire(struct drm_device * dev)
+int drm_agp_acquire(struct drm_device *dev)
 {
 	if (!dev->agp)
 		return -ENODEV;
@@ -133,7 +133,7 @@ int drm_agp_acquire_ioctl(struct drm_device *dev, void *data,
  *
  * Verifies the AGP device has been acquired and calls \c agp_backend_release.
  */
-int drm_agp_release(struct drm_device * dev)
+int drm_agp_release(struct drm_device *dev)
 {
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
@@ -159,7 +159,7 @@ int drm_agp_release_ioctl(struct drm_device *dev, void *data,
  * Verifies the AGP device has been acquired but not enabled, and calls
  * \c agp_enable.
  */
-int drm_agp_enable(struct drm_device * dev, struct drm_agp_mode mode)
+int drm_agp_enable(struct drm_device *dev, struct drm_agp_mode mode)
 {
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
@@ -241,8 +241,8 @@ int drm_agp_alloc_ioctl(struct drm_device *dev, void *data,
  *
  * Walks through drm_agp_head::memory until finding a matching handle.
  */
-static struct drm_agp_mem *drm_agp_lookup_entry(struct drm_device * dev,
-					   unsigned long handle)
+static struct drm_agp_mem *drm_agp_lookup_entry(struct drm_device *dev,
+						unsigned long handle)
 {
 	struct drm_agp_mem *entry;
 
-- 
2.7.4



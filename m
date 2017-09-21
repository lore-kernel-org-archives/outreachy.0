X-GM-THRID: 6468320417923727360
X-Received: by 10.55.47.196 with SMTP id v187mr4878923qkh.35.1506023234623;
        Thu, 21 Sep 2017 12:47:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.207.196 with SMTP id f187ls2045014vkg.10.gmail; Thu, 21 Sep
 2017 12:47:13 -0700 (PDT)
X-Received: by 10.159.37.240 with SMTP id 103mr5889354uaf.90.1506023233465;
        Thu, 21 Sep 2017 12:47:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506023233; cv=none;
        d=google.com; s=arc-20160816;
        b=mfPYxR2zGcJUsaFm3ewGsJP5dOfwLMoYbrEAJ6SkHgT+ZPcWUep19qaH/lzqEoZ2xb
         jU2DAvfpZcs30/FxVQHyDgFDadQGBNI6fid+24N7cyHiolgyQ98rsGX5p+7FnMqPwv/a
         VvnLbJWYdqu68Ommk5A4QI0TZb76AzuO59jTJR85MgZaQu3EvFoR9ssLGwhERI7343lk
         WKYOf6k6qJJfFZwuFx8EmCBLaMOtpGsEz7AMluSmR43Il1zK/x6QtvSIEaYxcKlJuYvk
         EqzhzNTNNXTY/GBBhR/g7QA3rfpnjkWLMT1TMq9LT+omHQXAX5wH1i/lpQCciZowLudB
         4Hew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=2x9VRsGvCalP5MfLqk1n7VgdlFQjJG+yTiqbs14QnMc=;
        b=O2Og8hDzaSluGOCO0p+2LW8ZQc+tjQ7sMYt8fdDOKlb50dl+wTsuXND0RgpLfRUhJM
         h8IDROZwCg2cVqvYZ8UTUjlCUtWlU2yPQ/X2rdPo6TcLklXbo4jbXtpc4qCxlKktDolD
         swtFD2GocOX4L7A9kWgwEtrZ/sPHLOPpMNCz+u7Wdida2y34uhJLA5JiDLaDvygv0PCE
         NhlJeXGkbve7fzdod9sLhvRt3SHw13H+VmWeVMEZWEPNkY1O+vgvhtzJJ8hdvFF8ipjM
         bcO5/sgAoFo6p+kma/qhGDnraxPyKwu4JxfARy/lXaOAIwF+C0/BFHF/VH3noPZu5G9w
         RL/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UyaQKs/w;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z74si94604pfj.21.2017.09.21.12.47.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 12:47:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UyaQKs/w;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id a7so2853093pfj.5
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Sep 2017 12:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2x9VRsGvCalP5MfLqk1n7VgdlFQjJG+yTiqbs14QnMc=;
        b=UyaQKs/w5O8e4/naj/qpYeC/yUjkde+248oEbcJKVQ27HsRWn34v2SFJxN0v0dzqkR
         kHqoAgm4kzOTY0Zh64FbCf/UjSKShjMEhDN8DxmyLOzMb6G18qjjrITWZi129G7kFpKK
         /NAlgCTlq6fN8d9u7nRW16bV4S5lRXj7RoaSoNsJKe9AV8dnl5GPA/PYXhIz9yO5iPam
         y+S+pR6SoBasiYSxahZ2n5LKvZY7u1w85JyLJpymhLGj/73T80JfP9Y1q7ql0z4zgIPf
         lHh5sT6DUAKnwvUXjNCDiNraLnYD77/726Jyo99o57JBalG1qihp3p+OfDfB90BkLXYc
         WPsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2x9VRsGvCalP5MfLqk1n7VgdlFQjJG+yTiqbs14QnMc=;
        b=LXpRVylJrPhSqAfrYS4W8M0nnR3JSPx1AH0VbcAiMw/r/WkpIC+NXELju4s+p9JJcS
         xFtVF9y01xwrjX9MXF+KncgZbNbO9DDLZ2E53VvFlrHCociF04E9KiMU6Xkd1AOoeoMw
         MzwDkwuHZ7J3/RpHFXEXQ/RDZrEL3AyM6eS6pgJ63jEiMXWlgyFjXNFxsl5qapdD5Z8p
         NpoQzzXs2rlJulzMgRRtFBA8MY86sfRqEY/10EdaGz5Chb5bHvDwe2Ufd/LDGtHZzoMV
         dV4VJiCyRNsvU25YBr6UP2YuxQFnLN89s4L7w6YqFBDnO2o9d8vaD0r+bvGgGM+FEurU
         S3LA==
X-Gm-Message-State: AHPjjUglqxf1l9Zes7LMCJ6IYKBUiTJ8vjkrSAuSisGccsHpvlO5NChB
	2qnShrsPaL/BnmD/p+wdmuQ=
X-Google-Smtp-Source: AOwi7QBBdkW/Xinwo/Z6qF27PvV7IwX0xZizktnUS0+DkQ4gU4ew7s3ArhhZ+jg+qRbHFhBwSxCoYg==
X-Received: by 10.84.211.36 with SMTP id b33mr6748512pli.47.1506023233075;
        Thu, 21 Sep 2017 12:47:13 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([122.166.181.88])
        by smtp.gmail.com with ESMTPSA id d5sm4494344pfg.26.2017.09.21.12.47.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 12:47:12 -0700 (PDT)
Date: Fri, 22 Sep 2017 01:17:06 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] drm: introduce drm_dev_{get/put} functions
Message-ID: <33c3c79daa7a8f9c52ee87f4d78f3a551ab96b54.1506023126.git.aishpant@gmail.com>
References: <cover.1506023126.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506023126.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Reference counting functions in the kernel typically use get/put suffixes. For
maintaining coding style consistency, introduce drm_dev_{get/put} functions
and let the old APIs (with ref/unref suffixes) remain for compatibility.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/gpu/drm/drm_drv.c | 64 +++++++++++++++++++++++++++++++++--------------
 include/drm/drm_drv.h     |  4 ++-
 2 files changed, 48 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index be38ac7..4592314 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -286,13 +286,13 @@ struct drm_minor *drm_minor_acquire(unsigned int minor_id)
 	spin_lock_irqsave(&drm_minor_lock, flags);
 	minor = idr_find(&drm_minors_idr, minor_id);
 	if (minor)
-		drm_dev_ref(minor->dev);
+		drm_dev_get(minor->dev);
 	spin_unlock_irqrestore(&drm_minor_lock, flags);
 
 	if (!minor) {
 		return ERR_PTR(-ENODEV);
 	} else if (drm_dev_is_unplugged(minor->dev)) {
-		drm_dev_unref(minor->dev);
+		drm_dev_put(minor->dev);
 		return ERR_PTR(-ENODEV);
 	}
 
@@ -301,7 +301,7 @@ struct drm_minor *drm_minor_acquire(unsigned int minor_id)
 
 void drm_minor_release(struct drm_minor *minor)
 {
-	drm_dev_unref(minor->dev);
+	drm_dev_put(minor->dev);
 }
 
 /**
@@ -326,11 +326,11 @@ void drm_minor_release(struct drm_minor *minor)
  * When cleaning up a device instance everything needs to be done in reverse:
  * First unpublish the device instance with drm_dev_unregister(). Then clean up
  * any other resources allocated at device initialization and drop the driver's
- * reference to &drm_device using drm_dev_unref().
+ * reference to &drm_device using drm_dev_put().
  *
  * Note that the lifetime rules for &drm_device instance has still a lot of
  * historical baggage. Hence use the reference counting provided by
- * drm_dev_ref() and drm_dev_unref() only carefully.
+ * drm_dev_get() and drm_dev_put() only carefully.
  *
  * It is recommended that drivers embed &struct drm_device into their own device
  * structure, which is supported through drm_dev_init().
@@ -345,7 +345,7 @@ void drm_minor_release(struct drm_minor *minor)
  * Cleans up all DRM device, calling drm_lastclose().
  *
  * Note: Use of this function is deprecated. It will eventually go away
- * completely.  Please use drm_dev_unregister() and drm_dev_unref() explicitly
+ * completely.  Please use drm_dev_unregister() and drm_dev_put() explicitly
  * instead to make sure that the device isn't userspace accessible any more
  * while teardown is in progress, ensuring that userspace can't access an
  * inconsistent state.
@@ -360,7 +360,7 @@ void drm_put_dev(struct drm_device *dev)
 	}
 
 	drm_dev_unregister(dev);
-	drm_dev_unref(dev);
+	drm_dev_put(dev);
 }
 EXPORT_SYMBOL(drm_put_dev);
 
@@ -386,7 +386,7 @@ void drm_dev_unplug(struct drm_device *dev)
 	mutex_lock(&drm_global_mutex);
 	drm_device_set_unplugged(dev);
 	if (dev->open_count == 0)
-		drm_dev_unref(dev);
+		drm_dev_put(dev);
 	mutex_unlock(&drm_global_mutex);
 }
 EXPORT_SYMBOL(drm_dev_unplug);
@@ -475,8 +475,8 @@ static void drm_fs_inode_free(struct inode *inode)
  * initialization sequence to make sure userspace can't access an inconsistent
  * state.
  *
- * The initial ref-count of the object is 1. Use drm_dev_ref() and
- * drm_dev_unref() to take and drop further ref-counts.
+ * The initial ref-count of the object is 1. Use drm_dev_get() and
+ * drm_dev_put() to take and drop further ref-counts.
  *
  * Note that for purely virtual devices @parent can be NULL.
  *
@@ -626,8 +626,8 @@ EXPORT_SYMBOL(drm_dev_fini);
  * initialization sequence to make sure userspace can't access an inconsistent
  * state.
  *
- * The initial ref-count of the object is 1. Use drm_dev_ref() and
- * drm_dev_unref() to take and drop further ref-counts.
+ * The initial ref-count of the object is 1. Use drm_dev_get() and
+ * drm_dev_put() to take and drop further ref-counts.
  *
  * Note that for purely virtual devices @parent can be NULL.
  *
@@ -670,36 +670,62 @@ static void drm_dev_release(struct kref *ref)
 }
 
 /**
- * drm_dev_ref - Take reference of a DRM device
+ * drm_dev_get - Take reference of a DRM device
  * @dev: device to take reference of or NULL
  *
  * This increases the ref-count of @dev by one. You *must* already own a
- * reference when calling this. Use drm_dev_unref() to drop this reference
+ * reference when calling this. Use drm_dev_put() to drop this reference
  * again.
  *
  * This function never fails. However, this function does not provide *any*
  * guarantee whether the device is alive or running. It only provides a
  * reference to the object and the memory associated with it.
  */
-void drm_dev_ref(struct drm_device *dev)
+void drm_dev_get(struct drm_device *dev)
 {
 	if (dev)
 		kref_get(&dev->ref);
 }
-EXPORT_SYMBOL(drm_dev_ref);
+EXPORT_SYMBOL(drm_dev_get);
 
 /**
- * drm_dev_unref - Drop reference of a DRM device
+ * drm_dev_put - Drop reference of a DRM device
  * @dev: device to drop reference of or NULL
  *
  * This decreases the ref-count of @dev by one. The device is destroyed if the
  * ref-count drops to zero.
  */
-void drm_dev_unref(struct drm_device *dev)
+void drm_dev_put(struct drm_device *dev)
 {
 	if (dev)
 		kref_put(&dev->ref, drm_dev_release);
 }
+EXPORT_SYMBOL(drm_dev_put);
+
+/**
+ * drm_dev_ref - Take reference of a DRM device
+ * @dev: device to take reference of or NULL
+ *
+ * This is a compatibility alias for drm_dev_get() and should not be used by new
+ * code.
+ */
+void drm_dev_ref(struct drm_device *dev)
+{
+	drm_dev_get(dev);
+}
+EXPORT_SYMBOL(drm_dev_ref);
+
+/**
+ * drm_dev_unref - Drop reference of a DRM device
+ * @dev: device to drop reference of or NULL
+ *
+ * This is a compatibility alias for drm_dev_put() and should not be used by new
+ * code.
+ */
+void drm_dev_unref(struct drm_device *dev)
+{
+	drm_dev_put(dev);
+}
 EXPORT_SYMBOL(drm_dev_unref);
 
 static int create_compat_control_link(struct drm_device *dev)
@@ -839,7 +865,7 @@ EXPORT_SYMBOL(drm_dev_register);
  *
  * Unregister the DRM device from the system. This does the reverse of
  * drm_dev_register() but does not deallocate the device. The caller must call
- * drm_dev_unref() to drop their final reference.
+ * drm_dev_put() to drop their final reference.
  *
  * A special form of unregistering for hotpluggable devices is drm_dev_unplug(),
  * which can be called while there are still open users of @dev.
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index 71bbaae..e574fa0 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -155,7 +155,7 @@ struct drm_driver {
 	 * reverse order of the initialization.  Similarly to the load
 	 * hook, this handler is deprecated and its usage should be
 	 * dropped in favor of an open-coded teardown function at the
-	 * driver layer.  See drm_dev_unregister() and drm_dev_unref()
+	 * driver layer.  See drm_dev_unregister() and drm_dev_put()
 	 * for the proper way to remove a &struct drm_device.
 	 *
 	 * The unload() hook is called right after unregistering
@@ -611,6 +611,8 @@ struct drm_device *drm_dev_alloc(struct drm_driver *driver,
 int drm_dev_register(struct drm_device *dev, unsigned long flags);
 void drm_dev_unregister(struct drm_device *dev);
 
+void drm_dev_get(struct drm_device *dev);
+void drm_dev_put(struct drm_device *dev);
 void drm_dev_ref(struct drm_device *dev);
 void drm_dev_unref(struct drm_device *dev);
 void drm_put_dev(struct drm_device *dev);
-- 
2.7.4



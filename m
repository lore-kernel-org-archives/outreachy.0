X-GM-THRID: 6468320417923727360
X-Received: by 10.99.140.79 with SMTP id q15mr6544721pgn.117.1506414546730;
        Tue, 26 Sep 2017 01:29:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.72 with SMTP id v66ls652788otb.20.gmail; Tue, 26 Sep
 2017 01:29:05 -0700 (PDT)
X-Received: by 10.157.10.65 with SMTP id 59mr855472otg.144.1506414545933;
        Tue, 26 Sep 2017 01:29:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506414545; cv=none;
        d=google.com; s=arc-20160816;
        b=R/UefeqVPUYwin/XIH4M/p8lFf4hGtLRaZN9aNqPUawYhiLSq0hsfay7fCch06XGjm
         7MSzhUYJZ2q1lqkNIxoCJD1SS1vpBLC0Njs3U5DT0GJE8U+vDG5meNtU2UBqJGupwzC7
         txbuPnSMIlzIg3uWe8VHtSbSIPYKBW2Gg5r+DPc4ATFhOWYGnKC3qFz+PSiqZS4RwWiF
         5W1v4GRoQAmtgaffSn5hr+3lHZTeI/r9p6r6vdKnM5gDvv2rcisvXw3i9SCyqcxuFatF
         bS95GlmdklWBBeXptW3K9/Pzd/N7CaM3439VE0OJcpqCIzWtVc3dvIREZo2NotuRwQyv
         HhuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=KiRxMaxBvcxxbK+Er1P4hYF7ynhRS98VAwf+3cDtw7E=;
        b=QHuPFlf+hf1KkWIp5TVdQtK+K9+bFhTu1oZwceW3PFVCfE1XYoFr+/xw1iRpG3NvX+
         LmNgRLAz4SOEbxwbPBhiwqq1uyOzczNB2yPC5/UFkTMuYDhlJ3eXm8svG5vTQnMCLqt5
         vZEhnxS2PSoIh9ZoQuFQ3jQ9fVdy/t6zmr4NsJu0EsZjn0QGbieTaVcBPq1tDihxkUHl
         IErQhkO61B9PBTL6ehAfLjqbzUsTnyQ95dp8pkhlfJKAWulgqn4Mq7wUbYz6+Yk+wwhn
         kXipqLlA2/J0qic/CTaA5CcKX87I6t2MloCnrdYCdO4b+XN/pdUCIutUUn6IbBDg406z
         5jdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OsgMJ2x6;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id i66si376511ywe.28.2017.09.26.01.29.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:29:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OsgMJ2x6;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id 93so4261926iol.4
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 01:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KiRxMaxBvcxxbK+Er1P4hYF7ynhRS98VAwf+3cDtw7E=;
        b=OsgMJ2x6HWNZ/TQ51sIhQK5JjUV78On+6H/c2t2DnsDbiYTg10BFa/WMUTFtNZ2jlC
         yN6thl7q1KIi7SYdX1QWyKzYk0FuE3CjV+s/O5E9iFT8Z8IkEmuRDF+n/j5jpy5bKOAC
         tHuKP2aajVSLfLhBy0r4TC8fbmT0OgtoScYxyYTPPCTOf7CJsHFsBS2N9v+m1LFUKZya
         6I7VhviOTTYio1gn7ubXNoH0Cm87xAVZfyTflWgn2SvHvONJuAPV5rGmK33OqlUlqa3q
         VAtjoJXYJdCn4EFaFqAT+GJaj2Q/cGxw0HoV1yuPZ9jk2r/cQMuUogXK1d6DqDFWyTGX
         XCyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KiRxMaxBvcxxbK+Er1P4hYF7ynhRS98VAwf+3cDtw7E=;
        b=m/YZT+Ejl6pAGVgp8PEhzwH29a2t9SQhsXU91wmJkYl1WSSTWXw/zukw6YSQhbH+HG
         PTxEtzbPz+OLBhbKLzBSxPo8hx89RRxzv0fEhmh4PMTDf8kl/fDV80fO1MygHBHYIPPJ
         9Nsbp8/1nSr2iStUZ/qJ57pLJGZbhzkyQobA+ALkBSPS4PQpKkQnmNADpoi6F2iANdQM
         +ctI/w9UFqVuALsaADjuh22vl78aX1OBfUG+z4qyrO0M7liwhhvsinKgBbmtzriwNE0R
         AywvnMh+vZbRhau3cjR6Yh7GU2JrsgBvIzDwvQvs7AINGCKTe8K00+If2dAozOHuvUz1
         w2Qg==
X-Gm-Message-State: AHPjjUhf3gCYMriYLtjH6Y7gzfkll7e3gYp+o6xJ3YqHRaav0X8oek6+
	Fvq3gng/+Lm4K6xr1kyx007pZcr/
X-Google-Smtp-Source: AOwi7QDiLEDKYaVlJThZ8SZK5FFn5mBev5lFtts1wh3wbrC5HDGVlLzAjB+DgTX4BZR5y0PdpLkxCg==
X-Received: by 10.107.131.234 with SMTP id n103mr12767996ioi.236.1506414545266;
        Tue, 26 Sep 2017 01:29:05 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([27.59.63.252])
        by smtp.gmail.com with ESMTPSA id v5sm3900954iog.43.2017.09.26.01.28.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:29:04 -0700 (PDT)
Date: Tue, 26 Sep 2017 13:58:49 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Jyri Sarha <jsarha@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
	David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] drm: introduce drm_dev_{get/put} functions
Message-ID: <6babda56134035a98220d5d37a4fd4048df214ce.1506413698.git.aishpant@gmail.com>
References: <cover.1506413698.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506413698.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Reference counting functions in the kernel typically use get/put suffixes. For
maintaining coding style consistency, introduce drm_dev_{get/put} functions. All
callers of drm_dev_ref() API have been converted in this patch and hence it has
been dropped while the drm_dev_unref() API with non-trivial number of users
remains for compatibility.

The semantic patch scripts/coccinelle/api/drm-get-put.cocci has been updated
with the new helper for conversion of drm_dev_unref() to drm_dev_put()

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
Changes in v2
- Drop drm_dev_ref after replacing all its usages
- Update the drm subsystem wide cocci script drm-get-put with the new helper for
  drm_dev_unref to drm_dev_get conversion

 drivers/gpu/drm/drm_drv.c                | 51 ++++++++++++++++++++------------
 drivers/gpu/drm/drm_prime.c              |  2 +-
 include/drm/drm_drv.h                    |  5 ++--
 scripts/coccinelle/api/drm-get-put.cocci |  5 ++++
 4 files changed, 41 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index be38ac7..c0292e5 100644
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
@@ -670,36 +670,49 @@ static void drm_dev_release(struct kref *ref)
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
@@ -839,7 +852,7 @@ EXPORT_SYMBOL(drm_dev_register);
  *
  * Unregister the DRM device from the system. This does the reverse of
  * drm_dev_register() but does not deallocate the device. The caller must call
- * drm_dev_unref() to drop their final reference.
+ * drm_dev_put() to drop their final reference.
  *
  * A special form of unregistering for hotpluggable devices is drm_dev_unplug(),
  * which can be called while there are still open users of @dev.
diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 22408ba..782b95e 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -318,7 +318,7 @@ struct dma_buf *drm_gem_dmabuf_export(struct drm_device *dev,
 	if (IS_ERR(dma_buf))
 		return dma_buf;
 
-	drm_dev_ref(dev);
+	drm_dev_get(dev);
 	drm_gem_object_get(exp_info->priv);
 
 	return dma_buf;
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index 71bbaae..ee06ecd 100644
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
@@ -611,7 +611,8 @@ struct drm_device *drm_dev_alloc(struct drm_driver *driver,
 int drm_dev_register(struct drm_device *dev, unsigned long flags);
 void drm_dev_unregister(struct drm_device *dev);
 
-void drm_dev_ref(struct drm_device *dev);
+void drm_dev_get(struct drm_device *dev);
+void drm_dev_put(struct drm_device *dev);
 void drm_dev_unref(struct drm_device *dev);
 void drm_put_dev(struct drm_device *dev);
 void drm_dev_unplug(struct drm_device *dev);
diff --git a/scripts/coccinelle/api/drm-get-put.cocci b/scripts/coccinelle/api/drm-get-put.cocci
index 0c7a926..dc10dee 100644
--- a/scripts/coccinelle/api/drm-get-put.cocci
+++ b/scripts/coccinelle/api/drm-get-put.cocci
@@ -50,6 +50,9 @@ expression object;
 |
 - drm_property_unreference_blob(object)
 + drm_property_blob_put(object)
+|
+- drm_dev_unref(object)
++ drm_dev_put(object)
 )
 
 @r depends on report@
@@ -81,6 +84,8 @@ drm_gem_object_unreference_unlocked(object)
 drm_property_unreference_blob@p(object)
 |
 drm_property_reference_blob@p(object)
+|
+drm_dev_unref@p(object)
 )
 
 @script:python depends on report@
-- 
2.7.4



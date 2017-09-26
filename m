X-GM-THRID: 6468320417923727360
X-Received: by 10.25.163.210 with SMTP id m201mr715876lfe.42.1506403372593;
        Mon, 25 Sep 2017 22:22:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.161.208 with SMTP id v16ls3100351wrv.8.gmail; Mon, 25 Sep
 2017 22:22:51 -0700 (PDT)
X-Received: by 10.28.165.70 with SMTP id o67mr220907wme.10.1506403371674;
        Mon, 25 Sep 2017 22:22:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506403371; cv=none;
        d=google.com; s=arc-20160816;
        b=Gzm1BvMn4F1LYVpksOuEhPjpEvD6a6t2pBFcsvDP0Eqp6uRQbZVW2tLu7kR3AOra1k
         h3mbB9eMzQhlsxX/c7Y23ojuJeKFLyzA1KwvqajF+1qdkKttA1dw+jufCxZ1BrGnvL+m
         iiIjWi5JhRfZlaloOPYC3I5igvpB/o1ataCDESTxAO8dWyaUu/fniVdsTqAB5BfIB5aJ
         C1MfNi+PDn5ZYXWqTlDAMSJQKFSRaRd6UUXVKROlTEDLCr9y2kTLohBrCQwSZS8q5eQS
         aI/7cHTsBe5W9Vh/tSFGSBcPSPj7Y2wCRaEnn0Bv1JtUli/nZmFyWDM+T5BApxyaGMbB
         tJ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=n0kC7fAeizOJh8kV0ZwVS0BNhzA1FrBz7nSGDpIhisM=;
        b=gYtiEJ5Zpl+hJValisd4W48uGVtWcgYY9Ot2Vc875WNFCOTy5a2Ri1Fynt8wisBt+x
         OVKjjAaBPNuOPGiAbM24d2trMl7xZRVf8coi158V/D9OyERfVfHIb5N53E3uk90Ud8F7
         gCb9+QbeLgAc3oKCn1mPHX/NOivcC7th8gSuj5YTKg8nGN47oTue7AAK8hQfae8notiA
         np/uO5LpOh96ZRTUms4U75U5hKJleal5uLmRyjbVd0qfyvwt5p7GpN3rpmBz2u66TZV4
         d+9lGvV4IxwAGusMqI3HI1dshFJXomuQF2LG6btsMk1sGV23QwQLjBGKvUv9Mw313oqv
         rlKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=FQC6fBXs;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id j4si104775wmi.2.2017.09.25.22.22.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 22:22:51 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=FQC6fBXs;
       spf=neutral (google.com: 2a00:1450:400c:c09::242 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x242.google.com with SMTP id x17so8388551wmd.5
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 22:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=n0kC7fAeizOJh8kV0ZwVS0BNhzA1FrBz7nSGDpIhisM=;
        b=FQC6fBXshyZ2NVBgqNHkFEZmY0Bt2nr+64OC+Tt0uqCAC/aCFewRUf8d1idpWo1P0J
         5/fetii/iNTOuoDjd2v5vDssdQ1nbYxdv4WiLvUkYIyG1qNGEtMoq6PdRJObVYGgrhWG
         uBmPxbCCVZtATu9NucW92GX+Xg9JjVj2SYLFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=n0kC7fAeizOJh8kV0ZwVS0BNhzA1FrBz7nSGDpIhisM=;
        b=cyXmgaM4WfZ6ScmwdwHljHJspbFNEAzKRCyTnYQaoQlZgg1QNdhp5jYn7NR/tU9jqF
         C3jO+S4VoKsMzDHt8t66HrwkFD7oHPZl0wGQ0wBiIrPPTHPeFCPiemD1pNcE1DMQtp8Z
         vut6rSBP6iUSFex5/SNJoXt72pqjJXEV/KAjZgmhXYjD0HzxexdH950UWgdaHIplxH7m
         p9aJ4BbaEG+3yS0LZHYKZAWjh8tjG4nDANY6B6Y0aEF0ITMmlBWDKINdO5EyIlI+TdbK
         FC+z5aSIpe7kH5Eafpu+Tnd+LRXatqunlNoLUYbVIC60r8KNvdRK+kkbBfAXNjKJ1Rjv
         k70g==
X-Gm-Message-State: AHPjjUjK9kQGoxaFxWjzf26l1L2qAC5IhFE63m6+q+z0Te9QTCv98Kmz
	7z7HAoqlrGRykL44fzub/WQnTXPe
X-Google-Smtp-Source: AOwi7QCEnE7nB6kDtHXQRT03/u15CPPFG+Qkl0dKeOMk8mmdhchqgDnv2Xmh4JAlzLGvKxXAHKN1Vg==
X-Received: by 10.80.134.72 with SMTP id 8mr16475119edt.203.1506403371018;
        Mon, 25 Sep 2017 22:22:51 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id k10sm4509893edi.27.2017.09.25.22.22.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Sep 2017 22:22:49 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 26 Sep 2017 07:22:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] drm: introduce drm_dev_{get/put}
 functions
Message-ID: <20170926052247.6wng46xmwi4s72xl@phenom.ffwll.local>
References: <cover.1506023126.git.aishpant@gmail.com>
 <33c3c79daa7a8f9c52ee87f4d78f3a551ab96b54.1506023126.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <33c3c79daa7a8f9c52ee87f4d78f3a551ab96b54.1506023126.git.aishpant@gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Fri, Sep 22, 2017 at 01:17:06AM +0530, Aishwarya Pant wrote:
> Reference counting functions in the kernel typically use get/put suffixes. For
> maintaining coding style consistency, introduce drm_dev_{get/put} functions
> and let the old APIs (with ref/unref suffixes) remain for compatibility.
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

Excellent idea to fill this gap, we totally overlooked this in the initial
work!

> ---
>  drivers/gpu/drm/drm_drv.c | 64 +++++++++++++++++++++++++++++++++--------------
>  include/drm/drm_drv.h     |  4 ++-

Please also update scripts/coccinelle/api/drm-get-put.cocci with this new
transformation.

>  2 files changed, 48 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> index be38ac7..4592314 100644
> --- a/drivers/gpu/drm/drm_drv.c
> +++ b/drivers/gpu/drm/drm_drv.c
> @@ -286,13 +286,13 @@ struct drm_minor *drm_minor_acquire(unsigned int minor_id)
>  	spin_lock_irqsave(&drm_minor_lock, flags);
>  	minor = idr_find(&drm_minors_idr, minor_id);
>  	if (minor)
> -		drm_dev_ref(minor->dev);
> +		drm_dev_get(minor->dev);
>  	spin_unlock_irqrestore(&drm_minor_lock, flags);
>  
>  	if (!minor) {
>  		return ERR_PTR(-ENODEV);
>  	} else if (drm_dev_is_unplugged(minor->dev)) {
> -		drm_dev_unref(minor->dev);
> +		drm_dev_put(minor->dev);
>  		return ERR_PTR(-ENODEV);
>  	}
>  
> @@ -301,7 +301,7 @@ struct drm_minor *drm_minor_acquire(unsigned int minor_id)
>  
>  void drm_minor_release(struct drm_minor *minor)
>  {
> -	drm_dev_unref(minor->dev);
> +	drm_dev_put(minor->dev);
>  }
>  
>  /**
> @@ -326,11 +326,11 @@ void drm_minor_release(struct drm_minor *minor)
>   * When cleaning up a device instance everything needs to be done in reverse:
>   * First unpublish the device instance with drm_dev_unregister(). Then clean up
>   * any other resources allocated at device initialization and drop the driver's
> - * reference to &drm_device using drm_dev_unref().
> + * reference to &drm_device using drm_dev_put().
>   *
>   * Note that the lifetime rules for &drm_device instance has still a lot of
>   * historical baggage. Hence use the reference counting provided by
> - * drm_dev_ref() and drm_dev_unref() only carefully.
> + * drm_dev_get() and drm_dev_put() only carefully.
>   *
>   * It is recommended that drivers embed &struct drm_device into their own device
>   * structure, which is supported through drm_dev_init().
> @@ -345,7 +345,7 @@ void drm_minor_release(struct drm_minor *minor)
>   * Cleans up all DRM device, calling drm_lastclose().
>   *
>   * Note: Use of this function is deprecated. It will eventually go away
> - * completely.  Please use drm_dev_unregister() and drm_dev_unref() explicitly
> + * completely.  Please use drm_dev_unregister() and drm_dev_put() explicitly
>   * instead to make sure that the device isn't userspace accessible any more
>   * while teardown is in progress, ensuring that userspace can't access an
>   * inconsistent state.
> @@ -360,7 +360,7 @@ void drm_put_dev(struct drm_device *dev)
>  	}
>  
>  	drm_dev_unregister(dev);
> -	drm_dev_unref(dev);
> +	drm_dev_put(dev);
>  }
>  EXPORT_SYMBOL(drm_put_dev);
>  
> @@ -386,7 +386,7 @@ void drm_dev_unplug(struct drm_device *dev)
>  	mutex_lock(&drm_global_mutex);
>  	drm_device_set_unplugged(dev);
>  	if (dev->open_count == 0)
> -		drm_dev_unref(dev);
> +		drm_dev_put(dev);
>  	mutex_unlock(&drm_global_mutex);
>  }
>  EXPORT_SYMBOL(drm_dev_unplug);
> @@ -475,8 +475,8 @@ static void drm_fs_inode_free(struct inode *inode)
>   * initialization sequence to make sure userspace can't access an inconsistent
>   * state.
>   *
> - * The initial ref-count of the object is 1. Use drm_dev_ref() and
> - * drm_dev_unref() to take and drop further ref-counts.
> + * The initial ref-count of the object is 1. Use drm_dev_get() and
> + * drm_dev_put() to take and drop further ref-counts.
>   *
>   * Note that for purely virtual devices @parent can be NULL.
>   *
> @@ -626,8 +626,8 @@ EXPORT_SYMBOL(drm_dev_fini);
>   * initialization sequence to make sure userspace can't access an inconsistent
>   * state.
>   *
> - * The initial ref-count of the object is 1. Use drm_dev_ref() and
> - * drm_dev_unref() to take and drop further ref-counts.
> + * The initial ref-count of the object is 1. Use drm_dev_get() and
> + * drm_dev_put() to take and drop further ref-counts.
>   *
>   * Note that for purely virtual devices @parent can be NULL.
>   *
> @@ -670,36 +670,62 @@ static void drm_dev_release(struct kref *ref)
>  }
>  
>  /**
> - * drm_dev_ref - Take reference of a DRM device
> + * drm_dev_get - Take reference of a DRM device
>   * @dev: device to take reference of or NULL
>   *
>   * This increases the ref-count of @dev by one. You *must* already own a
> - * reference when calling this. Use drm_dev_unref() to drop this reference
> + * reference when calling this. Use drm_dev_put() to drop this reference
>   * again.
>   *
>   * This function never fails. However, this function does not provide *any*
>   * guarantee whether the device is alive or running. It only provides a
>   * reference to the object and the memory associated with it.
>   */
> -void drm_dev_ref(struct drm_device *dev)
> +void drm_dev_get(struct drm_device *dev)
>  {
>  	if (dev)
>  		kref_get(&dev->ref);
>  }
> -EXPORT_SYMBOL(drm_dev_ref);
> +EXPORT_SYMBOL(drm_dev_get);
>  
>  /**
> - * drm_dev_unref - Drop reference of a DRM device
> + * drm_dev_put - Drop reference of a DRM device
>   * @dev: device to drop reference of or NULL
>   *
>   * This decreases the ref-count of @dev by one. The device is destroyed if the
>   * ref-count drops to zero.
>   */
> -void drm_dev_unref(struct drm_device *dev)
> +void drm_dev_put(struct drm_device *dev)
>  {
>  	if (dev)
>  		kref_put(&dev->ref, drm_dev_release);
>  }
> +EXPORT_SYMBOL(drm_dev_put);
> +
> +/**
> + * drm_dev_ref - Take reference of a DRM device
> + * @dev: device to take reference of or NULL
> + *
> + * This is a compatibility alias for drm_dev_get() and should not be used by new
> + * code.
> + */
> +void drm_dev_ref(struct drm_device *dev)
> +{
> +	drm_dev_get(dev);
> +}
> +EXPORT_SYMBOL(drm_dev_ref);

I think you've already converted all callers for drm_dev_ref() with this
patch here, so no need to add the compat function and risk getting new
callers. Once a conversion is done in upstream we should remove these.

Please remove.

With those 2 nits addressed I think your patch is ready for merging,
please resend with those changes.

Thanks, Daniel

> +
> +/**
> + * drm_dev_unref - Drop reference of a DRM device
> + * @dev: device to drop reference of or NULL
> + *
> + * This is a compatibility alias for drm_dev_put() and should not be used by new
> + * code.
> + */
> +void drm_dev_unref(struct drm_device *dev)
> +{
> +	drm_dev_put(dev);
> +}
>  EXPORT_SYMBOL(drm_dev_unref);
>  
>  static int create_compat_control_link(struct drm_device *dev)
> @@ -839,7 +865,7 @@ EXPORT_SYMBOL(drm_dev_register);
>   *
>   * Unregister the DRM device from the system. This does the reverse of
>   * drm_dev_register() but does not deallocate the device. The caller must call
> - * drm_dev_unref() to drop their final reference.
> + * drm_dev_put() to drop their final reference.
>   *
>   * A special form of unregistering for hotpluggable devices is drm_dev_unplug(),
>   * which can be called while there are still open users of @dev.
> diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
> index 71bbaae..e574fa0 100644
> --- a/include/drm/drm_drv.h
> +++ b/include/drm/drm_drv.h
> @@ -155,7 +155,7 @@ struct drm_driver {
>  	 * reverse order of the initialization.  Similarly to the load
>  	 * hook, this handler is deprecated and its usage should be
>  	 * dropped in favor of an open-coded teardown function at the
> -	 * driver layer.  See drm_dev_unregister() and drm_dev_unref()
> +	 * driver layer.  See drm_dev_unregister() and drm_dev_put()
>  	 * for the proper way to remove a &struct drm_device.
>  	 *
>  	 * The unload() hook is called right after unregistering
> @@ -611,6 +611,8 @@ struct drm_device *drm_dev_alloc(struct drm_driver *driver,
>  int drm_dev_register(struct drm_device *dev, unsigned long flags);
>  void drm_dev_unregister(struct drm_device *dev);
>  
> +void drm_dev_get(struct drm_device *dev);
> +void drm_dev_put(struct drm_device *dev);
>  void drm_dev_ref(struct drm_device *dev);
>  void drm_dev_unref(struct drm_device *dev);
>  void drm_put_dev(struct drm_device *dev);
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/33c3c79daa7a8f9c52ee87f4d78f3a551ab96b54.1506023126.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


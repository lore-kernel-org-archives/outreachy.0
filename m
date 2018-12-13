X-GM-THRID: 6634593201522999296
X-Received: by 2002:a5d:6543:: with SMTP id z3mr50604wrv.7.1544737558479;
        Thu, 13 Dec 2018 13:45:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a9d1:: with SMTP id s200ls747315wme.2.canary-gmail; Thu,
 13 Dec 2018 13:45:57 -0800 (PST)
X-Google-Smtp-Source: AFSGD/XW56nKS/fJIitkPNDHM1lLD9OhdyB8vfnq7LrEIQpD7PxzxVglgsquHXhzdd4tHmflT+Zk
X-Received: by 2002:a1c:6708:: with SMTP id b8mr142938wmc.5.1544737557536;
        Thu, 13 Dec 2018 13:45:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1544737557; cv=none;
        d=google.com; s=arc-20160816;
        b=lnyVDlA/+2heZ9wpWQujalHS4pyFy4r4/MYrpTCFPxhFHX+FXBegFmDFTEBVB/QixE
         ubKYwq4H5o58CEmNncsHpRQFm7EPXHNE+8pki5/16YjH88j1wX9pCilJIdNw4cc9ch8Q
         ZpuJQKLJBMtGf/0eNEu12yg1k90DkXRPFQNPt741+okyTbDb76JJ0gEWDvGbv8rkDHzk
         hcXv8cUeCyE4mSH3vhzjTYhyS/oeQAtQoExEay+HUlUR1o2czFj3O1xcig3HgDNB43Y7
         zNQeWuj6BBCzsJ5uKpdIoB7uidh4UbsfuXSV0bwfNy+lTbf4ubXoworCY9TB10hT1M56
         G/OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uZ0bqykfwfS7xqXXkH9yOxSZXFj0skiY2tdj9DxaqIs=;
        b=pn2LrMx6ZzUKcpW26kZH3g0CsjnwanGpxGX8NNZOJfNNZIJc9FWbNmyCBDUyEV5P3v
         OmI/tDAlbSoqwQf6OLDFQKhDdNbdQ1XDPxJoH0lVAA9xQR0ZYgF9VguRQV7Q8UN8dLYK
         qicnU1TztjSr/XmpIlEBAZ0alwQiKAqhDBHxhtv+EO7fB+9A+Ffod8ZnY5P+xYonQrX9
         YfCvdjijzvQ+rJVIrBSt76Xyi3dRZLQL3lpq6p4roopsroCWSWgZ84HrfgJZ3V7L91GR
         0SPapZPbEa0h4FeaEYzGKKVMI9lFvqiAILCJXdhVZ5FVJrKn6zMLRQIPLGCZ9z6Y67lb
         XtMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=Dwc1PNi4;
       spf=neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h6si710240wmc.2.2018.12.13.13.45.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Dec 2018 13:45:57 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=Dwc1PNi4;
       spf=neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-x544.google.com with SMTP id y56so3282591edd.11
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Dec 2018 13:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=uZ0bqykfwfS7xqXXkH9yOxSZXFj0skiY2tdj9DxaqIs=;
        b=Dwc1PNi4+HnvyitTPIoYHQ/NA9pq8yAmwCVYYWSg0TOrLxILoJeo17CDjxxTmDlSdg
         8/ncWP2sbTubTdqrYgPRSLpurftOSBE13ryNzqRQZiu+zVc6rL8Ml8vZiXy2QOUBJwxU
         PojrqIG+Sqx+EKmOt3ME8fz6LaC9TqB55LX7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=uZ0bqykfwfS7xqXXkH9yOxSZXFj0skiY2tdj9DxaqIs=;
        b=a1RyutPRRxHLfy/QvdKK0dK4b913H9IEVBHve8vvrkpaCeW+AzdCdb8u+mxm7Tdp6A
         nn3Er9nFlkYlFa9xdvejyH+aBHJmmu9rrfafkbQikQSPZ62sha/lPJqbd+eyjkTQepTg
         HORs5RUoHH6YTVeT57274ldR6iMyjJNZ0LVjiQq9Gr4vonPCjdljkFmgYYnhly6FXdUZ
         XG1jLWoYIfqVzIj0l3Zx7KB60zgmbfAyVYSuwUOU0BVMmLs/EJZDEQqMcm5DbjyBX1JC
         XTV0WXlgEfqZR4cfVx2IrW6YvqH7C3pN3Z7VGacxfH+XK86mkNuGEx0x4ywbV3xw0GgR
         iRWA==
X-Gm-Message-State: AA+aEWbe6+Oq1QnsBLw1WVaM0Z9Y66jK4nWPwo7ypCXz2p1dxtGXyBrz
	2Ny+s2AtOJuoegu8miHmJ8dRTA==
X-Received: by 2002:a17:906:45d8:: with SMTP id z24-v6mr618247ejq.19.1544737556854;
        Thu, 13 Dec 2018 13:45:56 -0800 (PST)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id b46sm906181edc.57.2018.12.13.13.45.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 13 Dec 2018 13:45:55 -0800 (PST)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 13 Dec 2018 22:45:53 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH v2] drm: Rename crtc_idr as
 object_idr to KMS cleanups
Message-ID: <20181213214553.GH21184@phenom.ffwll.local>
Mail-Followup-To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <20181213212957.vkitkyl5cj2qh7qr@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181213212957.vkitkyl5cj2qh7qr@smtp.gmail.com>
X-Operating-System: Linux phenom 4.18.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Dec 13, 2018 at 07:29:57PM -0200, Shayenne da Luz Moura wrote:
> This patch solves this TODO task:
>  drm_mode_config.crtc_idr is misnamed, since it contains all KMS object.
>  Should be renamed to drm_mode_config.object_idr.
> 
> Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> 
> ---
> Changes in v2:
>  - Make commit message more clear and change header file

Applied now, thanks for your patch. For next time around, pls ping after a
week already, likely no answer after a week means the patch simply fell
through the cracks :-/

Can you pls follow up with a patch to remove the todo item, now that it's
completed?

Thanks, Daniel

> 
>  drivers/gpu/drm/drm_lease.c       | 6 +++---
>  drivers/gpu/drm/drm_mode_config.c | 4 ++--
>  drivers/gpu/drm/drm_mode_object.c | 8 ++++----
>  include/drm/drm_mode_config.h     | 6 +++---
>  4 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c
> index 977f069f6d90..b2cbb58834bc 100644
> --- a/drivers/gpu/drm/drm_lease.c
> +++ b/drivers/gpu/drm/drm_lease.c
> @@ -218,7 +218,7 @@ static struct drm_master *drm_lease_create(struct drm_master *lessor, struct idr
>  
>  	idr_for_each_entry(leases, entry, object) {
>  		error = 0;
> -		if (!idr_find(&dev->mode_config.crtc_idr, object))
> +		if (!idr_find(&dev->mode_config.object_idr, object))
>  			error = -ENOENT;
>  		else if (!_drm_lease_held_master(lessor, object))
>  			error = -EACCES;
> @@ -434,7 +434,7 @@ static int fill_object_idr(struct drm_device *dev,
>  		/*
>  		 * We're using an IDR to hold the set of leased
>  		 * objects, but we don't need to point at the object's
> -		 * data structure from the lease as the main crtc_idr
> +		 * data structure from the lease as the main object_idr
>  		 * will be used to actually find that. Instead, all we
>  		 * really want is a 'leased/not-leased' result, for
>  		 * which any non-NULL pointer will work fine.
> @@ -675,7 +675,7 @@ int drm_mode_get_lease_ioctl(struct drm_device *dev,
>  
>  	if (lessee->lessor == NULL)
>  		/* owner can use all objects */
> -		object_idr = &lessee->dev->mode_config.crtc_idr;
> +		object_idr = &lessee->dev->mode_config.object_idr;
>  	else
>  		/* lessee can only use allowed object */
>  		object_idr = &lessee->leases;
> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> index ee80788f2c40..ab553b6465e2 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -381,7 +381,7 @@ void drm_mode_config_init(struct drm_device *dev)
>  	INIT_LIST_HEAD(&dev->mode_config.property_list);
>  	INIT_LIST_HEAD(&dev->mode_config.property_blob_list);
>  	INIT_LIST_HEAD(&dev->mode_config.plane_list);
> -	idr_init(&dev->mode_config.crtc_idr);
> +	idr_init(&dev->mode_config.object_idr);
>  	idr_init(&dev->mode_config.tile_idr);
>  	ida_init(&dev->mode_config.connector_ida);
>  	spin_lock_init(&dev->mode_config.connector_list_lock);
> @@ -484,7 +484,7 @@ void drm_mode_config_cleanup(struct drm_device *dev)
>  
>  	ida_destroy(&dev->mode_config.connector_ida);
>  	idr_destroy(&dev->mode_config.tile_idr);
> -	idr_destroy(&dev->mode_config.crtc_idr);
> +	idr_destroy(&dev->mode_config.object_idr);
>  	drm_modeset_lock_fini(&dev->mode_config.connection_mutex);
>  }
>  EXPORT_SYMBOL(drm_mode_config_cleanup);
> diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
> index cd9bc0ce9be0..bb1dd46496cd 100644
> --- a/drivers/gpu/drm/drm_mode_object.c
> +++ b/drivers/gpu/drm/drm_mode_object.c
> @@ -38,7 +38,7 @@ int __drm_mode_object_add(struct drm_device *dev, struct drm_mode_object *obj,
>  	int ret;
>  
>  	mutex_lock(&dev->mode_config.idr_mutex);
> -	ret = idr_alloc(&dev->mode_config.crtc_idr, register_obj ? obj : NULL,
> +	ret = idr_alloc(&dev->mode_config.object_idr, register_obj ? obj : NULL,
>  			1, 0, GFP_KERNEL);
>  	if (ret >= 0) {
>  		/*
> @@ -79,7 +79,7 @@ void drm_mode_object_register(struct drm_device *dev,
>  			      struct drm_mode_object *obj)
>  {
>  	mutex_lock(&dev->mode_config.idr_mutex);
> -	idr_replace(&dev->mode_config.crtc_idr, obj, obj->id);
> +	idr_replace(&dev->mode_config.object_idr, obj, obj->id);
>  	mutex_unlock(&dev->mode_config.idr_mutex);
>  }
>  
> @@ -99,7 +99,7 @@ void drm_mode_object_unregister(struct drm_device *dev,
>  {
>  	mutex_lock(&dev->mode_config.idr_mutex);
>  	if (object->id) {
> -		idr_remove(&dev->mode_config.crtc_idr, object->id);
> +		idr_remove(&dev->mode_config.object_idr, object->id);
>  		object->id = 0;
>  	}
>  	mutex_unlock(&dev->mode_config.idr_mutex);
> @@ -131,7 +131,7 @@ struct drm_mode_object *__drm_mode_object_find(struct drm_device *dev,
>  	struct drm_mode_object *obj = NULL;
>  
>  	mutex_lock(&dev->mode_config.idr_mutex);
> -	obj = idr_find(&dev->mode_config.crtc_idr, id);
> +	obj = idr_find(&dev->mode_config.object_idr, id);
>  	if (obj && type != DRM_MODE_OBJECT_ANY && obj->type != type)
>  		obj = NULL;
>  	if (obj && obj->id != id)
> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> index d643d268693e..4750fccb5b4a 100644
> --- a/include/drm/drm_mode_config.h
> +++ b/include/drm/drm_mode_config.h
> @@ -385,18 +385,18 @@ struct drm_mode_config {
>  	/**
>  	 * @idr_mutex:
>  	 *
> -	 * Mutex for KMS ID allocation and management. Protects both @crtc_idr
> +	 * Mutex for KMS ID allocation and management. Protects both @object_idr
>  	 * and @tile_idr.
>  	 */
>  	struct mutex idr_mutex;
>  
>  	/**
> -	 * @crtc_idr:
> +	 * @object_idr:
>  	 *
>  	 * Main KMS ID tracking object. Use this idr for all IDs, fb, crtc,
>  	 * connector, modes - just makes life easier to have only one.
>  	 */
> -	struct idr crtc_idr;
> +	struct idr object_idr;
>  
>  	/**
>  	 * @tile_idr:
> -- 
> 2.19.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181213212957.vkitkyl5cj2qh7qr%40smtp.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


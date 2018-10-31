X-GM-THRID: 6618628196583604224
X-Received: by 2002:a19:9652:: with SMTP id y79mr333101lfd.8.1541019777277;
        Wed, 31 Oct 2018 14:02:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4309:: with SMTP id l9-v6ls870807lfh.5.gmail; Wed, 31
 Oct 2018 14:02:55 -0700 (PDT)
X-Google-Smtp-Source: AJdET5doJ4Bl9IK/N1is1Nsgw0d0ZuOudD4kiuz2YVJaokst6VsymkUwOS5dr9RdXKoNGxsMzPTv
X-Received: by 2002:ac2:4241:: with SMTP id m1-v6mr432706lfl.1.1541019775250;
        Wed, 31 Oct 2018 14:02:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541019775; cv=none;
        d=google.com; s=arc-20160816;
        b=V+HSEwYrNBVL6fw2eARcua4RMeGgoiX/nY8Qck9t5wX8P65C/clDeVDEyz/QjnK3tR
         h293mYBQcBrltafBetCVQEAxMBc7Ik0VyDSRmRlSgPMbKNr+X27zRSg3TDbCs7CDJ9UI
         lAa3u4ktrtVu/DBA5JONs5SKpetiveJNzhAA8AAgaCCqE/MH2LNTLVdl/uNCfxF66PCJ
         rXz+xkcdvEMD21Q4EoEox5z4JfBe5uhVTQTWLnCbPlgBwJBJd8V9769dQYIJWof1i2jp
         +G1jn45c5PDrN0880DUnwuCjGpJi1S05zC8pPYLJemcVb+IcLYQqwMLY6wQwbMEOXlZh
         Lxow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TGBG0+q0004OSJdo24umPSBol05pC3pZcQWWjsiJsMg=;
        b=QZG3UM1conSiIcG1SWMzgST5/KP3BG6TNy+QnE1yAPaDJgudfwCFk18VP05nmSogW/
         4a498p3TtDVT424RM+e1rGoU7pt/9Mkj+D9ZA5zkVgo09NvHJOujXFz2BxxcFKCrjgD+
         qBFxUB5yomnUaPuQLdfMrMzR7iBbrKpfFCvSnxTKt99pZlPkCOqMZOBWcDu0cB0zB9hy
         tRhDnWCRViq99zf+bf950lH/M714YjD2GPwDDuLqU7LXJLtHaUjc2vpcmTr34zjXdqzx
         dY6F+xBRSzSs40IDKtX8ju271jycVvwlhpdZ6gVsCtP+k8sSJuEANQjdk9V4P6zVnCHi
         rOEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y12-v6si170903lfh.4.2018.10.31.14.02.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:02:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,449,1534802400"; 
   d="scan'208";a="353685568"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2018 22:02:53 +0100
Date: Wed, 31 Oct 2018 22:02:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
    Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>, 
    David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm: Rename crtc_idr as object_idr
 to KMS cleanups
In-Reply-To: <20181031205737.cingeaqget7hkbs6@smtp.gmail.com>
Message-ID: <alpine.DEB.2.21.1810312200520.2391@hadrien>
References: <20181031205737.cingeaqget7hkbs6@smtp.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Oct 2018, Shayenne da Luz Moura wrote:

> Rename 'drm_mode_config.crtc_idr' as 'drm_mode_config.object_idr',
> as proposed in the task description in TODO list for KMS cleanups.

Is object_idr a field that already exists?  If so, "Rename" is not the
best choice of words.  It should be something like "use the object_idr
field instead of the crtc_idr field" and then explain why.  "task
description in TODO list for KMS cleanups" isn't very helpful to
understand why the change should be made.

julia

>
> Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> ---
>  drivers/gpu/drm/drm_lease.c       | 6 +++---
>  drivers/gpu/drm/drm_mode_config.c | 4 ++--
>  drivers/gpu/drm/drm_mode_object.c | 8 ++++----
>  3 files changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c
> index f4702f23c11d..4f8de2217049 100644
> --- a/drivers/gpu/drm/drm_lease.c
> +++ b/drivers/gpu/drm/drm_lease.c
> @@ -222,7 +222,7 @@ static struct drm_master *drm_lease_create(struct drm_master *lessor, struct idr
>
>  	idr_for_each_entry(leases, entry, object) {
>  		error = 0;
> -		if (!idr_find(&dev->mode_config.crtc_idr, object))
> +		if (!idr_find(&dev->mode_config.object_idr, object))
>  			error = -ENOENT;
>  		else if (!_drm_lease_held_master(lessor, object))
>  			error = -EACCES;
> @@ -438,7 +438,7 @@ static int fill_object_idr(struct drm_device *dev,
>  		/*
>  		 * We're using an IDR to hold the set of leased
>  		 * objects, but we don't need to point at the object's
> -		 * data structure from the lease as the main crtc_idr
> +		 * data structure from the lease as the main object_idr
>  		 * will be used to actually find that. Instead, all we
>  		 * really want is a 'leased/not-leased' result, for
>  		 * which any non-NULL pointer will work fine.
> @@ -679,7 +679,7 @@ int drm_mode_get_lease_ioctl(struct drm_device *dev,
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
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181031205737.cingeaqget7hkbs6%40smtp.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


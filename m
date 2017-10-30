X-GM-THRID: 6480146584250089472
X-Received: by 10.28.239.3 with SMTP id n3mr450097wmh.11.1509357906284;
        Mon, 30 Oct 2017 03:05:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.192.1 with SMTP id r1ls6281235edb.0.gmail; Mon, 30 Oct 2017
 03:05:05 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+Rurmc0SpEsKgZdip1ZzfWxeiD9A5lpM00fZas8Fy9KD4lG9KmRvTeNZ4OBrMIC1991ObGv
X-Received: by 10.80.206.3 with SMTP id y3mr1822250edi.11.1509357905355;
        Mon, 30 Oct 2017 03:05:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1509357905; cv=none;
        d=google.com; s=arc-20160816;
        b=RuRVfHBn+P+wCQlXpjsxMHFcHgJBaf64ItaRRaBeJl05liRfAKxfah5pkha+iSSuqX
         /NP3hOCcB6mSlRB8CsbDXTk6BtLByhqHVlx3ACNz8cD/I+xYJoKakvGmA0NMGukTd2sd
         OPnuyTMsWLQpApM3009Ro1OG0NKycIy1wzkPoVXhkbtX3rlVMYU8ldo4qZzkbJoKL9J8
         wH3zu2txHTgFmtC/Y49e11QovUmJnMRvWcBIaoTEUlA2NZIRqpkzNR1YCNpOXKR/W9N3
         Fe9RWjuwi4ZAWlW9N6vKYrD92XMPU3d5+yNR7SHAH8pyWhA6yRv3AnAwPM/VpK3Mo/+o
         WVOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=HL9FC7YcCze+rqJXyXSRV7UzeExUS6EaRNouJIGjvbk=;
        b=xJ4vSKZvCuHbdiNMGUNfE7ko7+temP1H5S/6M/IfIilAn8GaLtwOf+qaWaGjIcHSG9
         zV9kVJX6+H5ubRf/WcSxQRAaX6+/1uvfEbDvG4G3Lct84EwgkTK8Ccc12I/F0Q4bIg+w
         lBxc97XahPp8A9fE9iSb70QUn2Kd8OmLEMnnfqZlVtfiAajU/MhgSuJ8lCdzHRvJ9TmM
         jLeOU+ZptMZ72lznZWjoeW+gL9fWv+f8NUg0cpukkxLSqAtKvZ+ymRPHIfrXZTjGIwkT
         Ld/KaQO7YNAiIVt+dM0q03psDV0MSiXyHD5XMzWdTdFWjBXss//tepe9dxOlNPY2mP5s
         aqUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=QW4cz+Jg;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id q7si482434edd.0.2017.10.30.03.05.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Oct 2017 03:05:05 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=QW4cz+Jg;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x243.google.com with SMTP id r196so15212152wmf.2
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Oct 2017 03:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HL9FC7YcCze+rqJXyXSRV7UzeExUS6EaRNouJIGjvbk=;
        b=QW4cz+Jgh91xKQ4CIoR51DENF5l7ZWn78bb8uH+JfmdALmF/jS1qUYvi/s4IJvTmFU
         5nKWk7K/DCIr69UzXGU83/hXODfEpi3dueJ0FN4uzxGCMi9c4gm6uz776hpq097cj/a7
         c+KpLZBWgX6219TiqLTf5KnF87tshH9OqIG+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=HL9FC7YcCze+rqJXyXSRV7UzeExUS6EaRNouJIGjvbk=;
        b=PHytUalxwNdzSVIa1fCwIee2oHTXilCT2UBYfsiEsY+tUWcZ+6yUjY7E+DvA0CcagA
         WZhobhm8ml5c/5Vj1OwP+eFSgK7yjfYVDJlYXs65bh75prS7wu0X0yTZ3GLODJG7KR5v
         duV6KUe7i2DYYm8k1UtI/clhfpDUpnnDV9Gnkc3N2ug2u+vR0AX3aeuOzI3TLtzhuEbV
         VdmoDQwOy0tWZ2w6kJs1H/dIRL1oKyz6grhxCynnW2haqvCDUaCk5J43TW48gCYYc+0X
         JMq8459EqKt0ko0RHOx21agu8iOdU4Kim0paHBCNrgsIvjb/wI8u+3vje20amo/AYEOV
         WXFg==
X-Gm-Message-State: AMCzsaWCfY+4pyLbmqxPKoZvhlNc5hvsxPYBnZq9BShYT/Nu5nrYtTiu
	ytHN1z0m9AW6F1U5BAlv0j9JZQ==
X-Received: by 10.80.157.141 with SMTP id w13mr11587970ede.151.1509357904990;
        Mon, 30 Oct 2017 03:05:04 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local (212-51-149-109.fiber7.init7.net. [212.51.149.109])
        by smtp.gmail.com with ESMTPSA id b36sm11426270edd.67.2017.10.30.03.05.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 30 Oct 2017 03:05:04 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 30 Oct 2017 11:04:32 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: airlied@linux.ie, kraxel@redhat.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] drm: virtio: replace reference/unreference with get/put
Message-ID: <20171030100432.oua46lntbqunyuga@phenom.ffwll.local>
References: <1508776686-29664-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1508776686-29664-1-git-send-email-aastha.gupta4104@gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Mon, Oct 23, 2017 at 10:08:06PM +0530, Aastha Gupta wrote:
> DRM core uses reference/unreference suffixes for refcounting
> functions, but kernel uses get/put (e.g. kref_get/put()).
> Replace reference/unreference with get/put for consistency
> and also it's shorter.
> 
> The following cocci script was used to generate the patch:
> 
> @@
> expression e;
> @@
> 
> (
> -drm_gem_object_reference(e);
> +drm_gem_object_get(e);
> |
> -drm_gem_object_unreference(e);
> +drm_gem_object_put(e);
> |
> -drm_gem_object_unreference_unlocked(e);
> +drm_gem_object_put_unlocked(e);
> )
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Applied, thanks for your patch.
-Daniel

> ---
>  drivers/gpu/drm/virtio/virtgpu_display.c |  4 ++--
>  drivers/gpu/drm/virtio/virtgpu_gem.c     |  4 ++--
>  drivers/gpu/drm/virtio/virtgpu_ioctl.c   | 14 +++++++-------
>  3 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/virtio/virtgpu_display.c b/drivers/gpu/drm/virtio/virtgpu_display.c
> index b6d5205..41b0930 100644
> --- a/drivers/gpu/drm/virtio/virtgpu_display.c
> +++ b/drivers/gpu/drm/virtio/virtgpu_display.c
> @@ -53,7 +53,7 @@ static void virtio_gpu_user_framebuffer_destroy(struct drm_framebuffer *fb)
>  	struct virtio_gpu_framebuffer *virtio_gpu_fb
>  		= to_virtio_gpu_framebuffer(fb);
>  
> -	drm_gem_object_unreference_unlocked(virtio_gpu_fb->obj);
> +	drm_gem_object_put_unlocked(virtio_gpu_fb->obj);
>  	drm_framebuffer_cleanup(fb);
>  	kfree(virtio_gpu_fb);
>  }
> @@ -327,7 +327,7 @@ virtio_gpu_user_framebuffer_create(struct drm_device *dev,
>  	ret = virtio_gpu_framebuffer_init(dev, virtio_gpu_fb, mode_cmd, obj);
>  	if (ret) {
>  		kfree(virtio_gpu_fb);
> -		drm_gem_object_unreference_unlocked(obj);
> +		drm_gem_object_put_unlocked(obj);
>  		return NULL;
>  	}
>  
> diff --git a/drivers/gpu/drm/virtio/virtgpu_gem.c b/drivers/gpu/drm/virtio/virtgpu_gem.c
> index 72ad7b1..92fb277 100644
> --- a/drivers/gpu/drm/virtio/virtgpu_gem.c
> +++ b/drivers/gpu/drm/virtio/virtgpu_gem.c
> @@ -72,7 +72,7 @@ int virtio_gpu_gem_create(struct drm_file *file,
>  	*obj_p = &obj->gem_base;
>  
>  	/* drop reference from allocate - handle holds it now */
> -	drm_gem_object_unreference_unlocked(&obj->gem_base);
> +	drm_gem_object_put_unlocked(&obj->gem_base);
>  
>  	*handle_p = handle;
>  	return 0;
> @@ -130,7 +130,7 @@ int virtio_gpu_mode_dumb_mmap(struct drm_file *file_priv,
>  		return -ENOENT;
>  	obj = gem_to_virtio_gpu_obj(gobj);
>  	*offset_p = virtio_gpu_object_mmap_offset(obj);
> -	drm_gem_object_unreference_unlocked(gobj);
> +	drm_gem_object_put_unlocked(gobj);
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/virtio/virtgpu_ioctl.c b/drivers/gpu/drm/virtio/virtgpu_ioctl.c
> index b94bd54..461f81a 100644
> --- a/drivers/gpu/drm/virtio/virtgpu_ioctl.c
> +++ b/drivers/gpu/drm/virtio/virtgpu_ioctl.c
> @@ -86,7 +86,7 @@ static void virtio_gpu_unref_list(struct list_head *head)
>  		bo = buf->bo;
>  		qobj = container_of(bo, struct virtio_gpu_object, tbo);
>  
> -		drm_gem_object_unreference_unlocked(&qobj->gem_base);
> +		drm_gem_object_put_unlocked(&qobj->gem_base);
>  	}
>  }
>  
> @@ -261,7 +261,7 @@ static int virtio_gpu_resource_create_ioctl(struct drm_device *dev, void *data,
>  		ret = virtio_gpu_object_attach(vgdev, qobj, res_id, NULL);
>  	} else {
>  		/* use a gem reference since unref list undoes them */
> -		drm_gem_object_reference(&qobj->gem_base);
> +		drm_gem_object_get(&qobj->gem_base);
>  		mainbuf.bo = &qobj->tbo;
>  		list_add(&mainbuf.head, &validate_list);
>  
> @@ -304,7 +304,7 @@ static int virtio_gpu_resource_create_ioctl(struct drm_device *dev, void *data,
>  		}
>  		return ret;
>  	}
> -	drm_gem_object_unreference_unlocked(obj);
> +	drm_gem_object_put_unlocked(obj);
>  
>  	rc->res_handle = res_id; /* similiar to a VM address */
>  	rc->bo_handle = handle;
> @@ -341,7 +341,7 @@ static int virtio_gpu_resource_info_ioctl(struct drm_device *dev, void *data,
>  
>  	ri->size = qobj->gem_base.size;
>  	ri->res_handle = qobj->hw_res_handle;
> -	drm_gem_object_unreference_unlocked(gobj);
> +	drm_gem_object_put_unlocked(gobj);
>  	return 0;
>  }
>  
> @@ -389,7 +389,7 @@ static int virtio_gpu_transfer_from_host_ioctl(struct drm_device *dev,
>  out_unres:
>  	virtio_gpu_object_unreserve(qobj);
>  out:
> -	drm_gem_object_unreference_unlocked(gobj);
> +	drm_gem_object_put_unlocked(gobj);
>  	return ret;
>  }
>  
> @@ -439,7 +439,7 @@ static int virtio_gpu_transfer_to_host_ioctl(struct drm_device *dev, void *data,
>  out_unres:
>  	virtio_gpu_object_unreserve(qobj);
>  out:
> -	drm_gem_object_unreference_unlocked(gobj);
> +	drm_gem_object_put_unlocked(gobj);
>  	return ret;
>  }
>  
> @@ -462,7 +462,7 @@ static int virtio_gpu_wait_ioctl(struct drm_device *dev, void *data,
>  		nowait = true;
>  	ret = virtio_gpu_object_wait(qobj, nowait);
>  
> -	drm_gem_object_unreference_unlocked(gobj);
> +	drm_gem_object_put_unlocked(gobj);
>  	return ret;
>  }
>  
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


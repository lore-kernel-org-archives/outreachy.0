X-GM-THRID: 6471138860416892928
X-Received: by 10.28.149.18 with SMTP id x18mr1393180wmd.18.1506930550474;
        Mon, 02 Oct 2017 00:49:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.160.247 with SMTP id n52ls3174354wrn.6.gmail; Mon, 02 Oct
 2017 00:49:10 -0700 (PDT)
X-Received: by 10.223.150.118 with SMTP id c51mr1459279wra.20.1506930549985;
        Mon, 02 Oct 2017 00:49:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506930549; cv=none;
        d=google.com; s=arc-20160816;
        b=e4U0rovA+Y0tvc4+sOOMKpZGQ/nXjKIX7W90oH6lKAd0o3XhxeqbWZdtaUnGuYrJgA
         4qATPjrV9T91mSUMlMln4l3OtaNj+zUq9iX1tDHXxF1vguujJn1V6/2EoxsUIquh8aRb
         GaLaDXLuV+uujfBdVeHCQbz2ELTqshpdAoqDSa/1cYmJPgwbotcpyfubjumm80+QmA8n
         kp0gcWwl5siDCgsLLO8wTYd+NZr5Rmp4WDdhoj/2Xc5JtuQTA9qQTuY0KAEItcM1vD/y
         C0+5C4tGCc0WijzykhJoPW45uecGVWx66fCiC5G4FuYeygZJ1gpYITgUdQbhqrJglZHt
         VCxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature:arc-authentication-results;
        bh=exsHc9R7zl+LLRFHwgw/R+liCqfAtRUmq7bmRnHRWXQ=;
        b=dgtjVY3rlS28PrzFUzoGa4BJVbsU3syONpM+qncVxgSN3wiOL+QZgtmN7uD5qq4HHD
         vSE17LWJYjqSaH0phujAvBzEYXEGvblVw9RrjjrqTcwqJTdtrDA5w8Sfrg5pCtuuF4XW
         QL5wOO9eP+dDy5WfQAtV2TiVpUEcSQ8scpv3g3W0LRfk7VNEUAvO5qDJZQqiy+EgdCmd
         u1amwqvXq0XkaNj5/85O/eVyXmHZDZNszA43W/4OJyYjOJ9AY0cuU4KMu4EGwDzOAHkf
         TzRLSpYdifLk3Z9eMI9CxdkRywNl1qp019mLupQmXJ3oIsUntGZ3nqNCAr4U6FgfSCu7
         kzqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=YDYFQwFw;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id l133si1182007wmb.3.2017.10.02.00.49.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 00:49:09 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=YDYFQwFw;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x243.google.com with SMTP id q124so2973935wmb.5
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 00:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=exsHc9R7zl+LLRFHwgw/R+liCqfAtRUmq7bmRnHRWXQ=;
        b=YDYFQwFwc7jp2MabFmoCgCigTFuIGonZohdcJ9nDaKF6HuKQA3F9jvaTdfobyNOgAV
         JfPjziBO3TU0y/s4V7MqtkfJK3iMjkbmlzqnlbmk6Lyhi1v+eoy5Y/JGbZMsyNsz7T9e
         J/7JWgHaqmXNBQOqMfYPoL2cFhcLH5nOK5bRs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=exsHc9R7zl+LLRFHwgw/R+liCqfAtRUmq7bmRnHRWXQ=;
        b=BCq48fmlhqtXk4LPAFhZtz5CynGnloMHbz4sK3zZMrFhkh3eM7NFgeGSOIhKz+FvTh
         CiPtwJrjHuaO4DJGqWNwNZBCaszTd8u65FiLVXCrN0kF5KgQfI+efMxn3sAVRkQPOr8J
         kZniA1sifUDvDW9ytY1N8IvxoJGooqS5H/dj8pSXn8PMGXTSIfFbASISwCytmvHF4U4c
         9h2VRD5OIzUeI8WtPOEjn3yaJiP4h8MAihjApGLBiE3iRycw2oEF1lCo9GxlkJRodJRi
         qNAkY0cZEb474Al/PgvPIqs2pJK9xoFbau3MUtyzYkAFkxROlneC9lmAwQVb37/eFBbT
         3GpQ==
X-Gm-Message-State: AHPjjUjEOCYOZY3nQOWoimqlpkhVNM8vxwiBbGcY2S4thsRvkCaPNULt
	epXcHUi7c/Q2bMcHljAlE/gAoA==
X-Google-Smtp-Source: AOwi7QAYlG5uirEx2Y8Iy+8g5Vx8aXA2UwsGjRYnwoB4KQhqZknNHFTXPtXVsgERACR5ymQ2Kmvh1g==
X-Received: by 10.80.188.2 with SMTP id j2mr19789639edh.128.1506930549571;
        Mon, 02 Oct 2017 00:49:09 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id b43sm14735390edc.52.2017.10.02.00.49.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 02 Oct 2017 00:49:08 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 2 Oct 2017 09:49:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: daniel.vetter@ffwll.ch, seanpaul@chromium.org, kraxel@redhat.com,
	virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] drm/virtio: Replace instances of reference/unreference
 with get/put
Message-ID: <20171002074907.hdhmnqkuo2deceoa@phenom.ffwll.local>
Mail-Followup-To: Srishti Sharma <srishtishar@gmail.com>,
	seanpaul@chromium.org, kraxel@redhat.com,
	virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <1506679419-7130-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1506679419-7130-1-git-send-email-srishtishar@gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Fri, Sep 29, 2017 at 03:33:39PM +0530, Srishti Sharma wrote:
> Replace reference/unreference with get/put as it is consistent
> with the kernel coding style. Done using the following semantic
> patch by coccinelle.
> 
> @r@
> expression e;
> @@
> 
> -drm_gem_object_unreference_unlocked(e);
> +drm_gem_object_put_unlocked(e);
> 
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Applied to drm-misc-next, thanks.
-Daniel

> ---
>  drivers/gpu/drm/virtio/virtgpu_display.c |  4 ++--
>  drivers/gpu/drm/virtio/virtgpu_gem.c     |  4 ++--
>  drivers/gpu/drm/virtio/virtgpu_ioctl.c   | 12 ++++++------
>  3 files changed, 10 insertions(+), 10 deletions(-)
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
> index b94bd54..0528edb 100644
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


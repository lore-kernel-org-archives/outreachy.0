X-GM-THRID: 6535096042701979648
X-Received: by 10.46.129.90 with SMTP id t26mr781823ljg.27.1521620413270;
        Wed, 21 Mar 2018 01:20:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.129.3 with SMTP id d3ls383609ljg.1.gmail; Wed, 21 Mar 2018
 01:20:11 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuNVX33GciTuG7jt96GRRluYJjMeX6VxKBL/RkQz+pURURd5o4Eg9DKmQUDQ216gANYoUU2
X-Received: by 10.46.53.4 with SMTP id z4mr1182158ljz.22.1521620411757;
        Wed, 21 Mar 2018 01:20:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521620411; cv=none;
        d=google.com; s=arc-20160816;
        b=VaR6HlQAfAfvbs5hedaOZLlnSsMXnXGLz24H+1Cs70rum0n8Lw1ZTifkFI9ser8uKv
         9j46acPct8PWcBMuT2j2KS+ANAiUnVp/un9ojWlODDRfBL9P9YEbPdUE9BU9988/ePLk
         ti/tUVbXutSTLRnDwe46x5dkvSge3umzFCmWynQ0wYmbhNBotYMjocEhddUGHDkF1QSV
         omXVPwCN7mtxtQMP9HzzXyypM4bEbm3gw/JamE4Kj2E/LENb2bte3wE0Ox3J5i8+nJq3
         LBHA2nyWwM7Re8q2vKc1vU1gvUK4nXLbNvU3XGOnL5sMli6l8AIbyMVxof/e/xcfp9BA
         +vKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature:arc-authentication-results;
        bh=SLF8GGFsJaezCYk7EEP7lRRc1GjwcAEBfA2m2234oLk=;
        b=fH3fmCda1TuxSGWHjFIwvuK9LyPBBXLOzaY84vklMgp0RbLupGuZsCnZ2fAyt+Yeb3
         F6DNEp8+p1UEGeiL/UO3cm0JdYG0Y9Y5SuBto/4fjo3ka5+7SgCcsgCM+NNXv+10WKDD
         WhyUMb32WaeMmVgTGRrs8W5N7b5zC1tYwBwJ47LBTPRMZVt7wTtdIqdnkHQQylvwGHQs
         fJQrDraWj0cIeW9Q0DHUIlv1/z2hKmHGnYuFbxq1zDBqPS5Rpp2VV8KeyCyNf/VxjzUb
         O75+y94/anbv85nRMDti6iln6UEJxFTucIz1R2HL80rxdIbuS++N3BlYgfMjq5GmpofB
         TOKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=HwBPe8NH;
       spf=neutral (google.com: 2a00:1450:400c:c09::22a is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id j185-v6si110208lfe.3.2018.03.21.01.20.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Mar 2018 01:20:11 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::22a is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=HwBPe8NH;
       spf=neutral (google.com: 2a00:1450:400c:c09::22a is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x22a.google.com with SMTP id l16so8140035wmh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Mar 2018 01:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=SLF8GGFsJaezCYk7EEP7lRRc1GjwcAEBfA2m2234oLk=;
        b=HwBPe8NH+9gs6wnbvPIqn9jDe0sLo2qL2pe2c3QkQgZcpfGoc+HvQqcDOSkGy51g2P
         qvPN4X014BSe1dkmTiZkn8pmaaQ/1P54bP8xPQN0qXX1diLUmMDZ8f8irV7L2bEYYSKx
         tJ8h+3pZk/ptlAZPH1bqXDDPY7y1fmeP9HP3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=SLF8GGFsJaezCYk7EEP7lRRc1GjwcAEBfA2m2234oLk=;
        b=mK4ggUZNE1nEUHC8zrV+/HOGqBgTYCaa6J5mXE804A1YZzHjhEL2aSqnF1d0IPVZdN
         4vBvCk1oztyNstZbqabYMxi/XO5OahGdfMI+kCQ86x2BdVeT0uM81Ue0zCbytz9L7IPU
         ZqssB+kPpK+P70pty3PuavsDChbfNbywKf7boQUQeGdcRB9udCu+ar61cxKaZGbQivFK
         5FS4aQJ7uiqeC0OqFHdUsVT2xWWCKjsbv2i5mgl4U+OaiYO7TBsU+hgZzEQ8xYA9s5/V
         uGz2l9xzffOV8uI7tytxPEA06XCd2VlfbdqqhM7Cc09pIA4cFtwbZe5NFMXrFrhJPh7t
         BEFw==
X-Gm-Message-State: AElRT7HtZriQBhI9fsy8tO/kcfCrkor8axoKJ+NvM7Ne9iU6Fxqil50s
	4teJUdEB31eZFIB3yZfbBGcHk2Sg
X-Received: by 10.80.201.131 with SMTP id w3mr20815972edh.22.1521620411039;
        Wed, 21 Mar 2018 01:20:11 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local (212-51-149-109.fiber7.init7.net. [212.51.149.109])
        by smtp.gmail.com with ESMTPSA id r48sm3258948edd.74.2018.03.21.01.20.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 21 Mar 2018 01:20:10 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 21 Mar 2018 09:20:08 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
Cc: airlied@redhat.com, kraxel@redhat.com, airlied@linux.ie,
	virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, seanpaul@chromium.org,
	daniel.vetter@intel.com
Subject: Re: [Outreachy kernel] [PATCH] drm/qxl: Replace
 drm_gem_object_reference/unreference() with _get/put()
Message-ID: <20180321082008.GX14155@phenom.ffwll.local>
Mail-Followup-To: Santha Meena Ramamoorthy <santhameena13@gmail.com>,
	airlied@redhat.com, kraxel@redhat.com, airlied@linux.ie,
	virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, seanpaul@chromium.org,
	daniel.vetter@intel.com
References: <1521570567-22519-1-git-send-email-santhameena13@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1521570567-22519-1-git-send-email-santhameena13@gmail.com>
X-Operating-System: Linux phenom 4.15.0-1-amd64 
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 20, 2018 at 11:29:27AM -0700, Santha Meena Ramamoorthy wrote:
> Replace drm_gem_object_reference/unreference function with *_get/put()
> suffixes, because it is shorter and consistent with the kernel
> kref_get/put() functions. The following Coccinelle script was used:
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
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>

lgtm, thanks for your patch. Applied to drm-misc-next.
-Daniel

> ---
>  drivers/gpu/drm/qxl/qxl_display.c | 4 ++--
>  drivers/gpu/drm/qxl/qxl_dumb.c    | 2 +-
>  drivers/gpu/drm/qxl/qxl_fb.c      | 6 +++---
>  drivers/gpu/drm/qxl/qxl_gem.c     | 2 +-
>  drivers/gpu/drm/qxl/qxl_ioctl.c   | 4 ++--
>  drivers/gpu/drm/qxl/qxl_object.c  | 6 +++---
>  6 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/qxl/qxl_display.c b/drivers/gpu/drm/qxl/qxl_display.c
> index 9a9214a..ecb35ed 100644
> --- a/drivers/gpu/drm/qxl/qxl_display.c
> +++ b/drivers/gpu/drm/qxl/qxl_display.c
> @@ -309,7 +309,7 @@ void qxl_user_framebuffer_destroy(struct drm_framebuffer *fb)
>  	struct qxl_bo *bo = gem_to_qxl_bo(qxl_fb->obj);
>  
>  	WARN_ON(bo->shadow);
> -	drm_gem_object_unreference_unlocked(qxl_fb->obj);
> +	drm_gem_object_put_unlocked(qxl_fb->obj);
>  	drm_framebuffer_cleanup(fb);
>  	kfree(qxl_fb);
>  }
> @@ -1215,7 +1215,7 @@ qxl_user_framebuffer_create(struct drm_device *dev,
>  	ret = qxl_framebuffer_init(dev, qxl_fb, mode_cmd, obj, &qxl_fb_funcs);
>  	if (ret) {
>  		kfree(qxl_fb);
> -		drm_gem_object_unreference_unlocked(obj);
> +		drm_gem_object_put_unlocked(obj);
>  		return NULL;
>  	}
>  
> diff --git a/drivers/gpu/drm/qxl/qxl_dumb.c b/drivers/gpu/drm/qxl/qxl_dumb.c
> index 11085ab..c666b89 100644
> --- a/drivers/gpu/drm/qxl/qxl_dumb.c
> +++ b/drivers/gpu/drm/qxl/qxl_dumb.c
> @@ -82,6 +82,6 @@ int qxl_mode_dumb_mmap(struct drm_file *file_priv,
>  		return -ENOENT;
>  	qobj = gem_to_qxl_bo(gobj);
>  	*offset_p = qxl_bo_mmap_offset(qobj);
> -	drm_gem_object_unreference_unlocked(gobj);
> +	drm_gem_object_put_unlocked(gobj);
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/qxl/qxl_fb.c b/drivers/gpu/drm/qxl/qxl_fb.c
> index 23af3e3..3388914 100644
> --- a/drivers/gpu/drm/qxl/qxl_fb.c
> +++ b/drivers/gpu/drm/qxl/qxl_fb.c
> @@ -95,7 +95,7 @@ static void qxlfb_destroy_pinned_object(struct drm_gem_object *gobj)
>  	qxl_bo_kunmap(qbo);
>  	qxl_bo_unpin(qbo);
>  
> -	drm_gem_object_unreference_unlocked(gobj);
> +	drm_gem_object_put_unlocked(gobj);
>  }
>  
>  int qxl_get_handle_for_primary_fb(struct qxl_device *qdev,
> @@ -316,11 +316,11 @@ static int qxlfb_create(struct qxl_fbdev *qfbdev,
>  		qxl_bo_unpin(qbo);
>  	}
>  	if (fb && ret) {
> -		drm_gem_object_unreference_unlocked(gobj);
> +		drm_gem_object_put_unlocked(gobj);
>  		drm_framebuffer_cleanup(fb);
>  		kfree(fb);
>  	}
> -	drm_gem_object_unreference_unlocked(gobj);
> +	drm_gem_object_put_unlocked(gobj);
>  	return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/qxl/qxl_gem.c b/drivers/gpu/drm/qxl/qxl_gem.c
> index 85f5467..f5c1e78 100644
> --- a/drivers/gpu/drm/qxl/qxl_gem.c
> +++ b/drivers/gpu/drm/qxl/qxl_gem.c
> @@ -98,7 +98,7 @@ int qxl_gem_object_create_with_handle(struct qxl_device *qdev,
>  		return r;
>  	/* drop reference from allocate - handle holds it now */
>  	*qobj = gem_to_qxl_bo(gobj);
> -	drm_gem_object_unreference_unlocked(gobj);
> +	drm_gem_object_put_unlocked(gobj);
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/qxl/qxl_ioctl.c b/drivers/gpu/drm/qxl/qxl_ioctl.c
> index e8c0b10..e238a1a 100644
> --- a/drivers/gpu/drm/qxl/qxl_ioctl.c
> +++ b/drivers/gpu/drm/qxl/qxl_ioctl.c
> @@ -121,7 +121,7 @@ static int qxlhw_handle_to_bo(struct drm_file *file_priv, uint64_t handle,
>  	qobj = gem_to_qxl_bo(gobj);
>  
>  	ret = qxl_release_list_add(release, qobj);
> -	drm_gem_object_unreference_unlocked(gobj);
> +	drm_gem_object_put_unlocked(gobj);
>  	if (ret)
>  		return ret;
>  
> @@ -343,7 +343,7 @@ static int qxl_update_area_ioctl(struct drm_device *dev, void *data,
>  	qxl_bo_unreserve(qobj);
>  
>  out:
> -	drm_gem_object_unreference_unlocked(gobj);
> +	drm_gem_object_put_unlocked(gobj);
>  	return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/qxl/qxl_object.c b/drivers/gpu/drm/qxl/qxl_object.c
> index f6b80fe..e9fb0ab 100644
> --- a/drivers/gpu/drm/qxl/qxl_object.c
> +++ b/drivers/gpu/drm/qxl/qxl_object.c
> @@ -211,13 +211,13 @@ void qxl_bo_unref(struct qxl_bo **bo)
>  	if ((*bo) == NULL)
>  		return;
>  
> -	drm_gem_object_unreference_unlocked(&(*bo)->gem_base);
> +	drm_gem_object_put_unlocked(&(*bo)->gem_base);
>  	*bo = NULL;
>  }
>  
>  struct qxl_bo *qxl_bo_ref(struct qxl_bo *bo)
>  {
> -	drm_gem_object_reference(&bo->gem_base);
> +	drm_gem_object_get(&bo->gem_base);
>  	return bo;
>  }
>  
> @@ -318,7 +318,7 @@ void qxl_bo_force_delete(struct qxl_device *qdev)
>  		list_del_init(&bo->list);
>  		mutex_unlock(&qdev->gem.mutex);
>  		/* this should unref the ttm bo */
> -		drm_gem_object_unreference_unlocked(&bo->gem_base);
> +		drm_gem_object_put_unlocked(&bo->gem_base);
>  	}
>  }
>  
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521570567-22519-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


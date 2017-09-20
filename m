X-GM-THRID: 6466935626239311872
X-Received: by 10.107.169.219 with SMTP id f88mr3219896ioj.136.1505934088454;
        Wed, 20 Sep 2017 12:01:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.18.141 with SMTP id y13ls297271qti.2.gmail; Wed, 20 Sep
 2017 12:01:27 -0700 (PDT)
X-Received: by 10.55.209.202 with SMTP id o71mr2961355qkl.2.1505934087923;
        Wed, 20 Sep 2017 12:01:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505934087; cv=none;
        d=google.com; s=arc-20160816;
        b=aJ5r+sWAS2GrN+XnyGfZsp/YMrDkvKhs7/RPd6OUbL1PAIQ2TheyMNotctnh87ydSF
         euGlcsbrvOFSQHWs7zZ15/RqzZuqG8smU6eokmhy3Wja/AklbjVBOTAAtVnhWzBVzX7R
         EHTysgdVCoLOO6ImzOABKzdRelgB+yhBAzLc6u1gNmxcwkrfYXhWk/ub2A72S/pgOkwa
         uibTxHOEK9LNYYEGJlHhM2Xp+hchRHNxmPghJAWfWMRfqTjHFnKQtkHDdoEnmKISF6YZ
         1Qe+/Uuo99ijOoqP65OdL2FbK907WXuGsC9lxhhpuoMGbgCGJetThDTqvT4FczXdOmrn
         cxlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=PGaxF4NlIGZG1FOH3olHT1D+K9maI8lmw/KHGq5IwGo=;
        b=VCMDvB/hZPOgTMNyjiedgI4TfFhSuHLuRKvtKDTyyeD7BWm93jCDYFdOgxseCiobNX
         0nBQnvuoTtnOKfjtfjFM17s/AitB5tMjb7CmiJ432StWnqmaHr3TnAx8qO8EvdFybBbq
         rbUeogJsRI4pRMdcmI9nRx0zObDQJVWJit1wCVZh3V5R0B5e6YLI8ico76i6Wm/rycRg
         imuT3fhEZXcQAWrdhzeSq0xdkaB/FXSpabs/Kne1h3wO3A2M/jcCQlwEPFCsabDHnNzu
         /GlNUOSkd1KLGfBZCJZMQijiAidbHVdWxGFOvylW/Mrm5tjQe6TKrU+ZHGx7UMbPnAbD
         1GpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TxWoy0Et;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22a as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x22a.google.com (mail-yw0-x22a.google.com. [2607:f8b0:4002:c05::22a])
        by gmr-mx.google.com with ESMTPS id u203si113932ywu.21.2017.09.20.12.01.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 12:01:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22a as permitted sender) client-ip=2607:f8b0:4002:c05::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TxWoy0Et;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22a as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x22a.google.com with SMTP id r85so2579197ywg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 12:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=PGaxF4NlIGZG1FOH3olHT1D+K9maI8lmw/KHGq5IwGo=;
        b=TxWoy0EtKBqNFVoAWpueKZ6s4tB1TK8UTkxJc37vu5fedxuBkNqAapS2C89e5XRXqZ
         Dzsw2Oc38szK7pa+tJ9lTvEE+pd0HMW5yGC2O0aJz6Fp+zkwnUUr/FotswZrQ32u4NBN
         qmyPQWHGYCunvbt9hH1P65BeGBfssCTEgnHzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=PGaxF4NlIGZG1FOH3olHT1D+K9maI8lmw/KHGq5IwGo=;
        b=YT9NpV9Cm4m/c4Py7n+FxkkdItYWk8CLTgWRUNaoTgnrNt1P6Wi21lnntLrGaUXm7L
         rgdBU4XSQXeoJCYN41HMB1YGpftyMoZnE+c0AupwfpjMp+0sysBri4wu8z1VYluO90vt
         753up7Z9vHKmBDfAvNXpQedNwjQzt8TgKp3gcKpDouXLLbgXE3FliY+rwIONb7tqQH1F
         atwPf15Gnftie0BucqjmOMbyg++WD+Jg6ZhO85qTuLmsStc9iwgv8ZEYnyQJG4MzFiGr
         hks6toVC0XN+Tqi03mgFXfoeyt6v3/0efD21G2LcF81aImmtrh8fOS1giMguFrYU55Z7
         pKbA==
X-Gm-Message-State: AHPjjUiJibTt5Qe/e9rYuUNuxsuexXDTT1nMd37Qsbkvb7V+NTH3jP6O
	shOAFSQrPX9F7Cm1OQFG6jqfe6YdiZk=
X-Received: by 10.37.132.134 with SMTP id v6mr4212538ybk.96.1505934087192;
        Wed, 20 Sep 2017 12:01:27 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com. [209.85.214.46])
        by smtp.gmail.com with ESMTPSA id w137sm1026239ywd.9.2017.09.20.12.01.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 12:01:27 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id 85so4095914ith.2
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 12:01:26 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAFAvmG47bKGtzNdh3QuqGBCmr5Uq3syjGpWLMsaK7DOYrQU1d1xtsZW9vo62k/20QluZ8dDiTfQRkweh0GIVM=
X-Received: by 10.36.165.8 with SMTP id k8mr4516281itf.83.1505934085791; Wed,
 20 Sep 2017 12:01:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.156.195 with HTTP; Wed, 20 Sep 2017 12:01:05 -0700 (PDT)
In-Reply-To: <a59ef1ed109ade897bcffcb01b33214262db8942.1505932812.git.hamohammed.sa@gmail.com>
References: <cover.1505932812.git.hamohammed.sa@gmail.com> <a59ef1ed109ade897bcffcb01b33214262db8942.1505932812.git.hamohammed.sa@gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Wed, 20 Sep 2017 12:01:05 -0700
X-Gmail-Original-Message-ID: <CAOw6vbLLGUs=xjKYSOpAOOF6aJPD5uoja8fwDybpXoS3ptR5Sg@mail.gmail.com>
Message-ID: <CAOw6vbLLGUs=xjKYSOpAOOF6aJPD5uoja8fwDybpXoS3ptR5Sg@mail.gmail.com>
Subject: Re: [RESEND PATCH 1/2] drm/armada: Replace drm_gem_object_reference/unreference()
 with _get/put()
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 20, 2017 at 11:54 AM, Haneen Mohammed
<hamohammed.sa@gmail.com> wrote:
> This patch replace instances of drm_gem_object_reference/unreference with
> *_get/put() suffixes, because get/put is shorter and consistent with the
> kernel use of *_get/put() suffixes.
> This was done with the following Coccinelle script:
>
> @r1@
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
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
>  drivers/gpu/drm/armada/armada_crtc.c  |  8 ++++----
>  drivers/gpu/drm/armada/armada_fb.c    |  8 ++++----
>  drivers/gpu/drm/armada/armada_fbdev.c |  6 +++---
>  drivers/gpu/drm/armada/armada_gem.c   | 14 +++++++-------
>  4 files changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
> index 2a4d163..381dfa1 100644
> --- a/drivers/gpu/drm/armada/armada_crtc.c
> +++ b/drivers/gpu/drm/armada/armada_crtc.c
> @@ -947,13 +947,13 @@ static int armada_drm_crtc_cursor_set(struct drm_crtc *crtc,
>
>                 /* Must be a kernel-mapped object */
>                 if (!obj->addr) {
> -                       drm_gem_object_unreference_unlocked(&obj->obj);
> +                       drm_gem_object_put_unlocked(&obj->obj);
>                         return -EINVAL;
>                 }
>
>                 if (obj->obj.size < w * h * 4) {
>                         DRM_ERROR("buffer is too small\n");
> -                       drm_gem_object_unreference_unlocked(&obj->obj);
> +                       drm_gem_object_put_unlocked(&obj->obj);
>                         return -ENOMEM;
>                 }
>         }
> @@ -961,7 +961,7 @@ static int armada_drm_crtc_cursor_set(struct drm_crtc *crtc,
>         if (dcrtc->cursor_obj) {
>                 dcrtc->cursor_obj->update = NULL;
>                 dcrtc->cursor_obj->update_data = NULL;
> -               drm_gem_object_unreference_unlocked(&dcrtc->cursor_obj->obj);
> +               drm_gem_object_put_unlocked(&dcrtc->cursor_obj->obj);
>         }
>         dcrtc->cursor_obj = obj;
>         dcrtc->cursor_w = w;
> @@ -997,7 +997,7 @@ static void armada_drm_crtc_destroy(struct drm_crtc *crtc)
>         struct armada_private *priv = crtc->dev->dev_private;
>
>         if (dcrtc->cursor_obj)
> -               drm_gem_object_unreference_unlocked(&dcrtc->cursor_obj->obj);
> +               drm_gem_object_put_unlocked(&dcrtc->cursor_obj->obj);
>
>         priv->dcrtc[dcrtc->num] = NULL;
>         drm_crtc_cleanup(&dcrtc->crtc);
> diff --git a/drivers/gpu/drm/armada/armada_fb.c b/drivers/gpu/drm/armada/armada_fb.c
> index 92e6b08..51839c1 100644
> --- a/drivers/gpu/drm/armada/armada_fb.c
> +++ b/drivers/gpu/drm/armada/armada_fb.c
> @@ -18,7 +18,7 @@ static void armada_fb_destroy(struct drm_framebuffer *fb)
>         struct armada_framebuffer *dfb = drm_fb_to_armada_fb(fb);
>
>         drm_framebuffer_cleanup(&dfb->fb);
> -       drm_gem_object_unreference_unlocked(&dfb->obj->obj);
> +       drm_gem_object_put_unlocked(&dfb->obj->obj);
>         kfree(dfb);
>  }
>
> @@ -95,7 +95,7 @@ struct armada_framebuffer *armada_framebuffer_create(struct drm_device *dev,
>          * the above call, but the caller will drop their reference
>          * to it.  Hence we need to take our own reference.
>          */
> -       drm_gem_object_reference(&obj->obj);
> +       drm_gem_object_get(&obj->obj);
>
>         return dfb;
>  }
> @@ -144,12 +144,12 @@ static struct drm_framebuffer *armada_fb_create(struct drm_device *dev,
>                 goto err;
>         }
>
> -       drm_gem_object_unreference_unlocked(&obj->obj);
> +       drm_gem_object_put_unlocked(&obj->obj);
>
>         return &dfb->fb;
>
>   err_unref:
> -       drm_gem_object_unreference_unlocked(&obj->obj);
> +       drm_gem_object_put_unlocked(&obj->obj);
>   err:
>         DRM_ERROR("failed to initialize framebuffer: %d\n", ret);
>         return ERR_PTR(ret);
> diff --git a/drivers/gpu/drm/armada/armada_fbdev.c b/drivers/gpu/drm/armada/armada_fbdev.c
> index 29c7d04..cf6bad1 100644
> --- a/drivers/gpu/drm/armada/armada_fbdev.c
> +++ b/drivers/gpu/drm/armada/armada_fbdev.c
> @@ -52,13 +52,13 @@ static int armada_fb_create(struct drm_fb_helper *fbh,
>
>         ret = armada_gem_linear_back(dev, obj);
>         if (ret) {
> -               drm_gem_object_unreference_unlocked(&obj->obj);
> +               drm_gem_object_put_unlocked(&obj->obj);
>                 return ret;
>         }
>
>         ptr = armada_gem_map_object(dev, obj);
>         if (!ptr) {
> -               drm_gem_object_unreference_unlocked(&obj->obj);
> +               drm_gem_object_put_unlocked(&obj->obj);
>                 return -ENOMEM;
>         }
>
> @@ -68,7 +68,7 @@ static int armada_fb_create(struct drm_fb_helper *fbh,
>          * A reference is now held by the framebuffer object if
>          * successful, otherwise this drops the ref for the error path.
>          */
> -       drm_gem_object_unreference_unlocked(&obj->obj);
> +       drm_gem_object_put_unlocked(&obj->obj);
>
>         if (IS_ERR(dfb))
>                 return PTR_ERR(dfb);
> diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
> index a76ca21..49d40aa 100644
> --- a/drivers/gpu/drm/armada/armada_gem.c
> +++ b/drivers/gpu/drm/armada/armada_gem.c
> @@ -266,7 +266,7 @@ int armada_gem_dumb_create(struct drm_file *file, struct drm_device *dev,
>         /* drop reference from allocate - handle holds it now */
>         DRM_DEBUG_DRIVER("obj %p size %zu handle %#x\n", dobj, size, handle);
>   err:
> -       drm_gem_object_unreference_unlocked(&dobj->obj);
> +       drm_gem_object_put_unlocked(&dobj->obj);
>         return ret;
>  }
>
> @@ -295,7 +295,7 @@ int armada_gem_dumb_map_offset(struct drm_file *file, struct drm_device *dev,
>         }
>
>   err_unref:
> -       drm_gem_object_unreference_unlocked(&obj->obj);
> +       drm_gem_object_put_unlocked(&obj->obj);
>
>         return ret;
>  }
> @@ -334,7 +334,7 @@ int armada_gem_create_ioctl(struct drm_device *dev, void *data,
>         /* drop reference from allocate - handle holds it now */
>         DRM_DEBUG_DRIVER("obj %p size %zu handle %#x\n", dobj, size, handle);
>   err:
> -       drm_gem_object_unreference_unlocked(&dobj->obj);
> +       drm_gem_object_put_unlocked(&dobj->obj);
>         return ret;
>  }
>
> @@ -351,13 +351,13 @@ int armada_gem_mmap_ioctl(struct drm_device *dev, void *data,
>                 return -ENOENT;
>
>         if (!dobj->obj.filp) {
> -               drm_gem_object_unreference_unlocked(&dobj->obj);
> +               drm_gem_object_put_unlocked(&dobj->obj);
>                 return -EINVAL;
>         }
>
>         addr = vm_mmap(dobj->obj.filp, 0, args->size, PROT_READ | PROT_WRITE,
>                        MAP_SHARED, args->offset);
> -       drm_gem_object_unreference_unlocked(&dobj->obj);
> +       drm_gem_object_put_unlocked(&dobj->obj);
>         if (IS_ERR_VALUE(addr))
>                 return addr;
>
> @@ -412,7 +412,7 @@ int armada_gem_pwrite_ioctl(struct drm_device *dev, void *data,
>         }
>
>   unref:
> -       drm_gem_object_unreference_unlocked(&dobj->obj);
> +       drm_gem_object_put_unlocked(&dobj->obj);
>         return ret;
>  }
>
> @@ -561,7 +561,7 @@ armada_gem_prime_import(struct drm_device *dev, struct dma_buf *buf)
>                          * Importing our own dmabuf(s) increases the
>                          * refcount on the gem object itself.
>                          */
> -                       drm_gem_object_reference(obj);
> +                       drm_gem_object_get(obj);
>                         return obj;
>                 }
>         }
> --
> 2.7.4
>


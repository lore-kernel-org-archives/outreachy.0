X-GM-THRID: 6466935626239311872
X-Received: by 10.159.34.104 with SMTP id 95mr3680507uad.85.1508180623048;
        Mon, 16 Oct 2017 12:03:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.132.145 with SMTP id g139ls1460906vkd.2.gmail; Mon, 16 Oct
 2017 12:03:42 -0700 (PDT)
X-Received: by 10.159.38.130 with SMTP id 2mr2076791uay.100.1508180621983;
        Mon, 16 Oct 2017 12:03:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508180621; cv=none;
        d=google.com; s=arc-20160816;
        b=pusG/2KOp0epDHa/rfJd7oy++matwEwCRQi44FfcB4cRPsRRGeMOYdBiTw+R/kOraw
         bzQ0wLqem1nuMjs3oMuIlrMg3UY8YOHpslDTXq3z0nCNgY6B+f3CqTruInfW8fK2D/lr
         LmyXI3dfiQ7lKTRNtAW73GsJFGAI+yj0SV0geamCKWtdxqMWOfTqRNGfI2IuVPRepmsi
         YURE8MArnE5xGiegNNGLa97zV/9gvSslrlbuIM7SIkYESVgqLqw9TfHmdUhZvbNa1rT1
         GsxH2cNWidrx8KJ9s2/KFUDj9dghOEs6FdRnKkK3Cl8hlckJI4WVTsb55AL7aX3wX7dQ
         39/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=BeGngX4mMbLrDEl7Htz1heGb+XVDEizsjniQ9tCNJ44=;
        b=a11CopkOVc6Lf5nmVXaTTwWVmGRm3ji4BfDsJvyFtkLiveO3NQbRGppxcPHMyB9BvW
         z7t4dvUlBaWoW3bId4CuEwGWpL8FGBhKVsxyzEfPDnyXw2RyDhw1NxiRk5DHEoaKeHbV
         DJeBMpNw3UuxI7b/qa7rckU8ojbMW6qpFjQrkTzhVHff60zcRsmsPly7Wnv6odx9i534
         uRK9eCyf71k9aIc+NSYTpEn4F61EHAiENSWFdXDIpCYnD0jfGi9dQJ6UOcaHmkzZHjp8
         iNwxQIru7hVrS4c8ieKD7xMJ9id1uvAqMbNsLDWQWPJv+fJ47IdLi4jgp3Zmbmm4U9Ow
         hxzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XJ9zyRe/;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::230 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x230.google.com (mail-qt0-x230.google.com. [2607:f8b0:400d:c0d::230])
        by gmr-mx.google.com with ESMTPS id d33si626050uai.0.2017.10.16.12.03.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 12:03:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::230 as permitted sender) client-ip=2607:f8b0:400d:c0d::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XJ9zyRe/;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::230 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x230.google.com with SMTP id z50so33900634qtj.4
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 12:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BeGngX4mMbLrDEl7Htz1heGb+XVDEizsjniQ9tCNJ44=;
        b=XJ9zyRe/1/MkAp7lA3J+z5pbda/fC9QxTyO1SkhHXpl+wDFe35c9od/Alq9waR0ubW
         7zGLv7vWb3nJ04HO1W0COkkyMfOH+QiXV+/ViqmHtPjHnZ4o/d/3F94/86zFBYGIkKJd
         Cx8sJ7JYSYafrBlCZmEVI1GLMjEC7WZSdD32s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BeGngX4mMbLrDEl7Htz1heGb+XVDEizsjniQ9tCNJ44=;
        b=AOTiTyCqk+sH57kvznAN+QbEeYu486SQotfMw4zUBaUg51fpJZ1Xu3r5XYNXpsfqI4
         tCSr6TQi1d/JzlCrEy5NUtdxO/uARzuC1fnEjbNp6c8ysE3npMDyAoFRY1/lIbukmhJG
         eBvICDEOOr4thKeoATewVHBtERBQBoyD77iC+w4QgD95B2U1MXMmzQ4lwluTuV+pUrg2
         K+tfETuR4CTISNV0/dAnTctYkMYw2vbkG1wc6+rXFPkTTkHVJiV1Yx4yLOtYAGKEL3GY
         v/1Q5Gz8VrLVv3kX8+/KySMIsqGSokfgSRSBhAbot63Ov/IijMEU3ub9LPICrV8Q95D5
         9ESQ==
X-Gm-Message-State: AMCzsaVlIAK/zlicM9WrGDu0LpPUSyd1Zk64fjDFKux9pkEzz9vKozr0
	vqtsxLfOu7tLJ9fl2uR3OjNqHa36Duc=
X-Google-Smtp-Source: ABhQp+RFJ72k0UhG+8KwdcL1zVI3UkMF4+oDwAEADlqhoxIJ2rQnF7V7BxPruC70fUtkcm0JTYY52Q==
X-Received: by 10.129.135.65 with SMTP id x62mr1036217ywf.267.1508180621441;
        Mon, 16 Oct 2017 12:03:41 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:0:f685:3152:9ba1:429a])
        by smtp.gmail.com with ESMTPSA id v130sm3222514ywa.69.2017.10.16.12.03.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Oct 2017 12:03:40 -0700 (PDT)
Date: Mon, 16 Oct 2017 15:03:40 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Russell King <linux@armlinux.org.uk>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [RESEND PATCH 1/2] drm/armada: Replace
 drm_gem_object_reference/unreference() with _get/put()
Message-ID: <20171016190340.iyvsylscn4vi5fvk@art_vandelay>
References: <cover.1505932812.git.hamohammed.sa@gmail.com>
 <a59ef1ed109ade897bcffcb01b33214262db8942.1505932812.git.hamohammed.sa@gmail.com>
 <CAOw6vbLLGUs=xjKYSOpAOOF6aJPD5uoja8fwDybpXoS3ptR5Sg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOw6vbLLGUs=xjKYSOpAOOF6aJPD5uoja8fwDybpXoS3ptR5Sg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)

On Wed, Sep 20, 2017 at 12:01:05PM -0700, Sean Paul wrote:
> On Wed, Sep 20, 2017 at 11:54 AM, Haneen Mohammed
> <hamohammed.sa@gmail.com> wrote:
> > This patch replace instances of drm_gem_object_reference/unreference with
> > *_get/put() suffixes, because get/put is shorter and consistent with the
> > kernel use of *_get/put() suffixes.
> > This was done with the following Coccinelle script:
> >
> > @r1@
> > expression e;
> > @@
> >
> > (
> > -drm_gem_object_reference(e);
> > +drm_gem_object_get(e);
> > |
> > -drm_gem_object_unreference(e);
> > +drm_gem_object_put(e);
> > |
> > -drm_gem_object_unreference_unlocked(e);
> > +drm_gem_object_put_unlocked(e);
> > )
> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> 
> Reviewed-by: Sean Paul <seanpaul@chromium.org>

Applied to drm-misc-next

Thanks for your patch!

Sean

> 
> > ---
> >  drivers/gpu/drm/armada/armada_crtc.c  |  8 ++++----
> >  drivers/gpu/drm/armada/armada_fb.c    |  8 ++++----
> >  drivers/gpu/drm/armada/armada_fbdev.c |  6 +++---
> >  drivers/gpu/drm/armada/armada_gem.c   | 14 +++++++-------
> >  4 files changed, 18 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
> > index 2a4d163..381dfa1 100644
> > --- a/drivers/gpu/drm/armada/armada_crtc.c
> > +++ b/drivers/gpu/drm/armada/armada_crtc.c
> > @@ -947,13 +947,13 @@ static int armada_drm_crtc_cursor_set(struct drm_crtc *crtc,
> >
> >                 /* Must be a kernel-mapped object */
> >                 if (!obj->addr) {
> > -                       drm_gem_object_unreference_unlocked(&obj->obj);
> > +                       drm_gem_object_put_unlocked(&obj->obj);
> >                         return -EINVAL;
> >                 }
> >
> >                 if (obj->obj.size < w * h * 4) {
> >                         DRM_ERROR("buffer is too small\n");
> > -                       drm_gem_object_unreference_unlocked(&obj->obj);
> > +                       drm_gem_object_put_unlocked(&obj->obj);
> >                         return -ENOMEM;
> >                 }
> >         }
> > @@ -961,7 +961,7 @@ static int armada_drm_crtc_cursor_set(struct drm_crtc *crtc,
> >         if (dcrtc->cursor_obj) {
> >                 dcrtc->cursor_obj->update = NULL;
> >                 dcrtc->cursor_obj->update_data = NULL;
> > -               drm_gem_object_unreference_unlocked(&dcrtc->cursor_obj->obj);
> > +               drm_gem_object_put_unlocked(&dcrtc->cursor_obj->obj);
> >         }
> >         dcrtc->cursor_obj = obj;
> >         dcrtc->cursor_w = w;
> > @@ -997,7 +997,7 @@ static void armada_drm_crtc_destroy(struct drm_crtc *crtc)
> >         struct armada_private *priv = crtc->dev->dev_private;
> >
> >         if (dcrtc->cursor_obj)
> > -               drm_gem_object_unreference_unlocked(&dcrtc->cursor_obj->obj);
> > +               drm_gem_object_put_unlocked(&dcrtc->cursor_obj->obj);
> >
> >         priv->dcrtc[dcrtc->num] = NULL;
> >         drm_crtc_cleanup(&dcrtc->crtc);
> > diff --git a/drivers/gpu/drm/armada/armada_fb.c b/drivers/gpu/drm/armada/armada_fb.c
> > index 92e6b08..51839c1 100644
> > --- a/drivers/gpu/drm/armada/armada_fb.c
> > +++ b/drivers/gpu/drm/armada/armada_fb.c
> > @@ -18,7 +18,7 @@ static void armada_fb_destroy(struct drm_framebuffer *fb)
> >         struct armada_framebuffer *dfb = drm_fb_to_armada_fb(fb);
> >
> >         drm_framebuffer_cleanup(&dfb->fb);
> > -       drm_gem_object_unreference_unlocked(&dfb->obj->obj);
> > +       drm_gem_object_put_unlocked(&dfb->obj->obj);
> >         kfree(dfb);
> >  }
> >
> > @@ -95,7 +95,7 @@ struct armada_framebuffer *armada_framebuffer_create(struct drm_device *dev,
> >          * the above call, but the caller will drop their reference
> >          * to it.  Hence we need to take our own reference.
> >          */
> > -       drm_gem_object_reference(&obj->obj);
> > +       drm_gem_object_get(&obj->obj);
> >
> >         return dfb;
> >  }
> > @@ -144,12 +144,12 @@ static struct drm_framebuffer *armada_fb_create(struct drm_device *dev,
> >                 goto err;
> >         }
> >
> > -       drm_gem_object_unreference_unlocked(&obj->obj);
> > +       drm_gem_object_put_unlocked(&obj->obj);
> >
> >         return &dfb->fb;
> >
> >   err_unref:
> > -       drm_gem_object_unreference_unlocked(&obj->obj);
> > +       drm_gem_object_put_unlocked(&obj->obj);
> >   err:
> >         DRM_ERROR("failed to initialize framebuffer: %d\n", ret);
> >         return ERR_PTR(ret);
> > diff --git a/drivers/gpu/drm/armada/armada_fbdev.c b/drivers/gpu/drm/armada/armada_fbdev.c
> > index 29c7d04..cf6bad1 100644
> > --- a/drivers/gpu/drm/armada/armada_fbdev.c
> > +++ b/drivers/gpu/drm/armada/armada_fbdev.c
> > @@ -52,13 +52,13 @@ static int armada_fb_create(struct drm_fb_helper *fbh,
> >
> >         ret = armada_gem_linear_back(dev, obj);
> >         if (ret) {
> > -               drm_gem_object_unreference_unlocked(&obj->obj);
> > +               drm_gem_object_put_unlocked(&obj->obj);
> >                 return ret;
> >         }
> >
> >         ptr = armada_gem_map_object(dev, obj);
> >         if (!ptr) {
> > -               drm_gem_object_unreference_unlocked(&obj->obj);
> > +               drm_gem_object_put_unlocked(&obj->obj);
> >                 return -ENOMEM;
> >         }
> >
> > @@ -68,7 +68,7 @@ static int armada_fb_create(struct drm_fb_helper *fbh,
> >          * A reference is now held by the framebuffer object if
> >          * successful, otherwise this drops the ref for the error path.
> >          */
> > -       drm_gem_object_unreference_unlocked(&obj->obj);
> > +       drm_gem_object_put_unlocked(&obj->obj);
> >
> >         if (IS_ERR(dfb))
> >                 return PTR_ERR(dfb);
> > diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
> > index a76ca21..49d40aa 100644
> > --- a/drivers/gpu/drm/armada/armada_gem.c
> > +++ b/drivers/gpu/drm/armada/armada_gem.c
> > @@ -266,7 +266,7 @@ int armada_gem_dumb_create(struct drm_file *file, struct drm_device *dev,
> >         /* drop reference from allocate - handle holds it now */
> >         DRM_DEBUG_DRIVER("obj %p size %zu handle %#x\n", dobj, size, handle);
> >   err:
> > -       drm_gem_object_unreference_unlocked(&dobj->obj);
> > +       drm_gem_object_put_unlocked(&dobj->obj);
> >         return ret;
> >  }
> >
> > @@ -295,7 +295,7 @@ int armada_gem_dumb_map_offset(struct drm_file *file, struct drm_device *dev,
> >         }
> >
> >   err_unref:
> > -       drm_gem_object_unreference_unlocked(&obj->obj);
> > +       drm_gem_object_put_unlocked(&obj->obj);
> >
> >         return ret;
> >  }
> > @@ -334,7 +334,7 @@ int armada_gem_create_ioctl(struct drm_device *dev, void *data,
> >         /* drop reference from allocate - handle holds it now */
> >         DRM_DEBUG_DRIVER("obj %p size %zu handle %#x\n", dobj, size, handle);
> >   err:
> > -       drm_gem_object_unreference_unlocked(&dobj->obj);
> > +       drm_gem_object_put_unlocked(&dobj->obj);
> >         return ret;
> >  }
> >
> > @@ -351,13 +351,13 @@ int armada_gem_mmap_ioctl(struct drm_device *dev, void *data,
> >                 return -ENOENT;
> >
> >         if (!dobj->obj.filp) {
> > -               drm_gem_object_unreference_unlocked(&dobj->obj);
> > +               drm_gem_object_put_unlocked(&dobj->obj);
> >                 return -EINVAL;
> >         }
> >
> >         addr = vm_mmap(dobj->obj.filp, 0, args->size, PROT_READ | PROT_WRITE,
> >                        MAP_SHARED, args->offset);
> > -       drm_gem_object_unreference_unlocked(&dobj->obj);
> > +       drm_gem_object_put_unlocked(&dobj->obj);
> >         if (IS_ERR_VALUE(addr))
> >                 return addr;
> >
> > @@ -412,7 +412,7 @@ int armada_gem_pwrite_ioctl(struct drm_device *dev, void *data,
> >         }
> >
> >   unref:
> > -       drm_gem_object_unreference_unlocked(&dobj->obj);
> > +       drm_gem_object_put_unlocked(&dobj->obj);
> >         return ret;
> >  }
> >
> > @@ -561,7 +561,7 @@ armada_gem_prime_import(struct drm_device *dev, struct dma_buf *buf)
> >                          * Importing our own dmabuf(s) increases the
> >                          * refcount on the gem object itself.
> >                          */
> > -                       drm_gem_object_reference(obj);
> > +                       drm_gem_object_get(obj);
> >                         return obj;
> >                 }
> >         }
> > --
> > 2.7.4
> >

-- 
Sean Paul, Software Engineer, Google / Chromium OS


X-GM-THRID: 6468320417923727360
X-Received: by 10.28.6.76 with SMTP id 73mr303899wmg.26.1506424431310;
        Tue, 26 Sep 2017 04:13:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.155.208 with SMTP id e16ls3326079wrc.11.gmail; Tue, 26 Sep
 2017 04:13:50 -0700 (PDT)
X-Received: by 10.28.24.207 with SMTP id 198mr328778wmy.12.1506424430411;
        Tue, 26 Sep 2017 04:13:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506424430; cv=none;
        d=google.com; s=arc-20160816;
        b=o0uh5k+lAh10kxkhsw66SB+jHp8Q8ZvJbmk36eJvcBNoBhhWV9QY/Ii0OmpjYXnObC
         wUjVHEhwmbyTxdKiwRIooqSgSvkNhJqBSGI24a8YNPJ7r1iGrOj+Prg//FT77mFMivrW
         GDAziR8G2JjGp9FnQB/sCWwTVAswLbj49OnltzHu1jf9o0MPs300ZGKN6rwDcXZ+5xD+
         ii2oQb3at/6/e1Ys7mLqBHV6qEvVLPKkVUFovdxAeL6+IRhTSOp2pRXhWh927b/ETotu
         erDNpsp5mNDVmwZkQYxFOVpeqEC3o+zV1aeYehsJCuXl6QPrtHLJf8+bq0mthXo9UGho
         8cbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:arc-authentication-results;
        bh=/mo3EEz7m019JPiRxtAUJl1NdEc/waerPLi6eWmZVpM=;
        b=C7crUnSOhv/dHMzqUAXucaJGVXEhsmpZ0/dXvHvzWvajdid8zych/pJ+o6PSEb/Xof
         pjZjAZclE6FB/i82Cr1XInDL2/+YGiQuXyPvPzcIFG/0Ec/rQXeEnU/xJWwnxFitlukT
         iWqpkJoJBJnhV/al05H5Y43o7rjcW2MCxPspcQf8ZgZ0LKYQ81uRxp0Cu+5EHrUALhFY
         8NsfMj6a7E26WkENvfBV4KJ4DzfP5ndFxb++BDB3wKeaJdW5jONirDcUwJwMDFwKQXBq
         JJdrF50/1/HgJSkk1gFNuN8P9Z+cgzhhMxmiYDKY7r7GlTMuNjklAI4lgC7a+G4qnHnC
         f6ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=NRr+V5E3;
       spf=neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id 191si101108wmn.2.2017.09.26.04.13.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 04:13:50 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=NRr+V5E3;
       spf=neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x244.google.com with SMTP id f4so9029822wmh.4
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 04:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=/mo3EEz7m019JPiRxtAUJl1NdEc/waerPLi6eWmZVpM=;
        b=NRr+V5E3gvz6D02nUM7aHtiB3gaY17Hs3EEe8DUVA0jgufS0Nb7fl6gJnedK9Hqaef
         bF3A+9DsF9i7WiCJCT3N9yqctkXRtWOPNqlQBp3fcYBQWuYSOqUPNyUJskOlot4H4MZv
         3o1McvOrofS0AxA4Jsy3NYWuOUr7OpLt0/MsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=/mo3EEz7m019JPiRxtAUJl1NdEc/waerPLi6eWmZVpM=;
        b=WH4Gmp4GJeWd/Zds/je7Ao4QvKQTRPIWZ1udtbtgOyotS9vUbp/3d4h5vASO7yHKRe
         tbHzuvgYCrOuUraHXSZSi2dlWpPe0xapL5XkVdccUZgqbWe67n6cBSZPPx3Wse4JOm5i
         K+90CPWFa93SLJUPb7v8ioAnSz+g/HDsMFGEebjeoxJC3fsdqHOTvykc+bc8kIyqEB8K
         +Suza0Yw4WMlQYzkwG2Mqry7tn2epzI99Bb1fW6tTBwO5b+uDEfOUY8wMmhXU3YwEuHB
         KJVQXvwOCpDE9MyWVro1QDu4bw0elo71qxmtpwr3pGfTgrYKYjhZ8+pCREvzB91sjiq8
         g5kg==
X-Gm-Message-State: AHPjjUjVNyMnoje4tl/PZj3fMhvahV7q36RrcRiDSbymwqmUthrD6Foh
	ljzJTGj3i92S02IwpCxVVssGPM2O
X-Google-Smtp-Source: AOwi7QDrukzD//hhmxcGhPltCd7ShopqY1Oi6oCqgLncv7pjmOnbiAr9z1SoMyV+8wV1d4aBGjUOkg==
X-Received: by 10.80.137.19 with SMTP id e19mr17623554ede.32.1506424429938;
        Tue, 26 Sep 2017 04:13:49 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id j37sm5615483ede.12.2017.09.26.04.13.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Sep 2017 04:13:49 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 26 Sep 2017 13:13:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jyri Sarha <jsarha@ti.com>
Cc: Aishwarya Pant <aishpant@gmail.com>,
	Tomi Valkeinen <tomi.valkeinen@ti.com>,
	David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 2/2] drm/tilcdc: replace reference/unreference() with
 get/put
Message-ID: <20170926111347.oueyffwwv3lgq6pw@phenom.ffwll.local>
References: <cover.1506413698.git.aishpant@gmail.com>
 <3f2f592f6ea28adfea3fd8b70421b2fab38f0b94.1506413698.git.aishpant@gmail.com>
 <093fde5b-5043-48d4-e595-7b35fce1a8c7@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <093fde5b-5043-48d4-e595-7b35fce1a8c7@ti.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Tue, Sep 26, 2017 at 12:18:06PM +0300, Jyri Sarha wrote:
> ﻿
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 
> On 09/26/17 11:30, Aishwarya Pant wrote:
> > For maintaining consistency with kernel coding style replace
> > reference/unreference in ref counting functions with get/put.
> > 
> > The following cocci script was used to generate the tilcdc patch:
> > 
> > @@
> > expression ex;
> > @@
> > 
> > (
> > -drm_framebuffer_unreference(ex);
> > +drm_framebuffer_put(ex);
> > |
> > -drm_dev_unref(ex);
> > +drm_dev_put(ex);
> > |
> > -drm_framebuffer_reference(ex);
> > +drm_framebuffer_get(ex);
> > )
> > 
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> 
> Acked-by: Jyri Sarha <jsarha@ti.com>
> 
> I guess this should go in via drm-misc at the same time with
> "drm: introduce drm_dev_{get/put} functions".

Yup, this one needs the previous one, both pushed to drm-misc-next.

Aishwarya, while reviewing your patches I've noticed that you've missed to
case of drm_dev_unref() in the drm core code, one in drm_pci.c and one in
drm_prime.c. Can you pls do a follow-up patch to address these two? Fixing
up the core completely is nice, drivers can be done later on (also by
others, this is a prefect newbies tasks). But making sure the core is
consistent is good I think.
-Daniel

> 
> Best regards,
> Jyri
> 
> 
> > ---
> > No changes in v2
> > 
> > drivers/gpu/drm/tilcdc/tilcdc_crtc.c | 6 +++---
> >  drivers/gpu/drm/tilcdc/tilcdc_drv.c  | 2 +-
> >  2 files changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/tilcdc/tilcdc_crtc.c b/drivers/gpu/drm/tilcdc/tilcdc_crtc.c
> > index 406fe45..d2589f310 100644
> > --- a/drivers/gpu/drm/tilcdc/tilcdc_crtc.c
> > +++ b/drivers/gpu/drm/tilcdc/tilcdc_crtc.c
> > @@ -75,7 +75,7 @@ static void unref_worker(struct drm_flip_work *work, void *val)
> >  	struct drm_device *dev = tilcdc_crtc->base.dev;
> >  
> >  	mutex_lock(&dev->mode_config.mutex);
> > -	drm_framebuffer_unreference(val);
> > +	drm_framebuffer_put(val);
> >  	mutex_unlock(&dev->mode_config.mutex);
> >  }
> >  
> > @@ -456,7 +456,7 @@ static void tilcdc_crtc_set_mode(struct drm_crtc *crtc)
> >  
> >  	set_scanout(crtc, fb);
> >  
> > -	drm_framebuffer_reference(fb);
> > +	drm_framebuffer_get(fb);
> >  
> >  	crtc->hwmode = crtc->state->adjusted_mode;
> >  }
> > @@ -633,7 +633,7 @@ int tilcdc_crtc_update_fb(struct drm_crtc *crtc,
> >  		return -EBUSY;
> >  	}
> >  
> > -	drm_framebuffer_reference(fb);
> > +	drm_framebuffer_get(fb);
> >  
> >  	crtc->primary->fb = fb;
> >  	tilcdc_crtc->event = event;
> > diff --git a/drivers/gpu/drm/tilcdc/tilcdc_drv.c b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
> > index b0d70f9..74276ef 100644
> > --- a/drivers/gpu/drm/tilcdc/tilcdc_drv.c
> > +++ b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
> > @@ -225,7 +225,7 @@ static void tilcdc_fini(struct drm_device *dev)
> >  
> >  	pm_runtime_disable(dev->dev);
> >  
> > -	drm_dev_unref(dev);
> > +	drm_dev_put(dev);
> >  }
> >  
> >  static int tilcdc_init(struct drm_driver *ddrv, struct device *dev)
> > 
> 
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


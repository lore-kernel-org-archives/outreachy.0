X-GM-THRID: 6470456120502648832
X-Received: by 10.99.96.15 with SMTP id u15mr850759pgb.138.1506656869835;
        Thu, 28 Sep 2017 20:47:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.253.142 with SMTP id q14ls1650026pls.0.gmail; Thu, 28 Sep
 2017 20:47:48 -0700 (PDT)
X-Received: by 10.99.97.16 with SMTP id v16mr204156pgb.30.1506656868814;
        Thu, 28 Sep 2017 20:47:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506656868; cv=none;
        d=google.com; s=arc-20160816;
        b=snlGjizunC9oGQlnm1KddiclY88intECZCSXbn3oRGIMjYzy2epQfDOAKbxYUrGQVr
         10TrwhHC6ElHcX4rZYAGZ20kfx5T7N8wBJlIgvOCQaI6tpp+36TMr9UoN6CoSz+wu+A9
         K2lTYlVmImyFYHWkAghxwiBxh7o4IJEVgU1UEK21MMwQrk7ZmxDKuirIL93O1jmTmWCC
         aBRTBG+OwmAWy8YLlveMQaCm5I9wFwA1xlsBgYtsEhDQzOAz2Oh3R/bjtoO/MV1bstJm
         aaZpBOGaTap0k2j7oaAq7peadQYCjnR0/sNxX1gGx3n1Ycli0+Khg/tGkiM8WUgcW3Oi
         FoRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=Ls4qyqkjvKf2s8gzmiDjsHj51S7kVojN1evn4ULPlSc=;
        b=TX/ONMz9dSj2lAE0ICDMJPP95h77/ruYan+qV0sPLaxNAomfiuL03+utiyOph2qd1z
         UP79NINKfQ44AJcdHzYKMvxkS/relWi5dDtMqcPKmcCZ4M6ykyG4UmXTas5WbxcHItPK
         YuFD2eDDBLMzHYcYPtvb+m15mO6CIM2XDoM24IFErrSr7z8nfFg+DfHfkJuGSmsZCA6U
         9NW3hk5XHMUtFWUHLAqJ3UIWAqXUxZcRIvB+4k9CMs/vq+9sA5AYVhrCaKBWwPCY24bb
         M95FV5NEx8pZnuE89gZz+S/gPJfZNVH3+CgMlW9NZG6KbsMzL6+eXHKzxZBiMZpVgPlU
         Ez/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TApqsOA6;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id q65si429825pfj.8.2017.09.28.20.47.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 20:47:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TApqsOA6;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id y192so154918pgd.5
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 20:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=Ls4qyqkjvKf2s8gzmiDjsHj51S7kVojN1evn4ULPlSc=;
        b=TApqsOA6OBUSI6Wo2N2lbbfQRFCBdaw3G4ZQogTQguAg1/oHsD/icK8EskBsJJQOoi
         Hlrl+34CwLLxPVxnlltog7nKtlHJPS01mTXwONQ/uGdyGZsFBGw3anWofUKHwXzf8686
         UHgouJu8wicBY6PxHRuz+I4zvs6mNjP/JiB9Y9h0i3lcGYolfRamdQOqVhAmdrg2F9hH
         tO25ZuwI/LY70DmjF6+h+jl4DG0BybSn2gX3w1CHXZPuWH2K4xI48lFXh1dpVFZGaE77
         swuoIL8o9Jbo9b+MOprLEY3HPgY/bjfkbpUIJxHvxKzbypIBoS2Fiq7/N62tlbofBe+T
         qRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Ls4qyqkjvKf2s8gzmiDjsHj51S7kVojN1evn4ULPlSc=;
        b=Jdws0E/368y1F4eS4chQ+V+ltLzB5Yl42/IRgALIscqNWQWD4GxFzNuV5M2Z+EPar+
         debL58cchanRCdC5ehdQFYVWg8Sbrl51nlomBg6iny0fdBnAelZgnOuEN4CGpqxYgxsZ
         9tLY4B3ddxWoaEayoAkq6HiVw7xcyvPae9qkd4HyfxSJ0BKCPtZht1XsCQTsC4Z/pogN
         ce9KsnR9EcaNbqB3/ZhQhut0PjAvPmhJ3c9DZC9zu6VttFNbK6f7G2p7FnMuFxnsEcjy
         7aD9Iju7CGCV1nneSs/0dfX0k5SbC6KZnIp/8z/3HVs2Ia+jTkewug4+hWtJRkG7+5rs
         CV4g==
X-Gm-Message-State: AHPjjUiZXtigiGThzJYoU1LFgUw99GnmE5nqbcMh7lf4Dja/P0i1D4jQ
	+UsQ/c8tTfiJd431OfKZrFY=
X-Google-Smtp-Source: AOwi7QDb7nlLhzCg3ufWePKMU/2D4LcuAHkJN7XRHmWT6eC2Lr6F4AjgxDRZvpNsAsjVBkT6CBqOag==
X-Received: by 10.84.168.132 with SMTP id f4mr5514205plb.253.1506656868463;
        Thu, 28 Sep 2017 20:47:48 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id f9sm4806791pfe.150.2017.09.28.20.47.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 20:47:47 -0700 (PDT)
Date: Fri, 29 Sep 2017 09:17:41 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
Message-ID: <20170929034738.GC9859@meghana-HP-Pavilion-Notebook>
References: <20170927135409.GA5027@meghana-HP-Pavilion-Notebook>
 <9e838b3f-1a40-57de-b270-0995658613eb@tronnes.org>
 <20170928071539.jtpjefind3xishap@phenom.ffwll.local>
 <20170928092709.GA21361@meghana-HP-Pavilion-Notebook>
 <CAKMK7uFtssdHTgkgmMqX_O73y1gtH2b6HfiDW3s89o1vGOZaag@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKMK7uFtssdHTgkgmMqX_O73y1gtH2b6HfiDW3s89o1vGOZaag@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 28, 2017 at 11:38:36AM +0200, Daniel Vetter wrote:
> On Thu, Sep 28, 2017 at 11:27 AM, Meghana Madhyastha
> <meghana.madhyastha@gmail.com> wrote:
> > On Thu, Sep 28, 2017 at 09:15:39AM +0200, Daniel Vetter wrote:
> >> On Wed, Sep 27, 2017 at 05:08:07PM +0200, Noralf Tr�nnes wrote:
> >> >
> >> > Den 27.09.2017 15.54, skrev Meghana Madhyastha:
> >> > > Rename tinydrm_of_find_backlight to drm_of_find_backlight
> >> > > and move it into drm_of.c from tinydrm-helpers.c. This is
> >> > > because other drivers in the drm subsystem might need to call
> >> > > this function. In that case and otherwise, it is better from
> >> > > an organizational point of view to move it into drm_of.c along
> >> > > with the other _of.c functions.
> >> > >
> >> > > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> >> > > ---
> >> >
> >> > I suggest you split this patch in 2, one to add the function and one to
> >> > use it in tinydrm.
> >>
> >> In general I'd agree to split into 3 phases: 1) add new function 2)
> >> convert drivers 3) remove old one.
> >>
> >> But since there's only 1 caller this seems like overkill.
> >>
> >> > >   drivers/gpu/drm/drm_of.c                       | 41 ++++++++++++++++++++++++++
> >> > >   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -------------------------
> >> > >   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
> >> > >   include/drm/drm_of.h                           |  1 +
> >> > >   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
> >> > >   5 files changed, 44 insertions(+), 42 deletions(-)
> >> > >
> >> > > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> >> > > index 8dafbdf..d8cded3 100644
> >> > > --- a/drivers/gpu/drm/drm_of.c
> >> > > +++ b/drivers/gpu/drm/drm_of.c
> >> > > @@ -1,6 +1,7 @@
> >> > >   #include <linux/component.h>
> >> > >   #include <linux/export.h>
> >> > >   #include <linux/list.h>
> >> > > +#include <linux/backlight.h>
> >> > >   #include <linux/of_graph.h>
> >> > >   #include <drm/drmP.h>
> >> > >   #include <drm/drm_bridge.h>
> >> > > @@ -260,3 +261,43 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >> > >           return ret;
> >> > >   }
> >> > >   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
> >> > > +
> >> > > +/**
> >> > > + * drm_of_find_backlight - Find backlight device in device-tree
> >> > > + * @dev: Device
> >> > > + *
> >> > > + * This function looks for a DT node pointed to by a property named 'backlight'
> >> > > + * and uses of_find_backlight_by_node() to get the backlight device.
> >> > > + * Additionally if the brightness property is zero, it is set to
> >> > > + * max_brightness.
> >> >
> >> > Please add a note here about the callers responsibility to call
> >> > put_device() when releasing the resource.
> >> > See the of_find_backlight_by_node() docs.
> >> >
> >> > > + *
> >> > > + * Returns:
> >> > > + * NULL if there's no backlight property.
> >> > > + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >> > > + * is found.
> >> > > + * If the backlight device is found, a pointer to the structure is returned.
> >> > > + */
> >> > > +struct backlight_device *drm_of_find_backlight(struct device *dev)
> >> > > +{
> >> > > + struct backlight_device *backlight;
> >> > > + struct device_node *np;
> >> > > +
> >> > > + np = of_parse_phandle(dev->of_node, "backlight", 0);
> >> > > + if (!np)
> >> > > +         return NULL;
> >> > > +
> >> > > + backlight = of_find_backlight_by_node(np);
> >> > > + of_node_put(np);
> >> > > +
> >> > > + if (!backlight)
> >> > > +         return ERR_PTR(-EPROBE_DEFER);
> >> > > +
> >> > > + if (!backlight->props.brightness) {
> >> > > +         backlight->props.brightness = backlight->props.max_brightness;
> >> > > +         DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >> > > +                       backlight->props.brightness);
> >> > > + }
> >> > > +
> >> > > + return backlight;
> >> > > +}
> >> > > +EXPORT_SYMBOL(drm_of_find_backlight);
> >> >
> >> > Can you also please add a devm_ version of this function. tinydrm uses
> >> > devres[1] versions of functions for requiring device resources, so it
> >> > would be nice to do this for backlight as well. tinydrm is currently
> >> > broken in this respect, it doesn't put the backlight device.
> >> >
> >> > I had a devm_of_find_backlight() version lying around that I've adjusted
> >> > to give you an idea of what I'm talking about:
> >> >
> >> > static void devm_drm_of_find_backlight_release(void *data)
> >> > {
> >> >     put_device(data);
> >> > }
> >> >
> >> > struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
> >> > {
> >> >     struct backlight_device *backlight;
> >> >     int ret;
> >> >
> >> >     backlight = drm_of_find_backlight(dev);
> >> >     if (IS_ERR_OR_NULL(backlight))
> >> >         return backlight;
> >> >
> >> >     ret = devm_add_action(dev, devm_drm_of_find_backlight_release,
> >> >                   backlight->dev);
> >> >     if (ret) {
> >> >         put_device(backlight->dev);
> >> >         return ERR_PTR(ret);
> >> >     }
> >> >
> >> >     return backlight;
> >> > }
> >>
> >> Good idea for a follow up patch imo.
> >>
> >> Another follow up patch series which would be really good is then
> >> converting drivers over to using this (preferrably the devm_ version). A
> >> quick git grep shows there's quite a few.
> >
> > I have a quick question on this. I did a git grep and found that the
> > other drivers used the function of_find_backlight_by_node defined in
> > video/backlight. This seems to be doing a different thing (taking
> > struct device_node* as a parameter instead of struct device*).
> > Basically, this function finds the backlight device by device-tree node.
> > How would you suggest converting these cases ?
> 
> The function you're moving also uses of_find_backglight_by_node, but
> wraps it up to be more convenient for drm drivers. I didn't carefully
> audit all of them, but I'd assume a bunch of these other callers might
> be able to use the same convenience helper. But I might be wrong, and
> we need a drm_panel specific helper. Just something I've noticed and
> figured might be worth to check.
> -Daniel
 
Yes you are right. Sorry, I hadn't carefully looked into all of them,
but now having checked the calls, it looks like they can all be replaced by
of_find_backlight. The only thing extra of_find_backlight is doing is
setting the brightness to be the maximum brightness which makes sense here.
I can send in a patch to replace these.

> > Thanks and regards,
> > Meghana
> >
> >> Either way, the patch that adds these to the core should also add a TODO
> >> entry so we don't forget to complete this conversion.
> >>
> >> Thanks, Daniel
> >>
> >> >
> >> > [1] https://www.kernel.org/doc/Documentation/driver-model/devres.txt
> >> >
> >> > Noralf.
> >> >
> >> > > diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >> > > index bd6cce0..cd4c6a5 100644
> >> > > --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >> > > +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >> > > @@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >> > >   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> >> > >   /**
> >> > > - * tinydrm_of_find_backlight - Find backlight device in device-tree
> >> > > - * @dev: Device
> >> > > - *
> >> > > - * This function looks for a DT node pointed to by a property named 'backlight'
> >> > > - * and uses of_find_backlight_by_node() to get the backlight device.
> >> > > - * Additionally if the brightness property is zero, it is set to
> >> > > - * max_brightness.
> >> > > - *
> >> > > - * Returns:
> >> > > - * NULL if there's no backlight property.
> >> > > - * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >> > > - * is found.
> >> > > - * If the backlight device is found, a pointer to the structure is returned.
> >> > > - */
> >> > > -struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> >> > > -{
> >> > > - struct backlight_device *backlight;
> >> > > - struct device_node *np;
> >> > > -
> >> > > - np = of_parse_phandle(dev->of_node, "backlight", 0);
> >> > > - if (!np)
> >> > > -         return NULL;
> >> > > -
> >> > > - backlight = of_find_backlight_by_node(np);
> >> > > - of_node_put(np);
> >> > > -
> >> > > - if (!backlight)
> >> > > -         return ERR_PTR(-EPROBE_DEFER);
> >> > > -
> >> > > - if (!backlight->props.brightness) {
> >> > > -         backlight->props.brightness = backlight->props.max_brightness;
> >> > > -         DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >> > > -                       backlight->props.brightness);
> >> > > - }
> >> > > -
> >> > > - return backlight;
> >> > > -}
> >> > > -EXPORT_SYMBOL(tinydrm_of_find_backlight);
> >> > > -
> >> > > -/**
> >> > >    * tinydrm_enable_backlight - Enable backlight helper
> >> > >    * @backlight: Backlight device
> >> > >    *
> >> > > diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >> > > index 7e5bb7d..5e3d635 100644
> >> > > --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> >> > > +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >> > > @@ -12,6 +12,7 @@
> >> > >   #include <drm/tinydrm/ili9341.h>
> >> > >   #include <drm/tinydrm/mipi-dbi.h>
> >> > >   #include <drm/tinydrm/tinydrm-helpers.h>
> >> > > +#include <drm/drm_of.h>
> >> > >   #include <linux/delay.h>
> >> > >   #include <linux/gpio/consumer.h>
> >> > >   #include <linux/module.h>
> >> > > @@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
> >> > >           if (IS_ERR(mipi->regulator))
> >> > >                   return PTR_ERR(mipi->regulator);
> >> > > - mipi->backlight = tinydrm_of_find_backlight(dev);
> >> > > + mipi->backlight = drm_of_find_backlight(dev);
> >> > >           if (IS_ERR(mipi->backlight))
> >> > >                   return PTR_ERR(mipi->backlight);
> >> > > diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> >> > > index 104dd51..e8fba5b 100644
> >> > > --- a/include/drm/drm_of.h
> >> > > +++ b/include/drm/drm_of.h
> >> > > @@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >> > >                                   int port, int endpoint,
> >> > >                                   struct drm_panel **panel,
> >> > >                                   struct drm_bridge **bridge);
> >> > > +struct backlight_device *drm_of_find_backlight(struct device *dev);
> >> > >   #else
> >> > >   static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
> >> > >                                                     struct device_node *port)
> >> > > diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> >> > > index d554ded..e40ef2d 100644
> >> > > --- a/include/drm/tinydrm/tinydrm-helpers.h
> >> > > +++ b/include/drm/tinydrm/tinydrm-helpers.h
> >> > > @@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
> >> > >   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >> > >                                  struct drm_clip_rect *clip);
> >> > > -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> >> > >   int tinydrm_enable_backlight(struct backlight_device *backlight);
> >> > >   int tinydrm_disable_backlight(struct backlight_device *backlight);
> >> >
> >>
> >> --
> >> Daniel Vetter
> >> Software Engineer, Intel Corporation
> >> http://blog.ffwll.ch
> 
> 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch


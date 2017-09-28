X-GM-THRID: 6470456120502648832
X-Received: by 10.223.174.201 with SMTP id y67mr378323wrc.7.1506582944399;
        Thu, 28 Sep 2017 00:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.163.207 with SMTP id m15ls932142wrb.13.gmail; Thu, 28 Sep
 2017 00:15:43 -0700 (PDT)
X-Received: by 10.28.7.196 with SMTP id 187mr12728wmh.7.1506582943483;
        Thu, 28 Sep 2017 00:15:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506582943; cv=none;
        d=google.com; s=arc-20160816;
        b=WumB7JnIkPOqMaQ+/jZE6R33OzspWQ4agrR/OvvYfLRQfzgyHqsMPuuMWBNeaMw/+0
         TP16nIX8MxnFGe2F4hI6N6zNwjPmYXvDtnr6oQZDe17gl7GqkCRyKJRbLMxGQswZ7ro6
         LECh2AAQQnpiHUWsnbihVccJv+Nz4FAlmIJqspVFP6zUIcYduY90ezspTGGlH3GcdQn7
         ceiJV6i0gX3OhSIPMTg7iwvYcPmRe/FJbLQ8zvYl5HnYcQHEoYcAu8jEduvEeJuGXmro
         KYzdU2a+leFr/kw8uth7OPcM0xtJ9VGEcpne0nYhku6lZ4m76fMmmcLPPe7Vkqopr2Mt
         YJ2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:arc-authentication-results;
        bh=thWpVfJ+A6Z539DiFe9Pa3terXYhZNjBHtKMM5B4RDg=;
        b=C7dnJSBFt3R6YUFH/nlYsYUA1pq2ziXxONn4n2HivWHxJSo3a3xeRdwd/gvxSjd0T0
         2QW1JiuJ6TLi9WN3fBoP7Yomv7DXA0f9VW4JbCoGlEReewLbXyDSJL9KpqYgbCdoMwDb
         0dOYJ2jbCxN80l7/+IbFtSP2zzmiBU9+UJzPQg9vUI5zRo8ydSbLaX9Im8I4bLS8KsWO
         tZLYP9efjNikpRRQ4FPLdWx9ETKdxveXhE2D3w8xhtQWO1CtLsVeyXFWcoZcPM1muDa7
         5xgeR/VKnuUD9HzteVD2LmqRps5YlNq4+nJnEabq8LcABfSDZgmwCnYYKUy0Sx6M29Z6
         52MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=VobSkJGe;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id p200si5594wmg.4.2017.09.28.00.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 00:15:43 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=VobSkJGe;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x241.google.com with SMTP id r74so391345wme.3
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 00:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=thWpVfJ+A6Z539DiFe9Pa3terXYhZNjBHtKMM5B4RDg=;
        b=VobSkJGeuP0kx9Pb49YaYvuxT8RFPqntvIVtCOyj5BQy/nj6PqN4b0e3uP7M6awFok
         U43KX79Mka4Am/4EURxkDnGINFEraPmkaHUwe419v5T/fRr5I1FRw59sBxK/rFZ45Cnt
         VtCeae7SRxt9xIF3DqBGbURXYomYY195XFPzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=thWpVfJ+A6Z539DiFe9Pa3terXYhZNjBHtKMM5B4RDg=;
        b=N7nePjPxrTiAfHeQPNojaxmoyihi/f5n3vqH0jjMazd3OVUvcF6z09TNyB5vy6aBVk
         oMCf1HElxhettlMDo0D434mKDLebEETAO3F/kBW5bgIy0hLunNq8rscHr2gkHK/SWZqg
         3QWi4/U6c9ohgB21O4+CvliPhOd7GxYtXnxwaWGCivYGKPFgng0ZztOx+qKpmTW3Pxup
         cxFb9x0I0gDuHpXr9w3Q0YHuUd4okmPpP8Bo18h+32TMGUxY5J17DANpPkgVAnLwVXxU
         qz7XABtE2OMxWRwqo4rRxIlULS2148cwLOd4H3Kmf+xhQDm6T96+3rzOjg2xzVq9LK0G
         h8Zg==
X-Gm-Message-State: AHPjjUju7HtefDeRWRSgUQex5oRPRFnnTBnBH6ZO2eWpNwxpRWKt4gL5
	43Dld/nlVPZH/Pbi5vz/1x+A9w==
X-Google-Smtp-Source: AOwi7QCvMSW4dkXpffJRqI/qImQ4URKxIl4spvF8HvjqSiZV9MK0oZMUqLf6hXZiPH5HJS3GUIV+AQ==
X-Received: by 10.80.165.81 with SMTP id z17mr4751944edb.8.1506582942598;
        Thu, 28 Sep 2017 00:15:42 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id l33sm846381edd.94.2017.09.28.00.15.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Sep 2017 00:15:41 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 28 Sep 2017 09:15:39 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
Message-ID: <20170928071539.jtpjefind3xishap@phenom.ffwll.local>
References: <20170927135409.GA5027@meghana-HP-Pavilion-Notebook>
 <9e838b3f-1a40-57de-b270-0995658613eb@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9e838b3f-1a40-57de-b270-0995658613eb@tronnes.org>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Wed, Sep 27, 2017 at 05:08:07PM +0200, Noralf Tr�nnes wrote:
> 
> Den 27.09.2017 15.54, skrev Meghana Madhyastha:
> > Rename tinydrm_of_find_backlight to drm_of_find_backlight
> > and move it into drm_of.c from tinydrm-helpers.c. This is
> > because other drivers in the drm subsystem might need to call
> > this function. In that case and otherwise, it is better from
> > an organizational point of view to move it into drm_of.c along
> > with the other _of.c functions.
> > 
> > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > ---
> 
> I suggest you split this patch in 2, one to add the function and one to
> use it in tinydrm.

In general I'd agree to split into 3 phases: 1) add new function 2)
convert drivers 3) remove old one.

But since there's only 1 caller this seems like overkill.

> >   drivers/gpu/drm/drm_of.c                       | 41 ++++++++++++++++++++++++++
> >   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -------------------------
> >   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
> >   include/drm/drm_of.h                           |  1 +
> >   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
> >   5 files changed, 44 insertions(+), 42 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > index 8dafbdf..d8cded3 100644
> > --- a/drivers/gpu/drm/drm_of.c
> > +++ b/drivers/gpu/drm/drm_of.c
> > @@ -1,6 +1,7 @@
> >   #include <linux/component.h>
> >   #include <linux/export.h>
> >   #include <linux/list.h>
> > +#include <linux/backlight.h>
> >   #include <linux/of_graph.h>
> >   #include <drm/drmP.h>
> >   #include <drm/drm_bridge.h>
> > @@ -260,3 +261,43 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >   	return ret;
> >   }
> >   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
> > +
> > +/**
> > + * drm_of_find_backlight - Find backlight device in device-tree
> > + * @dev: Device
> > + *
> > + * This function looks for a DT node pointed to by a property named 'backlight'
> > + * and uses of_find_backlight_by_node() to get the backlight device.
> > + * Additionally if the brightness property is zero, it is set to
> > + * max_brightness.
> 
> Please add a note here about the callers responsibility to call
> put_device() when releasing the resource.
> See the of_find_backlight_by_node() docs.
> 
> > + *
> > + * Returns:
> > + * NULL if there's no backlight property.
> > + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> > + * is found.
> > + * If the backlight device is found, a pointer to the structure is returned.
> > + */
> > +struct backlight_device *drm_of_find_backlight(struct device *dev)
> > +{
> > +	struct backlight_device *backlight;
> > +	struct device_node *np;
> > +
> > +	np = of_parse_phandle(dev->of_node, "backlight", 0);
> > +	if (!np)
> > +		return NULL;
> > +
> > +	backlight = of_find_backlight_by_node(np);
> > +	of_node_put(np);
> > +
> > +	if (!backlight)
> > +		return ERR_PTR(-EPROBE_DEFER);
> > +
> > +	if (!backlight->props.brightness) {
> > +		backlight->props.brightness = backlight->props.max_brightness;
> > +		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> > +			      backlight->props.brightness);
> > +	}
> > +
> > +	return backlight;
> > +}
> > +EXPORT_SYMBOL(drm_of_find_backlight);
> 
> Can you also please add a devm_ version of this function. tinydrm uses
> devres[1] versions of functions for requiring device resources, so it
> would be nice to do this for backlight as well. tinydrm is currently
> broken in this respect, it doesn't put the backlight device.
> 
> I had a devm_of_find_backlight() version lying around that I've adjusted
> to give you an idea of what I'm talking about:
> 
> static void devm_drm_of_find_backlight_release(void *data)
> {
> ��� put_device(data);
> }
> 
> struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
> {
> ��� struct backlight_device *backlight;
> ��� int ret;
> 
> ��� backlight = drm_of_find_backlight(dev);
> ��� if (IS_ERR_OR_NULL(backlight))
> ��� ��� return backlight;
> 
> ��� ret = devm_add_action(dev, devm_drm_of_find_backlight_release,
> ��� ��� ��� ����� backlight->dev);
> ��� if (ret) {
> ��� ��� put_device(backlight->dev);
> ��� ��� return ERR_PTR(ret);
> ��� }
> 
> ��� return backlight;
> }

Good idea for a follow up patch imo.

Another follow up patch series which would be really good is then
converting drivers over to using this (preferrably the devm_ version). A
quick git grep shows there's quite a few.

Either way, the patch that adds these to the core should also add a TODO
entry so we don't forget to complete this conversion.

Thanks, Daniel

> 
> [1] https://www.kernel.org/doc/Documentation/driver-model/devres.txt
> 
> Noralf.
> 
> > diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > index bd6cce0..cd4c6a5 100644
> > --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > @@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> >   /**
> > - * tinydrm_of_find_backlight - Find backlight device in device-tree
> > - * @dev: Device
> > - *
> > - * This function looks for a DT node pointed to by a property named 'backlight'
> > - * and uses of_find_backlight_by_node() to get the backlight device.
> > - * Additionally if the brightness property is zero, it is set to
> > - * max_brightness.
> > - *
> > - * Returns:
> > - * NULL if there's no backlight property.
> > - * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> > - * is found.
> > - * If the backlight device is found, a pointer to the structure is returned.
> > - */
> > -struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> > -{
> > -	struct backlight_device *backlight;
> > -	struct device_node *np;
> > -
> > -	np = of_parse_phandle(dev->of_node, "backlight", 0);
> > -	if (!np)
> > -		return NULL;
> > -
> > -	backlight = of_find_backlight_by_node(np);
> > -	of_node_put(np);
> > -
> > -	if (!backlight)
> > -		return ERR_PTR(-EPROBE_DEFER);
> > -
> > -	if (!backlight->props.brightness) {
> > -		backlight->props.brightness = backlight->props.max_brightness;
> > -		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> > -			      backlight->props.brightness);
> > -	}
> > -
> > -	return backlight;
> > -}
> > -EXPORT_SYMBOL(tinydrm_of_find_backlight);
> > -
> > -/**
> >    * tinydrm_enable_backlight - Enable backlight helper
> >    * @backlight: Backlight device
> >    *
> > diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > index 7e5bb7d..5e3d635 100644
> > --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> > +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > @@ -12,6 +12,7 @@
> >   #include <drm/tinydrm/ili9341.h>
> >   #include <drm/tinydrm/mipi-dbi.h>
> >   #include <drm/tinydrm/tinydrm-helpers.h>
> > +#include <drm/drm_of.h>
> >   #include <linux/delay.h>
> >   #include <linux/gpio/consumer.h>
> >   #include <linux/module.h>
> > @@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
> >   	if (IS_ERR(mipi->regulator))
> >   		return PTR_ERR(mipi->regulator);
> > -	mipi->backlight = tinydrm_of_find_backlight(dev);
> > +	mipi->backlight = drm_of_find_backlight(dev);
> >   	if (IS_ERR(mipi->backlight))
> >   		return PTR_ERR(mipi->backlight);
> > diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> > index 104dd51..e8fba5b 100644
> > --- a/include/drm/drm_of.h
> > +++ b/include/drm/drm_of.h
> > @@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >   				int port, int endpoint,
> >   				struct drm_panel **panel,
> >   				struct drm_bridge **bridge);
> > +struct backlight_device *drm_of_find_backlight(struct device *dev);
> >   #else
> >   static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
> >   						  struct device_node *port)
> > diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> > index d554ded..e40ef2d 100644
> > --- a/include/drm/tinydrm/tinydrm-helpers.h
> > +++ b/include/drm/tinydrm/tinydrm-helpers.h
> > @@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
> >   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >   			       struct drm_clip_rect *clip);
> > -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> >   int tinydrm_enable_backlight(struct backlight_device *backlight);
> >   int tinydrm_disable_backlight(struct backlight_device *backlight);
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


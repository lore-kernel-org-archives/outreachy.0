X-GM-THRID: 6470456120502648832
X-Received: by 10.99.122.21 with SMTP id v21mr594096pgc.5.1506590840668;
        Thu, 28 Sep 2017 02:27:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.123.23 with SMTP id w23ls1047934pgc.24.gmail; Thu, 28 Sep
 2017 02:27:19 -0700 (PDT)
X-Received: by 10.101.82.140 with SMTP id y12mr588638pgp.44.1506590839709;
        Thu, 28 Sep 2017 02:27:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506590839; cv=none;
        d=google.com; s=arc-20160816;
        b=fy03fusv3J0YMQCxP/WLtjgjHquttJoq+mMtRdSVgtiN94/R1v5Pt0PHX5vs+Ipwb6
         mZAKRIL96P8Ig2jfbW2DlX9mJPNs61nsWgwuF9iUg1R0g2gYAbGj7tzHZRYvJ8ou39Nn
         5yslf5ox6XUJsUgBUXZWbeV/scTASPECrSXmfFqdGqUX6Jr8ibq2rWtN6uOFDmFUVZMo
         dRvSBGp88XCXoxQc8kpu0nfh0oCmxehxtLZfba/wFhZAoYjb+/057MJHDWupvWuFk+e6
         kRyS7xKI39ETEsEzcHv1GD3oAXVaGufisnHCKnxmHYKLyFYxmynasOT5+o5ljrXoazdq
         Vxcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=uRjCQTrjdscCx1x0i6GFwDXl+tkbuwZr6IIRD5+wHIk=;
        b=wwo15jd2G7CYyWs0cekvAZZpdYJR09xiJ3kIGo42Qe2ieQG/f+kpTFKmt1fumuJ3mc
         52FhokX1dJltDPYRLap5bGNQ4t4jhDJNaMaH8fyBoed9WdAM6qDcRskPKH+kplyeVRyt
         d78OwDHeqTV2ZGkZG1mii9aRJfRPD76xpUIjF8/woambbj+5C+jh+WdRU6aoeZh3cXm3
         1kWV8jzMnaNiTLXNhuFNM23yQmybGtcb5fw+IK2bwhTKUER29OI1pCkpG6hRXIcWosLx
         bAfMyuIWSyI/yWX7K/NdpWgpiwpBqjl49aP3lH4sElUr9GOx2l9lSi1ArGsJi+sWDmoH
         vcBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V1xYMjL3;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s81si150719pfg.19.2017.09.28.02.27.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 02:27:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V1xYMjL3;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id j16so1347942pga.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 02:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=uRjCQTrjdscCx1x0i6GFwDXl+tkbuwZr6IIRD5+wHIk=;
        b=V1xYMjL33R/ZRILlU2SEJxaD5FjItP7zzdIvX4FEPzMnbObCSFD2vN4mOjCa8CRQYs
         Si+DVzyENKeyhkTBNV7xrNcyXqhpkdoaxm4JfZPPON8pfuaAqMQyw6nsP9s66mJuCdvk
         5bYwUXauX/ahKHbjlyisIWSDyTS12wawdu/DGkyECfCGpUSM3N/pqlULtXT+5r7u0Ufs
         F2gkraFT75pgyy9Rm2WngnvMUm9GhoyuGVuqlQAFiUv8gNUS4YGalL07Q30GnQJbiZ/W
         d22QX17mQLiRHp1ORA5eAq7t81meZSgEepdP1rWPhlAAHxkY2RuDEaBg3ZfHM3H9zY2X
         N+Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=uRjCQTrjdscCx1x0i6GFwDXl+tkbuwZr6IIRD5+wHIk=;
        b=YbSns3SXEmenQ6x6gIdwohUHPMWsEkGQu4ckfwmffcP1H4vqkoFSKzfTT2NatNRf7T
         JvNVjKOwxApFcRisWCKcmCSX4ry1YdLgzwlNZ1SRC2AMBvRdZtFHe/W2kTKAZtEaifOk
         UXXb4Cn5RO0lwqfZ9XILLkT5KnIPwN6KQ4J+hzc+6LuJ9VsIiCEu6pR7ZfosX/33rlSd
         dHwTzFlqu+ohetTbJ4OoIva7i4P7YYL7kOsa88sZ5NG8esQHFSS89YXepYw2x7SQ3aGA
         8H7as4GYrxg0FnYVce+QpLznFkJguJjvSryXuLTGKc1rZDFx1ddmuCMqTIjv+Qqm48DH
         pj0w==
X-Gm-Message-State: AHPjjUiM7SPPRID+UCK4+HSufh0FGajobIPCFb7mNK3pM8ZhfVXoayUq
	29GlzLXWJNEuBjQiuPygDkY=
X-Google-Smtp-Source: AOwi7QDQCjpJSZSGXdqT+lvoATTJ+eKigsuAn/8Da5iIuvqQv41hjTEDbWXCPLGyXpvLKX4LNjjEag==
X-Received: by 10.98.129.6 with SMTP id t6mr3768048pfd.225.1506590839361;
        Thu, 28 Sep 2017 02:27:19 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id y72sm2247387pfa.129.2017.09.28.02.27.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 02:27:18 -0700 (PDT)
Date: Thu, 28 Sep 2017 14:57:12 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
Message-ID: <20170928092709.GA21361@meghana-HP-Pavilion-Notebook>
References: <20170927135409.GA5027@meghana-HP-Pavilion-Notebook>
 <9e838b3f-1a40-57de-b270-0995658613eb@tronnes.org>
 <20170928071539.jtpjefind3xishap@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170928071539.jtpjefind3xishap@phenom.ffwll.local>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 28, 2017 at 09:15:39AM +0200, Daniel Vetter wrote:
> On Wed, Sep 27, 2017 at 05:08:07PM +0200, Noralf Tr�nnes wrote:
> > 
> > Den 27.09.2017 15.54, skrev Meghana Madhyastha:
> > > Rename tinydrm_of_find_backlight to drm_of_find_backlight
> > > and move it into drm_of.c from tinydrm-helpers.c. This is
> > > because other drivers in the drm subsystem might need to call
> > > this function. In that case and otherwise, it is better from
> > > an organizational point of view to move it into drm_of.c along
> > > with the other _of.c functions.
> > > 
> > > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > > ---
> > 
> > I suggest you split this patch in 2, one to add the function and one to
> > use it in tinydrm.
> 
> In general I'd agree to split into 3 phases: 1) add new function 2)
> convert drivers 3) remove old one.
> 
> But since there's only 1 caller this seems like overkill.
> 
> > >   drivers/gpu/drm/drm_of.c                       | 41 ++++++++++++++++++++++++++
> > >   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -------------------------
> > >   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
> > >   include/drm/drm_of.h                           |  1 +
> > >   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
> > >   5 files changed, 44 insertions(+), 42 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > > index 8dafbdf..d8cded3 100644
> > > --- a/drivers/gpu/drm/drm_of.c
> > > +++ b/drivers/gpu/drm/drm_of.c
> > > @@ -1,6 +1,7 @@
> > >   #include <linux/component.h>
> > >   #include <linux/export.h>
> > >   #include <linux/list.h>
> > > +#include <linux/backlight.h>
> > >   #include <linux/of_graph.h>
> > >   #include <drm/drmP.h>
> > >   #include <drm/drm_bridge.h>
> > > @@ -260,3 +261,43 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> > >   	return ret;
> > >   }
> > >   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
> > > +
> > > +/**
> > > + * drm_of_find_backlight - Find backlight device in device-tree
> > > + * @dev: Device
> > > + *
> > > + * This function looks for a DT node pointed to by a property named 'backlight'
> > > + * and uses of_find_backlight_by_node() to get the backlight device.
> > > + * Additionally if the brightness property is zero, it is set to
> > > + * max_brightness.
> > 
> > Please add a note here about the callers responsibility to call
> > put_device() when releasing the resource.
> > See the of_find_backlight_by_node() docs.
> > 
> > > + *
> > > + * Returns:
> > > + * NULL if there's no backlight property.
> > > + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> > > + * is found.
> > > + * If the backlight device is found, a pointer to the structure is returned.
> > > + */
> > > +struct backlight_device *drm_of_find_backlight(struct device *dev)
> > > +{
> > > +	struct backlight_device *backlight;
> > > +	struct device_node *np;
> > > +
> > > +	np = of_parse_phandle(dev->of_node, "backlight", 0);
> > > +	if (!np)
> > > +		return NULL;
> > > +
> > > +	backlight = of_find_backlight_by_node(np);
> > > +	of_node_put(np);
> > > +
> > > +	if (!backlight)
> > > +		return ERR_PTR(-EPROBE_DEFER);
> > > +
> > > +	if (!backlight->props.brightness) {
> > > +		backlight->props.brightness = backlight->props.max_brightness;
> > > +		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> > > +			      backlight->props.brightness);
> > > +	}
> > > +
> > > +	return backlight;
> > > +}
> > > +EXPORT_SYMBOL(drm_of_find_backlight);
> > 
> > Can you also please add a devm_ version of this function. tinydrm uses
> > devres[1] versions of functions for requiring device resources, so it
> > would be nice to do this for backlight as well. tinydrm is currently
> > broken in this respect, it doesn't put the backlight device.
> > 
> > I had a devm_of_find_backlight() version lying around that I've adjusted
> > to give you an idea of what I'm talking about:
> > 
> > static void devm_drm_of_find_backlight_release(void *data)
> > {
> > ��� put_device(data);
> > }
> > 
> > struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
> > {
> > ��� struct backlight_device *backlight;
> > ��� int ret;
> > 
> > ��� backlight = drm_of_find_backlight(dev);
> > ��� if (IS_ERR_OR_NULL(backlight))
> > ��� ��� return backlight;
> > 
> > ��� ret = devm_add_action(dev, devm_drm_of_find_backlight_release,
> > ��� ��� ��� ����� backlight->dev);
> > ��� if (ret) {
> > ��� ��� put_device(backlight->dev);
> > ��� ��� return ERR_PTR(ret);
> > ��� }
> > 
> > ��� return backlight;
> > }
> 
> Good idea for a follow up patch imo.
> 
> Another follow up patch series which would be really good is then
> converting drivers over to using this (preferrably the devm_ version). A
> quick git grep shows there's quite a few.

I have a quick question on this. I did a git grep and found that the
other drivers used the function of_find_backlight_by_node defined in
video/backlight. This seems to be doing a different thing (taking
struct device_node* as a parameter instead of struct device*).
Basically, this function finds the backlight device by device-tree node.
How would you suggest converting these cases ?

Thanks and regards,
Meghana

> Either way, the patch that adds these to the core should also add a TODO
> entry so we don't forget to complete this conversion.
> 
> Thanks, Daniel
> 
> > 
> > [1] https://www.kernel.org/doc/Documentation/driver-model/devres.txt
> > 
> > Noralf.
> > 
> > > diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > index bd6cce0..cd4c6a5 100644
> > > --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > @@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> > >   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> > >   /**
> > > - * tinydrm_of_find_backlight - Find backlight device in device-tree
> > > - * @dev: Device
> > > - *
> > > - * This function looks for a DT node pointed to by a property named 'backlight'
> > > - * and uses of_find_backlight_by_node() to get the backlight device.
> > > - * Additionally if the brightness property is zero, it is set to
> > > - * max_brightness.
> > > - *
> > > - * Returns:
> > > - * NULL if there's no backlight property.
> > > - * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> > > - * is found.
> > > - * If the backlight device is found, a pointer to the structure is returned.
> > > - */
> > > -struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> > > -{
> > > -	struct backlight_device *backlight;
> > > -	struct device_node *np;
> > > -
> > > -	np = of_parse_phandle(dev->of_node, "backlight", 0);
> > > -	if (!np)
> > > -		return NULL;
> > > -
> > > -	backlight = of_find_backlight_by_node(np);
> > > -	of_node_put(np);
> > > -
> > > -	if (!backlight)
> > > -		return ERR_PTR(-EPROBE_DEFER);
> > > -
> > > -	if (!backlight->props.brightness) {
> > > -		backlight->props.brightness = backlight->props.max_brightness;
> > > -		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> > > -			      backlight->props.brightness);
> > > -	}
> > > -
> > > -	return backlight;
> > > -}
> > > -EXPORT_SYMBOL(tinydrm_of_find_backlight);
> > > -
> > > -/**
> > >    * tinydrm_enable_backlight - Enable backlight helper
> > >    * @backlight: Backlight device
> > >    *
> > > diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > index 7e5bb7d..5e3d635 100644
> > > --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > @@ -12,6 +12,7 @@
> > >   #include <drm/tinydrm/ili9341.h>
> > >   #include <drm/tinydrm/mipi-dbi.h>
> > >   #include <drm/tinydrm/tinydrm-helpers.h>
> > > +#include <drm/drm_of.h>
> > >   #include <linux/delay.h>
> > >   #include <linux/gpio/consumer.h>
> > >   #include <linux/module.h>
> > > @@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
> > >   	if (IS_ERR(mipi->regulator))
> > >   		return PTR_ERR(mipi->regulator);
> > > -	mipi->backlight = tinydrm_of_find_backlight(dev);
> > > +	mipi->backlight = drm_of_find_backlight(dev);
> > >   	if (IS_ERR(mipi->backlight))
> > >   		return PTR_ERR(mipi->backlight);
> > > diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> > > index 104dd51..e8fba5b 100644
> > > --- a/include/drm/drm_of.h
> > > +++ b/include/drm/drm_of.h
> > > @@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> > >   				int port, int endpoint,
> > >   				struct drm_panel **panel,
> > >   				struct drm_bridge **bridge);
> > > +struct backlight_device *drm_of_find_backlight(struct device *dev);
> > >   #else
> > >   static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
> > >   						  struct device_node *port)
> > > diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> > > index d554ded..e40ef2d 100644
> > > --- a/include/drm/tinydrm/tinydrm-helpers.h
> > > +++ b/include/drm/tinydrm/tinydrm-helpers.h
> > > @@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
> > >   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> > >   			       struct drm_clip_rect *clip);
> > > -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> > >   int tinydrm_enable_backlight(struct backlight_device *backlight);
> > >   int tinydrm_disable_backlight(struct backlight_device *backlight);
> > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch


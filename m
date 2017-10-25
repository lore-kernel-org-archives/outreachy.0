X-GM-THRID: 6475592721521180672
X-Received: by 10.25.193.214 with SMTP id r205mr526039lff.21.1508917145906;
        Wed, 25 Oct 2017 00:39:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.148 with SMTP id u142ls314109lja.16.gmail; Wed, 25 Oct
 2017 00:39:04 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RrGrPVPADhx3GPuD3Z3CRV1WLDstLjHICW020pHrWP/WLqNniG+ePzUK9frR3EdX9AHZ/u
X-Received: by 10.46.57.19 with SMTP id g19mr626736lja.3.1508917144550;
        Wed, 25 Oct 2017 00:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508917144; cv=none;
        d=google.com; s=arc-20160816;
        b=XyK9D1Zzy2ZVqGkNjkKLIPTeYMWC0t1mRTsM1IQV+NMeznof7tN8eqfqr3K5IWfYcQ
         RkgwE9djnYN4RkKAvy8Bct0lQtW+/06bkiun+EyG/JvplnxDyGZq9CymBcPYdGcfYhgR
         Fg0qfw89ZnrVikcz8VayRAB9a2cRG8doyKxQ8W1HEychxVX7656Tlnjx97TXtYRpXfPi
         aicPY1rYxA84VeIQCRTME59DCgEJ13QUoHBcK36yypt5b9eYWRUzOaR0JmSIWGmKNdzn
         7+4bDAypm48G8Oo+FLBaU/BWUSlVNYXSBlDqDdd5PetDToiMJBlflO5HAoGW5zXMEUus
         AVdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=t9GPs3x8b/E+9/4LGKMBKjo0ZGJYAX9rBFlkmVB3laA=;
        b=G1kgB8KtFGt9E7ugguDbX4xkLDJwxmxyJko0qyV/kGxBf4aYdrMplkj70oBa1LGvbL
         POvxCzZeagHWVLUjPuN1pj9xUfuemo20Yotly7dEIjB0WR+BltRamWUhw2Ec6X4rlts0
         vSd+gDGE9RL+JFBQXWTabFQhd+fzSJIr2ghYkQl52xvn2LPwoPkOdnJp5FZJhWEqb1k6
         r/LH88UyZuHD+62AUzD5d4wAM7rI1j8aD7pfSJSQyOiuChjP8XmXUO037Y3dHt7c7sN0
         ElTj3GPasQD4ltloSV++GKp/ZDi4p4VMux7Zu/XXxoahf0IQSNSX8IrVN+cJ0TtpX9Pr
         fL2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HEulPKmu;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id w14si107958lfk.2.2017.10.25.00.39.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Oct 2017 00:39:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HEulPKmu;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-wm0-x22c.google.com with SMTP id p75so19913144wmg.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Oct 2017 00:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=t9GPs3x8b/E+9/4LGKMBKjo0ZGJYAX9rBFlkmVB3laA=;
        b=HEulPKmuYBrQ6fcwFjOznN97RWaAhO919x/ihl24sJTO4CpSIhjbbmBLwsv2HS2+jZ
         vCQVIEctmiIseh31TxcTA0vzKovrEFTKHQ0YlxleI4zaWZ+rLTS5JdaxQmTywOzXQP8M
         FI5CwrmJsW2+HwTtW6zZGqJEIe6QSh41KxLZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=t9GPs3x8b/E+9/4LGKMBKjo0ZGJYAX9rBFlkmVB3laA=;
        b=UvCxwM7vqQsQSO0PH+091bDvW7DASH7VWL+Ctwd6w8ZPItn70darewmZVbcvtbC9Ju
         L7LgBHpobwnld5jDhqdvixyaK8UD7nkAZuoIQRAo4VjY8vFL41GrvysJdSR+Lxk+H+Q/
         +JfR7k5LwyXMmTFWz8EBbaAKRA0DwcViAG/xALs1v4dLIXoE7gcuN1o2P7ZyB3gpP5jz
         lnfPqgC9sy2vgz42w0IBs+3Ad9QqmrdX7ZYa4yCEWWb9hM/d1Lap8Bj1qVsfxqlko9CT
         FesEmygFjFdREoXUPPJcsfPilQzyt73Kd6Etb2ehkFDkB28Y7F1oEWfmxR4u32ufqyws
         RLDQ==
X-Gm-Message-State: AMCzsaUH7YbU8vTDkCP+uqJoTQwp9bi0obIXwq+AwTZojKtEDi6PRyhK
	7ZQjdkgb9AUaT8iECbcQCiikmw==
X-Received: by 10.28.127.206 with SMTP id a197mr750855wmd.12.1508917144132;
        Wed, 25 Oct 2017 00:39:04 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([62.168.35.107])
        by smtp.gmail.com with ESMTPSA id l127sm1937770wmd.18.2017.10.25.00.39.03
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 25 Oct 2017 00:39:03 -0700 (PDT)
Date: Wed, 25 Oct 2017 03:39:02 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Cc: Sean Paul <seanpaul@chromium.org>,
	Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
	noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com
Subject: Re: [Outreachy kernel] [PATCH v14 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
Message-ID: <20171025073902.76q767zclmkzkq4i@art_vandelay>
References: <cover.1508586429.git.meghana.madhyastha@gmail.com>
 <678c3adb07b729acf6e80119ab9adec01d89842f.1508586429.git.meghana.madhyastha@gmail.com>
 <20171024153831.jdbyct5ikxengnuz@art_vandelay>
 <80c7411c-75c9-725b-0065-d54348701891@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <80c7411c-75c9-725b-0065-d54348701891@linaro.org>
User-Agent: NeoMutt/20170306-97-7656f1-dirty (1.8.0)

On Tue, Oct 24, 2017 at 04:56:59PM +0100, Daniel Thompson wrote:
> On 24/10/17 16:38, Sean Paul wrote:
> > On Sat, Oct 21, 2017 at 05:27:33PM +0530, Meghana Madhyastha wrote:
> > > Rename tinydrm_of_find_backlight to of_find_backlight and move
> > > it to linux/backlight.c so that it can be used by other drivers.
> > > 
> > > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > > ---
> > > Changes in v14:
> > >   -s/backlight_get/of_find_backlight/
> > > 
> > >   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 --------------------------
> > >   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
> > >   drivers/video/backlight/backlight.c            | 37 ++++++++++++++++++++++++
> > >   include/drm/tinydrm/tinydrm-helpers.h          |  2 --
> > >   include/linux/backlight.h                      | 19 ++++++++++++
> > >   5 files changed, 58 insertions(+), 43 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > index a42dee6..cb1a01a 100644
> > > --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> > > @@ -236,46 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> > >   }
> > >   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> > > -/**
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
> > >   #if IS_ENABLED(CONFIG_SPI)
> > >   /**
> > > diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > index 7fd2691..53ab5a0 100644
> > > --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > > @@ -12,6 +12,7 @@
> > >   #include <drm/tinydrm/ili9341.h>
> > >   #include <drm/tinydrm/mipi-dbi.h>
> > >   #include <drm/tinydrm/tinydrm-helpers.h>
> > > +#include <linux/backlight.h>
> > >   #include <linux/delay.h>
> > >   #include <linux/gpio/consumer.h>
> > >   #include <linux/module.h>
> > > @@ -188,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
> > >   	if (IS_ERR(mipi->regulator))
> > >   		return PTR_ERR(mipi->regulator);
> > > -	mipi->backlight = tinydrm_of_find_backlight(dev);
> > > +	mipi->backlight = of_find_backlight(dev);
> > >   	if (IS_ERR(mipi->backlight))
> > >   		return PTR_ERR(mipi->backlight);
> > > diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> > > index 8049e76..76d46c3 100644
> > > --- a/drivers/video/backlight/backlight.c
> > > +++ b/drivers/video/backlight/backlight.c
> > > @@ -580,6 +580,43 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
> > >   EXPORT_SYMBOL(of_find_backlight_by_node);
> > >   #endif
> > > +/**
> > > + * of_find_backlight - Get backlight device
> > > + * @dev: Device
> > > + *
> > > + * This function looks for a property named 'backlight' on the DT node
> > > + * connected to @dev and looks up the backlight device.
> > > + *
> > > + * Call backlight_put() to drop the reference on the backlight device.
> > > + *
> > > + * Returns:
> > > + * A pointer to the backlight device if found.
> > > + * Error pointer -EPROBE_DEFER if the DT property is set, but no backlight
> > > + * device is found.
> > > + * NULL if there's no backlight property.
> > > + */
> > > +struct backlight_device *of_find_backlight(struct device *dev)
> > > +{
> > > +	struct backlight_device *bd = NULL;
> > > +	struct device_node *np;
> > > +
> > > +	if (!dev)
> > > +		return NULL;
> > > +
> > > +	if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
> > > +		np = of_parse_phandle(dev->of_node, "backlight", 0);
> > > +		if (np) {
> > > +			bd = of_find_backlight_by_node(np);
> > > +			of_node_put(np);
> > > +			if (!bd)
> > > +				return ERR_PTR(-EPROBE_DEFER);
> > > +		}
> > > +	}
> > > +
> > > +	return bd;
> > > +}
> > > +EXPORT_SYMBOL(of_find_backlight);
> > > +
> > >   static void __exit backlight_class_exit(void)
> > >   {
> > >   	class_destroy(backlight_class);
> > > diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> > > index f54fae0..0a4ddbc 100644
> > > --- a/include/drm/tinydrm/tinydrm-helpers.h
> > > +++ b/include/drm/tinydrm/tinydrm-helpers.h
> > > @@ -46,8 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
> > >   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> > >   			       struct drm_clip_rect *clip);
> > > -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> > > -
> > >   size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
> > >   bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
> > >   int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
> > > diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> > > index b88fabb..f98b684 100644
> > > --- a/include/linux/backlight.h
> > > +++ b/include/linux/backlight.h
> > > @@ -159,6 +159,16 @@ static inline int backlight_disable(struct backlight_device *bd)
> > >   	return backlight_update_status(bd);
> > >   }
> > > +/**
> > > + * backlight_put - Drop backlight reference
> > > + * @bd: the backlight device to put
> > > + */
> > > +static inline void backlight_put(struct backlight_device *bd)
> > > +{
> > > +	if (bd)
> > > +		put_device(&bd->dev);
> > > +}
> > 
> > 
> > As I mentioned in my last review, I don't think we need this function.
> 
> Just to check... some DRM drivers do allow themselves to work if
> CONFIG_BACKLIGHT_CLASS_DEVICE isn't enabled (as discussed earlier in the
> thread ;-). Did you consider what happens when this happens.
> 
> Wrapped up with backlight_put() we are sure never to accidentally
> dereference bd in DRM de-init paths when CONFIG_BACKLIGHT_CLASS_DEVICVE if
> it is not set. With a raw put_device() all that conditional logic ends up on
> the driver.
> 

Thanks for pointing that out, definitely a fair point. 

I don't really mind putting the NULL check in the driver code. The return
values of of_find_backlight are well documented, so it shouldn't be too much
of a problem.

That said, this is your rodeo, so if you prefer to supply the put helper, that's
A-Ok with me.

Sean

> 
> Daniel.
> 
> 
> > > +
> > >   extern struct backlight_device *backlight_device_register(const char *name,
> > >   	struct device *dev, void *devdata, const struct backlight_ops *ops,
> > >   	const struct backlight_properties *props);
> > > @@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *node)
> > >   }
> > >   #endif
> > > +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> > > +struct backlight_device *of_find_backlight(struct device *dev);
> > > +#else
> > > +static inline struct backlight_device *of_find_backlight(struct device *dev)
> > > +{
> > > +	return NULL;
> > > +}
> > > +#endif
> > > +
> > >   #endif
> > > -- 
> > > 2.7.4
> > > 
> > > -- 
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/678c3adb07b729acf6e80119ab9adec01d89842f.1508586429.git.meghana.madhyastha%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > 
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS


X-GM-THRID: 6475592721521180672
X-Received: by 10.55.154.149 with SMTP id c143mr13342641qke.42.1508346703882;
        Wed, 18 Oct 2017 10:11:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.28.9 with SMTP id a9ls2212051qtk.1.gmail; Wed, 18 Oct 2017
 10:11:43 -0700 (PDT)
X-Received: by 10.200.17.130 with SMTP id d2mr2167761qtj.56.1508346703279;
        Wed, 18 Oct 2017 10:11:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508346703; cv=none;
        d=google.com; s=arc-20160816;
        b=EvCBMkRn6VoOJqJ+h/duDfJoXRHPabGFnDQcNKeH0WPQC/nWm14KZGRsF115PGUNMZ
         /43PM827ip15P/r3HAk0v8BuPLflaJlJBfKjLO2EcnLp26zVvbO2748JisNka73kRChI
         ZFWn85Tb9U+GpZpoWDzQ67PGL/S5IVLL7VdFh05aWRktgLtzr4PJEFwAl71nxT3rrCAh
         ivUZnJOyeHJJOc0Ad2lntYi+2/uC5rK2LB6uu9XeHQKBs2z0QbssluZioXrMf4HIXkAF
         bM+7DgT0lR8vyNOAxeIIqNx6WmLiiym2ZiGkX0+U5DS+6Z9PjVyepNhoVknLR6z537lr
         swpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=6vBZC+FD5C8Uz95ZUUDyTF/a9sxGY1YCHvsebay/yzw=;
        b=oH86xb3Av20EenIpD8sIFG4qx1OTV3/9dlJKXZzLQ8p9C0DhbdJMhdFHu6unDvI34V
         2Zw4luEv5xNkz15NkO9w1z6v2Ukb4FrzWN5Jgw4AWl2HOWrz0I7l+fF4Swi8WbrCcjyq
         vcfpgIl08jMrOiA+HV9iJBA1OxFZ+AjosutIAxookoVr2xNG79LZGlBw6XF37GWS2mKm
         x9O+UqwxUY8mjUzGqV8s6FBiy8uusVnPUnS6W6dZEfYZjuIKhYZSuzK8nSBOGlP/3+Mg
         TvEzcAIWY8yk/m6BCIfckZhKBSDId9ftvkZIvON229fMaN0e0gFRSmniWqLNYczJ89wz
         Rq3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t6chDrE5;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id v90si685059qte.4.2017.10.18.10.11.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 10:11:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t6chDrE5;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s2so4777356pge.10
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 10:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=6vBZC+FD5C8Uz95ZUUDyTF/a9sxGY1YCHvsebay/yzw=;
        b=t6chDrE5ePvLta+qXQ7EyTlWjSY7EeAs9o6M4NwFw49yCUnNLmyWyRqxLMYNTz6TEU
         +9Cy49jSA0DzXt4QEFozFUXBJa+lXWZ10UhWXYwBHKeOnhtgx8ZvCc+LoXo2XOVkce9u
         tOIS7z4g88QWqiPfSVRGAFVeDJWjYuNFQatBGyXCpv1xGD/JOqnCyGvGvwiBIEeVHhKD
         cXt+xCO68pb62iq3xIkIngvUll0fwhIl/hsaePGn28Onl/YXfgTL1qrUjRvnvYUnVPmG
         WhgloUqna8uRNCdDAwqBF25KYUHwrhByeHFbduddeggBsOHM1RZ3nuBwBsgIivJGHE/J
         XN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=6vBZC+FD5C8Uz95ZUUDyTF/a9sxGY1YCHvsebay/yzw=;
        b=eWinVtvXjKomaPFxOwtdA4zKUtVzt1HggfiV7tzNp6WWVOU7gqM+B2Lbi4lR99RLPd
         9fkiPr8kYJXWPajExgjchH2oaJKlHkOqjJpTQVjLtRyGI5vpYobSp+4MWMXQWFoKwun6
         P3FZ1q7nFAx8WWDNY7J/fswLYVGNQKleDnhET7JRci+7k50/fZbTu++BtuJEwmIVyuu+
         WyLZ6yKNNZcU5KmMcs96FvKP2G5bB2fNsep1WUGEIhSp6nlGabX+6o5Pvymi+75UsS9Z
         6PBDX6eUI62q9ywPHFi3Cqkfy3fDPtjV5biote+bcYswJ+3jE4jJ6qsD65EBkaX7NQRA
         CxDA==
X-Gm-Message-State: AMCzsaXJPlCnRER7bf1/D9ko+td1v1noTHqoFV8p/LH27/Z7e0pI6u2+
	A9Niu6hDGWWmKIl8VJk8Ia4=
X-Google-Smtp-Source: AOwi7QB7+jaQNRQ5LkPWLWfuyVdeVN2QmhNrjwsdLiNByh7xG4BBfiUBx7fdPLSpikqIW/s4YxOrfA==
X-Received: by 10.98.62.17 with SMTP id l17mr15612062pfa.210.1508346701902;
        Wed, 18 Oct 2017 10:11:41 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.166.123])
        by smtp.gmail.com with ESMTPSA id g3sm20885713pgc.63.2017.10.18.10.11.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 10:11:40 -0700 (PDT)
Date: Wed, 18 Oct 2017 22:41:34 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Sean Paul <seanpaul@chromium.org>, daniel@ffwll.ch, noralf@tronnes.org,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [Outreachy kernel] [PATCH v13 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
Message-ID: <20171018171132.GA8116@meghana-HP-Pavilion-Notebook>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
 <20171013202557.s7r2ec67sl646vtj@art_vandelay>
 <e2772dfa-f62b-619f-e186-79ea2819aea3@tronnes.org>
 <CAOw6vb+j+KFXaeRyog9sROvzxYDhgx+GP97bPokFNNO-By5Hvg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOw6vb+j+KFXaeRyog9sROvzxYDhgx+GP97bPokFNNO-By5Hvg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 16, 2017 at 02:26:00PM -0400, Sean Paul wrote:
> On Fri, Oct 13, 2017 at 6:42 PM, Noralf Tr�nnes <noralf@tronnes.org> wrote:
> >
> > Den 13.10.2017 22.25, skrev Sean Paul:
> >>
> >> On Fri, Oct 13, 2017 at 04:11:43PM +0530, Meghana Madhyastha wrote:
> >>>
> >>> Rename tinydrm_of_find_backlight to backlight_get and move it
> >>> to linux/backlight.c so that it can be used by other drivers.
> >>
> >> [apologies if this has been brought up in previous versions, I haven't
> >> been
> >> following closely]
> >>
> >> I don't think "backlight_get" is a good name for this function. How about
> >> of_find_backlight_by_name (since there's already
> >> of_find_backlight_by_node)?
> >
> >
> > I came up with that name modelled after gpiod_get() and gpiod_put() and I
> > deliberately kept the of_ part out of the name like the gpio functions.
> > gpiod_get() checks OF, ACPI and platform for gpios and calling it
> > backlight_get() would keep the door open for other ways of connecting
> > backlight devices in the future, other than Device Tree.
> >
> 
> Thanks for the background, Noralf! Apologies for stepping on top of
> your previous reviews.
> 
> > I think of_find_backlight() would be better than *_by_name(), since
> > 'backlight' is the common DT property name, so it wouldn't make much sense
> > to require every caller to pass in the same name.
> >
> 
> of_find_backlight() sounds like a good compromise.
> 
> Sean

Are there any changes that need to be made to this patchset now ?

Regards,
Meghana

> 
> > Either way is fine with me.
> >
> > Noralf.
> >
> >
> >
> >>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> >>> ---
> >>> Changes in v13:
> >>>   -Add backlight_put to backlight.h in this patch
> >>>
> >>>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40
> >>> --------------------------
> >>>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
> >>>   drivers/video/backlight/backlight.c            | 37
> >>> ++++++++++++++++++++++++
> >>>   include/drm/tinydrm/tinydrm-helpers.h          |  2 --
> >>>   include/linux/backlight.h                      | 19 ++++++++++++
> >>>   5 files changed, 58 insertions(+), 43 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>> b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>> index a42dee6..cb1a01a 100644
> >>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>> @@ -236,46 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr,
> >>> struct drm_framebuffer *fb,
> >>>   }
> >>>   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> >>>   -/**
> >>> - * tinydrm_of_find_backlight - Find backlight device in device-tree
> >>> - * @dev: Device
> >>> - *
> >>> - * This function looks for a DT node pointed to by a property named
> >>> 'backlight'
> >>> - * and uses of_find_backlight_by_node() to get the backlight device.
> >>> - * Additionally if the brightness property is zero, it is set to
> >>> - * max_brightness.
> >>> - *
> >>> - * Returns:
> >>> - * NULL if there's no backlight property.
> >>> - * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight
> >>> device
> >>> - * is found.
> >>> - * If the backlight device is found, a pointer to the structure is
> >>> returned.
> >>> - */
> >>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> >>> -{
> >>> -       struct backlight_device *backlight;
> >>> -       struct device_node *np;
> >>> -
> >>> -       np = of_parse_phandle(dev->of_node, "backlight", 0);
> >>> -       if (!np)
> >>> -               return NULL;
> >>> -
> >>> -       backlight = of_find_backlight_by_node(np);
> >>> -       of_node_put(np);
> >>> -
> >>> -       if (!backlight)
> >>> -               return ERR_PTR(-EPROBE_DEFER);
> >>> -
> >>> -       if (!backlight->props.brightness) {
> >>> -               backlight->props.brightness =
> >>> backlight->props.max_brightness;
> >>> -               DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >>> -                             backlight->props.brightness);
> >>> -       }
> >>> -
> >>> -       return backlight;
> >>> -}
> >>> -EXPORT_SYMBOL(tinydrm_of_find_backlight);
> >>> -
> >>>   #if IS_ENABLED(CONFIG_SPI)
> >>>     /**
> >>> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>> b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>> index 7fd2691..a932185 100644
> >>> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>> @@ -12,6 +12,7 @@
> >>>   #include <drm/tinydrm/ili9341.h>
> >>>   #include <drm/tinydrm/mipi-dbi.h>
> >>>   #include <drm/tinydrm/tinydrm-helpers.h>
> >>> +#include <linux/backlight.h>
> >>>   #include <linux/delay.h>
> >>>   #include <linux/gpio/consumer.h>
> >>>   #include <linux/module.h>
> >>> @@ -188,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
> >>>         if (IS_ERR(mipi->regulator))
> >>>                 return PTR_ERR(mipi->regulator);
> >>>   -     mipi->backlight = tinydrm_of_find_backlight(dev);
> >>> +       mipi->backlight = backlight_get(dev);
> >>>         if (IS_ERR(mipi->backlight))
> >>>                 return PTR_ERR(mipi->backlight);
> >>>   diff --git a/drivers/video/backlight/backlight.c
> >>> b/drivers/video/backlight/backlight.c
> >>> index 8049e76..c4e94d0 100644
> >>> --- a/drivers/video/backlight/backlight.c
> >>> +++ b/drivers/video/backlight/backlight.c
> >>> @@ -580,6 +580,43 @@ struct backlight_device
> >>> *of_find_backlight_by_node(struct device_node *node)
> >>>   EXPORT_SYMBOL(of_find_backlight_by_node);
> >>>   #endif
> >>>   +/**
> >>> + * backlight_get - Get backlight device
> >>> + * @dev: Device
> >>> + *
> >>> + * This function looks for a property named 'backlight' on the DT node
> >>> + * connected to @dev and looks up the backlight device.
> >>> + *
> >>> + * Call backlight_put() to drop the reference on the backlight device.
> >>> + *
> >>> + * Returns:
> >>> + * A pointer to the backlight device if found.
> >>> + * Error pointer -EPROBE_DEFER if the DT property is set, but no
> >>> backlight
> >>> + * device is found.
> >>> + * NULL if there's no backlight property.
> >>> + */
> >>> +struct backlight_device *backlight_get(struct device *dev)
> >>> +{
> >>> +       struct backlight_device *bd = NULL;
> >>> +       struct device_node *np;
> >>> +
> >>> +       if (!dev)
> >>> +               return NULL;
> >>> +
> >>> +       if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
> >>
> >> I'm not really used to seeing IS_ENABLED(CONFIG_BLAH) inline. The common
> >> patterns seems to be wrapping the actual implementation in #if
> >> IS_ENABLED(CONFIG_BLAH) and then sticking a stub implementation in the
> >> #else.
> >>
> >> I see below that you already have a stub if backlight is not enabled, so
> >> expand
> >> that #if to include CONFIG_OF as well.
> >>
> >>> +               np = of_parse_phandle(dev->of_node, "backlight", 0);
> >>> +               if (np) {
> >>> +                       bd = of_find_backlight_by_node(np);
> >>> +                       of_node_put(np);
> >>> +                       if (!bd)
> >>> +                               return ERR_PTR(-EPROBE_DEFER);
> >>> +               }
> >>> +       }
> >>> +
> >>> +       return bd;
> >>> +}
> >>> +EXPORT_SYMBOL(backlight_get);
> >>> +
> >>>   static void __exit backlight_class_exit(void)
> >>>   {
> >>>         class_destroy(backlight_class);
> >>> diff --git a/include/drm/tinydrm/tinydrm-helpers.h
> >>> b/include/drm/tinydrm/tinydrm-helpers.h
> >>> index f54fae0..0a4ddbc 100644
> >>> --- a/include/drm/tinydrm/tinydrm-helpers.h
> >>> +++ b/include/drm/tinydrm/tinydrm-helpers.h
> >>> @@ -46,8 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
> >>>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct
> >>> drm_framebuffer *fb,
> >>>                                struct drm_clip_rect *clip);
> >>>   -struct backlight_device *tinydrm_of_find_backlight(struct device
> >>> *dev);
> >>> -
> >>>   size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t
> >>> max_len);
> >>>   bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
> >>>   int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
> >>> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> >>> index b88fabb..987a6d7 100644
> >>> --- a/include/linux/backlight.h
> >>> +++ b/include/linux/backlight.h
> >>> @@ -159,6 +159,16 @@ static inline int backlight_disable(struct
> >>> backlight_device *bd)
> >>>         return backlight_update_status(bd);
> >>>   }
> >>>   +/**
> >>> + * backlight_put - Drop backlight reference
> >>> + * @bd: the backlight device to put
> >>> + */
> >>> +static inline void backlight_put(struct backlight_device *bd)
> >>> +{
> >>> +       if (bd)
> >>> +               put_device(&bd->dev);
> >>> +}
> >>
> >> I'm not convinced this function needs to exist.
> >>
> >>> +
> >>>   extern struct backlight_device *backlight_device_register(const char
> >>> *name,
> >>>         struct device *dev, void *devdata, const struct backlight_ops
> >>> *ops,
> >>>         const struct backlight_properties *props);
> >>> @@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *node)
> >>>   }
> >>>   #endif
> >>>   +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> >>> +struct backlight_device *backlight_get(struct device *dev);
> >>> +#else
> >>> +static inline struct backlight_device *backlight_get(struct device *dev)
> >>> +{
> >>> +       return NULL;
> >>> +}
> >>> +#endif
> >>> +
> >>>   #endif
> >>> --
> >>> 2.7.4
> >>>
> >>> --
> >>> You received this message because you are subscribed to the Google Groups
> >>> "outreachy-kernel" group.
> >>> To unsubscribe from this group and stop receiving emails from it, send an
> >>> email to outreachy-kernel+unsubscribe@googlegroups.com.
> >>> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >>> To view this discussion on the web visit
> >>> https://groups.google.com/d/msgid/outreachy-kernel/e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha%40gmail.com.
> >>> For more options, visit https://groups.google.com/d/optout.
> >
> >


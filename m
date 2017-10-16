X-GM-THRID: 6475592721521180672
X-Received: by 10.157.83.138 with SMTP id w10mr5923729otg.29.1508178384218;
        Mon, 16 Oct 2017 11:26:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.148 with SMTP id n20ls4338768otb.6.gmail; Mon, 16 Oct
 2017 11:26:23 -0700 (PDT)
X-Received: by 10.202.225.212 with SMTP id y203mr5111606oig.94.1508178383738;
        Mon, 16 Oct 2017 11:26:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508178383; cv=none;
        d=google.com; s=arc-20160816;
        b=bKrInxOmwOvKlFoD+6Ja8H5brHepxDFozXfZT19TjGiZdihONs3/r4WJsYQi/K/Y8B
         uyOMU5H5YIkVnAAtCpVUktJ+EcmJ+pCyCjsMH/8qzTH1wH5uEb+4HY5N0go3MyQOyl2j
         ygmXtyZp/Jm0tv0Dp0uyv3/ttR9xjL/1T3wE6okdxSoqDpyCm4EVQuRqEJVIM5OQ+jmm
         zPY+Ywgwd2ysCB4KrqAL6BYle+Bevma09GOqoADQd8ndh0lXaE8STrbSNStsrXFvcLm5
         QUDy7gC9jm5JBfEeoSMKxdfw2CVteblZQWpTld93fdlGJgDX5FGJCMvO1/lkO2DDe29d
         BaMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=P80gQSps/nzoJHM+AJoiyduw4bzMJ4o2VlpyXr0htRc=;
        b=cUsHeMZID9feOq5f9BcvzQ3JX52Uk8kL47wXm8KFmz87dXK8gO6TG9LQKlW6Zj5ZbC
         tOjvDG2r6iCvhUQXGGLONtMSw/o9b23iC+zgGAGHcj5/z68Z+OaTYboqpMVBBjgh0utr
         qthDbrMF/0X6umYsiev7Gtqq2BBXj7rDKYqvO7kwKOzNtAxMegR+2ylUK3MPWJ1twFXL
         2c69JOSAyEiwWYUU2gFZhdbU06Az2jyK4862apWXwSO78VtDQLMEn8NHDPoyO41mYJGZ
         ZVulucWCP6NTfMn5lZoKFJs1GC4UaZfJ4KydlXE+0dVPzNkhsOVRpsb5Hu/2XKLIFC/R
         12gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gfguhhJb;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::229 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x229.google.com (mail-qt0-x229.google.com. [2607:f8b0:400d:c0d::229])
        by gmr-mx.google.com with ESMTPS id q7si340523oih.5.2017.10.16.11.26.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 11:26:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::229 as permitted sender) client-ip=2607:f8b0:400d:c0d::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gfguhhJb;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::229 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x229.google.com with SMTP id f8so33689935qta.5
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 11:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=P80gQSps/nzoJHM+AJoiyduw4bzMJ4o2VlpyXr0htRc=;
        b=gfguhhJbf2V9Ix7UORckRKjZ8Lbokevge+PDszHHvY2CuX55GSLHymJ6MMR6QAtzZA
         wqARYiQuv+UIaGK/zl0pYgi2em8yGPZ0lt+ARqfux0S0wvfnSobrJRef+IbNI5/NJGV0
         wpfwB3s16dYDo+lCe2N6voKs1UQg0FkDXSfJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=P80gQSps/nzoJHM+AJoiyduw4bzMJ4o2VlpyXr0htRc=;
        b=qjAgSf7ZTZQln+AB2escOkVGfgkq1OgxAG6ZGvCuD+ERf1qqmN7UwgirMzk3PjiVdC
         +TjVnAOno+Oaz76gJCSdZDtton2HzfOd48fWPJjB5cIRVIlb82yuD6AvDnQoiMhcEgb0
         TQYO3zGEWgH5G0LDpZQ2JqnCPJ7oj0pI/UDQB59YumfiK1mVIStRFGTDm4hiCwAeRCGi
         auPrkGtsXzDxtdvBxTA4YiXj69ZpITeD1WIGaV1azW3yEXh4mHRtMzqpRhyKY+IBIODc
         iWr7rQBcPsxfW78G8yuuHYnAWkjsw02wGImQt/KdniW6c7D80+iNv272PCPfdMSP9TPp
         c6Rg==
X-Gm-Message-State: AMCzsaVwuObZtw2zeU9jUms0j3HHyfSxVtFo1RPhvHPdP+tUb6YW1z2x
	cJBII8Sk1s88fsNXcGtuRj7n09lf/7Y=
X-Received: by 10.37.187.197 with SMTP id c5mr997160ybk.68.1508178383134;
        Mon, 16 Oct 2017 11:26:23 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com. [209.85.214.46])
        by smtp.gmail.com with ESMTPSA id r29sm4874737ywa.79.2017.10.16.11.26.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 11:26:22 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id o135so2259760itb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 11:26:22 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SmTZSL6LioRl11quEzlgoO2LbtpbATrpQRkc+Oc5bpJf9mRxTUhwmTme+iXD9qa8yNnVPXUQxyq2xXSDCP2ro=
X-Received: by 10.36.81.21 with SMTP id s21mr2320667ita.144.1508178381641;
 Mon, 16 Oct 2017 11:26:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.174.66 with HTTP; Mon, 16 Oct 2017 11:26:00 -0700 (PDT)
In-Reply-To: <e2772dfa-f62b-619f-e186-79ea2819aea3@tronnes.org>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
 <20171013202557.s7r2ec67sl646vtj@art_vandelay> <e2772dfa-f62b-619f-e186-79ea2819aea3@tronnes.org>
From: Sean Paul <seanpaul@chromium.org>
Date: Mon, 16 Oct 2017 14:26:00 -0400
X-Gmail-Original-Message-ID: <CAOw6vb+j+KFXaeRyog9sROvzxYDhgx+GP97bPokFNNO-By5Hvg@mail.gmail.com>
Message-ID: <CAOw6vb+j+KFXaeRyog9sROvzxYDhgx+GP97bPokFNNO-By5Hvg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v13 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
To: =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	Daniel Thompson <daniel.thompson@linaro.org>, Jani Nikula <jani.nikula@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 13, 2017 at 6:42 PM, Noralf Tr=C3=B8nnes <noralf@tronnes.org> w=
rote:
>
> Den 13.10.2017 22.25, skrev Sean Paul:
>>
>> On Fri, Oct 13, 2017 at 04:11:43PM +0530, Meghana Madhyastha wrote:
>>>
>>> Rename tinydrm_of_find_backlight to backlight_get and move it
>>> to linux/backlight.c so that it can be used by other drivers.
>>
>> [apologies if this has been brought up in previous versions, I haven't
>> been
>> following closely]
>>
>> I don't think "backlight_get" is a good name for this function. How abou=
t
>> of_find_backlight_by_name (since there's already
>> of_find_backlight_by_node)?
>
>
> I came up with that name modelled after gpiod_get() and gpiod_put() and I
> deliberately kept the of_ part out of the name like the gpio functions.
> gpiod_get() checks OF, ACPI and platform for gpios and calling it
> backlight_get() would keep the door open for other ways of connecting
> backlight devices in the future, other than Device Tree.
>

Thanks for the background, Noralf! Apologies for stepping on top of
your previous reviews.

> I think of_find_backlight() would be better than *_by_name(), since
> 'backlight' is the common DT property name, so it wouldn't make much sens=
e
> to require every caller to pass in the same name.
>

of_find_backlight() sounds like a good compromise.

Sean


> Either way is fine with me.
>
> Noralf.
>
>
>
>>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>>> ---
>>> Changes in v13:
>>>   -Add backlight_put to backlight.h in this patch
>>>
>>>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40
>>> --------------------------
>>>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>>>   drivers/video/backlight/backlight.c            | 37
>>> ++++++++++++++++++++++++
>>>   include/drm/tinydrm/tinydrm-helpers.h          |  2 --
>>>   include/linux/backlight.h                      | 19 ++++++++++++
>>>   5 files changed, 58 insertions(+), 43 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>> b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>> index a42dee6..cb1a01a 100644
>>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>> @@ -236,46 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vadd=
r,
>>> struct drm_framebuffer *fb,
>>>   }
>>>   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>>>   -/**
>>> - * tinydrm_of_find_backlight - Find backlight device in device-tree
>>> - * @dev: Device
>>> - *
>>> - * This function looks for a DT node pointed to by a property named
>>> 'backlight'
>>> - * and uses of_find_backlight_by_node() to get the backlight device.
>>> - * Additionally if the brightness property is zero, it is set to
>>> - * max_brightness.
>>> - *
>>> - * Returns:
>>> - * NULL if there's no backlight property.
>>> - * Error pointer -EPROBE_DEFER if the DT node is found, but no backlig=
ht
>>> device
>>> - * is found.
>>> - * If the backlight device is found, a pointer to the structure is
>>> returned.
>>> - */
>>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
>>> -{
>>> -       struct backlight_device *backlight;
>>> -       struct device_node *np;
>>> -
>>> -       np =3D of_parse_phandle(dev->of_node, "backlight", 0);
>>> -       if (!np)
>>> -               return NULL;
>>> -
>>> -       backlight =3D of_find_backlight_by_node(np);
>>> -       of_node_put(np);
>>> -
>>> -       if (!backlight)
>>> -               return ERR_PTR(-EPROBE_DEFER);
>>> -
>>> -       if (!backlight->props.brightness) {
>>> -               backlight->props.brightness =3D
>>> backlight->props.max_brightness;
>>> -               DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>>> -                             backlight->props.brightness);
>>> -       }
>>> -
>>> -       return backlight;
>>> -}
>>> -EXPORT_SYMBOL(tinydrm_of_find_backlight);
>>> -
>>>   #if IS_ENABLED(CONFIG_SPI)
>>>     /**
>>> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c
>>> b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>> index 7fd2691..a932185 100644
>>> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>>> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>> @@ -12,6 +12,7 @@
>>>   #include <drm/tinydrm/ili9341.h>
>>>   #include <drm/tinydrm/mipi-dbi.h>
>>>   #include <drm/tinydrm/tinydrm-helpers.h>
>>> +#include <linux/backlight.h>
>>>   #include <linux/delay.h>
>>>   #include <linux/gpio/consumer.h>
>>>   #include <linux/module.h>
>>> @@ -188,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>>>         if (IS_ERR(mipi->regulator))
>>>                 return PTR_ERR(mipi->regulator);
>>>   -     mipi->backlight =3D tinydrm_of_find_backlight(dev);
>>> +       mipi->backlight =3D backlight_get(dev);
>>>         if (IS_ERR(mipi->backlight))
>>>                 return PTR_ERR(mipi->backlight);
>>>   diff --git a/drivers/video/backlight/backlight.c
>>> b/drivers/video/backlight/backlight.c
>>> index 8049e76..c4e94d0 100644
>>> --- a/drivers/video/backlight/backlight.c
>>> +++ b/drivers/video/backlight/backlight.c
>>> @@ -580,6 +580,43 @@ struct backlight_device
>>> *of_find_backlight_by_node(struct device_node *node)
>>>   EXPORT_SYMBOL(of_find_backlight_by_node);
>>>   #endif
>>>   +/**
>>> + * backlight_get - Get backlight device
>>> + * @dev: Device
>>> + *
>>> + * This function looks for a property named 'backlight' on the DT node
>>> + * connected to @dev and looks up the backlight device.
>>> + *
>>> + * Call backlight_put() to drop the reference on the backlight device.
>>> + *
>>> + * Returns:
>>> + * A pointer to the backlight device if found.
>>> + * Error pointer -EPROBE_DEFER if the DT property is set, but no
>>> backlight
>>> + * device is found.
>>> + * NULL if there's no backlight property.
>>> + */
>>> +struct backlight_device *backlight_get(struct device *dev)
>>> +{
>>> +       struct backlight_device *bd =3D NULL;
>>> +       struct device_node *np;
>>> +
>>> +       if (!dev)
>>> +               return NULL;
>>> +
>>> +       if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
>>
>> I'm not really used to seeing IS_ENABLED(CONFIG_BLAH) inline. The common
>> patterns seems to be wrapping the actual implementation in #if
>> IS_ENABLED(CONFIG_BLAH) and then sticking a stub implementation in the
>> #else.
>>
>> I see below that you already have a stub if backlight is not enabled, so
>> expand
>> that #if to include CONFIG_OF as well.
>>
>>> +               np =3D of_parse_phandle(dev->of_node, "backlight", 0);
>>> +               if (np) {
>>> +                       bd =3D of_find_backlight_by_node(np);
>>> +                       of_node_put(np);
>>> +                       if (!bd)
>>> +                               return ERR_PTR(-EPROBE_DEFER);
>>> +               }
>>> +       }
>>> +
>>> +       return bd;
>>> +}
>>> +EXPORT_SYMBOL(backlight_get);
>>> +
>>>   static void __exit backlight_class_exit(void)
>>>   {
>>>         class_destroy(backlight_class);
>>> diff --git a/include/drm/tinydrm/tinydrm-helpers.h
>>> b/include/drm/tinydrm/tinydrm-helpers.h
>>> index f54fae0..0a4ddbc 100644
>>> --- a/include/drm/tinydrm/tinydrm-helpers.h
>>> +++ b/include/drm/tinydrm/tinydrm-helpers.h
>>> @@ -46,8 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr=
,
>>>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct
>>> drm_framebuffer *fb,
>>>                                struct drm_clip_rect *clip);
>>>   -struct backlight_device *tinydrm_of_find_backlight(struct device
>>> *dev);
>>> -
>>>   size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t
>>> max_len);
>>>   bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
>>>   int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
>>> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
>>> index b88fabb..987a6d7 100644
>>> --- a/include/linux/backlight.h
>>> +++ b/include/linux/backlight.h
>>> @@ -159,6 +159,16 @@ static inline int backlight_disable(struct
>>> backlight_device *bd)
>>>         return backlight_update_status(bd);
>>>   }
>>>   +/**
>>> + * backlight_put - Drop backlight reference
>>> + * @bd: the backlight device to put
>>> + */
>>> +static inline void backlight_put(struct backlight_device *bd)
>>> +{
>>> +       if (bd)
>>> +               put_device(&bd->dev);
>>> +}
>>
>> I'm not convinced this function needs to exist.
>>
>>> +
>>>   extern struct backlight_device *backlight_device_register(const char
>>> *name,
>>>         struct device *dev, void *devdata, const struct backlight_ops
>>> *ops,
>>>         const struct backlight_properties *props);
>>> @@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *node=
)
>>>   }
>>>   #endif
>>>   +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>>> +struct backlight_device *backlight_get(struct device *dev);
>>> +#else
>>> +static inline struct backlight_device *backlight_get(struct device *de=
v)
>>> +{
>>> +       return NULL;
>>> +}
>>> +#endif
>>> +
>>>   #endif
>>> --
>>> 2.7.4
>>>
>>> --
>>> You received this message because you are subscribed to the Google Grou=
ps
>>> "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send =
an
>>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit
>>> https://groups.google.com/d/msgid/outreachy-kernel/e2ef05bf46438427d08c=
6a61fe5058156800db95.1507890285.git.meghana.madhyastha%40gmail.com.
>>> For more options, visit https://groups.google.com/d/optout.
>
>


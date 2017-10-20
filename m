X-GM-THRID: 6475592721521180672
X-Received: by 10.107.135.102 with SMTP id j99mr3711887iod.140.1508520064278;
        Fri, 20 Oct 2017 10:21:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.56.67 with SMTP id f64ls2559364ioa.17.gmail; Fri, 20 Oct
 2017 10:21:03 -0700 (PDT)
X-Received: by 10.36.5.5 with SMTP id 5mr1897720itl.30.1508520063487;
        Fri, 20 Oct 2017 10:21:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508520063; cv=none;
        d=google.com; s=arc-20160816;
        b=vIZgu+KwmBc9B7hpLDU1jD/rEtlnbXZuxviSb6o1A7SU0KAnSdiMuwPmAkVZa4AkX+
         Xg/suVOpz/G4BTs0c7r7dlkmXTzmk70w30CZ5UQVN3jUzj3f1V3Fz5aOw0uGznKjDX4X
         X+qeLj6KjmF6SPNZZyeLU1Xv6GHnQGDtudeITIeeCm+vijP19YxwQkLDCdYxdhK7rrSw
         5YQVLm8krAGpD+7Iky4Ga2cvZyarWa7lI2cZCpohBB3PIi3TvctrILkYZG7G9OwN8H42
         kpwyseRn0ChTGzoclb12a3C5E31KfmtqGiTxHuoFxe6notG5dwZd9OJMMIMam7eg2UMm
         IyVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=5xwKJYnkjMGdlQAp2CxnC/JYWmcxv1OeSWaWW360WG8=;
        b=xyszxhcKR/YENzNf/6jM7kOW1q6rgVgqtGQPG4ac0AVyWs1hkvuJBgmXw8g1K5aAxx
         xNxjLszloCWYzpQZ3aO1IWjjzxOFIzmtfN1Y+JpZuDfBH6s9nZH4bKCMtabQk0IcKqsZ
         CZ6CeUQpynFcnIe8in2bugSo1jFuAYbZjEakncK/oZvwNTCUQsF3kNSmXE5HG/5Qlzsw
         CHwIDEHhi/lONZ+eqbn7mcv3P4N+M0W1+Q3d2z+PiMMmeHuzXSpRkdqbZIep0/aQJDTS
         +9cPLDBQZa+d/FvhnSlXzPaGjEtVtB9rFJI2ixO5ytt1dMglMvca/NVxIXN+vVDdKdlz
         9GxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Oi2fKnP4;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id a205si158403itg.1.2017.10.20.10.21.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Oct 2017 10:21:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Oi2fKnP4;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-it0-x242.google.com with SMTP id n195so14228690itg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Oct 2017 10:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5xwKJYnkjMGdlQAp2CxnC/JYWmcxv1OeSWaWW360WG8=;
        b=Oi2fKnP4Av8dE1e2nis/wWE1utOCIsH6+y79MoTsPrQ+pZ+A8XIH05yfUGC0yeFc4n
         GVh2oU+zzBip2bAGhZxrWp6nFfZ7Jv7Rr1rueTwU/7AeU4EI3RD/iuMcKohuB6EnHUfK
         f5YDE0nK3MEm1mqGNHy/sCY68m0KouOwKvdHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5xwKJYnkjMGdlQAp2CxnC/JYWmcxv1OeSWaWW360WG8=;
        b=FtQKR2GC6hGLbYvginm2ILuBZt8X/7kEoD72Dq60eHLNoi/Cw0ov8xEkTte1Bc45JN
         7LsGlCCzMxaO313eH4XS/Y0L1B6Xw8ZYJL3jklZtNmbYJj44XX7Q+uU9zM1LO6fJf7Kr
         91H3w3KqYDDKbBoe8GG29xnQ4TjSdSFXZe+BdOcgBVM4f0HcBQTPOAjgD7NUimJ9hVLn
         bGxKJOKACzijs9DBZLXb9pKCqNQhJrK7BFt/9D6pLyJ27odVFGSQJO+d6wsyW4A+T+p5
         /RGT1feaOKGWp78r1+sxWVFAVXWXV3yJ7ZWUtgJ3DA+6eIlew8gWdXQxaOwd3NzzLIaC
         EdKQ==
X-Gm-Message-State: AMCzsaUVm5fQE7NHjEQlpr98GbcN1PiVm9UuHHnCufpL7O/t5daeOWNF
	kaKkHBm4HxxA3QQRp2ylXFIbFgLanhM=
X-Received: by 10.36.46.131 with SMTP id i125mr3377977ita.99.1508520062919;
        Fri, 20 Oct 2017 10:21:02 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com. [209.85.214.44])
        by smtp.gmail.com with ESMTPSA id 81sm706721itl.20.2017.10.20.10.21.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Oct 2017 10:21:02 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id n195so14228626itg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Oct 2017 10:21:02 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+Qc/pIEETPT6WEvjUcvUXpTnZRyQiVUe7mHEuhjX7EMcKVtb7pfWBN4KvkOvQn5XteVs+T7McolqOuwNlchmO4=
X-Received: by 10.36.61.133 with SMTP id n127mr3713060itn.106.1508520061730;
 Fri, 20 Oct 2017 10:21:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.174.66 with HTTP; Fri, 20 Oct 2017 10:20:41 -0700 (PDT)
In-Reply-To: <20171018171132.GA8116@meghana-HP-Pavilion-Notebook>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
 <20171013202557.s7r2ec67sl646vtj@art_vandelay> <e2772dfa-f62b-619f-e186-79ea2819aea3@tronnes.org>
 <CAOw6vb+j+KFXaeRyog9sROvzxYDhgx+GP97bPokFNNO-By5Hvg@mail.gmail.com> <20171018171132.GA8116@meghana-HP-Pavilion-Notebook>
From: Sean Paul <seanpaul@chromium.org>
Date: Fri, 20 Oct 2017 13:20:41 -0400
X-Gmail-Original-Message-ID: <CAOw6vbKjhx7b72tAQLkv7fmyv_Q3wcK72PPTAzeQ=XHe_bNL1w@mail.gmail.com>
Message-ID: <CAOw6vbKjhx7b72tAQLkv7fmyv_Q3wcK72PPTAzeQ=XHe_bNL1w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v13 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2017 at 1:11 PM, Meghana Madhyastha
<meghana.madhyastha@gmail.com> wrote:
> On Mon, Oct 16, 2017 at 02:26:00PM -0400, Sean Paul wrote:
>> On Fri, Oct 13, 2017 at 6:42 PM, Noralf Tr=C3=B8nnes <noralf@tronnes.org=
> wrote:
>> >
>> > Den 13.10.2017 22.25, skrev Sean Paul:
>> >>
>> >> On Fri, Oct 13, 2017 at 04:11:43PM +0530, Meghana Madhyastha wrote:
>> >>>
>> >>> Rename tinydrm_of_find_backlight to backlight_get and move it
>> >>> to linux/backlight.c so that it can be used by other drivers.
>> >>
>> >> [apologies if this has been brought up in previous versions, I haven'=
t
>> >> been
>> >> following closely]
>> >>
>> >> I don't think "backlight_get" is a good name for this function. How a=
bout
>> >> of_find_backlight_by_name (since there's already
>> >> of_find_backlight_by_node)?
>> >
>> >
>> > I came up with that name modelled after gpiod_get() and gpiod_put() an=
d I
>> > deliberately kept the of_ part out of the name like the gpio functions=
.
>> > gpiod_get() checks OF, ACPI and platform for gpios and calling it
>> > backlight_get() would keep the door open for other ways of connecting
>> > backlight devices in the future, other than Device Tree.
>> >
>>
>> Thanks for the background, Noralf! Apologies for stepping on top of
>> your previous reviews.
>>
>> > I think of_find_backlight() would be better than *_by_name(), since
>> > 'backlight' is the common DT property name, so it wouldn't make much s=
ense
>> > to require every caller to pass in the same name.
>> >
>>
>> of_find_backlight() sounds like a good compromise.
>>
>> Sean
>
> Are there any changes that need to be made to this patchset now ?
>

I still prefer s/backlight_get/of_find_backlight/ and it seems Noralf
is Ok with that too. I think there were also review comments
surrounding the _put function?

Sean

> Regards,
> Meghana
>
>>
>> > Either way is fine with me.
>> >
>> > Noralf.
>> >
>> >
>> >
>> >>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>> >>> ---
>> >>> Changes in v13:
>> >>>   -Add backlight_put to backlight.h in this patch
>> >>>
>> >>>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40
>> >>> --------------------------
>> >>>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>> >>>   drivers/video/backlight/backlight.c            | 37
>> >>> ++++++++++++++++++++++++
>> >>>   include/drm/tinydrm/tinydrm-helpers.h          |  2 --
>> >>>   include/linux/backlight.h                      | 19 ++++++++++++
>> >>>   5 files changed, 58 insertions(+), 43 deletions(-)
>> >>>
>> >>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> >>> b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> >>> index a42dee6..cb1a01a 100644
>> >>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> >>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> >>> @@ -236,46 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *v=
addr,
>> >>> struct drm_framebuffer *fb,
>> >>>   }
>> >>>   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>> >>>   -/**
>> >>> - * tinydrm_of_find_backlight - Find backlight device in device-tree
>> >>> - * @dev: Device
>> >>> - *
>> >>> - * This function looks for a DT node pointed to by a property named
>> >>> 'backlight'
>> >>> - * and uses of_find_backlight_by_node() to get the backlight device=
.
>> >>> - * Additionally if the brightness property is zero, it is set to
>> >>> - * max_brightness.
>> >>> - *
>> >>> - * Returns:
>> >>> - * NULL if there's no backlight property.
>> >>> - * Error pointer -EPROBE_DEFER if the DT node is found, but no back=
light
>> >>> device
>> >>> - * is found.
>> >>> - * If the backlight device is found, a pointer to the structure is
>> >>> returned.
>> >>> - */
>> >>> -struct backlight_device *tinydrm_of_find_backlight(struct device *d=
ev)
>> >>> -{
>> >>> -       struct backlight_device *backlight;
>> >>> -       struct device_node *np;
>> >>> -
>> >>> -       np =3D of_parse_phandle(dev->of_node, "backlight", 0);
>> >>> -       if (!np)
>> >>> -               return NULL;
>> >>> -
>> >>> -       backlight =3D of_find_backlight_by_node(np);
>> >>> -       of_node_put(np);
>> >>> -
>> >>> -       if (!backlight)
>> >>> -               return ERR_PTR(-EPROBE_DEFER);
>> >>> -
>> >>> -       if (!backlight->props.brightness) {
>> >>> -               backlight->props.brightness =3D
>> >>> backlight->props.max_brightness;
>> >>> -               DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>> >>> -                             backlight->props.brightness);
>> >>> -       }
>> >>> -
>> >>> -       return backlight;
>> >>> -}
>> >>> -EXPORT_SYMBOL(tinydrm_of_find_backlight);
>> >>> -
>> >>>   #if IS_ENABLED(CONFIG_SPI)
>> >>>     /**
>> >>> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c
>> >>> b/drivers/gpu/drm/tinydrm/mi0283qt.c
>> >>> index 7fd2691..a932185 100644
>> >>> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>> >>> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>> >>> @@ -12,6 +12,7 @@
>> >>>   #include <drm/tinydrm/ili9341.h>
>> >>>   #include <drm/tinydrm/mipi-dbi.h>
>> >>>   #include <drm/tinydrm/tinydrm-helpers.h>
>> >>> +#include <linux/backlight.h>
>> >>>   #include <linux/delay.h>
>> >>>   #include <linux/gpio/consumer.h>
>> >>>   #include <linux/module.h>
>> >>> @@ -188,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi=
)
>> >>>         if (IS_ERR(mipi->regulator))
>> >>>                 return PTR_ERR(mipi->regulator);
>> >>>   -     mipi->backlight =3D tinydrm_of_find_backlight(dev);
>> >>> +       mipi->backlight =3D backlight_get(dev);
>> >>>         if (IS_ERR(mipi->backlight))
>> >>>                 return PTR_ERR(mipi->backlight);
>> >>>   diff --git a/drivers/video/backlight/backlight.c
>> >>> b/drivers/video/backlight/backlight.c
>> >>> index 8049e76..c4e94d0 100644
>> >>> --- a/drivers/video/backlight/backlight.c
>> >>> +++ b/drivers/video/backlight/backlight.c
>> >>> @@ -580,6 +580,43 @@ struct backlight_device
>> >>> *of_find_backlight_by_node(struct device_node *node)
>> >>>   EXPORT_SYMBOL(of_find_backlight_by_node);
>> >>>   #endif
>> >>>   +/**
>> >>> + * backlight_get - Get backlight device
>> >>> + * @dev: Device
>> >>> + *
>> >>> + * This function looks for a property named 'backlight' on the DT n=
ode
>> >>> + * connected to @dev and looks up the backlight device.
>> >>> + *
>> >>> + * Call backlight_put() to drop the reference on the backlight devi=
ce.
>> >>> + *
>> >>> + * Returns:
>> >>> + * A pointer to the backlight device if found.
>> >>> + * Error pointer -EPROBE_DEFER if the DT property is set, but no
>> >>> backlight
>> >>> + * device is found.
>> >>> + * NULL if there's no backlight property.
>> >>> + */
>> >>> +struct backlight_device *backlight_get(struct device *dev)
>> >>> +{
>> >>> +       struct backlight_device *bd =3D NULL;
>> >>> +       struct device_node *np;
>> >>> +
>> >>> +       if (!dev)
>> >>> +               return NULL;
>> >>> +
>> >>> +       if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
>> >>
>> >> I'm not really used to seeing IS_ENABLED(CONFIG_BLAH) inline. The com=
mon
>> >> patterns seems to be wrapping the actual implementation in #if
>> >> IS_ENABLED(CONFIG_BLAH) and then sticking a stub implementation in th=
e
>> >> #else.
>> >>
>> >> I see below that you already have a stub if backlight is not enabled,=
 so
>> >> expand
>> >> that #if to include CONFIG_OF as well.
>> >>
>> >>> +               np =3D of_parse_phandle(dev->of_node, "backlight", 0=
);
>> >>> +               if (np) {
>> >>> +                       bd =3D of_find_backlight_by_node(np);
>> >>> +                       of_node_put(np);
>> >>> +                       if (!bd)
>> >>> +                               return ERR_PTR(-EPROBE_DEFER);
>> >>> +               }
>> >>> +       }
>> >>> +
>> >>> +       return bd;
>> >>> +}
>> >>> +EXPORT_SYMBOL(backlight_get);
>> >>> +
>> >>>   static void __exit backlight_class_exit(void)
>> >>>   {
>> >>>         class_destroy(backlight_class);
>> >>> diff --git a/include/drm/tinydrm/tinydrm-helpers.h
>> >>> b/include/drm/tinydrm/tinydrm-helpers.h
>> >>> index f54fae0..0a4ddbc 100644
>> >>> --- a/include/drm/tinydrm/tinydrm-helpers.h
>> >>> +++ b/include/drm/tinydrm/tinydrm-helpers.h
>> >>> @@ -46,8 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *va=
ddr,
>> >>>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct
>> >>> drm_framebuffer *fb,
>> >>>                                struct drm_clip_rect *clip);
>> >>>   -struct backlight_device *tinydrm_of_find_backlight(struct device
>> >>> *dev);
>> >>> -
>> >>>   size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_=
t
>> >>> max_len);
>> >>>   bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
>> >>>   int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
>> >>> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
>> >>> index b88fabb..987a6d7 100644
>> >>> --- a/include/linux/backlight.h
>> >>> +++ b/include/linux/backlight.h
>> >>> @@ -159,6 +159,16 @@ static inline int backlight_disable(struct
>> >>> backlight_device *bd)
>> >>>         return backlight_update_status(bd);
>> >>>   }
>> >>>   +/**
>> >>> + * backlight_put - Drop backlight reference
>> >>> + * @bd: the backlight device to put
>> >>> + */
>> >>> +static inline void backlight_put(struct backlight_device *bd)
>> >>> +{
>> >>> +       if (bd)
>> >>> +               put_device(&bd->dev);
>> >>> +}
>> >>
>> >> I'm not convinced this function needs to exist.
>> >>
>> >>> +
>> >>>   extern struct backlight_device *backlight_device_register(const ch=
ar
>> >>> *name,
>> >>>         struct device *dev, void *devdata, const struct backlight_op=
s
>> >>> *ops,
>> >>>         const struct backlight_properties *props);
>> >>> @@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *n=
ode)
>> >>>   }
>> >>>   #endif
>> >>>   +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>> >>> +struct backlight_device *backlight_get(struct device *dev);
>> >>> +#else
>> >>> +static inline struct backlight_device *backlight_get(struct device =
*dev)
>> >>> +{
>> >>> +       return NULL;
>> >>> +}
>> >>> +#endif
>> >>> +
>> >>>   #endif
>> >>> --
>> >>> 2.7.4
>> >>>
>> >>> --
>> >>> You received this message because you are subscribed to the Google G=
roups
>> >>> "outreachy-kernel" group.
>> >>> To unsubscribe from this group and stop receiving emails from it, se=
nd an
>> >>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >>> To post to this group, send email to outreachy-kernel@googlegroups.c=
om.
>> >>> To view this discussion on the web visit
>> >>> https://groups.google.com/d/msgid/outreachy-kernel/e2ef05bf46438427d=
08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha%40gmail.com.
>> >>> For more options, visit https://groups.google.com/d/optout.
>> >
>> >


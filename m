X-GM-THRID: 6475592721521180672
X-Received: by 10.37.31.84 with SMTP id f81mr6247912ybf.56.1508178733080;
        Mon, 16 Oct 2017 11:32:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.182.8 with SMTP id u8ls543260ywh.28.gmail; Mon, 16 Oct
 2017 11:32:12 -0700 (PDT)
X-Received: by 10.37.95.72 with SMTP id h8mr6242984ybm.84.1508178732294;
        Mon, 16 Oct 2017 11:32:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508178732; cv=none;
        d=google.com; s=arc-20160816;
        b=YoB1Pr7UEvJlGOV+I/9ZwoS12IszMTvzsKieesbsovex4p6FGaqO4Fv30qsP06LOsq
         SkmQtIgzQST/mEkIsb6B6qxQpRgWHs/stVtc6B/m2LqpXhwzHLgRjRZTs4KNcczHUXD3
         qpInH5cfufLem3RMtpB0IL0ACEumWna5cXBJLAd3lNbBPqPlSHPMO7ZEd1Z+c1Kp9OAA
         vX0PdVb+Mbw5UYpRoGfrDmqLFtQar+isVa3nLh7dAWU0KQDPFnAGtsJQxJsShN0189xm
         CD51HvDlBiMCzSmqZjCZcSStUuQuHlt/QOQgjUSov0FM7WhGLeVKPyyd3FCLV4xS9VGr
         mnMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=paeJj6FRfFvuqSansizxf2nNGRcnWmHVhZGdVP7suic=;
        b=pmvDTXHLm6MXePLpXEYytUQIAB3sy8o6yf619r+VwJhN+bIMlipFkOoUwv/zC+PvMO
         mMoopN1dDBrSo7tXvNsQE4ANk/LalYqvPjBdTUpf98SnTyuFw4FtHOYiZD75ifcg1ZVq
         BTi4UuZI9RWBmqJjvggLFHxsziui4QBYiRoQBRZKyuq9pYuUYu7xNL8wz82otOqf4xq2
         ElDzq1OQkatP5asNLLJM0AgCGOMOe9e0EAAQ0ln77591n3j9tcJuY1OEy31m0cPH4DsP
         xqj9qE8DlartH5bmrYOSYJDL9JwZJY7BcZshTWSYtu5HDSOFANyEerJ7Fxlu0P1C0g9x
         bYxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QDLJCKL3;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22a as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x22a.google.com (mail-qt0-x22a.google.com. [2607:f8b0:400d:c0d::22a])
        by gmr-mx.google.com with ESMTPS id k5si459970ywe.1.2017.10.16.11.32.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 11:32:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22a as permitted sender) client-ip=2607:f8b0:400d:c0d::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QDLJCKL3;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22a as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x22a.google.com with SMTP id z50so33667367qtj.4
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 11:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=paeJj6FRfFvuqSansizxf2nNGRcnWmHVhZGdVP7suic=;
        b=QDLJCKL39+o+0GbMCL9evPQV/ZLyuGi9Qsmp/ceZFCAfw/Yuv0WHlmmrAkqc3WnvQG
         KEgfE+F0h8Iae6vH2Gf7TxS/FhQF2NjryJ/nn75ORGaoQyXiAPNlNl70MBhU7DJ+jWM3
         YI+ggNyRVnoDo1XdwAoTvB7IjFDKOdCEu+l/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=paeJj6FRfFvuqSansizxf2nNGRcnWmHVhZGdVP7suic=;
        b=FTtrl/96KzDM+iN+IFiizmqEUZETyyzACjDU286LDA2YUTp2twZ+3k4X75FAN/MLRC
         PeR/bgN2Az97k9o3mRZdEZbCoQuAf9jTrbGDbdCUNGJGyZfNoCDKA+C8zQDyuTsDWZoD
         yWgmdmADr7F4Y7iTIftXs7eNgg2jtBqOIDwRGbJVqBNzgTYlHf5b+Dhc0XZq1hKc1LzK
         HezkVruxflaiYuWv8mXZbrL0S6oNbvMItMIHXF0jbWYc1QagNsYASEWpkV+9j4zzFkTL
         vskVrEeyherpWkZT3a1jNiGmoMIS7nkhaUOIhQ8sP9IcoxZYgLS5QMC6w6nqbvvQV4OM
         5FjQ==
X-Gm-Message-State: AMCzsaUk5ZW7vM0DwkDE6h8mcndyMnSiL7kmsklv7BWdlEBo8JBOExVW
	66UEfoXQ8NlXna2teqMLNHQjVHBv3Co=
X-Received: by 10.13.249.6 with SMTP id j6mr1059817ywf.425.1508178731654;
        Mon, 16 Oct 2017 11:32:11 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com. [209.85.223.171])
        by smtp.gmail.com with ESMTPSA id x21sm2577017ywg.85.2017.10.16.11.32.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 11:32:11 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id e89so9399511ioi.11
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 11:32:11 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBVtsZTUGTTXjDhKXtBf6VqVyuh3zoSrbXzAjC4mig0WpjaYHY8nN1YNwiPDuYJ92cvXcmHgT7rdqabHyoDLNU=
X-Received: by 10.107.88.19 with SMTP id m19mr14821366iob.166.1508178730467;
 Mon, 16 Oct 2017 11:32:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.174.66 with HTTP; Mon, 16 Oct 2017 11:31:49 -0700 (PDT)
In-Reply-To: <CAF6AEGvak8_BWWXsyKBMxSPC1q=ZpugoMbFVz9KXe3FDOQToiQ@mail.gmail.com>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
 <20171013202557.s7r2ec67sl646vtj@art_vandelay> <CAF6AEGvak8_BWWXsyKBMxSPC1q=ZpugoMbFVz9KXe3FDOQToiQ@mail.gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Mon, 16 Oct 2017 14:31:49 -0400
X-Gmail-Original-Message-ID: <CAOw6vbLfCW2wVU+8ZJQ3H8jC8v5cM=3WLREg1zLLAqftwEOAVg@mail.gmail.com>
Message-ID: <CAOw6vbLfCW2wVU+8ZJQ3H8jC8v5cM=3WLREg1zLLAqftwEOAVg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v13 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
To: Rob Clark <robdclark@gmail.com>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>, 
	Daniel Thompson <daniel.thompson@linaro.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 13, 2017 at 7:25 PM, Rob Clark <robdclark@gmail.com> wrote:
> On Fri, Oct 13, 2017 at 4:25 PM, Sean Paul <seanpaul@chromium.org> wrote:
>> On Fri, Oct 13, 2017 at 04:11:43PM +0530, Meghana Madhyastha wrote:
>>> Rename tinydrm_of_find_backlight to backlight_get and move it
>>> to linux/backlight.c so that it can be used by other drivers.
>>
>> [apologies if this has been brought up in previous versions, I haven't been
>> following closely]
>>
>> I don't think "backlight_get" is a good name for this function. How about
>> of_find_backlight_by_name (since there's already of_find_backlight_by_node)?
>>
>>>
>>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>>> ---
>>> Changes in v13:
>>>  -Add backlight_put to backlight.h in this patch
>>>
>>>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 --------------------------
>>>  drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>>>  drivers/video/backlight/backlight.c            | 37 ++++++++++++++++++++++++
>>>  include/drm/tinydrm/tinydrm-helpers.h          |  2 --
>>>  include/linux/backlight.h                      | 19 ++++++++++++
>>>  5 files changed, 58 insertions(+), 43 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>> index a42dee6..cb1a01a 100644
>>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>> @@ -236,46 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>>  }
>>>  EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>>>
>>> -/**
>>> - * tinydrm_of_find_backlight - Find backlight device in device-tree
>>> - * @dev: Device
>>> - *
>>> - * This function looks for a DT node pointed to by a property named 'backlight'
>>> - * and uses of_find_backlight_by_node() to get the backlight device.
>>> - * Additionally if the brightness property is zero, it is set to
>>> - * max_brightness.
>>> - *
>>> - * Returns:
>>> - * NULL if there's no backlight property.
>>> - * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
>>> - * is found.
>>> - * If the backlight device is found, a pointer to the structure is returned.
>>> - */
>>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
>>> -{
>>> -     struct backlight_device *backlight;
>>> -     struct device_node *np;
>>> -
>>> -     np = of_parse_phandle(dev->of_node, "backlight", 0);
>>> -     if (!np)
>>> -             return NULL;
>>> -
>>> -     backlight = of_find_backlight_by_node(np);
>>> -     of_node_put(np);
>>> -
>>> -     if (!backlight)
>>> -             return ERR_PTR(-EPROBE_DEFER);
>>> -
>>> -     if (!backlight->props.brightness) {
>>> -             backlight->props.brightness = backlight->props.max_brightness;
>>> -             DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>>> -                           backlight->props.brightness);
>>> -     }
>>> -
>>> -     return backlight;
>>> -}
>>> -EXPORT_SYMBOL(tinydrm_of_find_backlight);
>>> -
>>>  #if IS_ENABLED(CONFIG_SPI)
>>>
>>>  /**
>>> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>> index 7fd2691..a932185 100644
>>> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>>> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>> @@ -12,6 +12,7 @@
>>>  #include <drm/tinydrm/ili9341.h>
>>>  #include <drm/tinydrm/mipi-dbi.h>
>>>  #include <drm/tinydrm/tinydrm-helpers.h>
>>> +#include <linux/backlight.h>
>>>  #include <linux/delay.h>
>>>  #include <linux/gpio/consumer.h>
>>>  #include <linux/module.h>
>>> @@ -188,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>>>       if (IS_ERR(mipi->regulator))
>>>               return PTR_ERR(mipi->regulator);
>>>
>>> -     mipi->backlight = tinydrm_of_find_backlight(dev);
>>> +     mipi->backlight = backlight_get(dev);
>>>       if (IS_ERR(mipi->backlight))
>>>               return PTR_ERR(mipi->backlight);
>>>
>>> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
>>> index 8049e76..c4e94d0 100644
>>> --- a/drivers/video/backlight/backlight.c
>>> +++ b/drivers/video/backlight/backlight.c
>>> @@ -580,6 +580,43 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
>>>  EXPORT_SYMBOL(of_find_backlight_by_node);
>>>  #endif
>>>
>>> +/**
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
>>> + * Error pointer -EPROBE_DEFER if the DT property is set, but no backlight
>>> + * device is found.
>>> + * NULL if there's no backlight property.
>>> + */
>>> +struct backlight_device *backlight_get(struct device *dev)
>>> +{
>>> +     struct backlight_device *bd = NULL;
>>> +     struct device_node *np;
>>> +
>>> +     if (!dev)
>>> +             return NULL;
>>> +
>>> +     if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
>>
>> I'm not really used to seeing IS_ENABLED(CONFIG_BLAH) inline. The common
>> patterns seems to be wrapping the actual implementation in #if
>> IS_ENABLED(CONFIG_BLAH) and then sticking a stub implementation in the #else.
>
>
> drive-by comment, but I actually prefer 'if (IS_ENABLED(CONFIG_FOO))
> ..' when possible.. it keeps the code compiled by the front-end of the
> compiler in more configs so less likely to bitrot, and the compiler is
> plenty good at DCE to eliminate the code when disabled in later stages
> of the compiler..
>

Sounds reasonable. I think there is already a stub implementation for
this function, so it's a little awkward gating on one CONFIG and not
another. Given Noralf's idea that backlight_get() be a general purpose
accessor, it makes a bit more sense to gate the entire function on
CONFIG_BACKLIGHT_CLASS_DRIVER and only a portion on CONFIG_OF.

So, I guess I'm fine with leaving this here.

Sean

> possibly exceptions are things that are called frequently where you
> want to inline the CONFIG_FOO=n stub so it can be eliminated without
> calling into another object file (at least until LTO gets good), but I
> guess that is not the case here..
>
> BR,
> -R
>
>
>> I see below that you already have a stub if backlight is not enabled, so expand
>> that #if to include CONFIG_OF as well.
>>
>>> +             np = of_parse_phandle(dev->of_node, "backlight", 0);
>>> +             if (np) {
>>> +                     bd = of_find_backlight_by_node(np);
>>> +                     of_node_put(np);
>>> +                     if (!bd)
>>> +                             return ERR_PTR(-EPROBE_DEFER);
>>> +             }
>>> +     }
>>> +
>>> +     return bd;
>>> +}
>>> +EXPORT_SYMBOL(backlight_get);
>>> +
>>>  static void __exit backlight_class_exit(void)
>>>  {
>>>       class_destroy(backlight_class);
>>> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
>>> index f54fae0..0a4ddbc 100644
>>> --- a/include/drm/tinydrm/tinydrm-helpers.h
>>> +++ b/include/drm/tinydrm/tinydrm-helpers.h
>>> @@ -46,8 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>>>  void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>>                              struct drm_clip_rect *clip);
>>>
>>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
>>> -
>>>  size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
>>>  bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
>>>  int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
>>> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
>>> index b88fabb..987a6d7 100644
>>> --- a/include/linux/backlight.h
>>> +++ b/include/linux/backlight.h
>>> @@ -159,6 +159,16 @@ static inline int backlight_disable(struct backlight_device *bd)
>>>       return backlight_update_status(bd);
>>>  }
>>>
>>> +/**
>>> + * backlight_put - Drop backlight reference
>>> + * @bd: the backlight device to put
>>> + */
>>> +static inline void backlight_put(struct backlight_device *bd)
>>> +{
>>> +     if (bd)
>>> +             put_device(&bd->dev);
>>> +}
>>
>> I'm not convinced this function needs to exist.
>>
>>> +
>>>  extern struct backlight_device *backlight_device_register(const char *name,
>>>       struct device *dev, void *devdata, const struct backlight_ops *ops,
>>>       const struct backlight_properties *props);
>>> @@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *node)
>>>  }
>>>  #endif
>>>
>>> +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>>> +struct backlight_device *backlight_get(struct device *dev);
>>> +#else
>>> +static inline struct backlight_device *backlight_get(struct device *dev)
>>> +{
>>> +     return NULL;
>>> +}
>>> +#endif
>>> +
>>>  #endif
>>> --
>>> 2.7.4
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha%40gmail.com.
>>> For more options, visit https://groups.google.com/d/optout.
>>
>> --
>> Sean Paul, Software Engineer, Google / Chromium OS
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel


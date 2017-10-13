X-GM-THRID: 6475592721521180672
X-Received: by 10.28.230.79 with SMTP id d76mr338741wmh.12.1507937106149;
        Fri, 13 Oct 2017 16:25:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.15 with SMTP id v15ls472407wmf.2.canary-gmail; Fri, 13
 Oct 2017 16:25:05 -0700 (PDT)
X-Received: by 10.28.24.207 with SMTP id 198mr334602wmy.12.1507937105350;
        Fri, 13 Oct 2017 16:25:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507937105; cv=none;
        d=google.com; s=arc-20160816;
        b=zGfeOlMHOi8vp7sbinVVXpq9hpkXFeLVtBelMQ6x0XfktvLBaiJSQ4q5Iki4ouqiT8
         9T4noW0Wg8FeizNAKZ7yCBXiEP/Su/RRBtx7NY/D881YGDFbHjSuEqOpVTsD+61mgN3P
         gH5JH7rMlrBRO0jWGEfEU6PIjU+lvxSPP8AS74e8ghNpuDjjPfoMTvjpTQxHn9630rEB
         ppsZA6BGafsLnaJHQwZB/ufW/HfW7vfY/PQ6ub/mwXiuw3BZKFt5VmtddiCtRnD93XVI
         N7im4U3iPSdykQEvmz+x+2EmrheG/19MXSC5cAG7ix3s9h4vvrIttXRV0VWU/Xgf3ERH
         YpqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=2+OVfloSKxKeEo+EFz2HfZs1iaFMz8nLJxMNxfbm4p4=;
        b=bC5sROXx9QW4sNlbiDb8iMTVN+dd3VqIZqTJ5yorBzAg6BQp8zdEi6X3SDGAY3BoXK
         vGsPJrg/X4kn+rGse+R8gacI1g0oqV17j/JHolK/P5mia2mAunH/53nWBthIQjjIQTrY
         xXHaIB9J32GdH+c8RqWJBcrZ8VJZZuEta5YG8XOMsog8jHfS2tA8BJoTf5UFNVO66/rw
         hER8+HJVTpvBK/X0xaQ4AHSk7gT7GpZiWwmM6GbuPSIOXQiOIBbFjVqh2AQoGLw0VJat
         Uf0eYkl88BIrv85ox2bY0TB8qbgjzP/XOn1ZnuybE2omP/2wfRtbSjqANcHnrxvYMJmn
         8wrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L7SktNSh;
       spf=pass (google.com: domain of robdclark@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <robdclark@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id z91si86453wrc.2.2017.10.13.16.25.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 16:25:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of robdclark@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L7SktNSh;
       spf=pass (google.com: domain of robdclark@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id n69so11204438lfn.2
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 16:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=2+OVfloSKxKeEo+EFz2HfZs1iaFMz8nLJxMNxfbm4p4=;
        b=L7SktNShHX47ARq2R0vKYmyxIZM4TNq4nvdNjwfLz1VB9s9jkgLWxAHMuXNtAQCydB
         Cy4yCyMut+Qc58oty09Eo3TGBkEeTTkpcIxIV1jxDyh5smv/fnu/3oQyngzAYwrk8mMN
         Pk0j8aIbkTPbOHl0tdZXkB1c8rluf1rSeseLnr5DNvhh+bj1MVImrab5oyjNleQdb1NL
         8GuJCR7hkWJEtJC42kYQjBcoIp0Vl+dXgmgdJaaZm/IN5FAyO4ZWJTR8HtFDkD4sNNU/
         sH7of9m0IC+iTBlNwG8RHJthfTevvVZKVUzevRlktlrStSDoYHh+kbTsaUWtDaQ+rV2S
         79EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=2+OVfloSKxKeEo+EFz2HfZs1iaFMz8nLJxMNxfbm4p4=;
        b=hdp1KPFZ+eVjdfgU3NjkW8+1h+DhYeYLL+nWfbokBGycAnKZKlZb1y+yQj+mrq03bz
         abfmPMYJsKWep8GjrWhTbf75SR9Pp2tbOHWVfn0GMgP1hv7hz1sKcgb87iq68NQ2tfAp
         Q/BCeUh0CAHSXyBSngV+bdywwGovYUjH9m08f0sPVSEM6SRa96nlXkp1R/DoUSh4KsvN
         er9dSoTwV9qFaNqVEj6SAEz3l1WZB7+EKkPXoS69hEty3MeleK8TNI8v08tVwi9IS5sE
         7n6s21hP3igRkQjnSJHdpCJxlepHuAcU4VDj0PbxGluBTv8Va4hdqym3Onn2IvJ707Cu
         hAaQ==
X-Gm-Message-State: AMCzsaVCyMVmD5X/Vp42IsZof28FYEsLu//bajpayAJqLkwOTFrO4en1
	AihS+0yCxaa+fwjVRfimj11Ao4KhI7gZLhh/prY=
X-Google-Smtp-Source: ABhQp+QgFkp7KoBUxwkjfzzurFxMXUxkRXw5wQJWEOa6fbuUgPHOH+RKC9O1cvoSyTEn1Pz6k6Oodn/BCxC2YKDCsu8=
X-Received: by 10.46.43.145 with SMTP id r17mr1230684ljr.56.1507937104732;
 Fri, 13 Oct 2017 16:25:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.127.12 with HTTP; Fri, 13 Oct 2017 16:25:03 -0700 (PDT)
In-Reply-To: <20171013202557.s7r2ec67sl646vtj@art_vandelay>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
 <20171013202557.s7r2ec67sl646vtj@art_vandelay>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 13 Oct 2017 19:25:03 -0400
Message-ID: <CAF6AEGvak8_BWWXsyKBMxSPC1q=ZpugoMbFVz9KXe3FDOQToiQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v13 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
To: Sean Paul <seanpaul@chromium.org>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>, 
	Daniel Thompson <daniel.thompson@linaro.org>, outreachy-kernel@googlegroups.com, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 13, 2017 at 4:25 PM, Sean Paul <seanpaul@chromium.org> wrote:
> On Fri, Oct 13, 2017 at 04:11:43PM +0530, Meghana Madhyastha wrote:
>> Rename tinydrm_of_find_backlight to backlight_get and move it
>> to linux/backlight.c so that it can be used by other drivers.
>
> [apologies if this has been brought up in previous versions, I haven't been
> following closely]
>
> I don't think "backlight_get" is a good name for this function. How about
> of_find_backlight_by_name (since there's already of_find_backlight_by_node)?
>
>>
>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>> ---
>> Changes in v13:
>>  -Add backlight_put to backlight.h in this patch
>>
>>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 --------------------------
>>  drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>>  drivers/video/backlight/backlight.c            | 37 ++++++++++++++++++++++++
>>  include/drm/tinydrm/tinydrm-helpers.h          |  2 --
>>  include/linux/backlight.h                      | 19 ++++++++++++
>>  5 files changed, 58 insertions(+), 43 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> index a42dee6..cb1a01a 100644
>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> @@ -236,46 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>  }
>>  EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>>
>> -/**
>> - * tinydrm_of_find_backlight - Find backlight device in device-tree
>> - * @dev: Device
>> - *
>> - * This function looks for a DT node pointed to by a property named 'backlight'
>> - * and uses of_find_backlight_by_node() to get the backlight device.
>> - * Additionally if the brightness property is zero, it is set to
>> - * max_brightness.
>> - *
>> - * Returns:
>> - * NULL if there's no backlight property.
>> - * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
>> - * is found.
>> - * If the backlight device is found, a pointer to the structure is returned.
>> - */
>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
>> -{
>> -     struct backlight_device *backlight;
>> -     struct device_node *np;
>> -
>> -     np = of_parse_phandle(dev->of_node, "backlight", 0);
>> -     if (!np)
>> -             return NULL;
>> -
>> -     backlight = of_find_backlight_by_node(np);
>> -     of_node_put(np);
>> -
>> -     if (!backlight)
>> -             return ERR_PTR(-EPROBE_DEFER);
>> -
>> -     if (!backlight->props.brightness) {
>> -             backlight->props.brightness = backlight->props.max_brightness;
>> -             DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>> -                           backlight->props.brightness);
>> -     }
>> -
>> -     return backlight;
>> -}
>> -EXPORT_SYMBOL(tinydrm_of_find_backlight);
>> -
>>  #if IS_ENABLED(CONFIG_SPI)
>>
>>  /**
>> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
>> index 7fd2691..a932185 100644
>> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>> @@ -12,6 +12,7 @@
>>  #include <drm/tinydrm/ili9341.h>
>>  #include <drm/tinydrm/mipi-dbi.h>
>>  #include <drm/tinydrm/tinydrm-helpers.h>
>> +#include <linux/backlight.h>
>>  #include <linux/delay.h>
>>  #include <linux/gpio/consumer.h>
>>  #include <linux/module.h>
>> @@ -188,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>>       if (IS_ERR(mipi->regulator))
>>               return PTR_ERR(mipi->regulator);
>>
>> -     mipi->backlight = tinydrm_of_find_backlight(dev);
>> +     mipi->backlight = backlight_get(dev);
>>       if (IS_ERR(mipi->backlight))
>>               return PTR_ERR(mipi->backlight);
>>
>> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
>> index 8049e76..c4e94d0 100644
>> --- a/drivers/video/backlight/backlight.c
>> +++ b/drivers/video/backlight/backlight.c
>> @@ -580,6 +580,43 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
>>  EXPORT_SYMBOL(of_find_backlight_by_node);
>>  #endif
>>
>> +/**
>> + * backlight_get - Get backlight device
>> + * @dev: Device
>> + *
>> + * This function looks for a property named 'backlight' on the DT node
>> + * connected to @dev and looks up the backlight device.
>> + *
>> + * Call backlight_put() to drop the reference on the backlight device.
>> + *
>> + * Returns:
>> + * A pointer to the backlight device if found.
>> + * Error pointer -EPROBE_DEFER if the DT property is set, but no backlight
>> + * device is found.
>> + * NULL if there's no backlight property.
>> + */
>> +struct backlight_device *backlight_get(struct device *dev)
>> +{
>> +     struct backlight_device *bd = NULL;
>> +     struct device_node *np;
>> +
>> +     if (!dev)
>> +             return NULL;
>> +
>> +     if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
>
> I'm not really used to seeing IS_ENABLED(CONFIG_BLAH) inline. The common
> patterns seems to be wrapping the actual implementation in #if
> IS_ENABLED(CONFIG_BLAH) and then sticking a stub implementation in the #else.


drive-by comment, but I actually prefer 'if (IS_ENABLED(CONFIG_FOO))
..' when possible.. it keeps the code compiled by the front-end of the
compiler in more configs so less likely to bitrot, and the compiler is
plenty good at DCE to eliminate the code when disabled in later stages
of the compiler..

possibly exceptions are things that are called frequently where you
want to inline the CONFIG_FOO=n stub so it can be eliminated without
calling into another object file (at least until LTO gets good), but I
guess that is not the case here..

BR,
-R


> I see below that you already have a stub if backlight is not enabled, so expand
> that #if to include CONFIG_OF as well.
>
>> +             np = of_parse_phandle(dev->of_node, "backlight", 0);
>> +             if (np) {
>> +                     bd = of_find_backlight_by_node(np);
>> +                     of_node_put(np);
>> +                     if (!bd)
>> +                             return ERR_PTR(-EPROBE_DEFER);
>> +             }
>> +     }
>> +
>> +     return bd;
>> +}
>> +EXPORT_SYMBOL(backlight_get);
>> +
>>  static void __exit backlight_class_exit(void)
>>  {
>>       class_destroy(backlight_class);
>> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
>> index f54fae0..0a4ddbc 100644
>> --- a/include/drm/tinydrm/tinydrm-helpers.h
>> +++ b/include/drm/tinydrm/tinydrm-helpers.h
>> @@ -46,8 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>>  void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>                              struct drm_clip_rect *clip);
>>
>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
>> -
>>  size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
>>  bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
>>  int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
>> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
>> index b88fabb..987a6d7 100644
>> --- a/include/linux/backlight.h
>> +++ b/include/linux/backlight.h
>> @@ -159,6 +159,16 @@ static inline int backlight_disable(struct backlight_device *bd)
>>       return backlight_update_status(bd);
>>  }
>>
>> +/**
>> + * backlight_put - Drop backlight reference
>> + * @bd: the backlight device to put
>> + */
>> +static inline void backlight_put(struct backlight_device *bd)
>> +{
>> +     if (bd)
>> +             put_device(&bd->dev);
>> +}
>
> I'm not convinced this function needs to exist.
>
>> +
>>  extern struct backlight_device *backlight_device_register(const char *name,
>>       struct device *dev, void *devdata, const struct backlight_ops *ops,
>>       const struct backlight_properties *props);
>> @@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *node)
>>  }
>>  #endif
>>
>> +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>> +struct backlight_device *backlight_get(struct device *dev);
>> +#else
>> +static inline struct backlight_device *backlight_get(struct device *dev)
>> +{
>> +     return NULL;
>> +}
>> +#endif
>> +
>>  #endif
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>
> --
> Sean Paul, Software Engineer, Google / Chromium OS
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel


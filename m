X-GM-THRID: 6470456120502648832
X-Received: by 10.13.196.7 with SMTP id g7mr5276939ywd.131.1506591518845;
        Thu, 28 Sep 2017 02:38:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.132.194 with SMTP id x2ls590931ybm.4.gmail; Thu, 28 Sep
 2017 02:38:38 -0700 (PDT)
X-Received: by 10.129.122.131 with SMTP id v125mr5381659ywc.206.1506591518114;
        Thu, 28 Sep 2017 02:38:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506591518; cv=none;
        d=google.com; s=arc-20160816;
        b=cW7DQLlc2p13ZlzZv8qSVlhU4K6FH20MIqSLQqGWLfbORsZ+4jR3m0YwvRPZ0LwWxj
         MWWCO7/fHWbg+XGUAhRuvlpu2LljvJG2ZTYW+ZIo6rh8yPv1vEP8LxZXW5Larj4IOhxU
         ex6PxsKG4vWwUfNpQ6CddIPYTA4Oo0fbHHJceeEp9hyJp99YTcb8Z0IikwtHLOHB+dow
         plWSbsxaE2yau7IXmWCcELTtOvGT/5dUN7E5CihPMoPWwBnHiVl88rp6P0jY409VBJM7
         Nue8wBEO5m0vb25eqAueJ/6eJCMTtglZQp1wGcRmW9jNEukboqIGVx8uknDt4J8mQXcS
         KfmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:sender:mime-version:dkim-signature
         :arc-authentication-results;
        bh=QE4KzFvouwE4g4Sg6hH97v14tZ15/pB927Tza1XH+S8=;
        b=G2Q+JAoaGWxpEW8BhpM3+JDcq1fBAgheg5bNS1mU6RZzWKfXnXuQzB8MfgKZt8TwSX
         q2r84Zq28xUTuHS3LoZRRBuk9ix5GJCgJ8NRHbmwKEAwbWSnTsrNU7XtPgOsQzT5d0MD
         d8M9dLXHvl9qONxzZO3UOtzk68lgozwkvdCx2eSa6inh3wanxb9v6Za73/Apfb001IrX
         pa6msB2EJ0PhddO2uLpiPDzc/UVXq4PQfDFS+uZ1ZQ3t5CLTK6PKhf3JQjhGizkKAi9P
         vqa4bvvLqAoZKeVQSHhNju/uifdL/anJsmI+i2326G18DTp/gLmyFKPyzy3LYkQ1HsQM
         QEew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=GPCmLpbd;
       spf=neutral (google.com: 2607:f8b0:4001:c06::243 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Return-Path: <daniel.vetter@ffwll.ch>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id c10si57838ywb.24.2017.09.28.02.38.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 02:38:37 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4001:c06::243 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=GPCmLpbd;
       spf=neutral (google.com: 2607:f8b0:4001:c06::243 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Received: by mail-io0-x243.google.com with SMTP id j26so703180iod.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 02:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=QE4KzFvouwE4g4Sg6hH97v14tZ15/pB927Tza1XH+S8=;
        b=GPCmLpbdAoVi34flWLp5wyCd1xYJM0ePpwkCvlEDE8w5WfeKKgPoR0ytp3FV8fQIt0
         wBH0c7ihM9SaNSNWJwAgC7IC6CctdrcilEeQQawv+S2InUKJsdXRNBKOn3nAviUJ7YHO
         sdLqiUFb/abTbckWWtzMAWO8rMLn5zP6mkI6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc:content-transfer-encoding;
        bh=QE4KzFvouwE4g4Sg6hH97v14tZ15/pB927Tza1XH+S8=;
        b=lF7uxLA8OQeiA+bZKBFnYGvt/QAlcpB2TsKtHAp3KCcxpJVVUoztQ95L/nkRCK05F5
         iiIIMn4go3tnyHAr7W7DD/QD7S4rKmDtXotSMQ56McUyaFVWWzQfjXX2T9+TwUR1BFuj
         ir6U+mm+N3vk/yUUtCciPZevLhzTmEv+W4fEPv9i9K7Bi9tUZQawiPFzD5uS47RbzaqU
         19o2AvbUCdMTDioUNfIFyRaF/bvXOq/EEKfn2MjDwk3sTwN4sG0NkWqAxb8wj8gQMtZF
         ZID6FI+70PBq1QxXDo17yTir9S0lWrHgQR2Vs2deku7QGzAqbWj7de25tVwzLIdAVfGZ
         5p7w==
X-Gm-Message-State: AMCzsaXL5EYJod0zMonOvmPdyjjWbzykHRAJjvKz57e1eD08sU7IyRt2
	G8BiadSQCfM1d/BgIPbfA3wqqbyfZghFw8Ki4g1SmA==
X-Google-Smtp-Source: AOwi7QB713YBTb1FRd0aBLGwlaXGx048Xw32cwhgpdwJyB3r3JGHIEU6psbLLaJa9KSlHTtBmklI0xax6eqj+ibaALk=
X-Received: by 10.107.78.19 with SMTP id c19mr6133380iob.205.1506591517302;
 Thu, 28 Sep 2017 02:38:37 -0700 (PDT)
MIME-Version: 1.0
Sender: daniel.vetter@ffwll.ch
Received: by 10.79.196.218 with HTTP; Thu, 28 Sep 2017 02:38:36 -0700 (PDT)
X-Originating-IP: [2a02:168:5635:0:39d2:f87e:2033:9f6]
In-Reply-To: <20170928092709.GA21361@meghana-HP-Pavilion-Notebook>
References: <20170927135409.GA5027@meghana-HP-Pavilion-Notebook>
 <9e838b3f-1a40-57de-b270-0995658613eb@tronnes.org> <20170928071539.jtpjefind3xishap@phenom.ffwll.local>
 <20170928092709.GA21361@meghana-HP-Pavilion-Notebook>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 28 Sep 2017 11:38:36 +0200
X-Google-Sender-Auth: fZZBjtZEDxV6fUPT8itiivTk7Zw
Message-ID: <CAKMK7uFtssdHTgkgmMqX_O73y1gtH2b6HfiDW3s89o1vGOZaag@mail.gmail.com>
Subject: Re: [PATCH] drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 28, 2017 at 11:27 AM, Meghana Madhyastha
<meghana.madhyastha@gmail.com> wrote:
> On Thu, Sep 28, 2017 at 09:15:39AM +0200, Daniel Vetter wrote:
>> On Wed, Sep 27, 2017 at 05:08:07PM +0200, Noralf Tr=C3=B8nnes wrote:
>> >
>> > Den 27.09.2017 15.54, skrev Meghana Madhyastha:
>> > > Rename tinydrm_of_find_backlight to drm_of_find_backlight
>> > > and move it into drm_of.c from tinydrm-helpers.c. This is
>> > > because other drivers in the drm subsystem might need to call
>> > > this function. In that case and otherwise, it is better from
>> > > an organizational point of view to move it into drm_of.c along
>> > > with the other _of.c functions.
>> > >
>> > > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>> > > ---
>> >
>> > I suggest you split this patch in 2, one to add the function and one t=
o
>> > use it in tinydrm.
>>
>> In general I'd agree to split into 3 phases: 1) add new function 2)
>> convert drivers 3) remove old one.
>>
>> But since there's only 1 caller this seems like overkill.
>>
>> > >   drivers/gpu/drm/drm_of.c                       | 41 ++++++++++++++=
++++++++++++
>> > >   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 --------------=
-----------
>> > >   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>> > >   include/drm/drm_of.h                           |  1 +
>> > >   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
>> > >   5 files changed, 44 insertions(+), 42 deletions(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
>> > > index 8dafbdf..d8cded3 100644
>> > > --- a/drivers/gpu/drm/drm_of.c
>> > > +++ b/drivers/gpu/drm/drm_of.c
>> > > @@ -1,6 +1,7 @@
>> > >   #include <linux/component.h>
>> > >   #include <linux/export.h>
>> > >   #include <linux/list.h>
>> > > +#include <linux/backlight.h>
>> > >   #include <linux/of_graph.h>
>> > >   #include <drm/drmP.h>
>> > >   #include <drm/drm_bridge.h>
>> > > @@ -260,3 +261,43 @@ int drm_of_find_panel_or_bridge(const struct de=
vice_node *np,
>> > >           return ret;
>> > >   }
>> > >   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
>> > > +
>> > > +/**
>> > > + * drm_of_find_backlight - Find backlight device in device-tree
>> > > + * @dev: Device
>> > > + *
>> > > + * This function looks for a DT node pointed to by a property named=
 'backlight'
>> > > + * and uses of_find_backlight_by_node() to get the backlight device=
.
>> > > + * Additionally if the brightness property is zero, it is set to
>> > > + * max_brightness.
>> >
>> > Please add a note here about the callers responsibility to call
>> > put_device() when releasing the resource.
>> > See the of_find_backlight_by_node() docs.
>> >
>> > > + *
>> > > + * Returns:
>> > > + * NULL if there's no backlight property.
>> > > + * Error pointer -EPROBE_DEFER if the DT node is found, but no back=
light device
>> > > + * is found.
>> > > + * If the backlight device is found, a pointer to the structure is =
returned.
>> > > + */
>> > > +struct backlight_device *drm_of_find_backlight(struct device *dev)
>> > > +{
>> > > + struct backlight_device *backlight;
>> > > + struct device_node *np;
>> > > +
>> > > + np =3D of_parse_phandle(dev->of_node, "backlight", 0);
>> > > + if (!np)
>> > > +         return NULL;
>> > > +
>> > > + backlight =3D of_find_backlight_by_node(np);
>> > > + of_node_put(np);
>> > > +
>> > > + if (!backlight)
>> > > +         return ERR_PTR(-EPROBE_DEFER);
>> > > +
>> > > + if (!backlight->props.brightness) {
>> > > +         backlight->props.brightness =3D backlight->props.max_brigh=
tness;
>> > > +         DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>> > > +                       backlight->props.brightness);
>> > > + }
>> > > +
>> > > + return backlight;
>> > > +}
>> > > +EXPORT_SYMBOL(drm_of_find_backlight);
>> >
>> > Can you also please add a devm_ version of this function. tinydrm uses
>> > devres[1] versions of functions for requiring device resources, so it
>> > would be nice to do this for backlight as well. tinydrm is currently
>> > broken in this respect, it doesn't put the backlight device.
>> >
>> > I had a devm_of_find_backlight() version lying around that I've adjust=
ed
>> > to give you an idea of what I'm talking about:
>> >
>> > static void devm_drm_of_find_backlight_release(void *data)
>> > {
>> >     put_device(data);
>> > }
>> >
>> > struct backlight_device *devm_drm_of_find_backlight(struct device *dev=
)
>> > {
>> >     struct backlight_device *backlight;
>> >     int ret;
>> >
>> >     backlight =3D drm_of_find_backlight(dev);
>> >     if (IS_ERR_OR_NULL(backlight))
>> >         return backlight;
>> >
>> >     ret =3D devm_add_action(dev, devm_drm_of_find_backlight_release,
>> >                   backlight->dev);
>> >     if (ret) {
>> >         put_device(backlight->dev);
>> >         return ERR_PTR(ret);
>> >     }
>> >
>> >     return backlight;
>> > }
>>
>> Good idea for a follow up patch imo.
>>
>> Another follow up patch series which would be really good is then
>> converting drivers over to using this (preferrably the devm_ version). A
>> quick git grep shows there's quite a few.
>
> I have a quick question on this. I did a git grep and found that the
> other drivers used the function of_find_backlight_by_node defined in
> video/backlight. This seems to be doing a different thing (taking
> struct device_node* as a parameter instead of struct device*).
> Basically, this function finds the backlight device by device-tree node.
> How would you suggest converting these cases ?

The function you're moving also uses of_find_backglight_by_node, but
wraps it up to be more convenient for drm drivers. I didn't carefully
audit all of them, but I'd assume a bunch of these other callers might
be able to use the same convenience helper. But I might be wrong, and
we need a drm_panel specific helper. Just something I've noticed and
figured might be worth to check.
-Daniel

>
> Thanks and regards,
> Meghana
>
>> Either way, the patch that adds these to the core should also add a TODO
>> entry so we don't forget to complete this conversion.
>>
>> Thanks, Daniel
>>
>> >
>> > [1] https://www.kernel.org/doc/Documentation/driver-model/devres.txt
>> >
>> > Noralf.
>> >
>> > > diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/driver=
s/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> > > index bd6cce0..cd4c6a5 100644
>> > > --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> > > +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> > > @@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *v=
addr, struct drm_framebuffer *fb,
>> > >   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>> > >   /**
>> > > - * tinydrm_of_find_backlight - Find backlight device in device-tree
>> > > - * @dev: Device
>> > > - *
>> > > - * This function looks for a DT node pointed to by a property named=
 'backlight'
>> > > - * and uses of_find_backlight_by_node() to get the backlight device=
.
>> > > - * Additionally if the brightness property is zero, it is set to
>> > > - * max_brightness.
>> > > - *
>> > > - * Returns:
>> > > - * NULL if there's no backlight property.
>> > > - * Error pointer -EPROBE_DEFER if the DT node is found, but no back=
light device
>> > > - * is found.
>> > > - * If the backlight device is found, a pointer to the structure is =
returned.
>> > > - */
>> > > -struct backlight_device *tinydrm_of_find_backlight(struct device *d=
ev)
>> > > -{
>> > > - struct backlight_device *backlight;
>> > > - struct device_node *np;
>> > > -
>> > > - np =3D of_parse_phandle(dev->of_node, "backlight", 0);
>> > > - if (!np)
>> > > -         return NULL;
>> > > -
>> > > - backlight =3D of_find_backlight_by_node(np);
>> > > - of_node_put(np);
>> > > -
>> > > - if (!backlight)
>> > > -         return ERR_PTR(-EPROBE_DEFER);
>> > > -
>> > > - if (!backlight->props.brightness) {
>> > > -         backlight->props.brightness =3D backlight->props.max_brigh=
tness;
>> > > -         DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>> > > -                       backlight->props.brightness);
>> > > - }
>> > > -
>> > > - return backlight;
>> > > -}
>> > > -EXPORT_SYMBOL(tinydrm_of_find_backlight);
>> > > -
>> > > -/**
>> > >    * tinydrm_enable_backlight - Enable backlight helper
>> > >    * @backlight: Backlight device
>> > >    *
>> > > diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/ti=
nydrm/mi0283qt.c
>> > > index 7e5bb7d..5e3d635 100644
>> > > --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>> > > +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>> > > @@ -12,6 +12,7 @@
>> > >   #include <drm/tinydrm/ili9341.h>
>> > >   #include <drm/tinydrm/mipi-dbi.h>
>> > >   #include <drm/tinydrm/tinydrm-helpers.h>
>> > > +#include <drm/drm_of.h>
>> > >   #include <linux/delay.h>
>> > >   #include <linux/gpio/consumer.h>
>> > >   #include <linux/module.h>
>> > > @@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi=
)
>> > >           if (IS_ERR(mipi->regulator))
>> > >                   return PTR_ERR(mipi->regulator);
>> > > - mipi->backlight =3D tinydrm_of_find_backlight(dev);
>> > > + mipi->backlight =3D drm_of_find_backlight(dev);
>> > >           if (IS_ERR(mipi->backlight))
>> > >                   return PTR_ERR(mipi->backlight);
>> > > diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
>> > > index 104dd51..e8fba5b 100644
>> > > --- a/include/drm/drm_of.h
>> > > +++ b/include/drm/drm_of.h
>> > > @@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct devic=
e_node *np,
>> > >                                   int port, int endpoint,
>> > >                                   struct drm_panel **panel,
>> > >                                   struct drm_bridge **bridge);
>> > > +struct backlight_device *drm_of_find_backlight(struct device *dev);
>> > >   #else
>> > >   static inline uint32_t drm_of_find_possible_crtcs(struct drm_devic=
e *dev,
>> > >                                                     struct device_no=
de *port)
>> > > diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tin=
ydrm/tinydrm-helpers.h
>> > > index d554ded..e40ef2d 100644
>> > > --- a/include/drm/tinydrm/tinydrm-helpers.h
>> > > +++ b/include/drm/tinydrm/tinydrm-helpers.h
>> > > @@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *va=
ddr,
>> > >   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_fr=
amebuffer *fb,
>> > >                                  struct drm_clip_rect *clip);
>> > > -struct backlight_device *tinydrm_of_find_backlight(struct device *d=
ev);
>> > >   int tinydrm_enable_backlight(struct backlight_device *backlight);
>> > >   int tinydrm_disable_backlight(struct backlight_device *backlight);
>> >
>>
>> --
>> Daniel Vetter
>> Software Engineer, Intel Corporation
>> http://blog.ffwll.ch



--=20
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch


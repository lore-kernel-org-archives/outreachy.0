X-GM-THRID: 6470705412124442624
X-Received: by 10.46.43.93 with SMTP id q90mr592278lje.3.1506869251053;
        Sun, 01 Oct 2017 07:47:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.214 with SMTP id g83ls1627016lji.15.gmail; Sun, 01 Oct
 2017 07:47:29 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC8hJpS6+Bq59BoTwOOg9jnVjmnQhXcsf7hHh/jFdaDg+r4iu7pzAMEsB9OeisAyUx1Zk14
X-Received: by 10.46.23.218 with SMTP id 87mr593556ljx.30.1506869249629;
        Sun, 01 Oct 2017 07:47:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506869249; cv=none;
        d=google.com; s=arc-20160816;
        b=w1UymBKO9+aut3G2r2n3U/uaaQmm9/xaSU7LP6Nvrlg3yaAaUt6nWy2odpSTVH+tHG
         nK13La2fKRk9byfbIVid5Y8bl0BEoirlbpc6TDhGPAcfy64lJCMcN75ybhYXNp9zuVFY
         j5dF7dy/7U3+x/XT7M0Bg9Fr+MU5CG0NGB5t/w1xZlIT61u358m0gCf86oatGYsOOh9+
         BhZi7Q3pPQd4RpGj/s+RacWgHC+Eg9PMoiUAHjRj9vfdaq0DfzUuZOspyLT2WMnesJRP
         pPGRSajzWai630fIXn8wy6bk6ETWcxD1qBQNwKps3oudDvECyJY4b+RciZcPyDkbzYzU
         ao6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=cxGlVSj9U/GeUlCg1jP2Evih6AQQcOTh5bnnNicp+aM=;
        b=f9+C4ks4k0ygwfLjunFzQW90pE1E6DgQHVbZkGK3N1aHtA+wuf3adExD+UpLtpYN34
         RXUgfUWYu+I2Xf/Z5renmBrTazQCQUMaEdY0bKnkxWlaV17DfZsr4HsnAMsqCJqXRPLo
         B8ZZvmxC9hzLRbOoqvQdSgYA/NHYZ9/eFeKSnRClRAYGqVim5H/xpgMHUBxf7aoUlctJ
         4r+RcUK1r/HnMLTW9058EIPs1llwte3cyWDCCIOWhZbxA/lc6m5KDJFPSfZmk2q4tgSe
         oxTMFcWZkHJ3Sqru1bkrFotcx0DuOr2HDeIO/PpYDqgqQmCtSa8kntflptrXSHhHs+MH
         SbQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id i68si80978lfk.6.2017.10.01.07.47.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 07:47:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:55243 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dyfWi-0007bT-Jk; Sun, 01 Oct 2017 16:47:28 +0200
Subject: Re: [PATCH v6 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506786158.git.meghana.madhyastha@gmail.com>
 <bfad07c542b9f5c892c6beddc4ecc2c3297f1f78.1506786158.git.meghana.madhyastha@gmail.com>
 <f7b02ca9-548c-0362-e965-08236e8120e2@tronnes.org>
 <20171001041434.GA16531@meghana-HP-Pavilion-Notebook>
 <b788d90b-07fe-ebb5-171f-876827907e0d@tronnes.org>
 <20171001133454.GA4207@meghana-HP-Pavilion-Notebook>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <5ff3f36f-aaf5-e284-be80-fe945dfd9cff@tronnes.org>
Date: Sun, 1 Oct 2017 16:47:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171001133454.GA4207@meghana-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 01.10.2017 15.34, skrev Meghana Madhyastha:
> On Sun, Oct 01, 2017 at 03:26:36PM +0200, Noralf Trønnes wrote:
>> Den 01.10.2017 06.14, skrev Meghana Madhyastha:
>>> On Sat, Sep 30, 2017 at 09:04:57PM +0200, Noralf Trønnes wrote:
>>>> Den 30.09.2017 19.12, skrev Meghana Madhyastha:
>>>>> Rename tinydrm_of_find_backlight to drm_of_find_backlight
>>>>> and move it into drm_of.c from tinydrm-helpers.c. This is
>>>>> because other drivers in the drm subsystem might need to call
>>>>> this function. In that case and otherwise, it is better from
>>>>> an organizational point of view to move it into drm_of.c along
>>>>> with the other _of.c functions.
>>>>>
>>>>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>>>>> ---
>>>>> Changes in v6:
>>>>> -Move function declarations to linux/backlight.h to resolve
>>>>>   module dependency issues.
>>>>>
>>>>>   drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
>>>>>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
>>>>>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  2 +-
>>>>>   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
>>>>>   include/linux/backlight.h                      | 11 +++++++
>>>>>   5 files changed, 56 insertions(+), 42 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
>>>>> index 8dafbdf..d878d3a 100644
>>>>> --- a/drivers/gpu/drm/drm_of.c
>>>>> +++ b/drivers/gpu/drm/drm_of.c
>>>>> @@ -1,6 +1,7 @@
>>>>>   #include <linux/component.h>
>>>>>   #include <linux/export.h>
>>>>>   #include <linux/list.h>
>>>>> +#include <linux/backlight.h>
>>>>>   #include <linux/of_graph.h>
>>>>>   #include <drm/drmP.h>
>>>>>   #include <drm/drm_bridge.h>
>>>>> @@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>>>>>   	return ret;
>>>>>   }
>>>>>   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
>>>>> +
>>>>> +/**
>>>>> + * drm_of_find_backlight - Find backlight device in device-tree
>>>>> + * @dev: Device
>>>>> + *
>>>>> + * This function looks for a DT node pointed to by a property named 'backlight'
>>>>> + * and uses of_find_backlight_by_node() to get the backlight device.
>>>>> + * Additionally if the brightness property is zero, it is set to
>>>>> + * max_brightness.
>>>>> + *
>>>>> + * Note: It is the responsibility of the caller to call put_device() when
>>>>> + * releasing the resource.
>>>>> + *
>>>>> + * Returns:
>>>>> + * NULL if there's no backlight property.
>>>>> + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
>>>>> + * is found.
>>>>> + * If the backlight device is found, a pointer to the structure is returned.
>>>>> + */
>>>>> +struct backlight_device *drm_of_find_backlight(struct device *dev)
>>>>> +{
>>>>> +	struct backlight_device *backlight;
>>>>> +	struct device_node *np;
>>>>> +
>>>>> +	np = of_parse_phandle(dev->of_node, "backlight", 0);
>>>>> +	if (!np)
>>>>> +		return NULL;
>>>>> +
>>>>> +	backlight = of_find_backlight_by_node(np);
>>>>> +	of_node_put(np);
>>>>> +
>>>>> +	if (!backlight)
>>>>> +		return ERR_PTR(-EPROBE_DEFER);
>>>>> +
>>>>> +	if (!backlight->props.brightness) {
>>>>> +		backlight->props.brightness = backlight->props.max_brightness;
>>>>> +		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>>>>> +			      backlight->props.brightness);
>>>>> +	}
>>>>> +
>>>>> +	return backlight;
>>>>> +}
>>>>> +EXPORT_SYMBOL(drm_of_find_backlight);
>>>>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>>>> index bd6cce0..cd4c6a5 100644
>>>>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>>>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>>>> @@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>>>>   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>>>>>   /**
>>>>> - * tinydrm_of_find_backlight - Find backlight device in device-tree
>>>>> - * @dev: Device
>>>>> - *
>>>>> - * This function looks for a DT node pointed to by a property named 'backlight'
>>>>> - * and uses of_find_backlight_by_node() to get the backlight device.
>>>>> - * Additionally if the brightness property is zero, it is set to
>>>>> - * max_brightness.
>>>>> - *
>>>>> - * Returns:
>>>>> - * NULL if there's no backlight property.
>>>>> - * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
>>>>> - * is found.
>>>>> - * If the backlight device is found, a pointer to the structure is returned.
>>>>> - */
>>>>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
>>>>> -{
>>>>> -	struct backlight_device *backlight;
>>>>> -	struct device_node *np;
>>>>> -
>>>>> -	np = of_parse_phandle(dev->of_node, "backlight", 0);
>>>>> -	if (!np)
>>>>> -		return NULL;
>>>>> -
>>>>> -	backlight = of_find_backlight_by_node(np);
>>>>> -	of_node_put(np);
>>>>> -
>>>>> -	if (!backlight)
>>>>> -		return ERR_PTR(-EPROBE_DEFER);
>>>>> -
>>>>> -	if (!backlight->props.brightness) {
>>>>> -		backlight->props.brightness = backlight->props.max_brightness;
>>>>> -		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>>>>> -			      backlight->props.brightness);
>>>>> -	}
>>>>> -
>>>>> -	return backlight;
>>>>> -}
>>>>> -EXPORT_SYMBOL(tinydrm_of_find_backlight);
>>>>> -
>>>>> -/**
>>>>>    * tinydrm_enable_backlight - Enable backlight helper
>>>>>    * @backlight: Backlight device
>>>>>    *
>>>>> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>>>> index 7e5bb7d..682b4db 100644
>>>>> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>>>>> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>>>> @@ -189,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>>>>>   	if (IS_ERR(mipi->regulator))
>>>>>   		return PTR_ERR(mipi->regulator);
>>>>> -	mipi->backlight = tinydrm_of_find_backlight(dev);
>>>>> +	mipi->backlight = drm_of_find_backlight(dev);
>>>>>   	if (IS_ERR(mipi->backlight))
>>>>>   		return PTR_ERR(mipi->backlight);
>>>>> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
>>>>> index d554ded..e40ef2d 100644
>>>>> --- a/include/drm/tinydrm/tinydrm-helpers.h
>>>>> +++ b/include/drm/tinydrm/tinydrm-helpers.h
>>>>> @@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>>>>>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>>>>   			       struct drm_clip_rect *clip);
>>>>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
>>>>>   int tinydrm_enable_backlight(struct backlight_device *backlight);
>>>>>   int tinydrm_disable_backlight(struct backlight_device *backlight);
>>>>> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
>>>>> index 5f2fd61..47a095e 100644
>>>>> --- a/include/linux/backlight.h
>>>>> +++ b/include/linux/backlight.h
>>>>> @@ -172,4 +172,15 @@ of_find_backlight_by_node(struct device_node *node)
>>>>>   }
>>>>>   #endif
>>>>> +#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>>>>> +struct backlight_device *
>>>>> +drm_of_find_backlight(struct device *dev);
>>>>> +#else
>>>>> +static inline struct backlight_device *
>>>>> +drm_of_find_backlight(struct device *dev)
>>>>> +{
>>>>> +	return NULL;
>>>>> +}
>>>>> +#endif
>>>>> +
>>>>>   #endif
>>>> This isn't what I meant, you only change the of_find_backlight_by_node()
>>>> declaration/definition. It should be like this:
>>>>
>>>> #if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>>>> struct backlight_device *of_find_backlight_by_node(struct device_node
>>>> *node);
>>>> #else
>>>> static inline struct backlight_device *
>>>> of_find_backlight_by_node(struct device_node *node)
>>>> {
>>>>      return NULL;
>>>> }
>>>> #endif
>>> I see. So basically add the function declaration of drm_of_find_backlight
>>> and devm_drm_of_find_backlight in drm_of.h and this function declaration
>>> need not be inside the #ifdef CONFIG / #else part?
>>> So there need not be a dummy version of drm_of_find_backlight here
>>> because we are anyway taking care of that in of_find_backliht by node?
>>> Sorry for the many versions and thank you for the clarifications.
>> You need the dummy part in drm_of.h because you need to handle the
>> CONFIG_OF option here as well.
>>
>> If drm_of_find_backlight() was only 2-3 lines of code, you could have
>> made a static inline function in drm_of.h outside the #if/#else/#endif,
>> but since it's longer than that it should be in drm_of.c.
>>
>> CONFIG_OF decides if drm_of.c is built (as part of drm.o) or not:
>>
>> drivers/gpu/drm/Makefile:
>> drm-$(CONFIG_OF) += drm_of.o
>>
>> This means we need a function prototype declaration for the CONFIG_OF=y
>> case, and an inline function definition for the CONFIG_OF=n case.
>>
>> Noralf.
> I have one more question. In that case, why wouldn't my previous patch
> work ? (i.e  definition and declaration of drm_of_find_backlight
> in linux/backlight.h with if/else directives)

It will work, the compiler doesn't complain as long as you include
backlight.h and make sure drm_of.c is built. But that would result
in a complexity that humans would struggle to get right. And in this
case it's even 2 different subsystems with different maintainers...

So in order to succeed with complex projects, humans need some more
rules than what the compiler requires. And one of those are:
   A header file is usually connected to a source file.

backlight.h contains prototypes and definitions for backlight.c
drm_of.h contains prototypes and definitions for drm_of.c


> Regards,
> Meghana
>
>>> Regards,
>>> Meghana
>>>> And this change needs to be a patch on it's own. The backlight subsystem
>>>> has it's own maintainer that will review this change.
>>>> It's best to send him/them the whole patchset so they see the context.
>>>>
>>>> Noralf.
>>>>



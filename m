X-GM-THRID: 6470705412124442624
X-Received: by 10.46.46.10 with SMTP id u10mr574142lju.15.1506864401546;
        Sun, 01 Oct 2017 06:26:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.4.83 with SMTP id 80ls1622867lje.17.gmail; Sun, 01 Oct 2017
 06:26:40 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAntnWwThzcvSX/QSWrlafW75NhyrZrm5gG+XiAj8PrgJcJ2aLcVwgvHldBOgKTLlppEHDe
X-Received: by 10.46.84.12 with SMTP id i12mr550334ljb.27.1506864400112;
        Sun, 01 Oct 2017 06:26:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506864400; cv=none;
        d=google.com; s=arc-20160816;
        b=OlCi3Diauya1w1fKfZkl4IZQ8tz9TCh2ACNxEPS0F9+GMhZJk2Q2u35I2jx4vUW04F
         Ak5yTO8yneHmYG1y//WIsk/bDjcGdAvMPYdv4M7ibxVS7SRtjF7ycAkxEuTIQolEv9CD
         WwtpBF3Aj4xNclJ3aDGr7YdLbIFNRAJu0isrBuDKxNezno3njJGGkWwjQHdGvUdNoDEm
         Nhqr2d5XA2wP5SMxX6a785OMgpTjJr65dIDS7ykCu+0otYw56Ik2371PloPmEnPJ+Zbv
         bjhLbf9dB0Uslk7QuyPl4AY5huMqmHSpIPKsNtyksp5HayndXhv9t3QYXdPhKyxK9Qqs
         fW/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=Nf0x/q+h/zd0O5HUtmwO2X2ZITDUClt6owGcLeC3JQk=;
        b=SAcqXv2fhSHAJx+Om9r+rECseQZehc5sOCi1WX6uC3fsUnAqf31ryL+wORcArKo2ia
         eL1T80GNB7EfGZub/YAXM1Kg1prmrI6RhzMen6rEx9yH6R4X88tu3b+mhERci4MxIjHB
         VgCEI2a51ap30/LkXFhUABXBtERQN/BrX546VjkL2r00rzQE1dJj0oOzbooVagGj6CoT
         vxEeQVsjMpr/Ezg+AjHoattILNEB+FW96WKMLESS35l21EpE64WQqzT//X4KMbrEnxfy
         q35TQkq1p6f5rtqHTgtSP4pRKXQ2Uk8CSB8l4B+Zfb7hQjfZPXm6vaSsmk2d9RJ/DWer
         PnBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id w64si296680lff.1.2017.10.01.06.26.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 06:26:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:54992 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dyeGV-00015r-04; Sun, 01 Oct 2017 15:26:39 +0200
Subject: Re: [PATCH v6 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506786158.git.meghana.madhyastha@gmail.com>
 <bfad07c542b9f5c892c6beddc4ecc2c3297f1f78.1506786158.git.meghana.madhyastha@gmail.com>
 <f7b02ca9-548c-0362-e965-08236e8120e2@tronnes.org>
 <20171001041434.GA16531@meghana-HP-Pavilion-Notebook>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <b788d90b-07fe-ebb5-171f-876827907e0d@tronnes.org>
Date: Sun, 1 Oct 2017 15:26:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171001041434.GA16531@meghana-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 01.10.2017 06.14, skrev Meghana Madhyastha:
> On Sat, Sep 30, 2017 at 09:04:57PM +0200, Noralf Trønnes wrote:
>> Den 30.09.2017 19.12, skrev Meghana Madhyastha:
>>> Rename tinydrm_of_find_backlight to drm_of_find_backlight
>>> and move it into drm_of.c from tinydrm-helpers.c. This is
>>> because other drivers in the drm subsystem might need to call
>>> this function. In that case and otherwise, it is better from
>>> an organizational point of view to move it into drm_of.c along
>>> with the other _of.c functions.
>>>
>>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>>> ---
>>> Changes in v6:
>>> -Move function declarations to linux/backlight.h to resolve
>>>   module dependency issues.
>>>
>>>   drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
>>>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
>>>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  2 +-
>>>   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
>>>   include/linux/backlight.h                      | 11 +++++++
>>>   5 files changed, 56 insertions(+), 42 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
>>> index 8dafbdf..d878d3a 100644
>>> --- a/drivers/gpu/drm/drm_of.c
>>> +++ b/drivers/gpu/drm/drm_of.c
>>> @@ -1,6 +1,7 @@
>>>   #include <linux/component.h>
>>>   #include <linux/export.h>
>>>   #include <linux/list.h>
>>> +#include <linux/backlight.h>
>>>   #include <linux/of_graph.h>
>>>   #include <drm/drmP.h>
>>>   #include <drm/drm_bridge.h>
>>> @@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>>>   	return ret;
>>>   }
>>>   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
>>> +
>>> +/**
>>> + * drm_of_find_backlight - Find backlight device in device-tree
>>> + * @dev: Device
>>> + *
>>> + * This function looks for a DT node pointed to by a property named 'backlight'
>>> + * and uses of_find_backlight_by_node() to get the backlight device.
>>> + * Additionally if the brightness property is zero, it is set to
>>> + * max_brightness.
>>> + *
>>> + * Note: It is the responsibility of the caller to call put_device() when
>>> + * releasing the resource.
>>> + *
>>> + * Returns:
>>> + * NULL if there's no backlight property.
>>> + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
>>> + * is found.
>>> + * If the backlight device is found, a pointer to the structure is returned.
>>> + */
>>> +struct backlight_device *drm_of_find_backlight(struct device *dev)
>>> +{
>>> +	struct backlight_device *backlight;
>>> +	struct device_node *np;
>>> +
>>> +	np = of_parse_phandle(dev->of_node, "backlight", 0);
>>> +	if (!np)
>>> +		return NULL;
>>> +
>>> +	backlight = of_find_backlight_by_node(np);
>>> +	of_node_put(np);
>>> +
>>> +	if (!backlight)
>>> +		return ERR_PTR(-EPROBE_DEFER);
>>> +
>>> +	if (!backlight->props.brightness) {
>>> +		backlight->props.brightness = backlight->props.max_brightness;
>>> +		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>>> +			      backlight->props.brightness);
>>> +	}
>>> +
>>> +	return backlight;
>>> +}
>>> +EXPORT_SYMBOL(drm_of_find_backlight);
>>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>> index bd6cce0..cd4c6a5 100644
>>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>> @@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>>   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>>>   /**
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
>>> -	struct backlight_device *backlight;
>>> -	struct device_node *np;
>>> -
>>> -	np = of_parse_phandle(dev->of_node, "backlight", 0);
>>> -	if (!np)
>>> -		return NULL;
>>> -
>>> -	backlight = of_find_backlight_by_node(np);
>>> -	of_node_put(np);
>>> -
>>> -	if (!backlight)
>>> -		return ERR_PTR(-EPROBE_DEFER);
>>> -
>>> -	if (!backlight->props.brightness) {
>>> -		backlight->props.brightness = backlight->props.max_brightness;
>>> -		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>>> -			      backlight->props.brightness);
>>> -	}
>>> -
>>> -	return backlight;
>>> -}
>>> -EXPORT_SYMBOL(tinydrm_of_find_backlight);
>>> -
>>> -/**
>>>    * tinydrm_enable_backlight - Enable backlight helper
>>>    * @backlight: Backlight device
>>>    *
>>> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>> index 7e5bb7d..682b4db 100644
>>> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>>> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>> @@ -189,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>>>   	if (IS_ERR(mipi->regulator))
>>>   		return PTR_ERR(mipi->regulator);
>>> -	mipi->backlight = tinydrm_of_find_backlight(dev);
>>> +	mipi->backlight = drm_of_find_backlight(dev);
>>>   	if (IS_ERR(mipi->backlight))
>>>   		return PTR_ERR(mipi->backlight);
>>> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
>>> index d554ded..e40ef2d 100644
>>> --- a/include/drm/tinydrm/tinydrm-helpers.h
>>> +++ b/include/drm/tinydrm/tinydrm-helpers.h
>>> @@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>>>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>>   			       struct drm_clip_rect *clip);
>>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
>>>   int tinydrm_enable_backlight(struct backlight_device *backlight);
>>>   int tinydrm_disable_backlight(struct backlight_device *backlight);
>>> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
>>> index 5f2fd61..47a095e 100644
>>> --- a/include/linux/backlight.h
>>> +++ b/include/linux/backlight.h
>>> @@ -172,4 +172,15 @@ of_find_backlight_by_node(struct device_node *node)
>>>   }
>>>   #endif
>>> +#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>>> +struct backlight_device *
>>> +drm_of_find_backlight(struct device *dev);
>>> +#else
>>> +static inline struct backlight_device *
>>> +drm_of_find_backlight(struct device *dev)
>>> +{
>>> +	return NULL;
>>> +}
>>> +#endif
>>> +
>>>   #endif
>> This isn't what I meant, you only change the of_find_backlight_by_node()
>> declaration/definition. It should be like this:
>>
>> #if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>> struct backlight_device *of_find_backlight_by_node(struct device_node
>> *node);
>> #else
>> static inline struct backlight_device *
>> of_find_backlight_by_node(struct device_node *node)
>> {
>>      return NULL;
>> }
>> #endif
> I see. So basically add the function declaration of drm_of_find_backlight
> and devm_drm_of_find_backlight in drm_of.h and this function declaration
> need not be inside the #ifdef CONFIG / #else part?
> So there need not be a dummy version of drm_of_find_backlight here
> because we are anyway taking care of that in of_find_backliht by node?
> Sorry for the many versions and thank you for the clarifications.

You need the dummy part in drm_of.h because you need to handle the
CONFIG_OF option here as well.

If drm_of_find_backlight() was only 2-3 lines of code, you could have
made a static inline function in drm_of.h outside the #if/#else/#endif,
but since it's longer than that it should be in drm_of.c.

CONFIG_OF decides if drm_of.c is built (as part of drm.o) or not:

drivers/gpu/drm/Makefile:
drm-$(CONFIG_OF) += drm_of.o

This means we need a function prototype declaration for the CONFIG_OF=y
case, and an inline function definition for the CONFIG_OF=n case.

Noralf.

> Regards,
> Meghana
>> And this change needs to be a patch on it's own. The backlight subsystem
>> has it's own maintainer that will review this change.
>> It's best to send him/them the whole patchset so they see the context.
>>
>> Noralf.
>>



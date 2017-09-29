X-GM-THRID: 6470705412124442624
X-Received: by 10.25.39.202 with SMTP id n193mr335527lfn.13.1506687036979;
        Fri, 29 Sep 2017 05:10:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.93.193 with SMTP id v62ls1132681lje.7.gmail; Fri, 29 Sep
 2017 05:10:35 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBA6HkEYLaGCT39GJddDdQzjs1ZcrNMYfu4UjEZLo7Kd7NJ8OHiJQYXcoH2AyQrvFrJrfJg
X-Received: by 10.25.169.1 with SMTP id s1mr352081lfe.29.1506687035335;
        Fri, 29 Sep 2017 05:10:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506687035; cv=none;
        d=google.com; s=arc-20160816;
        b=DXtYTusf7GuemD89WDpqT55M1DTwkZg9HEnt9JGCdM4gUml/g0QqZz+C9ReVlVkOHk
         NLHX5zOu/AG+dZDFY95I0MDZ6da2iMctnSV9uL+P86Vu9U6OZ5l2hH5OKmaO9MS6d+vK
         PMJ90KW7bl7hT9cT3tugpPlndWZZEi2iCzTjYtYnjpkkQn6CBBv+C3q+/pWcPiPSftVd
         gQlT4LtdYy+LWCOJN2hgtlxJG+sWV0sKtbN5u0M7mCxNrod0vf770duVzjEHXJClRLgp
         g70xsQKucsVS9S2rEBKJZ1SCdRHS4s1I7Bw2/1GlcjGe5tLWVdOy4u3ga9jfPWanH97e
         TYdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=NPAgngO9ZNLdlp9lH/PJ4ssVJ1HcZxnJ7KO4/TuDleI=;
        b=VlEGUjQq1LDjnTAJRxDFBToO6lus8D64eH6FwQzglSk0GCRsrf3bbQjy5i6yxtODbq
         RXeKD16sN63ygP/PUVdyN/62OI37xf4YOCogRLXXma2ryV0L+7y4DOy7XfenFSqSd90P
         S/QzVMmRcwu57QUDez1v7q2H+0aeotAiWk1i9k6zpSsiVszjo9a7hhYLY7mHUK6LqO0Q
         4QiAC1XUAM/QI0T0JJbu0YNOUgT3YfCsJJAarVewZjtHyD+sPgpQ5Lh+bIyfGoBTfv7t
         FlF5V/6y9ZZNGChoengJvHKAZF/d/LJFuvcf2nW+Ah10cPYkd351Xv/EvQILdZYsaGAv
         obsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id u82si166777lfg.0.2017.09.29.05.10.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 05:10:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:59522 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dxu7m-0007nf-8R; Fri, 29 Sep 2017 14:10:34 +0200
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
 <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local>
 <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org>
 <20170929032231.GB9859@meghana-HP-Pavilion-Notebook>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <b87bff83-e9af-e095-2b58-8a0b3fb642e0@tronnes.org>
Date: Fri, 29 Sep 2017 14:10:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170929032231.GB9859@meghana-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 29.09.2017 05.22, skrev Meghana Madhyastha:
> On Thu, Sep 28, 2017 at 06:02:27PM +0200, Noralf Trønnes wrote:
>> Den 28.09.2017 16.08, skrev Daniel Vetter:
>>> On Thu, Sep 28, 2017 at 02:44:34PM +0530, Meghana Madhyastha wrote:
>>>> Rename tinydrm_of_find_backlight to drm_of_find_backlight
>>>> and move it into drm_of.c from tinydrm-helpers.c. This is
>>>> because other drivers in the drm subsystem might need to call
>>>> this function. In that case and otherwise, it is better from
>>>> an organizational point of view to move it into drm_of.c along
>>>> with the other _of.c functions.
>>>>
>>>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>>>> ---
>>>> Changes in v3:
>>>> -Change it back to a single patch from two patches in v2
>>>>
>>>>   drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
>>>>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
>>>>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>>>>   include/drm/drm_of.h                           |  1 +
>>>>   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
>>>>   5 files changed, 47 insertions(+), 42 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
>>>> index 8dafbdf..d878d3a 100644
>>>> --- a/drivers/gpu/drm/drm_of.c
>>>> +++ b/drivers/gpu/drm/drm_of.c
>>>> @@ -1,6 +1,7 @@
>>>>   #include <linux/component.h>
>>>>   #include <linux/export.h>
>>>>   #include <linux/list.h>
>>>> +#include <linux/backlight.h>
>>>>   #include <linux/of_graph.h>
>>>>   #include <drm/drmP.h>
>>>>   #include <drm/drm_bridge.h>
>>>> @@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>>>>   	return ret;
>>>>   }
>>>>   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
>>>> +
>>>> +/**
>>>> + * drm_of_find_backlight - Find backlight device in device-tree
>>>> + * @dev: Device
>>>> + *
>>>> + * This function looks for a DT node pointed to by a property named 'backlight'
>>>> + * and uses of_find_backlight_by_node() to get the backlight device.
>>>> + * Additionally if the brightness property is zero, it is set to
>>>> + * max_brightness.
>>>> + *
>>>> + * Note: It is the responsibility of the caller to call put_device() when
>>>> + * releasing the resource.
>>>> + *
>>>> + * Returns:
>>>> + * NULL if there's no backlight property.
>>>> + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
>>>> + * is found.
>>>> + * If the backlight device is found, a pointer to the structure is returned.
>>>> + */
>>>> +struct backlight_device *drm_of_find_backlight(struct device *dev)
>>>> +{
>>>> +	struct backlight_device *backlight;
>>>> +	struct device_node *np;
>>>> +
>>>> +	np = of_parse_phandle(dev->of_node, "backlight", 0);
>>>> +	if (!np)
>>>> +		return NULL;
>>>> +
>>>> +	backlight = of_find_backlight_by_node(np);
>>>> +	of_node_put(np);
>>>> +
>>>> +	if (!backlight)
>>>> +		return ERR_PTR(-EPROBE_DEFER);
>>>> +
>>>> +	if (!backlight->props.brightness) {
>>>> +		backlight->props.brightness = backlight->props.max_brightness;
>>>> +		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>>>> +			      backlight->props.brightness);
>>>> +	}
>>>> +
>>>> +	return backlight;
>>>> +}
>>>> +EXPORT_SYMBOL(drm_of_find_backlight);
>>>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>>> index bd6cce0..cd4c6a5 100644
>>>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>>> @@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>>>   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>>>>   /**
>>>> - * tinydrm_of_find_backlight - Find backlight device in device-tree
>>>> - * @dev: Device
>>>> - *
>>>> - * This function looks for a DT node pointed to by a property named 'backlight'
>>>> - * and uses of_find_backlight_by_node() to get the backlight device.
>>>> - * Additionally if the brightness property is zero, it is set to
>>>> - * max_brightness.
>>>> - *
>>>> - * Returns:
>>>> - * NULL if there's no backlight property.
>>>> - * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
>>>> - * is found.
>>>> - * If the backlight device is found, a pointer to the structure is returned.
>>>> - */
>>>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
>>>> -{
>>>> -	struct backlight_device *backlight;
>>>> -	struct device_node *np;
>>>> -
>>>> -	np = of_parse_phandle(dev->of_node, "backlight", 0);
>>>> -	if (!np)
>>>> -		return NULL;
>>>> -
>>>> -	backlight = of_find_backlight_by_node(np);
>>>> -	of_node_put(np);
>>>> -
>>>> -	if (!backlight)
>>>> -		return ERR_PTR(-EPROBE_DEFER);
>>>> -
>>>> -	if (!backlight->props.brightness) {
>>>> -		backlight->props.brightness = backlight->props.max_brightness;
>>>> -		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>>>> -			      backlight->props.brightness);
>>>> -	}
>>>> -
>>>> -	return backlight;
>>>> -}
>>>> -EXPORT_SYMBOL(tinydrm_of_find_backlight);
>>>> -
>>>> -/**
>>>>    * tinydrm_enable_backlight - Enable backlight helper
>>>>    * @backlight: Backlight device
>>>>    *
>>>> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>>> index 7e5bb7d..5e3d635 100644
>>>> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>>>> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>>> @@ -12,6 +12,7 @@
>>>>   #include <drm/tinydrm/ili9341.h>
>>>>   #include <drm/tinydrm/mipi-dbi.h>
>>>>   #include <drm/tinydrm/tinydrm-helpers.h>
>>>> +#include <drm/drm_of.h>
>>>>   #include <linux/delay.h>
>>>>   #include <linux/gpio/consumer.h>
>>>>   #include <linux/module.h>
>>>> @@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>>>>   	if (IS_ERR(mipi->regulator))
>>>>   		return PTR_ERR(mipi->regulator);
>>>> -	mipi->backlight = tinydrm_of_find_backlight(dev);
>>>> +	mipi->backlight = drm_of_find_backlight(dev);
>>>>   	if (IS_ERR(mipi->backlight))
>>>>   		return PTR_ERR(mipi->backlight);
>>>> diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
>>>> index 104dd51..e8fba5b 100644
>>>> --- a/include/drm/drm_of.h
>>>> +++ b/include/drm/drm_of.h
>>>> @@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>>>>   				int port, int endpoint,
>>>>   				struct drm_panel **panel,
>>>>   				struct drm_bridge **bridge);
>>>> +struct backlight_device *drm_of_find_backlight(struct device *dev);
>>>>   #else
>>>>   static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
>>>>   						  struct device_node *port)
>>> Minor detail I missed: The dummy version for the #else here is missing.
>>> Not a problem for tinydrm, but might be an issue for a driver where
>>> CONFIG_OF is optional.
>> Yeah, we need a dummy version. tinydrm can in theory be used on non-DT
>> platforms. The only resource that isn't available there is backlight
>> since there is no platform or ACPI way of describing that dependency.
>>
>> Another problem I discovered when trying to compile this, is that if
>> DRM is builtin and LCD_CLASS_DEVICE is a module:
>>
>> drivers/gpu/drm/drm_of.c:292: undefined reference to
>> `of_find_backlight_by_node'
>>
>> I see that I solved this in tinydrm by just selecting
>> BACKLIGHT_LCD_SUPPORT and LCD_CLASS_DEVICE. I'm not aware of a way to
>> force LCD_CLASS_DEVICE to be builtin if DRM is builtin.
>>
>> Arnd fixed a similar type of dependecy in the repaper driver by forcing
>> repaper to be a module if necessary. To be honest, I don't know why his
>> fix works:
>> https://github.com/torvalds/linux/commit/8312a3fe84b96e30a010fa20f933606d976ac002
> I didn't quite understand how we could use this fix for the current
> case. Isn't this specific to the repaper driver dependency ?

This is the solution Daniel mentions:

  menuconfig DRM
      tristate "Direct Rendering Manager (XFree86 4.1.0 and higher DRI 
support)"
      depends on (AGP || AGP=n) && !EMULATED_CMPXCHG && HAS_DMA
+   depends on (LCD_CLASS_DEVICE || LCD_CLASS_DEVICE=n)


We also have another problem: CONFIG_OF=y && CONFIG_LCD_CLASS_DEVICE=n
That will result in a missing symbol error.

You can try this change to include/linux/backlight.h:

-#ifdef CONFIG_OF
+#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_LCD_CLASS_DEVICE)
  struct backlight_device *of_find_backlight_by_node(struct device_node 
*node);
  #else
  static inline struct backlight_device *
  of_find_backlight_by_node(struct device_node *node)
  {
      return NULL;
  }
  #endif

This will need to be a patch of its own since it's another subsystem.

You have to try the various kconfig variations to be sure, I'm no 
kconfig expert.
CONFIG_OF=y/n, CONFIG_DRM=y/m, CONFIG_LCD_CLASS_DEVICE=y/m/n

Noralf.

>> Another way of solving this is to put the function in
>> drivers/gpu/drm/drm_backlight.c and add a DRM_BACKLIGHT konfig option
>> that does the selection.
>>
>> Noralf.
>>
>>> Otherwise I think this patch looks good.
>>> -Daniel
>>>
>>>> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
>>>> index d554ded..e40ef2d 100644
>>>> --- a/include/drm/tinydrm/tinydrm-helpers.h
>>>> +++ b/include/drm/tinydrm/tinydrm-helpers.h
>>>> @@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>>>>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>>>   			       struct drm_clip_rect *clip);
>>>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
>>>>   int tinydrm_enable_backlight(struct backlight_device *backlight);
>>>>   int tinydrm_disable_backlight(struct backlight_device *backlight);
>>>> -- 
>>>> 2.7.4
>>>>



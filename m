X-GM-THRID: 6470705412124442624
X-Received: by 10.46.17.211 with SMTP id 80mr268388ljr.13.1506614555817;
        Thu, 28 Sep 2017 09:02:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.2.28 with SMTP id 28ls818090ljc.5.gmail; Thu, 28 Sep 2017
 09:02:34 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAu1K+IvTDX8hPpzTmtcbp072hJjd+KWkDvk5urP/rYfvMKvw0aojz+MNP4pece0W8/kAEH
X-Received: by 10.46.89.153 with SMTP id g25mr272453ljf.20.1506614554148;
        Thu, 28 Sep 2017 09:02:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506614554; cv=none;
        d=google.com; s=arc-20160816;
        b=sgu+0nIohYUOhedbqm+VenoNacbLNsooaOZES8ltEFNrSRMSGMT88S87dbb0IUB8nk
         qmCFK3iOFycniOSB1aTnK/XMVu5a+APcrEXnh44XIzpHJIthTyzq8M9MLhdSfqHOnlLT
         pmvRmL8j8FvxwwIXFsVwvvSlERDafcBzLppKUQxXuxdYfjBlc+kw7aHLd4kvZHEd2x9i
         akMUPMZVO0rAjW0OrL+8FVMt0tUehpngwqKROsGB8mT7+6PhiOyc2Hl7txaj4TmE7H+A
         7EDWIb1pU/ISPpW02+u4Vuf6m8aLX3Dt6NnFul5FTjK8powrGg8cIUBlyF7CzguJbC5J
         9aSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=Vu/YphA0WQVV8Yk6EW4QX4Kra2f8IVjsc5KaUek/Rwk=;
        b=tro7w3vvRPht3lSkHuwn88f/iZlJfcZGezwUg3726pO4urwXHzqLAjCpJEzfAMnlLF
         +hM2/xEhxCXWooIn62s9N4Mhz172yAPcJ44YdxW0O9zHk+FVMP01WkFB0gRtwZuqRHW7
         VOZRgFHTDTvMP92y1XB0uzD9v6Uog61AryfYQNLvpONmmaqorMM/bTQwUkdYHJFGnye7
         WfwlK4w2v7FkjwrcTLnWJqxyYjroKgb4FYLRnz1ySSNBCRIEVaw57S2lgBI1yneRd+TX
         woWdReExRvF4Z88Pvzo9WDpS5dEZBW/IOU9uRIE9fTpp0PHH7wA4HtejXV4WjVZ8P+fr
         CP9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id i83si85487lfl.6.2017.09.28.09.02.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 09:02:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:55430 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dxbGi-00089T-2C; Thu, 28 Sep 2017 18:02:32 +0200
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
To: Daniel Vetter <daniel@ffwll.ch>,
 Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
 <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org>
Date: Thu, 28 Sep 2017 18:02:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 28.09.2017 16.08, skrev Daniel Vetter:
> On Thu, Sep 28, 2017 at 02:44:34PM +0530, Meghana Madhyastha wrote:
>> Rename tinydrm_of_find_backlight to drm_of_find_backlight
>> and move it into drm_of.c from tinydrm-helpers.c. This is
>> because other drivers in the drm subsystem might need to call
>> this function. In that case and otherwise, it is better from
>> an organizational point of view to move it into drm_of.c along
>> with the other _of.c functions.
>>
>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>> ---
>> Changes in v3:
>> -Change it back to a single patch from two patches in v2
>>
>>   drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
>>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
>>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>>   include/drm/drm_of.h                           |  1 +
>>   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
>>   5 files changed, 47 insertions(+), 42 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
>> index 8dafbdf..d878d3a 100644
>> --- a/drivers/gpu/drm/drm_of.c
>> +++ b/drivers/gpu/drm/drm_of.c
>> @@ -1,6 +1,7 @@
>>   #include <linux/component.h>
>>   #include <linux/export.h>
>>   #include <linux/list.h>
>> +#include <linux/backlight.h>
>>   #include <linux/of_graph.h>
>>   #include <drm/drmP.h>
>>   #include <drm/drm_bridge.h>
>> @@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>>   	return ret;
>>   }
>>   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
>> +
>> +/**
>> + * drm_of_find_backlight - Find backlight device in device-tree
>> + * @dev: Device
>> + *
>> + * This function looks for a DT node pointed to by a property named 'backlight'
>> + * and uses of_find_backlight_by_node() to get the backlight device.
>> + * Additionally if the brightness property is zero, it is set to
>> + * max_brightness.
>> + *
>> + * Note: It is the responsibility of the caller to call put_device() when
>> + * releasing the resource.
>> + *
>> + * Returns:
>> + * NULL if there's no backlight property.
>> + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
>> + * is found.
>> + * If the backlight device is found, a pointer to the structure is returned.
>> + */
>> +struct backlight_device *drm_of_find_backlight(struct device *dev)
>> +{
>> +	struct backlight_device *backlight;
>> +	struct device_node *np;
>> +
>> +	np = of_parse_phandle(dev->of_node, "backlight", 0);
>> +	if (!np)
>> +		return NULL;
>> +
>> +	backlight = of_find_backlight_by_node(np);
>> +	of_node_put(np);
>> +
>> +	if (!backlight)
>> +		return ERR_PTR(-EPROBE_DEFER);
>> +
>> +	if (!backlight->props.brightness) {
>> +		backlight->props.brightness = backlight->props.max_brightness;
>> +		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>> +			      backlight->props.brightness);
>> +	}
>> +
>> +	return backlight;
>> +}
>> +EXPORT_SYMBOL(drm_of_find_backlight);
>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> index bd6cce0..cd4c6a5 100644
>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> @@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>>   
>>   /**
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
>> -	struct backlight_device *backlight;
>> -	struct device_node *np;
>> -
>> -	np = of_parse_phandle(dev->of_node, "backlight", 0);
>> -	if (!np)
>> -		return NULL;
>> -
>> -	backlight = of_find_backlight_by_node(np);
>> -	of_node_put(np);
>> -
>> -	if (!backlight)
>> -		return ERR_PTR(-EPROBE_DEFER);
>> -
>> -	if (!backlight->props.brightness) {
>> -		backlight->props.brightness = backlight->props.max_brightness;
>> -		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>> -			      backlight->props.brightness);
>> -	}
>> -
>> -	return backlight;
>> -}
>> -EXPORT_SYMBOL(tinydrm_of_find_backlight);
>> -
>> -/**
>>    * tinydrm_enable_backlight - Enable backlight helper
>>    * @backlight: Backlight device
>>    *
>> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
>> index 7e5bb7d..5e3d635 100644
>> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>> @@ -12,6 +12,7 @@
>>   #include <drm/tinydrm/ili9341.h>
>>   #include <drm/tinydrm/mipi-dbi.h>
>>   #include <drm/tinydrm/tinydrm-helpers.h>
>> +#include <drm/drm_of.h>
>>   #include <linux/delay.h>
>>   #include <linux/gpio/consumer.h>
>>   #include <linux/module.h>
>> @@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>>   	if (IS_ERR(mipi->regulator))
>>   		return PTR_ERR(mipi->regulator);
>>   
>> -	mipi->backlight = tinydrm_of_find_backlight(dev);
>> +	mipi->backlight = drm_of_find_backlight(dev);
>>   	if (IS_ERR(mipi->backlight))
>>   		return PTR_ERR(mipi->backlight);
>>   
>> diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
>> index 104dd51..e8fba5b 100644
>> --- a/include/drm/drm_of.h
>> +++ b/include/drm/drm_of.h
>> @@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>>   				int port, int endpoint,
>>   				struct drm_panel **panel,
>>   				struct drm_bridge **bridge);
>> +struct backlight_device *drm_of_find_backlight(struct device *dev);
>>   #else
>>   static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
>>   						  struct device_node *port)
> Minor detail I missed: The dummy version for the #else here is missing.
> Not a problem for tinydrm, but might be an issue for a driver where
> CONFIG_OF is optional.

Yeah, we need a dummy version. tinydrm can in theory be used on non-DT
platforms. The only resource that isn't available there is backlight
since there is no platform or ACPI way of describing that dependency.

Another problem I discovered when trying to compile this, is that if
DRM is builtin and LCD_CLASS_DEVICE is a module:

drivers/gpu/drm/drm_of.c:292: undefined reference to 
`of_find_backlight_by_node'

I see that I solved this in tinydrm by just selecting
BACKLIGHT_LCD_SUPPORT and LCD_CLASS_DEVICE. I'm not aware of a way to
force LCD_CLASS_DEVICE to be builtin if DRM is builtin.

Arnd fixed a similar type of dependecy in the repaper driver by forcing
repaper to be a module if necessary. To be honest, I don't know why his
fix works:
https://github.com/torvalds/linux/commit/8312a3fe84b96e30a010fa20f933606d976ac002

Another way of solving this is to put the function in
drivers/gpu/drm/drm_backlight.c and add a DRM_BACKLIGHT konfig option
that does the selection.

Noralf.

> Otherwise I think this patch looks good.
> -Daniel
>
>> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
>> index d554ded..e40ef2d 100644
>> --- a/include/drm/tinydrm/tinydrm-helpers.h
>> +++ b/include/drm/tinydrm/tinydrm-helpers.h
>> @@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>   			       struct drm_clip_rect *clip);
>>   
>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
>>   int tinydrm_enable_backlight(struct backlight_device *backlight);
>>   int tinydrm_disable_backlight(struct backlight_device *backlight);
>>   
>> -- 
>> 2.7.4
>>



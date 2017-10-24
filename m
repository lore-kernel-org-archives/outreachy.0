X-GM-THRID: 6475592721521180672
X-Received: by 10.80.182.75 with SMTP id c11mr4535269ede.4.1508863540387;
        Tue, 24 Oct 2017 09:45:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.219.194 with SMTP id s2ls513497edk.5.gmail; Tue, 24 Oct
 2017 09:45:39 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QFLHUiUIYbQ7qCZxcww6yLA7RWWAYKOCpJoQQtARD+9ofpiV4yJoLKDrZeMbV0fD3fnkrA
X-Received: by 10.80.240.130 with SMTP id v2mr2419425edl.10.1508863539542;
        Tue, 24 Oct 2017 09:45:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508863539; cv=none;
        d=google.com; s=arc-20160816;
        b=NPlA5Sd7QlSSp1SZ6W/WhoalLAer16imI+/gWcnyVVSsPsQMpbRZr8JUTOAsex4wSH
         33YvGBpMogQaNbW9HTqJcyljKHQr4gQwBY6zyCon4Z+5itI9xNIV7i5O5KIe9gv1IztB
         crBPpLq8horbF9R4Ndr7km2bdsm3ZDshFP2ZmCaInHyOWBRzboRLZ1xdE+zKfqIupXO2
         i4TzlxQDcNnlVJvyuAou63/IC/BhiRYG2cY+2hIzplC/NR7YyMUc1gy4GnWRjFssvxsv
         C+fmfD2phh3L26ZRqCWcphcmSy3+h2dep0yr8GqjkoESG3UUZBg8EhXE2i4FIxuO2dEU
         Ehuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=Wu0Js+5VK27lboD0VzjYqwwy5eEM2/XQwaXf0JQkoZc=;
        b=pUB0fqqfE8f0gE5F1W8jgVpGY3n0X02sUCdTv3clJ8AxAykbLEqOPEMp/b+031hojq
         31LuVyhUx7Qa2GKPhHmZwKd5/W5fS3PoVkKQxyIQiPfOYeLNvMwMXqxi1Wx/S7v1tOma
         UKOQYChwU6M9iqIotQIeVwZgOf4XKuymV1XtOtPyKB0U7YDdSV9qyglFWV5j0c2sRsI8
         cADXeHM18zM1myYaOwTWUK1Eka7DuY9gSpkSMyLm7An+pRHIaQXH+CrHl86R/JhBrMcz
         gCEikllwyNTJbfOKaLgaZpZ3q7Icl+JD9LuBhI1DgNX8kiKhX+TtZX+gDV67F4VpJFey
         A4kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id a57si30224edd.3.2017.10.24.09.45.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 09:45:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:64964 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e72Kg-0000Ij-5p; Tue, 24 Oct 2017 18:45:38 +0200
Subject: Re: [Outreachy kernel] [PATCH v14 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
To: Sean Paul <seanpaul@chromium.org>,
 Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: daniel@ffwll.ch, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
 jani.nikula@linux.intel.com
References: <cover.1508586429.git.meghana.madhyastha@gmail.com>
 <678c3adb07b729acf6e80119ab9adec01d89842f.1508586429.git.meghana.madhyastha@gmail.com>
 <20171024154202.5h63j3j3rvbadolo@art_vandelay>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <73f488c6-b2ef-e5a4-5ff6-17ef9758c8f0@tronnes.org>
Date: Tue, 24 Oct 2017 18:45:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171024154202.5h63j3j3rvbadolo@art_vandelay>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 24.10.2017 17.42, skrev Sean Paul:
> On Sat, Oct 21, 2017 at 05:27:33PM +0530, Meghana Madhyastha wrote:
>> Rename tinydrm_of_find_backlight to of_find_backlight and move
>> it to linux/backlight.c so that it can be used by other drivers.
>>
>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>> ---
>> Changes in v14:
>>   -s/backlight_get/of_find_backlight/
>>
>>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 --------------------------
>>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>>   drivers/video/backlight/backlight.c            | 37 ++++++++++++++++++++++++
>>   include/drm/tinydrm/tinydrm-helpers.h          |  2 --
>>   include/linux/backlight.h                      | 19 ++++++++++++
>>   5 files changed, 58 insertions(+), 43 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> index a42dee6..cb1a01a 100644
>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> @@ -236,46 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>   }
>>   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
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
>>   #if IS_ENABLED(CONFIG_SPI)
>>   
>>   /**
>> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
>> index 7fd2691..53ab5a0 100644
>> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>> @@ -12,6 +12,7 @@
>>   #include <drm/tinydrm/ili9341.h>
>>   #include <drm/tinydrm/mipi-dbi.h>
>>   #include <drm/tinydrm/tinydrm-helpers.h>
>> +#include <linux/backlight.h>
>>   #include <linux/delay.h>
>>   #include <linux/gpio/consumer.h>
>>   #include <linux/module.h>
>> @@ -188,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>>   	if (IS_ERR(mipi->regulator))
>>   		return PTR_ERR(mipi->regulator);
>>   
>> -	mipi->backlight = tinydrm_of_find_backlight(dev);
>> +	mipi->backlight = of_find_backlight(dev);
> Sorry for the follow-up spam, but are you missing the put_device somewhere? The
> next patch uses devm_of_find_backlight. So AFAICT you're either leaking a reference
> here, or you're closing an additional reference in the next patch.

This is my fault, put_device() has been missing all along, so Meghana is 
plugging that hole,
in the next patch :-)

Noralf.

> Sean
>
>>   	if (IS_ERR(mipi->backlight))
>>   		return PTR_ERR(mipi->backlight);
>>   
>> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
>> index 8049e76..76d46c3 100644
>> --- a/drivers/video/backlight/backlight.c
>> +++ b/drivers/video/backlight/backlight.c
>> @@ -580,6 +580,43 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
>>   EXPORT_SYMBOL(of_find_backlight_by_node);
>>   #endif
>>   
>> +/**
>> + * of_find_backlight - Get backlight device
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
>> +struct backlight_device *of_find_backlight(struct device *dev)
>> +{
>> +	struct backlight_device *bd = NULL;
>> +	struct device_node *np;
>> +
>> +	if (!dev)
>> +		return NULL;
>> +
>> +	if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
>> +		np = of_parse_phandle(dev->of_node, "backlight", 0);
>> +		if (np) {
>> +			bd = of_find_backlight_by_node(np);
>> +			of_node_put(np);
>> +			if (!bd)
>> +				return ERR_PTR(-EPROBE_DEFER);
>> +		}
>> +	}
>> +
>> +	return bd;
>> +}
>> +EXPORT_SYMBOL(of_find_backlight);
>> +
>>   static void __exit backlight_class_exit(void)
>>   {
>>   	class_destroy(backlight_class);
>> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
>> index f54fae0..0a4ddbc 100644
>> --- a/include/drm/tinydrm/tinydrm-helpers.h
>> +++ b/include/drm/tinydrm/tinydrm-helpers.h
>> @@ -46,8 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>>   			       struct drm_clip_rect *clip);
>>   
>> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
>> -
>>   size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
>>   bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
>>   int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
>> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
>> index b88fabb..f98b684 100644
>> --- a/include/linux/backlight.h
>> +++ b/include/linux/backlight.h
>> @@ -159,6 +159,16 @@ static inline int backlight_disable(struct backlight_device *bd)
>>   	return backlight_update_status(bd);
>>   }
>>   
>> +/**
>> + * backlight_put - Drop backlight reference
>> + * @bd: the backlight device to put
>> + */
>> +static inline void backlight_put(struct backlight_device *bd)
>> +{
>> +	if (bd)
>> +		put_device(&bd->dev);
>> +}
>> +
>>   extern struct backlight_device *backlight_device_register(const char *name,
>>   	struct device *dev, void *devdata, const struct backlight_ops *ops,
>>   	const struct backlight_properties *props);
>> @@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *node)
>>   }
>>   #endif
>>   
>> +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>> +struct backlight_device *of_find_backlight(struct device *dev);
>> +#else
>> +static inline struct backlight_device *of_find_backlight(struct device *dev)
>> +{
>> +	return NULL;
>> +}
>> +#endif
>> +
>>   #endif
>> -- 
>> 2.7.4
>>
>> -- 
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/678c3adb07b729acf6e80119ab9adec01d89842f.1508586429.git.meghana.madhyastha%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.



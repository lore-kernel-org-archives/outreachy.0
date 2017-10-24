X-GM-THRID: 6475592721521180672
X-Received: by 10.25.83.9 with SMTP id h9mr392380lfb.1.1508860623845;
        Tue, 24 Oct 2017 08:57:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.14 with SMTP id g14ls99979ljb.0.gmail; Tue, 24 Oct 2017
 08:57:02 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+TFDGaTSkZ1IudQmENaE4EiMhgAn4cs4BsjyO0ZXszLS2EQY0gb0htr+dAu+v1Ppc0O11Bm
X-Received: by 10.46.43.193 with SMTP id r62mr574849ljr.30.1508860622820;
        Tue, 24 Oct 2017 08:57:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508860622; cv=none;
        d=google.com; s=arc-20160816;
        b=JCJA9W9p22nwYgSggphFJjKb9gd0ph/Thb+74lyn8JhO+joeKnV2LAsr6lFin7jpsS
         kZCFrGOpQ6bbHKTjIr9/lUVUE4DSKfbwOdVvca0hWEK+i/8ZU+zI2+H9IKYKVWeDsL3I
         aQFOGMJoMV+YGoEQHC6IuUSkObquehhi7FhwE9GQ7uoPnEjCEuZS1dXUMoTpcDcA1LBf
         aEIwDYqNExjK5jkUrOYM3/cQicqDyAlD/rjqoChESBSQ2fp4RGQuaIFmI+OmcsQ8NqE4
         oiNY+jcvR8SaqgtjoOW9SkYWO//l9vc9asU18TDp7L3RwyghnwvbRwXuQl7xNsw6DJjy
         uNlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=S2Fty8qDWen97kDgVXNEyDX6iaXdGkD+qxZaNjhfA48=;
        b=BBYGzoX42n1YBms4gzMcgkyKj4qBVvci4i9dt2LQTOilTnrjX0J0f1En+uGcHHCWT2
         LJ3ntQRXSjCgyTP3AytD5YA9b3+7+T8Tewuy4L/2C04STZ8r6mkwO5XesnLf9N3/1mut
         Mcn6JxSbbN9KmmmvGFLA7hD7sc0gsKv9aJbFW156f1F3bKgGS1yPuOQNOdzImPvHH1k7
         F/WgBBzIgtJxWvQUaGUXJrakvOx3f/eBjlNRwPxFPjEJ2FDeXVJ8sMr9SV8l79dLMfrX
         OGaAs7SLMBoirZIY/PYY7Xh7TSx+Y7qLFLIklhPp5rkorzExXBt9ih7stgplomYJ1HjS
         ENhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DDkoQ1JK;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id j65si24692lje.3.2017.10.24.08.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 08:57:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DDkoQ1JK;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x22b.google.com with SMTP id r196so4391829wmf.2
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 08:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=S2Fty8qDWen97kDgVXNEyDX6iaXdGkD+qxZaNjhfA48=;
        b=DDkoQ1JKN3ofUP9LYFU99iTo+sb86UlRvWokOwPT4UwTKqybo9nU7UVCOACQxtC4/2
         iCiGh7iLtW3lDbU5l6goZxuEv1sWLDNjvov675+t9Lo1TbjCS+I06VAeqPZpQ7RAl9S8
         I9SlI13tEVeB8Pn34+7xbWqHS+qRPFOGfQtUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=S2Fty8qDWen97kDgVXNEyDX6iaXdGkD+qxZaNjhfA48=;
        b=CnpoCIEQNwJpj5WpmVo3Tcxrz9ECYaPkJ0EUNQWtmBvCNMSZihDNFvCm1u8/n+hrMW
         H44/UTWqYUFCFIubj3We9mhBmC1eAyEuOekrKqRSxWnVyr+QqV2g2pBKO6+FzeL6Hkay
         QWsE9LbOTmS7EJCQp2NIlsCj/et0vcR1cKDvi7xezxrvmpFKmr7+npA05cCZa4lzhUo4
         9TNXTZq3RyI+ceieMGAXTLnei5D19toCmf3Ck4A0t0zVdKYxweRDMmugc15AKQC7iBMf
         pY2OsFS0sBj9RTI9dLa8XPXjYIZ0XhjlvN7/7PhiczCRodyOmEqmTSClgW7jb/e4EHRp
         RAVw==
X-Gm-Message-State: AMCzsaU2CKo4Y7J2wqHXJKV9aEuwY1/H0qBr0r4z5VYeNI06MbKpdspc
	yme+t4/6YUB3u53HoemO2BLn4fVv6Yg=
X-Received: by 10.28.54.22 with SMTP id d22mr7854764wma.120.1508860622268;
        Tue, 24 Oct 2017 08:57:02 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.191] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id o7sm720355wrf.31.2017.10.24.08.57.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 08:57:01 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH v14 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
To: Sean Paul <seanpaul@chromium.org>,
 Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com
References: <cover.1508586429.git.meghana.madhyastha@gmail.com>
 <678c3adb07b729acf6e80119ab9adec01d89842f.1508586429.git.meghana.madhyastha@gmail.com>
 <20171024153831.jdbyct5ikxengnuz@art_vandelay>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <80c7411c-75c9-725b-0065-d54348701891@linaro.org>
Date: Tue, 24 Oct 2017 16:56:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171024153831.jdbyct5ikxengnuz@art_vandelay>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 24/10/17 16:38, Sean Paul wrote:
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
> 
> 
> As I mentioned in my last review, I don't think we need this function.

Just to check... some DRM drivers do allow themselves to work if 
CONFIG_BACKLIGHT_CLASS_DEVICE isn't enabled (as discussed earlier in the 
thread ;-). Did you consider what happens when this happens.

Wrapped up with backlight_put() we are sure never to accidentally 
dereference bd in DRM de-init paths when CONFIG_BACKLIGHT_CLASS_DEVICVE 
if it is not set. With a raw put_device() all that conditional logic 
ends up on the driver.


Daniel.


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
> 



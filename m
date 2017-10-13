X-GM-THRID: 6475592721521180672
X-Received: by 10.46.95.133 with SMTP id x5mr116795lje.19.1507934567619;
        Fri, 13 Oct 2017 15:42:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.148 with SMTP id u142ls1131942lja.16.gmail; Fri, 13 Oct
 2017 15:42:46 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+S9COmVZ/03uN4WjEvJMDdNjtAex2c93ZyhnMXI6OkBcNA4ghdtKA8Fy0jtJjn7H2vno/tf
X-Received: by 10.46.9.197 with SMTP id 188mr72289ljj.36.1507934566357;
        Fri, 13 Oct 2017 15:42:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507934566; cv=none;
        d=google.com; s=arc-20160816;
        b=efpAsnKgnjw455regOKu8v29zyDyHQDIxbsI0ygOWcvmQtiKwqaC8VJoJ5XuI6wgBb
         Nvb4QvClNJ3nY/1xsKR+KOSF8fhXk3/VVUKRWq0NMfQ+Y/a5bBRjr7V0WkmEZHHi2N4g
         covgAr3hB9Eooj9Db5klNrhs4XUdQUTBiOpsJFb0xfrp+k7A7RTrztRW5hjUAYAl1a2Q
         J6bw5cMym0dC0Zk4f/gsBAQ+Hwh4eureXCtJ0/qsu6RStxvKuTYy2jlmzgSX1MQhp4u1
         Gy2YnxflXaBn46Yl+CxiTEQGEq4GUfkQVUz1+vPg7zmPU/LmrBCjzk8r7C/U3rymqSpM
         d7Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=KXCbYTiRG0jGqQa2nYqpQzJAEzwtMlyNx9/eXJbbY6M=;
        b=QQBlTbgB+1JlG5SgQkk5yAuhXYcaP15TFyQpm8ZcwpHl270+nXBIoSM+vquyJCWyrb
         2nvrfuRLP1Z8mOqkCWUl4rKYSJvJ6TLuqDo7S7s/ZuNJqlfKxD2UwJMyeLxAyjOmLgMV
         0kg8zQU3G2j2swE7jCV0FgGs7ezYQpcaGgpnJKbQgrbyCZHjehILX5m0xj8q0ym5WvZL
         cgBpbdHpM1QzHhKyxxzGH1isRZdjc+eCYXQuUTF87yH1uryU2gO48aGku4uA9twkW63i
         JGv5pdTmVTOIEBIECxjhKwqD2kSVuQXlEAPNniCbknt+6LHyHsAp0J4msBTegNnd2ho+
         MycA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id j65si102042lje.3.2017.10.13.15.42.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 15:42:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:58706 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e38fF-0007w2-7j; Sat, 14 Oct 2017 00:42:45 +0200
Subject: Re: [Outreachy kernel] [PATCH v13 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
To: Sean Paul <seanpaul@chromium.org>,
 Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: daniel@ffwll.ch, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
 jani.nikula@linux.intel.com
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
 <20171013202557.s7r2ec67sl646vtj@art_vandelay>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <e2772dfa-f62b-619f-e186-79ea2819aea3@tronnes.org>
Date: Sat, 14 Oct 2017 00:42:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171013202557.s7r2ec67sl646vtj@art_vandelay>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 13.10.2017 22.25, skrev Sean Paul:
> On Fri, Oct 13, 2017 at 04:11:43PM +0530, Meghana Madhyastha wrote:
>> Rename tinydrm_of_find_backlight to backlight_get and move it
>> to linux/backlight.c so that it can be used by other drivers.
> [apologies if this has been brought up in previous versions, I haven't been
> following closely]
>
> I don't think "backlight_get" is a good name for this function. How about
> of_find_backlight_by_name (since there's already of_find_backlight_by_node)?

I came up with that name modelled after gpiod_get() and gpiod_put() and I
deliberately kept the of_ part out of the name like the gpio functions.
gpiod_get() checks OF, ACPI and platform for gpios and calling it
backlight_get() would keep the door open for other ways of connecting
backlight devices in the future, other than Device Tree.

I think of_find_backlight() would be better than *_by_name(), since
'backlight' is the common DT property name, so it wouldn't make much sense
to require every caller to pass in the same name.

Either way is fine with me.

Noralf.


>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>> ---
>> Changes in v13:
>>   -Add backlight_put to backlight.h in this patch
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
>> index 7fd2691..a932185 100644
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
>> +	mipi->backlight = backlight_get(dev);
>>   	if (IS_ERR(mipi->backlight))
>>   		return PTR_ERR(mipi->backlight);
>>   
>> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
>> index 8049e76..c4e94d0 100644
>> --- a/drivers/video/backlight/backlight.c
>> +++ b/drivers/video/backlight/backlight.c
>> @@ -580,6 +580,43 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
>>   EXPORT_SYMBOL(of_find_backlight_by_node);
>>   #endif
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
>> +	struct backlight_device *bd = NULL;
>> +	struct device_node *np;
>> +
>> +	if (!dev)
>> +		return NULL;
>> +
>> +	if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
> I'm not really used to seeing IS_ENABLED(CONFIG_BLAH) inline. The common
> patterns seems to be wrapping the actual implementation in #if
> IS_ENABLED(CONFIG_BLAH) and then sticking a stub implementation in the #else.
>
> I see below that you already have a stub if backlight is not enabled, so expand
> that #if to include CONFIG_OF as well.
>
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
>> +EXPORT_SYMBOL(backlight_get);
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
>> index b88fabb..987a6d7 100644
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
> I'm not convinced this function needs to exist.
>
>> +
>>   extern struct backlight_device *backlight_device_register(const char *name,
>>   	struct device *dev, void *devdata, const struct backlight_ops *ops,
>>   	const struct backlight_properties *props);
>> @@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *node)
>>   }
>>   #endif
>>   
>> +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>> +struct backlight_device *backlight_get(struct device *dev);
>> +#else
>> +static inline struct backlight_device *backlight_get(struct device *dev)
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
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.



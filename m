X-GM-THRID: 6475592721521180672
X-Received: by 10.28.184.81 with SMTP id i78mr264005wmf.2.1507815521819;
        Thu, 12 Oct 2017 06:38:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.184.10 with SMTP id h10ls988705wrf.10.gmail; Thu, 12 Oct
 2017 06:38:40 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCCACqOPWYE9bPyr2baSgfCLeaEiDy8gKYjZoDgvZU5NO5WJMSLG357qCrMNQ2VuqWQfGYJ
X-Received: by 10.28.149.18 with SMTP id x18mr208960wmd.18.1507815520813;
        Thu, 12 Oct 2017 06:38:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507815520; cv=none;
        d=google.com; s=arc-20160816;
        b=P/O8D+lXfoOX+SeU7WBRbzgBJljdaZWho3f6FfBoGg7n8tWnio9QFLQV0keWRYTEYI
         JDB7mAs1mGzeIgEn5Ydg8M3EbHxCgYzUJctk5dEmbexDc1cwG/aDGpoI6B083hJdoOVb
         M6ReGubh6SqrCfa4zh12qZrKGq2nFPDVzylMRvsbPH4/GIVW9tkOj3jXjE4H0U6+9Vbp
         5fQ4Vay8WNRzISDTecfQ/As0GyJ8n9PABs/WTPnAhgqcGt07kX98LaU6bE0nHL/UVQZN
         j/xkXMEOIOZhs9LWuHIEEkBKKhEwIPGQTqgdCrrU/zzyxLeUtuh68IyBm8xYonk74PKu
         M1zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=+1dQ7E+FCnC7hDAsZV5HNAlERH+GAj9r51hoxhgYHVA=;
        b=E68aPeMxsi7BUUpDekvkrW+Tu8kTj8LDiSVUS71P/iKO9r5F8WnSKDoDFLesn9ZEzT
         VPA4TNEW00VCmqodtqqarx257B9voPzBzoeJGbWHRHAl0mdSzV/Kq2cKuq1Uop28lI4W
         dF9BbqsfVeR5LjB7RM7tCcwutSQ3ETYYEUFjoNbAiYJWOmTMg8WbtebaS07IKZa9mIlq
         xCgE1JeBM1Oo7ct5qd/wiu3bl7/IQHbfiWSzeW+H3gBfKY4UJqCFQvgMaLO5iIw1S+L9
         vpn305R9rLGRYiY4CI6ROZ6cKzk0TmqRndkBv41xT6vQjXCokvb63II7dSfVS6zBe0wP
         8k6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id 196si6947wmk.4.2017.10.12.06.38.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 06:38:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:53694 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e2dh8-0005XI-S9; Thu, 12 Oct 2017 15:38:39 +0200
Subject: Re: [PATCH v11 2/3] drm/tinydrm: Move tinydrm_of_find_backlight to
 backlight.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
 daniel.thompson@linaro.org, jani.nikula@linux.intel.com
References: <cover.1507800970.git.meghana.madhyastha@gmail.com>
 <1cc5a7d54faf3bc4671050150358086c87364106.1507800970.git.meghana.madhyastha@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <cfbba294-a147-6ed8-c36b-f406b7cd6764@tronnes.org>
Date: Thu, 12 Oct 2017 15:38:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1cc5a7d54faf3bc4671050150358086c87364106.1507800970.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 12.10.2017 11.40, skrev Meghana Madhyastha:
> Rename tinydrm_of_find_backlight to backlight_get and move it
> to linux/backlight.c so that it can be used by other drivers.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v11:
> -None
>
>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 --------------------------
>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>   drivers/video/backlight/backlight.c            | 40 ++++++++++++++++++++++++++
>   include/drm/tinydrm/tinydrm-helpers.h          |  3 --
>   include/linux/backlight.h                      |  9 ++++++
>   5 files changed, 51 insertions(+), 44 deletions(-)
>
> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> index a42dee6..cb1a01a 100644
> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> @@ -236,46 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>   }
>   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>   
> -/**
> - * tinydrm_of_find_backlight - Find backlight device in device-tree
> - * @dev: Device
> - *
> - * This function looks for a DT node pointed to by a property named 'backlight'
> - * and uses of_find_backlight_by_node() to get the backlight device.
> - * Additionally if the brightness property is zero, it is set to
> - * max_brightness.
> - *
> - * Returns:
> - * NULL if there's no backlight property.
> - * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> - * is found.
> - * If the backlight device is found, a pointer to the structure is returned.
> - */
> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> -{
> -	struct backlight_device *backlight;
> -	struct device_node *np;
> -
> -	np = of_parse_phandle(dev->of_node, "backlight", 0);
> -	if (!np)
> -		return NULL;
> -
> -	backlight = of_find_backlight_by_node(np);
> -	of_node_put(np);
> -
> -	if (!backlight)
> -		return ERR_PTR(-EPROBE_DEFER);
> -
> -	if (!backlight->props.brightness) {
> -		backlight->props.brightness = backlight->props.max_brightness;
> -		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> -			      backlight->props.brightness);
> -	}
> -
> -	return backlight;
> -}
> -EXPORT_SYMBOL(tinydrm_of_find_backlight);
> -
>   #if IS_ENABLED(CONFIG_SPI)
>   
>   /**
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index 7e5bb7d..edf9502 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -12,6 +12,7 @@
>   #include <drm/tinydrm/ili9341.h>
>   #include <drm/tinydrm/mipi-dbi.h>
>   #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <linux/backlight.h>
>   #include <linux/delay.h>
>   #include <linux/gpio/consumer.h>
>   #include <linux/module.h>
> @@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>   	if (IS_ERR(mipi->regulator))
>   		return PTR_ERR(mipi->regulator);
>   
> -	mipi->backlight = tinydrm_of_find_backlight(dev);
> +	mipi->backlight = backlight_get(dev);
>   	if (IS_ERR(mipi->backlight))
>   		return PTR_ERR(mipi->backlight);
>   
> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> index 8049e76..1debb60 100644
> --- a/drivers/video/backlight/backlight.c
> +++ b/drivers/video/backlight/backlight.c
> @@ -580,6 +580,46 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
>   EXPORT_SYMBOL(of_find_backlight_by_node);
>   #endif
>   
> +/**
> + * backlight_get - Get backlight device
> + * @dev: Device
> + *
> + * This function looks for a property named 'backlight' on the DT node
> + * connected to @dev and looks up the backlight device.
> + *
> + * Call backlight_put() to drop the reference on the backlight device.

Since you need to respin this, add backlight_put() to this patch instead 
of the next.

> + *
> + * Returns:
> + * A pointer to the backlight device if found.
> + * Error pointer -EPROBE_DEFER if the DT property is set, but no backlight
> + * device is found.
> + * NULL if there's no backlight property.
> + */
> +
> +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)

This isn't necessary since this file isn't built if not enabled.
See drivers/video/backlight/Makefile:
obj-$(CONFIG_BACKLIGHT_CLASS_DEVICE)    += backlight.o

> +struct backlight_device *backlight_get(struct device *dev)
> +{
> +	struct backlight_device *bd = NULL;
> +	struct device_node *np;
> +
> +	if (!dev)
> +		return NULL;
> +
> +	if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
> +		np = of_parse_phandle(dev->of_node, 'backlight', 0);
> +		if (np) {
> +			bd = of_find_backlight_by_node(np);
> +			of_node_put(np);
> +			if (!bd)
> +				return ERR_PTR(-EPROBE_DEFER);
> +		}
> +	}
> +
> +	return bd;
> +}
> +EXPORT_SYMBOL(backlight_get);
> +#endif
> +
>   static void __exit backlight_class_exit(void)
>   {
>   	class_destroy(backlight_class);
> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> index f54fae0..b89d8e4 100644
> --- a/include/drm/tinydrm/tinydrm-helpers.h
> +++ b/include/drm/tinydrm/tinydrm-helpers.h
> @@ -10,7 +10,6 @@
>   #ifndef __LINUX_TINYDRM_HELPERS_H
>   #define __LINUX_TINYDRM_HELPERS_H
>   
> -struct backlight_device;
>   struct tinydrm_device;
>   struct drm_clip_rect;
>   struct spi_transfer;
> @@ -46,8 +45,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>   			       struct drm_clip_rect *clip);
>   
> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> -
>   size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
>   bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
>   int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 355e9f5..1d713b3 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -202,4 +202,13 @@ of_find_backlight_by_node(struct device_node *node)
>   }
>   #endif
>   
> +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> +struct backlight_device *backlight_get(struct device *dev);
> +#else
> +static inline struct backlight_device *backlight_get(struct device *dev)
> +{
> +	return NULL;
> +}
> +#endif
> +
>   #endif



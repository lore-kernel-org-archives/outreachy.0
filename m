X-GM-THRID: 6475592721521180672
X-Received: by 10.28.145.11 with SMTP id t11mr241340wmd.0.1507905525796;
        Fri, 13 Oct 2017 07:38:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.191.29 with SMTP id p29ls274846wmf.8.canary-gmail; Fri, 13
 Oct 2017 07:38:43 -0700 (PDT)
X-Received: by 10.28.71.131 with SMTP id m3mr228198wmi.19.1507905523519;
        Fri, 13 Oct 2017 07:38:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507905523; cv=none;
        d=google.com; s=arc-20160816;
        b=J03L51pCPMtYw9bb9gXkrPR4SirQSyF7RGFeBt9BE8XUkqG5XUCh+O3pIp0d9yTW8z
         pCLFklrxLUSOAa0sVLtiVTo8oq/OgiMAhbyaD6Qb/oo+qfQ5GXO4qFHZZL8bwUHongWL
         NGjG5JPKvFDu8zLxRvitcWBrZFUKqJn5tzuieuaxIbs+KhK/4sFZJCKpTf287N3l0q7i
         SU014KnIGt/9ElKMxhC2pTWAnfPlk/LU7CjVxmcFozG/1JFN16QVFcSQJJDjqU6aH/qe
         8HtTB+KT7ZvdFqpS8pOQdy+HNvJJAzqACn5vaKNEbC+iTcN3V2TayfPDTjrSUx3t9D6J
         87mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:arc-authentication-results;
        bh=x8YHwPXsOF3HIyTMLanOkbhXTmZjQLHHAjoinuj27Sk=;
        b=qrVlGsdjJDlgdVS+as27zEJCy5zBkwcIo/BYJY0t8a1TGMlOgcU5BaE8Uw5ClRFC4H
         AYCsfMzS3O7i9QvXpAaQTHv3FlGquF4MuvjssX6MttJFmiO4RqbmnkHvwOuDCFdol4Ys
         OpZ2HUYdg94h+TaI5pLOIba2nH3A7csi88ve5TcrF0zl7UO9r0fU9jZ/HZgVj1QGkCJR
         qdgm2rGDs1mecBN1ACkczQaAhKlUdcN/tMwMZczrM814lg6j0awmSqkCZxUvy5aR9e66
         nEL5kAX8QXHq48EUkD1WKl3HGJiXlqLfVmdKtdaKh1IWPV+wwGUVP6mYCavKbgeOYIUf
         lP+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kFzt1JqJ;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id r15si76667wrc.1.2017.10.13.07.38.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:38:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kFzt1JqJ;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x22b.google.com with SMTP id u138so21908380wmu.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 07:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=x8YHwPXsOF3HIyTMLanOkbhXTmZjQLHHAjoinuj27Sk=;
        b=kFzt1JqJVCPHz87Oro47sivirgrbtK+26DMVzxcw4rY8X/x0HDlaaelefdxFzr+HLC
         H+IrBQNK+zptgb2HcZjeIZ+UsA/zDUa2dp7DbzjHaYT595jYjnQwpivr68HQ95v1GP+J
         V5NOxLpX0dDlDfjX2axCTtqbAgiRxKNAZiNjo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=x8YHwPXsOF3HIyTMLanOkbhXTmZjQLHHAjoinuj27Sk=;
        b=mP8gLe8kqAm92PjiOVZzhnpwKoe1u753vnql9nvwJusfyw+Z3JdqclI2uAcyZM/fsJ
         SV7H08Iodf5t+7nNJyYKf3ZAxTQ9LQ0E5jVz6i1PqdcYk7b+QhlHQQliTmoxxDMcfYHM
         OyonRWLs+KNhbzFbuGQQLfzjzeT9HCGA0rjAexZlo9H008Gu2tc9uDlRrQ3vOaFSwHF6
         W67B+LhedjDmKQbi1Te1j8XAzeY7jt6T4TWs0pcL3pJ2JPBUeTpMBjqFZm/W4VbxlA/r
         1yOciwoQHZnhtaGX4j5n84C021Uf2gbL3H7/NzFcxL1h4G7MKpyjKy9QbyuVnYeW3K7A
         ++GQ==
X-Gm-Message-State: AMCzsaVj7zNftsCTJ0hxlEE6Na1ue0Mr6eQdt+aDhJLIbeIt4ee5ZvqG
	XI4hv0S8roysQ5M18/fzK7+xoQ==
X-Google-Smtp-Source: AOwi7QAI9vmhKqpQ6PYj1xyKuATHHy3BHbx+T8M1qP4zKSlZaZCzqODvHp/I2i7h7ZzSxE0QOhiGtw==
X-Received: by 10.80.181.61 with SMTP id y58mr2478084edd.150.1507905522885;
        Fri, 13 Oct 2017 07:38:42 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.191] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id 41sm1009699edz.66.2017.10.13.07.38.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:38:42 -0700 (PDT)
Subject: Re: [PATCH v13 2/3] drm/tinydrm: Move tinydrm_of_find_backlight to
 backlight.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 noralf@tronnes.org, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <403f72ce-f17b-f407-d0dd-b2d8aa758d91@linaro.org>
Date: Fri, 13 Oct 2017 15:38:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 13/10/17 11:41, Meghana Madhyastha wrote:
> Rename tinydrm_of_find_backlight to backlight_get and move it
> to linux/backlight.c so that it can be used by other drivers.
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Acked-by: Daniel Thompson <daniel.thompson@linaro.org>


> ---
> Changes in v13:
>   -Add backlight_put to backlight.h in this patch
> 
>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 --------------------------
>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>   drivers/video/backlight/backlight.c            | 37 ++++++++++++++++++++++++
>   include/drm/tinydrm/tinydrm-helpers.h          |  2 --
>   include/linux/backlight.h                      | 19 ++++++++++++
>   5 files changed, 58 insertions(+), 43 deletions(-)
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
> index 7fd2691..a932185 100644
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
> @@ -188,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>   	if (IS_ERR(mipi->regulator))
>   		return PTR_ERR(mipi->regulator);
>   
> -	mipi->backlight = tinydrm_of_find_backlight(dev);
> +	mipi->backlight = backlight_get(dev);
>   	if (IS_ERR(mipi->backlight))
>   		return PTR_ERR(mipi->backlight);
>   
> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> index 8049e76..c4e94d0 100644
> --- a/drivers/video/backlight/backlight.c
> +++ b/drivers/video/backlight/backlight.c
> @@ -580,6 +580,43 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
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
> + *
> + * Returns:
> + * A pointer to the backlight device if found.
> + * Error pointer -EPROBE_DEFER if the DT property is set, but no backlight
> + * device is found.
> + * NULL if there's no backlight property.
> + */
> +struct backlight_device *backlight_get(struct device *dev)
> +{
> +	struct backlight_device *bd = NULL;
> +	struct device_node *np;
> +
> +	if (!dev)
> +		return NULL;
> +
> +	if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
> +		np = of_parse_phandle(dev->of_node, "backlight", 0);
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
> +
>   static void __exit backlight_class_exit(void)
>   {
>   	class_destroy(backlight_class);
> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> index f54fae0..0a4ddbc 100644
> --- a/include/drm/tinydrm/tinydrm-helpers.h
> +++ b/include/drm/tinydrm/tinydrm-helpers.h
> @@ -46,8 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>   			       struct drm_clip_rect *clip);
>   
> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> -
>   size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
>   bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
>   int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index b88fabb..987a6d7 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -159,6 +159,16 @@ static inline int backlight_disable(struct backlight_device *bd)
>   	return backlight_update_status(bd);
>   }
>   
> +/**
> + * backlight_put - Drop backlight reference
> + * @bd: the backlight device to put
> + */
> +static inline void backlight_put(struct backlight_device *bd)
> +{
> +	if (bd)
> +		put_device(&bd->dev);
> +}
> +
>   extern struct backlight_device *backlight_device_register(const char *name,
>   	struct device *dev, void *devdata, const struct backlight_ops *ops,
>   	const struct backlight_properties *props);
> @@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *node)
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
> 



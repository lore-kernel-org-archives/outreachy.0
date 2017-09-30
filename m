X-GM-THRID: 6470705412124442624
X-Received: by 10.46.80.25 with SMTP id e25mr525826ljb.26.1506798301815;
        Sat, 30 Sep 2017 12:05:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.72 with SMTP id x8ls1484549ljd.12.gmail; Sat, 30 Sep
 2017 12:05:00 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCHhfhLe1deJCi+VMKBhwE2stras7t5tOBrgRmmF32wyAgqwuchiAu2JNYywT8qGsB9lhTw
X-Received: by 10.25.23.195 with SMTP id 64mr35453lfx.10.1506798300552;
        Sat, 30 Sep 2017 12:05:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506798300; cv=none;
        d=google.com; s=arc-20160816;
        b=bpcx6YopqurvjUTdPdBXREg4pc2swSiwKRw3OckkO9lmAHfb3yE4jtvJB0OstUcQCr
         ejOF2XLYXJpTVci3GKdBJihU4DXGEIRvJf6V1xEig2aAyzG2bTfjHgla3s3joFivt1If
         ZFDBylFnqjqg5WfoHjgBBXZt02BLQCHA3oq7MSE2wHtA1CQjCuvrd9ZVhROunaHV4o3R
         5hBAfueIh4E5GMfpfoOSO+4WeX+dPG4PNBqKcCiPOvrqaLeEV1ZVGw03V9Q3POtW8dsS
         dR1IhWCfafrOxTo/Rnscb2byBa3/nV2LdoS597dMXvswTJB78g5Stn7J4PMkkg+HHDxg
         XLKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=w5R7SyhZqcBFI8v5lnYpBERu4rGSFAqNZDfe53MYV/I=;
        b=HSN1c82uP4NmFjXi2Fl7n3iOhLCbgXu7YSlZqgsC0/IGZ0aHdtRJzQwX5EfEIm6HIM
         XF3YfF1xPSqU3MC1iyY4gjHaYPjGFCwvAmh6fgGCMZTqSCXpP4BJrqEgCQyhLh73vRdB
         Va1Zw+mqcUFinXwKMNxR3uaOP+kR0w57XU3MRrPZGn/A99QIsbVUzzsSLqArXqZye4ys
         c1i/AqHSoo44CZBauq8caoD0qBFOpmkkpl5OWLK1f2182L8fCXWpnfKJcLqoeEz1glup
         +rdMN0dbuEPQtwh4ksnlAGvfJzmhNt13/AGllta9ejNd2Cv6iP1gsoGFuxDz/l5ENNuP
         HEgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id w64si246611lff.1.2017.09.30.12.05.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 12:05:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:51172 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dyN4N-0002Ht-HN; Sat, 30 Sep 2017 21:04:59 +0200
Subject: Re: [PATCH v6 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506786158.git.meghana.madhyastha@gmail.com>
 <bfad07c542b9f5c892c6beddc4ecc2c3297f1f78.1506786158.git.meghana.madhyastha@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <f7b02ca9-548c-0362-e965-08236e8120e2@tronnes.org>
Date: Sat, 30 Sep 2017 21:04:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <bfad07c542b9f5c892c6beddc4ecc2c3297f1f78.1506786158.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 30.09.2017 19.12, skrev Meghana Madhyastha:
> Rename tinydrm_of_find_backlight to drm_of_find_backlight
> and move it into drm_of.c from tinydrm-helpers.c. This is
> because other drivers in the drm subsystem might need to call
> this function. In that case and otherwise, it is better from
> an organizational point of view to move it into drm_of.c along
> with the other _of.c functions.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v6:
> -Move function declarations to linux/backlight.h to resolve
>   module dependency issues.
>
>   drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  2 +-
>   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
>   include/linux/backlight.h                      | 11 +++++++
>   5 files changed, 56 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index 8dafbdf..d878d3a 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -1,6 +1,7 @@
>   #include <linux/component.h>
>   #include <linux/export.h>
>   #include <linux/list.h>
> +#include <linux/backlight.h>
>   #include <linux/of_graph.h>
>   #include <drm/drmP.h>
>   #include <drm/drm_bridge.h>
> @@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>   	return ret;
>   }
>   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
> +
> +/**
> + * drm_of_find_backlight - Find backlight device in device-tree
> + * @dev: Device
> + *
> + * This function looks for a DT node pointed to by a property named 'backlight'
> + * and uses of_find_backlight_by_node() to get the backlight device.
> + * Additionally if the brightness property is zero, it is set to
> + * max_brightness.
> + *
> + * Note: It is the responsibility of the caller to call put_device() when
> + * releasing the resource.
> + *
> + * Returns:
> + * NULL if there's no backlight property.
> + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> + * is found.
> + * If the backlight device is found, a pointer to the structure is returned.
> + */
> +struct backlight_device *drm_of_find_backlight(struct device *dev)
> +{
> +	struct backlight_device *backlight;
> +	struct device_node *np;
> +
> +	np = of_parse_phandle(dev->of_node, "backlight", 0);
> +	if (!np)
> +		return NULL;
> +
> +	backlight = of_find_backlight_by_node(np);
> +	of_node_put(np);
> +
> +	if (!backlight)
> +		return ERR_PTR(-EPROBE_DEFER);
> +
> +	if (!backlight->props.brightness) {
> +		backlight->props.brightness = backlight->props.max_brightness;
> +		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> +			      backlight->props.brightness);
> +	}
> +
> +	return backlight;
> +}
> +EXPORT_SYMBOL(drm_of_find_backlight);
> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> index bd6cce0..cd4c6a5 100644
> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> @@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>   EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>   
>   /**
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
> -/**
>    * tinydrm_enable_backlight - Enable backlight helper
>    * @backlight: Backlight device
>    *
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index 7e5bb7d..682b4db 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -189,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>   	if (IS_ERR(mipi->regulator))
>   		return PTR_ERR(mipi->regulator);
>   
> -	mipi->backlight = tinydrm_of_find_backlight(dev);
> +	mipi->backlight = drm_of_find_backlight(dev);
>   	if (IS_ERR(mipi->backlight))
>   		return PTR_ERR(mipi->backlight);
>   
> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> index d554ded..e40ef2d 100644
> --- a/include/drm/tinydrm/tinydrm-helpers.h
> +++ b/include/drm/tinydrm/tinydrm-helpers.h
> @@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>   			       struct drm_clip_rect *clip);
>   
> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
>   int tinydrm_enable_backlight(struct backlight_device *backlight);
>   int tinydrm_disable_backlight(struct backlight_device *backlight);
>   
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 5f2fd61..47a095e 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -172,4 +172,15 @@ of_find_backlight_by_node(struct device_node *node)
>   }
>   #endif
>   
> +#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> +struct backlight_device *
> +drm_of_find_backlight(struct device *dev);
> +#else
> +static inline struct backlight_device *
> +drm_of_find_backlight(struct device *dev)
> +{
> +	return NULL;
> +}
> +#endif
> +
>   #endif

This isn't what I meant, you only change the of_find_backlight_by_node()
declaration/definition. It should be like this:

#if defined(CONFIG_OF) && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
struct backlight_device *of_find_backlight_by_node(struct device_node 
*node);
#else
static inline struct backlight_device *
of_find_backlight_by_node(struct device_node *node)
{
     return NULL;
}
#endif

And this change needs to be a patch on it's own. The backlight subsystem
has it's own maintainer that will review this change.
It's best to send him/them the whole patchset so they see the context.

Noralf.



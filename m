X-GM-THRID: 6470456120502648832
X-Received: by 10.46.80.25 with SMTP id e25mr117437ljb.26.1506524892214;
        Wed, 27 Sep 2017 08:08:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.72 with SMTP id x8ls356784ljd.12.gmail; Wed, 27 Sep 2017
 08:08:10 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCwE8miH6jKToZ2YIDK1PepqZKGMtUzunKS7mH7LuQiW6RhTfDlKdd1tKE6ioIcrf6Zj4yV
X-Received: by 10.46.88.72 with SMTP id x8mr120102ljd.6.1506524890821;
        Wed, 27 Sep 2017 08:08:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506524890; cv=none;
        d=google.com; s=arc-20160816;
        b=Pe6JP7kUrhQSs5rVInEGYJUSM7/Ld1t+PQ89G9yKM1EokeFhXObaYgGNHvfyUqO3E0
         PW926TB+pTG4ptYUXrn+AUWsPzGSEQ3BRe/CJfZBe4qnwHtreMnx88GIQXtBO2HxgwMo
         NwEtVFlqCXMXJ2EZUftytPF/CsqeQ+nGicwHALFM2IE5fNoDF/+WhRKw07QG9lIvH/Qx
         O3qsxV2dspAmjT81sFrJpLHz/9DFmisE/p5iB2RtHwRumoaxhire69Ik7+kwoqcIkEd9
         ac5EYwMcMBAEOzyX1+W+3e7TONHUTopLA7hUimrbVKq5j3NQTymMMciI4kH9Tk46NADo
         1jiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=oOoRGcuSe9tyGHhfALHDomVNpSgnJWcgx1m14dqpxnI=;
        b=N6Xs7zBopLScHhhKrV84MB0c6r7vhTOFfidYHMH25HDSSIduA/zWju4CyUtZUwk47T
         rjy2syw3VRjrI5BnEVnjrmwFGBZEbO3d1IdIRAvu+S+wWCzjvQ2zyrnsZ9sAe+oH8hHX
         QZZSSUkWjW1pcJsdq84eNlbfMgDcosCY9CjiETYVgEhq6HVNGq9HYSQtC7dM/aDeSoDc
         6vP9+Qfg5d2Blgs0cMqZy0orNU1q8dBUmq2qRCaWHRTUrDTaUhcaXtUdqZkPraRWM0cY
         0HYfiSUGL0MFKevqjktu7fs4GLDjlis2g3DM7XhSM7Od3A7v4K9ehQJc/GT5hGq22ziy
         +oxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id i83si435523lfl.6.2017.09.27.08.08.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 08:08:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:50107 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dxDwX-0000ev-T5; Wed, 27 Sep 2017 17:08:09 +0200
Subject: Re: [PATCH] drm/tinydrm: Move tinydrm_of_find_backlight into drm_of.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <20170927135409.GA5027@meghana-HP-Pavilion-Notebook>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <9e838b3f-1a40-57de-b270-0995658613eb@tronnes.org>
Date: Wed, 27 Sep 2017 17:08:07 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170927135409.GA5027@meghana-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 27.09.2017 15.54, skrev Meghana Madhyastha:
> Rename tinydrm_of_find_backlight to drm_of_find_backlight
> and move it into drm_of.c from tinydrm-helpers.c. This is
> because other drivers in the drm subsystem might need to call
> this function. In that case and otherwise, it is better from
> an organizational point of view to move it into drm_of.c along
> with the other _of.c functions.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---

I suggest you split this patch in 2, one to add the function and one to
use it in tinydrm.

>   drivers/gpu/drm/drm_of.c                       | 41 ++++++++++++++++++++++++++
>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -------------------------
>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>   include/drm/drm_of.h                           |  1 +
>   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
>   5 files changed, 44 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index 8dafbdf..d8cded3 100644
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
> @@ -260,3 +261,43 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
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

Please add a note here about the callers responsibility to call
put_device() when releasing the resource.
See the of_find_backlight_by_node() docs.

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

Can you also please add a devm_ version of this function. tinydrm uses
devres[1] versions of functions for requiring device resources, so it
would be nice to do this for backlight as well. tinydrm is currently
broken in this respect, it doesn't put the backlight device.

I had a devm_of_find_backlight() version lying around that I've adjusted
to give you an idea of what I'm talking about:

static void devm_drm_of_find_backlight_release(void *data)
{
     put_device(data);
}

struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
{
     struct backlight_device *backlight;
     int ret;

     backlight = drm_of_find_backlight(dev);
     if (IS_ERR_OR_NULL(backlight))
         return backlight;

     ret = devm_add_action(dev, devm_drm_of_find_backlight_release,
                   backlight->dev);
     if (ret) {
         put_device(backlight->dev);
         return ERR_PTR(ret);
     }

     return backlight;
}

[1] https://www.kernel.org/doc/Documentation/driver-model/devres.txt

Noralf.

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
> index 7e5bb7d..5e3d635 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -12,6 +12,7 @@
>   #include <drm/tinydrm/ili9341.h>
>   #include <drm/tinydrm/mipi-dbi.h>
>   #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <drm/drm_of.h>
>   #include <linux/delay.h>
>   #include <linux/gpio/consumer.h>
>   #include <linux/module.h>
> @@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>   	if (IS_ERR(mipi->regulator))
>   		return PTR_ERR(mipi->regulator);
>   
> -	mipi->backlight = tinydrm_of_find_backlight(dev);
> +	mipi->backlight = drm_of_find_backlight(dev);
>   	if (IS_ERR(mipi->backlight))
>   		return PTR_ERR(mipi->backlight);
>   
> diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> index 104dd51..e8fba5b 100644
> --- a/include/drm/drm_of.h
> +++ b/include/drm/drm_of.h
> @@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>   				int port, int endpoint,
>   				struct drm_panel **panel,
>   				struct drm_bridge **bridge);
> +struct backlight_device *drm_of_find_backlight(struct device *dev);
>   #else
>   static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
>   						  struct device_node *port)
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



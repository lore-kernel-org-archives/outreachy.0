X-GM-THRID: 6468555141619384320
X-Received: by 10.223.184.197 with SMTP id c5mr343314wrg.17.1506351379602;
        Mon, 25 Sep 2017 07:56:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.141 with SMTP id y13ls1257094wmh.6.canary-gmail; Mon, 25
 Sep 2017 07:56:18 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAyG/Ju2bjxZY1rksky9IT8vu2p4CsfCIm/YDDBDTGPiA4o3iAgXITVp2R+hFWZqELgI/eu
X-Received: by 10.223.171.237 with SMTP id s100mr379055wrc.31.1506351378508;
        Mon, 25 Sep 2017 07:56:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506351378; cv=none;
        d=google.com; s=arc-20160816;
        b=pY9OcKE+iu/UlhQboWgChcuRoK6KW+17u3GLSYU8/msjdpmFfGOSXBVHTsXpib7NFU
         f7lYOAsW5fYrKHQ6OjQT4uFaGLTKcxoMoCPoDTLzNPdiGbQ02IS+b4hgVVUq4tdRBBKl
         YuIm9W3xG1WCB4986cCAoNAXHDsYjClX0mxt3j5wNEgTYvXRci8f8ReoxVlyqBccWgxI
         xdQcfe3skU/iS2lqkPF1plYJpaJsO0E0I8v0BWDn51a9Vakhh8oGwODPSY8v6G2AA1CE
         /6fCvwhLWUjBepRHWqWqN9oye/pwMh2Q05kif/O3pUKu5nYN+C3EKxlYPQrXSKy+PD93
         o+sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=qiUDVYr40A/FOwKQUWz16gUXeKjLBaS38BpKBX8t6/g=;
        b=UQUKd5I5WejGP2CEfMjZzO76+kLbWc3K+rxXPMwHIvQ756QUd16HsDFqpV9CqYCDSP
         5r4YvbCQSlqoL3sbJqY0i0k5rans7CqHysNU/Xap3Hz05B3E82aNvUYcm4ch1OsClg+H
         UOTiK9d63xX5WVoDoXZE+SCsgVTCIzQDIu+XrrApzJS65/wUk6ZTqhr4Y+sUEIxsr8WH
         FoeZWiIzvFcX8o4l/SZ4CcaEoxJog/jgCH8M7eda5NfucME/xb6AIBuNOCYmB5BXavQ4
         kxpi/8jgCjyCUr1ReUfQHxl/qlRmx64614kUHEOKCbic+QBcELhSIVgQza4E4yD3AUCr
         krMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id i83si226361lfl.6.2017.09.25.07.56.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 07:56:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:56278 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dwUnx-0000Dn-C9; Mon, 25 Sep 2017 16:56:17 +0200
Subject: Re: [PATCH v2] drm/tinydrm: Move backlight helpers to a separate file
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 outreachy-kernel@googlegroups.com
References: <20170922150935.GA15912@meghana-HP-Pavilion-Notebook>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <3dd313c8-daa7-a395-183c-c2dfac4dd4b4@tronnes.org>
Date: Mon, 25 Sep 2017 16:56:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170922150935.GA15912@meghana-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Meghana,


Den 22.09.2017 17.09, skrev Meghana Madhyastha:
> Move backlight helpers from tinydrm-helpers.c to
> tinydrm-backlight.c. This is because it is organizationally
> simpler to understand and advantageous to group functions
> performing a similar function to a separate file as opposed to
> having one helper file with heteregenous helper functions.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---

I don't think there is much gain in just moving the code like this.

The idea is to add a drm_backlight helper that can be useful for all
DRM drivers that use the backlight subsystem.

This is what the TODO says:
https://dri.freedesktop.org/docs/drm/gpu/todo.html#tinydrm

- backlight helpers, probably best to put them into a new drm_backlight.c.
   This is because drivers/video is de-facto unmaintained. We could also
   move drivers/video/backlight to drivers/gpu/backlight and take it all
   over within drm-misc, but that’s more work.

There is also this discussion to take into account:
KMS backlight ABI proposition
https://lists.freedesktop.org/archives/dri-devel/2017-February/133206.html

I don't remember what came out of that discussion.

Noralf.

> Changes in v2:
>   -Improved commit message by explaining why the changes were made.
>
>   drivers/gpu/drm/tinydrm/core/Makefile            |   2 +-
>   drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c | 103 +++++++++++++++++++++++
>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c   |  94 ---------------------
>   drivers/gpu/drm/tinydrm/mi0283qt.c               |   1 +
>   drivers/gpu/drm/tinydrm/mipi-dbi.c               |   1 +
>   include/drm/tinydrm/tinydrm-backlight.h          |  18 ++++
>   6 files changed, 124 insertions(+), 95 deletions(-)
>   create mode 100644 drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
>   create mode 100644 include/drm/tinydrm/tinydrm-backlight.h
>
> diff --git a/drivers/gpu/drm/tinydrm/core/Makefile b/drivers/gpu/drm/tinydrm/core/Makefile
> index fb221e6..389ca7a 100644
> --- a/drivers/gpu/drm/tinydrm/core/Makefile
> +++ b/drivers/gpu/drm/tinydrm/core/Makefile
> @@ -1,3 +1,3 @@
> -tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-helpers.o
> +tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-backlight.o tinydrm-helpers.o
>   
>   obj-$(CONFIG_DRM_TINYDRM) += tinydrm.o
> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> new file mode 100644
> index 0000000..dc6f17d
> --- /dev/null
> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
> @@ -0,0 +1,103 @@
> +#include <linux/backlight.h>
> +#include <linux/dma-buf.h>
> +#include <linux/pm.h>
> +#include <linux/swab.h>
> +
> +#include <drm/tinydrm/tinydrm.h>
> +#include <drm/tinydrm/tinydrm-backlight.h>
> +
> +/**
> + * tinydrm_of_find_backlight - Find backlight device in device-tree
> + * @dev: Device
> + *
> + * This function looks for a DT node pointed to by a property named 'backlight'
> + * and uses of_find_backlight_by_node() to get the backlight device.
> + * Additionally if the brightness property is zero, it is set to
> + * max_brightness.
> + *
> + * Returns:
> + * NULL if there's no backlight property.
> + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> + * is found.
> + * If the backlight device is found, a pointer to the structure is returned.
> + */
> +
> +struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
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
> +EXPORT_SYMBOL(tinydrm_of_find_backlight);
> +
> +/**
> + * tinydrm_enable_backlight - Enable backlight helper
> + * @backlight: Backlight device
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +int tinydrm_enable_backlight(struct backlight_device *backlight)
> +{
> +	unsigned int old_state;
> +	int ret;
> +
> +	if (!backlight)
> +		return 0;
> +
> +	old_state = backlight->props.state;
> +	backlight->props.state &= ~BL_CORE_FBBLANK;
> +	DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> +		      backlight->props.state);
> +
> +	ret = backlight_update_status(backlight);
> +	if (ret)
> +		DRM_ERROR("Failed to enable backlight %d\n", ret);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(tinydrm_enable_backlight);
> +
> +/**
> + * tinydrm_disable_backlight - Disable backlight helper
> + * @backlight: Backlight device
> + *
> + * Returns:
> + * Zero on success, negative error code on failure.
> + */
> +int tinydrm_disable_backlight(struct backlight_device *backlight)
> +{
> +	unsigned int old_state;
> +	int ret;
> +
> +	if (!backlight)
> +		return 0;
> +
> +	old_state = backlight->props.state;
> +	backlight->props.state |= BL_CORE_FBBLANK;
> +	DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> +		      backlight->props.state);
> +	ret = backlight_update_status(backlight);
> +	if (ret)
> +		DRM_ERROR("Failed to disable backlight %d\n", ret);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(tinydrm_disable_backlight);
> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> index bd6cce0..ee8ad8c 100644
> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> @@ -236,100 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
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
> -/**
> - * tinydrm_enable_backlight - Enable backlight helper
> - * @backlight: Backlight device
> - *
> - * Returns:
> - * Zero on success, negative error code on failure.
> - */
> -int tinydrm_enable_backlight(struct backlight_device *backlight)
> -{
> -	unsigned int old_state;
> -	int ret;
> -
> -	if (!backlight)
> -		return 0;
> -
> -	old_state = backlight->props.state;
> -	backlight->props.state &= ~BL_CORE_FBBLANK;
> -	DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> -		      backlight->props.state);
> -
> -	ret = backlight_update_status(backlight);
> -	if (ret)
> -		DRM_ERROR("Failed to enable backlight %d\n", ret);
> -
> -	return ret;
> -}
> -EXPORT_SYMBOL(tinydrm_enable_backlight);
> -
> -/**
> - * tinydrm_disable_backlight - Disable backlight helper
> - * @backlight: Backlight device
> - *
> - * Returns:
> - * Zero on success, negative error code on failure.
> - */
> -int tinydrm_disable_backlight(struct backlight_device *backlight)
> -{
> -	unsigned int old_state;
> -	int ret;
> -
> -	if (!backlight)
> -		return 0;
> -
> -	old_state = backlight->props.state;
> -	backlight->props.state |= BL_CORE_FBBLANK;
> -	DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
> -		      backlight->props.state);
> -	ret = backlight_update_status(backlight);
> -	if (ret)
> -		DRM_ERROR("Failed to disable backlight %d\n", ret);
> -
> -	return ret;
> -}
> -EXPORT_SYMBOL(tinydrm_disable_backlight);
>   
>   #if IS_ENABLED(CONFIG_SPI)
>   
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index 7e5bb7d..c161d45 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -12,6 +12,7 @@
>   #include <drm/tinydrm/ili9341.h>
>   #include <drm/tinydrm/mipi-dbi.h>
>   #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <drm/tinydrm/tinydrm-backlight.h>
>   #include <linux/delay.h>
>   #include <linux/gpio/consumer.h>
>   #include <linux/module.h>
> diff --git a/drivers/gpu/drm/tinydrm/mipi-dbi.c b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> index 2caeabc..dc84f26 100644
> --- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
> +++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> @@ -11,6 +11,7 @@
>   
>   #include <drm/tinydrm/mipi-dbi.h>
>   #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <drm/tinydrm/tinydrm-backlight.h>
>   #include <linux/debugfs.h>
>   #include <linux/dma-buf.h>
>   #include <linux/gpio/consumer.h>
> diff --git a/include/drm/tinydrm/tinydrm-backlight.h b/include/drm/tinydrm/tinydrm-backlight.h
> new file mode 100644
> index 0000000..6a7b6d5
> --- /dev/null
> +++ b/include/drm/tinydrm/tinydrm-backlight.h
> @@ -0,0 +1,18 @@
> +/*
> + * Copyright (C) 2016 Noralf Trønnes
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#ifndef __LINUX_TINYDRM_BACKLIGHT_H
> +#define __LINUX_TINYDRM_BACKLIGHT_H
> +
> +struct backlight_device;
> +struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> +int tinydrm_enable_backlight(struct backlight_device *backlight);
> +int tinydrm_disable_backlight(struct backlight_device *backlight);
> +
> +#endif /* __LINUX_TINYDRM_BACKLIGHT_H */



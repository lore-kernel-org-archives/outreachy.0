X-GM-THRID: 6468555141619384320
X-Received: by 10.28.109.193 with SMTP id b62mr201558wmi.16.1506403851981;
        Mon, 25 Sep 2017 22:30:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.176.173 with SMTP id i42ls3147612wra.7.gmail; Mon, 25 Sep
 2017 22:30:51 -0700 (PDT)
X-Received: by 10.223.142.172 with SMTP id q41mr456063wrb.25.1506403851450;
        Mon, 25 Sep 2017 22:30:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506403851; cv=none;
        d=google.com; s=arc-20160816;
        b=BLX20FLWfub2vD2ans/aRXJKtGhSvB8uUtL/id5wBbAROgsWVPmhRoczzADR1sTKdf
         G7sgl1mVOUnhRaAj69BfSJcyNdLbk13j+ZPTDLrq/5bkhnbdeqyIvvAtfV2J1n0Jk00L
         ooF3xJYzC4JSEQkJFvj02ITNN7T8wU1FpHi4E+j9bqszdGgTgdBZQ764Gm5u23rxdIVo
         QiVD9bDNmJ0SvztgB79o0m6uUojMwIXJUNTKxSeXAD2mEbExE2jBCGBp3upOo3BEbvLT
         ZAfwNBTyUc3AJqz3QZgz4Ekjeg9Q0oab/pCQZLRIxYy0ELTz6tGKev0ogq01JGvS9iyc
         NwsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:arc-authentication-results;
        bh=IqDC8539yoPdb7aIsjjkYe9lOgDl0GoUBIF/VdXTkX0=;
        b=QfNEHOZbx04n67QQlCqV9o4qaJgKpshskEL6C7cihbjw8V2nxKGyta7hCKtDMBlIG7
         2chHBlzV438WUD+FN4G9rd24fPd4EqxrMvL4gXNb3OleIN2hvEZerBrxKtMjS7tM3fBB
         ftbYE1jW0oeCUVGh49CiN0ZPFyE/f7u78f67zyDysfZCL4g6KdTGAL2E1R1greWUJbCL
         TxDBl90UkS/rmnlJ+l/OcfUn7wxDULzur0drGlcdIJmpWvK6c7Ki8+zLueSHIjuFVdZ+
         Ej0IkspmTeEiko+dhMtipmxyNOjhAbbl6SPff9UY8c3Abhbkt3GhLe/LnxoQjnRY8aru
         hvJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=GtU1RR4m;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id q145si865038wme.4.2017.09.25.22.30.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 22:30:51 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=GtU1RR4m;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x243.google.com with SMTP id x17so8396479wmd.5
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 22:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=IqDC8539yoPdb7aIsjjkYe9lOgDl0GoUBIF/VdXTkX0=;
        b=GtU1RR4m3VGtBeVdrCTkxzwYENVCUX7wwSAzbpg+AcBNuVbvQvwPO9iydwOgY6t0FW
         asYn1jpxBKPw0a4eMGCXB8HdkA3HqH9Z4TNF5GeVTMR9QJmbAF/Qm5bENZaS1OVC0CUj
         Jsz9qAlhf2uhy91m2jmxhww+EQi16Q4n1MZ8o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=IqDC8539yoPdb7aIsjjkYe9lOgDl0GoUBIF/VdXTkX0=;
        b=auYpyJyfcGoTpq4ubqq+W1cyQEIjDDIIzcmJT5OMPRTS57TcT/JvVw7Ip5gCpPgRSq
         u0NnTlPPK1AXA4T3ja9jSXLGxacq81iCmBMvLE/F7cOuG2A1Ww7vQ2IMDLsDirzhjYS/
         KUZYP/G2BG7ILQ6E6RFH8MdC8W6uisCBQ6lSj+2pEzafoomCp4I/QeYssf6LnFv9VZe+
         psAqyrj+V2L37PeP8LsUo9uA+xdrc3vIRtfvjXJTEQ6DBv83iofYarT+T5GbBbHEYm9t
         H573OJpkoa32Yl2XBHcl+Jt1jNGrp4h+7oWxAzkgi4B5VA563pfjkWNEiThgRWRqifLR
         fPdQ==
X-Gm-Message-State: AHPjjUhwuv0FIpjEHeAM39Y7czNHfaBwSy6/5MkVJdCSDUjnyNxucwhb
	R0iD8zPBu5ATz25ghHt/kaInPg==
X-Google-Smtp-Source: AOwi7QAh2GDrJjnvInwK74fEbuRnNSHmQcpPU8NGDeGNiHi1Ahu6W+exS9rH70wss/5Wpj39HmWpfw==
X-Received: by 10.80.144.42 with SMTP id b39mr16837181eda.204.1506403850990;
        Mon, 25 Sep 2017 22:30:50 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id g2sm495450eda.23.2017.09.25.22.30.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Sep 2017 22:30:50 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 26 Sep 2017 07:30:48 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] drm/tinydrm: Move backlight helpers to a separate file
Message-ID: <20170926053048.ltpkfj72l6cjxypm@phenom.ffwll.local>
References: <20170922105723.GA4335@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170922105723.GA4335@meghana-HP-Pavilion-Notebook>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Fri, Sep 22, 2017 at 04:27:28PM +0530, Meghana Madhyastha wrote:
> Move backlight helpers from tinydrm-helpers.c to
> tinydrm-backlight.c
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Might be good if we discuss this a bit on irc first. Just moving the code
around verbatim isn't all that useful, the goal of this todo was to get
the backlight helpers out of tinydrm into drm helpers, so that other
drivers could start using them.

That means they need to be slightly reworked, and we also need to find
suitable homes for all of them (e.g. the of_find one should probably be in
drm_of.c).

Cheers, Daniel
> ---
>  drivers/gpu/drm/tinydrm/core/Makefile            |   2 +-
>  drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c | 103 +++++++++++++++++++++++
>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c   |  94 ---------------------
>  drivers/gpu/drm/tinydrm/mi0283qt.c               |   1 +
>  drivers/gpu/drm/tinydrm/mipi-dbi.c               |   1 +
>  include/drm/tinydrm/tinydrm-backlight.h          |  18 ++++
>  6 files changed, 124 insertions(+), 95 deletions(-)
>  create mode 100644 drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
>  create mode 100644 include/drm/tinydrm/tinydrm-backlight.h
> 
> diff --git a/drivers/gpu/drm/tinydrm/core/Makefile b/drivers/gpu/drm/tinydrm/core/Makefile
> index fb221e6..389ca7a 100644
> --- a/drivers/gpu/drm/tinydrm/core/Makefile
> +++ b/drivers/gpu/drm/tinydrm/core/Makefile
> @@ -1,3 +1,3 @@
> -tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-helpers.o
> +tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-backlight.o tinydrm-helpers.o
>  
>  obj-$(CONFIG_DRM_TINYDRM) += tinydrm.o
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
>  }
>  EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
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
>  #if IS_ENABLED(CONFIG_SPI)
>  
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index 7e5bb7d..c161d45 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -12,6 +12,7 @@
>  #include <drm/tinydrm/ili9341.h>
>  #include <drm/tinydrm/mipi-dbi.h>
>  #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <drm/tinydrm/tinydrm-backlight.h>
>  #include <linux/delay.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/module.h>
> diff --git a/drivers/gpu/drm/tinydrm/mipi-dbi.c b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> index 2caeabc..dc84f26 100644
> --- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
> +++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> @@ -11,6 +11,7 @@
>  
>  #include <drm/tinydrm/mipi-dbi.h>
>  #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <drm/tinydrm/tinydrm-backlight.h>
>  #include <linux/debugfs.h>
>  #include <linux/dma-buf.h>
>  #include <linux/gpio/consumer.h>
> diff --git a/include/drm/tinydrm/tinydrm-backlight.h b/include/drm/tinydrm/tinydrm-backlight.h
> new file mode 100644
> index 0000000..6a7b6d5
> --- /dev/null
> +++ b/include/drm/tinydrm/tinydrm-backlight.h
> @@ -0,0 +1,18 @@
> +/*
> + * Copyright (C) 2016 Noralf Tr�nnes
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
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


X-GM-THRID: 6475592721521180672
X-Received: by 10.80.170.148 with SMTP id q20mr2018271edc.5.1508859724987;
        Tue, 24 Oct 2017 08:42:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.121 with SMTP id p54ls432124edc.7.gmail; Tue, 24 Oct
 2017 08:42:04 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SYj1H+ZrjBGY8hUO9FEkrHs1kbpcPytpnOiJrSA9O+Dgx4zoNZR0CMqGe5Zz0pk0UTvhje
X-Received: by 10.80.206.3 with SMTP id y3mr4460730edi.11.1508859724145;
        Tue, 24 Oct 2017 08:42:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508859724; cv=none;
        d=google.com; s=arc-20160816;
        b=BN53mAXDloNXMbJxRIDFureKXQ4eEKyzcqLJhgXZKfJ5nFD95nfY2j5F313D/BZsks
         +YfnFMXkRLBXzOV71Lgi6wN9H02+ywgkqv1sY+E1G1efwMPQijX0cH32RZOi4lFIjd+4
         jA25+Kbndv59inMavkx2PqcRKQrwi6+fUQ6N4wMRS59S6AmS8gC/Na0L6ef+Dbk6DdW2
         B4LdS4Macrq3FBUBCX2uO3LDnCQ1j3aqmb6QWEElCZloHJzpeQ1wcvTta2KJ0JW8ume3
         4TxB5lTqhPN1GIDHH6k+VAT0C+AoUThQJlu8pdE1oxXE9p/xfuGmdNMFxhCb3QiVVbf+
         ecSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=FCvwh+9vlgBsdnOhPJAO3ptdoEW9AZ1rxrD5XKJ7pwc=;
        b=m6BLFki65vdxEIjWYmvlKTi+qatD9YbJfSYgZcD5NNo01Ol/R/IHizqLvFLoRWQpla
         uuhDytXqatwmBPrBG1wlyQd0HEZNPFkOY1zOoiqY9ldYtpyMHxgkr1K14Q5YVpl+GrgR
         Y+DcLC5um/5McZV+ddlEAehctbGAsjhzHHtMIJ5CQex3FZdhYXD0CC7KUBjpmoL2WelN
         cn3Ingb8l3tk0dL2ISaxzDfrn6x1m1fSCSvBhefLPbPlwIcssy0xDYeaejiQkQ4yU/Jj
         xXo3pk4smM09YCuTP5kxfWYYjc200AwztlzzKCsOzYKOqooxpMzxSca3DAHA2oSaLS2b
         jNLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gPeIctvv;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id h23si28794ede.4.2017.10.24.08.42.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 08:42:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gPeIctvv;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-wm0-x243.google.com with SMTP id u138so17193677wmu.4
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 08:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FCvwh+9vlgBsdnOhPJAO3ptdoEW9AZ1rxrD5XKJ7pwc=;
        b=gPeIctvv/5xy7DRHJ5/UpwuDtf6TDKp84yelMv4pX1oXdeSmpiZ7xRjy6mg/aiTSpD
         3YuZ4h6ZLgSp2HqT/LK3c/slOZmaTRhtFYZlCKqpPaFwQNT1N/OHOVTgoSja0sIhFgcF
         niB1RcGVHmCP6fZXyzpL5IfAIFNg+CTo05y2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FCvwh+9vlgBsdnOhPJAO3ptdoEW9AZ1rxrD5XKJ7pwc=;
        b=e/rr3vsGwjeGpdGK/DuAX4/17c7EJBjfZ2pkUEGMcNlk2hCpNpQwTtJBfXCSFwAOHd
         eXoSvgrkCmCgxc7oHglSq89K40tlhl/m1Z5iQNHqc2Pbi46kyZCweZTex9SecnccYEe9
         +UtWkJc4t+BbEcWwmiRAEzaH9iiTOGP7+F9aWrShFOpy6SA7aXE/MYbFu9A33PhSNpsf
         QgkfWBKQhfpCOSGshdOyM3fDXuPSZXEnWzLyx0tl8UJFzn98qNu0qfSDTX/5jc/PGDJM
         Cw8Ezg8nQGzmYt9K2XS64Jf7VlpOdCwRygFdHt5NqZlb9iSCAaKj8/DCBkf9JmEtwyOe
         IBcw==
X-Gm-Message-State: AMCzsaUwdOLQCnCwcUAQ+ilOTYKDxPa1FkhGRBSIOdhqMn4SGU3C39y6
	7SST3JpB4ozCDnczuzg1tjI0fXwhC+U=
X-Received: by 10.28.6.6 with SMTP id 6mr8885691wmg.114.1508859723797;
        Tue, 24 Oct 2017 08:42:03 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([62.168.35.106])
        by smtp.gmail.com with ESMTPSA id o11sm665511wrg.5.2017.10.24.08.42.02
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 08:42:03 -0700 (PDT)
Date: Tue, 24 Oct 2017 11:42:02 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: Re: [Outreachy kernel] [PATCH v14 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
Message-ID: <20171024154202.5h63j3j3rvbadolo@art_vandelay>
References: <cover.1508586429.git.meghana.madhyastha@gmail.com>
 <678c3adb07b729acf6e80119ab9adec01d89842f.1508586429.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <678c3adb07b729acf6e80119ab9adec01d89842f.1508586429.git.meghana.madhyastha@gmail.com>
User-Agent: NeoMutt/20170306-97-7656f1-dirty (1.8.0)

On Sat, Oct 21, 2017 at 05:27:33PM +0530, Meghana Madhyastha wrote:
> Rename tinydrm_of_find_backlight to of_find_backlight and move
> it to linux/backlight.c so that it can be used by other drivers.
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v14:
>  -s/backlight_get/of_find_backlight/
> 
>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 --------------------------
>  drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>  drivers/video/backlight/backlight.c            | 37 ++++++++++++++++++++++++
>  include/drm/tinydrm/tinydrm-helpers.h          |  2 --
>  include/linux/backlight.h                      | 19 ++++++++++++
>  5 files changed, 58 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> index a42dee6..cb1a01a 100644
> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> @@ -236,46 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
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
>  #if IS_ENABLED(CONFIG_SPI)
>  
>  /**
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index 7fd2691..53ab5a0 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -12,6 +12,7 @@
>  #include <drm/tinydrm/ili9341.h>
>  #include <drm/tinydrm/mipi-dbi.h>
>  #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <linux/backlight.h>
>  #include <linux/delay.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/module.h>
> @@ -188,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>  	if (IS_ERR(mipi->regulator))
>  		return PTR_ERR(mipi->regulator);
>  
> -	mipi->backlight = tinydrm_of_find_backlight(dev);
> +	mipi->backlight = of_find_backlight(dev);

Sorry for the follow-up spam, but are you missing the put_device somewhere? The
next patch uses devm_of_find_backlight. So AFAICT you're either leaking a reference
here, or you're closing an additional reference in the next patch.

Sean

>  	if (IS_ERR(mipi->backlight))
>  		return PTR_ERR(mipi->backlight);
>  
> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> index 8049e76..76d46c3 100644
> --- a/drivers/video/backlight/backlight.c
> +++ b/drivers/video/backlight/backlight.c
> @@ -580,6 +580,43 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
>  EXPORT_SYMBOL(of_find_backlight_by_node);
>  #endif
>  
> +/**
> + * of_find_backlight - Get backlight device
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
> +struct backlight_device *of_find_backlight(struct device *dev)
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
> +EXPORT_SYMBOL(of_find_backlight);
> +
>  static void __exit backlight_class_exit(void)
>  {
>  	class_destroy(backlight_class);
> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> index f54fae0..0a4ddbc 100644
> --- a/include/drm/tinydrm/tinydrm-helpers.h
> +++ b/include/drm/tinydrm/tinydrm-helpers.h
> @@ -46,8 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>  void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>  			       struct drm_clip_rect *clip);
>  
> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> -
>  size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
>  bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
>  int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index b88fabb..f98b684 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -159,6 +159,16 @@ static inline int backlight_disable(struct backlight_device *bd)
>  	return backlight_update_status(bd);
>  }
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
>  extern struct backlight_device *backlight_device_register(const char *name,
>  	struct device *dev, void *devdata, const struct backlight_ops *ops,
>  	const struct backlight_properties *props);
> @@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *node)
>  }
>  #endif
>  
> +#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> +struct backlight_device *of_find_backlight(struct device *dev);
> +#else
> +static inline struct backlight_device *of_find_backlight(struct device *dev)
> +{
> +	return NULL;
> +}
> +#endif
> +
>  #endif
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/678c3adb07b729acf6e80119ab9adec01d89842f.1508586429.git.meghana.madhyastha%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Sean Paul, Software Engineer, Google / Chromium OS


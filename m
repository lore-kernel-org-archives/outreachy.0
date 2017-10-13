X-GM-THRID: 6475592721521180672
X-Received: by 10.202.95.7 with SMTP id t7mr1138246oib.16.1507926359741;
        Fri, 13 Oct 2017 13:25:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.69 with SMTP id m63ls2489542otc.9.gmail; Fri, 13 Oct
 2017 13:25:58 -0700 (PDT)
X-Received: by 10.202.235.68 with SMTP id j65mr1247433oih.24.1507926358919;
        Fri, 13 Oct 2017 13:25:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507926358; cv=none;
        d=google.com; s=arc-20160816;
        b=EtcNHRoyAB1xRKTbq9gY7Tj/2TBhRawAD17i8XfNFU7iktOSp4p3Fvk2CgbvFOe5/P
         mkDcVrbvtVDErMamTu1HoDqyTF004WH0NJxOuigVyWlsh2r04lnpH3VVhatfaLnyn4qP
         gQ8Pu6E07IcQuHnMwiWE5xTf3GbhFEeWsdPL/sBFXvefCUtKirzpI4AxEsozAfc/Xk3d
         8QvJ/nOZj6+fbjnRjOkfTAAMgJGNlyWDpaQJaVl9+HW9Y1POByRsBnH1+lOepZ6jDH0N
         jkDWz9R5t3IZI1DBg/eL3ynKAQGPFAJGxq1tRvvkBNVkkaYit56EMxwY2VFHcVCo6ihA
         3WJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=Ig6E6tmWFIV5I/5tpgtZ8zBcsEiI90pF3rtSSweJKtI=;
        b=cBjx8JBemLXGFhjs37VLbzHi0FeLO8yySAvQUcixlATqIgqqbbFRdPhoX72wHrSsYs
         AOQjgVMTavRwvZ+VjoPWU9P4I4dtyy0p3K90XXpyZymVhL7btEjt4GRj9czVI9KsiiM2
         zxXQkf6909bLXVpjcfSiSS8+kTFMnTAmWdeLdZatH9njCTrP5a99t8SlJ6Y84Qzty5yq
         BWeW7/RymO/uAXUZ1nFO2/c0FqGnyiQ3GK1ozN58sAJXcjcWm9mNfspQNmQDvQ4gKgbP
         qBfuI8UynA4Pth7KD1523ZJ1Wi7PvF1WFCU8siEmMKPTiBoSECOjilEIkrT5Ni6q41j9
         4JFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NbsUmbrX;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22d as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x22d.google.com (mail-qt0-x22d.google.com. [2607:f8b0:400d:c0d::22d])
        by gmr-mx.google.com with ESMTPS id b194si93082oii.0.2017.10.13.13.25.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 13:25:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22d as permitted sender) client-ip=2607:f8b0:400d:c0d::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NbsUmbrX;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22d as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x22d.google.com with SMTP id z19so21781158qtg.11
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 13:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ig6E6tmWFIV5I/5tpgtZ8zBcsEiI90pF3rtSSweJKtI=;
        b=NbsUmbrXzoldUlUjjfP7iU9tcOA3oDmo/NldY2aM5ZYTV4XhTzXJnNkdt0jn13KoeX
         sKpGlWstafdk2PVW+ryqLq+Vko3O7O7b0ku8UXfHx1nRZePKtQ0PzmH33oU//vMoLTrO
         isudVkLKrD+Y7EfjvRTLBUe7SAtrOhGaqA51A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ig6E6tmWFIV5I/5tpgtZ8zBcsEiI90pF3rtSSweJKtI=;
        b=ltXADx6Aik/FwaJ6k5gA1SfzoqPz3Frc1Qv5/22PGT5w5fx58/FFcvw5uFSaFW0IbX
         70XJNTMMQ+Wk/KqAdc3VHbSQU4muF5y5iSdgepE39icknpQRxSNEJ/HkPO1qNacd7zXU
         nHoHcmmmmbYky9e4R4DfKfAywLoFVVAmbxiIJZLJ0PG5BIqpX6QB/AG+Nb49JG/yFayO
         lOHuv3VUDgzp+ZBqoDnO1kflOF4TmkwOlU1Q4/uZx9zLM6aYexpAag6NXEFSTqeZBXYY
         hsRnaaN88Y93q8k4l8AO5SUrItaEr+3p0YEhZtDAazHAXRlAW1Vpppjw1JYoFMNhaYBl
         Vn3w==
X-Gm-Message-State: AMCzsaXXJTwLee0HNXnr3+OmBoJd2hUOVG3nsgxFWkdMoSWHQJr5vJu3
	nSXEn8YlmgWgjf3tyIvp5WK/aQ==
X-Google-Smtp-Source: AOwi7QAEoA43vTR1NTRNC5Wycii1NLiaw7gug1kO3QJ5mU22u6WFbnXemsadZw1fplIr/D1mNxwvtA==
X-Received: by 10.129.108.5 with SMTP id h5mr1689683ywc.365.1507926358525;
        Fri, 13 Oct 2017 13:25:58 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:8:f586:7071:d44a:c2c4])
        by smtp.gmail.com with ESMTPSA id v38sm1402655ywh.36.2017.10.13.13.25.57
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 13 Oct 2017 13:25:58 -0700 (PDT)
Date: Fri, 13 Oct 2017 16:25:57 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: Re: [Outreachy kernel] [PATCH v13 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
Message-ID: <20171013202557.s7r2ec67sl646vtj@art_vandelay>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
User-Agent: NeoMutt/20170306-97-7656f1-dirty (1.8.0)

On Fri, Oct 13, 2017 at 04:11:43PM +0530, Meghana Madhyastha wrote:
> Rename tinydrm_of_find_backlight to backlight_get and move it
> to linux/backlight.c so that it can be used by other drivers.

[apologies if this has been brought up in previous versions, I haven't been
following closely]

I don't think "backlight_get" is a good name for this function. How about
of_find_backlight_by_name (since there's already of_find_backlight_by_node)?

> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v13:
>  -Add backlight_put to backlight.h in this patch
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
> index 7fd2691..a932185 100644
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
> +	mipi->backlight = backlight_get(dev);
>  	if (IS_ERR(mipi->backlight))
>  		return PTR_ERR(mipi->backlight);
>  
> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> index 8049e76..c4e94d0 100644
> --- a/drivers/video/backlight/backlight.c
> +++ b/drivers/video/backlight/backlight.c
> @@ -580,6 +580,43 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
>  EXPORT_SYMBOL(of_find_backlight_by_node);
>  #endif
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

I'm not really used to seeing IS_ENABLED(CONFIG_BLAH) inline. The common
patterns seems to be wrapping the actual implementation in #if
IS_ENABLED(CONFIG_BLAH) and then sticking a stub implementation in the #else.

I see below that you already have a stub if backlight is not enabled, so expand
that #if to include CONFIG_OF as well.

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
> index b88fabb..987a6d7 100644
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

I'm not convinced this function needs to exist.

> +
>  extern struct backlight_device *backlight_device_register(const char *name,
>  	struct device *dev, void *devdata, const struct backlight_ops *ops,
>  	const struct backlight_properties *props);
> @@ -202,4 +212,13 @@ of_find_backlight_by_node(struct device_node *node)
>  }
>  #endif
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
>  #endif
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Sean Paul, Software Engineer, Google / Chromium OS


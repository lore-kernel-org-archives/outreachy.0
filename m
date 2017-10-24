X-GM-THRID: 6475592721521180672
X-Received: by 10.223.156.196 with SMTP id h4mr1425010wre.5.1508859515521;
        Tue, 24 Oct 2017 08:38:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.66.197 with SMTP id k66ls235457wmi.6.gmail; Tue, 24 Oct
 2017 08:38:33 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+TdJkjeVSbIa7jm8BUQFCagrzDGEtmmX3Iv53HJrId7HehUthHqrhN9UsAKwQyMPpcehnTz
X-Received: by 10.28.14.3 with SMTP id 3mr786592wmo.12.1508859513237;
        Tue, 24 Oct 2017 08:38:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508859513; cv=none;
        d=google.com; s=arc-20160816;
        b=SC4X35A6+zmC1Hy8rlehnonRrAvBIfEXqI72CsAwJd5BStXtWy7ySWzIiYQkGJJfjM
         0zLIGEjsvNn2Fcb6uwfilWHXP6pUgdpMeU3PS/aG0/GAOnSGB1g8b8i/LzYA+Oruy7j4
         qIkei7DmHoKYMFplVG8QvnvaixRt2BKhryGNwyjKYOOAiqlAZsUxiNYLeNAOQ4lfH5Is
         AFk79xxRS+GREXL+HURC8fnnrsmRZmXKzX5tAQr+jWtA2G7VbWCZzr8q3KUVSWslN0IE
         Z6RUJ6e2eRew3OqgKDFMgjNUkAcI7ubBuTwGDI3gcInjxS91sOGoDPR5wKPnFwxL8ABm
         m6zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=Pwol2RW3YtnZZqWQ6Y7rPPZ3R548AEK5sl84Y4JW2us=;
        b=qYPWvbtUs8yfGHv20YJmB+MfTyj8ZbO5LKmyn6TYnH6zlqe1vizNL8eASqWc8CJs6c
         wcSZzoPQFiVCsTcsOtnZAD14J4PVBWM9WO/2KXqz2J5xASccINOTsxGeT5fVk5xxSkuG
         gGpi3jicag1D7h7/NmOnyws+9dfoxAXy2+SaP148o+FKzgKIlIAm2L90pR6G7jr1D7yV
         Um+euwOTzTAy16DvfbKPVIxbF83migGe72cuiL11iX236bRs/jgf45ZGFcImLOGkd954
         KwIesbPNCGeV8F0UZJ/Inz1AdzfvP6L/6Qu02HxIyWkLrhZ4DDaTmE/cqsrvIUVc89Wt
         ljNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KDSrHbJo;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id 196si98215wmk.4.2017.10.24.08.38.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 08:38:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KDSrHbJo;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-wr0-x241.google.com with SMTP id y9so8904354wrb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 08:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Pwol2RW3YtnZZqWQ6Y7rPPZ3R548AEK5sl84Y4JW2us=;
        b=KDSrHbJoAg5saC44ULnFHTPCQfTVIvk1VZkQ+0uww1mQWYQsh9s1/kKCY0gbSh4UBQ
         qPP6gbZOyazaqdMXvA+CtObolfpTLs/9xzVT0HEGkJoKNDnhWDTe8uLE2lNaDPGFhIJG
         yCTiggzJK7kX+Cl0hs1NMkhWY6RrYCEU9lobg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Pwol2RW3YtnZZqWQ6Y7rPPZ3R548AEK5sl84Y4JW2us=;
        b=Gtk/K80iz45oYMxinYhY1spV/JBQyPqXAsh/zlp5V+qFMYgbg5sJ/xeCTLq9HwNb+1
         +zIwLiepClH1RLrPTkcOEmEbobIVKS+lVm06/Xe1heqGfzkTMO5iHsgf1/mO6K9sRGxY
         hlg3u0E5mSr5EwnjvLXkPa6akZoSuEANEHrL2fBrdtA0HH8Qa5mNBQf0Pf2x6LnKILxA
         rBPDeLiMkkee0ck1QJwXnv0oQmKJBrHKeJJLyvcZICxzgSdjUsbrUNhk/pBqqoh2YEyF
         9QQ6sK8HtgqwLW4Bg13cqJ9QdgLKflvLkEGvHqmO/cFz/StowlZpxSScaQ8BlGLjIgt2
         KXxg==
X-Gm-Message-State: AMCzsaXReGXJEwQU2Ojhgptug/t4WcEG5Iw0FM9BnKnoeaC4WWf8w+WZ
	SRH0af42mxgowUEPXeTj5Q9/xg==
X-Received: by 10.223.176.115 with SMTP id g48mr7434684wra.177.1508859512799;
        Tue, 24 Oct 2017 08:38:32 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([62.168.35.106])
        by smtp.gmail.com with ESMTPSA id w4sm682416wrc.17.2017.10.24.08.38.32
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 08:38:32 -0700 (PDT)
Date: Tue, 24 Oct 2017 11:38:31 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: Re: [Outreachy kernel] [PATCH v14 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
Message-ID: <20171024153831.jdbyct5ikxengnuz@art_vandelay>
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


As I mentioned in my last review, I don't think we need this function.

Sean

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


X-GM-THRID: 6475592721521180672
X-Received: by 10.200.25.194 with SMTP id s2mr1330224qtk.1.1507797146076;
        Thu, 12 Oct 2017 01:32:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.162.216 with SMTP id l207ls1653440qke.9.gmail; Thu, 12 Oct
 2017 01:32:24 -0700 (PDT)
X-Received: by 10.200.56.156 with SMTP id f28mr1313735qtc.15.1507797144630;
        Thu, 12 Oct 2017 01:32:24 -0700 (PDT)
Received: by 10.55.160.72 with SMTP id j69msqke;
        Thu, 12 Oct 2017 01:29:26 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAoD6y9StuxBWnuoy49URNI3Gt/XBAkE6W/+lHJxrc4KaFcKgLRz1463Qnd3sCjLH3oQymR
X-Received: by 10.28.8.71 with SMTP id 68mr136507wmi.24.1507796966080;
        Thu, 12 Oct 2017 01:29:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507796966; cv=none;
        d=google.com; s=arc-20160816;
        b=RE4MudF25GOu6sDOi3DPKQ29Oopaa6k9gER664fZbyn0newJDFHbQUXK7RUrElJbCO
         RRsRap+8eJNlNzpNuiHuxEs8HihmORtP7UIPsxQguj5fpYVLkBFDykzd8NhShrMCpKon
         ePYr8nXlxyawJ6BxRO25EEGvFqMrvFL4BeDALWuyelRJWB4OCHmQ26a0t+pfnImoj4LN
         C1L0i6afXV/qRe/n3aXQUxxY+djGzKa+jxHzaQBq/aTgf1sxKJ8Im2BfRS+Dzdo38gdm
         QQuKMWx6xwYX/WNO++Ogbs4AH63Ql54+muJKHvoyri0LITPE2GmFeF5kLnXtSFZGbvfx
         nL1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=9QM9KxV2GtV5fW7SGovzgnqmfUFQ4xylkM0kY2K1nIc=;
        b=vb6Pdbdhcp3b9lui7wP+0JI/fue3RY5vJk+7bbvOfaw+Cy8QdQ2Yzq0tFTxA00rlYi
         GE34Bf6BLJXX1H/iMHwyQP524m8zlFyGYZ77CcyI2ViyORXApELRaIhVgmKQm3OTN7GU
         tLos3lUPVAa+9VAMJJ4zdHoBseB8Mrj6CI8pKZaWUafLaMxBHjb0LWHrUgnUUGuddSHc
         iloyjU4dAJz1nLR/XJa/3bZejApcn+UzWQe6GiYy4DXVR2vCw9QqP8n0v5XAcluGqKOC
         YKBNg4lFwKPHv8m94q8O0CNMNOH4vE7z7++9egW4MAUTytKazX0NgR8zxDcnLCzpKkJt
         1PYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of eric.engestrom@imgtec.com designates 195.59.15.196 as permitted sender) smtp.mailfrom=Eric.Engestrom@imgtec.com
Return-Path: <Eric.Engestrom@imgtec.com>
Received: from mailapp01.imgtec.com (mailapp01.imgtec.com. [195.59.15.196])
        by gmr-mx.google.com with ESMTP id e13si101452wrg.0.2017.10.12.01.29.26
        for <outreachy-kernel@googlegroups.com>;
        Thu, 12 Oct 2017 01:29:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of eric.engestrom@imgtec.com designates 195.59.15.196 as permitted sender) client-ip=195.59.15.196;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eric.engestrom@imgtec.com designates 195.59.15.196 as permitted sender) smtp.mailfrom=Eric.Engestrom@imgtec.com
Received: from HHMAIL01.hh.imgtec.org (unknown [10.100.10.19])
	by Forcepoint Email with ESMTPS id C640B1E2F211B;
	Thu, 12 Oct 2017 09:29:21 +0100 (IST)
Received: from imgtec.com (10.60.4.28) by HHMAIL01.hh.imgtec.org
 (10.100.10.21) with Microsoft SMTP Server (TLS) id 14.3.361.1; Thu, 12 Oct
 2017 09:29:24 +0100
Date: Thu, 12 Oct 2017 09:29:24 +0100
From: Eric Engestrom <eric.engestrom@imgtec.com>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
CC: <daniel@ffwll.ch>, <noralf@tronnes.org>,
	<outreachy-kernel@googlegroups.com>, <dri-devel@lists.freedesktop.org>,
	<daniel.thompson@linaro.org>, <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v9 1/3] drm/tinydrm: Move helper functions from
 tinydrm-helpers to backlight.h
Message-ID: <20171012082924.2u6qvwebcjb27aud@imgtec.com>
References: <cover.1507788241.git.meghana.madhyastha@gmail.com>
 <539cf63484dd0f6807ff0647af9d5d28bf5f3db7.1507788241.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <539cf63484dd0f6807ff0647af9d5d28bf5f3db7.1507788241.git.meghana.madhyastha@gmail.com>
User-Agent: NeoMutt/20170912 (1.9.0)
X-Originating-IP: [10.60.4.28]

On Thursday, 2017-10-12 06:09:39 +0000, Meghana Madhyastha wrote:
> Move the helper functions enable_backlight and disable_backlight
> from tinydrm-helpers.c to backlight.h as static inline functions so
> that they can be used by other drivers.
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v9:
> -None
> 
>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 55 --------------------------
>  drivers/gpu/drm/tinydrm/mipi-dbi.c             |  3 +-
>  include/drm/tinydrm/tinydrm-helpers.h          |  2 -
>  include/linux/backlight.h                      | 30 ++++++++++++++
>  4 files changed, 32 insertions(+), 58 deletions(-)
> 
> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> index bd6cce0..a42dee6 100644
> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> @@ -276,61 +276,6 @@ struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
>  }
>  EXPORT_SYMBOL(tinydrm_of_find_backlight);
>  
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
> -
>  #if IS_ENABLED(CONFIG_SPI)
>  
>  /**
> diff --git a/drivers/gpu/drm/tinydrm/mipi-dbi.c b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> index 2caeabc..46f0e80 100644
> --- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
> +++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> @@ -11,6 +11,7 @@
>  
>  #include <drm/tinydrm/mipi-dbi.h>
>  #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <linux/backlight.h>
>  #include <linux/debugfs.h>
>  #include <linux/dma-buf.h>
>  #include <linux/gpio/consumer.h>
> @@ -279,7 +280,7 @@ void mipi_dbi_pipe_enable(struct drm_simple_display_pipe *pipe,
>  	if (fb)
>  		fb->funcs->dirty(fb, NULL, 0, 0, NULL, 0);
>  
> -	tinydrm_enable_backlight(mipi->backlight);
> +	enable_backlight(mipi->backlight);

Sorry if I'm missing something, but this should be:

	backlight_enable(mipi->backlight);

right?

>  }
>  EXPORT_SYMBOL(mipi_dbi_pipe_enable);
>  
> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> index d554ded..f54fae0 100644
> --- a/include/drm/tinydrm/tinydrm-helpers.h
> +++ b/include/drm/tinydrm/tinydrm-helpers.h
> @@ -47,8 +47,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>  			       struct drm_clip_rect *clip);
>  
>  struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> -int tinydrm_enable_backlight(struct backlight_device *backlight);
> -int tinydrm_disable_backlight(struct backlight_device *backlight);
>  
>  size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
>  bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 5f2fd61..355e9f5 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -153,6 +153,36 @@ static inline void * bl_get_data(struct backlight_device *bl_dev)
>  	return dev_get_drvdata(&bl_dev->dev);
>  }
>  
> +/**
> + * backlight_enable - Enable backlight
> + * @bd: the backlight device to enable
> + */
> +static inline int backlight_enable(struct backlight_device *bd)
> +{
> +	if (!bd)
> +		return 0;
> +
> +	bd->props.power = FB_BLANK_UNBLANK;
> +	bd->props.state &= ~BL_CORE_FBBLANK;
> +
> +	return backlight_update_status(bd);
> +}
> +
> +/**
> + * backlight_disable - Disable backlight
> + * @bd: the backlight device to disable
> + */
> +static inline int backlight_disable(struct backlight_device *bd)
> +{
> +	if (!bd)
> +		return 0;
> +
> +	bd->props.power = FB_BLANK_POWERDOWN;
> +	bd->props.state |= BL_CORE_FBBLANK;
> +
> +	return backlight_update_status(bd);
> +}
> +
>  struct generic_bl_info {
>  	const char *name;
>  	int max_intensity;
> -- 
> 2.7.4
> 


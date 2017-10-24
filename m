X-GM-THRID: 6475592721521180672
X-Received: by 10.46.46.11 with SMTP id u11mr565494lju.10.1508859426815;
        Tue, 24 Oct 2017 08:37:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.43.143 with SMTP id r137ls12499lfr.7.gmail; Tue, 24 Oct
 2017 08:37:06 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+Q+6wUab04UeFexdPaWVinWr7ENIPIkTIU7iS5RAFAR9DdmbxdQ0aOSz3T6gZUkzh4eciCq
X-Received: by 10.25.79.8 with SMTP id d8mr470978lfb.5.1508859426044;
        Tue, 24 Oct 2017 08:37:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508859426; cv=none;
        d=google.com; s=arc-20160816;
        b=sT/6huSXzRnn1AleSwJq0rXGWt39X+bolEG0UOkZjrWp0UiXhJNlaMvhi5ZVtNzIkn
         foSe/SF/RnNY5aXrCebVxJFGcoiTPv9hMaDPuGbuoqBN1OitAKmHiktPS9ox27/mI3cZ
         viT1aDtp2zZQY6vacDLoMdhtg9VlzDNLeCvgydfFJb4znGAYwWDhk3U0P/7Me2AEcFZn
         yyBzlIPRU2FV4GYMa6ri7JvR86iIuaNqFs0pTHoxySQgsnh/tz8ew+cZyOZl7MAhn/5W
         KV+Y3/eZumb4VaRiyuU2whFdree0/MShzlHQtK9IK/K+wZ+KckIjDMY0GcGoGvQ9myKx
         hx5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=DCRJajV9TqnDMGpAy7tKkFGm+ULnb4zdQxZ5teiOwXQ=;
        b=SxNQ5EyyKJcsr/GznWURBd0ILw0TRPt5N8a2fZwauja+WDKH3oQ0mDzPdbeUFQyYDL
         5fD5GbWEi2DPx3TNUTEuwPoTXKcFiNEf3wfqhcKBkSuwyY5PM3r7Plnsq05wYtQpjhfJ
         hTa/UTfkf9rUwlZD327otd4Dfe/8Pnwfic+bOtNxkabvuDLOlfb+PSJ9S+kzNLcqkroP
         9U3N1zSVsi9WWaY4GGCJiC0W0NLsCtYLlfZzzijZxf/fG7ZaNjxdTpjJKEjP+VbqL0gS
         yYJsoNr6rnSYZ6tMJxLEx3AjuHR5f0sOiJqBpEgJpV50vgcgYyeoyEbZA3P4FHpJVACJ
         q0mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Zlut0hGC;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id g190si17466lfg.4.2017.10.24.08.37.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 08:37:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Zlut0hGC;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-wm0-x232.google.com with SMTP id m72so12731039wmc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 08:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DCRJajV9TqnDMGpAy7tKkFGm+ULnb4zdQxZ5teiOwXQ=;
        b=Zlut0hGCYpy632511Birb9zl7mx3C9TrbtVW02GU9YbEEHaKSQlu5HJIkYqL1FP7Gv
         SYpcXKiNcY+U8MVIw8xClFu2uhSTFaHZRckSfGebAmPE4t0JABJV2/UcaM7Ih4V6oIFM
         SS12jRY7FahFzth9RQx8z53IrcJpwG/gSLca0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DCRJajV9TqnDMGpAy7tKkFGm+ULnb4zdQxZ5teiOwXQ=;
        b=W/41cq6/3IGWc8uoFZYJQ9jA7tYx3yX097hOFtJnzM7nT09s6te3m9bIOvrfya3uux
         m9fkEK3GEj+YrcXfXzcS3LS6+tmg3yypGDFWrWoTXa7id8qds7IJEHlpMFwX8FIZW8Cy
         mIaEVGVQp5KuFs3gAtItxUUeGPAfEwFaNRfGTStNJ0pzqz8hFiF3AUoCu/FcdeiOzMiw
         drh3X5e0dDep93ZqEPB/m75gTwyKhJwubvoty1lnQQIVd/qZCB4nqnGSY0sGDPG2XRpS
         u9X/VUSWmdcC9+HmIbkRCnYlMIMW7eM4/w85K8upSMgs1nYuiyHquOvHK3bk7FEV47un
         aYwQ==
X-Gm-Message-State: AMCzsaUl9PJtK07BJKZSH63Cpg0yuU6Ffb1jteD706EC4AcVllin4Bra
	2cWfZmoo540kwyNsZmTmtpwxfw==
X-Received: by 10.28.166.143 with SMTP id p137mr9229258wme.149.1508859425611;
        Tue, 24 Oct 2017 08:37:05 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([62.168.35.106])
        by smtp.gmail.com with ESMTPSA id w18sm117885wra.30.2017.10.24.08.37.04
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 08:37:04 -0700 (PDT)
Date: Tue, 24 Oct 2017 11:37:03 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: Re: [Outreachy kernel] [PATCH v14 1/3] drm/tinydrm: Move helper
 functions from tinydrm-helpers to backlight.h
Message-ID: <20171024153703.yhcsa4uay3e4scl2@art_vandelay>
References: <cover.1508586429.git.meghana.madhyastha@gmail.com>
 <203e216d74645b795687a29786c97209d1785167.1508586429.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <203e216d74645b795687a29786c97209d1785167.1508586429.git.meghana.madhyastha@gmail.com>
User-Agent: NeoMutt/20170306-97-7656f1-dirty (1.8.0)

On Sat, Oct 21, 2017 at 05:26:33PM +0530, Meghana Madhyastha wrote:
> Move the helper functions enable_backlight and disable_backlight
> from tinydrm-helpers.c to backlight.h as static inline functions so
> that they can be used by other drivers.
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
> Changes in v14:
>  - None
> 
>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 55 --------------------------
>  drivers/gpu/drm/tinydrm/mipi-dbi.c             |  5 ++-
>  include/drm/tinydrm/tinydrm-helpers.h          |  2 -
>  include/linux/backlight.h                      | 30 ++++++++++++++
>  4 files changed, 33 insertions(+), 59 deletions(-)
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
> index d43e992..2561549 100644
> --- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
> +++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> @@ -12,6 +12,7 @@
>  #include <drm/drm_gem_framebuffer_helper.h>
>  #include <drm/tinydrm/mipi-dbi.h>
>  #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <linux/backlight.h>
>  #include <linux/debugfs.h>
>  #include <linux/dma-buf.h>
>  #include <linux/gpio/consumer.h>
> @@ -280,7 +281,7 @@ void mipi_dbi_pipe_enable(struct drm_simple_display_pipe *pipe,
>  	if (fb)
>  		fb->funcs->dirty(fb, NULL, 0, 0, NULL, 0);
>  
> -	tinydrm_enable_backlight(mipi->backlight);
> +	backlight_enable(mipi->backlight);
>  }
>  EXPORT_SYMBOL(mipi_dbi_pipe_enable);
>  
> @@ -319,7 +320,7 @@ void mipi_dbi_pipe_disable(struct drm_simple_display_pipe *pipe)
>  	mipi->enabled = false;
>  
>  	if (mipi->backlight)
> -		tinydrm_disable_backlight(mipi->backlight);
> +		backlight_disable(mipi->backlight);
>  	else
>  		mipi_dbi_blank(mipi);
>  }
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
> index 5f2fd61..b88fabb 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -129,6 +129,36 @@ static inline int backlight_update_status(struct backlight_device *bd)
>  	return ret;
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
>  extern struct backlight_device *backlight_device_register(const char *name,
>  	struct device *dev, void *devdata, const struct backlight_ops *ops,
>  	const struct backlight_properties *props);
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/203e216d74645b795687a29786c97209d1785167.1508586429.git.meghana.madhyastha%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Sean Paul, Software Engineer, Google / Chromium OS


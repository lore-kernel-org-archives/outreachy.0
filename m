X-GM-THRID: 6470705412124442624
X-Received: by 10.223.155.203 with SMTP id e11mr161318wrc.3.1506607721714;
        Thu, 28 Sep 2017 07:08:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.141.225 with SMTP id o88ls1189925wrb.3.gmail; Thu, 28 Sep
 2017 07:08:40 -0700 (PDT)
X-Received: by 10.28.236.83 with SMTP id k80mr186357wmh.29.1506607720884;
        Thu, 28 Sep 2017 07:08:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506607720; cv=none;
        d=google.com; s=arc-20160816;
        b=hnMd2KxeGWn2qKW5mApaxCyQzZ8DF7BMO64i8rf5QaQ14tXNNhn/O0UYQGWb8/X/OM
         67comnwW1H9vLHWiv8zA125MDCIltHgWROXKYZWOS0Kh+9UDhcQgjtcyQbaW7QI6jVye
         CSHJrRlKY0q8v186uXwOjh/P44wD9n4fhNBp9CfQj8KRJibRnvdpxRqpBUsWfK8QcUf6
         u4EI2zX9TOIjCbzqP3g9Q64pPRGkEaoOXh6HaoFSA8XBgvp+qWz1VYe6NM8CDrthjUBX
         nKkQh0VL76wPOXDl53FvRrGwB14gOQv5KJr/qrm9thhnPpqNENUeBwWI9LTsyQhYel3S
         9LEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=dXUeFdIjRyMbyoleeYd3ZfM8ysFG/6udloL5cH3Yihk=;
        b=ck7gx3Sz1L/o1wudLCJ79K/9HF3xHauUoO5Y/Nny+LqNI2JtkKS0l/IcCoquj1gWAV
         mQzd66KazO9O2GHuSXJG3OcHp+XZX5rOjzOZOWmMRde0k79f5r08d7wQe9xA2BfGAfS+
         icOtts/dfVqKD7MxLl69P77l89+w9y+AEsWOnjTq+Mx/JVYjUSghdar4JOhR/eGoc6jv
         G+7bFJr3VM3d0NIaAvrzKWinTMFMzaiVKw0xhLLCH5kB5LfGZdq0GpyHlQ0W7P2Ba9mC
         83E0qK8aYOwSRjzA/7djXPanJkeNyD4V4E0HYHz48LBoibvC9w62WiAaMcUMlRlb4Sg6
         tFsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=JGXotIdn;
       spf=neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id 191si105348wmn.2.2017.09.28.07.08.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 07:08:40 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=JGXotIdn;
       spf=neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x244.google.com with SMTP id i131so1423274wma.1
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 07:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dXUeFdIjRyMbyoleeYd3ZfM8ysFG/6udloL5cH3Yihk=;
        b=JGXotIdnby8SoOjuNyh49dBX23xQUYohLM0i/DzRLm0+QZbWNLwsH71l7mv/rX+H7V
         HywA86kSVuf/k3gV0Xz2sOZ1xoPzzvc9S1Esw2JBJcKp9D1ov98jO6bfkPnDMorWLD6L
         LWQgeCIiGjaMf8VJgfv2WSnsxh4p6MHwFUYhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=dXUeFdIjRyMbyoleeYd3ZfM8ysFG/6udloL5cH3Yihk=;
        b=X29fxkQff/iOa6IDk+nDYUS+xNJHW3vy0ynHjgqfAXZCUhVGYB32FdCDzXukOKRDle
         jIYPQiub1muuuV6RGqXW49qvDLLxVRlyrPvSjMMRBblENJbTEN2C2AhKZRLf/gnZzDT+
         60CNwPxJOlHX82aMfr/5wxwCcM67jTnLtgN/J8BPlhqCOvWLJRvOArSLoe2Yyu2mC4ek
         i4dR1b536yi0XguQiHu0jGYA+70h3sNs38lZeCiP0ZOMhgorktGjIloaDZxRLRRmVjFJ
         ffZfb0DoLPaKCq+7M4Ecq11YeVSlCam6fOsNRtvDv+DTERl582ylc2ta8pDNAlpHqIqp
         L0bQ==
X-Gm-Message-State: AHPjjUi3H4W0GLWAQMCh/pobI/Y+JQqJWa5Ujn5sH4mRs+Y4CYNWj53z
	MdbtQAl/iwZwNFkjdw7TB8O5yxXW
X-Google-Smtp-Source: AOwi7QBSbecU7wK56Mtcz6omxYqeXYogmA20vC6KTIyLOt7wclP19p6YBieKtCM2yYAE4DxXk1h41A==
X-Received: by 10.80.212.150 with SMTP id s22mr5980511edi.286.1506607720064;
        Thu, 28 Sep 2017 07:08:40 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id m21sm1549299edb.88.2017.09.28.07.08.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Sep 2017 07:08:39 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 28 Sep 2017 16:08:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local>
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Thu, Sep 28, 2017 at 02:44:34PM +0530, Meghana Madhyastha wrote:
> Rename tinydrm_of_find_backlight to drm_of_find_backlight
> and move it into drm_of.c from tinydrm-helpers.c. This is
> because other drivers in the drm subsystem might need to call
> this function. In that case and otherwise, it is better from
> an organizational point of view to move it into drm_of.c along
> with the other _of.c functions.
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v3:
> -Change it back to a single patch from two patches in v2
> 
>  drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
>  drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>  include/drm/drm_of.h                           |  1 +
>  include/drm/tinydrm/tinydrm-helpers.h          |  1 -
>  5 files changed, 47 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index 8dafbdf..d878d3a 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -1,6 +1,7 @@
>  #include <linux/component.h>
>  #include <linux/export.h>
>  #include <linux/list.h>
> +#include <linux/backlight.h>
>  #include <linux/of_graph.h>
>  #include <drm/drmP.h>
>  #include <drm/drm_bridge.h>
> @@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>  	return ret;
>  }
>  EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
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
>  EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>  
>  /**
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
>   * tinydrm_enable_backlight - Enable backlight helper
>   * @backlight: Backlight device
>   *
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index 7e5bb7d..5e3d635 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -12,6 +12,7 @@
>  #include <drm/tinydrm/ili9341.h>
>  #include <drm/tinydrm/mipi-dbi.h>
>  #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <drm/drm_of.h>
>  #include <linux/delay.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/module.h>
> @@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>  	if (IS_ERR(mipi->regulator))
>  		return PTR_ERR(mipi->regulator);
>  
> -	mipi->backlight = tinydrm_of_find_backlight(dev);
> +	mipi->backlight = drm_of_find_backlight(dev);
>  	if (IS_ERR(mipi->backlight))
>  		return PTR_ERR(mipi->backlight);
>  
> diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> index 104dd51..e8fba5b 100644
> --- a/include/drm/drm_of.h
> +++ b/include/drm/drm_of.h
> @@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>  				int port, int endpoint,
>  				struct drm_panel **panel,
>  				struct drm_bridge **bridge);
> +struct backlight_device *drm_of_find_backlight(struct device *dev);
>  #else
>  static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
>  						  struct device_node *port)

Minor detail I missed: The dummy version for the #else here is missing.
Not a problem for tinydrm, but might be an issue for a driver where
CONFIG_OF is optional.

Otherwise I think this patch looks good.
-Daniel

> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> index d554ded..e40ef2d 100644
> --- a/include/drm/tinydrm/tinydrm-helpers.h
> +++ b/include/drm/tinydrm/tinydrm-helpers.h
> @@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>  void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>  			       struct drm_clip_rect *clip);
>  
> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
>  int tinydrm_enable_backlight(struct backlight_device *backlight);
>  int tinydrm_disable_backlight(struct backlight_device *backlight);
>  
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


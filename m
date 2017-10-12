X-GM-THRID: 6475592721521180672
X-Received: by 10.28.142.2 with SMTP id q2mr314286wmd.32.1507826995486;
        Thu, 12 Oct 2017 09:49:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.38.134 with SMTP id m128ls954388wmm.4.gmail; Thu, 12 Oct
 2017 09:49:54 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAe1p/zLq1IFmh8yfWEexv/OCsYkkGsyemL50W09qT9UDhi+pEYFEFnLLNsD6Ip6tegKGwW
X-Received: by 10.28.107.65 with SMTP id g62mr287504wmc.32.1507826994447;
        Thu, 12 Oct 2017 09:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507826994; cv=none;
        d=google.com; s=arc-20160816;
        b=HSCmw25ILA+DJHV4VrYNuld35vzWgi7NacbUfSxbDHZHBIA6YMmGQceKWZKP+DDQTF
         LScYUted636r5pWAn6Pjnh+kFlsBdw7W8aGqjmia3rbayK9ZegbzQAfOXakZzrhF1Uyh
         xqAw0uFun+mO2FRP273jSfKkqkdfFGJiFcGr8V55WQ6433XCM7JgCCCMZUDGvJcRVAGY
         CkFDo7YaoQ4NXQc9nPCj1N0cTmT6kM2+qvuMFQIswFVP6odrM/5EJIrGLSs9A5DMDGgc
         pqd4fDdgaVq3BvQieNUOqgFyzyalf4ATtanpzs22tzo2k77d2zumajzAHJJ9z9EPXye5
         IKAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=19TwOfrOFQR8RoyitsAmPAjAWWnl2WCwFsCe5ExIncY=;
        b=tI+c0D/ViqLUAWZTkpRGaqX+DEClpfoS2V9YrtuVwnLaLzkTfBqdDfzK9GmuzlyNBn
         TOwUpHQfbsxKISd/owmk6/A7gU6mvfY9136HboY1DaEAvaIFI38SNb5pRqMVTTfsKh5u
         fppczuHfdtg/E7Hw7PDiFDx7pe6gI2UCKAuVCVmIE6U37kv/N8APUC6alubbfR/0l/bp
         3sWrgW3YBHaZwC24UDF8kYVY/Ux3ez3eLhhFiK+dZy4Jm2V41hdqrDeNTcc8B2BDmvhs
         AKCTi1vqXCRru3kgDvWZ2hctp4btIRXpb+pJ8iHK7cpReCcMYbM16nko+NXsRFz/i1ed
         cLFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id m62si26188wmi.1.2017.10.12.09.49.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 09:49:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:55239 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e2ggD-000388-3m; Thu, 12 Oct 2017 18:49:53 +0200
Subject: Re: [PATCH v12 2/3] drm/tinydrm: Move tinydrm_of_find_backlight to
 backlight.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
 daniel.thompson@linaro.org, jani.nikula@linux.intel.com
References: <8cc4a00363779056282ebe4eb75b1049b36e0c21.1507823238.git.meghana.madhyastha@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <878e93fb-c18d-9817-ad2f-e573c24bbe09@tronnes.org>
Date: Thu, 12 Oct 2017 18:49:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <8cc4a00363779056282ebe4eb75b1049b36e0c21.1507823238.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 12.10.2017 17.50, skrev Meghana Madhyastha:
> Rename tinydrm_of_find_backlight to backlight_get and move it
> to linux/backlight.c so that it can be used by other drivers.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v12:
>   -Move backlight_put() to the patch 2/3 from patch 3/3.
>   -Remove #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)..#endif
>    because the file is not built if it isn't enabled
>
>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 ------------------------
>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>   drivers/video/backlight/backlight.c            | 43 ++++++++++++++++++++++++++
>   include/drm/tinydrm/tinydrm-helpers.h          |  3 --
>   include/linux/backlight.h                      |  9 ++++++
>   5 files changed, 54 insertions(+), 44 deletions(-)
>
> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> index a42dee6..cb1a01a 100644
> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> @@ -236,46 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
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
>   #if IS_ENABLED(CONFIG_SPI)
>   
>   /**
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index 7e5bb7d..edf9502 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -12,6 +12,7 @@
>   #include <drm/tinydrm/ili9341.h>
>   #include <drm/tinydrm/mipi-dbi.h>
>   #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <linux/backlight.h>
>   #include <linux/delay.h>
>   #include <linux/gpio/consumer.h>
>   #include <linux/module.h>
> @@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>   	if (IS_ERR(mipi->regulator))
>   		return PTR_ERR(mipi->regulator);
>   
> -	mipi->backlight = tinydrm_of_find_backlight(dev);
> +	mipi->backlight = backlight_get(dev);
>   	if (IS_ERR(mipi->backlight))
>   		return PTR_ERR(mipi->backlight);
>   
> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> index 8049e76..f3e95b3 100644
> --- a/drivers/video/backlight/backlight.c
> +++ b/drivers/video/backlight/backlight.c
> @@ -580,6 +580,49 @@ struct backlight_device *of_find_backlight_by_node(struct device_node *node)
>   EXPORT_SYMBOL(of_find_backlight_by_node);
>   #endif
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
> +		np = of_parse_phandle(dev->of_node, 'backlight', 0);
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
> +static inline void backlight_put(struct backlight_device *bd)

Inlines like this should go in the header file backlight.h.

> +{
> +	if (bd)
> +		put_device(&bd->dev);
> +}
> +
>   static void __exit backlight_class_exit(void)
>   {
>   	class_destroy(backlight_class);
> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> index f54fae0..b89d8e4 100644
> --- a/include/drm/tinydrm/tinydrm-helpers.h
> +++ b/include/drm/tinydrm/tinydrm-helpers.h
> @@ -10,7 +10,6 @@
>   #ifndef __LINUX_TINYDRM_HELPERS_H
>   #define __LINUX_TINYDRM_HELPERS_H
>   
> -struct backlight_device;
>   struct tinydrm_device;
>   struct drm_clip_rect;
>   struct spi_transfer;
> @@ -46,8 +45,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
>   void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>   			       struct drm_clip_rect *clip);
>   
> -struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> -
>   size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
>   bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
>   int tinydrm_spi_transfer(struct spi_device *spi, u32 speed_hz,
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 355e9f5..1d713b3 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -202,4 +202,13 @@ of_find_backlight_by_node(struct device_node *node)
>   }
>   #endif
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
>   #endif



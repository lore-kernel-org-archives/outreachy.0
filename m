X-GM-THRID: 6475592721521180672
X-Received: by 10.80.152.61 with SMTP id g58mr903184edb.5.1507826769181;
        Thu, 12 Oct 2017 09:46:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.241.28 with SMTP id w28ls2103878edl.6.gmail; Thu, 12 Oct
 2017 09:46:08 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCwYGmpZg+ZZCtnxFo5V1KLJijXOAPzSMaeyWDq57A0fM1A/BEihj30IMFNLC1G5qZuxfC3
X-Received: by 10.80.242.140 with SMTP id f12mr906244edm.1.1507826768003;
        Thu, 12 Oct 2017 09:46:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507826767; cv=none;
        d=google.com; s=arc-20160816;
        b=LPTmuqOExlMDO1pJKOvn1wup/UWljRPj/ftxD9FR+RPa6pWVkHKRzdIs1t89Zsejjb
         C7Lz08u+2SMJPL8fuklwk8iQMAd0WSc+aKbiREzX3cEAjFoMHurbtRczdL/HmhP+pF53
         EMg0rnc61yeXortKiDj+ABheNkDUua/y4TNvV9m4xEfrl6Jw32DwpPrWTD62CVHIC/M7
         MTqrlfnWWeYwV4zlxMjZRl9AyWMU1vltRoqy0smNF9ZNN8gbhZuPR0UyJv9cpAy3NVp1
         ugQOtwrB6IV6sWzTomshSTuLb1mdCO6ZUk6VUFwxLIx0nSdtX9YKTZVJbep9JnMnW9I6
         KtsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=e5N+2Xs+/irKHbFdlA+ItF4gdHz+JTWW44JyLUh/D6A=;
        b=xnSXssYlyzanpFp4LW22z2CTv+Me/awwkmkDaFsBHcpt8Fs76/D47EhUQ7SgFXuE61
         xhm6f1TVbhdfueU/Uok7nSzjjhUXogStxJouaHpcskZN0s7jDhwrCZKMijtK2/u4Fy8q
         AStd5SDlykK3MBjV+YQcLfpLS2dqXGiwQCSkGgzkSrMU7kfs5wYC5dDm9M8l9GRXofVu
         7c7Z7BjlEwJgPrZ1cxhoKxygB6EWdqghzzLEWpycRXkJDq572cG0XFCp8VkEcY9m4xGV
         tCxcTiCg4jAyC0ceBfxh70FeN/pyP1I911C0tmvx0Bf6RkdYSl2erkmWBFAaOMgc7Vjl
         +onA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id f9si286208edm.1.2017.10.12.09.46.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 09:46:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:55230 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e2gcY-00026k-IH; Thu, 12 Oct 2017 18:46:06 +0200
Subject: Re: [PATCH v12 1/3] drm/tinydrm: Move helper functions from
 tinydrm-helpers to backlight.h
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
 daniel.thompson@linaro.org, jani.nikula@linux.intel.com
References: <cover.1507821742.git.meghana.madhyastha@gmail.com>
 <b55490e9e10fe0b97e2a79c69015a171913c1c34.1507821742.git.meghana.madhyastha@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <51d43af9-8066-1b89-2742-767c209ee4da@tronnes.org>
Date: Thu, 12 Oct 2017 18:46:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <b55490e9e10fe0b97e2a79c69015a171913c1c34.1507821742.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 12.10.2017 17.28, skrev Meghana Madhyastha:
> Move the helper functions enable_backlight and disable_backlight
> from tinydrm-helpers.c to backlight.h as static inline functions so
> that they can be used by other drivers.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---

Please rebase on latest drm-misc, the patch doesn't apply.

> Changes in v12:
> -None
>
>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 55 --------------------------
>   drivers/gpu/drm/tinydrm/mipi-dbi.c             |  5 ++-
>   include/drm/tinydrm/tinydrm-helpers.h          |  2 -
>   include/linux/backlight.h                      | 30 ++++++++++++++
>   4 files changed, 33 insertions(+), 59 deletions(-)
>
> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> index bd6cce0..a42dee6 100644
> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> @@ -276,61 +276,6 @@ struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
>   }
>   EXPORT_SYMBOL(tinydrm_of_find_backlight);
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
>   #if IS_ENABLED(CONFIG_SPI)
>   
>   /**
> diff --git a/drivers/gpu/drm/tinydrm/mipi-dbi.c b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> index 2caeabc..71b416b 100644
> --- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
> +++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
> @@ -11,6 +11,7 @@
>   
>   #include <drm/tinydrm/mipi-dbi.h>
>   #include <drm/tinydrm/tinydrm-helpers.h>
> +#include <linux/backlight.h>
>   #include <linux/debugfs.h>
>   #include <linux/dma-buf.h>
>   #include <linux/gpio/consumer.h>
> @@ -279,7 +280,7 @@ void mipi_dbi_pipe_enable(struct drm_simple_display_pipe *pipe,
>   	if (fb)
>   		fb->funcs->dirty(fb, NULL, 0, 0, NULL, 0);
>   
> -	tinydrm_enable_backlight(mipi->backlight);
> +	backlight_enable(mipi->backlight);
>   }
>   EXPORT_SYMBOL(mipi_dbi_pipe_enable);
>   
> @@ -318,7 +319,7 @@ void mipi_dbi_pipe_disable(struct drm_simple_display_pipe *pipe)
>   	mipi->enabled = false;
>   
>   	if (mipi->backlight)
> -		tinydrm_disable_backlight(mipi->backlight);
> +		backlight_disable(mipi->backlight);
>   	else
>   		mipi_dbi_blank(mipi);
>   }
> diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> index d554ded..f54fae0 100644
> --- a/include/drm/tinydrm/tinydrm-helpers.h
> +++ b/include/drm/tinydrm/tinydrm-helpers.h
> @@ -47,8 +47,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
>   			       struct drm_clip_rect *clip);
>   
>   struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> -int tinydrm_enable_backlight(struct backlight_device *backlight);
> -int tinydrm_disable_backlight(struct backlight_device *backlight);
>   
>   size_t tinydrm_spi_max_transfer_size(struct spi_device *spi, size_t max_len);
>   bool tinydrm_spi_bpw_supported(struct spi_device *spi, u8 bpw);
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 5f2fd61..355e9f5 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -153,6 +153,36 @@ static inline void * bl_get_data(struct backlight_device *bl_dev)
>   	return dev_get_drvdata(&bl_dev->dev);
>   }
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
>   struct generic_bl_info {
>   	const char *name;
>   	int max_intensity;



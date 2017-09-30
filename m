X-GM-THRID: 6470705412124442624
X-Received: by 10.46.95.133 with SMTP id x5mr483494lje.38.1506778988078;
        Sat, 30 Sep 2017 06:43:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.199.150 with SMTP id x144ls78833lff.1.gmail; Sat, 30 Sep
 2017 06:43:06 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAF7mm+hhE/zNegSLBJ7qgq0arbBa+DcjHNfGMhk3zaI2a4iJRNaj5IGDdvvNvMo1mcxknM
X-Received: by 10.46.23.218 with SMTP id 87mr507354ljx.30.1506778986431;
        Sat, 30 Sep 2017 06:43:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506778986; cv=none;
        d=google.com; s=arc-20160816;
        b=bYSB7jfLzsyaLWYO+NC/tUPy1XYH2JqXMz3UuJdX+U6LqY1f0cQ5kbRDekPXR9MOlj
         yiIdX5luZ7WNc7Rjdok2sAYlnHha2l17gCvA7Y9w/fPU+NyZsM5GJcsrK1VTH7XEVyK9
         UKddP7MR+mpa8YO3YJCVQjfguxCp3rMYlAlZB8nIWNB1M4n1dmz4vB4+lrSmesE62o4i
         6cEooKZsZtftxe1annZex5zFPEiRaiXp4CO82ILELMkGa0oK2G4prTUkkUnipz3yGj7D
         oqpK0fz/wrTvL90hMDFvBow+U3PZJeQEimIWRTHU/vByD5m3xZaOBK2AYDUl6AfcsnWt
         0gtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=lzbQznh3AubyNuzubvTRFWm7ExXuzOR3fwaJczsajT8=;
        b=TkXpP8CxRz+GLdW6jTIUsve5Xqp1suNstzB/mOK/IkIHn5XJUqCR/O8/UpSTxqAYh3
         92eurpp+r0ym5ahn4oKCDfBjytBmFhzb2dvsEsus+JyHlOpsEjUiPPgPmjVFN/SU4Fk9
         X40rczXBNbh0un0ITHYTugBZfavJTFXwgxoOOTaTyU/hQk1tXCCYMLCYUxHGgUxhEgzg
         mDuuZgYneVRaoPq71pd0mb9gMIBXcNhkfBhX/1v8vykzAPoI30oJmv6Ar6twwcQUAYuC
         gnsN9Za0uQiQSh2pDY5PiVkmYAeYB5F93DtgSx1NqUtRREdZsIiRoZoLgHKxlSFslfnR
         tFpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id 65si232541lfv.4.2017.09.30.06.43.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 06:43:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:49576 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dyI2r-0003AJ-C1; Sat, 30 Sep 2017 15:43:05 +0200
Subject: Re: [PATCH v5 2/4] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506762028.git.meghana.madhyastha@gmail.com>
 <d9f46a0f5e14a0ff4386b64037d6abeed60ebb0c.1506762029.git.meghana.madhyastha@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <273a9944-59a5-5c6d-287b-203bd1aa8907@tronnes.org>
Date: Sat, 30 Sep 2017 15:43:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <d9f46a0f5e14a0ff4386b64037d6abeed60ebb0c.1506762029.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 30.09.2017 11.05, skrev Meghana Madhyastha:
> Add devm_drm_of_find_backlight and the corresponding release
> function because some drivers such as tinydrm use devres versions
> of functions for requiring device resources.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v5:
> -None
>
>   drivers/gpu/drm/drm_of.c           | 47 ++++++++++++++++++++++++++++++++++++++
>   drivers/gpu/drm/tinydrm/mi0283qt.c |  2 +-
>   include/drm/drm_of.h               |  1 +
>   3 files changed, 49 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index d878d3a..cd80dfc 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -304,3 +304,50 @@ struct backlight_device *drm_of_find_backlight(struct device *dev)
>   	return backlight;
>   }
>   EXPORT_SYMBOL(drm_of_find_backlight);
> +
> +/**
> + * devm_drm_of_find_backlight_release - Release backlight device
> + * @dev: Device
> + *
> + * This is the release function corresponding to the devm_drm_of_find_backlight.
> + * Each devres entry is associated with a release function.
> + */

No docs on internal functions.

> +static void devm_drm_of_find_backlight_release(void *data)
> +{
> +	put_device(data);
> +}
> +
> +/**
> + * devm_drm_of_find_backlight - Find backlight device in device-tree
> + * devres version of the function
> + * @dev: Device
> + *
> + * This is the devres version of the function drm_of_find_backlight.
> + * Some drivers use devres versions of functions for
> + * requiring device resources.
> + *
> + * Returns:
> + * NULL if there's no backlight property.
> + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> + * is found.
> + * If the backlight device is found, a pointer to the structure is returned.
> + */
> +struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
> +{
> +	struct backlight_device *backlight;
> +	int ret;
> +
> +	backlight = drm_of_find_backlight(dev);
> +	if (IS_ERR_OR_NULL(backlight))
> +		return backlight;
> +
> +	ret = devm_add_action(dev, devm_drm_of_find_backlight_release,
> +			      &backlight->dev);
> +	if (ret) {
> +		put_device(&backlight->dev);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return backlight;
> +}
> +EXPORT_SYMBOL(devm_drm_of_find_backlight);
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index 5e3d635..d37f658 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -190,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>   	if (IS_ERR(mipi->regulator))
>   		return PTR_ERR(mipi->regulator);
>   
> -	mipi->backlight = drm_of_find_backlight(dev);
> +	mipi->backlight = devm_drm_of_find_backlight(dev);
>   	if (IS_ERR(mipi->backlight))
>   		return PTR_ERR(mipi->backlight);
>   
> diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> index e8fba5b..b2d6e0c 100644
> --- a/include/drm/drm_of.h
> +++ b/include/drm/drm_of.h
> @@ -30,6 +30,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>   				struct drm_panel **panel,
>   				struct drm_bridge **bridge);
>   struct backlight_device *drm_of_find_backlight(struct device *dev);
> +struct backlight_device *devm_drm_of_find_backlight(struct device *dev);
>   #else
>   static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
>   						  struct device_node *port)



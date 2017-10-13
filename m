X-GM-THRID: 6468899055788359680
X-Received: by 10.46.5.147 with SMTP id 141mr80077ljf.44.1507909454951;
        Fri, 13 Oct 2017 08:44:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.11 with SMTP id e11ls1125476ljb.4.gmail; Fri, 13 Oct
 2017 08:44:13 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RXxpzVD/y13kaezNeWsiiYNlVRT5+XOdE0KEOBnQRfeehZUVicm/xyN4Y/yPP7UCyzK8/l
X-Received: by 10.46.16.131 with SMTP id 3mr83556ljq.8.1507909453617;
        Fri, 13 Oct 2017 08:44:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507909453; cv=none;
        d=google.com; s=arc-20160816;
        b=PsNX4A64DSnnxoVks3vnXlb58a1t2+cibpDJC4k8Knfj6zsU8XOtZbwFJ5CHms4gqa
         HcmBaQeZ9q525zA9eaqdftp6g3qOfGGyVuegw4nx3l+7ACZ0XV33KHhYKQ3XSORovVQQ
         ieecMcLoO+ScuUl6dWMh4bXleiRH93iAjy+v68QQ24tFZ2J30Yc7IG+z2BB6t+js7pnv
         VZT79EVvu9CVr+0DVkYIWYLPLdHZHwBQBn5txN6ACjmczAzMxcP4BMPSBcq9aosvYYH2
         8FsXWpRNJ01OwjelzOV3RwuuHiz9jdSNfIT8psMyJ22hhTZkVgrZxNtoIu5sEiRg6kTn
         cAyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=UrPQxZkoTjuSpbUH9WI+9fIsmUTLCjnOuoPW9p4b3Oc=;
        b=kiQ/faVDMd8zRVNxmFeoCI3ATIWDlZXP8LDngZ0eWR5BXD91O1DGXbfKeK9GsK4L9w
         WBqBu7ZF7VwsYGy4knSCgcEIBGicxHJp5tI10UtAcJX7Ed98bYsYTnjsiwvI8B6MIZ5Y
         atn9F4XbngrL0FdWf8wxyIQpAuVjLw+44XDykQ5osdsicZJmY6j5M+VsjWyUhdOk99Q9
         51kKcGjmPtuDtdDwgPiCc/8wGQYxAZidG/YIYhWp1SdiMKdPc7NLRaM83YQl92Vj3px2
         nhmjDd9iv0kfTq1uHKT361H7Ug2TyAIaxTi0BZ7IaOR5+GfQdYKZnFEKQA1utT2khf7C
         6Bng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id c185si44883lfd.5.2017.10.13.08.44.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 08:44:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:57409 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e328C-0006Gv-HA; Fri, 13 Oct 2017 17:44:12 +0200
Subject: Re: [PATCH v3] drm/tinydrm: Replace dev_error with DRM_DEV_ERROR
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <20171006221738.30200-1-harshasharmaiitr@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <0612ed4e-7890-8e64-d0f1-fe3a7a423db9@tronnes.org>
Date: Fri, 13 Oct 2017 17:44:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171006221738.30200-1-harshasharmaiitr@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 07.10.2017 00.17, skrev Harsha Sharma:
> Convert instances of dev_error to DRM_DEV_ERROR as we have
> DRM_DEV_ERROR variants of drm print macros.
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---

Thanks, applied to drm-misc.

Noralf.

> Changes in v3:
>   -Solve merge conflicts
> Changes in v2:
>   -Fix alignment issues
>   drivers/gpu/drm/tinydrm/mi0283qt.c |  8 ++++----
>   drivers/gpu/drm/tinydrm/repaper.c  | 28 +++++++++++++---------------
>   drivers/gpu/drm/tinydrm/st7586.c   |  6 +++---
>   3 files changed, 20 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index 7e5bb7d6f655..7dded506ba8c 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -31,7 +31,7 @@ static int mi0283qt_init(struct mipi_dbi *mipi)
>   
>   	ret = regulator_enable(mipi->regulator);
>   	if (ret) {
> -		dev_err(dev, "Failed to enable regulator %d\n", ret);
> +		DRM_DEV_ERROR(dev, "Failed to enable regulator %d\n", ret);
>   		return ret;
>   	}
>   
> @@ -42,7 +42,7 @@ static int mi0283qt_init(struct mipi_dbi *mipi)
>   	mipi_dbi_hw_reset(mipi);
>   	ret = mipi_dbi_command(mipi, MIPI_DCS_SOFT_RESET);
>   	if (ret) {
> -		dev_err(dev, "Error sending command %d\n", ret);
> +		DRM_DEV_ERROR(dev, "Error sending command %d\n", ret);
>   		regulator_disable(mipi->regulator);
>   		return ret;
>   	}
> @@ -175,13 +175,13 @@ static int mi0283qt_probe(struct spi_device *spi)
>   
>   	mipi->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
>   	if (IS_ERR(mipi->reset)) {
> -		dev_err(dev, "Failed to get gpio 'reset'\n");
> +		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
>   		return PTR_ERR(mipi->reset);
>   	}
>   
>   	dc = devm_gpiod_get_optional(dev, "dc", GPIOD_OUT_LOW);
>   	if (IS_ERR(dc)) {
> -		dev_err(dev, "Failed to get gpio 'dc'\n");
> +		DRM_DEV_ERROR(dev, "Failed to get gpio 'dc'\n");
>   		return PTR_ERR(dc);
>   	}
>   
> diff --git a/drivers/gpu/drm/tinydrm/repaper.c b/drivers/gpu/drm/tinydrm/repaper.c
> index 30dc97b3ff21..028d428d4ab9 100644
> --- a/drivers/gpu/drm/tinydrm/repaper.c
> +++ b/drivers/gpu/drm/tinydrm/repaper.c
> @@ -473,8 +473,7 @@ static void repaper_get_temperature(struct repaper_epd *epd)
>   
>   	ret = thermal_zone_get_temp(epd->thermal, &temperature);
>   	if (ret) {
> -		dev_err(&epd->spi->dev, "Failed to get temperature (%d)\n",
> -			ret);
> +		DRM_DEV_ERROR(&epd->spi->dev, "Failed to get temperature (%d)\n", ret);
>   		return;
>   	}
>   
> @@ -629,7 +628,7 @@ static int repaper_fb_dirty(struct drm_framebuffer *fb,
>   	mutex_unlock(&tdev->dirty_lock);
>   
>   	if (ret)
> -		dev_err(fb->dev->dev, "Failed to update display (%d)\n", ret);
> +		DRM_DEV_ERROR(fb->dev->dev, "Failed to update display (%d)\n", ret);
>   	kfree(buf);
>   
>   	return ret;
> @@ -703,7 +702,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
>   	}
>   
>   	if (!i) {
> -		dev_err(dev, "timeout waiting for panel to become ready.\n");
> +		DRM_DEV_ERROR(dev, "timeout waiting for panel to become ready.\n");
>   		power_off(epd);
>   		return;
>   	}
> @@ -725,9 +724,9 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
>   	ret = repaper_read_val(spi, 0x0f);
>   	if (ret < 0 || !(ret & 0x80)) {
>   		if (ret < 0)
> -			dev_err(dev, "failed to read chip (%d)\n", ret);
> +			DRM_DEV_ERROR(dev, "failed to read chip (%d)\n", ret);
>   		else
> -			dev_err(dev, "panel is reported broken\n");
> +			DRM_DEV_ERROR(dev, "panel is reported broken\n");
>   		power_off(epd);
>   		return;
>   	}
> @@ -767,7 +766,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
>   		/* check DC/DC */
>   		ret = repaper_read_val(spi, 0x0f);
>   		if (ret < 0) {
> -			dev_err(dev, "failed to read chip (%d)\n", ret);
> +			DRM_DEV_ERROR(dev, "failed to read chip (%d)\n", ret);
>   			power_off(epd);
>   			return;
>   		}
> @@ -779,7 +778,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
>   	}
>   
>   	if (!dc_ok) {
> -		dev_err(dev, "dc/dc failed\n");
> +		DRM_DEV_ERROR(dev, "dc/dc failed\n");
>   		power_off(epd);
>   		return;
>   	}
> @@ -959,7 +958,7 @@ static int repaper_probe(struct spi_device *spi)
>   	if (IS_ERR(epd->panel_on)) {
>   		ret = PTR_ERR(epd->panel_on);
>   		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "Failed to get gpio 'panel-on'\n");
> +			DRM_DEV_ERROR(dev, "Failed to get gpio 'panel-on'\n");
>   		return ret;
>   	}
>   
> @@ -967,7 +966,7 @@ static int repaper_probe(struct spi_device *spi)
>   	if (IS_ERR(epd->discharge)) {
>   		ret = PTR_ERR(epd->discharge);
>   		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "Failed to get gpio 'discharge'\n");
> +			DRM_DEV_ERROR(dev, "Failed to get gpio 'discharge'\n");
>   		return ret;
>   	}
>   
> @@ -975,7 +974,7 @@ static int repaper_probe(struct spi_device *spi)
>   	if (IS_ERR(epd->reset)) {
>   		ret = PTR_ERR(epd->reset);
>   		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "Failed to get gpio 'reset'\n");
> +			DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
>   		return ret;
>   	}
>   
> @@ -983,7 +982,7 @@ static int repaper_probe(struct spi_device *spi)
>   	if (IS_ERR(epd->busy)) {
>   		ret = PTR_ERR(epd->busy);
>   		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "Failed to get gpio 'busy'\n");
> +			DRM_DEV_ERROR(dev, "Failed to get gpio 'busy'\n");
>   		return ret;
>   	}
>   
> @@ -991,8 +990,7 @@ static int repaper_probe(struct spi_device *spi)
>   					 &thermal_zone)) {
>   		epd->thermal = thermal_zone_get_zone_by_name(thermal_zone);
>   		if (IS_ERR(epd->thermal)) {
> -			dev_err(dev, "Failed to get thermal zone: %s\n",
> -				thermal_zone);
> +			DRM_DEV_ERROR(dev, "Failed to get thermal zone: %s\n", thermal_zone);
>   			return PTR_ERR(epd->thermal);
>   		}
>   	}
> @@ -1033,7 +1031,7 @@ static int repaper_probe(struct spi_device *spi)
>   		if (IS_ERR(epd->border)) {
>   			ret = PTR_ERR(epd->border);
>   			if (ret != -EPROBE_DEFER)
> -				dev_err(dev, "Failed to get gpio 'border'\n");
> +				DRM_DEV_ERROR(dev, "Failed to get gpio 'border'\n");
>   			return ret;
>   		}
>   
> diff --git a/drivers/gpu/drm/tinydrm/st7586.c b/drivers/gpu/drm/tinydrm/st7586.c
> index b439956a07f4..14361a5e9deb 100644
> --- a/drivers/gpu/drm/tinydrm/st7586.c
> +++ b/drivers/gpu/drm/tinydrm/st7586.c
> @@ -187,7 +187,7 @@ static void st7586_pipe_enable(struct drm_simple_display_pipe *pipe,
>   	mipi_dbi_hw_reset(mipi);
>   	ret = mipi_dbi_command(mipi, ST7586_AUTO_READ_CTRL, 0x9f);
>   	if (ret) {
> -		dev_err(dev, "Error sending command %d\n", ret);
> +		DRM_DEV_ERROR(dev, "Error sending command %d\n", ret);
>   		return;
>   	}
>   
> @@ -355,13 +355,13 @@ static int st7586_probe(struct spi_device *spi)
>   
>   	mipi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
>   	if (IS_ERR(mipi->reset)) {
> -		dev_err(dev, "Failed to get gpio 'reset'\n");
> +		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
>   		return PTR_ERR(mipi->reset);
>   	}
>   
>   	a0 = devm_gpiod_get(dev, "a0", GPIOD_OUT_LOW);
>   	if (IS_ERR(a0)) {
> -		dev_err(dev, "Failed to get gpio 'a0'\n");
> +		DRM_DEV_ERROR(dev, "Failed to get gpio 'a0'\n");
>   		return PTR_ERR(a0);
>   	}
>   



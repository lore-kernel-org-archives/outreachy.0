X-GM-THRID: 6468899055788359680
X-Received: by 10.28.134.137 with SMTP id i131mr104941wmd.29.1506356484343;
        Mon, 25 Sep 2017 09:21:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.87 with SMTP id j84ls349682lfi.17.gmail; Mon, 25 Sep
 2017 09:21:22 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBntJomYenWmeFimQXFZZ31NTPK8kZUUBmzQFxCW1vdsfhBtMr7sMs2EWJLCI7MWaorjHuU
X-Received: by 10.25.17.102 with SMTP id g99mr608917lfi.14.1506356482649;
        Mon, 25 Sep 2017 09:21:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506356482; cv=none;
        d=google.com; s=arc-20160816;
        b=MVO6zWsQbTYm/r3ZaikxqDr53gdQUcRwmvWYppVlaK1/MceNvZ7MZWrDu2Lu5W4pVy
         hGsCOwkk/vijicNl/nSudYXnYqKQzo0A6mgy1Jt6kc3XWxFM8qr0nsI4gael6w9+hRQQ
         uS6ZtvkZ5pZFjTohwtKMwVTTjlKZflWqeC3v46DfQ2BW+NWNUiOhSxAxNx3zgpm+jyvw
         Oiofso/JQC1YFDmanLIlkj68zEEtiYO/jndVctgR4/9bKw3bl5ZkX2XjfFhUkdwpiDD3
         mDv/mfESPLaFvvqto/il1NBYEWMO/tGwZLGTzd1BcyX8+kYfNaA/RbKPtq5/9KBW2eMk
         2jdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=s2EBzsM+mHWI5HL2fJFTvXNaboRmzPiKXFFMhWMUou4=;
        b=RTaX9uQfx5NZTdSlWPagQ6HkDYsHBvfzJAoHCVSPYQJSzUFBGQ8Ky85iFF0KGAOJxl
         3HPRQn9c2RHf0e1HevXjhk2lyCGHG4Jj5dguGoJZs94LPV1rIm5VT6PVA49dC+YxMIMH
         /Mqx+te7kP7e3hvLwVDsef/E+y0yV2+2ztEN5rqfacMDUcEqj9J8SnxRQGJ9WTX8zlFv
         mqkv8XY/tJCDCKm7yJZ0HxQOEnRQ3xhdP+pKSFGa10NHD/0gy9nLAp4YGp2Klf6sWkLn
         6+RyvQpjFxb9JPFwTkr+mCGm8sU8vz/l4rAK7wrqO/xyhd+aSVrxSfdwAh3F3/Fwz3kl
         UZbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id u82si171691lfg.0.2017.09.25.09.21.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 09:21:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:56593 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dwW8H-00015Y-Id; Mon, 25 Sep 2017 18:21:21 +0200
Subject: Re: [PATCH] drm/tinydrm: Replace dev_error with DRM_DEV_ERROR
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <1506157802-6988-1-git-send-email-harshasharmaiitr@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <cdccf6a3-8c66-89e5-be4f-a03e64591dbe@tronnes.org>
Date: Mon, 25 Sep 2017 18:21:19 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506157802-6988-1-git-send-email-harshasharmaiitr@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 23.09.2017 11.10, skrev Harsha Sharma:
> Convert instances of dev_error to DRM_DEV_ERROR as we have
> DRM_DEV_ERROR variants of drm print macros.
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>   drivers/gpu/drm/tinydrm/mi0283qt.c |  8 ++++----
>   drivers/gpu/drm/tinydrm/repaper.c  | 26 +++++++++++++-------------
>   drivers/gpu/drm/tinydrm/st7586.c   |  6 +++---
>   3 files changed, 20 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index 7e5bb7d..7dded50 100644
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
> index 30dc97b..bd152bb 100644
> --- a/drivers/gpu/drm/tinydrm/repaper.c
> +++ b/drivers/gpu/drm/tinydrm/repaper.c
> @@ -473,7 +473,7 @@ static void repaper_get_temperature(struct repaper_epd *epd)
>   
>   	ret = thermal_zone_get_temp(epd->thermal, &temperature);
>   	if (ret) {
> -		dev_err(&epd->spi->dev, "Failed to get temperature (%d)\n",
> +		DRM_DEV_ERROR(&epd->spi->dev, "Failed to get temperature (%d)\n",
>   			ret);

Please fix these alignment issues, or maybe just put it all on one line:

CHECK: Alignment should match open parenthesis
#59: FILE: drivers/gpu/drm/tinydrm/repaper.c:477:
+               DRM_DEV_ERROR(&epd->spi->dev, "Failed to get temperature 
(%d)\n",
                         ret);

CHECK: Alignment should match open parenthesis
#152: FILE: drivers/gpu/drm/tinydrm/repaper.c:995:
+                       DRM_DEV_ERROR(dev, "Failed to get thermal zone: 
%s\n",
                                 thermal_zone);

With that changed you can add to your next version:
Reviewed-by: Noralf Trønnes <noralf@tronnes.org>

>   		return;
>   	}
> @@ -629,7 +629,7 @@ static int repaper_fb_dirty(struct drm_framebuffer *fb,
>   	mutex_unlock(&tdev->dirty_lock);
>   
>   	if (ret)
> -		dev_err(fb->dev->dev, "Failed to update display (%d)\n", ret);
> +		DRM_DEV_ERROR(fb->dev->dev, "Failed to update display (%d)\n", ret);
>   	kfree(buf);
>   
>   	return ret;
> @@ -703,7 +703,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
>   	}
>   
>   	if (!i) {
> -		dev_err(dev, "timeout waiting for panel to become ready.\n");
> +		DRM_DEV_ERROR(dev, "timeout waiting for panel to become ready.\n");
>   		power_off(epd);
>   		return;
>   	}
> @@ -725,9 +725,9 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
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
> @@ -767,7 +767,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
>   		/* check DC/DC */
>   		ret = repaper_read_val(spi, 0x0f);
>   		if (ret < 0) {
> -			dev_err(dev, "failed to read chip (%d)\n", ret);
> +			DRM_DEV_ERROR(dev, "failed to read chip (%d)\n", ret);
>   			power_off(epd);
>   			return;
>   		}
> @@ -779,7 +779,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
>   	}
>   
>   	if (!dc_ok) {
> -		dev_err(dev, "dc/dc failed\n");
> +		DRM_DEV_ERROR(dev, "dc/dc failed\n");
>   		power_off(epd);
>   		return;
>   	}
> @@ -959,7 +959,7 @@ static int repaper_probe(struct spi_device *spi)
>   	if (IS_ERR(epd->panel_on)) {
>   		ret = PTR_ERR(epd->panel_on);
>   		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "Failed to get gpio 'panel-on'\n");
> +			DRM_DEV_ERROR(dev, "Failed to get gpio 'panel-on'\n");
>   		return ret;
>   	}
>   
> @@ -967,7 +967,7 @@ static int repaper_probe(struct spi_device *spi)
>   	if (IS_ERR(epd->discharge)) {
>   		ret = PTR_ERR(epd->discharge);
>   		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "Failed to get gpio 'discharge'\n");
> +			DRM_DEV_ERROR(dev, "Failed to get gpio 'discharge'\n");
>   		return ret;
>   	}
>   
> @@ -975,7 +975,7 @@ static int repaper_probe(struct spi_device *spi)
>   	if (IS_ERR(epd->reset)) {
>   		ret = PTR_ERR(epd->reset);
>   		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "Failed to get gpio 'reset'\n");
> +			DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
>   		return ret;
>   	}
>   
> @@ -983,7 +983,7 @@ static int repaper_probe(struct spi_device *spi)
>   	if (IS_ERR(epd->busy)) {
>   		ret = PTR_ERR(epd->busy);
>   		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "Failed to get gpio 'busy'\n");
> +			DRM_DEV_ERROR(dev, "Failed to get gpio 'busy'\n");
>   		return ret;
>   	}
>   
> @@ -991,7 +991,7 @@ static int repaper_probe(struct spi_device *spi)
>   					 &thermal_zone)) {
>   		epd->thermal = thermal_zone_get_zone_by_name(thermal_zone);
>   		if (IS_ERR(epd->thermal)) {
> -			dev_err(dev, "Failed to get thermal zone: %s\n",
> +			DRM_DEV_ERROR(dev, "Failed to get thermal zone: %s\n",
>   				thermal_zone);
>   			return PTR_ERR(epd->thermal);
>   		}
> @@ -1033,7 +1033,7 @@ static int repaper_probe(struct spi_device *spi)
>   		if (IS_ERR(epd->border)) {
>   			ret = PTR_ERR(epd->border);
>   			if (ret != -EPROBE_DEFER)
> -				dev_err(dev, "Failed to get gpio 'border'\n");
> +				DRM_DEV_ERROR(dev, "Failed to get gpio 'border'\n");
>   			return ret;
>   		}
>   
> diff --git a/drivers/gpu/drm/tinydrm/st7586.c b/drivers/gpu/drm/tinydrm/st7586.c
> index b439956..14361a5 100644
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



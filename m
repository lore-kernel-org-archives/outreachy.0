X-GM-THRID: 6468899055788359680
X-Received: by 10.46.82.9 with SMTP id g9mr1005953ljb.42.1507147104345;
        Wed, 04 Oct 2017 12:58:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.17 with SMTP id u17ls2904481ljd.9.gmail; Wed, 04 Oct
 2017 12:58:22 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDuN5oRduFd3bO8Wag1NmNl3olbvdZ3EhE5sgUakAIn85d0gyLXPDymsKVC4xFTJoYt2/fi
X-Received: by 10.25.201.136 with SMTP id z130mr852481lff.3.1507147102842;
        Wed, 04 Oct 2017 12:58:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507147102; cv=none;
        d=google.com; s=arc-20160816;
        b=SvAyXeKmN+KXGmwz08ZGlHMe6LTocvMXNavMVciwA1AxN3Buyv50xg6fZFt+/vlypq
         KKGUo6ttwAXYNSPeCenfrnC2+IQidX+SytdJDlstvl04F/zAxkmvL4fV3J+TkwcGb6ZA
         VxvE+I3tEjf4ltYvqPnZwr4OwXDb6R99xbNgIMHFM5AWiSSXs7o+1lTXIUNoLOh7/5bq
         opymNQ5ZlKrlptz2pndNLw7eKtGx+sYjp+iqz0oK/66Cs9t4PHY/YDhopl33uDf9uYWM
         IboUdGsngWXjK46M6XtkBpHYn7DN016zwWDQw/aNhDzSADM1aRNtYmEGXzCWj121XODq
         cpIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=mBUKcKGyMJBVCmikbCgtn41qclYjBW/z9NX+2fn4b/g=;
        b=aCWSJ88TiNMiXJntIWPiH+9PZbyaIusq69IlqzcOI61XJX1TK3y4CbbkoZqxGdiAaG
         lgW9M6sUBn33eInlBpuwkU8q6ORBiOhDSYNUfKjoyKO1LOUbzCHrs/e/0zOyD8PRYCrf
         zHHyS2mP6I2S9Ptvl4We5RfhPBMW03TvMhD0OzchKOgtbNUgYrf8Am25ksUfabz9yhjC
         dMXiACrPzOpZKpqIIQDe77KhOAJuNTGCrqMvA2YB6VNE1C9jDfokEruKGmSKl+7uCTz6
         xvD5DKrJfPmY4e3ONZ8kGupwjRDRrZV9+KJe6X0UGf1Kre7FS+G7gjD2/OB6wcqZqGTs
         nLjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id m13si766137lfj.9.2017.10.04.12.58.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 12:58:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:58226 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dzpoD-0000z5-Vl; Wed, 04 Oct 2017 21:58:21 +0200
Subject: Re: [PATCH v2] drm/tinydrm: Replace dev_error with DRM_DEV_ERROR
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <1506671318-5121-1-git-send-email-harshasharmaiitr@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <e5cd4eac-19bb-d5b2-640b-6beeeddf5c0c@tronnes.org>
Date: Wed, 4 Oct 2017 21:58:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506671318-5121-1-git-send-email-harshasharmaiitr@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 29.09.2017 09.48, skrev Harsha Sharma:
> Convert instances of dev_error to DRM_DEV_ERROR as we have
> DRM_DEV_ERROR variants of drm print macros.
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Changes in v2:
>   -Fix alignment issues

This patchfile is corrupt.
Looks like you have manually edited the file.
Please don't do that, generate a new one.

Noralf.

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
> +		DRM_DEV_ERROR(&epd->spi->dev, "Failed to get temperature (%d)\n", ret);
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
> +			DRM_DEV_ERROR(dev, "Failed to get thermal zone: %s\n", thermal_zone);
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



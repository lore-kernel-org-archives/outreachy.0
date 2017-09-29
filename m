X-GM-THRID: 6468899055788359680
X-Received: by 10.28.136.12 with SMTP id k12mr541583wmd.10.1506670016767;
        Fri, 29 Sep 2017 00:26:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.129 with SMTP id r123ls506564wmf.1.gmail; Fri, 29 Sep
 2017 00:26:56 -0700 (PDT)
X-Received: by 10.28.215.195 with SMTP id o186mr534083wmg.9.1506670016107;
        Fri, 29 Sep 2017 00:26:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506670016; cv=none;
        d=google.com; s=arc-20160816;
        b=P0JH5SSlcOJuYY+OByC1h+sBEjSQBUgpnGmRwiELchG7hWs2L/drTFzEMhVc6BRsPa
         uinCeyV5GvTgie6Ns/W9MtIxkbjcmxZmoSggiIwu6Lck14Vizc+GNi4gPVfCITVCY6OG
         mfOa6TWgeY8QYGI6x7aYHvX1lFIMrBVMBwopvwzObs3tLkQeud0HqjMDYUrH1fvDptK1
         8PJZdSSZ8Y2G1ih7+KzxG0bKQF6ZUG0R/1ok1+D8490562maF3gI6Y99jrI+5YVEiSiF
         6qq19JGi5fhfhxTeTBSs8Fn+IhFnvmqvhDj3iVxzhYgdTUXzADzJG+TtfgsuUtmWeGYE
         LoKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=86bWD8mLbOAEgd3XNOdeOrwhSgU2Su5Htg3CGye1Gpo=;
        b=nklJlDSXEbbltDdQkyx8hKqNKZooqfrDGN1ZwoM1ROw+TN87mtijVRk5zmv4v0qU7a
         ooXE3vTE25maiGA4XZf6cd5hhX5pkOZTYYOgLnvmjyIGuswtX1TDUX5hZmy+wJMKozDp
         dL17m+l1m7hAIIwiuCtV3wfl0QIwmwsJSS543xGv4H5Vm0WUbZL8EjsVGzB6/7jnEGqm
         YFDuW5IxSzxn0UDYumpiiH12rIbwwql3Or4YHMzfkYJZKnNvSgrfA13UxU/+8EGyERme
         CQTinwbSQJ/Yuf9LDOBuS9+VNskn6wcIG8q25TGcdIfjfYN4SkxT6E0spuGppmYWVGXr
         HHdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=YgsB+NwP;
       spf=neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id q145si591813wme.4.2017.09.29.00.26.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 00:26:56 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=YgsB+NwP;
       spf=neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x244.google.com with SMTP id f4so568041wmh.4
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 00:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=86bWD8mLbOAEgd3XNOdeOrwhSgU2Su5Htg3CGye1Gpo=;
        b=YgsB+NwPMWzUvJnFNx2Y7fKVveoR9lux4njYrIDBfnBUNskrICpJNk8W3sissA1qxI
         FOgOqVzU17XUYl5/B82X9kkXu9OOayrUDc0jXpFbAmxbekC804JLxihmdhUtZhFMm6kx
         r/+Lcv0z8Oo5v+bTPkDsY9t7D2SvOo/o19RGM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=86bWD8mLbOAEgd3XNOdeOrwhSgU2Su5Htg3CGye1Gpo=;
        b=txHZLBsawScsgSe+Kyjy30hOGXLfhiV6Px+AaN1PdDYe0cO/9Gn7tDZbikQMKkcQM6
         EwD7qfgbKOguJWgbgohDnJ4zeLOW8YOCGzHuT+txZXoItsyb4EDg+JfFnroZLW7WECpi
         NTR2Hli5UWYctIB6yu8UyFmmUqzsEehjYGuxtErDtmZOdWscTYpeTwDwGBxvGlHeNNo+
         1iVY90rMSQ/Z3OttqTPLA6+LiBb2vYY5AmsgPLQWfEguBQ2Xd76RnixtqGxfAJdqsuoR
         5BD1syxtWcuhnoI4XB7CRvT8kG+Q9E4pZj1JbnmxAY/G0/m4xtekNvD/OoR0v9xYYV2k
         nfiw==
X-Gm-Message-State: AHPjjUia8SFd79FZrTQQAf16YuxykmR0RI8Ka+L42PQu3oWieCqlP/nQ
	CBjadh3Nae85NokckA3shoQGIQ==
X-Google-Smtp-Source: AOwi7QCmzU0LavTys+hSmQqk5uMKmtFtlig/em3pNE5e0jJPTStOXwaPHhboYxgV2hD77ngM9vFd9w==
X-Received: by 10.80.183.148 with SMTP id h20mr8814020ede.178.1506670015591;
        Fri, 29 Sep 2017 00:26:55 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id w51sm3260219edd.60.2017.09.29.00.26.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 29 Sep 2017 00:26:54 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 29 Sep 2017 09:26:53 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc: Harsha Sharma <harshasharmaiitr@gmail.com>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] drm/tinydrm: Replace dev_error
 with DRM_DEV_ERROR
Message-ID: <20170929072653.dcqts6assqyfbkf6@phenom.ffwll.local>
Mail-Followup-To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
	Harsha Sharma <harshasharmaiitr@gmail.com>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <1506157802-6988-1-git-send-email-harshasharmaiitr@gmail.com>
 <cdccf6a3-8c66-89e5-be4f-a03e64591dbe@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cdccf6a3-8c66-89e5-be4f-a03e64591dbe@tronnes.org>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Mon, Sep 25, 2017 at 06:21:19PM +0200, Noralf Tr�nnes wrote:
> 
> Den 23.09.2017 11.10, skrev Harsha Sharma:
> > Convert instances of dev_error to DRM_DEV_ERROR as we have
> > DRM_DEV_ERROR variants of drm print macros.
> > 
> > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > ---
> >   drivers/gpu/drm/tinydrm/mi0283qt.c |  8 ++++----
> >   drivers/gpu/drm/tinydrm/repaper.c  | 26 +++++++++++++-------------
> >   drivers/gpu/drm/tinydrm/st7586.c   |  6 +++---
> >   3 files changed, 20 insertions(+), 20 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > index 7e5bb7d..7dded50 100644
> > --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> > +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > @@ -31,7 +31,7 @@ static int mi0283qt_init(struct mipi_dbi *mipi)
> >   	ret = regulator_enable(mipi->regulator);
> >   	if (ret) {
> > -		dev_err(dev, "Failed to enable regulator %d\n", ret);
> > +		DRM_DEV_ERROR(dev, "Failed to enable regulator %d\n", ret);
> >   		return ret;
> >   	}
> > @@ -42,7 +42,7 @@ static int mi0283qt_init(struct mipi_dbi *mipi)
> >   	mipi_dbi_hw_reset(mipi);
> >   	ret = mipi_dbi_command(mipi, MIPI_DCS_SOFT_RESET);
> >   	if (ret) {
> > -		dev_err(dev, "Error sending command %d\n", ret);
> > +		DRM_DEV_ERROR(dev, "Error sending command %d\n", ret);
> >   		regulator_disable(mipi->regulator);
> >   		return ret;
> >   	}
> > @@ -175,13 +175,13 @@ static int mi0283qt_probe(struct spi_device *spi)
> >   	mipi->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
> >   	if (IS_ERR(mipi->reset)) {
> > -		dev_err(dev, "Failed to get gpio 'reset'\n");
> > +		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
> >   		return PTR_ERR(mipi->reset);
> >   	}
> >   	dc = devm_gpiod_get_optional(dev, "dc", GPIOD_OUT_LOW);
> >   	if (IS_ERR(dc)) {
> > -		dev_err(dev, "Failed to get gpio 'dc'\n");
> > +		DRM_DEV_ERROR(dev, "Failed to get gpio 'dc'\n");
> >   		return PTR_ERR(dc);
> >   	}
> > diff --git a/drivers/gpu/drm/tinydrm/repaper.c b/drivers/gpu/drm/tinydrm/repaper.c
> > index 30dc97b..bd152bb 100644
> > --- a/drivers/gpu/drm/tinydrm/repaper.c
> > +++ b/drivers/gpu/drm/tinydrm/repaper.c
> > @@ -473,7 +473,7 @@ static void repaper_get_temperature(struct repaper_epd *epd)
> >   	ret = thermal_zone_get_temp(epd->thermal, &temperature);
> >   	if (ret) {
> > -		dev_err(&epd->spi->dev, "Failed to get temperature (%d)\n",
> > +		DRM_DEV_ERROR(&epd->spi->dev, "Failed to get temperature (%d)\n",
> >   			ret);
> 
> Please fix these alignment issues, or maybe just put it all on one line:
> 
> CHECK: Alignment should match open parenthesis
> #59: FILE: drivers/gpu/drm/tinydrm/repaper.c:477:
> +�������������� DRM_DEV_ERROR(&epd->spi->dev, "Failed to get temperature
> (%d)\n",
> ����������������������� ret);
> 
> CHECK: Alignment should match open parenthesis
> #152: FILE: drivers/gpu/drm/tinydrm/repaper.c:995:
> +���������������������� DRM_DEV_ERROR(dev, "Failed to get thermal zone:
> %s\n",
> ������������������������������� thermal_zone);
> 
> With that changed you can add to your next version:
> Reviewed-by: Noralf Tr�nnes <noralf@tronnes.org>

I couldn't find v2 of this one here ...
-Daniel

> 
> >   		return;
> >   	}
> > @@ -629,7 +629,7 @@ static int repaper_fb_dirty(struct drm_framebuffer *fb,
> >   	mutex_unlock(&tdev->dirty_lock);
> >   	if (ret)
> > -		dev_err(fb->dev->dev, "Failed to update display (%d)\n", ret);
> > +		DRM_DEV_ERROR(fb->dev->dev, "Failed to update display (%d)\n", ret);
> >   	kfree(buf);
> >   	return ret;
> > @@ -703,7 +703,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
> >   	}
> >   	if (!i) {
> > -		dev_err(dev, "timeout waiting for panel to become ready.\n");
> > +		DRM_DEV_ERROR(dev, "timeout waiting for panel to become ready.\n");
> >   		power_off(epd);
> >   		return;
> >   	}
> > @@ -725,9 +725,9 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
> >   	ret = repaper_read_val(spi, 0x0f);
> >   	if (ret < 0 || !(ret & 0x80)) {
> >   		if (ret < 0)
> > -			dev_err(dev, "failed to read chip (%d)\n", ret);
> > +			DRM_DEV_ERROR(dev, "failed to read chip (%d)\n", ret);
> >   		else
> > -			dev_err(dev, "panel is reported broken\n");
> > +			DRM_DEV_ERROR(dev, "panel is reported broken\n");
> >   		power_off(epd);
> >   		return;
> >   	}
> > @@ -767,7 +767,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
> >   		/* check DC/DC */
> >   		ret = repaper_read_val(spi, 0x0f);
> >   		if (ret < 0) {
> > -			dev_err(dev, "failed to read chip (%d)\n", ret);
> > +			DRM_DEV_ERROR(dev, "failed to read chip (%d)\n", ret);
> >   			power_off(epd);
> >   			return;
> >   		}
> > @@ -779,7 +779,7 @@ static void repaper_pipe_enable(struct drm_simple_display_pipe *pipe,
> >   	}
> >   	if (!dc_ok) {
> > -		dev_err(dev, "dc/dc failed\n");
> > +		DRM_DEV_ERROR(dev, "dc/dc failed\n");
> >   		power_off(epd);
> >   		return;
> >   	}
> > @@ -959,7 +959,7 @@ static int repaper_probe(struct spi_device *spi)
> >   	if (IS_ERR(epd->panel_on)) {
> >   		ret = PTR_ERR(epd->panel_on);
> >   		if (ret != -EPROBE_DEFER)
> > -			dev_err(dev, "Failed to get gpio 'panel-on'\n");
> > +			DRM_DEV_ERROR(dev, "Failed to get gpio 'panel-on'\n");
> >   		return ret;
> >   	}
> > @@ -967,7 +967,7 @@ static int repaper_probe(struct spi_device *spi)
> >   	if (IS_ERR(epd->discharge)) {
> >   		ret = PTR_ERR(epd->discharge);
> >   		if (ret != -EPROBE_DEFER)
> > -			dev_err(dev, "Failed to get gpio 'discharge'\n");
> > +			DRM_DEV_ERROR(dev, "Failed to get gpio 'discharge'\n");
> >   		return ret;
> >   	}
> > @@ -975,7 +975,7 @@ static int repaper_probe(struct spi_device *spi)
> >   	if (IS_ERR(epd->reset)) {
> >   		ret = PTR_ERR(epd->reset);
> >   		if (ret != -EPROBE_DEFER)
> > -			dev_err(dev, "Failed to get gpio 'reset'\n");
> > +			DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
> >   		return ret;
> >   	}
> > @@ -983,7 +983,7 @@ static int repaper_probe(struct spi_device *spi)
> >   	if (IS_ERR(epd->busy)) {
> >   		ret = PTR_ERR(epd->busy);
> >   		if (ret != -EPROBE_DEFER)
> > -			dev_err(dev, "Failed to get gpio 'busy'\n");
> > +			DRM_DEV_ERROR(dev, "Failed to get gpio 'busy'\n");
> >   		return ret;
> >   	}
> > @@ -991,7 +991,7 @@ static int repaper_probe(struct spi_device *spi)
> >   					 &thermal_zone)) {
> >   		epd->thermal = thermal_zone_get_zone_by_name(thermal_zone);
> >   		if (IS_ERR(epd->thermal)) {
> > -			dev_err(dev, "Failed to get thermal zone: %s\n",
> > +			DRM_DEV_ERROR(dev, "Failed to get thermal zone: %s\n",
> >   				thermal_zone);
> >   			return PTR_ERR(epd->thermal);
> >   		}
> > @@ -1033,7 +1033,7 @@ static int repaper_probe(struct spi_device *spi)
> >   		if (IS_ERR(epd->border)) {
> >   			ret = PTR_ERR(epd->border);
> >   			if (ret != -EPROBE_DEFER)
> > -				dev_err(dev, "Failed to get gpio 'border'\n");
> > +				DRM_DEV_ERROR(dev, "Failed to get gpio 'border'\n");
> >   			return ret;
> >   		}
> > diff --git a/drivers/gpu/drm/tinydrm/st7586.c b/drivers/gpu/drm/tinydrm/st7586.c
> > index b439956..14361a5 100644
> > --- a/drivers/gpu/drm/tinydrm/st7586.c
> > +++ b/drivers/gpu/drm/tinydrm/st7586.c
> > @@ -187,7 +187,7 @@ static void st7586_pipe_enable(struct drm_simple_display_pipe *pipe,
> >   	mipi_dbi_hw_reset(mipi);
> >   	ret = mipi_dbi_command(mipi, ST7586_AUTO_READ_CTRL, 0x9f);
> >   	if (ret) {
> > -		dev_err(dev, "Error sending command %d\n", ret);
> > +		DRM_DEV_ERROR(dev, "Error sending command %d\n", ret);
> >   		return;
> >   	}
> > @@ -355,13 +355,13 @@ static int st7586_probe(struct spi_device *spi)
> >   	mipi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> >   	if (IS_ERR(mipi->reset)) {
> > -		dev_err(dev, "Failed to get gpio 'reset'\n");
> > +		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
> >   		return PTR_ERR(mipi->reset);
> >   	}
> >   	a0 = devm_gpiod_get(dev, "a0", GPIOD_OUT_LOW);
> >   	if (IS_ERR(a0)) {
> > -		dev_err(dev, "Failed to get gpio 'a0'\n");
> > +		DRM_DEV_ERROR(dev, "Failed to get gpio 'a0'\n");
> >   		return PTR_ERR(a0);
> >   	}
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cdccf6a3-8c66-89e5-be4f-a03e64591dbe%40tronnes.org.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


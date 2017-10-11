X-GM-THRID: 6475592721521180672
X-Received: by 10.101.78.202 with SMTP id w10mr2123129pgq.105.1507731500600;
        Wed, 11 Oct 2017 07:18:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.233.14 with SMTP id j14ls423016pfh.0.gmail; Wed, 11 Oct
 2017 07:18:18 -0700 (PDT)
X-Received: by 10.99.107.9 with SMTP id g9mr2165640pgc.100.1507731498018;
        Wed, 11 Oct 2017 07:18:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507731497; cv=none;
        d=google.com; s=arc-20160816;
        b=c19PnhYOi283l1/tdxCHmD1rk0RvZqe/aSaxTcECozr6XnWAg3ZkYcIspm4xjUc5XT
         TVpQwaOJb/CHItpqCnfxoif4wCtGCnzYLTQzBlni6hfy77w1bGfP01XwQM1mBVXdn5I/
         vzZCVWmVLPdKjMqF7XBCrfUoEV3CvTyNMNeItZ6oQKWxNMV2Fe0RrwdHNSxhjzpUSQa6
         CK6EfX/ImZLMd4TDD8+TIdEYuS21arZe+BfuUhGu7IEUdnnhXgscJ2PG+Q5slOLtKmnq
         3VLhlPAyhb1um/8vlj5fhgrA3Nd0UJttR4vzEdfD3uUq2aU5/9716B+O0dgaJZhbyPWU
         AhRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=Wap0x/zxwLJkozgKr1GIbihxRBhver/e8MfQSqUBq/E=;
        b=oRDrDG1WQOqW3pwbpFXlJFItW2PwsfRKHpBYFezGdMaTfEQSpW+yHWJVF9iPPIBjdw
         SFpTEc5CHLHHoYYqenLSkjcSP5J+eXsEylQeuruahJPFpjyQNyIcNNCNfAolPUcoPKCC
         RY9vy/fLCW71CQjRAeddyh0K6Q9VR8up6yV3pAvqoMmqmzu9uMXiC9I8huQ3xYB041XN
         dM3BXQPVgu/CpWyvG1UiY4z/kiPJs87RGBLPExi2ZFuvgzagEmJyPi2qAxPW8HVw2zPv
         34wjuN9kS3nZStxskbejfL87NrdS4sWcdnUFpaHJ51KIMdbW5RxyGx3FxG52OBvXnRKj
         C4BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WVakhM/c;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id i9si976384pfd.15.2017.10.11.07.18.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 07:18:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WVakhM/c;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id i23so2483503pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 07:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Wap0x/zxwLJkozgKr1GIbihxRBhver/e8MfQSqUBq/E=;
        b=WVakhM/cfPi98NLaUXMf/5SIzWG4X0z1CCzaZdPDVCWMDPtMoFA2vzYIc4xnxYfUjT
         0kYoHb+B3AHKTdytGSBxwchYRTBnhl3/5iZpc9b3qcFwlYsjiKuJf8KmweMIr0zBvBPy
         IyAA/JReO2WaH8DCKwj8piBJqRT21L0GRcdMj8fJ7BMcoA/aBjlp25FCqzLUUL0+Nw9I
         eFuha6vWCLQt3ADiIdvTYEvArpg20FJos+q1oY6t/5ZP/s8gKmgds6E7z+/41zYTT126
         MIwKDoA1CSuLzyaNAcJwjnSdNOHNFyq+sXoAsiEpH0Cf+om9/hR+4J0XSGZWrf0ZlFg3
         nnCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Wap0x/zxwLJkozgKr1GIbihxRBhver/e8MfQSqUBq/E=;
        b=jEnTZhZtN6B1yABX3k8RnG4PxEagWHf5U5s1MMQHnaZvbjNujG1QsCpTb7b6k8K3zj
         enp5j8ouEvXsb1xxZa90bhr31vOslLUgpD1tRk8EpS4BjPDalbhW9MHjaWTVoV0+PGEJ
         1bQYfEsmisrfzhgHBuvP/PnrlqOGhVDg4pu69Zlh0JKPU598tLvxCtCQVp7x9daVmjfm
         cnG1bM3WNA+XHjbTzwx0LZUy7GJhUXm4iYtFK4Q1jYPbR4NgsCPWarmjQ1W0ZqoCvSMf
         UQGrggU3e3L/yb2YABkrmdLK5To12ybkTWNV/wk29FYlqMzOEKA/Q+C4/56Y9Lt/Yysp
         fywA==
X-Gm-Message-State: AMCzsaXB248kkIlaW0JYZ70leBwxfmi9m8m9FGlCfn/7dxYX5tJE52Tf
	A43fDj627r2kz1W6I0Xf2vA=
X-Google-Smtp-Source: AOwi7QDnDI/S8A7r0qFvoB4yheHYMn1pIp+2AqwPXFG31l/3cn1E4+pGCczjpvV7Z+o7v/4CvoRIOg==
X-Received: by 10.99.121.129 with SMTP id u123mr15965688pgc.246.1507731497245;
        Wed, 11 Oct 2017 07:18:17 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([14.139.155.24])
        by smtp.gmail.com with ESMTPSA id d12sm21335282pgu.91.2017.10.11.07.18.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 07:18:16 -0700 (PDT)
Date: Wed, 11 Oct 2017 19:48:09 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, daniel@ffwll.ch,
	noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org
Subject: Re: [PATCH v8 3/3] drm/tinydrm: Add devres versions of backlight_get
Message-ID: <20171011141807.GA28100@meghana-HP-Pavilion-Notebook>
References: <cover.1507714297.git.meghana.madhyastha@gmail.com>
 <6dd8ab4eb88a75613a7bd69c9ff7278f03dd6ea4.1507714297.git.meghana.madhyastha@gmail.com>
 <87tvz5pz3q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87tvz5pz3q.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 11, 2017 at 04:56:25PM +0300, Jani Nikula wrote:
> On Wed, 11 Oct 2017, Meghana Madhyastha <meghana.madhyastha@gmail.com> wrote:
> > Add devm_backlight_get and the corresponding release
> > function because some drivers use devres versions of functions
> > for requiring device resources.
> >
> > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > ---
> > Changes in v8:
> > -Put the devres version to backlight.c along with backlight_get.
> >
> >  drivers/gpu/drm/tinydrm/mi0283qt.c  |  2 +-
> >  drivers/video/backlight/backlight.c | 31 +++++++++++++++++++++++++++++++
> >  include/linux/backlight.h           | 16 ++++++++++++++++
> >  3 files changed, 48 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > index edf9502..03fec36 100644
> > --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> > +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> > @@ -190,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
> >  	if (IS_ERR(mipi->regulator))
> >  		return PTR_ERR(mipi->regulator);
> >  
> > -	mipi->backlight = backlight_get(dev);
> > +	mipi->backlight = devm_backlight_get(dev);
> >  	if (IS_ERR(mipi->backlight))
> >  		return PTR_ERR(mipi->backlight);
> >  
> > diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> > index 1debb60..9b24dc2 100644
> > --- a/drivers/video/backlight/backlight.c
> > +++ b/drivers/video/backlight/backlight.c
> > @@ -618,6 +618,37 @@ struct backlight_device *backlight_get(struct device *dev)
> >  	return bd;
> >  }
> >  EXPORT_SYMBOL(backlight_get);
> > +
> > +static void devm_backlight_get_release(void *data)
> 
> I think that's a confusing name because of the "get", maybe just call it
> devm_backlight_put?

backlight_put is already in use as a helper function so wouldn't
devm_backlight_put be confusing as there is already a backlight_put?

Regards,
Meghana
 
> BR,
> Jani.
> 
> 
> 
> > +{
> > +	backlight_put(data);
> > +}
> > +
> > +/**
> > + * devm_backlight_get - Resource-managed backlight_get()
> > + * @dev: Device
> > + *
> > + * Device managed version of backlight_get(). The reference on the backlight
> > + * device is automatically dropped on driver detach.
> > + */
> > +struct backlight_device *devm_backlight_get(struct device *dev)
> > +{
> > +	struct backlight_device *bd;
> > +	int ret;
> > +
> > +	bd = backlight_get(dev);
> > +	if (!bd)
> > +		return NULL;
> > +
> > +	ret = devm_add_action(dev, devm_backlight_get_release, bd);
> > +	if (ret) {
> > +		backlight_put(bd);
> > +		return ERR_PTR(ret);
> > +	}
> > +
> > +	return bd;
> > +}
> > +EXPORT_SYMBOL(devm_backlight_get);
> >  #endif
> >  
> >  static void __exit backlight_class_exit(void)
> > diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> > index 1d713b3..0bfadb6 100644
> > --- a/include/linux/backlight.h
> > +++ b/include/linux/backlight.h
> > @@ -183,6 +183,16 @@ static inline int backlight_disable(struct backlight_device *bd)
> >  	return backlight_update_status(bd);
> >  }
> >  
> > +/**
> > + ** backlight_put - Drop backlight reference
> > + ** @bd: the backlight device to put
> > + **/
> > +static inline void backlight_put(struct backlight_device *bd)
> > +{
> > +	if (bd)
> > +		put_device(&bd->dev);
> > +}
> > +
> >  struct generic_bl_info {
> >  	const char *name;
> >  	int max_intensity;
> > @@ -204,11 +214,17 @@ of_find_backlight_by_node(struct device_node *node)
> >  
> >  #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> >  struct backlight_device *backlight_get(struct device *dev);
> > +struct backlight_device *devm_backlight_get(struct device *dev);
> >  #else
> >  static inline struct backlight_device *backlight_get(struct device *dev)
> >  {
> >  	return NULL;
> >  }
> > +
> > +static inline struct backlight_device *devm_backlight_get(struct device *dev)
> > +{
> > +	return NULL;
> > +}
> >  #endif
> >  
> >  #endif
> 
> -- 
> Jani Nikula, Intel Open Source Technology Center


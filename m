X-GM-THRID: 6475592721521180672
X-Received: by 10.36.182.13 with SMTP id g13mr2166832itf.18.1507926608094;
        Fri, 13 Oct 2017 13:30:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.46.12 with SMTP id i12ls409512ita.10.canary-gmail; Fri, 13
 Oct 2017 13:30:07 -0700 (PDT)
X-Received: by 10.107.16.81 with SMTP id y78mr1846419ioi.100.1507926607109;
        Fri, 13 Oct 2017 13:30:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507926607; cv=none;
        d=google.com; s=arc-20160816;
        b=ClIyZg6luHDG0fJlkTCxg3z/C5QnaCwlYJJZjgyizdobFFm+MZ+RpWf4rnH+mcKE6L
         EbyC0MLSMqlxyDFcMews5ZqhO+ucc851geNkirJNY0a2+QbrKFXHH/Eg5FWGAFdXCU5m
         Yd+47gyV2cIkzKgXYGm8OxyU3FS8Z56tyjY84xVy8GULB6K/WHqbzy0gqin0NSBe8yQN
         Xj+MWdqR/bzO7GldtJdWJ9zagNV6fVIYKwGQo4cUMhmwIt0nac9nmE0pETiOIU6H91tw
         Uk/r9fP38wHOCtLrYMrOnAUrdyK86W9Ee1RNz7UlHC66owrykx1kLzc0IiOjkNR/DK0f
         kpwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=eaItOHJSgCsV+NFMSZBW7aLhYIZxXNv+Q6oBwZevv04=;
        b=ZzPuVJbTVpy3w9K0eCxUpEXT1j7RbFfxJ5Yob0qOhyRaQ9J8T58eemeoDqLLOyvtPc
         qwziVRy3Eq++xXXYvKEifkkExMqohHMCstFo1Q9/4u42F9AOobFlpqq8BLFItDKHL1Ia
         mOcOntINDOt4hn1yqcagKunVtbH/GbnP6qbqRW+yzCDhLkS2rxQijoM59I7hE75pw/N8
         ao+w/hIAyXi9cdat/KcxJmbpqY2mAZi2jBtCrRMuNH94+O1hS23gsMYV2WrZike99lOJ
         vAe7xBSeU9d8uLTFRVbtzFUcuQ3w8546QrgikIMTbZcqrHWTMl5iSihzFJ7A9qamoWR6
         s9mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d2w6Ar03;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22d as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x22d.google.com (mail-qt0-x22d.google.com. [2607:f8b0:400d:c0d::22d])
        by gmr-mx.google.com with ESMTPS id d192si164835ith.2.2017.10.13.13.30.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 13:30:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22d as permitted sender) client-ip=2607:f8b0:400d:c0d::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d2w6Ar03;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22d as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x22d.google.com with SMTP id f8so21823197qta.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 13:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eaItOHJSgCsV+NFMSZBW7aLhYIZxXNv+Q6oBwZevv04=;
        b=d2w6Ar03Y3hEfvoXKOICB1srkOp5RNvwjfDUuMxgzmnEP0N9ql/B5OebJUJoyxk5NJ
         t+SMm/3vn4SuG9kkZ5ZcfvhCyZD95dRTOAHSiOPCmur0TZCefWn+tfbfTnG/c24YXwpX
         /pxGUzMoCxIzfRtvtqF+d/x9t6nQv/1jHiiCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eaItOHJSgCsV+NFMSZBW7aLhYIZxXNv+Q6oBwZevv04=;
        b=Rbm3fgd0AA4i2v5tWMQDrKUs89q8QR/GjvoG3s9flJlkwWY7bqRf6M4hu/NmnaE1yi
         Cd7aj+c3+cuJf0ZmYNi3xyHxVlKXSwJAVIGgD87evuW1GRvBY0m2CVtoQYyq/WtE4/Oi
         +aWTkzfsEXOG3hFIezwjPoJC4li58RZ5pi0tmBNvb2R3xlHIAMWnLWECD7dobhtuYy9k
         XPbhIgdO+CWj5a8x8t8X0unk+SJU2NYbNd4/+M146pSp7wNjHEf7IbZ/LN8D/S5uE05p
         zwpI4wDAFhLH7tvWWTSSQCyuI3/LYLzHn1fbSFbYmVCYOn61P244DyMY9VkhkCvjRGdL
         sxXw==
X-Gm-Message-State: AMCzsaWPNn5AFulJxTl0umMrzwxhHn18Ajo4qoyqjQ+hEm0gftXEtQcq
	cnShMh8qiPtQ0ZaPrOkMbaDXuQ==
X-Google-Smtp-Source: ABhQp+QdEp5cbuIWzXxgPkmFOXkR46NQOqP3ZkL/AT6ypnBRENM6tTJoNAxfaBQmzT+TyIsZ6LAtEQ==
X-Received: by 10.37.173.224 with SMTP id d32mr914472ybe.345.1507926606750;
        Fri, 13 Oct 2017 13:30:06 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:8:f586:7071:d44a:c2c4])
        by smtp.gmail.com with ESMTPSA id b11sm646914ywc.84.2017.10.13.13.30.06
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 13 Oct 2017 13:30:06 -0700 (PDT)
Date: Fri, 13 Oct 2017 16:30:05 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: Re: [Outreachy kernel] [PATCH v13 3/3] drm/tinydrm: Add devres
 versions of backlight_get
Message-ID: <20171013203005.3cuxeqkqhfuldgy7@art_vandelay>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <4b1acbfbddd2a123001e035a62801456891276d5.1507890285.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4b1acbfbddd2a123001e035a62801456891276d5.1507890285.git.meghana.madhyastha@gmail.com>
User-Agent: NeoMutt/20170306-97-7656f1-dirty (1.8.0)

On Fri, Oct 13, 2017 at 04:12:55PM +0530, Meghana Madhyastha wrote:
> Add devm_backlight_get and the corresponding release
> function because some drivers use devres versions of functions
> for requiring device resources.
> 

This patch looks fine, just update the names to be consistent with the previous
version and account for backlight_put not being present.

Sean

> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v13:
>  -Add devm_backlight_put to backlight.c
> 
>  drivers/gpu/drm/tinydrm/mi0283qt.c  |  2 +-
>  drivers/video/backlight/backlight.c | 31 +++++++++++++++++++++++++++++++
>  include/linux/backlight.h           |  6 ++++++
>  3 files changed, 38 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index a932185..e3e7583 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -189,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>  	if (IS_ERR(mipi->regulator))
>  		return PTR_ERR(mipi->regulator);
>  
> -	mipi->backlight = backlight_get(dev);
> +	mipi->backlight = devm_backlight_get(dev);
>  	if (IS_ERR(mipi->backlight))
>  		return PTR_ERR(mipi->backlight);
>  
> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> index c4e94d0..b6c505a 100644
> --- a/drivers/video/backlight/backlight.c
> +++ b/drivers/video/backlight/backlight.c
> @@ -617,6 +617,37 @@ struct backlight_device *backlight_get(struct device *dev)
>  }
>  EXPORT_SYMBOL(backlight_get);
>  
> +static void devm_backlight_put(void *data)
> +{
> +	backlight_put(data);
> +}
> +
> +/**
> + * devm_backlight_get - Resource-managed backlight_get()
> + * @dev: Device
> + *
> + * Device managed version of backlight_get(). The reference on the backlight
> + * device is automatically dropped on driver detach.
> + */
> +struct backlight_device *devm_backlight_get(struct device *dev)
> +{
> +	struct backlight_device *bd;
> +	int ret;
> +
> +	bd = backlight_get(dev);
> +	if (!bd)
> +		return NULL;
> +
> +	ret = devm_add_action(dev, devm_backlight_put, bd);
> +	if (ret) {
> +		backlight_put(bd);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return bd;
> +}
> +EXPORT_SYMBOL(devm_backlight_get);
> +
>  static void __exit backlight_class_exit(void)
>  {
>  	class_destroy(backlight_class);
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 987a6d7..8db9ba9 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -214,11 +214,17 @@ of_find_backlight_by_node(struct device_node *node)
>  
>  #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>  struct backlight_device *backlight_get(struct device *dev);
> +struct backlight_device *devm_backlight_get(struct device *dev);
>  #else
>  static inline struct backlight_device *backlight_get(struct device *dev)
>  {
>  	return NULL;
>  }
> +
> +static inline struct backlight_device *devm_backlight_get(struct device *dev)
> +{
> +	return NULL;
> +}
>  #endif
>  
>  #endif
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4b1acbfbddd2a123001e035a62801456891276d5.1507890285.git.meghana.madhyastha%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Sean Paul, Software Engineer, Google / Chromium OS


X-GM-THRID: 6475592721521180672
X-Received: by 10.98.178.200 with SMTP id z69mr1853178pfl.36.1507730204587;
        Wed, 11 Oct 2017 06:56:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.104.198 with SMTP id d189ls381922pgc.10.gmail; Wed, 11 Oct
 2017 06:56:43 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD4EEsnJVJI/XLMJC58CExFapk8hXyamW8WzWrIiCEjMMvHjbt1WJAjFvY0Y7Jjdh8Eg7+s
X-Received: by 10.159.253.12 with SMTP id p12mr1627576pls.0.1507730203383;
        Wed, 11 Oct 2017 06:56:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507730203; cv=none;
        d=google.com; s=arc-20160816;
        b=HrN5NvZdPrYWCnAFRU0MS0HH/nEOS4Gr1ixL69d45l84csSJ69yzVmXcSLES/QPVYx
         dewU2gXAKb2G66RDRIA9IE6CJiiTVUiHgpfXRYB1tF/3vjrDUfjoBtve5GQup9vofg0Z
         LanqQqsduwrnJ5LN29TEg3zOg7Ikw1DdAgttOq0ZCLt1SJvwJwD9Hhwfeup9VGTPstJk
         3pi/EhYfF4mtV5LJbjof6c4ETAwo23s9bWgw1oJWwFBZO7+AHNNUMxzFDJESZHJvZ2Pj
         oe7nOwKZTIhVSPGU1XP9Nu9RoJWBmowK6YCllHfYIDFoE9Ewlak9nYT2gsfYVYiyaiZ9
         xdww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:to:from:arc-authentication-results;
        bh=tSfe13Qa8L1tXb1mrlh1gyrEyUrdiyr0uc0y8ZNBZU8=;
        b=WcjT0er3oavuw5zKk8wU8D4YxwBgg5EqLyiyw4xxF9waANkbq5D8Dm1b4S2/JXY5Cy
         zg/ZjX02ul94KkyuyFf8tqFKr1bpyV58Ofq+HFVmEUrlYep/UlFC2nI8Vfw8l35AVFOJ
         vog8TDDrO0mWIrAslPz9L4SlnQX3YsvX7rngd5g3fl6FdDMbVGGW97gsS3oO8LpnOwog
         PiAHA/TmosuYUWeYuPQU9/ZkYsFAHBAypDgWbl5MYeRXRrVFLz9Xo7bjPRY71qx3Nb47
         SzdR8zq7WKuTpps1dlRcVCiQ1XNLPwxw4BxQcVRBtli6E0f7e1vQxMV9f6gHuusAfm7h
         XaEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id w65si1403044pfa.21.2017.10.11.06.56.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 06:56:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP; 11 Oct 2017 06:56:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,361,1503385200"; 
   d="scan'208";a="908920564"
Received: from mklemm-mobl4.ger.corp.intel.com (HELO localhost) ([10.252.56.2])
  by FMSMGA003.fm.intel.com with ESMTP; 11 Oct 2017 06:56:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org
Subject: Re: [PATCH v8 3/3] drm/tinydrm: Add devres versions of backlight_get
In-Reply-To: <6dd8ab4eb88a75613a7bd69c9ff7278f03dd6ea4.1507714297.git.meghana.madhyastha@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1507714297.git.meghana.madhyastha@gmail.com> <6dd8ab4eb88a75613a7bd69c9ff7278f03dd6ea4.1507714297.git.meghana.madhyastha@gmail.com>
Date: Wed, 11 Oct 2017 16:56:25 +0300
Message-ID: <87tvz5pz3q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain

On Wed, 11 Oct 2017, Meghana Madhyastha <meghana.madhyastha@gmail.com> wrote:
> Add devm_backlight_get and the corresponding release
> function because some drivers use devres versions of functions
> for requiring device resources.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v8:
> -Put the devres version to backlight.c along with backlight_get.
>
>  drivers/gpu/drm/tinydrm/mi0283qt.c  |  2 +-
>  drivers/video/backlight/backlight.c | 31 +++++++++++++++++++++++++++++++
>  include/linux/backlight.h           | 16 ++++++++++++++++
>  3 files changed, 48 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index edf9502..03fec36 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -190,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>  	if (IS_ERR(mipi->regulator))
>  		return PTR_ERR(mipi->regulator);
>  
> -	mipi->backlight = backlight_get(dev);
> +	mipi->backlight = devm_backlight_get(dev);
>  	if (IS_ERR(mipi->backlight))
>  		return PTR_ERR(mipi->backlight);
>  
> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> index 1debb60..9b24dc2 100644
> --- a/drivers/video/backlight/backlight.c
> +++ b/drivers/video/backlight/backlight.c
> @@ -618,6 +618,37 @@ struct backlight_device *backlight_get(struct device *dev)
>  	return bd;
>  }
>  EXPORT_SYMBOL(backlight_get);
> +
> +static void devm_backlight_get_release(void *data)

I think that's a confusing name because of the "get", maybe just call it
devm_backlight_put?


BR,
Jani.



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
> +	ret = devm_add_action(dev, devm_backlight_get_release, bd);
> +	if (ret) {
> +		backlight_put(bd);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return bd;
> +}
> +EXPORT_SYMBOL(devm_backlight_get);
>  #endif
>  
>  static void __exit backlight_class_exit(void)
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 1d713b3..0bfadb6 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -183,6 +183,16 @@ static inline int backlight_disable(struct backlight_device *bd)
>  	return backlight_update_status(bd);
>  }
>  
> +/**
> + ** backlight_put - Drop backlight reference
> + ** @bd: the backlight device to put
> + **/
> +static inline void backlight_put(struct backlight_device *bd)
> +{
> +	if (bd)
> +		put_device(&bd->dev);
> +}
> +
>  struct generic_bl_info {
>  	const char *name;
>  	int max_intensity;
> @@ -204,11 +214,17 @@ of_find_backlight_by_node(struct device_node *node)
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

-- 
Jani Nikula, Intel Open Source Technology Center


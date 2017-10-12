X-GM-THRID: 6475592721521180672
X-Received: by 10.28.71.131 with SMTP id m3mr315197wmi.19.1507827118505;
        Thu, 12 Oct 2017 09:51:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.157.208 with SMTP id q16ls790814wre.6.gmail; Thu, 12 Oct
 2017 09:51:57 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAWhtvVT1L8nqSoMtHqqBSg4pkrMcPbNeSFU78d4ti70o9oAeTrEEfCw7qcQL0yqwNWiMWL
X-Received: by 10.223.154.245 with SMTP id a108mr324353wrc.9.1507827117821;
        Thu, 12 Oct 2017 09:51:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507827117; cv=none;
        d=google.com; s=arc-20160816;
        b=c0o70jgLnl87sHIGKBy8K8mcq4zg8fk+tQGVRgLIw4SwLcXPhhW1hh4IafdH6wlDxb
         SP/iwuJJ12o8PWVsLDfXaKDxVpI4kAIOEEIU8/WPaWt7T2VluVmYB6ZjicDZj00Yw3Rb
         DvxVmhlQRdfgp/dUvB/tCBKo0K16xtYYvbUj/goYKGIuk//hsDPKovHFrSwkqvYfvLDc
         RG27QLSYMpZt/TLWHr/yK336v5oMSJEOCyKGnfU7XEA9im0YbKpoUiIBCZsyzYfp4HvR
         mgRM5LA+rCh0PIUtkKMquGHY2JGkxV/4oHE7tL4F1buuCOzKQicvNAXSVpQsfJLs58kU
         8YyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=RgiAbktZF0NayqlFMgPZwO4/0Pu0UFGtd2PMM5xrlAM=;
        b=MWET2asTmpI58gJgloYE41teZt7Vhw4em31SYKdqzgEE2kEkcrOM9rKG6JO7kkvk4S
         AfbsZOlVrn3Hyxe6Z5Ywz+I9ysk66434QDIFWxfsQKoStv3D4fZKWffXYcMvcCd5wiGY
         DrV0s/Tkd0qnqul8G7uoO1Gia9ul9uLSAS0c5nejfj4FOWgIxEtBbwIDG6ZgrV8UNcMx
         duervGYv9/gdvq3m1i2QsZ2N2VvSAuHAwVpMp35mF1RuaL12iMgzA/a3LcNIa+INBbJz
         iZEoLCuSYxDUEAJp3UgfnUfDNw6lmI6AObizOcQQ+vkFPDE/XfiKoapWBCEo0fB6dnWi
         5HnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id 196si23205wmk.4.2017.10.12.09.51.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 09:51:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:55241 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e2giC-0003k1-Go; Thu, 12 Oct 2017 18:51:56 +0200
Subject: Re: [PATCH v12 3/3] drm/tinydrm: Add devres versions of backlight_get
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
 daniel.thompson@linaro.org, jani.nikula@linux.intel.com
References: <bde34c13ea289cd2f0c5c0011c1b10db9c6a8c18.1507823238.git.meghana.madhyastha@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <08d64cbe-dc46-3f3e-5d48-39f83b42b08b@tronnes.org>
Date: Thu, 12 Oct 2017 18:51:55 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <bde34c13ea289cd2f0c5c0011c1b10db9c6a8c18.1507823238.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 12.10.2017 17.57, skrev Meghana Madhyastha:
> Add devm_backlight_get and the corresponding release
> function because some drivers use devres versions of functions
> for requiring device resources.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v12:
>   -Move backlight_put() to the patch 2/3 from patch 3/3.
>
>   drivers/gpu/drm/tinydrm/mi0283qt.c  |  2 +-
>   drivers/video/backlight/backlight.c | 25 +++++++++++++++++++++++++
>   include/linux/backlight.h           | 16 ++++++++++++++++
>   3 files changed, 42 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index edf9502..03fec36 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -190,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>   	if (IS_ERR(mipi->regulator))
>   		return PTR_ERR(mipi->regulator);
>   
> -	mipi->backlight = backlight_get(dev);
> +	mipi->backlight = devm_backlight_get(dev);
>   	if (IS_ERR(mipi->backlight))
>   		return PTR_ERR(mipi->backlight);
>   
> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> index f3e95b3..3663f26 100644
> --- a/drivers/video/backlight/backlight.c
> +++ b/drivers/video/backlight/backlight.c
> @@ -623,6 +623,31 @@ static inline void backlight_put(struct backlight_device *bd)
>   		put_device(&bd->dev);
>   }
>   
> +/**
> + ** devm_backlight_get - Resource-managed backlight_get()
> + ** @dev: Device
> + **
> + ** Device managed version of backlight_get(). The reference on the backlight
> + ** device is automatically dropped on driver detach.
> + **/
> +struct backlight_device *devm_backlight_get(struct device *dev)
> +{
> +	struct backlight_device *bd;
> +	int ret;
> +
> +	bd = backlight_get(dev);
> +	if (!bd)
> +		return NULL;
> +	ret = devm_add_action(dev, devm_backlight_get_release, bd);

How can this even compile? Where is devm_backlight_get_release?
Or didn't it change name to devm_backlight_put or something?

> +	if (ret) {
> +		backlight_put(bd);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return bd;
> +}
> +EXPORT_SYMBOL(devm_backlight_get);
> +
>   static void __exit backlight_class_exit(void)
>   {
>   	class_destroy(backlight_class);
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 1d713b3..0bfadb6 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -183,6 +183,16 @@ static inline int backlight_disable(struct backlight_device *bd)
>   	return backlight_update_status(bd);
>   }
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

This is the one that should be moved to to previous patch.

>   struct generic_bl_info {
>   	const char *name;
>   	int max_intensity;
> @@ -204,11 +214,17 @@ of_find_backlight_by_node(struct device_node *node)
>   
>   #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>   struct backlight_device *backlight_get(struct device *dev);
> +struct backlight_device *devm_backlight_get(struct device *dev);
>   #else
>   static inline struct backlight_device *backlight_get(struct device *dev)
>   {
>   	return NULL;
>   }
> +
> +static inline struct backlight_device *devm_backlight_get(struct device *dev)
> +{
> +	return NULL;
> +}
>   #endif
>   
>   #endif



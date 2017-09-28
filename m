X-GM-THRID: 6470705412124442624
X-Received: by 10.25.18.223 with SMTP id 92mr245856lfs.11.1506615584057;
        Thu, 28 Sep 2017 09:19:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.69 with SMTP id 66ls815499ljf.10.gmail; Thu, 28 Sep 2017
 09:19:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBLBNDTypiGckRsSFwHm4hjOQ8C+8ay/C5G5Kum43sELSkSzJC9w1YEN/TCEE6F0123jECx
X-Received: by 10.25.169.1 with SMTP id s1mr253394lfe.29.1506615581102;
        Thu, 28 Sep 2017 09:19:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506615581; cv=none;
        d=google.com; s=arc-20160816;
        b=M6u1Rl/hJcKEN/773TJPmGGkTdYLy5XnOjH6+eO8pxfV5eDmTu8VuiiJixbb9E483m
         KqZVPCIH46I1LJ/usV2xJiYfbCl8KW2Uu25hMlqSB/60FYWp5crrvjaD/kjVtSCS6VDb
         SmTdTVY8aTr5Is2L1hfmlVlPRxROF076enf5Ek810zVCZYMJc3K3hW6qMFMiBN6+QpdV
         ZiBvKYi8jB5SBfdyAwUZ+ucmpboUuBnVq1QgOaOevFCG/vNWHXucnQJ0oQ9yxnPSS8iz
         NqSImuorTCXAbWo6i7POZytnylZYR0PgNjY/L6YVMyO2+DoVPj5gNAXCJKBr+dQtDYdX
         zLCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=IHXVColDeXtH3X9hA+2isOGCHOwMlV21mztowxV8IP0=;
        b=Ynv4omUZPuYmhPnMjW5nJ0kpbWyFD3K5bh42jaLkD+7Km6RvwwS1f6NWurtCMyuirR
         U0fqlU/qYqZx2kHDJAK2TfBmWHLkLe1evIsjMIPqeAD6zHhsC2JC2/45H3N19+PU2ReS
         BwQ3ZOxJRbtwkO71FXaAbyddG1tMjyqTEfPwtBC//CU3Nz1iFgpl+cTTx+t0WKtfnre0
         h1LzAME3VaciK5kO5GfKAb4tH7hkfSdIRpafNRFM7vOehg+2F1hpHYWhLAzE/o/JVEPs
         0LgIcPu2o2Xh1b1ehyIT0Wsa5osfQVFMmqaiEax8LswNV2y42nlLSRd20jv4LLsobE9j
         19HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id v69si80245lfa.5.2017.09.28.09.19.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 09:19:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:55479 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dxbXI-0004WX-0P; Thu, 28 Sep 2017 18:19:40 +0200
Subject: Re: [PATCH v3 2/2] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <bb974658fdf1945e13120b58f77755f8184a7212.1506589807.git.meghana.madhyastha@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <6a467fc9-547e-2469-74fb-92384d2cae71@tronnes.org>
Date: Thu, 28 Sep 2017 18:19:35 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <bb974658fdf1945e13120b58f77755f8184a7212.1506589807.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 28.09.2017 11.15, skrev Meghana Madhyastha:
> Add devm_drm_of_find_backlight and the corresponding release
> function because some drivers such as tinydrm use devres versions
> of functions for requiring device resources.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v3:
> -None
>
>   drivers/gpu/drm/drm_of.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
>   include/drm/drm_of.h     |  2 ++
>   2 files changed, 50 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index d878d3a..238e8e5 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -304,3 +304,51 @@ struct backlight_device *drm_of_find_backlight(struct device *dev)
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

This is an internal function so no need for docs or exporting. I know
that some devm_ functions have explicit release functions, but I don't
think this is necessary since those users can just use
drm_of_find_backlight() directly instead.

> +static void devm_drm_of_find_backlight_release(void *data)
> +{
> +	put_device(data);
> +}
> +EXPORT_SYMBOL(devm_drm_of_find_backlight_release);
> +
> +/**
> + * devm_drm_of_find_backlight - Find backlight device in device-tree
> + * devres version of the function
> + * @dev: Device
> + *
> + * This is the devres version of the function drm_of_find_backlight.
> + * Some drivers such as tinydrm use devres versions of functions for

No need to mention tinydrm here.

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
> diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> index e8fba5b..071fb3b 100644
> --- a/include/drm/drm_of.h
> +++ b/include/drm/drm_of.h
> @@ -30,7 +30,9 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>   				struct drm_panel **panel,
>   				struct drm_bridge **bridge);
>   struct backlight_device *drm_of_find_backlight(struct device *dev);
> +struct backlight_device *devm_drm_of_find_backlight(struct device *dev);
>   #else

We need a dummy version of devm_drm_of_find_backlight() here that
returns NULL as in the previous patch.

> +static void devm_drm_of_find_backlight_release(void *data);

And this isn't needed as explained above.
>   static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
>   						  struct device_node *port)
>   {

I'd appreciate if you could also switch mi0283qt over to this helper :-)

Noralf.




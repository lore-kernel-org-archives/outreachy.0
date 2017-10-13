X-GM-THRID: 6475592721521180672
X-Received: by 10.28.238.220 with SMTP id j89mr220373wmi.6.1507905815654;
        Fri, 13 Oct 2017 07:43:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.157.208 with SMTP id q16ls1413912wre.6.gmail; Fri, 13 Oct
 2017 07:43:35 -0700 (PDT)
X-Received: by 10.28.215.198 with SMTP id o189mr246617wmg.11.1507905815065;
        Fri, 13 Oct 2017 07:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507905815; cv=none;
        d=google.com; s=arc-20160816;
        b=q43nuKH4IFim8YcwNltvI2lUfGVZKHJ7b2DKiudLGDtJAwDenljsKVEdtNi50rJf+v
         Qw8peiBeO7EkCfgNfHce3SmLZbf1e8RUpHEokVMLhVABt99zUMaP6Yo6kYyrigLF1Z6V
         mLwQvXZ/Rl7KTdEF+BKzm6ByHHD7YpAmF1Gqy9MmprVo2mEm9dLZAmxuEqvof/BSP6MN
         acT942qcKCRuITuLXOFpprslpEz+T6PbkEXpJ31r5lJgRG4a7mgDQF4331z9zJkUf3fF
         xfj2xAPwAQQBRRujAbJVI5SwAYwS3npUQnemScyiCv22Ng1bGzn0CZ+HlkUD+VjJNiXw
         VHmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:arc-authentication-results;
        bh=QAiL135mFwAo/wFaNaruttyiDXZ3SIi5M6sBe3Vl9R8=;
        b=swkWnpNVAwspiLjNRLJz7AQYEVM5AsbopGqJXZcUV2fMqBWJjeL8Pkc4z0D2AG2lfv
         s+OpR1I5+SH+enSYDGsav+Zp/5f8/24A2NJgwweaSPhCcUjAe8a+2hm/qpwIUjwRdrKu
         5x9fncNUJBTbeZMggxgZT109qEjCjHiiBZWMQT9dxrpFI03Cck5trsCuxRIUiEkont+f
         XtG3h0LZ2oPI8335j5+oon71QL52R/jolMFBVHVFeXeVjMrl5m5hYhQem6bWP+AglAhR
         mnfL+XyZpbdoKAsUfd1Ozs5mwgA4Nh07+B8qGwZRrYf+aV99+eH5HETNnoGV4h2KeFTa
         1vrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WLExhB2d;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id 200si154753wmj.0.2017.10.13.07.43.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:43:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WLExhB2d;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x22c.google.com with SMTP id m72so21987791wmc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 07:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=QAiL135mFwAo/wFaNaruttyiDXZ3SIi5M6sBe3Vl9R8=;
        b=WLExhB2dp52hHh4Pm2UtNIEe9Cwmk29l1n9TWhBJCZFspKb2XRAv9qP3KHtBVEwcUc
         VPp2kBuS3vZkn+xo5Pmw5DhX8VAtYL/ULuqIzQykBt3NOyU8GchSz5nR4OPITt/eaDGp
         SluP2/QRPGEV81bApGZ3svUbtxvJYjQcDk1Y4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QAiL135mFwAo/wFaNaruttyiDXZ3SIi5M6sBe3Vl9R8=;
        b=jrrdCFNp75xXjm/I77pufpPBVXu88HMR+De8xjySZpzRBP0dMzFEbfMLnFCvCEK7Kn
         SjrebiD7HN0kLyAPFcxbWr4bDWxTMVart4ivKKipRogxTEDfSVyADQJ+y2BURS6CUxzQ
         sjVk5b1w5G8ODzy+ilqLKb6ECxspUo09xm+TVya3RSon9MSA1B4MBsWmPGqJWuv/oGQD
         XzRQGlJrT1Pfn9eFXVocJLOOXD5K4MYdR7kNBEaBpO61KqYmKAdj6aID5YA6QK9Lc2fx
         0bHQRj95Uqq5zkcEkqfRtEtiIhm57ZnBfQaY+Yf4xAhAXaPUefTSJly6UA5t2JKoTf58
         sJSA==
X-Gm-Message-State: AMCzsaXReBAWb+EWiz0XOurKH1PKfh7bVIoUgw1bodO0a8m0fpv8G+tc
	ND44oAi0+PJpBT/8fxDw9+AL6wmHSeA=
X-Google-Smtp-Source: AOwi7QASX5Zu4Ck/hf1YKUK17WQs002O7i2qJLYEhXaQw2Bp47xnjZk9NwfiFkG9Mbj3wqLJKDox/Q==
X-Received: by 10.80.180.138 with SMTP id w10mr2470450edd.27.1507905814625;
        Fri, 13 Oct 2017 07:43:34 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.191] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id y40sm1047508ede.0.2017.10.13.07.43.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:43:33 -0700 (PDT)
Subject: Re: [PATCH v13 3/3] drm/tinydrm: Add devres versions of backlight_get
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 noralf@tronnes.org, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <4b1acbfbddd2a123001e035a62801456891276d5.1507890285.git.meghana.madhyastha@gmail.com>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <e6d0c7c6-b684-f15b-158b-9a189cecf7a1@linaro.org>
Date: Fri, 13 Oct 2017 15:43:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <4b1acbfbddd2a123001e035a62801456891276d5.1507890285.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 13/10/17 11:42, Meghana Madhyastha wrote:
> Add devm_backlight_get and the corresponding release
> function because some drivers use devres versions of functions
> for requiring device resources.

s/requiring/acquiring/


> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

With the above fixed:
Acked-by: Daniel Thompson <daniel.thompson@linaro.org>


> ---
> Changes in v13:
>   -Add devm_backlight_put to backlight.c
> 
>   drivers/gpu/drm/tinydrm/mi0283qt.c  |  2 +-
>   drivers/video/backlight/backlight.c | 31 +++++++++++++++++++++++++++++++
>   include/linux/backlight.h           |  6 ++++++
>   3 files changed, 38 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> index a932185..e3e7583 100644
> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> @@ -189,7 +189,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>   	if (IS_ERR(mipi->regulator))
>   		return PTR_ERR(mipi->regulator);
>   
> -	mipi->backlight = backlight_get(dev);
> +	mipi->backlight = devm_backlight_get(dev);
>   	if (IS_ERR(mipi->backlight))
>   		return PTR_ERR(mipi->backlight);
>   
> diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
> index c4e94d0..b6c505a 100644
> --- a/drivers/video/backlight/backlight.c
> +++ b/drivers/video/backlight/backlight.c
> @@ -617,6 +617,37 @@ struct backlight_device *backlight_get(struct device *dev)
>   }
>   EXPORT_SYMBOL(backlight_get);
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
>   static void __exit backlight_class_exit(void)
>   {
>   	class_destroy(backlight_class);
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 987a6d7..8db9ba9 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -214,11 +214,17 @@ of_find_backlight_by_node(struct device_node *node)
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
> 



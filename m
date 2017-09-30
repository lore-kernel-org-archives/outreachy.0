X-GM-THRID: 6470705412124442624
X-Received: by 10.25.169.1 with SMTP id s1mr463246lfe.29.1506779172942;
        Sat, 30 Sep 2017 06:46:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.17 with SMTP id u17ls1448428ljd.9.gmail; Sat, 30 Sep
 2017 06:46:12 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAcSggbXf4/BQrx0SpVpUXZxyitjIdhC5AQ0ACGXQdN4B7XzDR4RTJYwf78yteiFQJzlDH4
X-Received: by 10.46.91.143 with SMTP id m15mr515215lje.2.1506779172111;
        Sat, 30 Sep 2017 06:46:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506779172; cv=none;
        d=google.com; s=arc-20160816;
        b=YL6s6oVhmI1RKVi2tgMgF/QiwdoBDnieK2niiPPeN9SCEgFZ6Sj2+yYfC49BEZ6CrU
         Plfp+7uRlXNYqnn6Rs9yHA+WAeOJSDqRxg6xBNAjtHPj2y6Xl5AGzQ7ZSYBewcIzjDzh
         f3oaOEeQskGXiudHKWy84gHDInpu5ooNO4Gx9/pnQ4Hp5oTfqvRpcxzu7M5LLi0q/72j
         d5VGlw89xZXLElmz7Re0vK5iASGjpeXM/Jt9r4KX8jWaElxweeQv6kBJ8AyMVLH8a+0R
         wWI08QCuXhB6jsf4ut0TsRJzwk5q51/PS6beGOQlCC+sSp18j98lgJiFHqyORHdlw0Xf
         dEfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=UbKPenB5W2fUWdtND47+IPZribH87U0Se0Fd15I4Rj8=;
        b=1HElmWLLs9mh8MI4HML3To4obslYLp47/eZISPBry0ot/gUYj4tYALIFTf7siyBvkw
         PHberK8ZkgTEIf6jCLfQwqzxWSdjdw19axEDSUako+WnjxXuVUlYWJmqUVD7Y8Aa7HTd
         F5o+hBj/OBZijm1NGgkLvnc2cxyZOKEm5anzZIfUHhz4ACRKI9Wo3B3zAQQCuRCzXSLX
         lsooTg+rN5ZakakgS/rbNieCD/thOrlGo7bR7by+KSwE/G560a4x2Pte3rC/lHE4sgga
         Sp/RgiU8e93GR/ypj3EOypqdQ8PedyoyqtqopHd79Y9BkGzW0z2WVfMT0GgRAV83iknh
         e2RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id v69si232731lfa.5.2017.09.30.06.46.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 06:46:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:49587 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dyI5r-0003jY-5J; Sat, 30 Sep 2017 15:46:11 +0200
Subject: Re: [PATCH v5 3/4] drm/tinydrm: Add the dummy versions of
 drm_of_find_backlight functions
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506762028.git.meghana.madhyastha@gmail.com>
 <d9c1678eeb1b829ce678ddb151878d895bbc9d9a.1506762029.git.meghana.madhyastha@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <b367adf7-db8f-4211-b220-c18cf6393e93@tronnes.org>
Date: Sat, 30 Sep 2017 15:46:07 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <d9c1678eeb1b829ce678ddb151878d895bbc9d9a.1506762029.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 30.09.2017 11.07, skrev Meghana Madhyastha:
> Add the dummy versions (function definition returning -EINVAL) of
> drm_of_find_backlight and devm_drm_of_find_backlight in the #else
> part of the conditional directive in drm_of.h. This is needed
> for drivers where CONFIG_OF is optional.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---

You have to fold this into the previous patches, or else someone bisecting
might end up with a broken build.
And you need to return NULL. This shows that you haven't tried building
with CONFIG_OF=n ;-)

Noralf.

> Changes in v5:
> -Fix the kbuild errors and warnings such as return 0 instead of -EINVAL.
>
>   include/drm/drm_of.h | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
>
> diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> index b2d6e0c..55c9304 100644
> --- a/include/drm/drm_of.h
> +++ b/include/drm/drm_of.h
> @@ -60,6 +60,7 @@ static inline int drm_of_encoder_active_endpoint(struct device_node *node,
>   {
>   	return -EINVAL;
>   }
> +
>   static inline int drm_of_find_panel_or_bridge(const struct device_node *np,
>   					      int port, int endpoint,
>   					      struct drm_panel **panel,
> @@ -67,6 +68,18 @@ static inline int drm_of_find_panel_or_bridge(const struct device_node *np,
>   {
>   	return -EINVAL;
>   }
> +
> +static inline struct backlight_device *drm_of_find_backlight(
> +					struct device *dev)
> +{
> +	return 0;
> +}
> +
> +static inline struct backlight_device *devm_drm_of_find_backlight(
> +						struct device *dev)
> +{
> +	return 0;
> +}
>   #endif
>   
>   static inline int drm_of_encoder_active_endpoint_id(struct device_node *node,



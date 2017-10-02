X-GM-THRID: 6470705412124442624
X-Received: by 10.237.49.163 with SMTP id 32mr18820592qth.49.1507023675352;
        Tue, 03 Oct 2017 02:41:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.159.85 with SMTP id i82ls3645885qke.2.gmail; Tue, 03 Oct
 2017 02:41:14 -0700 (PDT)
X-Received: by 10.55.75.18 with SMTP id y18mr18494189qka.0.1507023674956;
        Tue, 03 Oct 2017 02:41:14 -0700 (PDT)
Received: by 10.233.232.195 with SMTP id a186msqkg;
        Sun, 1 Oct 2017 22:58:10 -0700 (PDT)
X-Received: by 10.223.157.134 with SMTP id p6mr1400472wre.14.1506923890232;
        Sun, 01 Oct 2017 22:58:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506923890; cv=none;
        d=google.com; s=arc-20160816;
        b=LD74T3clCv7trAsg3CCJakFswi9NwgE9Y5PBIDpdItpbgI4yORfhkrogVPqlT+M7Z2
         w+JhYndHokGyy/bzxCVyjWKVFQ6eoHWwDQolfuA+DT/185XSt8kYJV5SvXQzyfdNQaJ4
         zTuIJ0h91OQsO/LDdNlrbB6tMLOxAkTIl7tzq1+0rbuKfqJACBj+FgaHUN6HbPC1Jk3Q
         G0/wNqWBFVBEB6c7cU8DnL3BOHY27u/pOhMnZmQgHdFedh0QCIpmiOgVWAx5w256T5gK
         vH81iKEGUCufwnf3WWEb8GH4DvCX5qQMCn47HcuXRVXxOuUvNUaxUBPluhbwmqv+hZY+
         DGoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:arc-authentication-results;
        bh=unlfAhJ932zUmkfeRo2QLm7KsG0shZ2zjOge4DACx0w=;
        b=xn1yDBIzq5CsQDRFI7rt+JqlwedRoPhFl+/Cpux3vc0to3lh2llbn0s4a6BVFVkDiN
         hqZ/MHL2yplfuvpiDejLVTh6bm6kL0waxczjqRWyCUp5eNGz2VMlTqe4Z4u4dt6BR08n
         S+z+lEtkYLT+vjwOnfpDMY47Ico8RUcg2MbxK7OWpupI0vD/N+ZTUrNZKYrqqJ7BFxfw
         byWHoKHIc7+ed1NQvhSQncYd8+jazNByshpxhi8pTGJ/07PqOwJAjdQNu2BC+QZ++Ze7
         8Z4dopBAnaHITgzM6OlGmCELAnw9P74Ub69icADmJt2il5ry2jVQR8bPFfWpXhNuJX2u
         dA2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=F8nEhpA7;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x229.google.com (mail-wm0-x229.google.com. [2a00:1450:400c:c09::229])
        by gmr-mx.google.com with ESMTPS id 74si132381wme.2.2017.10.01.22.58.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 22:58:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::229 as permitted sender) client-ip=2a00:1450:400c:c09::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=F8nEhpA7;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x229.google.com with SMTP id t69so8297149wmt.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 22:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=unlfAhJ932zUmkfeRo2QLm7KsG0shZ2zjOge4DACx0w=;
        b=F8nEhpA7knGCwxu/XwJKmvYGbn10uohX+ULHG+K8p+0gAMI5kIn2+EV5sxAVV5gzbg
         xBxkrGH9FcYsaU7Wu1Y3I5SOpVMFbbrSfR+cwq55hf0CQjH9OooIqgj/rhdJG+tPevlM
         FY+XRutZAGlF9U1qfmI6WGbvYhq0SZLffl09c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=unlfAhJ932zUmkfeRo2QLm7KsG0shZ2zjOge4DACx0w=;
        b=ARX1HwTuikiT0gLKhHHzC3CwZ3//R3uwnDoVcHNDHZW0iWw/KKoXpY6F5gAJxDBSHz
         2sEyJb3Z+smiIOzWaEioUq5TYWFPdk/DXHtmI95zCLELW/oW1QoCzW26bBHDO7hr4dE0
         kOb/pBF1guQ0vB0SBHF1NxviV81989m1DUemsmX3sNTl/0nOGpp+OtIoV9qnPVMz7EZH
         WAtJttBPM8cBtU9Udovzph+oHlqJl+7sp/MYvMiDQ8LpqnKcR/kDPzln8OEI+db9xGQJ
         FyC6qjbjCkMjcjO6lI/eG22ZkEO/mROtTlN9ut1LLJ2KEW4zkH6j2HTxzcyV6QpEiUsQ
         YA4Q==
X-Gm-Message-State: AHPjjUh+sz6NYqX2Nx5crzVaH75qZN7pDcYv9HiI9atv3bSzpBMuY4MJ
	68AtdYT1lCIlLWuMjnl8ADiqsA==
X-Google-Smtp-Source: AOwi7QCOeORVFQttH7OjYy9rbCkAOJrIq2pRS/o2YMtF9Pm1q62sbigpbMozLABepzhfTqfqR8Loxg==
X-Received: by 10.80.173.185 with SMTP id a54mr18849932edd.70.1506923889818;
        Sun, 01 Oct 2017 22:58:09 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.179] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id g30sm10488294edb.63.2017.10.01.22.58.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 22:58:08 -0700 (PDT)
Subject: Re: [PATCH v7 1/3] backlight: Add
 IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 noralf@tronnes.org, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>
References: <cover.1506878301.git.meghana.madhyastha@gmail.com>
 <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org>
Date: Mon, 2 Oct 2017 06:58:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/10/17 18:26, Meghana Madhyastha wrote:
> Add IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE) as part of the
> if directive for the function declaration of
> of_find_backlight_by_node in order to avoid module dependency
> errors.

Module dependency errors? Does you mean mean use of undefined symbols?


> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> Changes in v7:
> -This patch did not exist in v6.

So I'm coming to this patchset cold but can you explain *why* something 
wants to call of_find_backlight_by_node() when there is no backlight 
support enabled. Why isn't the code that called is conditional on 
BACKLIGHT_CLASS_DEVICE?

The undefined symbol issue is a pain but to be honest I'd rather solve 
the use of undefined symbols by avoiding declaring them; this making 
them into compile errors rather than link errors.


>   include/linux/backlight.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 5f2fd61..a52ce82 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -162,7 +162,7 @@ struct generic_bl_info {
>   	void (*kick_battery)(void);
>   };
>   
> -#ifdef CONFIG_OF
> +#if defined CONFIG_OF && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)

The above comments are more important but why does this mix defined and 
IS_ENABLED? Couldn't they both use defined (and preferably with the 
optional brackets around the CONFIG_ symbol).


Daniel.


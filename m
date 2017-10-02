X-GM-THRID: 6470705412124442624
X-Received: by 10.233.222.71 with SMTP id s68mr18989557qkf.13.1507023675503;
        Tue, 03 Oct 2017 02:41:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.44.187 with SMTP id 56ls6927146qtw.0.gmail; Tue, 03 Oct
 2017 02:41:15 -0700 (PDT)
X-Received: by 10.55.74.202 with SMTP id x193mr18865746qka.4.1507023674946;
        Tue, 03 Oct 2017 02:41:14 -0700 (PDT)
Received: by 10.55.5.130 with SMTP id 124msqkf;
        Sun, 1 Oct 2017 22:59:14 -0700 (PDT)
X-Received: by 10.223.170.156 with SMTP id h28mr227696wrc.27.1506923954116;
        Sun, 01 Oct 2017 22:59:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506923954; cv=none;
        d=google.com; s=arc-20160816;
        b=0jRZHR/IGBGAlDGgMjGLfGWa2bcUoqof7vPOmWEb2mKGNErb0mQOpTR+XFzBfvLZAn
         W55DFXWHJBt5+TgV6KNDXFWThv9NPR2AH8uY9pAcZwPEAYFN+jWSPwukM8pg2BKOBs//
         qZ0m6E6SjRfDs2IJc8ON0MYYys/CWy+Ij+M5vtUfQxGQYi53Pd+yahXauBnd2Ip7iidq
         85Rb5xjqs3KkvTTqLaPkPTGtvfFmGzByqwnZfD8kdpLgf8HTXNZqy5MfUD3Cvny0q9U/
         DJeDI9FzKAxcKSWpmithlawUyjddyl2pvP3V5rzwBXezNPZ5BdRmnAJoNnkAkXOspDVJ
         8o1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:to:from:subject
         :dkim-signature:arc-authentication-results;
        bh=uikFLcphkWXDhRaSB4HasMkSEacp4zowCuBw56FjGDs=;
        b=1A4euS+WRQcvJZPhxQDfdNcgdRgfCvYIbcL0mPq84TOl/ofqB1ssdgqUxJSYZQxf3Y
         i+xsB/kipx8q7PceiKqZGGiWaNKhDTVMUMpLKeNvKJ4+ob34l214oqk0aXHU0JzdN4D5
         kbtYKrKl6SoO2T8All81wNkkppIMa3rR0fY9C3bHK24bPzIoQKgwssYaGqnhpwn4obQz
         A+b6/EWEnAuk6PZp0svRyOH6zfDItemplFoilEPMpai0KtWFi+NGT7HuXz6q9h/H/VMA
         MI448REkSx1HWD7s3L21cfoCO8497GvK0pefNfTUvcE8gqFmx7gTIaMCwniwQHdu9/TI
         6gmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=gCIecm9v;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id 191si930039wmn.2.2017.10.01.22.59.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 22:59:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=gCIecm9v;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x236.google.com with SMTP id e195so4484598wma.5
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 22:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:from:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=uikFLcphkWXDhRaSB4HasMkSEacp4zowCuBw56FjGDs=;
        b=gCIecm9viPahk3P+V0wDv57e61Ni9PFFmlYGEbgtgcGuTTNou4yXjvir25I1ZdZ8HW
         qcH6l4QbWTyX7VODghFIEU/ISkjWKwIwgOQjcZmtpEr9uTh+tACeFMheFef+/PPiQZ0U
         xZsbQubDb8ioLGLIL1d+BXZpg0c1BbM2F+HHY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uikFLcphkWXDhRaSB4HasMkSEacp4zowCuBw56FjGDs=;
        b=h1YqFoA9lxdEusHzGgVStywFNVYkcfXyQ1FeKTItRtsgZu9WxzodS4J5wbhPqeoxeZ
         +epKEOyPy9MeNXNM5RcqCVkhObpq4h5WKw0j0ncqLj83STi+FHgvcrnKFYivBC/TCyL/
         rPX3TEcKbwUQ8NJGYucc+8SSGjPtTL1a2XimMyfEYrN/Ol9QtdRVEMUzLzlXTy50Lp1g
         W/TcOvK6vaTMx4muDVyxs2q8IBNEZdG+eLVom9dWMSqRmA9sG6jUmQN27k5dPUW4JNjP
         /9DSC0bMjTLT3v/fQa/Tp+upD3HJQamANR9dEQKGPB2CyI+oYre1gxbNZ4BHvAcqMbL3
         thjw==
X-Gm-Message-State: AHPjjUjJILB+IQ212ezGJuPIWwS4Q4EMC2cPh/RAKEIfDN2bTR36wS2A
	UZlKnHU1rTNMRYkNhQUDn2HTYA==
X-Google-Smtp-Source: AOwi7QDF/hUZe/WhXuE4p3RYGsiL5MppUuCqDnwG/rdz5jsMtNCtgy8GNs/cWTao0z5RNKn1IcWifQ==
X-Received: by 10.80.151.51 with SMTP id c48mr18840434edb.167.1506923953863;
        Sun, 01 Oct 2017 22:59:13 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.179] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id b8sm8147186eda.35.2017.10.01.22.59.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 22:59:13 -0700 (PDT)
Subject: Re: [PATCH v7 1/3] backlight: Add
 IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 noralf@tronnes.org, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>
References: <cover.1506878301.git.meghana.madhyastha@gmail.com>
 <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com>
 <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org>
Message-ID: <2d372f13-b948-6a47-65cb-fa3f2d8587c5@linaro.org>
Date: Mon, 2 Oct 2017 06:59:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/10/17 06:58, Daniel Thompson wrote:
> On 01/10/17 18:26, Meghana Madhyastha wrote:
>> Add IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE) as part of the
>> if directive for the function declaration of
>> of_find_backlight_by_node in order to avoid module dependency
>> errors.
> 
> Module dependency errors? Does you mean mean use of undefined symbols?

Sorry, drafting error! Could you pretend I wrote "Do you mean use of..." 
instead of the nonsense above!

> 
> 
>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>> ---
>> Changes in v7:
>> -This patch did not exist in v6.
> 
> So I'm coming to this patchset cold but can you explain *why* something 
> wants to call of_find_backlight_by_node() when there is no backlight 
> support enabled. Why isn't the code that called is conditional on 
> BACKLIGHT_CLASS_DEVICE?
> 
> The undefined symbol issue is a pain but to be honest I'd rather solve 
> the use of undefined symbols by avoiding declaring them; this making 
> them into compile errors rather than link errors.
> 
> 
>>   include/linux/backlight.h | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
>> index 5f2fd61..a52ce82 100644
>> --- a/include/linux/backlight.h
>> +++ b/include/linux/backlight.h
>> @@ -162,7 +162,7 @@ struct generic_bl_info {
>>       void (*kick_battery)(void);
>>   };
>> -#ifdef CONFIG_OF
>> +#if defined CONFIG_OF && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> 
> The above comments are more important but why does this mix defined and 
> IS_ENABLED? Couldn't they both use defined (and preferably with the 
> optional brackets around the CONFIG_ symbol).
> 
> 
> Daniel.



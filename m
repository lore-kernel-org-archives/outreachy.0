X-GM-THRID: 6475592721521180672
X-Received: by 10.80.201.74 with SMTP id p10mr539377edh.7.1507800285969;
        Thu, 12 Oct 2017 02:24:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.201.70 with SMTP id p6ls1688215edh.3.gmail; Thu, 12 Oct
 2017 02:24:45 -0700 (PDT)
X-Received: by 10.80.167.162 with SMTP id i31mr538700edc.9.1507800285450;
        Thu, 12 Oct 2017 02:24:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507800285; cv=none;
        d=google.com; s=arc-20160816;
        b=LsLbh4zXXy49W2oEcUNbXa+ra83/CymrU6SU7P+Th++x9Phvk7cFX60APZPfCHZL+c
         Cnu9sEK2wnoUXXoIQ2WJ/yAQ382JRklvucujr3wiOOvI9FQgqZouWd/uHuXImHwB55Mm
         tsU/e0ZVzwqfyFBdt+02cB4PWNLpeHc3w2vBuyWkQB6dS/ngiJf16uef7xy0az8j4Qrd
         wX35Q4+7zN2z8pGsR/VW/fZ/S8V6Q5hpTcqR59hSHZHnBNuul/4CMe8wFWQ8uNsaPUI1
         7dwgM/NWn4/i320hWdAR49MbmHoIOqvuplN5BuTPWgM27kJ/dRNUX1gdzMJFSW6Pg8OV
         +fKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:to:from:subject
         :dkim-signature:arc-authentication-results;
        bh=SrJ2PzZUz6OGFgGgW7qGHy4SwTGFfwbg8+exJoxX9Xg=;
        b=zhTJmOLK7ZLb08q9eZRrrglXKSxgYm4AkOQKilDFfqDtLdVWGPtZjT6T4QkxK7o+rW
         4Vjs95fsv4/pxDS7MNebIbQhR1L9II4oyfga05mox5byq0uDr2/JcvrTzikzAnIT3iKJ
         cAwCa73Z0FZeWgP2eBNC3PhkBwQnYSrQctGHXunz9l/GpPEDRsI6GQdLbh2NL9EHEokw
         fUtcqyspkSsqzw+aX0OXiwrZUdKOIoW2t/+jx3LxD6EetJ4YKcM6uZttxv5KxePfbtlj
         pI98M572eixhz1/2jrFrDYiMXWLK0MuP4OO6RJJMcAckGd7X5TqB2sqo3cEfpDgtrZeh
         TPwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=c/sywiZV;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id h23si155914ede.4.2017.10.12.02.24.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:24:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=c/sywiZV;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x236.google.com with SMTP id k4so11497696wmc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 02:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:from:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=SrJ2PzZUz6OGFgGgW7qGHy4SwTGFfwbg8+exJoxX9Xg=;
        b=c/sywiZVoZHvgEk6dlCS9ZIjiEPjzsiXN/Dmo3KRE9pyeaWia0fQVFc9WqDThDzdf3
         ZyyE+aa7rbOs8+GQUwnM07wAE3MRxXRUZKdmHwhLsVpGjhBdeqRCELgVv3HViFY8cal2
         NHSBYPSZqPVL4d2C0RB0eUREh9LrkQyo4nyIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SrJ2PzZUz6OGFgGgW7qGHy4SwTGFfwbg8+exJoxX9Xg=;
        b=eRDMcopzThCF8c4WkDrxCIgHnDGxjCXNLgGP4tHgyUMLn16bYGrO8a2jzeDLkEBUs4
         vOsq49W2nO167VensqWdXDqgU8NNvMCD4uRVryP5X0r0O9dZb53zOftDIPb+l+rNaP5f
         dCtQTvVhFS1kfulzLA2UhHIaCI0r5r1iKp3zcLjvcF2ECY2MdORXkOaenTitUFEfJI9W
         jC+kiXbEx+MJ6QbV0xqmFjtELhoS8abHhyLhulmcyYRzMJc4Jku5+NNbWiqi9Vqju6Ej
         541Kw1kVTtmVFZcU0x4dC4jsKxhuInR7B6ozKaSKElIugHKQ1FGngiuUbL3CU63PFW+9
         I0BQ==
X-Gm-Message-State: AMCzsaV+Tipz5Qsvtvj4aM49sRiNVNKM2Kdb4XSfmT9c9VPn8xREEF0U
	36iAwOg3bTjtU352+bphT6lO5w==
X-Google-Smtp-Source: AOwi7QBnfKqdezol14il9BhhDzhJ2Uel98i82dnIxJrg09HQvpqvOUYXMzGjHrjGIcaxsVIXxns0pQ==
X-Received: by 10.223.164.2 with SMTP id d2mr1692866wra.103.1507800285221;
        Thu, 12 Oct 2017 02:24:45 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.191] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id h185sm33482624wma.19.2017.10.12.02.24.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:24:44 -0700 (PDT)
Subject: Re: [PATCH v10 0/3] Move backlight helper functions from
 tinydrm-helpers to linux/backlight
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 noralf@tronnes.org, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com
References: <cover.1507799712.git.meghana.madhyastha@gmail.com>
 <fbcd2386-96c1-864a-e9c2-4df430754568@linaro.org>
Message-ID: <f103a048-9e88-f30a-102c-a8891a8cc6e6@linaro.org>
Date: Thu, 12 Oct 2017 10:24:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <fbcd2386-96c1-864a-e9c2-4df430754568@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 12/10/17 10:23, Daniel Thompson wrote:
> On 12/10/17 10:18, Meghana Madhyastha wrote:
>> Move drm helper functions from tinydrm-helpers to linux/backlight for
>> ease of use by callers in other drivers.
>>
>> Changes in v10:
>> -Change enable_backlight to backlight_enable
>>
>> Meghana Madhyastha (3):
>>    drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
>>    drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
>>    drm/tinydrm: Add devres versions of backlight_get
>>
>>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 
>> --------------------------
>>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>>   drivers/gpu/drm/tinydrm/mipi-dbi.c             |  3 +-
>>   drivers/video/backlight/backlight.c            | 71 
>> +++++++++++++++++++ >   include/drm/tinydrm/tinydrm-helpers.h          
>> |  5 --
>>   include/linux/backlight.h                      | 55 +++++++++++++++
>>   6 files changed, 130 insertions(+), 102 deletions(-)
> 
> Are the backlight folks on Cc: for changes to the backlight files? My 
> mail filters have triggered to pick up 0/3 but I don't see the patches 
> themselves...

Ignore this... they are just starting to come through now.


Daniel.


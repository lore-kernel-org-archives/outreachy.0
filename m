X-GM-THRID: 6475592721521180672
X-Received: by 10.80.242.140 with SMTP id f12mr540689edm.1.1507800229036;
        Thu, 12 Oct 2017 02:23:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.195.1 with SMTP id a1ls1691237edb.0.gmail; Thu, 12 Oct 2017
 02:23:48 -0700 (PDT)
X-Received: by 10.80.201.74 with SMTP id p10mr538601edh.7.1507800228098;
        Thu, 12 Oct 2017 02:23:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507800228; cv=none;
        d=google.com; s=arc-20160816;
        b=oNd/tGyYdIeQouKJOPtAerwtIlUfKRIvasw6WMtCQd/JaWOENRnTWWs+26WNDGVjf5
         gLLwTGOitLSbK/6KY3H1Me2TnMkJVK3fpZNAR/EYKYvNZtntBv7pxTGsFe8xEi0ZupmL
         qxGnik3VCKpUbne/JAEy1pr4zdvRK0yflOIpuCmuQuaU6iVNonI/SmsMXzn4osGFvLjr
         dkcAKV/dISz7zyJaZVpseq1XHhYi+3qhhQ4OdJ0nnY12U6098Qpj5UVok+vgAhlD5EE+
         sVAGSKBDtnW4rWDpF4XmpG2vAM8pC3gU96Kb+Wzg0/4cPkstSrDbTCMu9b6jQRulHakA
         kw1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:arc-authentication-results;
        bh=YKyBC1dXRgUMMhaK39T1yylCYqu71037XPv5Y0Oqd1k=;
        b=lS+qKsqWF8r7b6j9LVl8cYADKsJW3taqCQ2XzKQgagq10PrHiwMahhNPExTWBP1/n1
         dimwM6WBhZg9iSu1+YG9TPQzJIYlRlU3Yym2/KMKbW8rSbBAIez2jLiw5OybwXtOq2NM
         1eWeVOd2565oAR12YBBJgsvov8SblwOVje9uBFOB3yOKBHVi7Qep8zZtT9z66OwpdOCx
         hFO5+a8ptUYlqhJqqiv0/W4tItHsZjmxiPIiFTF5B19LglJslsmYUGwlBs7Y6daYK2od
         SE6nHEJrYENtFBtEWfsFf3OA0XojNLR/xnRpP+cBtW3wzcSEGBBYH9mA0LfHYmc2HAT3
         270Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=PjYRuGwp;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id o36si141010edc.5.2017.10.12.02.23.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:23:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=PjYRuGwp;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x22b.google.com with SMTP id i124so11242197wmf.3
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 02:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=YKyBC1dXRgUMMhaK39T1yylCYqu71037XPv5Y0Oqd1k=;
        b=PjYRuGwpYb8Pfc1G0vEc/0qZ0FEIC5khAfKLG/lL6WnP0RxKi5Ah2Cd8zSceyh1MTd
         xAQJxeC9z4EUJHu6cdGSWT67hsSFc6lcByieof71XwcAfdH+YB89U4zOYR1LvxN/FdaJ
         ugYirC6DnK2yFIaUTB8TS969EoJq570jZoKac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YKyBC1dXRgUMMhaK39T1yylCYqu71037XPv5Y0Oqd1k=;
        b=iTawdOrrKgT5/zr1O4Map/Ie6bGWXxFaznM78oLXJ2HRjsJ2H+Yn3d1uer+NdBduc9
         szADhbQv8FAN8dnuvUIbbJFQc4ZdAZEX6f7jheeQfI3Pp14hwMn72mVP2CLRhe57u3HH
         yT7BkdVAT2hBwYUW4a++G+OnRbwdWx1be4FevQl2QedSj6ODKSH+FSYiXwad9WUXoF0E
         Qz6tEOjKsbtEDgn89GjWip5zkW26lgfx3VQaIPkHWNNeD/eG0WZpfeBJ9wxNhxBT+HW/
         UXb3JwA4VA+dB7Y6iXNv2ashdt7rdP6e0NdvEQpws1cboZJolwQ/2BotZnaVoNydcJDV
         xnqg==
X-Gm-Message-State: AMCzsaWZwklo+RsRQwbmrcfFkh2Gos3/bB5JeN0h0DtsHDNtBqnlBxsi
	1o8LlrCXHyiEkiNDwa5s3RVIkg==
X-Google-Smtp-Source: AOwi7QAXatd7r2ZK9MujEY5SQO9Nx8cfzeAooT/DcSFiyCydZuUZVD2EzBsmTBG0QFE7CdLPsYM2sw==
X-Received: by 10.223.139.85 with SMTP id v21mr1639556wra.70.1507800227809;
        Thu, 12 Oct 2017 02:23:47 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.191] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id c142sm18749871wmh.39.2017.10.12.02.23.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 02:23:47 -0700 (PDT)
Subject: Re: [PATCH v10 0/3] Move backlight helper functions from
 tinydrm-helpers to linux/backlight
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 noralf@tronnes.org, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com
References: <cover.1507799712.git.meghana.madhyastha@gmail.com>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <fbcd2386-96c1-864a-e9c2-4df430754568@linaro.org>
Date: Thu, 12 Oct 2017 10:23:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <cover.1507799712.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/10/17 10:18, Meghana Madhyastha wrote:
> Move drm helper functions from tinydrm-helpers to linux/backlight for
> ease of use by callers in other drivers.
> 
> Changes in v10:
> -Change enable_backlight to backlight_enable
> 
> Meghana Madhyastha (3):
>    drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
>    drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
>    drm/tinydrm: Add devres versions of backlight_get
> 
>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 --------------------------
>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>   drivers/gpu/drm/tinydrm/mipi-dbi.c             |  3 +-
>   drivers/video/backlight/backlight.c            | 71 +++++++++++++++++++ >   include/drm/tinydrm/tinydrm-helpers.h          |  5 --
>   include/linux/backlight.h                      | 55 +++++++++++++++
>   6 files changed, 130 insertions(+), 102 deletions(-)

Are the backlight folks on Cc: for changes to the backlight files? My 
mail filters have triggered to pick up 0/3 but I don't see the patches 
themselves...


Daniel.



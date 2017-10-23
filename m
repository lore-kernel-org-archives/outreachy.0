X-GM-THRID: 6475592721521180672
X-Received: by 10.28.141.66 with SMTP id p63mr538275wmd.8.1508754865966;
        Mon, 23 Oct 2017 03:34:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.181.129 with SMTP id c1ls4225809wre.9.gmail; Mon, 23 Oct
 2017 03:34:25 -0700 (PDT)
X-Received: by 10.223.182.9 with SMTP id f9mr1008032wre.21.1508754865019;
        Mon, 23 Oct 2017 03:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508754864; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZQJ37MkZd9z8VSXChG/T38uQsKzlmF9iTPACAwAlFgqbEn5nxpoiVN+GxqTqmM/un
         wvxovVb4xWjBhSo++YBiBRuwGcYw9R1PZvZqDGiDlWffU7zSoYpAQG5mnRAgzzsTW3TG
         hjblK1bRbB/apUaLecbDrqqnJ10UYjzIlc38DwiO9/TXAE4mZikRxeBuLh3uCk+tu562
         mpnF4wX4k8x8jO7t/5TTKcmH/fZPqNay/GH7c4sToD7dNTQsX1M6X4UODbV1C668vILx
         1DKz2bqAXZ/elJ5FT/fgvoUL67Z4gOZuYusJjgc4sM6bDpFGxcTe5E7pfCSH93NNbu8U
         +Ihg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:arc-authentication-results;
        bh=s5uxRH62lDAZ35t0CIulqscSD2B1PCSJqYFGJXDdvlI=;
        b=d/hP25AI3djS0lmh3DSoK6+q71zhzjm+LX7vpvlEXWPHbUVJwNrOo/FDmFL/f/VFZb
         GgrgF3wrnFyP2yowEAax5ggqbo17Fl4TFoX0mnB8xlUbT5L8BZvu3tXkUlnx5P5gy6tV
         mMTa+7o9O99RrFxdItFEh/InAa6KRrcChIc1ff30hv5rky1aa4TwRCnWv/6Uo2+wt8uJ
         caSiYHGZ98HfmBh3m/5cG+571mKrSbM0rlaJii3wkpWKwsn49s73g7QflmbFV8ne25lV
         /7CSRhJ/uZrAQ9X43F9QVHtnNMxbxsbLDgUN9rTRb7QkIhca4xu0Y350691TWpRfM/U5
         nssA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=D6v8mFeU;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id n82si176336wma.2.2017.10.23.03.34.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Oct 2017 03:34:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=D6v8mFeU;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x230.google.com with SMTP id b189so8500144wmd.4
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Oct 2017 03:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=s5uxRH62lDAZ35t0CIulqscSD2B1PCSJqYFGJXDdvlI=;
        b=D6v8mFeU8pBZ6j5tWmmOhEDxFBeTaepko+A7bVHLi/8joYSL7eRp9q7VimYKupUJKO
         Y56ysG2JuZ5P1j4oQZ4wvNKulyYGSrC6VImcnpCyMaICgDYCBDYA3+b+h3vJpRcaREyD
         KXWO6zOyNXzo1/6vepnhz409QNbVafgnMfOUQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=s5uxRH62lDAZ35t0CIulqscSD2B1PCSJqYFGJXDdvlI=;
        b=RV6lLdcSA1rdQ6lZvByOh5gR1nu/tHGOf76NSnHAEF17Nh+p8TjOFRJnWftLsSCeUZ
         +kbqEDsKjxlfDsypNAoxs39PWjdCEmblS7O0WdO+FfkZTbD+sn52QoibfLdS2yuSOdk9
         BG37fDIQDx8d8jKkue7dapPp+9aBdQqImviN/SLtVTgvUVKs63LrHZKWORZoLAupGjV2
         ENPP8ja20dkpjSMSlWxV226LgdeH2zPM/QqKRITRtKD/gMiY7oJLjtonihM040qityvF
         1Nlztm9aPsEmHYKisdFqBhDkvKYZmbIs4zZZyO/B9OYdAQrCFfS31TwH7MaMyk02Anu+
         9kMw==
X-Gm-Message-State: AMCzsaUeTmP9cfFQ5YvSDLMF2m2Y82Qpb/5Kn4zfGC6rlcGULS3vgECa
	HMs3A+ECVRCe3yWUprgSX2eUmQJ3yPE=
X-Google-Smtp-Source: ABhQp+QQXqbn2d7v15Tx3xCasdVssJ/90+d/0IeX4CjqFNg2WrMrw5SyvbkWrfHyrQCey7Yn9CP+kA==
X-Received: by 10.80.184.165 with SMTP id l34mr15559662ede.53.1508754864767;
        Mon, 23 Oct 2017 03:34:24 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.191] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id t10sm519868edb.92.2017.10.23.03.34.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Oct 2017 03:34:24 -0700 (PDT)
Subject: Re: [PATCH v14 0/3] Move backlight helper functions from
 tinydrm-helpers to linux/backlight
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 noralf@tronnes.org, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com
References: <cover.1508586429.git.meghana.madhyastha@gmail.com>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <4ca6e72d-30de-dc06-2ca6-1dbd6b10b8b4@linaro.org>
Date: Mon, 23 Oct 2017 11:34:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <cover.1508586429.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 21/10/17 12:55, Meghana Madhyastha wrote:
> Changes in v14:
> - s/backlight_get/of_find_backlight/ in patch 2/3
> - Change commit message in patch 3/3 from requiring to acquiring

Can you take a look at
https://www.spinics.net/lists/dri-devel/msg154459.html ? This doesn't 
seem to have been acted on... and nor was it challenged ;-) .


Daniel.


> 
> Meghana Madhyastha (3):
>    drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
>    drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
>    drm/tinydrm: Add devres versions of of_find_backlight
> 
>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 --------------------------
>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>   drivers/gpu/drm/tinydrm/mipi-dbi.c             |  5 +-
>   drivers/video/backlight/backlight.c            | 68 ++++++++++++++++++
>   include/drm/tinydrm/tinydrm-helpers.h          |  4 --
>   include/linux/backlight.h                      | 56 +++++++++++++++
>   6 files changed, 129 insertions(+), 102 deletions(-)
> 



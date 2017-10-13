X-GM-THRID: 6475592721521180672
X-Received: by 10.46.80.65 with SMTP id v1mr77422ljd.14.1507905403612;
        Fri, 13 Oct 2017 07:36:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.214 with SMTP id g83ls1097685lji.15.gmail; Fri, 13 Oct
 2017 07:36:40 -0700 (PDT)
X-Received: by 10.46.4.26 with SMTP id 26mr78150lje.22.1507905400971;
        Fri, 13 Oct 2017 07:36:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507905400; cv=none;
        d=google.com; s=arc-20160816;
        b=HunRtyZFwSOuD1cjAV8r3wNHnnAc4WDpzehbOhF8IVv6VUi/4GeKgAYaR1W0r7cRXq
         hWWlo2NNNzsCEwkRAlSf8ANfw5KNkhlhertv/uYC6WMlNmkVyjafNuvVkENNgQ18XxwT
         e9HCAEMJBVj6LDAufvO/pFBhEEy5I7JpzuEeSb/C/z07Z8yqq++K6M7Pp8gr/rkSX5lP
         mf7cYOwC+3P+l8D712QRFWrddLLHCVlBNRbLkn6BLQ4QldP/cfIEjptpMTfH6SmXdhyy
         yg2r1G7eD+HwAC96+iX3CqpCT5+CSheRcLwML/4q3We8tl2MZysRrCRAqnpwsOSSjaBK
         CdSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:arc-authentication-results;
        bh=8sU+eWVyei2tezfKIM5/TLmhmOEN7QbUygDxVlsYNLA=;
        b=SJliQgfqaBdvM+dUONTCw+v0VT/tsy9GmjbeuszdEVpNKilDDEtRbuKxz1i3+TqZCm
         7A0juAj+BIw9oTljXYBkG0ywbkGfrtPLg99mNFrUOegqc6+zPeVj8o51vw+I5D5+5GWS
         jySv6Dx5YwJeCpKlEVBBIZ/Kd4BliwUvt1mDVBFJM9OHRvbubNvFJqJyhlC4yXwIvNV5
         uxgx5LqoNm7mrrcqlldk1npIfm4gbltL/S0a/WoK2/UUqJ7UZWb6i9TUGKYhIG/K7u5L
         MowUmbTnoISZvYHOw76uxMhwgtMIRvz8cy4pAbpXhc6+hv8v1w+Xxq9fRF+0p7WyhMjQ
         f5TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=RYkZp95c;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id j65si57635lje.3.2017.10.13.07.36.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:36:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=RYkZp95c;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x230.google.com with SMTP id u138so22339373wmu.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 07:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=8sU+eWVyei2tezfKIM5/TLmhmOEN7QbUygDxVlsYNLA=;
        b=RYkZp95cq5ITfe1X+iVS0w+PlnX58noSaEA77DAF1T//E3b60pX1B1g5YGCm5I/vKC
         ihmNIsiJw9dM4KmqiQn+Iln6xpwYvr0KHe7VqlGCE/rWMl6WFNlIGzJk2fcxNgUGlLER
         lOV8BHXfA5SqTUtl+KYKs+V3gOeR2k5oktTCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8sU+eWVyei2tezfKIM5/TLmhmOEN7QbUygDxVlsYNLA=;
        b=WbiZUa+hCp3WCBegsfdxVrDh08W7Fi+Ro83wYVb/llfK/ktDnFgrSIKUzZDKI9ARJM
         erGgT5JMm6pVNpRq6DFG0n+LmSCoInh56kkuCUx8Lr99rdtJ3h1jjruvSoe6xpN5wct9
         ElnuS05wpq+pTIIwwQDQHO+KQ/a1rUGG3HRhiSFA+J4eRjqQ3HdIxb/TN77grZt3141p
         vIIc1QvCldy05DwCtVA+M3f7AgYJOJq+opAUngHUqNQ7vjb40D+rGuaHW8znsNPJmZ76
         /U0/7r2tAB0RT/KKtudIeEpRRgAI8udM36PeHCaw2d+ooE4rXUPUj26so47bEx2i1UTL
         HSdw==
X-Gm-Message-State: AMCzsaUrw//ZNlB2gwFF0mGiXgIlujy2r+NwREkLmTBhz/SoFehSHEMO
	5HJLXpTNHO3o1PeMn1SoWqHrpw==
X-Google-Smtp-Source: AOwi7QDv1yVhpIS2PYjR5dQEnxE1P6xR56L1YbSWdH/jh0mOabv0Nib6Zn5hZ3x8SEzCIVDv6nU+7w==
X-Received: by 10.80.144.104 with SMTP id z37mr2422490edz.23.1507905400500;
        Fri, 13 Oct 2017 07:36:40 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.191] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id x10sm1102797edb.24.2017.10.13.07.36.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:36:39 -0700 (PDT)
Subject: Re: [PATCH v13 1/3] drm/tinydrm: Move helper functions from
 tinydrm-helpers to backlight.h
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 noralf@tronnes.org, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <203e216d74645b795687a29786c97209d1785167.1507890285.git.meghana.madhyastha@gmail.com>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <89d5d9b9-d56b-b8d2-c575-a5c5cfcf2802@linaro.org>
Date: Fri, 13 Oct 2017 15:36:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <203e216d74645b795687a29786c97209d1785167.1507890285.git.meghana.madhyastha@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 13/10/17 11:40, Meghana Madhyastha wrote:
> Move the helper functions enable_backlight and disable_backlight
> from tinydrm-helpers.c to backlight.h as static inline functions so
> that they can be used by other drivers.
> 
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
> <snip>
> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
> index 5f2fd61..b88fabb 100644
> --- a/include/linux/backlight.h
> +++ b/include/linux/backlight.h
> @@ -129,6 +129,36 @@ static inline int backlight_update_status(struct backlight_device *bd)
>   	return ret;
>   }
>   
> +/**
> + * backlight_enable - Enable backlight
> + * @bd: the backlight device to enable
> + */
> +static inline int backlight_enable(struct backlight_device *bd)
> +{
> +	if (!bd)
> +		return 0;
> +
> +	bd->props.power = FB_BLANK_UNBLANK;
> +	bd->props.state &= ~BL_CORE_FBBLANK;

I wonder if we should be updating bd->probs.fb_blank here?

The semantics around bd->probs.fb_blank is a bit nasty (alright, a lot 
nasty). Essentially it's a duplicated copy of the BL_CORE_FBBLANK bit 
with a different bit pattern. Its part of a refactoring that git tells 
me has been 8 years in the making (and counting)...

However, so long as we've got it, I would prefer to keep it consistent 
with the BL_CORE_FBBLANK bit, both here...


> +
> +	return backlight_update_status(bd);
> +}
> +
> +/**
> + * backlight_disable - Disable backlight
> + * @bd: the backlight device to disable
> + */
> +static inline int backlight_disable(struct backlight_device *bd)
> +{
> +	if (!bd)
> +		return 0;
> +
> +	bd->props.power = FB_BLANK_POWERDOWN;
> +	bd->props.state |= BL_CORE_FBBLANK;
... and here.


Daniel.


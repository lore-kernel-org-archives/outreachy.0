X-GM-THRID: 6475592721521180672
X-Received: by 10.223.150.76 with SMTP id c12mr1045820wra.9.1508754945726;
        Mon, 23 Oct 2017 03:35:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.130.196 with SMTP id 62ls2188466wrc.8.gmail; Mon, 23 Oct
 2017 03:35:45 -0700 (PDT)
X-Received: by 10.223.175.196 with SMTP id y4mr1020289wrd.30.1508754945030;
        Mon, 23 Oct 2017 03:35:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508754944; cv=none;
        d=google.com; s=arc-20160816;
        b=JCRs+OzCVKLCr/xeTpY/ATVeGhyjXNUiqYkDQpjDtohzj8k1rmobcSZS5hU3ygRsjb
         XmX1RuMjI1y04ZT4XSB1Ct/tDLAG/eQoMLJW2rY1zPir19kAt3zMzTs+oOhTMCSmWsDW
         qpQ737l+EO/iRjUnIHzTCxwThwW6H6aHqpcQgtAkUlIkkrLLnhJHn0yCufx834GkfAde
         n46FZiKlIpM8d+2NrIyBuQoHzQzRi6gNlK6S9V9SZLyI9k9VJnBO9q83D3F0C6j/mSdh
         U6D6otpezRz6SdhrlaRp5TdMdfLelu2mjtlGuDs/hciuF/o9WNZGgR3nY2LCFqLFgAZG
         3Zbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=c/j1fXh5rWoOkDqE9j6V97pWyFmQRwA/OFETwXTQF9Q=;
        b=Ub3AjSp842qGyBzrzeuWFhapms2hqABo1J2E8QvlLsmUcRTsgTQpMC2AkRA7GGHBXw
         iCLRliaN4sW0I8JhOZ/vu0y+7pGA02B3Wd6dV6HY2gQiNxLuyXjkZW5XH1idUCV7oxfr
         FiQ3HhJwwehY89gle/4bq8KBRu7MTzNwuQKmuVcXfXowhIAvJ3GlRsQjxedy2wnl+HV4
         AnPqwvruzPDsLm8RSakRschQgSfUgFQDzIvjZdPGvALPSiuU99o4ZyFDGq5imxJl/lP7
         DhwhtQiPuSxMfPpaowS5uvoPyYlzjDWklFwxinhRi458oGlE5rFoBuGCbclHGKKrnJTv
         1l6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MM6ZBxc4;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id b8si273755wrf.5.2017.10.23.03.35.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Oct 2017 03:35:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MM6ZBxc4;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x236.google.com with SMTP id u138so8860088wmu.4
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Oct 2017 03:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=c/j1fXh5rWoOkDqE9j6V97pWyFmQRwA/OFETwXTQF9Q=;
        b=MM6ZBxc4dKR34g6dOT38cXv8rWqkNcuhW/VXmQ541sp0uEYemJjE5AfLfsMVt607+D
         LvNO4NzlK45ACuD/hxYfktnn8CV+iLpobtjkwjFMKea9GALegnfA6P300o+3ToPdVvOW
         kY7fN8osD0X86HWQ2H4S8m8bh6AXELn55cVRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=c/j1fXh5rWoOkDqE9j6V97pWyFmQRwA/OFETwXTQF9Q=;
        b=MoNLV8LBBNDIamg/9F02r0MZLc22aFspRMy31dM7AivpvNU1Z5Dz9AMJBprm6osyfU
         cflkUM7prwS+uRiVEXLOrpS1b2QhTr52TI/mA6XNWOzhgVwdduoUqAWGe53wpwbz4zLP
         AOlOz2w4xLQ2jvv5y6jWMBQ/gBwk04Xm7S0f3QHj3+MjkdTXg793txL9T6bpvRamOQ/8
         PrrR+lpm4P5+R+Ug9fr1mTBXTCPhxh87fqkxr5SPEmIi9d/OMEmmF6SNLWn2pxhR8Ocu
         fjuolbF9YWbLhbc5TjvaZCeYJo+AvkLfSzGqN6PRIUAKM9gHJq+WEYSHWLFGM8v9fYsE
         ZcTQ==
X-Gm-Message-State: AMCzsaUaqmRLCOzMQxIXoq8FV8yELTJKtEI3tPRIJmZlDR0zhZNwMEo+
	N09svrjW+a0vgnv9YM+XG7dITg==
X-Google-Smtp-Source: ABhQp+SmzNfBumburCKkcw01WODD9c9zpW+0vax6IwqUgQM/Yi4Hs+JDIfPo1BqG5ls+jTe6beqijg==
X-Received: by 10.80.170.107 with SMTP id p40mr9740824edc.158.1508754944733;
        Mon, 23 Oct 2017 03:35:44 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.191] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id r15sm6420681edi.52.2017.10.23.03.35.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Oct 2017 03:35:43 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH v13 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
To: Sean Paul <seanpaul@chromium.org>,
 Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
 <20171013202557.s7r2ec67sl646vtj@art_vandelay>
 <e2772dfa-f62b-619f-e186-79ea2819aea3@tronnes.org>
 <CAOw6vb+j+KFXaeRyog9sROvzxYDhgx+GP97bPokFNNO-By5Hvg@mail.gmail.com>
 <20171018171132.GA8116@meghana-HP-Pavilion-Notebook>
 <CAOw6vbKjhx7b72tAQLkv7fmyv_Q3wcK72PPTAzeQ=XHe_bNL1w@mail.gmail.com>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <0aaf90a3-640c-e772-d0bb-17149ca52aa7@linaro.org>
Date: Mon, 23 Oct 2017 11:35:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAOw6vbKjhx7b72tAQLkv7fmyv_Q3wcK72PPTAzeQ=XHe_bNL1w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 20/10/17 18:20, Sean Paul wrote:
> On Wed, Oct 18, 2017 at 1:11 PM, Meghana Madhyastha
> <meghana.madhyastha@gmail.com> wrote:
>> On Mon, Oct 16, 2017 at 02:26:00PM -0400, Sean Paul wrote:
>>> On Fri, Oct 13, 2017 at 6:42 PM, Noralf Trønnes <noralf@tronnes.org> wrote:
>>>>
>>>> Den 13.10.2017 22.25, skrev Sean Paul:
>>>>>
>>>>> On Fri, Oct 13, 2017 at 04:11:43PM +0530, Meghana Madhyastha wrote:
>>>>>>
>>>>>> Rename tinydrm_of_find_backlight to backlight_get and move it
>>>>>> to linux/backlight.c so that it can be used by other drivers.
>>>>>
>>>>> [apologies if this has been brought up in previous versions, I haven't
>>>>> been
>>>>> following closely]
>>>>>
>>>>> I don't think "backlight_get" is a good name for this function. How about
>>>>> of_find_backlight_by_name (since there's already
>>>>> of_find_backlight_by_node)?
>>>>
>>>>
>>>> I came up with that name modelled after gpiod_get() and gpiod_put() and I
>>>> deliberately kept the of_ part out of the name like the gpio functions.
>>>> gpiod_get() checks OF, ACPI and platform for gpios and calling it
>>>> backlight_get() would keep the door open for other ways of connecting
>>>> backlight devices in the future, other than Device Tree.
>>>>
>>>
>>> Thanks for the background, Noralf! Apologies for stepping on top of
>>> your previous reviews.
>>>
>>>> I think of_find_backlight() would be better than *_by_name(), since
>>>> 'backlight' is the common DT property name, so it wouldn't make much sense
>>>> to require every caller to pass in the same name.
>>>>
>>>
>>> of_find_backlight() sounds like a good compromise.
>>>
>>> Sean
>>
>> Are there any changes that need to be made to this patchset now ?
>>
> 
> I still prefer s/backlight_get/of_find_backlight/ and it seems Noralf
> is Ok with that too. I think there were also review comments
> surrounding the _put function?

How did this conversation result in a new patchset with the name changed?

Did I miss something.


Daniel.


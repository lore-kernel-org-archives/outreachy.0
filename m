X-GM-THRID: 6475592721521180672
X-Received: by 10.28.156.145 with SMTP id f139mr1091393wme.10.1508849508693;
        Tue, 24 Oct 2017 05:51:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.111.140 with SMTP id c12ls132503wmi.5.gmail; Tue, 24 Oct
 2017 05:51:47 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+T0QxGe+0gmUg0FdWuQKLvYhuklN/9LDoCZjmkBxFUHEb1o0uYYNskEKgBqoelltzEyljIk
X-Received: by 10.223.174.195 with SMTP id y61mr1301504wrc.27.1508849507780;
        Tue, 24 Oct 2017 05:51:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508849507; cv=none;
        d=google.com; s=arc-20160816;
        b=sBlOkKY+0I3dWYkyOePQ6H4GgeIPR1sipwzTJ7StXim7UJUKSOl/2pOwPiQp/vfpN0
         H3Yf7YiSi5wui5s3LuSX7sAKR2F7TW/WZM29EfeJ1kKzbeNYAKnaolR1xmopLdRe/DtM
         TugJcwqayZRuYWSC3MRQ1Wsn/XpxClcMIGPWnnZcmlN5ZV57rc32rOLU4FxjiNCENXRO
         A1tRifN4DEVkOzOSxZ6BrftftqeXUQMV+YEc06vUFQ3q07LoNusI85lBX481S/Yb+La5
         mFDBEVtwvVaXDa4/4uL18uiSZVi7BnSpnzWQmtQgqIFJR6DMjZEnYA0SrvtgcRxHZ8WG
         82xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=aEhPks74PSXLR2opYQlwiFqYN2HtnLm3Qsjkxky4PaE=;
        b=qmmcsErJl7UxWJxpNrhFXFFgjS2ShWbUbt6JUkSpFKHZQGhOC2WAuMQrrrxUIU34Qs
         qG9AaEvqqW5wbBElGEFe+hlviuRVSWlPUqLShCGNEqNL45RbbyO2lbI77oXF3gqbAa77
         7jNTIsYqhcgnXxb+sDWLXXLMX/cCxiB07d+eJAJWL7ug4e/676k3w0xwSx4vzlYQPc4c
         oLJ6m16KdR3nFbDiygKeqQuZMIqjxonO6/+FXlvi4v2wNttJEyYnLVfVAg2panfUWwgh
         B4Q+jPFp+X2zT7dbwPnQPsRJSQsj4HkuHQv8wcY1O7cMeCD/mlfUaoGHYeHLuUeOxVvR
         mdeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E34b6vU2;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c0c::233 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wr0-x233.google.com (mail-wr0-x233.google.com. [2a00:1450:400c:c0c::233])
        by gmr-mx.google.com with ESMTPS id e29si15107wrg.2.2017.10.24.05.51.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 05:51:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c0c::233 as permitted sender) client-ip=2a00:1450:400c:c0c::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E34b6vU2;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c0c::233 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wr0-x233.google.com with SMTP id w105so11238813wrc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 05:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aEhPks74PSXLR2opYQlwiFqYN2HtnLm3Qsjkxky4PaE=;
        b=E34b6vU2Ib0+U3YvqeTgkPjsm/nf/1O9ANE72TsrIjeAgWR/IEHQD1JpfbO27PSng1
         cEQ1jv85f9LWxSF8BlI4H8BRnb4XrKojCDlBsawCMS+30qGq91xfWtlJB/Ssdg95jk1O
         49zmSk5EipNYizGSKTGjmFS+Q1DMo/khjB9qI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aEhPks74PSXLR2opYQlwiFqYN2HtnLm3Qsjkxky4PaE=;
        b=btnGUYXVOAGfPabYn1s0aVPEGtXqjSK6+xh1bDlxPhRpTecu2TDefkyk51mZsPNOdh
         uNvnBZu8BQHMAarKvo0GyQ8WmAJgR0kdAIfH/MXULh5afPY25MpDkGRsoalEcdEEShG0
         fVBu0Bf1qTJMZRh57rJhIEhnYyDoDiehT7op1akUJS8akhVKqNgb4XOi+2UMzzumyPDH
         fVk7AITwq2SgmC8C3WqZ88dJKhCgIH+8ub+SZVgQxd1b2JusQxGx6keva3rruOd9D6VD
         Ij8xBFtqEy3CQ8YPT+RALxTvn7b2uno4waWl3pgWhJkE1xxATubiIZ3gs61MyZxYr2an
         Ur7A==
X-Gm-Message-State: AMCzsaXpYJbqXxSg1dogOR+fs7xcMvPftIHWsP2fDgEyNCZAyGMCCweA
	t0I0r2GyAk2v5JHSD5wD0pD32A==
X-Received: by 10.223.142.180 with SMTP id q49mr2533101wrb.142.1508849507433;
        Tue, 24 Oct 2017 05:51:47 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.191] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id v76sm299844wmd.35.2017.10.24.05.51.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 05:51:46 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH v13 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
To: Sean Paul <seanpaul@chromium.org>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
 <e2ef05bf46438427d08c6a61fe5058156800db95.1507890285.git.meghana.madhyastha@gmail.com>
 <20171013202557.s7r2ec67sl646vtj@art_vandelay>
 <e2772dfa-f62b-619f-e186-79ea2819aea3@tronnes.org>
 <CAOw6vb+j+KFXaeRyog9sROvzxYDhgx+GP97bPokFNNO-By5Hvg@mail.gmail.com>
 <20171018171132.GA8116@meghana-HP-Pavilion-Notebook>
 <CAOw6vbKjhx7b72tAQLkv7fmyv_Q3wcK72PPTAzeQ=XHe_bNL1w@mail.gmail.com>
 <0aaf90a3-640c-e772-d0bb-17149ca52aa7@linaro.org>
 <20171024121635.xoebjoxtvezdzgnu@art_vandelay>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <f1b206d9-50e8-830b-6f50-5e360098db16@linaro.org>
Date: Tue, 24 Oct 2017 13:51:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171024121635.xoebjoxtvezdzgnu@art_vandelay>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 24/10/17 13:16, Sean Paul wrote:
> On Mon, Oct 23, 2017 at 11:35:42AM +0100, Daniel Thompson wrote:
>> On 20/10/17 18:20, Sean Paul wrote:
>>> On Wed, Oct 18, 2017 at 1:11 PM, Meghana Madhyastha
>>> <meghana.madhyastha@gmail.com> wrote:
>>>> On Mon, Oct 16, 2017 at 02:26:00PM -0400, Sean Paul wrote:
>>>>> On Fri, Oct 13, 2017 at 6:42 PM, Noralf Trønnes <noralf@tronnes.org> wrote:
>>>>>>
>>>>>> Den 13.10.2017 22.25, skrev Sean Paul:
>>>>>>>
>>>>>>> On Fri, Oct 13, 2017 at 04:11:43PM +0530, Meghana Madhyastha wrote:
>>>>>>>>
>>>>>>>> Rename tinydrm_of_find_backlight to backlight_get and move it
>>>>>>>> to linux/backlight.c so that it can be used by other drivers.
>>>>>>>
>>>>>>> [apologies if this has been brought up in previous versions, I haven't
>>>>>>> been
>>>>>>> following closely]
>>>>>>>
>>>>>>> I don't think "backlight_get" is a good name for this function. How about
>>>>>>> of_find_backlight_by_name (since there's already
>>>>>>> of_find_backlight_by_node)?
>>>>>>
>>>>>>
>>>>>> I came up with that name modelled after gpiod_get() and gpiod_put() and I
>>>>>> deliberately kept the of_ part out of the name like the gpio functions.
>>>>>> gpiod_get() checks OF, ACPI and platform for gpios and calling it
>>>>>> backlight_get() would keep the door open for other ways of connecting
>>>>>> backlight devices in the future, other than Device Tree.
>>>>>>
>>>>>
>>>>> Thanks for the background, Noralf! Apologies for stepping on top of
>>>>> your previous reviews.
>>>>>
>>>>>> I think of_find_backlight() would be better than *_by_name(), since
>>>>>> 'backlight' is the common DT property name, so it wouldn't make much sense
>>>>>> to require every caller to pass in the same name.
>>>>>>
>>>>>
>>>>> of_find_backlight() sounds like a good compromise.
>>>>>
>>>>> Sean
>>>>
>>>> Are there any changes that need to be made to this patchset now ?
>>>>
>>>
>>> I still prefer s/backlight_get/of_find_backlight/ and it seems Noralf
>>> is Ok with that too. I think there were also review comments
>>> surrounding the _put function?
>>
>> How did this conversation result in a new patchset with the name changed?
>>
>> Did I miss something.
>>
> 
> I asked the name be changed to of_find_backlight and that backlight_put be
> removed.

Quite so.

Sorry, I was filtering my mail way too fast and misread your comment as 
"I still prefer backlight_get" :-O
That was my problem with reading, not your problem with writing.


Daniel.


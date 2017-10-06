X-GM-THRID: 6470705412124442624
X-Received: by 10.25.67.30 with SMTP id q30mr86352lfa.40.1507313102347;
        Fri, 06 Oct 2017 11:05:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.86.197 with SMTP id k66ls3660521lje.2.gmail; Fri, 06 Oct
 2017 11:05:01 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBlUIITwHEnZNH/6plx2k3BDpLfS4xgDVSiy6gkF1Vx+D6WRNmDqbsNtp5IfroooxnKDdjh
X-Received: by 10.46.82.9 with SMTP id g9mr109508ljb.42.1507313101006;
        Fri, 06 Oct 2017 11:05:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507313100; cv=none;
        d=google.com; s=arc-20160816;
        b=XUz7mQQhquejpfU1gBlVOT+JG0dWJidZut06d6jOBScshYByTtcLlRtm44G5o5OYgw
         21Uvg4tvKevFDhzClxqcqWAGaXimIT9sld56bOqzLkGma9JaIKK/51P/XqJHMvQxkE6B
         joLZN+w7MQ0ErG9TEJBtXHcTQM/l3WsMrRSJ9MAjEFV/oa/JeJx2in55YzU3E5Ab9olM
         mQ57Zjd/dEjCQeC8JqMMWomTtSg4rdarikXvHtkurPOb/k0a/tVLUveLpY0GRRj2xOSX
         HJzOf7vr4z4LTjLaNFJEbjYUS+Qj7kTyHQ4hUlVprRA4VGJK6mVJw3pkGBVB7Ei1TMdk
         kziw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=RqNx+qq5h7R2hGWOCzaF0VZiYTZOQZrvWoOhRtQiQY4=;
        b=CIFjlOpfPwg4s0E+8f8TS4jEd7Q2GlAbGsiI7IKdfuH8Myx21X8W4vBVrbBEj0uBni
         ZLH76/kZUmQUMBXeUT0KVuLdQSoBTcHMN9uNQf/960rjJuW6+FtQH5p0Wz6I1FDOIluE
         rBLi+V1eG+WM62H4uikaR41BQ0y94Szxug0e6o2nW8TBo9MGtOzwylAXBqhYwHdNITt/
         yVuKGTLhOiwurkd9mNdxXZ66Ix9by/rU9iqT+0FKqhFZhNJFndJWcIeAdCbmZEEgd/38
         sBqFSBAPSO8A0zPvob+bGsQjRawQDZ1z4uUxyHz8vBaNP4ZDI1FF/wVP6ncgt/kUJOLZ
         S8ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id 198si85814lfa.2.2017.10.06.11.05.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 11:05:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:53557 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e0Wzc-0005NV-0E; Fri, 06 Oct 2017 20:05:00 +0200
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <b87bff83-e9af-e095-2b58-8a0b3fb642e0@tronnes.org>
 <20170929122025.GA29498@meghana-HP-Pavilion-Notebook>
 <4b32d910-f0af-e9cb-feb7-4bc4174bc9c3@tronnes.org>
 <20170929141324.GA30107@meghana-HP-Pavilion-Notebook>
 <08dd8e6a-3028-098e-e193-9f408c6a9633@tronnes.org>
 <20171002074718.jinjkmc76igo2lkx@phenom.ffwll.local>
 <87y3ou55nx.fsf@intel.com> <3b0e7a80-fe29-1732-63c7-3a84568e617e@tronnes.org>
 <bf92a0e6-66e4-b830-aa32-b4c6d899f4de@tronnes.org>
 <623db97b-5b65-88d2-0ff6-69abd8602b0d@tronnes.org>
 <20171005035350.GB28390@meghana-HP-Pavilion-Notebook>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <c472af4a-920d-8506-f1d7-a0154aeb5f53@tronnes.org>
Date: Fri, 6 Oct 2017 20:04:59 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171005035350.GB28390@meghana-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 05.10.2017 05.53, skrev Meghana Madhyastha:
> On Tue, Oct 03, 2017 at 07:38:29PM +0200, Noralf Trønnes wrote:
>> Den 03.10.2017 18.02, skrev Noralf Trønnes:
>>> Den 03.10.2017 16.58, skrev Noralf Trønnes:
>>>> Den 02.10.2017 10.13, skrev Jani Nikula:
>>>>> On Mon, 02 Oct 2017, Daniel Vetter <daniel@ffwll.ch> wrote:
>>>>>> Also adding Jani, who looked at the backlight Kconfig mess in the
>>>>>> past.
>>>>> I've even sent patches to fix some of the dependency mess, but the
>>>>> problem is social not technical. The problem is that people think
>>>>> "select" is more convenient than "depends" because they can just enable
>>>>> a config that way, while "depends" would require finding and enabling
>>>>> all the dependencies before the menu option even shows up.
>>>>>
>>>>> I don't deny, that's annoying. But it's also abuse of select, see
>>>>> Documentation/kbuild/kconfig-language.txt:
>>>>>
>>>>>     Note:
>>>>>      select should be used with care. select will force
>>>>>      a symbol to a value without visiting the dependencies.
>>>>>      By abusing select you are able to select a symbol FOO even
>>>>>      if FOO depends on BAR that is not set.
>>>>>      In general use select only for non-visible symbols
>>>>>      (no prompts anywhere) and for symbols with no dependencies.
>>>>>      That will limit the usefulness but on the other hand avoid
>>>>>      the illegal configurations all over.
>>>>>
>>>>> The real fix would be making finding and enabling dependencies
>>>>> recursively more convenient, but I don't see that happening anytime
>>>>> soon.
>>>> If we don't select BACKLIGHT in drivers, we can end up with CONFIG_DRM=y
>>>> and CONFIG_BACKLIGHT_CLASS_DEVICE=m.
>>>>
>>>> So we can either do:
>>>>
>>>> menuconfig DRM
>>>>      depends on (BACKLIGHT_CLASS_DEVICE || BACKLIGHT_CLASS_DEVICE=n)
>>>>
>>> No, this was the thing that didn't work:
>>>
>>> drivers/gpu/drm/Kconfig:7:      symbol DRM depends on
>>> BACKLIGHT_CLASS_DEVICE
>>> drivers/video/backlight/Kconfig:158:    symbol BACKLIGHT_CLASS_DEVICE is
>>> selected by DRM_RADEON
>>> drivers/gpu/drm/Kconfig:164:    symbol DRM_RADEON depends on DRM
>>>
>> How about putting the dependency in the driver combined with IS_REACHABLE,
>> but not in backlight.h as I first proposed, that won't work:
>>
>>   menuconfig DRM_TINYDRM
>> -    select BACKLIGHT_LCD_SUPPORT
>> -    select BACKLIGHT_CLASS_DEVICE
>> +    depends on (BACKLIGHT_CLASS_DEVICE || BACKLIGHT_CLASS_DEVICE=n)
>>
>>
>> struct backlight_device *drm_of_find_backlight(struct device *dev)
>> {
>>      struct backlight_device *backlight;
>>      struct device_node *np;
>>
>>      if (!IS_REACHABLE(CONFIG_BACKLIGHT_CLASS_DEVICE))
>>          return NULL;
>> [...]
>> }
>>
>> But the IS_REACHABLE doesn't feel right.
>>
>> Maybe the problem is putting a function in DRM that really doesn't
>> belong there. How about calling it of_find_backlight() instead and
>> put it in backlight.[hc]?
> Wouldn't it make more sense to put the function in DRM ? Because all of
> the callers are located in DRM and so I'd think it makes more sense to
> put it in DRM along with the other _of functions.

I don't think it matters where the callers are, but the fact that the 
functions
are all about backlight and nothing about DRM, except the error messages.

I've made a suggestion in the last version where we have backlight 
maintainer attention.

Noralf.

>> Noralf.
>>
>>>> Or we can:
>>>>
>>>> -#ifdef CONFIG_OF
>>>> +#if IS_ENABLED(CONFIG_OF) &&
>>>> IS_REACHABLE(CONFIG_BACKLIGHT_CLASS_DEVICE)
>>>>   struct backlight_device *of_find_backlight_by_node(struct device_node
>>>> *node);
>>>>   #else
>>>>   static inline struct backlight_device *
> I have one question. Why isn't your previous solution a good solution?
> i.e IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE) which was part of v7
>
>>>> Using the second one it won't be obvious to users why backlight doesn't
>>>> work,
>>>> they have after all enabled backlight (but as module and DRM builtin).
>>>>
>>>> So I suppose the first one is preferred.
>>>> What effect will such a change have on an existing configuration where
>>>> DRM=y and BACKLIGHT_CLASS_DEVICE=m? Will DRM become a module or will it
>>>> be disabled?
> Why would it be disabled in this case ?
>
> Thanks and regards,
> Meghana
>
>>>> Noralf.
>>>>
>>>> _______________________________________________
>>>> dri-devel mailing list
>>>> dri-devel@lists.freedesktop.org
>>>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>>>>
>>> _______________________________________________
>>> dri-devel mailing list
>>> dri-devel@lists.freedesktop.org
>>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>>>



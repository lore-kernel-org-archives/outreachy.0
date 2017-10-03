X-GM-THRID: 6470705412124442624
X-Received: by 10.200.22.163 with SMTP id r32mr17164253qtj.43.1507023675351;
        Tue, 03 Oct 2017 02:41:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.159.85 with SMTP id i82ls3645886qke.2.gmail; Tue, 03 Oct
 2017 02:41:14 -0700 (PDT)
X-Received: by 10.55.159.5 with SMTP id i5mr10282662qke.47.1507023674956;
        Tue, 03 Oct 2017 02:41:14 -0700 (PDT)
Received: by 10.233.232.195 with SMTP id a186msqkg;
        Tue, 3 Oct 2017 01:51:52 -0700 (PDT)
X-Received: by 10.223.139.198 with SMTP id w6mr1792401wra.4.1507020712527;
        Tue, 03 Oct 2017 01:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507020712; cv=none;
        d=google.com; s=arc-20160816;
        b=BMDeM3+wNXhVWcXbZ49ftDDE76wqZm0CVdrpr9OyRBClc151VEqaYoeVqm6vu1I21c
         Yy32tN9GWbZmu5PrN9TbAOfvcneK5O+j/NgRb4AG4EzTXWn49yAfce3JyqBdmPDnx749
         nHGpisU7LU95ghUs5H+7GtgljIwLl55I0Nw/Gy/QesG9ZBYF6bbyD+tHf1r7OJaxe6kf
         4B+uguNy0bGcEDaSw9ppWAoLrsaZ/Qqe08zw1zxHav7S1vrlDlGoK2YAmmpX2Ea+gzq9
         YOLwmGlMXfDiQAVr9U2P29vjBW8+0Ajabj/8VlQxN87tjgAU4pvZ+3YjE1oXiAVu8Fq7
         vkpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=GE0RccbcAxVRBrNpfnzwIe/ciFjRVLQtAKvPXoD3gDM=;
        b=j5R3T52rpmthsuPlQY1fkH8LichQ4aGDGRB4HCOIUVHUT+OFHGEo7lbY4xzrAvCedo
         MBdOAb0FfngAoRz0fheAiC0uHBj2N8Q6nmramYvzZySwGRxBAHnkZa9MLVukbH7SfhEP
         6hooteyPrLbwOqja8Y2YTg21vUluopIvyvwylNXkuKCld4y6i/jgpHYOoyfzfzeKDFo/
         AhGDZdrNCjH1LSX7YGo/g3G8q2t87YNTuJLklEVwDvPMd2bCCf+1wZn+tSzI5IimBadR
         JOZRf0ob1yZmtFXQzOTQVdQGz/LKXmN693U4wvRh45OONtOiIuWsH9JUsiwx0PoiIRJr
         qkvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hvzbPTC2;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id p70si1331719wma.1.2017.10.03.01.51.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 01:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hvzbPTC2;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x22f.google.com with SMTP id t69so15098695wmt.2
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 01:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GE0RccbcAxVRBrNpfnzwIe/ciFjRVLQtAKvPXoD3gDM=;
        b=hvzbPTC2Z9PYQqabMXTFuYtsWCMxDFHQJEUqdmQAHoujEv2nWgVJFMLR7zxoGXsMFw
         vtW8JXF/JKuLSlJTANrxqC/pO/3h14wejlH8qYd5s+sDgqQjxNoH/DwavUPHSmw3aP/6
         zF4TIOP5IxIXqYycnkWrDWG3Qa+7YZLzYoeNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GE0RccbcAxVRBrNpfnzwIe/ciFjRVLQtAKvPXoD3gDM=;
        b=gv/0ExvMHKNJchpu3eajYNTNkpKJ0RPMaQBCgwazQKdZqpmq1FYvTB3gtQkBsJ1Dcm
         yR0YIC3JsLzGb5DfA/Cttsu3xYbHsokgInk8T0yfZVPzQxThPzlJBPGL9q0FzOk+fK+z
         FjddrvxILnzS/RuB4M6MIh0FkkntjxH+WbD4ScmQkUTVU0umELGgLFn3ckDL+Rc/YcL9
         agyp0p1oFWmHczCH+rsJ7j20iMDPeDRr3FYZpQbhh7hcecc0BPspJl6mCAxchCjSNv82
         1yp2xUP63THHaL9Dwi/LABnup6dzLdkudkr/iDhE8z1mX+wgYfnX54j/ljw47Hi25Tl2
         aVcg==
X-Gm-Message-State: AMCzsaWK+BuQQQJX1R0PXCrhz/S1uMbLiVuDFlqYZP5+Ib7xB+03urqp
	YILpL/fJiPP3rOjQ6oDYf+BUlg==
X-Google-Smtp-Source: AOwi7QDMUCo66VtPK0U9sxuLBnh5+9kQ1T/uHo+vwWugng3iBP6KvjCiGltg5X4DwWWPEp9ECAc9cw==
X-Received: by 10.80.194.10 with SMTP id n10mr11964686edf.202.1507020712065;
        Tue, 03 Oct 2017 01:51:52 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.124] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id e29sm12617169edd.28.2017.10.03.01.51.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 01:51:50 -0700 (PDT)
Subject: Re: [PATCH v7 1/3] backlight: Add
 IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
To: Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>, noralf@tronnes.org,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
 Lee Jones <lee.jones@linaro.org>
References: <cover.1506878301.git.meghana.madhyastha@gmail.com>
 <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com>
 <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org> <87o9pp6i0p.fsf@intel.com>
 <20171003080341.wvdgtgw6uuwcpmj4@phenom.ffwll.local>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <464023c9-9fef-1372-93df-a54f43524ebb@linaro.org>
Date: Tue, 3 Oct 2017 09:51:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171003080341.wvdgtgw6uuwcpmj4@phenom.ffwll.local>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 03/10/17 09:03, Daniel Vetter wrote:
> On Mon, Oct 02, 2017 at 12:00:54PM +0300, Jani Nikula wrote:
>> On Mon, 02 Oct 2017, Daniel Thompson <daniel.thompson@linaro.org> wrote:
>>> So I'm coming to this patchset cold but can you explain *why* something
>>> wants to call of_find_backlight_by_node() when there is no backlight
>>> support enabled. Why isn't the code that called is conditional on
>>> BACKLIGHT_CLASS_DEVICE?
>>>
>>> The undefined symbol issue is a pain but to be honest I'd rather solve
>>> the use of undefined symbols by avoiding declaring them; this making
>>> them into compile errors rather than link errors.
>>
>> Typically the kernel header files define static inline stubs of the
>> functions when the actual functions aren't configured/built. The code
>> using the functions looks the same regardless of the config option, and
>> handles the -ENODEV or NULL or whatever returns from the stubs
>> gracefully. With the inlines, the compiler can usually throw out much of
>> the code anyway.
>>
>> In this regard, the backlight interface is an exception, forcing the
>> callers to wrap the code around IS_ENABLED(BACKLIGHT_CLASS_DEVICE), not
>> the rule.
> 
> fwiw, I think it'd be great if we can move backlight over to the common
> pattern, like everyone else. It's pretty big pain as-is ...

For sure, after Jani's mail yesterday I looked at the GMA500 driver and 
concluded I didn't want code related to backlight having to look like that!

Currently the three main patterns of use are:

  1. Standalone drivers simple depend on BACKLIGHT_CLASS_DEVICE,
  2. Some compound drivers select BACKLIGHT_CLASS_DEVICE (the AMD DRM
     driver is an example of this),
  3. Other compound drivers perform heroics with the pre-processor.

The main reason I'm not just agreeing straight away is that, to adopt 
the static inline pattern for the whole API, we have to believe that #3 
above is desirable. Given the size and scope of the compound drivers in 
#3 above, I don't entirely understand why they want to avoid the select.


Daniel.


PS Whatever the outcome here, I do agree 100% that is wrong to prototype
    undefined symbols. That must be changed!


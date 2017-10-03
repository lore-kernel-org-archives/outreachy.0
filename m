X-GM-THRID: 6470705412124442624
X-Received: by 10.46.84.69 with SMTP id y5mr855245ljd.37.1507052314937;
        Tue, 03 Oct 2017 10:38:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.4.83 with SMTP id 80ls2463195lje.17.gmail; Tue, 03 Oct 2017
 10:38:33 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAD8nABu9DafpEpjZA2fAZTJ/I3Wm//nfL5zEZeEkw9qLS6jvt3THZrVkZD6lseCQFCUZmT
X-Received: by 10.25.39.202 with SMTP id n193mr716946lfn.13.1507052313401;
        Tue, 03 Oct 2017 10:38:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507052313; cv=none;
        d=google.com; s=arc-20160816;
        b=tZs0VsTwIaO7pIpeNmQt8zE9lG6fHwOWX17lpNymuEjz56+Z0i85etKLOyNHKt/xuJ
         pFPhyv1wJomGrpi9r9Ug8W0//xKI14bfaV+Lq+KWck/ocXKub1WIiLSi9+Pc34ayb5zl
         hTu869Il3+0I3Ci6UZngS4KI4fGbVIskbrJW5jsLqDehivDs4AKG33NPTexn9tfYGqyE
         ICTXNz6cbkYIA237YD3Ns9w7Oy8oXtB13bwfpjxxcQoyhTwFoovJN/bxEmICT+b/I31Z
         E78yjVgcvuybzR4ndP02C5LW6mHxzwHdp4+wwHHgx0FODYfNXa9BW7ZpYo3N6EAt+MQF
         dmCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:arc-authentication-results;
        bh=ouCCkyu0iR4No51zHeCI98tewl2uBdzrkJmp2oNDvH8=;
        b=qtdiNBdfza+8VnsDFRiPM0tm4y2SjspPNgp0/+1wNUWSetgrkxSopBD4fBi91UWCD5
         lawpHL0SdTVTCaQ+DcHMoRLImzl9beWS6WQ1Z4BBU0BaFJIRo4bVw7ZRs4dI2wfkWJs1
         bt7i5D1u1Gv6utbnyv0Gdkkf8w98Bu3qdr6ofBf5+udG6wKoRatMoX43u4PkjZH4crf8
         FIdz13IMoEN/nYvjCOCt6MZlnBWoRov5XufeCPLPm+1GePGJl+qiaY+hwHDeVb7HFCxN
         kp0nMyl3L9joxDb+G8j2Sn9P9vCn+hvZxJmb0STZWIdvBUWep5GGiAQUSZ9iuqHC4prX
         vQCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id d4si117234lfg.7.2017.10.03.10.38.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 10:38:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:50107 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dzR9M-0007y3-9U; Tue, 03 Oct 2017 19:38:32 +0200
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
To: Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
 <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local>
 <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org>
 <20170929032231.GB9859@meghana-HP-Pavilion-Notebook>
 <b87bff83-e9af-e095-2b58-8a0b3fb642e0@tronnes.org>
 <20170929122025.GA29498@meghana-HP-Pavilion-Notebook>
 <4b32d910-f0af-e9cb-feb7-4bc4174bc9c3@tronnes.org>
 <20170929141324.GA30107@meghana-HP-Pavilion-Notebook>
 <08dd8e6a-3028-098e-e193-9f408c6a9633@tronnes.org>
 <20171002074718.jinjkmc76igo2lkx@phenom.ffwll.local>
 <87y3ou55nx.fsf@intel.com> <3b0e7a80-fe29-1732-63c7-3a84568e617e@tronnes.org>
 <bf92a0e6-66e4-b830-aa32-b4c6d899f4de@tronnes.org>
Message-ID: <623db97b-5b65-88d2-0ff6-69abd8602b0d@tronnes.org>
Date: Tue, 3 Oct 2017 19:38:29 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <bf92a0e6-66e4-b830-aa32-b4c6d899f4de@tronnes.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 03.10.2017 18.02, skrev Noralf Trønnes:
>
> Den 03.10.2017 16.58, skrev Noralf Trønnes:
>>
>> Den 02.10.2017 10.13, skrev Jani Nikula:
>>> On Mon, 02 Oct 2017, Daniel Vetter <daniel@ffwll.ch> wrote:
>>>> Also adding Jani, who looked at the backlight Kconfig mess in the 
>>>> past.
>>> I've even sent patches to fix some of the dependency mess, but the
>>> problem is social not technical. The problem is that people think
>>> "select" is more convenient than "depends" because they can just enable
>>> a config that way, while "depends" would require finding and enabling
>>> all the dependencies before the menu option even shows up.
>>>
>>> I don't deny, that's annoying. But it's also abuse of select, see
>>> Documentation/kbuild/kconfig-language.txt:
>>>
>>>    Note:
>>>     select should be used with care. select will force
>>>     a symbol to a value without visiting the dependencies.
>>>     By abusing select you are able to select a symbol FOO even
>>>     if FOO depends on BAR that is not set.
>>>     In general use select only for non-visible symbols
>>>     (no prompts anywhere) and for symbols with no dependencies.
>>>     That will limit the usefulness but on the other hand avoid
>>>     the illegal configurations all over.
>>>
>>> The real fix would be making finding and enabling dependencies
>>> recursively more convenient, but I don't see that happening anytime
>>> soon.
>>
>> If we don't select BACKLIGHT in drivers, we can end up with CONFIG_DRM=y
>> and CONFIG_BACKLIGHT_CLASS_DEVICE=m.
>>
>> So we can either do:
>>
>> menuconfig DRM
>>     depends on (BACKLIGHT_CLASS_DEVICE || BACKLIGHT_CLASS_DEVICE=n)
>>
>
> No, this was the thing that didn't work:
>
> drivers/gpu/drm/Kconfig:7:      symbol DRM depends on 
> BACKLIGHT_CLASS_DEVICE
> drivers/video/backlight/Kconfig:158:    symbol BACKLIGHT_CLASS_DEVICE 
> is selected by DRM_RADEON
> drivers/gpu/drm/Kconfig:164:    symbol DRM_RADEON depends on DRM
>

How about putting the dependency in the driver combined with IS_REACHABLE,
but not in backlight.h as I first proposed, that won't work:

  menuconfig DRM_TINYDRM
-    select BACKLIGHT_LCD_SUPPORT
-    select BACKLIGHT_CLASS_DEVICE
+    depends on (BACKLIGHT_CLASS_DEVICE || BACKLIGHT_CLASS_DEVICE=n)


struct backlight_device *drm_of_find_backlight(struct device *dev)
{
     struct backlight_device *backlight;
     struct device_node *np;

     if (!IS_REACHABLE(CONFIG_BACKLIGHT_CLASS_DEVICE))
         return NULL;
[...]
}

But the IS_REACHABLE doesn't feel right.

Maybe the problem is putting a function in DRM that really doesn't
belong there. How about calling it of_find_backlight() instead and
put it in backlight.[hc]?

Noralf.

>> Or we can:
>>
>> -#ifdef CONFIG_OF
>> +#if IS_ENABLED(CONFIG_OF) && 
>> IS_REACHABLE(CONFIG_BACKLIGHT_CLASS_DEVICE)
>>  struct backlight_device *of_find_backlight_by_node(struct 
>> device_node *node);
>>  #else
>>  static inline struct backlight_device *
>>
>> Using the second one it won't be obvious to users why backlight 
>> doesn't work,
>> they have after all enabled backlight (but as module and DRM builtin).
>>
>> So I suppose the first one is preferred.
>> What effect will such a change have on an existing configuration where
>> DRM=y and BACKLIGHT_CLASS_DEVICE=m? Will DRM become a module or will it
>> be disabled?
>>
>> Noralf.
>>
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>>
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>



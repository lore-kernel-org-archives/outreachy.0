X-GM-THRID: 6470705412124442624
X-Received: by 10.46.91.143 with SMTP id m15mr422007lje.2.1506699669787;
        Fri, 29 Sep 2017 08:41:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.4.83 with SMTP id 80ls1212438lje.17.gmail; Fri, 29 Sep 2017
 08:41:08 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBVOKeo4PXE3HaHhTCITDs1I7FzpQZf3oJuis1tYNFkEt9fWha7bp/xmp1+RBKSoLdo9+kW
X-Received: by 10.46.23.218 with SMTP id 87mr411318ljx.30.1506699668267;
        Fri, 29 Sep 2017 08:41:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506699668; cv=none;
        d=google.com; s=arc-20160816;
        b=NBv+ln7/uEeKo+GQ+VVwUU/2uZcNmG+OrHoT5bx9WkBe2LOF1WQWY2pgclnJQJ3DV5
         mv/cWyADBLuRBBuwus63n5aT4eNEpdEPERk3FPt3vc45aUmSiqae9nLh4O281AF1GZQ0
         1zVazv9e8LQMVn8/m4gq8x5yZ1LJj51b9od8/NtrukmRHJtGsvqePxysKfeBD/9pxpUR
         VCXSXv3cnYTyipuhy2F04xLs8zUh0W/G6t4uk6xp+vXKaK1cU8+aUnQYfy5F/OjlhkVE
         8OHiE83qS3RBio5vtCOlc9O8cdM2urx2Q5y+KBOp+YOQfKoOhGaPQBy/3a8Bs5hQY6YZ
         gxrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=zRptTZPeRIlF8fsVsbjHxMmUz/OgROO+SF67Tho6iuI=;
        b=DGXkckrwv9sYyMap2NLZeny9p82Xm5K+ZMG6J+T4/bj7XPjNWdPYjy9I02Ioia2lEy
         z9NGe+KznKhd7NXi7x1nLwkqsx9a4fz/BEUvevEcYt84oai/arwbNufttUzOcMDSfy3Q
         3sqBMiD55uaHHHRP96aCpFYc7GwOjn3iU3ysc8d1qhc5pPYggGmdIGD3c1ebzj2YaDVI
         J+OsEhL4xHZxiL+xce1mJRP+dEAZZ2fXQ7Ab7/3qNal3qB7vrWsnsd5EHKIimFad24Wy
         MVGJJd1UcnuoyZHtVht9rF0xgL/6SMqT5mnt1JqppSNbF7Dy5alL3VR2HL9eUYxTnmYq
         VQAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id u82si184852lfg.0.2017.09.29.08.41.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 08:41:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:60533 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dxxPX-0004Bl-8T; Fri, 29 Sep 2017 17:41:07 +0200
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
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
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <08dd8e6a-3028-098e-e193-9f408c6a9633@tronnes.org>
Date: Fri, 29 Sep 2017 17:41:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170929141324.GA30107@meghana-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 29.09.2017 16.13, skrev Meghana Madhyastha:
> On Fri, Sep 29, 2017 at 02:33:12PM +0200, Noralf Trønnes wrote:
>> Den 29.09.2017 14.20, skrev Meghana Madhyastha:
>>> On Fri, Sep 29, 2017 at 02:10:31PM +0200, Noralf Trønnes wrote:
>>>> Den 29.09.2017 05.22, skrev Meghana Madhyastha:
>>>>> On Thu, Sep 28, 2017 at 06:02:27PM +0200, Noralf Trønnes wrote:
>>>>>> Den 28.09.2017 16.08, skrev Daniel Vetter:
>>>>>>> On Thu, Sep 28, 2017 at 02:44:34PM +0530, Meghana Madhyastha wrote:
>>>>>>>> Rename tinydrm_of_find_backlight to drm_of_find_backlight
>>>>>>>> and move it into drm_of.c from tinydrm-helpers.c. This is
>>>>>>>> because other drivers in the drm subsystem might need to call
>>>>>>>> this function. In that case and otherwise, it is better from
>>>>>>>> an organizational point of view to move it into drm_of.c along
>>>>>>>> with the other _of.c functions.
>>>>>>>>
>>>>>>>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>>>>>>>> ---
>>>>>>>> Changes in v3:
>>>>>>>> -Change it back to a single patch from two patches in v2
>>>>>>>>
>>>>>>>>   drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
>>>>>>>>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
>>>>>>>>   drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>>>>>>>>   include/drm/drm_of.h                           |  1 +
>>>>>>>>   include/drm/tinydrm/tinydrm-helpers.h          |  1 -
>>>>>>>>   5 files changed, 47 insertions(+), 42 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
>>>>>>>> index 8dafbdf..d878d3a 100644
>>>>>>>> --- a/drivers/gpu/drm/drm_of.c
>>>>>>>> +++ b/drivers/gpu/drm/drm_of.c
>>>>>>>> @@ -1,6 +1,7 @@
>>>>>>>>   #include <linux/component.h>
>>>>>>>>   #include <linux/export.h>
>>>>>>>>   #include <linux/list.h>
>>>>>>>> +#include <linux/backlight.h>
>>>>>>>>   #include <linux/of_graph.h>
>>>>>>>>   #include <drm/drmP.h>
>>>>>>>>   #include <drm/drm_bridge.h>
>>>>>>>> @@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>>>>>>>>   	return ret;
>>>>>>>>   }
>>>>>>>>   EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
>>>>>>>> +
>>>>>>>> +/**
>>>>>>>> + * drm_of_find_backlight - Find backlight device in device-tree
>>>>>>>> + * @dev: Device
>>>>>>>> + *
>>>>>>>> + * This function looks for a DT node pointed to by a property named 'backlight'
>>>>>>>> + * and uses of_find_backlight_by_node() to get the backlight device.
>>>>>>>> + * Additionally if the brightness property is zero, it is set to
>>>>>>>> + * max_brightness.
>>>>>>>> + *
>>>>>>>> + * Note: It is the responsibility of the caller to call put_device() when
>>>>>>>> + * releasing the resource.
>>>>>>>> + *
>>>>>>>> + * Returns:
>>>>>>>> + * NULL if there's no backlight property.
>>>>>>>> + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
>>>>>>>> + * is found.
>>>>>>>> + * If the backlight device is found, a pointer to the structure is returned.
>>>>>>>> + */
>>>>>>>> +struct backlight_device *drm_of_find_backlight(struct device *dev)
>>>>>>>> +{
>>>>>>>> +	struct backlight_device *backlight;
>>>>>>>> +	struct device_node *np;
>>>>>>>> +
>>>>>>>> +	np = of_parse_phandle(dev->of_node, "backlight", 0);
>>>>>>>> +	if (!np)
>>>>>>>> +		return NULL;
>>>>>>>> +
>>>>>>>> +	backlight = of_find_backlight_by_node(np);
>>>>>>>> +	of_node_put(np);
>>>>>>>> +
>>>>>>>> +	if (!backlight)
>>>>>>>> +		return ERR_PTR(-EPROBE_DEFER);
>>>>>>>> +
>>>>>>>> +	if (!backlight->props.brightness) {
>>>>>>>> +		backlight->props.brightness = backlight->props.max_brightness;
>>>>>>>> +		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>>>>>>>> +			      backlight->props.brightness);
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	return backlight;
>>>>>>>> +}
>>>>>>>> +EXPORT_SYMBOL(drm_of_find_backlight);

<snip>

>>>>>> Another problem I discovered when trying to compile this, is that if
>>>>>> DRM is builtin and LCD_CLASS_DEVICE is a module:
>>>>>>
>>>>>> drivers/gpu/drm/drm_of.c:292: undefined reference to
>>>>>> `of_find_backlight_by_node'
>>>>>>
>>>>>> I see that I solved this in tinydrm by just selecting
>>>>>> BACKLIGHT_LCD_SUPPORT and LCD_CLASS_DEVICE. I'm not aware of a way to
>>>>>> force LCD_CLASS_DEVICE to be builtin if DRM is builtin.
>>>>>>
>>>>>> Arnd fixed a similar type of dependecy in the repaper driver by forcing
>>>>>> repaper to be a module if necessary. To be honest, I don't know why his
>>>>>> fix works:
>>>>>> https://github.com/torvalds/linux/commit/8312a3fe84b96e30a010fa20f933606d976ac002
>>>>> I didn't quite understand how we could use this fix for the current
>>>>> case. Isn't this specific to the repaper driver dependency ?
>>>> This is the solution Daniel mentions:
>>>>
>>>>   menuconfig DRM
>>>>       tristate "Direct Rendering Manager (XFree86 4.1.0 and higher DRI
>>>> support)"
>>>>       depends on (AGP || AGP=n) && !EMULATED_CMPXCHG && HAS_DMA
>>>> +   depends on (LCD_CLASS_DEVICE || LCD_CLASS_DEVICE=n)
>>> I had tried this but it resulted in a recursive dependencies error.
>> What's the error?
>> Could this have something to do with tinydrm selecting backlight and
>> depending on DRM?
>>
>> Noralf.
> Looks like a case of circular dependencies. The exact error is this:
>
> scripts/kconfig/mconf  Kconfig
> drivers/gpu/drm/Kconfig:7:error: recursive dependency detected!
> For a resolution refer to Documentation/kbuild/kconfig-language.txt
> subsection "Kconfig recursive dependency limitations"
> drivers/gpu/drm/Kconfig:7:	symbol DRM depends on LCD_CLASS_DEVICE
> For a resolution refer to Documentation/kbuild/kconfig-language.txt
> subsection "Kconfig recursive dependency limitations"
> drivers/video/backlight/Kconfig:16:	symbol LCD_CLASS_DEVICE is
> selected by FB_CLPS711X
> For a resolution refer to Documentation/kbuild/kconfig-language.txt
> subsection "Kconfig recursive dependency limitations"
> drivers/video/fbdev/Kconfig:338:	symbol FB_CLPS711X depends on FB
> For a resolution refer to Documentation/kbuild/kconfig-language.txt
> subsection "Kconfig recursive dependency limitations"
> drivers/video/fbdev/Kconfig:5:	symbol FB is selected by
> DRM_KMS_FB_HELPER
> For a resolution refer to Documentation/kbuild/kconfig-language.txt
> subsection "Kconfig recursive dependency limitations"
> drivers/gpu/drm/Kconfig:73:	symbol DRM_KMS_FB_HELPER is selected by
> DRM_FBDEV_EMULATION
> For a resolution refer to Documentation/kbuild/kconfig-language.txt
> subsection "Kconfig recursive dependency limitations"
> drivers/gpu/drm/Kconfig:90:	symbol DRM_FBDEV_EMULATION depends on
> DRM
>
> Long story short, the dependency loop is as follows:
>
> DRM -> LCD_CLASS_DEVICE ->  FB_CLPS711X -> FB -> DRM_KMS_FB_HELPER ->
> DRM_FBDEV_EMULATION -> DRM

I have messed up the options here, it should be BACKLIGHT_CLASS_DEVICE:

menuconfig DRM
     depends on (BACKLIGHT_CLASS_DEVICE || BACKLIGHT_CLASS_DEVICE=n)

It doesn't help with the recusrsive problem, but at least it makes sense:

drivers/gpu/drm/Kconfig:7:      symbol DRM depends on BACKLIGHT_CLASS_DEVICE
drivers/video/backlight/Kconfig:158:    symbol BACKLIGHT_CLASS_DEVICE is 
selected by DRM_RADEON
drivers/gpu/drm/Kconfig:164:    symbol DRM_RADEON depends on DRM

I don't know how to solve this...

Noralf.



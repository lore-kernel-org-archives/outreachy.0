X-GM-THRID: 6470705412124442624
X-Received: by 10.46.20.17 with SMTP id u17mr346084ljd.24.1507563311246;
        Mon, 09 Oct 2017 08:35:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.206 with SMTP id u197ls676275lja.16.gmail; Mon, 09 Oct
 2017 08:35:09 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAsc9zks8DrC4nGU3xiQ2yE0LztU0Y/zwAaKsqLvvvTb+PfyKFc+HwSseAsKWAGV+LlsT56
X-Received: by 10.46.4.26 with SMTP id 26mr373894lje.22.1507563309713;
        Mon, 09 Oct 2017 08:35:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507563309; cv=none;
        d=google.com; s=arc-20160816;
        b=xOY5l7EiSRPxF3gO9A2w2RdIGfBlnxPY9ZNRI3jE0CxcWqhv4SnIrz8BlKNzQND/70
         L4gz8uKXHL438uH3eVbDej0FZfD81CGuBhh8jMP7yAQoJYjKCN8PvpJ3CaxVwmoxlSyC
         wYld/0ZnSbo/MLILP6tPUtbKYA7+K8uTKGw5taeLfIvCkRGxN5WduspVGzMhbddTSo02
         iY2o8BWfHBKd5h+PGiMLNG9h/LVrXccTZkn6KwGMEoFLaOf0uc21q3XlO5+zJ9FPOQSj
         7lgaCzmaSaDye/4f3jZhnIGNdX3tDgKb8Q+ex8fiCBdi6/cIUanUo+N/KJFcmtorbfTc
         itEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=AoFzub+/VtGxMiSOqtjWVU81OPBvkrqGp3ME7O0NWVc=;
        b=xdcb7MF1YisyqqbviSH1y1NbKg/kfa4Z9s5RmaLr9+5baQFi+tKXxx74ny56xluKAp
         LxfCjogKrQhCA2RuL6WhZtJL0Tzq446cqNplOyAs9gEnsDoy50q2kzfkNFqfeOdOtbsd
         760/d6LASPavWTt3ZWO31MgzD30E6tovLssFWeTkw5K/XcopwmOJ4Eu9ms8UW5cQkRg2
         PmMwlIH4+52pxxyR4feLx+kdFT2Sw2j46wnOQDwQkBJvBjCxhSTqMja4D0y+eJYMkrgT
         sXeWcdOoCprI5Se35JCkhPIBYFk/hKFHLeC14omSLLnscaIyAh3/B8Z7VBOq2/UgWX/P
         rQNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id 84si550940lfs.9.2017.10.09.08.35.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 08:35:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:54888 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e1a5E-0002oh-E6; Mon, 09 Oct 2017 17:35:08 +0200
Subject: Re: [PATCH v7 1/3] backlight: Add
 IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
To: Daniel Thompson <daniel.thompson@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Meghana Madhyastha <meghana.madhyastha@gmail.com>,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
 Lee Jones <lee.jones@linaro.org>
References: <cover.1506878301.git.meghana.madhyastha@gmail.com>
 <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com>
 <527a54b8-d67a-651c-3326-4780b9f3cfc4@linaro.org> <87o9pp6i0p.fsf@intel.com>
 <20171003080341.wvdgtgw6uuwcpmj4@phenom.ffwll.local>
 <464023c9-9fef-1372-93df-a54f43524ebb@linaro.org>
 <20171003090403.5mpxu22lxu2f7x7g@phenom.ffwll.local>
 <c676f762-00a8-0883-c4db-9b6e97ebdd11@tronnes.org>
 <2e063b3f-daf2-66d6-d73d-ad8fda4f91ec@linaro.org>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <867165d3-a4a7-2a33-c09a-d7b1a8d051d2@tronnes.org>
Date: Mon, 9 Oct 2017 17:35:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <2e063b3f-daf2-66d6-d73d-ad8fda4f91ec@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 09.10.2017 11.06, skrev Daniel Thompson:
> On 06/10/17 19:01, Noralf Trønnes wrote:
>>
>> Den 03.10.2017 11.04, skrev Daniel Vetter:
>>> On Tue, Oct 03, 2017 at 09:51:49AM +0100, Daniel Thompson wrote:
>>>> On 03/10/17 09:03, Daniel Vetter wrote:
>>>>> On Mon, Oct 02, 2017 at 12:00:54PM +0300, Jani Nikula wrote:
>>>>>> On Mon, 02 Oct 2017, Daniel Thompson <daniel.thompson@linaro.org> 
>>>>>> wrote:
>>>>>>> So I'm coming to this patchset cold but can you explain *why* 
>>>>>>> something
>>>>>>> wants to call of_find_backlight_by_node() when there is no 
>>>>>>> backlight
>>>>>>> support enabled. Why isn't the code that called is conditional on
>>>>>>> BACKLIGHT_CLASS_DEVICE?
>>>>>>>
>>>>>>> The undefined symbol issue is a pain but to be honest I'd rather 
>>>>>>> solve
>>>>>>> the use of undefined symbols by avoiding declaring them; this 
>>>>>>> making
>>>>>>> them into compile errors rather than link errors.
>>>>>> Typically the kernel header files define static inline stubs of the
>>>>>> functions when the actual functions aren't configured/built. The 
>>>>>> code
>>>>>> using the functions looks the same regardless of the config 
>>>>>> option, and
>>>>>> handles the -ENODEV or NULL or whatever returns from the stubs
>>>>>> gracefully. With the inlines, the compiler can usually throw out 
>>>>>> much of
>>>>>> the code anyway.
>>>>>>
>>>>>> In this regard, the backlight interface is an exception, forcing the
>>>>>> callers to wrap the code around 
>>>>>> IS_ENABLED(BACKLIGHT_CLASS_DEVICE), not
>>>>>> the rule.
>>>>> fwiw, I think it'd be great if we can move backlight over to the 
>>>>> common
>>>>> pattern, like everyone else. It's pretty big pain as-is ...
>>>> For sure, after Jani's mail yesterday I looked at the GMA500 driver 
>>>> and
>>>> concluded I didn't want code related to backlight having to look 
>>>> like that!
>>>>
>>>> Currently the three main patterns of use are:
>>>>
>>>>   1. Standalone drivers simple depend on BACKLIGHT_CLASS_DEVICE,
>>>>   2. Some compound drivers select BACKLIGHT_CLASS_DEVICE (the AMD DRM
>>>>      driver is an example of this),
>>>>   3. Other compound drivers perform heroics with the pre-processor.
>>>>
>>>> The main reason I'm not just agreeing straight away is that, to 
>>>> adopt the
>>>> static inline pattern for the whole API, we have to believe that #3 
>>>> above is
>>>> desirable. Given the size and scope of the compound drivers in #3 
>>>> above, I
>>>> don't entirely understand why they want to avoid the select.
>>> People love to over-configure their kernels and shave off a few 
>>> bytes. And
>>> big gpu drivers might have backlight support, but not always need it 
>>> (e.g.
>>> if you run without a panel as e.g. a tv set-top-box). Same with e.g. a
>>> driver that supports both OF/DT and pci to find its devices.
>>>
>>> On the desktop gpu driver side we don't really subscribe to this 
>>> idea of
>>> making everything optional, hence select (mostly), except select is 
>>> a huge
>>> pain. On the mobile/soc gpu side, #3 seems to be the desired outcome.
>>> Doing static inline helpers for backlights would make both easier 
>>> (since
>>> in the end for desktop you just get a distro kernel that enables
>>> everything anyway).
>>>
>>> So yeah, imo if you think backlight should be a Kconfig, then it should
>>> have static inline dummy functions to make life simpler for 
>>> everyone. Only
>>> exception are pure driver-only subsystem code which aren't ever 
>>> called by
>>> anything outside of your subsystem. But since the point of the 
>>> backlight
>>> subsystem is to provide backlight support to other drivers (there's 
>>> still
>>> the dream that we don't offload this onto userspace, that just doesn't
>>> work well) we really should have these static inline helpers.
>>
>> I suggest we put all the backlight subsystem only functionality we need,
>> into the backlight subsystem :-)
>> I've put together a suggestion below and I've deliberately dropped the
>> of_ infix in backlight_get() to make room for possible future additions
>> that can make it possible to set the connection between device and
>> backlight using platform table or ACPI, fashioned after gpiolib.
>
> Looks good to me.
>
> If I've read this right, other sub-systems can use these symbols with 
> or without BACKLIGHT_CLASS_DEVICE and still compile OK?
>

The code haven't seen a compiler, but that's the idea.

Noralf.

>
> Daniel.
>
>
>>
>>
>> include/linux/backlight.h:
>>
>> /**
>>   * backlight_enable - Enable backlight
>>   * @bd: the backlight device to enable
>>   */
>> static inline int backlight_enable(struct backlight_device *bd)
>> {
>>      if (!bd)
>>          return 0;
>>
>>      bd->props.power = FB_BLANK_UNBLANK;
>>      bd->props.state &= ~BL_CORE_FBBLANK;
>>
>>      return backlight_update_status(bd);
>> }
>>
>> /**
>>   * backlight_disable - Disable backlight
>>   * @bd: the backlight device to disable
>>   */
>> static inline int backlight_disable(struct backlight_device *bd)
>> {
>>      if (!bd)
>>          return 0;
>>
>>      bd->props.power = FB_BLANK_POWERDOWN;
>>      bd->props.state |= BL_CORE_FBBLANK;
>>
>>      return backlight_update_status(bd);
>> }
>>
>> /**
>>   * backlight_put - Drop backlight reference
>>   * @bd: the backlight device to put
>>   */
>> static inline void backlight_put(struct backlight_device *bd)
>> {
>>      if (bd)
>>          put_device(bd->dev);
>> }
>>
>> #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>> struct backlight_device *backlight_get(struct device *dev);
>> struct backlight_device *devm_backlight_get(struct device *dev);
>> #else
>> static inline struct backlight_device *backlight_get(struct device *dev)
>> {
>>      return NULL;
>> }
>>
>> static inline struct backlight_device *devm_backlight_get(struct 
>> device *dev)
>> {
>>      return NULL;
>> }
>> #endif
>>
>>
>>
>> drivers/video/backlight/backlight.c:
>>
>> /**
>>   * backlight_get - Get backlight device
>>   * @dev: Device
>>   *
>>   * This function looks for a property named 'backlight' on the DT node
>>   * connected to @dev and looks up the backlight device.
>>   *
>>   * Call backlight_put() to drop the reference on the backlight device.
>>   *
>>   * Returns:
>>   * A pointer to the backlight device if found.
>>   * Error pointer -EPROBE_DEFER if the DT property is set, but no 
>> backlight
>>   * device is found.
>>   * NULL if there's no backlight property.
>>   */
>> struct backlight_device *backlight_get(struct device *dev)
>> {
>>      struct backlight_device *bd = NULL;
>>      struct device_node *np;
>>
>>      if (!dev)
>>          return NULL;
>>
>>      if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
>>          np = of_parse_phandle(dev->of_node, 'backlight', 0);
>>          if (np) {
>>              bd = of_find_backlight_by_node(np);
>>              of_node_put(np);
>>              if (!bd)
>>                  return ERR_PTR(-EPROBE_DEFER);
>>          }
>>      }
>>
>>      return bd;
>> }
>> EXPORT_SYMBOL(backlight_get);
>>
>> static void devm_backlight_get_release(void *data)
>> {
>>      backlight_put(data);
>> }
>>
>> /**
>>   * devm_backlight_get - Resource-managed backlight_get()
>>   * @dev: Device
>>   *
>>   * Device managed version of backlight_get(). The reference on the 
>> backlight
>>   * device is automatically dropped on driver detach.
>>   */
>> struct backlight_device *devm_backlight_get(struct device *dev)
>> {
>>      struct backlight_device *bd;
>>      int ret;
>>
>>      bd = backlight_get(dev);
>>      if (!bd)
>>          return NULL;
>>
>>      ret = devm_add_action(dev, devm_backlight_get_release, bd);
>>      if (ret) {
>>          backlight_put(bd);
>>          return ERR_PTR(ret);
>>      }
>>
>>      return bd;
>> }
>> EXPORT_SYMBOL(devm_backlight_get);
>>
>>
>



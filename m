X-GM-THRID: 6470705412124442624
X-Received: by 10.28.149.18 with SMTP id x18mr895172wmd.18.1507540014583;
        Mon, 09 Oct 2017 02:06:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.160.247 with SMTP id n52ls893379wrn.6.gmail; Mon, 09 Oct
 2017 02:06:53 -0700 (PDT)
X-Received: by 10.223.134.175 with SMTP id 44mr670008wrx.11.1507540013716;
        Mon, 09 Oct 2017 02:06:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507540013; cv=none;
        d=google.com; s=arc-20160816;
        b=YBepqNXN5sMLdiytiB6JMy8CWdNzhKUjUAoHzAfyAdbng+3MxoFTuwOvg0lKr7AQPw
         VUebZikhWoP8PseStS5k0lstluxbOzFjuxLP6Jcb87l+rcIcre1xUcrNf8eQ8g/sbvQ+
         DGSD7HB5WdCl/7jxXUgXpdsKcc8HDwHvcCo2xrS6Y+7qTAPoQ+d66FrIwRctbYCYniW4
         abt+aQsopY0oks4JBfTj+fZOLYf0dsRJmQyZHvP2vHpGkJXfU84fJWyzww79wO27HHft
         6PcgJQHkUkF7b2O1LcNDdhk2n2AE9G4oVmokM2aGOkiftulMdC0bgwUKKUvR3FYtJZzj
         1v9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=8MbR5rezFP2FK0+kzeRzr7E7PP86xPOCYYCLFqS4q8U=;
        b=EL8JRWYhItjgRpaGP11Y6RZYI5m9fmeFfI1UYwdOra/xI3FIA16/BOTTZ3CqNrchUN
         5P0j78dXclDOMGWBLNPoSsBAhX1vHK8Wmsq9N1aoXK+H16QieWVtNLMwQ9uJG5cH8h/3
         qyOOeQxC006dRpPMeb1JQYMJtMoEffl/G2NUSf4f48scF+QwK+jSmHzdKHO0NsY8sQJp
         d/gc9+J1XgmOgDR4mmG9Tksx3DIK5ZDhfWv5sLY6s2JEjbxIy5HRn3umVtKwv3MixCkW
         4TD2CE4IcqMOVH/OGZk2qL2e9+4kmK9BJnu4o819UT9OZuCdjba2v8Klj8GdRrB2qIhp
         PZow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=AuX7KRP1;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id p137si624463wmd.4.2017.10.09.02.06.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 02:06:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=AuX7KRP1;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x236.google.com with SMTP id m72so20510968wmc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 02:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8MbR5rezFP2FK0+kzeRzr7E7PP86xPOCYYCLFqS4q8U=;
        b=AuX7KRP1NHxukTpTds6J6MeiG7tBAYgiaIWOXPO6bNCyKdYG6zMc/b+/W1iyGQd6CZ
         dwxHui/yVYujZ/QojIBMKWNagpDgOo/oK/GkWdXO6rAO7qFm+OakQUHfL1oQhld86gPT
         cYZnDkzyaTdwbW4wM6jXtPGUNaWo7RmcbQqkQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8MbR5rezFP2FK0+kzeRzr7E7PP86xPOCYYCLFqS4q8U=;
        b=Cm5VXlX7PtXxpuALLZ04dc62M06k+SiAjSjGFOfhXy+mHpK2/Gog1ldp5bwDY5O+CU
         1gP/BzmmluMsNEGEAM0PzNeIxDxARRFRTfmWzH5ypWTFDEoIJvrOEiJVedmIgMASg2NB
         wpVj9mgAa/28XSIjef0Ij1wB+G/cQpkSbrJKsELXE9+7HUmwVxMTPXMisVKuHSmtti6x
         yQ1TQyQ31HY329Okw5Rh/j9gSjYO2dE43J8XZ9mhedO9viK3NDpYrJkVATnys8UJFLvm
         91IOnnsuTF1IJ/vzrPUIQFebU94hPPzIIvjwqvChHmzTm7ZLwNtN6V2x0QiyfVtvg2l3
         r3xA==
X-Gm-Message-State: AMCzsaWLjZ87oIKaCgWOAdD3dWb2sHxuELO5PnNblnf/qJ78vgbntx0Z
	pNAUQ6mhPIyaksv+YlwgeNw/7w==
X-Google-Smtp-Source: AOwi7QACkZPYumDZQ243jwAkLoMCSD3+AqJEnDs2365VOeNas1D2DJRu7MoxQ6LPQofhhSqCqcVk5w==
X-Received: by 10.80.167.193 with SMTP id i59mr13438105edc.173.1507540013258;
        Mon, 09 Oct 2017 02:06:53 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.124] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id t43sm3357420edh.22.2017.10.09.02.06.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 02:06:52 -0700 (PDT)
Subject: Re: [PATCH v7 1/3] backlight: Add
 IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
To: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
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
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <2e063b3f-daf2-66d6-d73d-ad8fda4f91ec@linaro.org>
Date: Mon, 9 Oct 2017 10:06:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <c676f762-00a8-0883-c4db-9b6e97ebdd11@tronnes.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 06/10/17 19:01, Noralf Trønnes wrote:
> 
> Den 03.10.2017 11.04, skrev Daniel Vetter:
>> On Tue, Oct 03, 2017 at 09:51:49AM +0100, Daniel Thompson wrote:
>>> On 03/10/17 09:03, Daniel Vetter wrote:
>>>> On Mon, Oct 02, 2017 at 12:00:54PM +0300, Jani Nikula wrote:
>>>>> On Mon, 02 Oct 2017, Daniel Thompson <daniel.thompson@linaro.org> 
>>>>> wrote:
>>>>>> So I'm coming to this patchset cold but can you explain *why* 
>>>>>> something
>>>>>> wants to call of_find_backlight_by_node() when there is no backlight
>>>>>> support enabled. Why isn't the code that called is conditional on
>>>>>> BACKLIGHT_CLASS_DEVICE?
>>>>>>
>>>>>> The undefined symbol issue is a pain but to be honest I'd rather 
>>>>>> solve
>>>>>> the use of undefined symbols by avoiding declaring them; this making
>>>>>> them into compile errors rather than link errors.
>>>>> Typically the kernel header files define static inline stubs of the
>>>>> functions when the actual functions aren't configured/built. The code
>>>>> using the functions looks the same regardless of the config option, 
>>>>> and
>>>>> handles the -ENODEV or NULL or whatever returns from the stubs
>>>>> gracefully. With the inlines, the compiler can usually throw out 
>>>>> much of
>>>>> the code anyway.
>>>>>
>>>>> In this regard, the backlight interface is an exception, forcing the
>>>>> callers to wrap the code around IS_ENABLED(BACKLIGHT_CLASS_DEVICE), 
>>>>> not
>>>>> the rule.
>>>> fwiw, I think it'd be great if we can move backlight over to the common
>>>> pattern, like everyone else. It's pretty big pain as-is ...
>>> For sure, after Jani's mail yesterday I looked at the GMA500 driver and
>>> concluded I didn't want code related to backlight having to look like 
>>> that!
>>>
>>> Currently the three main patterns of use are:
>>>
>>>   1. Standalone drivers simple depend on BACKLIGHT_CLASS_DEVICE,
>>>   2. Some compound drivers select BACKLIGHT_CLASS_DEVICE (the AMD DRM
>>>      driver is an example of this),
>>>   3. Other compound drivers perform heroics with the pre-processor.
>>>
>>> The main reason I'm not just agreeing straight away is that, to adopt 
>>> the
>>> static inline pattern for the whole API, we have to believe that #3 
>>> above is
>>> desirable. Given the size and scope of the compound drivers in #3 
>>> above, I
>>> don't entirely understand why they want to avoid the select.
>> People love to over-configure their kernels and shave off a few bytes. 
>> And
>> big gpu drivers might have backlight support, but not always need it 
>> (e.g.
>> if you run without a panel as e.g. a tv set-top-box). Same with e.g. a
>> driver that supports both OF/DT and pci to find its devices.
>>
>> On the desktop gpu driver side we don't really subscribe to this idea of
>> making everything optional, hence select (mostly), except select is a 
>> huge
>> pain. On the mobile/soc gpu side, #3 seems to be the desired outcome.
>> Doing static inline helpers for backlights would make both easier (since
>> in the end for desktop you just get a distro kernel that enables
>> everything anyway).
>>
>> So yeah, imo if you think backlight should be a Kconfig, then it should
>> have static inline dummy functions to make life simpler for everyone. 
>> Only
>> exception are pure driver-only subsystem code which aren't ever called by
>> anything outside of your subsystem. But since the point of the backlight
>> subsystem is to provide backlight support to other drivers (there's still
>> the dream that we don't offload this onto userspace, that just doesn't
>> work well) we really should have these static inline helpers.
> 
> I suggest we put all the backlight subsystem only functionality we need,
> into the backlight subsystem :-)
> I've put together a suggestion below and I've deliberately dropped the
> of_ infix in backlight_get() to make room for possible future additions
> that can make it possible to set the connection between device and
> backlight using platform table or ACPI, fashioned after gpiolib.

Looks good to me.

If I've read this right, other sub-systems can use these symbols with or 
without BACKLIGHT_CLASS_DEVICE and still compile OK?


Daniel.


> 
> 
> include/linux/backlight.h:
> 
> /**
>   * backlight_enable - Enable backlight
>   * @bd: the backlight device to enable
>   */
> static inline int backlight_enable(struct backlight_device *bd)
> {
>      if (!bd)
>          return 0;
> 
>      bd->props.power = FB_BLANK_UNBLANK;
>      bd->props.state &= ~BL_CORE_FBBLANK;
> 
>      return backlight_update_status(bd);
> }
> 
> /**
>   * backlight_disable - Disable backlight
>   * @bd: the backlight device to disable
>   */
> static inline int backlight_disable(struct backlight_device *bd)
> {
>      if (!bd)
>          return 0;
> 
>      bd->props.power = FB_BLANK_POWERDOWN;
>      bd->props.state |= BL_CORE_FBBLANK;
> 
>      return backlight_update_status(bd);
> }
> 
> /**
>   * backlight_put - Drop backlight reference
>   * @bd: the backlight device to put
>   */
> static inline void backlight_put(struct backlight_device *bd)
> {
>      if (bd)
>          put_device(bd->dev);
> }
> 
> #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
> struct backlight_device *backlight_get(struct device *dev);
> struct backlight_device *devm_backlight_get(struct device *dev);
> #else
> static inline struct backlight_device *backlight_get(struct device *dev)
> {
>      return NULL;
> }
> 
> static inline struct backlight_device *devm_backlight_get(struct device 
> *dev)
> {
>      return NULL;
> }
> #endif
> 
> 
> 
> drivers/video/backlight/backlight.c:
> 
> /**
>   * backlight_get - Get backlight device
>   * @dev: Device
>   *
>   * This function looks for a property named 'backlight' on the DT node
>   * connected to @dev and looks up the backlight device.
>   *
>   * Call backlight_put() to drop the reference on the backlight device.
>   *
>   * Returns:
>   * A pointer to the backlight device if found.
>   * Error pointer -EPROBE_DEFER if the DT property is set, but no backlight
>   * device is found.
>   * NULL if there's no backlight property.
>   */
> struct backlight_device *backlight_get(struct device *dev)
> {
>      struct backlight_device *bd = NULL;
>      struct device_node *np;
> 
>      if (!dev)
>          return NULL;
> 
>      if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
>          np = of_parse_phandle(dev->of_node, 'backlight', 0);
>          if (np) {
>              bd = of_find_backlight_by_node(np);
>              of_node_put(np);
>              if (!bd)
>                  return ERR_PTR(-EPROBE_DEFER);
>          }
>      }
> 
>      return bd;
> }
> EXPORT_SYMBOL(backlight_get);
> 
> static void devm_backlight_get_release(void *data)
> {
>      backlight_put(data);
> }
> 
> /**
>   * devm_backlight_get - Resource-managed backlight_get()
>   * @dev: Device
>   *
>   * Device managed version of backlight_get(). The reference on the 
> backlight
>   * device is automatically dropped on driver detach.
>   */
> struct backlight_device *devm_backlight_get(struct device *dev)
> {
>      struct backlight_device *bd;
>      int ret;
> 
>      bd = backlight_get(dev);
>      if (!bd)
>          return NULL;
> 
>      ret = devm_add_action(dev, devm_backlight_get_release, bd);
>      if (ret) {
>          backlight_put(bd);
>          return ERR_PTR(ret);
>      }
> 
>      return bd;
> }
> EXPORT_SYMBOL(devm_backlight_get);
> 
> 



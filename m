X-GM-THRID: 6468555141619384320
X-Received: by 10.28.17.18 with SMTP id 18mr291407wmr.8.1506434019606;
        Tue, 26 Sep 2017 06:53:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.2.28 with SMTP id 28ls2806216ljc.5.gmail; Tue, 26 Sep 2017
 06:53:37 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB8Cesc31Z9VtQsM+M1tiDWzeyfzt+TY37J2eXgNCm88vo57ZRlI7owPr480/ZX6MlNgCwE
X-Received: by 10.25.181.214 with SMTP id g83mr917971lfk.17.1506434017877;
        Tue, 26 Sep 2017 06:53:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506434017; cv=none;
        d=google.com; s=arc-20160816;
        b=lvuWQR7MTG539rGZEgbJ8aY1PzXPTu135C88Ac8s0lO+0Ejg50Ph+uB0mN1E6iSfUK
         fLGih4bL9lmWWXdtNFbAYPhixu1ZlPT8HSnJgytIB5mW8Ev2MaPgoJp9Xng6Dj1GC6JE
         Ooa8jLqYxecsQWHzIpzaGWorfCL9J8SQ9R8tvcLourESDlVu2qt7OhwTa2YH2TuMNNor
         XAynAi4+9392svmiDP+tTowNvuOWUjj/g3/BUTW1J5/JLqJp7Tz3Lc1tzFRAk5n9vTQy
         r/vNmKi6VahO+p7rWXdsMVYdiMVjy4JOzvh3xO/lVhyBSNZA1/Qn2mP0gnZQT1jZl3ng
         qQ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:arc-authentication-results;
        bh=3kLN0bsiAxBhHbKLpT8TQJCbv6gEo9jqeD9vx4Ix5nw=;
        b=Fy2Si5UWXgWFNdNULQ6tABNccPeXh8x+ueWdMDX1t/eQu716APsqzV/LyMmP6DGmdP
         W+P4DI5h5TYbMR8DWG7dPHrkJ9Vs6nwsfBP2tQ0gfiiTSR7WHGrE1O1PK32QYSfcQR+z
         7MGN9mdbGcPazeIsD1KSyfmgdrz4YPv6l67mtuEKwCqaCLmsL2ijA4su7c9McZ1L/mBk
         SfmmfuYu2IAoG9j1LdlVsSG6dFGMV7JUb9kGyZ7iHz0oynbVP1hqJ/1nu1Ej5RA1HnZh
         eAV24JUzzWlNcPJfZDuePRgVEmvqA5oxMBI5nZWtTx1Xlb5TnVS+v2AzAcxUMOpl/GRP
         oh7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id m13si215385lfj.9.2017.09.26.06.53.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 06:53:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:61682 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dwqIr-0006vc-0Y; Tue, 26 Sep 2017 15:53:37 +0200
Subject: Re: [PATCH v2] drm/tinydrm: Move backlight helpers to a separate file
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
To: Daniel Vetter <daniel@ffwll.ch>,
 Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
 dri-devel@lists.freedesktop.org
References: <20170922150935.GA15912@meghana-HP-Pavilion-Notebook>
 <3dd313c8-daa7-a395-183c-c2dfac4dd4b4@tronnes.org>
 <ecdafe5f-1434-b3cf-82bb-a3286ee96d3e@tronnes.org>
 <20170926111650.GA7624@meghana-HP-Pavilion-Notebook>
 <20170926113214.ahxqmqspsd3olu73@phenom.ffwll.local>
 <938e964a-9b4e-b9fe-fdcc-a04d24f3a330@tronnes.org>
Message-ID: <015cae83-661d-5732-3f42-ba6fc1bb9264@tronnes.org>
Date: Tue, 26 Sep 2017 15:53:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <938e964a-9b4e-b9fe-fdcc-a04d24f3a330@tronnes.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 26.09.2017 15.06, skrev Noralf Trønnes:
>
> Den 26.09.2017 13.32, skrev Daniel Vetter:
>> On Tue, Sep 26, 2017 at 04:46:53PM +0530, Meghana Madhyastha wrote:
>>> On Mon, Sep 25, 2017 at 06:31:58PM +0200, Noralf Trønnes wrote:
>>>> Den 25.09.2017 16.56, skrev Noralf Trønnes:
>>>>> Hi Meghana,
>>>>>
>>>>>
>>>>> Den 22.09.2017 17.09, skrev Meghana Madhyastha:
>>>>>> Move backlight helpers from tinydrm-helpers.c to
>>>>>> tinydrm-backlight.c. This is because it is organizationally
>>>>>> simpler to understand and advantageous to group functions
>>>>>> performing a similar function to a separate file as opposed to
>>>>>> having one helper file with heteregenous helper functions.
>>>>>>
>>>>>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>>>>>> ---
>>>>> I don't think there is much gain in just moving the code like this.
>>>>>
>>>>> The idea is to add a drm_backlight helper that can be useful for all
>>>>> DRM drivers that use the backlight subsystem.
>>> Yes I agree. That definitely makes more sense.
>>>> The full path to that helper would be:
>>>> drivers/gpu/drm/drm_backlight.c
>>>>
>>>>> This is what the TODO says:
>>>>> https://dri.freedesktop.org/docs/drm/gpu/todo.html#tinydrm
>>>>>
>>>>> - backlight helpers, probably best to put them into a new 
>>>>> drm_backlight.c.
>>>>>    This is because drivers/video is de-facto unmaintained. We 
>>>>> could also
>>>>>    move drivers/video/backlight to drivers/gpu/backlight and take 
>>>>> it all
>>>>>    over within drm-misc, but that’s more work.
>>>>>
>>>>> There is also this discussion to take into account:
>>>>> KMS backlight ABI proposition
>>>>> https://lists.freedesktop.org/archives/dri-devel/2017-February/133206.html 
>>>>>
>>>>>
>>>>>
>>>>> I don't remember what came out of that discussion.
>>>>>
>>>>> Noralf.
>>> After having discussed this with Daniel on the #dri-devel irc channel,
>>> here are some of the points suggested.
>>>
>>> Daniel suggested that I first look into the usage of shared backlight
>>> helpers in drm (specifically backlight_update_status to begin with). 
>>> The idea
>>> was to see whether there is any pattern in usage and/or code 
>>> dupication.
>>> If there is, then the next step would be to write helper functions 
>>> which
>>> can be used by other drivers (and not just tinydrm).
>>>
>>> To start with, I went through the instances of backlight_update_status
>>> in the drm code, and made the following observations(most of them are
>>> very simple/naive observations).
>>>
>>> - backlight_update_status is usually called in backlight init (and
>>>    sometimes exit) functions of the drivers just after the device is 
>>> registered.
>>>    So backlight_update_status is called with the registered device 
>>> as the
>>>    parameter.
>>>
>>> Here are the following cases of properties changed/set before
>>> backlight_update_status is called.
>>>
>>> - CASE 1: Brightness is changed (either a macro BRIGHTNESS_MAX_LEVEL 
>>> 100
>>>    is defined or it is manually set) This happens in the following 
>>> files:
>>>
>>>    gma500/cdv_device.c, gma500/mdfld_device.c, 
>>> gma500/oaktrail_device.c,
>>>    gma500/psb_device.c, noveau/noveau_backlight.c(here brightness is 
>>> determined by fuction
>>>    static int nv50_get_intensity)
>>>
>>> - CASE 2: Power property is set (to FB_BLANK_UNBLANK mostly)
>>>    This happens in the following files:
>>>
>>>    omapdrm/displays/panel-dpi.c, panel/panel-innolux-p079zca.c,
>>>    panel/panel-jdi-lt070me05000.c, panel/panel-sharp-lq101r1sx01.c,
>>>    panel/panel-sharp-ls043t1le01.c, tilcdc/tilcdc_panel.c
>>>    - CASE 3: State is set
>>>    This happens in the following files:
>>>
>>>    tinydrm/tinydrm-helpers.c
>>>
>>> - CASE 4: Power and brightness properties are set
>>>    This happens in the following files:
>>>
>>>    atombios_encoders.c, radeon/radeon_legacy_encoders.c,
>>>    shmobile/shmob_drm_backlight.c
>>>
>>> - CASE 5: Power and the state properties are set
>>>    This happens in the following files:
>>>
>>>    panel/panel-lvds.c, panel/panel-panasonic-vvx10f034n00.c,
>>>    panel/panel-simple.c, panel/panel-sitronix-st7789v.c
>>>
>>> Please let me know if I am wrong / missed something. As for next steps,
>>> wouldn't it be an overkill to have a separate helper function for each
>>> of these cases ? Perhaps a generic helper function which would somehow
>>> address these cases would be more appropriate ? Thank you for your
>>> time/patience.
>> I suspect that a lot of these combinations are just plain wrong, but
>> happen to kinda work with the combination of gpu driver and backlight
>> driver they're used on. tbh I have no idea which one is the correct
>> version for enabling a backlight correctly ...
>>
>> So definitely a good task to refactor this into a proper helper, but 
>> looks
>> a lot more involved than at first sight.
>
> Backlight is tricky.
>
> One annoying thing from a DRM point of view is that it's tied to fbdev
> with a notifier fb_notifier_callback() that turns it off on
> FB_EVENT_BLANK and FB_EVENT_CONBLANK. And the logic in that function is
> very convoluted.
>
> And if we look at the gpio backlight driver, we see that there are
> 3 properties that turn off the backlight:
>
> static int gpio_backlight_update_status(struct backlight_device *bl)
> {
>     struct gpio_backlight *gbl = bl_get_data(bl);
>     int brightness = bl->props.brightness;
>
>     if (bl->props.power != FB_BLANK_UNBLANK ||
>         bl->props.fb_blank != FB_BLANK_UNBLANK ||
>         bl->props.state & (BL_CORE_SUSPENDED | BL_CORE_FBBLANK))
>         brightness = 0;
>
>     gpiod_set_value_cansleep(gbl->gpiod, brightness);
>
>     return 0;
> }
>
> This may account for the different ways of controlling backlight in DRM.
>
> Some other aspects:
> - The backlight device has it's own suspend/resume functions.
> - systemd tries to be smart and turn on/off backlight, but that is just
>   annoying with tinydrm drivers that are loaded late since it turns on
>   an uninitialized display. Disabling the service fixes it.
>

And some more:
The backlight driver is probed before the DRM driver and if DRM should
control backlight, then backlight should be initially off. The pwm_bl
driver has a default-brightness-level property that is set when the
pwm_bl driver probes. If the DRM driver should control backlight, then
this has to be zero/off, or the backlight is turned on before the
display is initialized. So how can we now communicate the default
brightness level to the pwm_bl driver?

The gpio_backlight driver is off by default.

I noticed that backlight is listed under leds in DT bindings now.

> Noralf.
>
>> Do you have any of the hardware supported by any of these drivers? lsmod
>> and then comparing with the modules you're building in your own tree
>> should help you figure this out.
>> -Daniel
>>
>>> -Meghana
>>>
>>>>>> Changes in v2:
>>>>>>    -Improved commit message by explaining why the changes were made.
>>>>>>
>>>>>>    drivers/gpu/drm/tinydrm/core/Makefile            | 2 +-
>>>>>>    drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c | 103
>>>>>> +++++++++++++++++++++++
>>>>>>    drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c   | 94
>>>>>> ---------------------
>>>>>>    drivers/gpu/drm/tinydrm/mi0283qt.c               | 1 +
>>>>>>    drivers/gpu/drm/tinydrm/mipi-dbi.c               | 1 +
>>>>>>    include/drm/tinydrm/tinydrm-backlight.h          | 18 ++++
>>>>>>    6 files changed, 124 insertions(+), 95 deletions(-)
>>>>>>    create mode 100644 
>>>>>> drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
>>>>>>    create mode 100644 include/drm/tinydrm/tinydrm-backlight.h
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/tinydrm/core/Makefile
>>>>>> b/drivers/gpu/drm/tinydrm/core/Makefile
>>>>>> index fb221e6..389ca7a 100644
>>>>>> --- a/drivers/gpu/drm/tinydrm/core/Makefile
>>>>>> +++ b/drivers/gpu/drm/tinydrm/core/Makefile
>>>>>> @@ -1,3 +1,3 @@
>>>>>> -tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-helpers.o
>>>>>> +tinydrm-y := tinydrm-core.o tinydrm-pipe.o tinydrm-backlight.o
>>>>>> tinydrm-helpers.o
>>>>>>      obj-$(CONFIG_DRM_TINYDRM) += tinydrm.o
>>>>>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
>>>>>> b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
>>>>>> new file mode 100644
>>>>>> index 0000000..dc6f17d
>>>>>> --- /dev/null
>>>>>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-backlight.c
>>>>>> @@ -0,0 +1,103 @@
>>>>>> +#include <linux/backlight.h>
>>>>>> +#include <linux/dma-buf.h>
>>>>>> +#include <linux/pm.h>
>>>>>> +#include <linux/swab.h>
>>>>>> +
>>>>>> +#include <drm/tinydrm/tinydrm.h>
>>>>>> +#include <drm/tinydrm/tinydrm-backlight.h>
>>>>>> +
>>>>>> +/**
>>>>>> + * tinydrm_of_find_backlight - Find backlight device in device-tree
>>>>>> + * @dev: Device
>>>>>> + *
>>>>>> + * This function looks for a DT node pointed to by a property named
>>>>>> 'backlight'
>>>>>> + * and uses of_find_backlight_by_node() to get the backlight 
>>>>>> device.
>>>>>> + * Additionally if the brightness property is zero, it is set to
>>>>>> + * max_brightness.
>>>>>> + *
>>>>>> + * Returns:
>>>>>> + * NULL if there's no backlight property.
>>>>>> + * Error pointer -EPROBE_DEFER if the DT node is found, but no
>>>>>> backlight device
>>>>>> + * is found.
>>>>>> + * If the backlight device is found, a pointer to the structure is
>>>>>> returned.
>>>>>> + */
>>>>>> +
>>>>>> +struct backlight_device *tinydrm_of_find_backlight(struct device 
>>>>>> *dev)
>>>>>> +{
>>>>>> +    struct backlight_device *backlight;
>>>>>> +    struct device_node *np;
>>>>>> +
>>>>>> +    np = of_parse_phandle(dev->of_node, "backlight", 0);
>>>>>> +    if (!np)
>>>>>> +        return NULL;
>>>>>> +
>>>>>> +    backlight = of_find_backlight_by_node(np);
>>>>>> +    of_node_put(np);
>>>>>> +
>>>>>> +    if (!backlight)
>>>>>> +        return ERR_PTR(-EPROBE_DEFER);
>>>>>> +
>>>>>> +    if (!backlight->props.brightness) {
>>>>>> +        backlight->props.brightness = 
>>>>>> backlight->props.max_brightness;
>>>>>> +        DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>>>>>> +                  backlight->props.brightness);
>>>>>> +    }
>>>>>> +
>>>>>> +    return backlight;
>>>>>> +}
>>>>>> +EXPORT_SYMBOL(tinydrm_of_find_backlight);
>>>>>> +
>>>>>> +/**
>>>>>> + * tinydrm_enable_backlight - Enable backlight helper
>>>>>> + * @backlight: Backlight device
>>>>>> + *
>>>>>> + * Returns:
>>>>>> + * Zero on success, negative error code on failure.
>>>>>> + */
>>>>>> +int tinydrm_enable_backlight(struct backlight_device *backlight)
>>>>>> +{
>>>>>> +    unsigned int old_state;
>>>>>> +    int ret;
>>>>>> +
>>>>>> +    if (!backlight)
>>>>>> +        return 0;
>>>>>> +
>>>>>> +    old_state = backlight->props.state;
>>>>>> +    backlight->props.state &= ~BL_CORE_FBBLANK;
>>>>>> +    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
>>>>>> +              backlight->props.state);
>>>>>> +
>>>>>> +    ret = backlight_update_status(backlight);
>>>>>> +    if (ret)
>>>>>> +        DRM_ERROR("Failed to enable backlight %d\n", ret);
>>>>>> +
>>>>>> +    return ret;
>>>>>> +}
>>>>>> +EXPORT_SYMBOL(tinydrm_enable_backlight);
>>>>>> +
>>>>>> +/**
>>>>>> + * tinydrm_disable_backlight - Disable backlight helper
>>>>>> + * @backlight: Backlight device
>>>>>> + *
>>>>>> + * Returns:
>>>>>> + * Zero on success, negative error code on failure.
>>>>>> + */
>>>>>> +int tinydrm_disable_backlight(struct backlight_device *backlight)
>>>>>> +{
>>>>>> +    unsigned int old_state;
>>>>>> +    int ret;
>>>>>> +
>>>>>> +    if (!backlight)
>>>>>> +        return 0;
>>>>>> +
>>>>>> +    old_state = backlight->props.state;
>>>>>> +    backlight->props.state |= BL_CORE_FBBLANK;
>>>>>> +    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
>>>>>> +              backlight->props.state);
>>>>>> +    ret = backlight_update_status(backlight);
>>>>>> +    if (ret)
>>>>>> +        DRM_ERROR("Failed to disable backlight %d\n", ret);
>>>>>> +
>>>>>> +    return ret;
>>>>>> +}
>>>>>> +EXPORT_SYMBOL(tinydrm_disable_backlight);
>>>>>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>>>>> b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>>>>> index bd6cce0..ee8ad8c 100644
>>>>>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>>>>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>>>>>> @@ -236,100 +236,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void
>>>>>> *vaddr, struct drm_framebuffer *fb,
>>>>>>    }
>>>>>>    EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
>>>>>>    -/**
>>>>>> - * tinydrm_of_find_backlight - Find backlight device in device-tree
>>>>>> - * @dev: Device
>>>>>> - *
>>>>>> - * This function looks for a DT node pointed to by a property named
>>>>>> 'backlight'
>>>>>> - * and uses of_find_backlight_by_node() to get the backlight 
>>>>>> device.
>>>>>> - * Additionally if the brightness property is zero, it is set to
>>>>>> - * max_brightness.
>>>>>> - *
>>>>>> - * Returns:
>>>>>> - * NULL if there's no backlight property.
>>>>>> - * Error pointer -EPROBE_DEFER if the DT node is found, but no
>>>>>> backlight device
>>>>>> - * is found.
>>>>>> - * If the backlight device is found, a pointer to the structure is
>>>>>> returned.
>>>>>> - */
>>>>>> -struct backlight_device *tinydrm_of_find_backlight(struct device 
>>>>>> *dev)
>>>>>> -{
>>>>>> -    struct backlight_device *backlight;
>>>>>> -    struct device_node *np;
>>>>>> -
>>>>>> -    np = of_parse_phandle(dev->of_node, "backlight", 0);
>>>>>> -    if (!np)
>>>>>> -        return NULL;
>>>>>> -
>>>>>> -    backlight = of_find_backlight_by_node(np);
>>>>>> -    of_node_put(np);
>>>>>> -
>>>>>> -    if (!backlight)
>>>>>> -        return ERR_PTR(-EPROBE_DEFER);
>>>>>> -
>>>>>> -    if (!backlight->props.brightness) {
>>>>>> -        backlight->props.brightness = 
>>>>>> backlight->props.max_brightness;
>>>>>> -        DRM_DEBUG_KMS("Backlight brightness set to %d\n",
>>>>>> -                  backlight->props.brightness);
>>>>>> -    }
>>>>>> -
>>>>>> -    return backlight;
>>>>>> -}
>>>>>> -EXPORT_SYMBOL(tinydrm_of_find_backlight);
>>>>>> -
>>>>>> -/**
>>>>>> - * tinydrm_enable_backlight - Enable backlight helper
>>>>>> - * @backlight: Backlight device
>>>>>> - *
>>>>>> - * Returns:
>>>>>> - * Zero on success, negative error code on failure.
>>>>>> - */
>>>>>> -int tinydrm_enable_backlight(struct backlight_device *backlight)
>>>>>> -{
>>>>>> -    unsigned int old_state;
>>>>>> -    int ret;
>>>>>> -
>>>>>> -    if (!backlight)
>>>>>> -        return 0;
>>>>>> -
>>>>>> -    old_state = backlight->props.state;
>>>>>> -    backlight->props.state &= ~BL_CORE_FBBLANK;
>>>>>> -    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
>>>>>> -              backlight->props.state);
>>>>>> -
>>>>>> -    ret = backlight_update_status(backlight);
>>>>>> -    if (ret)
>>>>>> -        DRM_ERROR("Failed to enable backlight %d\n", ret);
>>>>>> -
>>>>>> -    return ret;
>>>>>> -}
>>>>>> -EXPORT_SYMBOL(tinydrm_enable_backlight);
>>>>>> -
>>>>>> -/**
>>>>>> - * tinydrm_disable_backlight - Disable backlight helper
>>>>>> - * @backlight: Backlight device
>>>>>> - *
>>>>>> - * Returns:
>>>>>> - * Zero on success, negative error code on failure.
>>>>>> - */
>>>>>> -int tinydrm_disable_backlight(struct backlight_device *backlight)
>>>>>> -{
>>>>>> -    unsigned int old_state;
>>>>>> -    int ret;
>>>>>> -
>>>>>> -    if (!backlight)
>>>>>> -        return 0;
>>>>>> -
>>>>>> -    old_state = backlight->props.state;
>>>>>> -    backlight->props.state |= BL_CORE_FBBLANK;
>>>>>> -    DRM_DEBUG_KMS("Backlight state: 0x%x -> 0x%x\n", old_state,
>>>>>> -              backlight->props.state);
>>>>>> -    ret = backlight_update_status(backlight);
>>>>>> -    if (ret)
>>>>>> -        DRM_ERROR("Failed to disable backlight %d\n", ret);
>>>>>> -
>>>>>> -    return ret;
>>>>>> -}
>>>>>> -EXPORT_SYMBOL(tinydrm_disable_backlight);
>>>>>>      #if IS_ENABLED(CONFIG_SPI)
>>>>>>    diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c
>>>>>> b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>>>>> index 7e5bb7d..c161d45 100644
>>>>>> --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>>>>>> +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>>>>>> @@ -12,6 +12,7 @@
>>>>>>    #include <drm/tinydrm/ili9341.h>
>>>>>>    #include <drm/tinydrm/mipi-dbi.h>
>>>>>>    #include <drm/tinydrm/tinydrm-helpers.h>
>>>>>> +#include <drm/tinydrm/tinydrm-backlight.h>
>>>>>>    #include <linux/delay.h>
>>>>>>    #include <linux/gpio/consumer.h>
>>>>>>    #include <linux/module.h>
>>>>>> diff --git a/drivers/gpu/drm/tinydrm/mipi-dbi.c
>>>>>> b/drivers/gpu/drm/tinydrm/mipi-dbi.c
>>>>>> index 2caeabc..dc84f26 100644
>>>>>> --- a/drivers/gpu/drm/tinydrm/mipi-dbi.c
>>>>>> +++ b/drivers/gpu/drm/tinydrm/mipi-dbi.c
>>>>>> @@ -11,6 +11,7 @@
>>>>>>      #include <drm/tinydrm/mipi-dbi.h>
>>>>>>    #include <drm/tinydrm/tinydrm-helpers.h>
>>>>>> +#include <drm/tinydrm/tinydrm-backlight.h>
>>>>>>    #include <linux/debugfs.h>
>>>>>>    #include <linux/dma-buf.h>
>>>>>>    #include <linux/gpio/consumer.h>
>>>>>> diff --git a/include/drm/tinydrm/tinydrm-backlight.h
>>>>>> b/include/drm/tinydrm/tinydrm-backlight.h
>>>>>> new file mode 100644
>>>>>> index 0000000..6a7b6d5
>>>>>> --- /dev/null
>>>>>> +++ b/include/drm/tinydrm/tinydrm-backlight.h
>>>>>> @@ -0,0 +1,18 @@
>>>>>> +/*
>>>>>> + * Copyright (C) 2016 Noralf Trønnes
>>>>>> + *
>>>>>> + * This program is free software; you can redistribute it and/or 
>>>>>> modify
>>>>>> + * it under the terms of the GNU General Public License as 
>>>>>> published by
>>>>>> + * the Free Software Foundation; either version 2 of the 
>>>>>> License, or
>>>>>> + * (at your option) any later version.
>>>>>> + */
>>>>>> +
>>>>>> +#ifndef __LINUX_TINYDRM_BACKLIGHT_H
>>>>>> +#define __LINUX_TINYDRM_BACKLIGHT_H
>>>>>> +
>>>>>> +struct backlight_device;
>>>>>> +struct backlight_device *tinydrm_of_find_backlight(struct device 
>>>>>> *dev);
>>>>>> +int tinydrm_enable_backlight(struct backlight_device *backlight);
>>>>>> +int tinydrm_disable_backlight(struct backlight_device *backlight);
>>>>>> +
>>>>>> +#endif /* __LINUX_TINYDRM_BACKLIGHT_H */
>>>>> _______________________________________________
>>>>> dri-devel mailing list
>>>>> dri-devel@lists.freedesktop.org
>>>>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>>>>>
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>



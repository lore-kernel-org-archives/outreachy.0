X-GM-THRID: 6470705412124442624
X-Received: by 10.46.86.157 with SMTP id k29mr103175lje.39.1507312872236;
        Fri, 06 Oct 2017 11:01:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.72 with SMTP id x8ls3664710ljd.12.gmail; Fri, 06 Oct
 2017 11:01:10 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCbDw58hQDxVR4wqY6BWh8+RK2u6Mc4n2M3OtOQ1ZvsCIShTK2OOpvDXRoVt8Dz7q4kzHMY
X-Received: by 10.25.155.140 with SMTP id d134mr99191lfe.28.1507312870703;
        Fri, 06 Oct 2017 11:01:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507312870; cv=none;
        d=google.com; s=arc-20160816;
        b=NmTtbU8tjmFIn24J6htjN0dzKIKOBJ+XeVIdf9ecWtBrwBLZehGDmuKWBtxYws1ADr
         JoeDjRmUj62V7/KGpYon4TvfMDuQBrXQfouzVsNClHq4T4/jDChfP/D5GVWqDVysqRjN
         2hNmMJ+mqdh/6QhmZcwnAPCYsq/mC9n0yyCwB8FDEb2qM9r1gCWTIVoLDGXMAnsyL5mp
         SNjYUi4QHrHlv7Qwj+aacxCPNzjRJ4ZBk1EvpUbo5I1q7Ep8sN/dER5DwyunR/oHO7+E
         jExeBNWfwbaOH7Zb/Miu938Hy/Zdx0Z/MkcUAj6OmQfNwinVIGI/ozLpZBhGEDUjDYbq
         YWZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=xAaMpRq0kohVxYb42fTMSJ2Vgz/koYjc/iFoTWR3O8E=;
        b=gAbCVwDC60zkdGUfLPWs98Cml67S/ue9PdEo+IqoTTOsgvLgYd6MfHf3HQdDBms8bJ
         PuhYJEqTu6He2gGPSEQBNEmnwGDmXa/+k6ny+kmsUG13iGxHXFACYNzxoScfvBIFXt07
         Vr1LD1WXjySCSRdW1u19E2ZgPNCOFB7emzn6w8PqDBv+qOUb4rbiSD4QIVf0wkJV3xZ0
         YF/PPiXED9gQ+UQtdzdKykdtClFColIy0PB2yVeIRUanE95nWMEMuA1TQV60SZZGxEzz
         vwkExHOhiq9wMqkhdBil8G5ebb8JnHbr96FwxoumMZbN49Nu/gFgC8qOBmQqrrL4/nRZ
         b8rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id i68si108964lfk.6.2017.10.06.11.01.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 11:01:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:53546 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e0Wvt-0004Xg-HN; Fri, 06 Oct 2017 20:01:09 +0200
Subject: Re: [PATCH v7 1/3] backlight: Add
 IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
To: Daniel Vetter <daniel@ffwll.ch>,
 Daniel Thompson <daniel.thompson@linaro.org>
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
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <c676f762-00a8-0883-c4db-9b6e97ebdd11@tronnes.org>
Date: Fri, 6 Oct 2017 20:01:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171003090403.5mpxu22lxu2f7x7g@phenom.ffwll.local>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 03.10.2017 11.04, skrev Daniel Vetter:
> On Tue, Oct 03, 2017 at 09:51:49AM +0100, Daniel Thompson wrote:
>> On 03/10/17 09:03, Daniel Vetter wrote:
>>> On Mon, Oct 02, 2017 at 12:00:54PM +0300, Jani Nikula wrote:
>>>> On Mon, 02 Oct 2017, Daniel Thompson <daniel.thompson@linaro.org> wrote:
>>>>> So I'm coming to this patchset cold but can you explain *why* something
>>>>> wants to call of_find_backlight_by_node() when there is no backlight
>>>>> support enabled. Why isn't the code that called is conditional on
>>>>> BACKLIGHT_CLASS_DEVICE?
>>>>>
>>>>> The undefined symbol issue is a pain but to be honest I'd rather solve
>>>>> the use of undefined symbols by avoiding declaring them; this making
>>>>> them into compile errors rather than link errors.
>>>> Typically the kernel header files define static inline stubs of the
>>>> functions when the actual functions aren't configured/built. The code
>>>> using the functions looks the same regardless of the config option, and
>>>> handles the -ENODEV or NULL or whatever returns from the stubs
>>>> gracefully. With the inlines, the compiler can usually throw out much of
>>>> the code anyway.
>>>>
>>>> In this regard, the backlight interface is an exception, forcing the
>>>> callers to wrap the code around IS_ENABLED(BACKLIGHT_CLASS_DEVICE), not
>>>> the rule.
>>> fwiw, I think it'd be great if we can move backlight over to the common
>>> pattern, like everyone else. It's pretty big pain as-is ...
>> For sure, after Jani's mail yesterday I looked at the GMA500 driver and
>> concluded I didn't want code related to backlight having to look like that!
>>
>> Currently the three main patterns of use are:
>>
>>   1. Standalone drivers simple depend on BACKLIGHT_CLASS_DEVICE,
>>   2. Some compound drivers select BACKLIGHT_CLASS_DEVICE (the AMD DRM
>>      driver is an example of this),
>>   3. Other compound drivers perform heroics with the pre-processor.
>>
>> The main reason I'm not just agreeing straight away is that, to adopt the
>> static inline pattern for the whole API, we have to believe that #3 above is
>> desirable. Given the size and scope of the compound drivers in #3 above, I
>> don't entirely understand why they want to avoid the select.
> People love to over-configure their kernels and shave off a few bytes. And
> big gpu drivers might have backlight support, but not always need it (e.g.
> if you run without a panel as e.g. a tv set-top-box). Same with e.g. a
> driver that supports both OF/DT and pci to find its devices.
>
> On the desktop gpu driver side we don't really subscribe to this idea of
> making everything optional, hence select (mostly), except select is a huge
> pain. On the mobile/soc gpu side, #3 seems to be the desired outcome.
> Doing static inline helpers for backlights would make both easier (since
> in the end for desktop you just get a distro kernel that enables
> everything anyway).
>
> So yeah, imo if you think backlight should be a Kconfig, then it should
> have static inline dummy functions to make life simpler for everyone. Only
> exception are pure driver-only subsystem code which aren't ever called by
> anything outside of your subsystem. But since the point of the backlight
> subsystem is to provide backlight support to other drivers (there's still
> the dream that we don't offload this onto userspace, that just doesn't
> work well) we really should have these static inline helpers.

I suggest we put all the backlight subsystem only functionality we need,
into the backlight subsystem :-)
I've put together a suggestion below and I've deliberately dropped the
of_ infix in backlight_get() to make room for possible future additions
that can make it possible to set the connection between device and
backlight using platform table or ACPI, fashioned after gpiolib.


include/linux/backlight.h:

/**
  * backlight_enable - Enable backlight
  * @bd: the backlight device to enable
  */
static inline int backlight_enable(struct backlight_device *bd)
{
     if (!bd)
         return 0;

     bd->props.power = FB_BLANK_UNBLANK;
     bd->props.state &= ~BL_CORE_FBBLANK;

     return backlight_update_status(bd);
}

/**
  * backlight_disable - Disable backlight
  * @bd: the backlight device to disable
  */
static inline int backlight_disable(struct backlight_device *bd)
{
     if (!bd)
         return 0;

     bd->props.power = FB_BLANK_POWERDOWN;
     bd->props.state |= BL_CORE_FBBLANK;

     return backlight_update_status(bd);
}

/**
  * backlight_put - Drop backlight reference
  * @bd: the backlight device to put
  */
static inline void backlight_put(struct backlight_device *bd)
{
     if (bd)
         put_device(bd->dev);
}

#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
struct backlight_device *backlight_get(struct device *dev);
struct backlight_device *devm_backlight_get(struct device *dev);
#else
static inline struct backlight_device *backlight_get(struct device *dev)
{
     return NULL;
}

static inline struct backlight_device *devm_backlight_get(struct device 
*dev)
{
     return NULL;
}
#endif



drivers/video/backlight/backlight.c:

/**
  * backlight_get - Get backlight device
  * @dev: Device
  *
  * This function looks for a property named 'backlight' on the DT node
  * connected to @dev and looks up the backlight device.
  *
  * Call backlight_put() to drop the reference on the backlight device.
  *
  * Returns:
  * A pointer to the backlight device if found.
  * Error pointer -EPROBE_DEFER if the DT property is set, but no backlight
  * device is found.
  * NULL if there's no backlight property.
  */
struct backlight_device *backlight_get(struct device *dev)
{
     struct backlight_device *bd = NULL;
     struct device_node *np;

     if (!dev)
         return NULL;

     if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
         np = of_parse_phandle(dev->of_node, 'backlight', 0);
         if (np) {
             bd = of_find_backlight_by_node(np);
             of_node_put(np);
             if (!bd)
                 return ERR_PTR(-EPROBE_DEFER);
         }
     }

     return bd;
}
EXPORT_SYMBOL(backlight_get);

static void devm_backlight_get_release(void *data)
{
     backlight_put(data);
}

/**
  * devm_backlight_get - Resource-managed backlight_get()
  * @dev: Device
  *
  * Device managed version of backlight_get(). The reference on the 
backlight
  * device is automatically dropped on driver detach.
  */
struct backlight_device *devm_backlight_get(struct device *dev)
{
     struct backlight_device *bd;
     int ret;

     bd = backlight_get(dev);
     if (!bd)
         return NULL;

     ret = devm_add_action(dev, devm_backlight_get_release, bd);
     if (ret) {
         backlight_put(bd);
         return ERR_PTR(ret);
     }

     return bd;
}
EXPORT_SYMBOL(devm_backlight_get);




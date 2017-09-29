X-GM-THRID: 6470705412124442624
X-Received: by 10.25.22.24 with SMTP id m24mr331620lfi.36.1506687621212;
        Fri, 29 Sep 2017 05:20:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.46.11 with SMTP id u11ls1132322lju.13.gmail; Fri, 29 Sep
 2017 05:20:19 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDBwW3v7hrk+Qf651qoBcwhxRHjTH1XFk93DEETDqQyoP5juzxgzrukacMq71p5inqF7fSM
X-Received: by 10.25.19.201 with SMTP id 70mr331321lft.35.1506687619495;
        Fri, 29 Sep 2017 05:20:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506687619; cv=none;
        d=google.com; s=arc-20160816;
        b=mS0lRyjtRMkw8P2Vbdy9fiZVwG8D+TBl6r+4krMZKnRFQzdz3vIWBwlQQc2V/rEG8k
         1WXtu63HESnSZLj3XqlqI7iw/ACd4bgDgORDlYDCa5HWHqbLvn6u3JogT0eI+JTK4uqi
         7CQI4MzeYCu1gPjxOMqh9AI6KgW4047fb8knodOU3mDlgcXW/2yJIw3taxqLMM4dsORw
         zgVFv6rq+C4HKYIa0fPuUXun2rBt30e2Rt5Abpo/S270Kfhc8vq25OAs4gwahGJnefRu
         o2IgH69Upx+8YdRrvRagm6KBhem9Kbbm5PhIxawoRFp6Y8hguvRyxiotRPjALb3iSnos
         1q8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:arc-authentication-results;
        bh=/tWn9Y8FsU9E8QmiC3fRHGBWS2jSEUQn0oRc2MRXEUc=;
        b=RkAfrpNX8ONbwWjxrIlO3BWz3qmibbVR4L6UkmwZdak7SYyi9tCUBBl7MNEy6A1Nrh
         xK+fALnGcpUK4VFs+91t7sviFEb7ZnkbDTsFSIV43azdNTA+HsRpUtIb9361TshS61YG
         zu5LdLlhmZ/S8e2XW01fyLilAOABPTRr7GGtvN7dRX+1Z+nyuHEzTmlmTTayEwczP0gu
         dSxau/lRsKjmHq7WsKGNV5ywOIaBbByq9SfCGXCXyO/DlRGjxR3yKbPbtprrD9PlF+Ai
         Yv+7Tz8+BJs6WfUjn9+g7GtCpkPJt20O1NE/fMUXk07kxHDFftSoeujrg+rn8b59ihr6
         xi9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id v69si158045lfa.5.2017.09.29.05.20.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 05:20:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:59570 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1dxuHC-0004Vq-Jm; Fri, 29 Sep 2017 14:20:18 +0200
Subject: Re: [PATCH v3 2/2] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <bb974658fdf1945e13120b58f77755f8184a7212.1506589807.git.meghana.madhyastha@gmail.com>
 <6a467fc9-547e-2469-74fb-92384d2cae71@tronnes.org>
 <20170929031746.GA9859@meghana-HP-Pavilion-Notebook>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <463f06a5-5e80-6781-19b0-7f228f9e040b@tronnes.org>
Date: Fri, 29 Sep 2017 14:20:16 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170929031746.GA9859@meghana-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Den 29.09.2017 05.17, skrev Meghana Madhyastha:
> On Thu, Sep 28, 2017 at 06:19:35PM +0200, Noralf Trønnes wrote:
>> Den 28.09.2017 11.15, skrev Meghana Madhyastha:
>>> Add devm_drm_of_find_backlight and the corresponding release
>>> function because some drivers such as tinydrm use devres versions
>>> of functions for requiring device resources.
>>>
>>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>>> ---
>>> Changes in v3:
>>> -None
>>>
>>>   drivers/gpu/drm/drm_of.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
>>>   include/drm/drm_of.h     |  2 ++
>>>   2 files changed, 50 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
>>> index d878d3a..238e8e5 100644
>>> --- a/drivers/gpu/drm/drm_of.c
>>> +++ b/drivers/gpu/drm/drm_of.c
>>> @@ -304,3 +304,51 @@ struct backlight_device *drm_of_find_backlight(struct device *dev)
>>>   	return backlight;
>>>   }
>>>   EXPORT_SYMBOL(drm_of_find_backlight);
>>> +
>>> +/**
>>> + * devm_drm_of_find_backlight_release - Release backlight device
>>> + * @dev: Device
>>> + *
>>> + * This is the release function corresponding to the devm_drm_of_find_backlight.
>>> + * Each devres entry is associated with a release function.
>>> + */
>> This is an internal function so no need for docs or exporting. I know
>> that some devm_ functions have explicit release functions, but I don't
>> think this is necessary since those users can just use
>> drm_of_find_backlight() directly instead.
> I have a question here. devm_drm_of_find_backlight_release is a
> wrapper around put_device which is passed as a parameter to
> devm_add_action in devm_drm_of_find_backlight. So isn't the function
> useful here ?

We need the function for devm_add_action(), but no one outside of this 
file needs
it. Hence the static definition.

We can't use put_device directly:
     ret = devm_add_action(dev, put_device,
                   &backlight->dev);
because devm_add_action expects an argument like this: void 
(*action)(void *)
and put_device is: void put_device(struct device *dev)
They differ in their argument type: void * vs. struct device *
The compiler would complain.

So we need a wrapper.

>>> +static void devm_drm_of_find_backlight_release(void *data)
>>> +{
>>> +	put_device(data);
>>> +}
>>> +EXPORT_SYMBOL(devm_drm_of_find_backlight_release);
>>> +
>>> +/**
>>> + * devm_drm_of_find_backlight - Find backlight device in device-tree
>>> + * devres version of the function
>>> + * @dev: Device
>>> + *
>>> + * This is the devres version of the function drm_of_find_backlight.
>>> + * Some drivers such as tinydrm use devres versions of functions for
>> No need to mention tinydrm here.
>>
>>> + * requiring device resources.
>>> + *
>>> + * Returns:
>>> + * NULL if there's no backlight property.
>>> + * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
>>> + * is found.
>>> + * If the backlight device is found, a pointer to the structure is returned.
>>> + */
>>> +struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
>>> +{
>>> +	struct backlight_device *backlight;
>>> +	int ret;
>>> +
>>> +	backlight = drm_of_find_backlight(dev);
>>> +	if (IS_ERR_OR_NULL(backlight))
>>> +		return backlight;
>>> +
>>> +	ret = devm_add_action(dev, devm_drm_of_find_backlight_release,
>>> +			      &backlight->dev);
>>> +	if (ret) {
>>> +		put_device(&backlight->dev);
>>> +		return ERR_PTR(ret);
>>> +	}
>>> +
>>> +	return backlight;
>>> +}
>>> +EXPORT_SYMBOL(devm_drm_of_find_backlight);
>>> diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
>>> index e8fba5b..071fb3b 100644
>>> --- a/include/drm/drm_of.h
>>> +++ b/include/drm/drm_of.h
>>> @@ -30,7 +30,9 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>>>   				struct drm_panel **panel,
>>>   				struct drm_bridge **bridge);
>>>   struct backlight_device *drm_of_find_backlight(struct device *dev);
>>> +struct backlight_device *devm_drm_of_find_backlight(struct device *dev);
>>>   #else
>> We need a dummy version of devm_drm_of_find_backlight() here that
>> returns NULL as in the previous patch.
>>
>>> +static void devm_drm_of_find_backlight_release(void *data);
>> And this isn't needed as explained above.
>>>   static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
>>>   						  struct device_node *port)
>>>   {
>> I'd appreciate if you could also switch mi0283qt over to this helper :-)
>>
>> Noralf.
>>
>>



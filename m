X-GM-THRID: 6475592721521180672
X-Received: by 10.28.54.84 with SMTP id d81mr275161wma.21.1509117125341;
        Fri, 27 Oct 2017 08:12:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.170.72 with SMTP id q8ls2065388wrd.3.gmail; Fri, 27 Oct
 2017 08:12:04 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RuybpR0eWvFwD/lIeWdZx9DZUjSpibWpWGZ2rPyTmIRGslV1D4SyqvvSWg/mzy8oi9MCtn
X-Received: by 10.28.156.145 with SMTP id f139mr291607wme.10.1509117124533;
        Fri, 27 Oct 2017 08:12:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1509117124; cv=none;
        d=google.com; s=arc-20160816;
        b=ErgU/G2vdKMIfLpz6F8xZMt6qmX3FUeipgIeN4nozI8KtYGO2+xTznq6hFG0UlMZsX
         x9ZG+d0jb3qgaPbw6AkjSOqNXkUb2TO1cLmJ7EuIi6752WenAc5gu8TJwf9YGxICM3Rb
         tr0QBiTR9R5vgRKoA+/aZ4DB9B1UosAYzrAp/mRKv7bTaiuQt17zOkblmvHcprlJKvnK
         cRc7lIe++WQoeS7OKBXNP+lkrGUW/+a15XqJoBial/TzAtzbbqDLdvcJozbbHki3h/Ty
         rkNsBsGNVjGjpTullV1ROFd0fN3PC1ugNEKkHkCnuTOnCvB5H486dz1wPSwrtZzAiD6Q
         v9sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=im3xHJnnQajD02Dgl1G9wUzP3OMW63BAWCUtfg6FIeU=;
        b=glfN8gpxDUDlWwH+AVcnexCJPJsQHy9Mkg+QMFJasfpsABfjnzmLAlH5Vxo/n+537r
         lfCzqs9+gJycS4sysg+H/caEGJY9kUn8L26mfX8/j4RcXEjPmuTeTrDNECe3yVzIzF8+
         p8YxFMsntd7xFWIioC1MblJo5pPxOZ5HPZ370F9ICCwEW27VT3g7C9j5YCH6+gJFlbkk
         /AGiZDo4dKvwPxDEXLxhn+gUgPqT5nLG4isfuEzwE7k7fWprW+ARe03dlmla1PrLOtBF
         iUL82LFF8Y2OwGyC05ZIrHNaHwt3D8O2FKSg6yZCWv5iaFfc/kAUok0bwvHX4sDQ/nQR
         09IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=N+bydWTS;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <daniel.thompson@linaro.org>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id m74si65899wma.0.2017.10.27.08.12.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Oct 2017 08:12:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=N+bydWTS;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm0-x235.google.com with SMTP id m72so4176375wmc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Oct 2017 08:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=im3xHJnnQajD02Dgl1G9wUzP3OMW63BAWCUtfg6FIeU=;
        b=N+bydWTS64x1sSfKiC2V7ZQgpTar3yvZ8Iwe2rp9VGxgESdFlLh3bCC3Q0z8HlaDYE
         g0gAC/HTX7Ni+nZMoAPDs61caAjBox0F3vAMnvJp/mGs18tIB04KLqGwzCaaD0NiJ6W5
         PbtF87YQTvwaQr/GKjrxvEbkhf1cCoNVoqf3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=im3xHJnnQajD02Dgl1G9wUzP3OMW63BAWCUtfg6FIeU=;
        b=B1m/hqSFldjaPe0aDZ7ULN5jxvZfjd3s/14aiWqSTKaaFqkBOfrg7Yfyj+VC1j82Eq
         qX/33L0D0uNV6QOrMCblnRJmVlrX5+BTru1fzrLLcoSpFpScgkbU7ygAlhwuVnwGRb9p
         4oeSIh+6EJ4mEzu5YvBzS8BIbOI+xkOzneOhViopAQGn0TTuzh3zEE2TCCsMq0XQL54A
         EW4y7UGa9hGhnck8Zh/dn9GATI5+9UTt/GjMNLUuwjmqkT4s8p57hA5N4auTlUcONXXl
         WlwI2cShHKWMkOGrrVs2reJMO9SK/vFoNKSBZ5AFstmjYO+qqlgYfZAKFyPmmG/44ET4
         xKnA==
X-Gm-Message-State: AMCzsaWliHbgJl7bcWSuuy/4EdT4og+8IeAZFpcoTEexB0W8ptdwT1VE
	DZJE3barLGVWRgSwCQRbmbmagw==
X-Received: by 10.28.241.10 with SMTP id p10mr620185wmh.113.1509117124171;
        Fri, 27 Oct 2017 08:12:04 -0700 (PDT)
Return-Path: <daniel.thompson@linaro.org>
Received: from [192.168.1.191] (cpc87211-aztw31-2-0-cust196.18-1.cable.virginm.net. [82.46.60.197])
        by smtp.googlemail.com with ESMTPSA id 29sm8081399wrz.77.2017.10.27.08.12.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Oct 2017 08:12:03 -0700 (PDT)
Subject: Re: Re: [Outreachy kernel] [PATCH v14 2/3] drm/tinydrm: Move
 tinydrm_of_find_backlight to backlight.c
To: Sean Paul <seanpaul@chromium.org>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch,
 noralf@tronnes.org, outreachy-kernel@googlegroups.com,
 dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com
References: <cover.1508586429.git.meghana.madhyastha@gmail.com>
 <678c3adb07b729acf6e80119ab9adec01d89842f.1508586429.git.meghana.madhyastha@gmail.com>
 <20171024153831.jdbyct5ikxengnuz@art_vandelay>
 <80c7411c-75c9-725b-0065-d54348701891@linaro.org>
 <20171025073902.76q767zclmkzkq4i@art_vandelay>
From: Daniel Thompson <daniel.thompson@linaro.org>
Message-ID: <f78fe51c-8d2d-14ef-ce77-f8ee856ccc1c@linaro.org>
Date: Fri, 27 Oct 2017 16:12:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171025073902.76q767zclmkzkq4i@art_vandelay>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 25/10/17 08:39, Sean Paul wrote:
>>>> diff --git a/include/linux/backlight.h b/include/linux/backlight.h
>>>> index b88fabb..f98b684 100644
>>>> --- a/include/linux/backlight.h
>>>> +++ b/include/linux/backlight.h
>>>> @@ -159,6 +159,16 @@ static inline int backlight_disable(struct backlight_device *bd)
>>>>    	return backlight_update_status(bd);
>>>>    }
>>>> +/**
>>>> + * backlight_put - Drop backlight reference
>>>> + * @bd: the backlight device to put
>>>> + */
>>>> +static inline void backlight_put(struct backlight_device *bd)
>>>> +{
>>>> +	if (bd)
>>>> +		put_device(&bd->dev);
>>>> +}
>>>
>>>
>>> As I mentioned in my last review, I don't think we need this function.
>>
>> Just to check... some DRM drivers do allow themselves to work if
>> CONFIG_BACKLIGHT_CLASS_DEVICE isn't enabled (as discussed earlier in the
>> thread ;-). Did you consider what happens when this happens.
>>
>> Wrapped up with backlight_put() we are sure never to accidentally
>> dereference bd in DRM de-init paths when CONFIG_BACKLIGHT_CLASS_DEVICVE if
>> it is not set. With a raw put_device() all that conditional logic ends up on
>> the driver.
>>
> 
> Thanks for pointing that out, definitely a fair point.
> 
> I don't really mind putting the NULL check in the driver code. The return
> values of of_find_backlight are well documented, so it shouldn't be too much
> of a problem.
> 
> That said, this is your rodeo, so if you prefer to supply the put helper, that's
> A-Ok with me.

Well... I don't want to add something with no callers... but if 
something else in the patch set (or near future) uses it then I'm 
certainly happy to have it!


Daniel.


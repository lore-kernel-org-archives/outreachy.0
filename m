X-GM-THRID: 6200307025703862272
X-Received: by 10.180.210.71 with SMTP id ms7mr715630wic.4.1443623104739;
        Wed, 30 Sep 2015 07:25:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.230.226 with SMTP id tb2ls979176wic.49.canary; Wed, 30 Sep
 2015 07:25:04 -0700 (PDT)
X-Received: by 10.180.10.202 with SMTP id k10mr4813078wib.2.1443623104325;
        Wed, 30 Sep 2015 07:25:04 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-la0-x230.google.com (mail-la0-x230.google.com. [2a00:1450:4010:c03::230])
        by gmr-mx.google.com with ESMTPS id wh9si22227lbb.2.2015.09.30.07.25.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 07:25:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c03::230 as permitted sender) client-ip=2a00:1450:4010:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c03::230 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-la0-x230.google.com with SMTP id zv5so48166749lab.1
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 07:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=BvAffHHkH7HRNxDBFM9snEyWs/mGvsutNtMutYaMGho=;
        b=Dh3m+A1c0FQh4OP9bfsrN7/nkmZOzmk2j1e5zD+C7Pt7lUlrUC6jdN99VJWfXqg6lu
         uk8ReM9Hgd03o8Bg1RRgwJHytja0yu5o8llJZJnmn61lSx0ZHzGWPZoTth+fFtBlTgJ5
         4t/1pU0V5FazUvZgxUI68j/FP42VbfTHuzXQ0E/tfc2XYjIkph2lFzbL2IuVpgNsag/5
         mZCfonvl7J91N+lbc3uikKQ62sz0wNiKG7oTZMjbxrIcTu8Tg243TCFHkZoMNH3xSUSD
         GLc6e8cVi7CgP3bG1odHa1so0A7UnOY2w/7i43MJvxLLZfnx9OAwzrG1u8IDp5Sf3qx1
         2eyw==
MIME-Version: 1.0
X-Received: by 10.25.151.205 with SMTP id z196mr803551lfd.97.1443623104090;
 Wed, 30 Sep 2015 07:25:04 -0700 (PDT)
Received: by 10.25.217.207 with HTTP; Wed, 30 Sep 2015 07:25:03 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.11.1509301941230.9256@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443621463-8343-1-git-send-email-shraddha.6596@gmail.com>
	<CAEnQRZAUL-V5o0rRocz7vNRyrkumahJRGwb-48phBAH53sWW3A@mail.gmail.com>
	<alpine.DEB.2.11.1509301941230.9256@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
Date: Wed, 30 Sep 2015 17:25:03 +0300
Message-ID: <CAEnQRZCiMU-Wq0NfBv=-7mhk-xYOzEpNmOfRTO+vOswROW7koA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: cdc: Prefer using the
 BIT macro
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 30, 2015 at 5:15 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
>
>
> On Wed, 30 Sep 2015, Daniel Baluta wrote:
>
>> On Wed, Sep 30, 2015 at 4:57 PM, Shraddha Barke <shraddha.6596@gmail.com>
>> wrote:
>>>
>>> Replace bit shifting on 1 with the BIT(x) macro
>>>
>>> This was done with coccinelle:
>>> @@ int g; @@
>>>
>>> -(1 << g)
>>> +BIT(g)
>>>
>>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>>> ---
>>>  drivers/staging/iio/cdc/ad7746.c | 8 ++++----
>>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/staging/iio/cdc/ad7746.c
>>> b/drivers/staging/iio/cdc/ad7746.c
>>> index 10fa372..aa97437 100644
>>> --- a/drivers/staging/iio/cdc/ad7746.c
>>> +++ b/drivers/staging/iio/cdc/ad7746.c
>>> @@ -52,10 +52,10 @@
>>>  #define AD7746_STATUS_RDYCAP           BIT(0)
>>>
>>>  /* Capacitive Channel Setup Register Bit Designations
>>> (AD7746_REG_CAP_SETUP) */
>>> -#define AD7746_CAPSETUP_CAPEN          (1 << 7)
>>> -#define AD7746_CAPSETUP_CIN2           (1 << 6) /* AD7746 only */
>>> -#define AD7746_CAPSETUP_CAPDIFF                (1 << 5)
>>> -#define AD7746_CAPSETUP_CACHOP         (1 << 0)
>>> +#define AD7746_CAPSETUP_CAPEN          BIT(7)
>>> +#define AD7746_CAPSETUP_CIN2           BIT(6) /* AD7746 only */
>>> +#define AD7746_CAPSETUP_CAPDIFF                BIT(5)
>>> +#define AD7746_CAPSETUP_CACHOP         BIT(0)
>>>
>>>  /* Voltage/Temperature Setup Register Bit Designations
>>> (AD7746_REG_VT_SETUP) */
>>>  #define AD7746_VTSETUP_VTEN            (1 << 7)
>>
>>
>> What about this? It's preferred to fix all issues of the same type in
>> a single patch.
>
>
> These are instances of mixed cases of BIT macro. Wouldn't it be better to
> leave them as is ?
> Should I change them ?

Hmm, isn't

#define AD7746_VTSETUP_VTEN            (1 << 7)

the same as the macros you've fixed?


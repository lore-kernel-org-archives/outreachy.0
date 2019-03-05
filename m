X-GM-THRID: 6664599067722514432
X-Received: by 2002:a02:c04b:: with SMTP id u11mr1782855jam.13.1551805810099;
        Tue, 05 Mar 2019 09:10:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:186:: with SMTP id 128ls1024280itk.4.canary-gmail; Tue,
 05 Mar 2019 09:10:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqwjAgmfyYd5k+QGOjSgBrhFShW5XBSUk7ZwA96OWr+TRZ1XOrFramoBJq9/YKHw4pBz3vwN
X-Received: by 2002:a24:7d8a:: with SMTP id b132mr3199671itc.20.1551805809115;
        Tue, 05 Mar 2019 09:10:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551805809; cv=none;
        d=google.com; s=arc-20160816;
        b=xqAnxApvyiLCFZv8seGh508nY9TZpVByT6ewHG7KyIUDEdGS3FvBjlKoLMMulTJeL7
         00WaZIzwV4dtrjU69cv/ZwPL9s3V56/kB31dmOWFvjYbGWSLtHpTRYioBOPbior5ybLL
         kdv4h8K+1qOnZuRg2xKUxpECoqssNw7VFTxVXMQaxJqKnwJ3DI9VqMlZsI4r2PgUZDf2
         2B627fNcrG1bhCFn0Wn/RUYyNTArb4XgC5HnkVI0sOj60dHeagSI1QL+vNNyXuPZ1noX
         TQbwr704CgdApT92IjfYezSnRtuDvgd2/E13KGRF4Fnn8yGjNfYONQAyMUwXcBuEH1Xv
         +lCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=wSXAiRYd+2krrcbmTG2PsMvKt3aUQ49d4C6U7evpPkI=;
        b=TpT6gAlTdPMff7RAwI7D78Ia/ZZMOUzry6cMmjeZsjfhpoVvrbjd6IeKgZWRrpG0v7
         HAXCLLpMCjqc25003OyU5haOkvDWCv8wYzgflsMXdMgvAbq73IGBY3F42HeI/YpIFTuJ
         /UG+hxUo2sDdkbKgJtWx1GZ0yjGI69Of/qQn0dyjb6AZv3aFwQu51Nr41IqOZ/tgD+1K
         fZ6xfX3rKNCQlYo+OhshFwoWElO7ceCNR8KBXeI303cPGC8sWKSbeFZAE4PE38FB/PNA
         46XBB6jzyr9RdQrEf6uCYRuILEVOOZhetVsEeftuDhDMUhwep6e8bymW/YGR5KqHiumw
         3CWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Akot6drn;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic309-20.consmr.mail.sg3.yahoo.com (sonic309-20.consmr.mail.sg3.yahoo.com. [106.10.244.83])
        by gmr-mx.google.com with ESMTPS id y7si618923iof.5.2019.03.05.09.10.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 09:10:09 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) client-ip=106.10.244.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Akot6drn;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551805806; bh=wSXAiRYd+2krrcbmTG2PsMvKt3aUQ49d4C6U7evpPkI=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=Akot6drnUYHRpPbnPniazPjglwrWbSPrB/Tv26dxKFsgdFXwsJQVR4OSO9Z60MZ2s0FLAEzsO+X6GyFhx2iqirHVqfBQcRQ5lUfjWaC0JmJE1jyfMgIsM52JjFJWt8rK6Q2+dyxrdoweFY4DLxyCUNJAbfF06flSUFSG6owvhK3B9IiszbPBy1JMkzcUC8jPA7hl0iZu10fxQ9YcYa9iFXayOpbNn55X46ksoPzNyuxr31dEWBhpw1Apsa0n2fKck3HwO3wG7EWgSjx+ZlHdTZHDfARfI2eJfY67mWrKCllzw39AHmCN5lKom36W7/dEcI3YXWQT5E/PKsiUNYbvJw==
X-YMail-OSG: VJz9pz0VM1k4PPeaVn8xVrt_XuUQU0FpeO1zu0d2OW0hVx5JTHZL9s1Do3gNFOB
 Ap5Q4DdCaP70lBkFvekSJzykevB0nO91.X8bDqMqJ0cMbePe8Z9LpMHfUrPe2INoR7AzJFbTlluA
 HFxfI9lDBhpz4GH4SNLLEPNhtBu_ZVBFuZFYtbU_1uCdiXjoNWCesx4SFaWPrjWKT9p0TZj.FFFn
 dxAimj7r8nErFSGnISJElUt9xZvXscEsAWdy939I2rbB7aOBxhsH.c7__c_gt5cTQWWu3Ho5KeRl
 rWxQj.l3ASkA0SpZXRoZrO.UyNoruYjggSfYoTxQgdNrIhOKqbNCYE2Ae03JRbC28PJGmMVXunlu
 _KpjiecXbHYU2gacO2hus2OHcYO_l.rl7qWGMpRpi2RS8hCQ_6QupK.sGz4L7Bq22rjfln.SBYLl
 ZhIqtL_b0xrDxmHdc9rxlDPKj46yFiQajy0I9AQKVl72eIpjnn1WzA_Ukz2PEZXXVHO8cVFjWWD0
 GUiZGNaBga3BIxm6aj6ZwznoR3F_y8x3X_1Q3.qa74NcfTYg79VBZsi.0Anv.91ykfMUsmwUzhka
 PfQRMJ8glh8KVx0k5b0MtG2D6l7iT3L6Vv4Rp3CZCSpOTOzmjAleduRmLZstHb1Vs5Z8t1Lw_buU
 Xp5OcXxqkOlyxft69fLvvj0JF2r8yq10sjRf.jvGRywcHxYCFdfgWEtZVBBRd6PHRJjnP6HCK5EQ
 psHy5fSoWRbzqfqYrVxRtnOaDdN7NlnvWw8Fd_Q9wYOkQwcEt6kw6tyR5lSCf302GjWJ21kYwsCd
 w950cGL54vzrQNznCx649mouzwWhnvTmuOCLNS84lWH_M9UjjO7M8cyhAnD8jiksjPjgmR8lWq_.
 VhrEH6hJlHjxcs.o_Sqb7ByX5UjaClj8I0IKwlFsEe3to0sLJM7TgZRTlsDl_SqsS0fyP0ETBlL3
 ma2jULYJMWAOzNtExKBdwGb16zscjUKMv7thzpuGbsxg8PLUOP4AvIvmFUOhF142W0rNb84SHtAN
 AC15YxTais9YefPosY9cr0dsoovgFzsusnU73UNCAEsE_HIZxf4z4salf7UJLvjpz2ndtW_hLnw-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.sg3.yahoo.com with HTTP; Tue, 5 Mar 2019 17:10:06 +0000
Received: from 122.163.79.112 (EHLO [10.0.2.15]) ([122.163.79.112])
          by smtp420.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 0f0617c469c821f5a4995f213806fba8;
          Tue, 05 Mar 2019 17:10:02 +0000 (UTC)
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: greybus: Add brackets to
 avoid precedence issues
To: Julia Lawall <julia.lawall@lip6.fr>,
 Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: Greg KH <gregkh@linuxfoundation.org>, johan@kernel.org, elder@kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
References: <20190304173947.30135-1-nishka.dasgupta@yahoo.com>
 <20190304190228.GD13830@kroah.com>
 <CAC4++KAwPEjSSTbgnRYXCU=z_WNJAs3rbAtL0XboZ-OCmjCmrg@mail.gmail.com>
 <alpine.DEB.2.21.1903042210360.2591@hadrien>
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <fbf03e1e-4e32-cbeb-4748-17e47d07d238@yahoo.com>
Date: Tue, 5 Mar 2019 22:39:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1903042210360.2591@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 05/03/19 2:42 AM, Julia Lawall wrote:
> 
> 
> On Tue, 5 Mar 2019, Nishka Dasgupta wrote:
> 
>> On Tue, Mar 5, 2019 at 12:32 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>>>
>>> On Mon, Mar 04, 2019 at 11:09:47PM +0530, Nishka Dasgupta wrote:
>>>> Add parentheses around arguments to avoid precedence issues. Issue found
>>>> by Checkpatch.
>>>>
>>>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>>>> ---
>>>>   drivers/staging/greybus/camera.c | 6 +++---
>>>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
>>>> index 615c8e7fd51e..7b653a4fd63f 100644
>>>> --- a/drivers/staging/greybus/camera.c
>>>> +++ b/drivers/staging/greybus/camera.c
>>>> @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
>>>>
>>>>   #define GB_CAMERA_MAX_SETTINGS_SIZE  8192
>>>>
>>>> -#define gcam_dbg(gcam, format...)    dev_dbg(&gcam->bundle->dev, format)
>>>> -#define gcam_info(gcam, format...)   dev_info(&gcam->bundle->dev, format)
>>>> -#define gcam_err(gcam, format...)    dev_err(&gcam->bundle->dev, format)
>>>> +#define gcam_dbg((gcam), format...)  dev_dbg(&gcam->bundle->dev, format)
>>>> +#define gcam_info((gcam), format...) dev_info(&gcam->bundle->dev, format)
>>>> +#define gcam_err((gcam), format...)  dev_err(&gcam->bundle->dev, format)
>>>
>>> Please explain how adding an extra () helps anything here.
>>>
>>> I think checkpatch is very confused.  Always use your brain when running
>>> it, as it is just a perl script and sometimes gets things wrong (like
>>> here.)
>> I thought adding brackets just demarcates the parameter(s)? If that is
>> not necessary or useful, then I won't submit this patch in future.
> 
> I'm not sure what this does.  A macro parameter list shouldn't have
> parentheses in it.  I wonder if cpp sees the parentheses and decides it is
> not a paramater list, but rather part of the macro body?  Are these macros
> actually used?  If not you can just remove them.

Ah, okay, I'll look into whether these macros are actually used.
- Nishka

> julia
> 
> 
>>
>>> thanks,
>>>
>>> greg k-h
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304190228.GD13830%40kroah.com.
>>> For more options, visit https://groups.google.com/d/optout.
>> - Nishka
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKAwPEjSSTbgnRYXCU%3Dz_WNJAs3rbAtL0XboZ-OCmjCmrg%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


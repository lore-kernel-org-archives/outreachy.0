X-GM-THRID: 2499198058496
X-Received: by 10.50.26.40 with SMTP id i8mr13173959igg.8.1424722376910;
        Mon, 23 Feb 2015 12:12:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.116 with SMTP id ih20ls593653igb.20.canary; Mon, 23 Feb
 2015 12:12:56 -0800 (PST)
X-Received: by 10.66.196.11 with SMTP id ii11mr13774242pac.37.1424722376188;
        Mon, 23 Feb 2015 12:12:56 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x230.google.com (mail-qc0-x230.google.com. [2607:f8b0:400d:c01::230])
        by gmr-mx.google.com with ESMTPS id kt5si6588367qcb.3.2015.02.23.12.12.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:12:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::230 as permitted sender) client-ip=2607:f8b0:400d:c01::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::230 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x230.google.com with SMTP id b13so13107178qcw.7
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=cPDuIM4WGxNYGrJadkYFCN943Gc6hr5R+F9uAoc896w=;
        b=VkG9EN4uZyH5epwJX+95MBawlVKn7ywTidzLHc77Wy9C5Qh/3FAMo3Umz8umGcCZ2o
         UfwX39nT/RdVaTWkheZSRoPNHSxXZVAK76B379IDY9LLZYnLqCNue9CKjwZWN88zgbqh
         Mzo8TylWNO79A44BLNuu+Sc8wRDeU8GBNRx1WrJR6EmhqpeX9FVWeHlqILgi1K38U/XU
         geBZ5TUjkVq+liHn9oGqd44fZ6OIz8WSk6KZWBoMt3C0XUBJPReKrbQhyiASYO1/9qKY
         xggyOw7uxPsCj51KNj064ksXSXgPiNOi0je+kqrh8uxe2iRj+nr5N1gkaxs4qWke++V1
         vXiw==
X-Received: by 10.140.134.198 with SMTP id 189mr1544179qhg.7.1424722376059;
        Mon, 23 Feb 2015 12:12:56 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 21sm12958857qgi.36.2015.02.23.12.12.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:12:55 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB89C6.5050200@gmail.com>
Date: Mon, 23 Feb 2015 15:12:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vaishali Thakkar <vthakkar1994@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8712: Use mod_timer
References: <20150223105627.GA4466@vaishali-Ideapad-Z570>	<54EB81D4.30906@gmail.com>	<CAK-LDb+Vt8xkH269yKTE+=3YuvaopYDRMmBGbTKU70cD-G5cUQ@mail.gmail.com>	<54EB8516.2080606@gmail.com> <CAK-LDbJMCxBbrzDRnjKGygYz7r70pyC-zELMOR4525u7HRiDKg@mail.gmail.com>
In-Reply-To: <CAK-LDbJMCxBbrzDRnjKGygYz7r70pyC-zELMOR4525u7HRiDKg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 15:06, Vaishali Thakkar wrote:
> On Feb 24, 2015 1:22 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
>>
>> On 02/23/15 14:49, Vaishali Thakkar wrote:
>>> On Feb 24, 2015 1:09 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
>>>>
>>>> On 02/23/15 05:56, Vaishali Thakkar wrote:
>>>>> This patch introduces the use of API function mod_timer
>>>>> instead of driver specific function as it is a more
>>>>> efficient and standard way to update the expire field of
>>>>> an active timer.
>>>>>
>>>>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>>>>> ---
>>>>> Changes since v1:
>>>>>       -Edit commit message
>>>>>       -Remove unnecessory parenthesis
>>>>>       -Align second parameter of function
>>>>>        mod_timer properly
>>>>>
>>>>>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---
>>>>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>>>
>>>> I like this patch!
>>>>
>>>> However if you start getting rid of _set_timer() from a driver like
>>>> this, you should try and remove all instances, and then get rid of all
>>>> uses of _set_timer().
>>>
>>> Yes. Actually I sent this patch for mentors' reviews. I thought if this
>>> will be accepted then I will go for sending more patches as there are
> many
>>> instances of _set_timer() in this driver and in other network drivers as
>>> well. And then I can remove those definitions once all cases are
> handled.
>>>
>>> Also, network drivers are using driver specific functions where we can
> use
>>> setup_ timer() function. So, I will go for it as well.
>>
>> Sounds great - I recommend you focus on one change, so start out with
>> one patch that eliminates _set_timer() and then do follow-on patches
>> where you convert other portions of code to use setup_timer().
> 
> Ok. Firstly, I am planning to eliminate use of _set_timer() completly in
> all network drivers and then I will go for setup_timer(). Is it right
> strategy?
> 
> I am just little confused about sending them in series. Can I send a patch
> series [ one patch for each driver] for eliminating _set_timer()?? And then
> one different patch series goes for setup_timer().

I would recommend one patch series per driver, as opposed to one series
for all drivers. So for each driver I would do:

1: Patch to eliminate _set_timer()
2: Patch(es) to convert code to setup_timer()

It is better to do one patch set per driver, as it allows individual
driver maintainers to apply them without touching code they do not
maintainer.

Cheers,
Jes


>> Cheers,
>> Jes
>>
>>>> In addition you are still leaving some unnecessary parenthesis in place
>>>> - see below.
>>>
>>> Oops! yeah. I will remove them in next version.
>>>
>>>> Cheers,
>>>> Jes
>>>>
>>>>
>>>>> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>>> b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>>>>> index 9bb364f..0ce8e9d 100644
>>>>> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>>>>> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>>>>> @@ -129,7 +129,8 @@ static inline void handle_pairwise_key(struct
>>> sta_info *psta,
>>>>>               memcpy(psta->tkiprxmickey. skey, &(param->u.crypt.
>>>>>                       key[24]), 8);
>>>>>               padapter->securitypriv. busetkipkey = false;
>>>>> -             _set_timer(&padapter->securitypriv.tkip_timer, 50);
>>>>> +             mod_timer(&padapter->securitypriv.tkip_timer,
>>>>> +                       jiffies + msecs_to_jiffies(50));
>>>>>       }
>>>>>       r8712_setstakey_cmd(padapter, (unsigned char *)psta, true);
>>>>>  }
>>>>> @@ -153,8 +154,8 @@ static inline void handle_group_key(struct
>>> ieee_param *param,
>>>>>               if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE)
> {
>>>>>                       if (padapter->registrypriv.power_mgnt !=
>>> padapter->
>>>>>                           pwrctrlpriv.pwr_mode)
>>>>> -
>>>  _set_timer(&(padapter->mlmepriv.dhcp_timer),
>>>>> -                                        60000);
>>>>> +
>>>  mod_timer(&(padapter->mlmepriv.dhcp_timer),
>>>>                                       here ^
>>>>> +                                       jiffies +
>>> msecs_to_jiffies(60000));
>>>>>               }
>>>>>       }
>>>>>  }
>>>>>
>>>>
>>>
>>
> 



X-GM-THRID: 2499198058496
X-Received: by 10.236.26.108 with SMTP id b72mr13434811yha.33.1424721176917;
        Mon, 23 Feb 2015 11:52:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.122.105 with SMTP id lr9ls942660igb.14.gmail; Mon, 23 Feb
 2015 11:52:56 -0800 (PST)
X-Received: by 10.66.162.6 with SMTP id xw6mr13496442pab.47.1424721176660;
        Mon, 23 Feb 2015 11:52:56 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x230.google.com (mail-qa0-x230.google.com. [2607:f8b0:400d:c00::230])
        by gmr-mx.google.com with ESMTPS id q2si6442580qcn.2.2015.02.23.11.52.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:52:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::230 as permitted sender) client-ip=2607:f8b0:400d:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::230 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x230.google.com with SMTP id dc16so23728934qab.7
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:52:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=NATTYuD5uRSqCt6+qoR8n00srXaaBbEHajU+9ou1gW8=;
        b=gHXVd0s9QHfgNkfBZSn3Lb6HKg56obREPS5ZEOLkJA2lDYcZ+0Eo/9f5BfxJ9H2h0D
         wkPmuJ77iavdvjV8bbOhsz66t78E1PY9azPZpMLdfOrXNelNa9ME1jYjz9mFTQ/Rh4wm
         z9OIRevW90pD8cZH4y9SYlSn4wZjRmlD0B9fP0XeA50JRcsLWe/btesCIDl4MTsgyNwd
         BTFJly7SxneDNZoAmorVEjoV/ppsdoIzpNclHTo0nge+X1C3GnFoKmO3oGPM03RDwVTx
         6QQP5u1uSqltY7c32lyFpsbZS3KVQi4OTjQQLhWP8rRO8rqlHpTxjNqtjD5p6TRNUBGm
         f/ZA==
X-Received: by 10.140.35.239 with SMTP id n102mr26954389qgn.69.1424721176543;
        Mon, 23 Feb 2015 11:52:56 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id a92sm13061267qgf.11.2015.02.23.11.52.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:52:55 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB8516.2080606@gmail.com>
Date: Mon, 23 Feb 2015 14:52:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vaishali Thakkar <vthakkar1994@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8712: Use mod_timer
References: <20150223105627.GA4466@vaishali-Ideapad-Z570>	<54EB81D4.30906@gmail.com> <CAK-LDb+Vt8xkH269yKTE+=3YuvaopYDRMmBGbTKU70cD-G5cUQ@mail.gmail.com>
In-Reply-To: <CAK-LDb+Vt8xkH269yKTE+=3YuvaopYDRMmBGbTKU70cD-G5cUQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 14:49, Vaishali Thakkar wrote:
> On Feb 24, 2015 1:09 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
>>
>> On 02/23/15 05:56, Vaishali Thakkar wrote:
>>> This patch introduces the use of API function mod_timer
>>> instead of driver specific function as it is a more
>>> efficient and standard way to update the expire field of
>>> an active timer.
>>>
>>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>>> ---
>>> Changes since v1:
>>>       -Edit commit message
>>>       -Remove unnecessory parenthesis
>>>       -Align second parameter of function
>>>        mod_timer properly
>>>
>>>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---
>>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> I like this patch!
>>
>> However if you start getting rid of _set_timer() from a driver like
>> this, you should try and remove all instances, and then get rid of all
>> uses of _set_timer().
> 
> Yes. Actually I sent this patch for mentors' reviews. I thought if this
> will be accepted then I will go for sending more patches as there are many
> instances of _set_timer() in this driver and in other network drivers as
> well. And then I can remove those definitions once all cases are handled.
> 
> Also, network drivers are using driver specific functions where we can use
> setup_ timer() function. So, I will go for it as well.

Sounds great - I recommend you focus on one change, so start out with
one patch that eliminates _set_timer() and then do follow-on patches
where you convert other portions of code to use setup_timer().

Cheers,
Jes

>> In addition you are still leaving some unnecessary parenthesis in place
>> - see below.
> 
> Oops! yeah. I will remove them in next version.
> 
>> Cheers,
>> Jes
>>
>>
>>> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>>> index 9bb364f..0ce8e9d 100644
>>> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>>> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>>> @@ -129,7 +129,8 @@ static inline void handle_pairwise_key(struct
> sta_info *psta,
>>>               memcpy(psta->tkiprxmickey. skey, &(param->u.crypt.
>>>                       key[24]), 8);
>>>               padapter->securitypriv. busetkipkey = false;
>>> -             _set_timer(&padapter->securitypriv.tkip_timer, 50);
>>> +             mod_timer(&padapter->securitypriv.tkip_timer,
>>> +                       jiffies + msecs_to_jiffies(50));
>>>       }
>>>       r8712_setstakey_cmd(padapter, (unsigned char *)psta, true);
>>>  }
>>> @@ -153,8 +154,8 @@ static inline void handle_group_key(struct
> ieee_param *param,
>>>               if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE) {
>>>                       if (padapter->registrypriv.power_mgnt !=
> padapter->
>>>                           pwrctrlpriv.pwr_mode)
>>> -
>  _set_timer(&(padapter->mlmepriv.dhcp_timer),
>>> -                                        60000);
>>> +
>  mod_timer(&(padapter->mlmepriv.dhcp_timer),
>>                                       here ^
>>> +                                       jiffies +
> msecs_to_jiffies(60000));
>>>               }
>>>       }
>>>  }
>>>
>>
> 



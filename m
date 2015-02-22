X-GM-THRID: 2499198058496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e241efa4d6dbf077
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.87.166 with SMTP id az6mr785192wib.1.1424622576658;
        Sun, 22 Feb 2015 08:29:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.10.229 with SMTP id l5ls412412wib.32.gmail; Sun, 22 Feb
 2015 08:29:36 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr779639wjc.2.1424622576396;
        Sun, 22 Feb 2015 08:29:36 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id ev8si500719wib.3.2015.02.22.08.29.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 08:29:36 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f181.google.com with SMTP id r20so11971322wiv.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 08:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=018omCVVxWyUSGW09NeqoW90g9zk6nj185BO8D1Dg5g=;
        b=YD03/FxveIhZMlOwfMwV6y69mWRXy4y19jvD4UX7JQyETZu1/g+69ZgqZXUmlPC5bg
         OsLQCazTLmJ2BH/OPyYbp9kr62uXtocgTM+UV1smI+120EsAVuhasuN6tMXCfaMijZ3V
         ODxgQyrouRRnkIrqsYC9tCzGt3Ra3q2kzWlzYvKRgUgukkAxnKmyK+vwIM9eVEB7u2/W
         tlo4yr3LlgGWDgFCE1Est8ScYjUStqPjAc6sz9Wg0LWg/wAyz+a6I03ZJjgX3W0gZqAc
         tp711C/6iF0CVSwKnvisZnhchOHmOlbE8mudQo4b2YTh9oyrQzlLiRX1tQwCrpKX43bk
         6xCg==
MIME-Version: 1.0
X-Received: by 10.194.77.99 with SMTP id r3mr14244794wjw.149.1424622576296;
 Sun, 22 Feb 2015 08:29:36 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Sun, 22 Feb 2015 08:29:36 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1502221715060.2612@hadrien>
References: <20150222161321.GA3033@vaishali-Ideapad-Z570>
	<alpine.DEB.2.10.1502221715060.2612@hadrien>
Date: Sun, 22 Feb 2015 21:59:36 +0530
Message-ID: <CAK-LDb+uO_RL2y0m_BAEmGF=JW8fvYvOLGVh-kDOUCE1gP+LRw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Use mod_timer
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 22, 2015 at 9:48 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 22 Feb 2015, Vaishali Thakkar wrote:
>
>> This patch introduces the use of API function mod_timer
>> instead of driver specific function as it is a more
>> efficient way to update the expire field of an active
>> timer.
>
> Is it really more efficient, or just more standard?

According to mod_timer definition it is an efficient way but
here its my mistake . It should be efficient and standard I guess.
I will send v2.

>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---
>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>> index 9bb364f..71ef0de 100644
>> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>> @@ -129,7 +129,8 @@ static inline void handle_pairwise_key(struct sta_info *psta,
>>               memcpy(psta->tkiprxmickey. skey, &(param->u.crypt.
>>                       key[24]), 8);
>>               padapter->securitypriv. busetkipkey = false;
>> -             _set_timer(&padapter->securitypriv.tkip_timer, 50);
>> +             mod_timer(&padapter->securitypriv.tkip_timer,
>> +                     (jiffies+msecs_to_jiffies(50)));
>
> You don't need the parentheses around the second argument.  The second
> argument would look nicer lined up with the first one.
>
> Other similar code puts spaces around the +, eg in
> drivers/iio/common/ssp_sensors/ssp_dev.c

Oh. Yes. These parenthesis are unnecessary. I will apply both of these changes
in v2 at both places.

Thanks

>>       }
>>       r8712_setstakey_cmd(padapter, (unsigned char *)psta, true);
>>  }
>> @@ -153,8 +154,8 @@ static inline void handle_group_key(struct ieee_param *param,
>>               if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE) {
>>                       if (padapter->registrypriv.power_mgnt != padapter->
>>                           pwrctrlpriv.pwr_mode)
>> -                             _set_timer(&(padapter->mlmepriv.dhcp_timer),
>> -                                        60000);
>> +                             mod_timer(&(padapter->mlmepriv.dhcp_timer),
>> +                                        (jiffies+msecs_to_jiffies(60000)));
>
> Likewise here.
> julia
>
>>               }
>>       }
>>  }
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150222161321.GA3033%40vaishali-Ideapad-Z570.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Vaishali


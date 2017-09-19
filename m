X-GM-THRID: 6467580145196597248
X-Received: by 10.107.27.70 with SMTP id b67mr1599181iob.101.1505860658679;
        Tue, 19 Sep 2017 15:37:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.7.66 with SMTP id f63ls370464itf.8.canary-gmail; Tue, 19
 Sep 2017 15:37:37 -0700 (PDT)
X-Received: by 10.176.25.197 with SMTP id r5mr1746070uai.20.1505860657871;
        Tue, 19 Sep 2017 15:37:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505860657; cv=none;
        d=google.com; s=arc-20160816;
        b=0mJeS0G87d2e/ulxYuPX4U6jB3czg6WLtGWC7P5Y90kVX/qE2KAr/juMEeKUdjOU5O
         /DHhpVgalDWJIX1Cl0oQfR9BpkG7yTY4qbKE/GHLx4AWkZNHPQvQ0gtwDKj6xrDC+Zw7
         fTarbRaK/PfUeqLtjNIB7EeRstL8mJ2uo8uiTLLiUlHWrfYielwIwgL68e0+aDLVxYxU
         255DvARLR1TTO9ADCf468T9+Bmk8axtVJIg0jevSs2idjGun2b47SYBfsNLrW0b/NESE
         x+6VPPTBT2Z4+JWQYv5jx5zrRnBMlV3RztrPYURVTxIq9rB43Pf64Y4wLQBOk50OhMIm
         0J8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=DSjPBdM5jNY+QZhkXYKe/KVKEFsomqhJYJtxwnCM+BQ=;
        b=uSC1BeBDV7S5MAvQplz9+nc4mwyKwxEEVfcG9fih731USI3pmPw50twRHSpIvRiH6+
         4Z19eWe0sYs/NoreVLvmYH9lLDnU3WKfHs4c6Pw1U/QO6gsDlfnTlzadv+DIDuYhBB0o
         o13LiRPWlZ1gO7oZ7BhOMPwNgm7Nlz88EIS28YBxlXj2YBR8tdODPYPCxIPREhLucDE2
         e3RxHmzhVMrj1pPHH02YPMGF0MtDnlDcAzAHDBkqy+Vf/8Lj4Z/+witFVZIBXNt9P50W
         Of32oM/FuvhWHICsUO9Lh63SEDZW7L74DKcbQ8JEVJYWWQF+dW5IHbG3ekNcY62MPHQv
         nVEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DhGMQ8/x;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id s69si19313ywg.33.2017.09.19.15.37.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 15:37:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DhGMQ8/x;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id o77so656764qke.2
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 15:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=DSjPBdM5jNY+QZhkXYKe/KVKEFsomqhJYJtxwnCM+BQ=;
        b=DhGMQ8/xmHBV6G0hK+u0oSW7lqeMaUZPIrYXyhQ08ArrzfcwvGdvXKzkDtDbKUXbx1
         KSGmxXMFsMIH8seOvQbnB9YP3l6jKkXCh7y1VLzTujhjovOU/E2iLeFs75C22UCGa/Mj
         VCGlLC2e08jSCQd1fSIc9VsJum0gYtDs93afUYmwp5UxC9stxwO6z+M4xgmPYqtjVz7A
         PCQ7GHShZesMhaO60b9E0EX+mWifK0RvhpzXwAiNgMsydVOIBwbHSMhCEzSnaHcFchxd
         o+8oNwbZOHj059MOZXHhOtho9ZobKeem/1Y+L6Q+z9mGqcWhnh92XGOFnBIMvUM40ddk
         7vwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=DSjPBdM5jNY+QZhkXYKe/KVKEFsomqhJYJtxwnCM+BQ=;
        b=PPN8834Lys44fZukNICdI0v5RR9xVV8l2ARUWvypAphvHvSkY9f201o3j+vi5CndxA
         owD/FoxhQG4NrVOFaMlhCLfJopmHHA0S/ichKiiHtNo93o0VnUQeBS3CemlzIaYgpVg7
         Ydx5kkO9OmN4v1lFx0ydodg8/BT4ca8+qExW+haHnTvZPbxWWVkz+e7dEH4xLwqrNUUJ
         4ghHSu2RMOaNkI9oj0HujPm100Jhtnm5Zwl5Q0pqfk10SAPi0k8LP7jADtruhBbVMEJH
         owqrmxVBnCAF0+TAbyFrhhbpUhP2WYTG8Nn27PW59ixdc0el7E89svhyjZACvX5P+jfX
         tgQA==
X-Gm-Message-State: AHPjjUjmoO1Pp5DaJJfFH4JkJO/hAUTqJU8C7qKiWq+d9HuOWiDiE2QZ
	KE3MQCIcUW3AoEvQZJJ0RbD2zCv+2fyQw+pwcuI=
X-Google-Smtp-Source: AOwi7QDHLD+G9iTyKJGQhudScHJsPPJihAHTdVENKlpZ3ecHgyIUBY9dlu4x0sLeHw4lmdZJzbE8u+27sXBugKsSIlo=
X-Received: by 10.55.100.11 with SMTP id y11mr3954886qkb.54.1505860657433;
 Tue, 19 Sep 2017 15:37:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Tue, 19 Sep 2017 15:37:36 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709192225010.2518@hadrien>
References: <20170919195406.n6kztu5q3pnduhir@fireworks> <alpine.DEB.2.20.1709192225010.2518@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Wed, 20 Sep 2017 01:37:36 +0300
Message-ID: <CALta04zspRuf0a2ELBCYZOXK=K4UDkPTeEDJN=sUBYuZEzJbXg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Use
 netdev_info instead of printk
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On 19 September 2017 at 23:28, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 19 Sep 2017, Georgiana Chelu wrote:
>
>> Replace printk with netdev_info because struct ieee80211_device
>> contains a net_device structure.
>>
>> Issue found by checkpatch.pl script.
>> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
>> dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
>>
>> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>
> Maybe all the locally defined debug levels are not really needed, and the
> calls to the debug macros could also be replaced by appropriate calls to
> netdev logging functions.
>
> julia

I think there are two options:

1. Replace IEEE80211_DEBUG(IEEE80211_DL_ERR, ...) occurrences with
netdev_err(dev, ...),
but these debug messages are shown only when CONFIG_IEEE80211_DEBUG is defined
in the kernel configuration.

2. Change the IEEE80211_DEBUG macro to use netdev_* instead of printk.
But, that would require extra checking in order to use the correct
netdev_* macro.


extern u32 ieee80211_debug_level;
#define IEEE80211_DEBUG(level, fmt, args...) \
do { if (ieee80211_debug_level & (level)) \
         printk(KERN_DEBUG "ieee80211: " fmt, ## args); } while (0)


So, what is your opinion?

Thank you,
Georgiana

>
>> ---
>>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> index 8aa38dcf0dfd..0f86195680e8 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> @@ -143,7 +143,7 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, P
>>
>>       if (ACT_ADDBARSP == type) {
>>               // Status Code
>> -             printk(KERN_INFO "=====>to send ADDBARSP\n");
>> +             netdev_info(ieee->dev, "=====>to send ADDBARSP\n");
>>
>>               put_unaligned_le16(StatusCode, tag);
>>               tag += 2;
>> @@ -345,7 +345,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
>>       pBaTimeoutVal = (u16 *)(tag + 5);
>>       pBaStartSeqCtrl = (PSEQUENCE_CONTROL)(req + 7);
>>
>> -     printk(KERN_INFO "====================>rx ADDBAREQ from :%pM\n", dst);
>> +     netdev_info(ieee->dev, "====================>rx ADDBAREQ from :%pM\n", dst);
>>  //some other capability is not ready now.
>>       if ((ieee->current_network.qos_data.active == 0) ||
>>               (!ieee->pHTInfo->bCurrentHTSupport)) //||
>> --
>> 2.11.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170919195406.n6kztu5q3pnduhir%40fireworks.
>> For more options, visit https://groups.google.com/d/optout.
>>


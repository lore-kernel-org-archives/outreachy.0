X-GM-THRID: 6208113115518730240
X-Received: by 10.13.219.195 with SMTP id d186mr786307ywe.30.1445448489123;
        Wed, 21 Oct 2015 10:28:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.134 with SMTP id ii6ls610837igb.42.gmail; Wed, 21 Oct
 2015 10:28:08 -0700 (PDT)
X-Received: by 10.66.252.6 with SMTP id zo6mr8577700pac.29.1445448479830;
        Wed, 21 Oct 2015 10:27:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ce6si1233494pad.0.2015.10.21.10.27.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 10:27:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id z6so60339109pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 10:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=5cND5J7ATE5egnq8LHbNPhRc5VGCPLjJS2OadYY6MSg=;
        b=selCGusyZ8EGpy2jiShqlKln/vpSdH6nImbWgMW1ndr07dPE8TfUO87mx6iYxus03V
         eMtZ0KbIbsWnKxPWNs20Tystqbbc0juZ6+3r2oHdczlb2gVQU1WqHBqeFY6WZ7y6Irex
         9rkSRs4l0xL73ARDgmTjwiz9lMP+hZ6cQtBpcvn8FgCvf4fE0fNF8PzrtI2GCIfkBEeE
         7oStcorV7U+PjZzKvZMINd5Sp3KwceeZJoIO/PIVza0A6SjukmLOOsk8XiuWL5lUvvyh
         5xXgo63S5VWYHjfviNU2/QX7LRROQSPL+oiNUcmkpc6e8gA/gUTaPgeIbkBvT3Stnf/P
         Csnw==
X-Received: by 10.68.243.99 with SMTP id wx3mr11826394pbc.33.1445448479713;
        Wed, 21 Oct 2015 10:27:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.4.9.105] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ph8sm10183926pbc.8.2015.10.21.10.27.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 10:27:59 -0700 (PDT)
Date: Wed, 21 Oct 2015 22:57:49 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Julia Lawall <julia.lawall@lip6.fr>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Eliminate use of
 MSECS macro
In-Reply-To: <alpine.DEB.2.10.1510211749250.2588@hadrien>
Message-ID: <alpine.DEB.2.11.1510212257420.8864@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1445438958-7663-1-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.10.1510211656360.2588@hadrien> <alpine.DEB.2.11.1510212053350.8864@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V> <alpine.DEB.2.10.1510211749250.2588@hadrien>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed



On Wed, 21 Oct 2015, Julia Lawall wrote:

>
>
> On Wed, 21 Oct 2015, Shraddha Barke wrote:
>
>>
>>
>> On Wed, 21 Oct 2015, Julia Lawall wrote:
>>
>>> On Wed, 21 Oct 2015, Shraddha Barke wrote:
>>>
>>>> Use msecs_to_jiffies instead of driver specific macro
>>>> MSECS. This is done using Coccinelle and semantic
>>>> patch used for this is as follows:
>>>>
>>>> @@expression t;@@
>>>>
>>>> - MSECS(t)
>>>> + msecs_to_jiffies(t)
>>>
>>> Can you now get rid of the marco?
>>
>> This change has been made in rtl8192e and rtl8188e. I'm a bit confused as to
>> whether it can be made in this driver as well and if not why?
>
> Not sure to understand the question.  I wasn't suggesting that there was a
> problem with the change.  I meant that maybe you could now get rid of the
> definition as well?

Oh! I'm sorry I misunderstood the question. The macro is used at some 
other places , once I change them too, I can get rid of the definition :) 
>
> julia
>
>
>>
>> Thanks,
>>
>> Shraddha
>>>
>>> julia
>>>
>>>
>>>>
>>>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>>>> ---
>>>>  drivers/staging/rtl8192u/r8192U_core.c | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/staging/rtl8192u/r8192U_core.c
>>>> b/drivers/staging/rtl8192u/r8192U_core.c
>>>> index 678ecf6..e06864f 100644
>>>> --- a/drivers/staging/rtl8192u/r8192U_core.c
>>>> +++ b/drivers/staging/rtl8192u/r8192U_core.c
>>>> @@ -3516,7 +3516,7 @@ static void watch_dog_timer_callback(unsigned long
>>>> data)
>>>>
>>>>  	queue_delayed_work(priv->priv_wq, &priv->watch_dog_wq, 0);
>>>>  	mod_timer(&priv->watch_dog_timer,
>>>> -		  jiffies + MSECS(IEEE80211_WATCH_DOG_TIME));
>>>> +		  jiffies + msecs_to_jiffies(IEEE80211_WATCH_DOG_TIME));
>>>>  }
>>>>  static int _rtl8192_up(struct net_device *dev)
>>>>  {
>>>> --
>>>> 2.1.4
>>>>
>>>> --
>>>> You received this message because you are subscribed to the Google Groups
>>>> "outreachy-kernel" group.
>>>> To unsubscribe from this group and stop receiving emails from it, send an
>>>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>>> To view this discussion on the web visit
>>>> https://groups.google.com/d/msgid/outreachy-kernel/1445438958-7663-1-git-send-email-shraddha.6596%40gmail.com.
>>>> For more options, visit https://groups.google.com/d/optout.
>>>>
>>>
>>
>


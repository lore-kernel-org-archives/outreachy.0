X-GM-THRID: 6208113115518730240
X-Received: by 10.107.26.84 with SMTP id a81mr8581983ioa.6.1445441342261;
        Wed, 21 Oct 2015 08:29:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.104.34 with SMTP id gb2ls524102obb.18.gmail; Wed, 21 Oct
 2015 08:29:01 -0700 (PDT)
X-Received: by 10.182.215.226 with SMTP id ol2mr8395195obc.11.1445441341711;
        Wed, 21 Oct 2015 08:29:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si1136160pbb.0.2015.10.21.08.29.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 08:29:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fv9so60093928pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 08:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=+eoDhphO5wiXJ0aDvpvb+JZVTob4lEzKtaJ6o3f2+q0=;
        b=xcVw+Wg/gGequaSNQ/6Lh0meShxP5kJsU9Kvi7461TOnLEEJQ4SbquXRuLb0WwZSWC
         UQhZzJSltLBCmiMkbjr4CzmhfDNT1PsCoEdcGa1SUWr4PsX7TCGl7KJTBz66ihn7IOw6
         E9ETvaFmqwisy04a14NRgvQDQyTqMQTYteAFNaqWFR9WeKP+vMiEvXNQ0bfuTuQc30wG
         YxwcoBWD8xEYc8aBFp0e/FdfFNkODNezYsbrkeFOPYdARDnbyTwMvxbhIgQIYlQc6/SO
         9Z2fgWi747p9T+u2T+bBX31WYml79RIs4mTso2Yb2SKJ1Vax51/61dLwwgUSUE2uBslj
         DX8w==
X-Received: by 10.68.213.4 with SMTP id no4mr11481096pbc.85.1445441341561;
        Wed, 21 Oct 2015 08:29:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.4.9.105] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id qd2sm9752944pbb.68.2015.10.21.08.28.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 08:29:00 -0700 (PDT)
Date: Wed, 21 Oct 2015 20:58:53 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Julia Lawall <julia.lawall@lip6.fr>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Eliminate use of
 MSECS macro
In-Reply-To: <alpine.DEB.2.10.1510211656360.2588@hadrien>
Message-ID: <alpine.DEB.2.11.1510212053350.8864@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1445438958-7663-1-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.10.1510211656360.2588@hadrien>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed



On Wed, 21 Oct 2015, Julia Lawall wrote:

> On Wed, 21 Oct 2015, Shraddha Barke wrote:
>
>> Use msecs_to_jiffies instead of driver specific macro
>> MSECS. This is done using Coccinelle and semantic
>> patch used for this is as follows:
>>
>> @@expression t;@@
>>
>> - MSECS(t)
>> + msecs_to_jiffies(t)
>
> Can you now get rid of the marco?

This change has been made in rtl8192e and rtl8188e. I'm a bit confused as 
to whether it can be made in this driver as well and if not why?

Thanks,

Shraddha
>
> julia
>
>
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/r8192U_core.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
>> index 678ecf6..e06864f 100644
>> --- a/drivers/staging/rtl8192u/r8192U_core.c
>> +++ b/drivers/staging/rtl8192u/r8192U_core.c
>> @@ -3516,7 +3516,7 @@ static void watch_dog_timer_callback(unsigned long data)
>>
>>  	queue_delayed_work(priv->priv_wq, &priv->watch_dog_wq, 0);
>>  	mod_timer(&priv->watch_dog_timer,
>> -		  jiffies + MSECS(IEEE80211_WATCH_DOG_TIME));
>> +		  jiffies + msecs_to_jiffies(IEEE80211_WATCH_DOG_TIME));
>>  }
>>  static int _rtl8192_up(struct net_device *dev)
>>  {
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445438958-7663-1-git-send-email-shraddha.6596%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>


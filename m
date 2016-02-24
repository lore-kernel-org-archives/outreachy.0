X-GM-THRID: 6254962790992183296
X-Received: by 10.98.65.5 with SMTP id o5mr38525099pfa.10.1456349879149;
        Wed, 24 Feb 2016 13:37:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.155 with SMTP id g27ls228823ioj.78.gmail; Wed, 24 Feb
 2016 13:37:58 -0800 (PST)
X-Received: by 10.67.13.228 with SMTP id fb4mr18006841pad.39.1456349878687;
        Wed, 24 Feb 2016 13:37:58 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id l85si279184ywb.2.2016.02.24.13.37.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 13:37:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id y89so25330256qge.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 13:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=NbwSm80D68UevvV34uoTjs9EYQvUgZzk1GmoDvGTxR8=;
        b=XST7mvp6EtSd9NamxAVfqxIBIMwTjmQb3V9hBFc4BJ95SJpcroaKbJrcb7wyNSGESi
         GcoBkyuEjQ1/Z2WKNNS6xqbBkznnY/arDsS3w9LEJIX9yrxtZaROSWdwHj6GfQiLM4E5
         HK5BFAMnbbOJOFrcj/jcTHUGyQ9Y+y+GAUdFZR5NyyWjQrm8Ds5vr9+05ghIOSUdXFdK
         NKS4DtfkNIl5IZ8NCjzGZZVkOE/pAvUu+wyDgrjNw4JeJxcxQ+eB+OHkYqrHq01PbP+G
         d9FvC2Vtarp1xgrAEkzOltvS06dEh/2DJrkCpSy1+D4K9QDBT4eco4y6p4xvSECM13pw
         rBag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=NbwSm80D68UevvV34uoTjs9EYQvUgZzk1GmoDvGTxR8=;
        b=DkTJR2ROUnHj6c4UknXLlJCaK8OCjyEXnF+pqRzQ1xmvyEwKI2mFWarmXFNnhWn5sz
         DJMTpGzRgSk/fbMgT+XubPQJuGHIxabKE8+LZ8SvW7x1wRCjkPvbXFMeQYIO0MuaonsM
         t3m7nl55In/0kzMGdr7VItdbj6QlH93hzZ5Hj8mItNQACjjIDMDtXYgRgT+tuli6JNm6
         R4EEb7v2hMwmuQg3vVY1+tmUtMZVyohueqG6eN6u/GZzpymqJRb64CQ3epNhYx1cpNSn
         FUh7lx0qg7wWq1lnZgnqQx4ymFaMRcOavk/UGw1ovB3MfCvXv5XW6+tetMfqKeCtEr0r
         1Xng==
X-Gm-Message-State: AG10YOT0w8Z7W4rKSs2EJAAwV+7T+X+VPWr2nn37R6c6WpfWHFZo925x3Wi/YcTa+nS/XwDCYaTzcD0jsnHuzg==
X-Received: by 10.140.88.202 with SMTP id t68mr51386700qgd.86.1456349878460;
 Wed, 24 Feb 2016 13:37:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Wed, 24 Feb 2016 13:37:19 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602242156110.2072@localhost6.localdomain6>
References: <20160224205043.GA23454@Karyakshetra> <alpine.DEB.2.02.1602242156110.2072@localhost6.localdomain6>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Thu, 25 Feb 2016 03:07:19 +0530
Message-ID: <CAFNHFT9Tnz1vECgzvCr91OCJ9v8Fu=QefSr=9McdhJp=uBzO4w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Make return of 0 explicit
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,

Thank you for the prompt reply.  I have been trying hard to get this
semantic patch to work. I'm unable to understand why it's replacing
only the final occurrence of "return ret" to "return 0". Can you
please guide me.

Thanks,
Bhaktipriya

On Thu, Feb 25, 2016 at 2:30 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Thu, 25 Feb 2016, Bhaktipriya Shridhar wrote:
>
>> Delete unnecessary local variable whose value is always 0 and that hides
>> the fact that the result is always 0.
>>
>> The following Coccinelle script was used:
>>
>> @@
>> identifier ret; expression e;
>> type T;
>> @@
>> (
>> - T ret;
>> |
>> - T ret = 0;
>> )
>> ...
>> -ret = 0;
>> ... when != ret = e
>> return
>> - ret
>> + 0
>> ;
>>
>> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
>> ---
>>  drivers/staging/rtl8712/xmit_linux.c | 6 +-----
>>  1 file changed, 1 insertion(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
>> index adb51f0..9d6fa6b 100644
>> --- a/drivers/staging/rtl8712/xmit_linux.c
>> +++ b/drivers/staging/rtl8712/xmit_linux.c
>> @@ -163,19 +163,15 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
>>       struct xmit_frame *pxmitframe = NULL;
>>       struct _adapter *padapter = netdev_priv(pnetdev);
>>       struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
>> -     int ret = 0;
>>
>>       if (!r8712_if_up(padapter)) {
>> -             ret = 0;
>>               goto _xmit_entry_drop;
>>       }
>>       pxmitframe = r8712_alloc_xmitframe(pxmitpriv);
>>       if (!pxmitframe) {
>> -             ret = 0;
>>               goto _xmit_entry_drop;
>>       }
>>       if ((!r8712_update_attrib(padapter, pkt, &pxmitframe->attrib))) {
>> -             ret = 0;
>>               goto _xmit_entry_drop;
>>       }
>>       padapter->ledpriv.LedControlHandler(padapter, LED_CTL_TX);
>
> There is still a return ret here, so this code should not have compiled.
>
> I'm not sure why the semantic patch didn't do the right thing.
>
> julia
>
>> @@ -193,5 +189,5 @@ _xmit_entry_drop:
>>               r8712_free_xmitframe(pxmitpriv, pxmitframe);
>>       pxmitpriv->tx_drop++;
>>       dev_kfree_skb_any(pkt);
>> -     return ret;
>> +     return 0;
>>  }
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160224205043.GA23454%40Karyakshetra.
>> For more options, visit https://groups.google.com/d/optout.
>>


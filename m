X-GM-THRID: 6256312431836921856
X-Received: by 10.182.236.34 with SMTP id ur2mr9047980obc.10.1456671997764;
        Sun, 28 Feb 2016 07:06:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.134 with SMTP id z6ls2064230qgz.32.gmail; Sun, 28 Feb
 2016 07:06:37 -0800 (PST)
X-Received: by 10.129.130.71 with SMTP id s68mr9393152ywf.29.1456671997364;
        Sun, 28 Feb 2016 07:06:37 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id v197si1375154ywa.1.2016.02.28.07.06.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:06:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id b67so98988725qgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 07:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=co366qHDBDRGTLDZHpNio7qhH4gNi4Lh492IsDZx1NI=;
        b=Bffe+mXgQEqYipK0lwlpx1QGWPh4WudX6bEvUjLJBkRB/rMqyfd0KdvVNqSwriG8mw
         k0kP4iRAmF2zJ0N2Ej1tg8VG0+nWSJMsaz5MMIEiOFh7z2QNOBZxvyvee7jxzx7mP55x
         zTZSKcSgKakdn1h14AW/deBvN1Ov9CqekS6MpqjXPvJFQu+c5fScToKklDh6zgFN/gv1
         ZFvBNz6/WOgQEqd9Ogv2MNfyXMhFcZgID/4C/QDG8QR1pU+9xCaIqSkkv5q+YrtjNWBz
         y2rdrsbhDTvK0z4/YL1a480Rgvy1BKV3e0saZFPKg5FpV6jii/Mz0DtoR2BonXP405lo
         KFFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=co366qHDBDRGTLDZHpNio7qhH4gNi4Lh492IsDZx1NI=;
        b=bwl5XbIjssir7Y1wZYQ0E1CDQ2hRDn75MURqyUDRRrU0k4veMP5LePr0vQ2qlgLYcp
         T7csAHbW7pZMuhV13u3ISabo3X0rRMvNnt2Ve2H09Umpeqcl1Snnfovv0JegonR44TS8
         fzeQUnMo5IqIDII+uXrgVjRZBZJFV9HVkwVOmfnEgt2yaA/UoWWjABDFKgk/eDrOtwlh
         GySWbBSqk0Jb8zRBVbHe17CMpF46dJs929zdCzQPXnp4AfzLhjQqqWfO+w+bS+9T/R45
         Khwu6X3rajVeF/PFIStFW5wTnXnsuLhMvxitmECj7YFP54lNKXs3BXYQZmdk41BlWfQz
         cl5Q==
X-Gm-Message-State: AD7BkJJOt0982KT3a6nqgIY2dy55K+bGBd+68jeiqdTAqO/9XQEROS6sl9dVesxwXjSjwyEbPYjS0FhL8zUGNg==
X-Received: by 10.140.106.11 with SMTP id d11mr13698098qgf.80.1456671997182;
 Sun, 28 Feb 2016 07:06:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Sun, 28 Feb 2016 07:05:57 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602281333400.2147@localhost6.localdomain6>
References: <20160228120441.GA16843@Karyakshetra> <alpine.DEB.2.02.1602281333400.2147@localhost6.localdomain6>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Sun, 28 Feb 2016 20:35:57 +0530
Message-ID: <CAFNHFT-62UL2y6ywK3LCba_YeogBUst+Sj=p4=zCEsk1YY4+Mg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Remove unused variables
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,

Yes, I have compiled this with the kernel code. It compiled successfully.

Thanks,
Bhaktipriya

On Sun, Feb 28, 2016 at 6:04 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 28 Feb 2016, Bhaktipriya Shridhar wrote:
>
>> The variable csr has not been used anywhere in the function
>> sdma_dumpstate(). Hence, it has been removed.
>>
>> This was done with Coccinelle:
>>
>> @@ type T; identifier i; constant c; @@
>> -T i;
>> <... when != i
>> -i = c;
>> ...>
>>
>> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
>> ---
>>  drivers/staging/rdma/hfi1/sdma.c | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/staging/rdma/hfi1/sdma.c b/drivers/staging/rdma/hfi1/sdma.c
>> index 9a15f1f..2b2af94 100644
>> --- a/drivers/staging/rdma/hfi1/sdma.c
>> +++ b/drivers/staging/rdma/hfi1/sdma.c
>> @@ -1769,7 +1769,6 @@ static void init_sdma_regs(
>>
>>  void sdma_dumpstate(struct sdma_engine *sde)
>>  {
>> -     u64 csr;
>>       unsigned i;
>>
>>       sdma_dumpstate_helper(SD(CTRL));
>
> Are you absolutely sure that you have compiled this code?  Note that this
> code is under an ifdef, so just having compiled the file may not be good
> enough.
>
> julia
>
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160228120441.GA16843%40Karyakshetra.
>> For more options, visit https://groups.google.com/d/optout.
>>


X-GM-THRID: 6332811112929558528
X-Received: by 10.98.205.141 with SMTP id o135mr2026237pfg.14.1474475513110;
        Wed, 21 Sep 2016 09:31:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.207.70 with SMTP id y67ls4487336itf.18.gmail; Wed, 21 Sep
 2016 09:31:50 -0700 (PDT)
X-Received: by 10.36.253.6 with SMTP id m6mr1184807ith.35.1474475510169;
        Wed, 21 Sep 2016 09:31:50 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x242.google.com (mail-yb0-x242.google.com. [2607:f8b0:4002:c09::242])
        by gmr-mx.google.com with ESMTPS id u139si1884654ywe.5.2016.09.21.09.31.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 09:31:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) client-ip=2607:f8b0:4002:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x242.google.com with SMTP id u125so1829742ybg.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 09:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=FqDP3e5jnDBo0LzrRwZ5hyF5PCZ0q+IiEMgsXAKRwXU=;
        b=HEi2dgjcWq5bEFTcCZxQjem5tX9aRyhKE18q5bbLDpXWQJ6/BbJInz6ViiC0tII35A
         opcB7YjymrEIM+xcd56q9mhoSHDylKVx4JRB+JKn8Vu0fH83vPu3q8TZQHqFizVR5U97
         8tBb8q12Nvb9Evu5oPSG1daQGNgdIdhuqY/1fbLxv2L+l3icMLE59a3gJMBP5lgr3NFQ
         FesewU+cgzOaDCTTmKQdwcByM6+ft+N6bIH9kiA+jjWZwmET0ZHYYRzRcU+GRi4Its9m
         ZyEI0bIN6RJYR+/7dOUO2dGSTNKqunH9gDt0IIoWLpHRSciXnFBLG7ypon9p2xBWrr03
         gDeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=FqDP3e5jnDBo0LzrRwZ5hyF5PCZ0q+IiEMgsXAKRwXU=;
        b=PYRilzrCt/T0H9pYGFjnTXgXtr3eGlMI1vjBVfS7pJmKr8ndY9O6zrV/muG5M7EDzA
         6LKhrKjFKTAOanuB5FNYLEYGtc3AU8u4j0/JOJWrfUa10lJRS4fZfLEpXlwNuXye5Tx5
         VU6lWPOY/JAmWkl5d4scci92ZULPB/4NBU9txwnbsYE44xkWcaMlASoNiot4ASq2o5dZ
         /YMpxoptH9NnmMWTUIegDVUcz8RmPR0bpCmFb5d0WEawnnEg6KzZoeYwY1KT5FLvx8kK
         DnfrKzs1aaiVsHm2tJJV9+HNx0bOq9F1ha38Rnki/b+QUIPFYscPlv9ZFlGBtLRyurkY
         Disg==
X-Gm-Message-State: AE9vXwNr6QCJtlPqdt5e//ZiZJvhuwfzCWFz+SNHwsCDXkxznpwoGJ0P07iMFrUEuLeU3f7Sbi75uA1H1tF4YA==
X-Received: by 10.37.5.134 with SMTP id 128mr22360571ybf.33.1474475509886;
 Wed, 21 Sep 2016 09:31:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.41.132 with HTTP; Wed, 21 Sep 2016 09:31:09 -0700 (PDT)
In-Reply-To: <20160921161546.GA28028@kroah.com>
References: <20160921154114.GA18681@sayli-HP-15-Notebook-PC> <20160921161546.GA28028@kroah.com>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Wed, 21 Sep 2016 22:01:09 +0530
Message-ID: <CAKG5xWgV-0cKboce8i8LbLB7kBQPMYs_NjcredvggXX6Qb=UGA@mail.gmail.com>
Subject: Re: [PATCH] staging: android: ion: hisilicon: Use pointer to memory
 being allocated as the sizeof argument
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, Laura Abbott <labbott@redhat.com>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, 
	Riley Andrews <riandrews@android.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 21, 2016 at 9:45 PM, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Wed, Sep 21, 2016 at 09:11:14PM +0530, sayli karnik wrote:
>> This patch finds cases where the argument to sizeof is wrong in memory
>> allocation functions by checking the type of the allocated memory when it is a
>> double pointer and ensuring the sizeof argument takes a pointer to the memory
>> being allocated.
>
> Are you sure?
>
This was detected by scripts/coccinelle/misc/badty.cocci, which
specifies that a false positive only arises when the sizeof argument
is not used in constructing the return value. Also the driver builds
without errors. What do you think?

>
>> Done using coccinelle:
>> @@
>> type T;
>> T **x;
>> @@
>>
>>   x =
>>   <+...sizeof(
>> - T
>> + *x
>>   )...+>
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/android/ion/hisilicon/hi6220_ion.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
>> index 659aa71..9f9b244 100644
>> --- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
>> +++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
>> @@ -57,7 +57,7 @@ static int hi6220_ion_probe(struct platform_device *pdev)
>>               return PTR_ERR(ipdev->data);
>>
>>       ipdev->heaps = devm_kzalloc(&pdev->dev,
>> -                             sizeof(struct ion_heap)*ipdev->data->nr,
>> +                             sizeof(*ipdev->heaps) * ipdev->data->nr,
>
> Do we really want to allocate an array of pointers, or an array of
> structures?  Which is it, as it's not obvious...
>
> thanks,
>
> greg k-h


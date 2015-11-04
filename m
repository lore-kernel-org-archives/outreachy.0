X-GM-THRID: 6212181078592978944
X-Received: by 10.66.157.37 with SMTP id wj5mr107094pab.30.1446623841719;
        Tue, 03 Nov 2015 23:57:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.47 with SMTP id 44ls542296qga.49.gmail; Tue, 03 Nov
 2015 23:57:21 -0800 (PST)
X-Received: by 10.129.157.2 with SMTP id u2mr98227ywg.15.1446623840990;
        Tue, 03 Nov 2015 23:57:20 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x234.google.com (mail-yk0-x234.google.com. [2607:f8b0:4002:c07::234])
        by gmr-mx.google.com with ESMTPS id y206si3462ywd.6.2015.11.03.23.57.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 23:57:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::234 as permitted sender) client-ip=2607:f8b0:4002:c07::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::234 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x234.google.com with SMTP id k133so59136866yke.2
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Nov 2015 23:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=SY/vv9gDzFzFn6+tigm+M+NEogO4uVRIscHSZR3FT+M=;
        b=oaG0CN2IkYAVoi8F88sW8uhoaaRA6+7Y3VVQNdSBsRxnVXlBpBVuFW3am0B16qT1tE
         mPpras5KQWkOFh3XHzzhv11HzzszXBSKxihGwJK70MsTEV20V0pjd1s58VzWmdmbcDKN
         oJApowQwBjXPxF8xeWmVUbfymyaXEA4uD8bM2WvDuH7sHglt6ShhiPxEo2jlor0j5QRS
         Zz9NYMsOPu8CUHyLWboQ+pVXwoUa3Wj47qiQ906XWL43onr53N9+q0giLfUbCmqIVRhu
         DCA7ZGPQEiDMGKIInpFUJUFZYWnbQuOaJyxcllGKyLPC1d1d0/z/JXi5RXWiC9EDKY9a
         ru3Q==
MIME-Version: 1.0
X-Received: by 10.129.29.5 with SMTP id d5mr100968ywd.278.1446623840849; Tue,
 03 Nov 2015 23:57:20 -0800 (PST)
Received: by 10.37.107.66 with HTTP; Tue, 3 Nov 2015 23:57:20 -0800 (PST)
In-Reply-To: <20151103202115.GA30176@kroah.com>
References: <cover.1446388483.git.ciorneiioana@gmail.com>
	<91ba263d643d552220aa67b67045d5dee8fd06f8.1446388483.git.ciorneiioana@gmail.com>
	<20151103202115.GA30176@kroah.com>
Date: Wed, 4 Nov 2015 09:57:20 +0200
Message-ID: <CAHWJYFnxp7V+SZx57_iptbYyyNx0s9CP1zurO9wa6ZQBE5E8qQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] staging: android: add comment
 to spinlock_t definition
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, arve@android.com, 
	riandrews@android.com
Content-Type: text/plain; charset=UTF-8

On Tue, Nov 3, 2015 at 10:21 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sun, Nov 01, 2015 at 04:38:24PM +0200, Ioana Ciornei wrote:
>> Add comment to the spinlock_t fields of struct timed_gpio_data in
>> order to follow the linux coding style.
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> ---
>> Changes in v2:
>>     - nothing
>>
>>  drivers/staging/android/timed_gpio.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/android/timed_gpio.c b/drivers/staging/android/timed_gpio.c
>> index bcd9924..99f8473 100644
>> --- a/drivers/staging/android/timed_gpio.c
>> +++ b/drivers/staging/android/timed_gpio.c
>> @@ -28,7 +28,7 @@
>>  struct timed_gpio_data {
>>       struct timed_output_dev dev;
>>       struct hrtimer timer;
>> -     spinlock_t lock;
>> +     spinlock_t lock; /* protects the fields of timed_gpio_data */
>
> Not really, that's not what this lock protects, please re-read the
> driver to figure this out exactly.  But, I wouldn't really worry about
> this, I need to just delete this driver, no one uses it anymore...

Ok. So no version 3?

Thanks,

Ioana

> thanks,
>
> greg k-h


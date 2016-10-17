X-GM-THRID: 6341957980641034240
X-Received: by 10.200.33.233 with SMTP id 38mr7082809qtz.13.1476717192906;
        Mon, 17 Oct 2016 08:13:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.129 with SMTP id 1ls13033348otj.31.gmail; Mon, 17 Oct
 2016 08:13:12 -0700 (PDT)
X-Received: by 10.157.54.219 with SMTP id s27mr6699722otd.90.1476717192487;
        Mon, 17 Oct 2016 08:13:12 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id p74si1405163ywp.6.2016.10.17.08.13.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 08:13:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x243.google.com with SMTP id e5so6991663ywc.3
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 08:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=vcV+Nzzozj++C3A3IP+x6KBV+3S2jbxOahSrEDFh55U=;
        b=C1+HZf6bg1jXU6uc3+/DC6tqZ880KlCYgS7YLEexGuMZ3S8+lZ62kFNwvdhe59tDH6
         KB4nTd5BeXj/4IdPYJKmLH1ulUhrhsfI4Y1IgU8MEFaP/ChnST+zOwECLEdRgXpoZaTC
         hneqYjsFgZcKzk5vA9f69jm210YVoI5gbR5m5wxmBDtLtePJXGigCrlyzaAchzGyT55X
         Te8kpNU2XIxJ0t4nJT7yAQ8sr0Tzfp8Llczi9ZzA35NR+eQHsT15kRFuW1el6xPkL8TJ
         c5xuehdTRpOHYt2fR3s306VLszirblvmNQbPFoZXxJ2Gamm6NusALk+01mG8CL11RQwZ
         PCUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=vcV+Nzzozj++C3A3IP+x6KBV+3S2jbxOahSrEDFh55U=;
        b=IpncZ2i5ShBy14Vb8AdP4QLEz/y3COaFH8Fiw/5RDPbwIQZw4yfvczVXH4VdaJBGPL
         TjMYRaB5roP272V96soRcHjZTjwKs/FxGkBl+2KYzjilG59QtaWLno08IHTboGBoXSOd
         U2Osn4I08Te5Zwq4ZJuCCF64h3yf1qvPt+h8ZFNP2lgLLWLUwmT5vT07xBu+9Ck02iEL
         aifxfqWdNW28LeYi2xLxdZAMJvJCi8b27AI06rG5LfUM71isD7UNwaePbrLk2NGJqmuE
         YRtxYbiN+q4+TVFhawZeOt145yNKAMF5MMpN87iIb6I65/bgKl4ZjllsglG0HtF9vb8+
         l4tQ==
X-Gm-Message-State: AA6/9Rm0eEJ7Ug+qVQzPlbqJ+WlwCTEBpsn0EARRe0C6m+G3tSnZQrrsqFFYJuA48mmy6NexFvVtANQKrePMwQ==
X-Received: by 10.129.110.212 with SMTP id j203mr25563064ywc.75.1476717192179;
 Mon, 17 Oct 2016 08:13:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Mon, 17 Oct 2016 08:12:31 -0700 (PDT)
In-Reply-To: <20161017073440.GA27518@kroah.com>
References: <20161016133051.GA28472@sayli-HP-15-Notebook-PC> <20161017073440.GA27518@kroah.com>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Mon, 17 Oct 2016 20:42:31 +0530
Message-ID: <CAKG5xWiAdt-PRyu1qVLE=Sr9z1xV77Wo_WJuMe8ptc6yYjEO1g@mail.gmail.com>
Subject: Re: [PATCH v2] staging: vc04_services: vchiq_arm: Use ARRAY_SIZE macro
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 17, 2016 at 1:04 PM, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Sun, Oct 16, 2016 at 07:00:51PM +0530, sayli karnik wrote:
>> This patch uses ARRAY_SIZE macro instead of division of two sizeofs to
>> find array size.
>> Done using coccinelle.
>> @@
>> type T;
>> T[] E;
>> @@
>> (
>> - (sizeof(E)/sizeof(*E))
>> + ARRAY_SIZE(E)
>> |
>> - (sizeof(E)/sizeof(E[...]))
>> + ARRAY_SIZE(E)
>> |
>> - (sizeof(E)/sizeof(T))
>> + ARRAY_SIZE(E)
>> )
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>> Changes in v2:
>> Adjusted the changed part in one line
>>
>>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> index 5ec7c96..7fee140 100644
>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> @@ -190,8 +190,7 @@ static const char *const ioctl_names[] = {
>>       "CLOSE_DELIVERED"
>>  };
>>
>> -vchiq_static_assert((sizeof(ioctl_names)/sizeof(ioctl_names[0])) ==
>> -     (VCHIQ_IOC_MAX + 1));
>> +vchiq_static_assert(ARRAY_SIZE(ioctl_names) == (VCHIQ_IOC_MAX + 1));
>
> How were you able to test build this change?  The code is currently
> broken in the build unless you add a number of external patches at the
> moment :(
>
Yes it is broken.
Also there isn't a Makefile in
drivers/staging/vc04_services/interface/vchiq_arm/ to build it.

thanks,
sayli

> thanks,
>
> greg k-h


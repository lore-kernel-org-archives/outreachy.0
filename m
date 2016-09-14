X-GM-THRID: 6330196266384883712
X-Received: by 10.129.115.4 with SMTP id o4mr2637919ywc.41.1473872113015;
        Wed, 14 Sep 2016 09:55:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls1465855otj.7.gmail; Wed, 14 Sep
 2016 09:55:12 -0700 (PDT)
X-Received: by 10.200.41.47 with SMTP id y44mr2715815qty.27.1473872112416;
        Wed, 14 Sep 2016 09:55:12 -0700 (PDT)
Return-Path: <ronladred@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id m82si498237ywm.2.2016.09.14.09.55.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 09:55:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ronladred@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=ronladred@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id g192so1478925ywh.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 09:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=6745N0Y0byC9774KXmaBEe6bPP+J9SKzupnezZTCac0=;
        b=wV0yWkuqWUwNnaLY/pvAeCMZLNuDwcvWL9T2IUowrfwXTu5JNb8mi0cRDayMUzkq+y
         WvidyQYvns4/uRFnJm7qtjycrWDOTz18lwHgfnUqtSJ+GUlhtvJNrShGykj6BkzmzSuW
         GflssTzGIZfTUbhBFStupE/u9UZNgMne7N0tXtA2/Tb+bQ+uzJePzMaY6z07MSQenCF1
         j35aRMlcjH+CRPonjusbGiAM9ByoYPRmo6zj1qsi9ADDqljmRssQSqtVoEr7M+0S++0A
         mR8dS10akTNIg81KAcAjtv0bgZKI9xlmbQUxtsDcQe0y+AFVFko3H84/OSLfUEQdLT3A
         +Tdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=6745N0Y0byC9774KXmaBEe6bPP+J9SKzupnezZTCac0=;
        b=jPufDqekGl4t8kTXvaYAE9BR4ltJxG0cCPRWPCqsFHY4WVkzjErV1fRwonEkAIJ58E
         5qkcqAUubb9wg5sDLPVwQ9K39GNlTsyfWUHUJzNXavbo4lNj2n74x/T+0t11m3IznEnd
         UdYKcI+4r2AuInzgyTVZA8nSZ/GSuDa8Dhya5tv0gyee/BqTy+39kwERa0gMz/QytRj3
         OOVrYE0FfJb5xbAAOGmvgOKhmCDEfzUtYH597sXMV4b2rebiSsmbIwSB1b9QwcC2GzPP
         SJoArJt5T5io+0+G+R/KjlFzgNmvwMiO6bs2mlfVpFuSH+aDVL02lEoUrRTwJraiITgf
         I55A==
X-Gm-Message-State: AE9vXwND+mTetfyqg8ZLMHR154x8dfIbS8GvHwnd2f3siJRa3UJ43tlpSPnx4Hd6pScscVoTYhRrfSAdCedGJg==
X-Received: by 10.13.207.2 with SMTP id r2mr4103477ywd.158.1473872112199; Wed,
 14 Sep 2016 09:55:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.10.69 with HTTP; Wed, 14 Sep 2016 09:55:11 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609141635280.3033@hadrien>
References: <20160914143430.GA22511@fedora> <alpine.DEB.2.10.1609141635280.3033@hadrien>
From: Ronald Rojas <ronladred@gmail.com>
Date: Wed, 14 Sep 2016 12:55:11 -0400
Message-ID: <CAM_P2LKQuGM0D52ezJQdTovMFbWSzuJVnaFYmgQ7-jQ1HMf+Cw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ethernet: Fixes checkpatch
 blank lines warnings
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Sorry for the mistake. When I resubmit the patch with the appropriate
maintainers CC'd should I append a v2 to the subject? Or use the same
name?

Ronald
Ronald Rojas


On Wed, Sep 14, 2016 at 10:36 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> I guess there are some maintainers who should also receive this?  Look for
> the information about the get_maintainer command in the Submit a patch
> section of the tutorial.
>
> On Wed, 14 Sep 2016, Ronald Rojas wrote:
>
>> This patch fixes several of the checkpatch.pl warnings
>> in the driver/staging/octeon/ethernet.c file:
>>
>> CHECK: Please don't use multiple blank lines
>> 89: FILE: drivers/staging/octeon/ethernet.c:89:
>>
>> CHECK: Please don't use multiple blank lines
>> 668: FILE: drivers/staging/octeon/ethernet.c:668:
>>
>> CHECK: Please don't use multiple blank lines
>> 881: FILE: drivers/staging/octeon/ethernet.c:881:
>
> You don't need to list all of the errors explicitly.  The important part
> is just that checkpatch suggested removing the blank lines.
>
> thanks,
> julia
>
>> Signed-off-by: Ronald Rojas <ronladred@gmail.com>
>> ---
>>  drivers/staging/octeon/ethernet.c | 3 ---
>>  1 file changed, 3 deletions(-)
>>
>> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
>> index e9cd5f2..79571d6 100644
>> --- a/drivers/staging/octeon/ethernet.c
>> +++ b/drivers/staging/octeon/ethernet.c
>> @@ -86,7 +86,6 @@ int rx_napi_weight = 32;
>>  module_param(rx_napi_weight, int, 0444);
>>  MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");
>>
>> -
>>  /*
>>   * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
>>   *
>> @@ -665,7 +664,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
>>               return -EINVAL;
>>       }
>>
>> -
>>       cvm_oct_configure_common_hw();
>>
>>       cvmx_helper_initialize_packet_io_global();
>> @@ -878,7 +876,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
>>               }
>>       }
>>
>> -
>>       cvmx_pko_shutdown();
>>
>>       cvmx_ipd_free_ptr();
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914143430.GA22511%40fedora.
>> For more options, visit https://groups.google.com/d/optout.
>>


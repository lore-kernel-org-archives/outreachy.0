X-GM-THRID: 6208527977579282432
X-Received: by 10.107.25.201 with SMTP id 192mr3532099ioz.21.1445564892619;
        Thu, 22 Oct 2015 18:48:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.81.103 with SMTP id z7ls909254obx.89.gmail; Thu, 22 Oct
 2015 18:48:12 -0700 (PDT)
X-Received: by 10.182.52.226 with SMTP id w2mr15497460obo.40.1445564892082;
        Thu, 22 Oct 2015 18:48:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id d207si1242056ywb.4.2015.10.22.18.48.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 18:48:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x230.google.com with SMTP id y65so62790445qkc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 18:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=xMmczWqm+h1dXmkBNLibVmTp4f9gSjPJ5ArVKyG2Yn8=;
        b=wq7qAHMwn8p4xVsEuMR+2Nr5ZMUduQUu/3cxsYxpNjUX/irVEYmF/90xi0jESnTfpK
         oc28PdJ4otSahVU7UyKm5x8Z0XwuDjbe2y6F3TNv7y6K5oA+3EcWiF/NC7O/4TBZCFYw
         nd5BKlmn1p2LBevSZVsJsgm6BXg1bqKdDsPbbM60IG4m79NY1Sl/+2A/fhFeiiP9fHdV
         0gzttnO/pm0VUTlC00E7Bf3G2vBEKkwu+8cV/ysopBJSY/GUSdWYm2A3RwX50yhL842g
         AEUC7Yrig+aqLxQAnpGApmMqtdrVRyAj6ADGVfFsVF9/qBngGVt1xd/R0gQY+X19OxRy
         7whQ==
MIME-Version: 1.0
X-Received: by 10.140.129.22 with SMTP id 22mr24031192qhb.74.1445564891883;
 Thu, 22 Oct 2015 18:48:11 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Thu, 22 Oct 2015 18:48:11 -0700 (PDT)
In-Reply-To: <8980519.8CTrMHEHrD@wuerfel>
References: <20151022173920.GA32329@amitoj-Inspiron-3542>
	<8980519.8CTrMHEHrD@wuerfel>
Date: Fri, 23 Oct 2015 07:18:11 +0530
Message-ID: <CA+5yK5HER69sFe9PuCisL-GNdOcKk686WDy956U8hzasO=1ZqQ@mail.gmail.com>
Subject: Re: [Y2038] [PATCH] misc: ibmasm: Replace timeval with timespec64
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: y2038@lists.linaro.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 23, 2015 at 12:45 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Thursday 22 October 2015 23:09:20 Amitoj Kaur Chawla wrote:
>> This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
>> will not give current time beyond 2038.
>>
>> This also changes the code to use ktime_get_real_ts64() which returns
>> a 'struct timespec64' instead of do_gettimeofday() which returns a
>> 'struct timeval'
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>
> Looks almost right, except for one bit:
>
>> ---
>>  drivers/misc/ibmasm/ibmasm.h | 7 ++++---
>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/misc/ibmasm/ibmasm.h b/drivers/misc/ibmasm/ibmasm.h
>> index 9b08344..0c7bb6d 100644
>> --- a/drivers/misc/ibmasm/ibmasm.h
>> +++ b/drivers/misc/ibmasm/ibmasm.h
>> @@ -34,6 +34,7 @@
>>  #include <linux/kref.h>
>>  #include <linux/device.h>
>>  #include <linux/input.h>
>> +#include <linux/time64.h>
>>
>>  /* Driver identification */
>>  #define DRIVER_NAME    "ibmasm"
>> @@ -53,9 +54,9 @@ extern int ibmasm_debug;
>>
>>  static inline char *get_timestamp(char *buf)
>>  {
>> -       struct timeval now;
>> -       do_gettimeofday(&now);
>> -       sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_usec);
>> +       struct timespec64 now;
>> +       ktime_get_real_ts64(&now);
>> +       sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_nsec / NSEC_PER_USEC);
>>         return buf;
>>
>
> now.tv_sec is using a 'time_t' a.k.a. 'long' on 64-bit architectures, but
> a 'time64_t' a.k.a. 'long long' on 32-bit architectures. This is a bit
> nonintuitive, but please change the format string to %llu for the first
> argument and add a corresponding cast to 's64' or 'long long', so we
> actually print the correct data and do not get a compiler warning.
>
> The tv_nsec argument is always 'long', on both 32-bit and 64-bit
> architectures, so there is no warning and we correctly print the
> number. However, there is a preexisting bug in the format string
> that you should fix while you are here: %lu drops leading zeroes,
> which results in something like "12345678.1234" where we want to
> see "1234567.001234". Please change the format string to add the
> correct number of leading zeroes here.
>

Just to clarify, I should change this to
   sprintf(buf, "%llu.%8.8lu", now.tv_sec, now.tv_nsec / NSEC_PER_USEC);

> As you seem to generally be doing well with the trivial patches, please
> move on to the 'simple' category next. I should also add a few more
> 'medium' level tasks but need to pick them carefully first.
>

Okay! Next patches will be the simple tasks. Also, I couldn't find the
tutorial you mentioned for compiling, can you help me out some there?

Thanks,
-- 
Amitoj


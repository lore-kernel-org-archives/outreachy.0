X-GM-THRID: 6200341306580926464
X-Received: by 10.68.165.5 with SMTP id yu5mr9206828pbb.1.1443721487142;
        Thu, 01 Oct 2015 10:44:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.199 with SMTP id n7ls302550igv.9.gmail; Thu, 01 Oct 2015
 10:44:46 -0700 (PDT)
X-Received: by 10.66.249.100 with SMTP id yt4mr9280614pac.42.1443721486354;
        Thu, 01 Oct 2015 10:44:46 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x22b.google.com (mail-io0-x22b.google.com. [2607:f8b0:4001:c06::22b])
        by gmr-mx.google.com with ESMTPS id a11si312909igv.3.2015.10.01.10.44.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 10:44:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22b as permitted sender) client-ip=2607:f8b0:4001:c06::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22b as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22b.google.com with SMTP id 1so56365578iow.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 10:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=XuIXbepmtoPG1FKua3ctXIuMN9GC3rzQ5ja0j7yuKq8=;
        b=fnj92Qtt6zpdt1Y/XLmNovMkpAYK98CXehv3lqKy+RK1jIohkN5I/4Z9Wtg0l9FKWP
         D+DLEZdUw9RBSfeV8SMftiCLfHXg2UefqAn39WufvdqsODB7GBOidRqEQTzpIt6X6hU6
         64CvlXFofSztGy8XJTmWKHnSB+EJKGhQkFliRDnjVgdOD2e1jYK7F9fXdePFIWQ5FVhn
         oaQX+rvK32/c54WIYxSXCwsjpC0orPpiffVUd9jKnNxuWcQCdq9nBJD13uKQSWkk63bb
         r6f/uPIdpi65FkLa7O5+kvrtD979F/aQIOoVP/zstrceT+33ccVD5wzVFt11u3Cnvzlq
         wFoQ==
MIME-Version: 1.0
X-Received: by 10.107.154.211 with SMTP id c202mr12198885ioe.53.1443721486094;
 Thu, 01 Oct 2015 10:44:46 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Thu, 1 Oct 2015 10:44:46 -0700 (PDT)
In-Reply-To: <1593744.M7Nca36Ssj@wuerfel>
References: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com>
	<1593744.M7Nca36Ssj@wuerfel>
Date: Thu, 1 Oct 2015 19:44:46 +0200
Message-ID: <CAL7P5jJvJ0SR5-5uFxx8Hrhy6Q76qqYCAV65RJOB0nm7eVXpZQ@mail.gmail.com>
Subject: Re: [Y2038] [PATCH v2] Staging: fbtbt: Replace timespec with ktime_t
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi,

On Wed, Sep 30, 2015 at 11:52 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Wednesday 30 September 2015 18:10:49 Ksenija Stanojevic wrote:
>> struct timespec will overflow in year 2038, so replace it with
>> ktime_t. And replace functions that use struct timespec,
>> timespec_sub with ktime_sub. Also use monotonic time instead of real
>> time, by replacing getnstimeofday with ktime_get, to be more robust
>> against leap seconds and settimeofday() calls.
>> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
>> index 7f5fa3d..a1645e1 100644
>> --- a/drivers/staging/fbtft/fbtft-core.c
>> +++ b/drivers/staging/fbtft/fbtft-core.c
>> @@ -365,16 +365,15 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
>>                                unsigned end_line)
>>  {
>>       size_t offset, len;
>> -     struct timespec ts_start, ts_end, ts_fps, ts_duration;
>> -     long fps_ms, fps_us, duration_ms, duration_us;
>> -     long fps, throughput;
>> +     ktime_t ts_start, ts_end, ts_fps;
>> +     long  long fps, throughput;
>
> Here you declare fps and throughput as 'long long', which causes problems later:
>
>> @@ -411,30 +410,22 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
>>                       __func__);
>>
>>       if (unlikely(timeit)) {
>> -             getnstimeofday(&ts_end);
>> -             if (par->update_time.tv_nsec == 0 && par->update_time.tv_sec == 0) {
>> -                     par->update_time.tv_sec = ts_start.tv_sec;
>> -                     par->update_time.tv_nsec = ts_start.tv_nsec;
>> -             }
>> -             ts_fps = timespec_sub(ts_start, par->update_time);
>> -             par->update_time.tv_sec = ts_start.tv_sec;
>> -             par->update_time.tv_nsec = ts_start.tv_nsec;
>> -             fps_ms = (ts_fps.tv_sec * 1000) + ((ts_fps.tv_nsec / 1000000) % 1000);
>> -             fps_us = (ts_fps.tv_nsec / 1000) % 1000;
>> -             fps = fps_ms * 1000 + fps_us;
>> +             ts_end = ktime_get();
>> +             if (par->update_time.tv64 == 0)
>> +                     par->update_time = ts_start;
>
> It's better not to access the 'tv64' field of the ktime_t directly, this
> is supposed to be hidden. Just use ktime_to_ns() to do the same thing.
>
>> +             ts_fps = ktime_sub(ts_start, par->update_time);
>> +             par->update_time = ts_start;
>> +             fps = ktime_to_us(ts_fps);
>
> This can be written slightly simpler using the ktime_us_delta() function,
> like you do below.
>
>>               fps = fps ? 1000000 / fps : 0;
>>
>> -             ts_duration = timespec_sub(ts_end, ts_start);
>> -             duration_ms = (ts_duration.tv_sec * 1000) + ((ts_duration.tv_nsec / 1000000) % 1000);
>> -             duration_us = (ts_duration.tv_nsec / 1000) % 1000;
>> -             throughput = duration_ms * 1000 + duration_us;
>> +             throughput = ktime_us_delta(ts_end, ts_start);
>>               throughput = throughput ? (len * 1000) / throughput : 0;
>>               throughput = throughput * 1000 / 1024;
>
> As mentioned above, throughput is a 64-bit 'long long', so the last line
> of the context will result in a 64-bit division, which is not allowed in
> 32-bit kernels.
>
> This is a bit hard to detect, and the most reliable way to find issues
> like this is to compile the kernel for both a 32-bit target and a 64-bit
> target (on x86, just turn CONFIG_64BIT on/off) to see all the compile-time
> errors and warnings.

In my local repository I modified my .config file so that CONFIG_64BIT
is not set,
and after that I recompiled all directory, but I don't get any errors/warning at
compile-time.
Also I separetly compiled this specific file but still no warnings
My .config  looks something like this:

#
# Automatically generated file; DO NOT EDIT.
# Linux/x86 4.3.0-rc3 Kernel Configuration
#
# CONFIG_64BIT is not set
CONFIG_X86_32=y
CONFIG_X86=y
CONFIG_INSTRUCTION_DECODER=y
CONFIG_PERF_EVENTS_INTEL_UNCORE=y
CONFIG_OUTPUT_FORMAT="elf32-i386"
CONFIG_ARCH_DEFCONFIG="arch/x86/configs/i386_defconfig"
. . .

Should I change my working kernel or .config file is just enough?

Thanks,
Ksenija

>         Arnd


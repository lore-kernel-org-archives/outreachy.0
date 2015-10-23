X-GM-THRID: 6208527977579282432
X-Received: by 10.107.47.219 with SMTP id v88mr7973609iov.25.1445602743962;
        Fri, 23 Oct 2015 05:19:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.19 with SMTP id 19ls2003368qga.41.gmail; Fri, 23 Oct
 2015 05:19:03 -0700 (PDT)
X-Received: by 10.13.235.207 with SMTP id u198mr16509523ywe.3.1445602743291;
        Fri, 23 Oct 2015 05:19:03 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x22f.google.com (mail-ig0-x22f.google.com. [2607:f8b0:4001:c05::22f])
        by gmr-mx.google.com with ESMTPS id j7si391569igu.1.2015.10.23.05.19.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 05:19:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22f as permitted sender) client-ip=2607:f8b0:4001:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22f.google.com with SMTP id ni9so33191953igb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 05:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Wqx0vOw8Hfx3ShwMlrBsJAg2mEqiY6ADskhcjID7AYs=;
        b=aMDI72WQq1FtngqjKlLPqfKWMnz1jYyFJcofgA4Ww4M86Q9HrwAqxUJIMlA6nVyUYQ
         Rs0KcyrymSTlKhXpZuNr0IOirRhhN0QvvDIy20KzmHcMOL3zW5JabVbQ5UTMDJlS5GmA
         iIu0QcMnOws4wi9Z3+vVsDNQuRLEhJPWX52GD4sWZ6AOa6+/1wj0dl1WM6kTXBTdE/ry
         JEcTJrLs5CNg5/FlNWsl9ucbHoYspDWj4pwvwJ1+KOUMssU1rihhj55QcZEUF+zKQ12d
         CdEL8dj3el3EeeXow3lprWVDzRRFL6J/QBYrnXsG/teGUb4PuekDO1EFJLXIB6oJVGoP
         qIFA==
MIME-Version: 1.0
X-Received: by 10.50.43.162 with SMTP id x2mr3812186igl.82.1445602743145; Fri,
 23 Oct 2015 05:19:03 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Fri, 23 Oct 2015 05:19:03 -0700 (PDT)
In-Reply-To: <CA+5yK5HER69sFe9PuCisL-GNdOcKk686WDy956U8hzasO=1ZqQ@mail.gmail.com>
References: <20151022173920.GA32329@amitoj-Inspiron-3542>
	<8980519.8CTrMHEHrD@wuerfel>
	<CA+5yK5HER69sFe9PuCisL-GNdOcKk686WDy956U8hzasO=1ZqQ@mail.gmail.com>
Date: Fri, 23 Oct 2015 14:19:03 +0200
Message-ID: <CAL7P5jK37Y7F81P23OsBE6cckNSBWBiDVxmMc5kUhv+43sS7xw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] misc: ibmasm: Replace
 timeval with timespec64
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, y2038@lists.linaro.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hi Amitoj,

On Fri, Oct 23, 2015 at 3:48 AM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> On Fri, Oct 23, 2015 at 12:45 AM, Arnd Bergmann <arnd@arndb.de> wrote:
>> On Thursday 22 October 2015 23:09:20 Amitoj Kaur Chawla wrote:
>>> This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
>>> will not give current time beyond 2038.
>>>
>>> This also changes the code to use ktime_get_real_ts64() which returns
>>> a 'struct timespec64' instead of do_gettimeofday() which returns a
>>> 'struct timeval'
>>>
>>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>>
>> Looks almost right, except for one bit:
>>
>>> ---
>>>  drivers/misc/ibmasm/ibmasm.h | 7 ++++---
>>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/misc/ibmasm/ibmasm.h b/drivers/misc/ibmasm/ibmasm.h
>>> index 9b08344..0c7bb6d 100644
>>> --- a/drivers/misc/ibmasm/ibmasm.h
>>> +++ b/drivers/misc/ibmasm/ibmasm.h
>>> @@ -34,6 +34,7 @@
>>>  #include <linux/kref.h>
>>>  #include <linux/device.h>
>>>  #include <linux/input.h>
>>> +#include <linux/time64.h>
>>>
>>>  /* Driver identification */
>>>  #define DRIVER_NAME    "ibmasm"
>>> @@ -53,9 +54,9 @@ extern int ibmasm_debug;
>>>
>>>  static inline char *get_timestamp(char *buf)
>>>  {
>>> -       struct timeval now;
>>> -       do_gettimeofday(&now);
>>> -       sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_usec);
>>> +       struct timespec64 now;
>>> +       ktime_get_real_ts64(&now);
>>> +       sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_nsec / NSEC_PER_USEC);
>>>         return buf;
>>>
>>
>> now.tv_sec is using a 'time_t' a.k.a. 'long' on 64-bit architectures, but
>> a 'time64_t' a.k.a. 'long long' on 32-bit architectures. This is a bit
>> nonintuitive, but please change the format string to %llu for the first
>> argument and add a corresponding cast to 's64' or 'long long', so we
>> actually print the correct data and do not get a compiler warning.
>>
>> The tv_nsec argument is always 'long', on both 32-bit and 64-bit
>> architectures, so there is no warning and we correctly print the
>> number. However, there is a preexisting bug in the format string
>> that you should fix while you are here: %lu drops leading zeroes,
>> which results in something like "12345678.1234" where we want to
>> see "1234567.001234". Please change the format string to add the
>> correct number of leading zeroes here.
>>
>
> Just to clarify, I should change this to
>    sprintf(buf, "%llu.%8.8lu", now.tv_sec, now.tv_nsec / NSEC_PER_USEC);
>
>> As you seem to generally be doing well with the trivial patches, please
>> move on to the 'simple' category next. I should also add a few more
>> 'medium' level tasks but need to pick them carefully first.
>>
>
> Okay! Next patches will be the simple tasks. Also, I couldn't find the
> tutorial you mentioned for compiling, can you help me out some there?

I think the tutorial mentioned is kernel newbies First patch tutorial and under
section Make a driver change:
http://kernelnewbies.org/Outreachyfirstpatch#head-816e6eef0008340eab7d542c3f6923a1f896478d
there is instruction how to compile your changes:

Compile your changes:

Recompile your kernel, by running make (with an optional -jN flag):
make -j2


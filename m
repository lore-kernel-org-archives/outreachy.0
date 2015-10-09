X-GM-THRID: 6202253257836855296
X-Received: by 10.107.40.133 with SMTP id o127mr12422929ioo.27.1444417899967;
        Fri, 09 Oct 2015 12:11:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.115 with SMTP id w106ls2039165qgd.20.gmail; Fri, 09 Oct
 2015 12:11:39 -0700 (PDT)
X-Received: by 10.13.242.134 with SMTP id b128mr13334847ywf.7.1444417899331;
        Fri, 09 Oct 2015 12:11:39 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id q68si234679ywf.0.2015.10.09.12.11.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:11:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x233.google.com with SMTP id 61so76800110qgx.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=7rmSuVltxygP63NliwptIiWPsLVsXjJEQOyyzVs4p6s=;
        b=rvGw6bb/aSLLi75LWzF8JrWhJgkr3yEn999SFDi9Q4txrcXmhfv/pDfIVKn7vIt8FN
         T+eUgWhD2ndsBmEz97F/lJcOprycsPXY4DkbenxD/DvUXhf1XCjqXKD2Gn4XcgYYwROD
         ZE8OJ0l/ZpYBMOWRksRTCdTar6j+y2tQWvBFYxIBqaW981WO58FxdPz3TkRIF043e40x
         BESBjTVDPM4szsfh9wljyrZUzRZdMrtoZ8TW+Md0GVrkyGVF1+qp55iITFMD6r/R3uNH
         pJNfZVlJyvAqkG7Cwj9zMKuyX9qHQQfBk6VHQUTQ+LEMwnEJgWe6+rMRFrP4NFn9PCAc
         ToZw==
MIME-Version: 1.0
X-Received: by 10.140.128.81 with SMTP id 78mr18508293qha.62.1444417897849;
 Fri, 09 Oct 2015 12:11:37 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 9 Oct 2015 12:11:37 -0700 (PDT)
In-Reply-To: <6179643.RVhvoqj9Rt@wuerfel>
References: <20151005195012.GA21881@amitoj-Inspiron-3542>
	<5882355.uMFG4U3DtR@wuerfel>
	<CA+5yK5GwMXDUVUUSdzn1O1iuAed1CDs6Ogqs+fcoH=xufPSzmA@mail.gmail.com>
	<6179643.RVhvoqj9Rt@wuerfel>
Date: Sat, 10 Oct 2015 00:41:37 +0530
Message-ID: <CA+5yK5F6=SeWD0XFXu9QcMu7=_HimGjL9=GpevzCaRzK78b9_g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usleep_range is
 preferred over udelay
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 10, 2015 at 12:34 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Saturday 10 October 2015 00:26:33 Amitoj Kaur Chawla wrote:
>> On Thu, Oct 8, 2015 at 1:07 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> > On Thursday 08 October 2015 08:23:10 Amitoj Kaur Chawla wrote:
>> >> On Tue, Oct 6, 2015 at 1:15 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> >> > It really depends on what the driver is trying to do. In this case, it
>> >> > waits for a device register to signal 'done', and it tries this five times
>> >> > for a maximum of 50 microseconds, which is a relatively short period.
>> >> >
>> >> > Changing the maximum to 1000 means that it can now sleep for up to
>> >> > 5 milliseconds instead, which is a noticeable time, especially if
>> >> > it gets called frequently.
>> >> >
>> >> > The questions to answer here are:
>> >> >
>> >> > * Is it safe to call a sleeping function from this point at all?
>> >> >   Look for other sleeping functions (proves that it is allowed to
>> >> >   sleep) and for spinlocks (if a lock is held, you may not sleep)
>> >> >   in this function.
>> >> >
>> >>
>> >> There aren't any other sleeping functions in this function. However,
>> >> udelay() has been used one more time in a loop.
>> >
>> > udelay() is not a sleeping function, so that doesn't count here.
>> >
>> > Try to look further out if you can't find a sleeping function or a spinlock
>> > here, scanning the callers of this function and everything they call for
>> > common sleeping functions like kmalloc(..., GFP_KERNEL), mutex_lock() or
>> > msleep().
>>
>> kmalloc(..., GFP_ATOMIC) is being called in the function. Callers of
>> this function aren't calling these sleeping functions.
>
> Ah, interesting. Using kmalloc(..., GFP_ATOMIC) is usually a sign that the
> function is called in atomic context and is not allowed to sleep. However
> based on what you write below, I suspect that is actually a mistake
> and it should use GFP_KERNEL instead, because GFP_ATOMIC allocations
> are much more likely to fail.
>
>> >> > * How often do you expect the function to get called? Once per data
>> >> >   packet means it's not ok to sleep long, once an hour would mean it's
>> >> >   clearly ok.
>> >> >
>> >> > * Are there other calls in this function that take longer than a
>> >> >   millisecond?
>> >>
>> >> How can I find out these 2 things? Only udelay() is the sleeping function.
>> >
>> > Try understanding what the functions actually do by looking at the call
>> > chain for the first one, it should be fairly easy in this case.
>> >
>> > For the second one, look for functions that get called from this one,
>> > if any of them contains a mdelay() or msleep(), or a loop around
>> > udelay(), try guessing how long that can take.
>>
>> The function is calling msleep(20) and has a loop around it, repeating
>> hundred times so that means a couple of milliseconds delay, right?
>
> This means the function can sleep up to 2 seconds, which is basically
> an eternity from a driver's perspective, so adding a few shorter sleep
> periods is certainly not harmful.
>
>> Is usleep_range() only used for short delays and msleep() for the longer
>> ones?
>
> Yes. There are other differences, but a main one is that msleep() can
> not sleep less than a millisecond, while usleep_range() can sleep much
> shorter periods.
>

Conclusively, Shorter sleep periods means using usleep_range() instead
of msleep() in this case with a small range since the loop is
repeating a 100 times?


Amitoj


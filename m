X-GM-THRID: 6202253257836855296
X-Received: by 10.129.73.143 with SMTP id w137mr12265655ywa.19.1444416994407;
        Fri, 09 Oct 2015 11:56:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.3 with SMTP id jc3ls558119igb.0.canary; Fri, 09 Oct
 2015 11:56:33 -0700 (PDT)
X-Received: by 10.50.62.68 with SMTP id w4mr704203igr.13.1444416993859;
        Fri, 09 Oct 2015 11:56:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x232.google.com (mail-qg0-x232.google.com. [2607:f8b0:400d:c04::232])
        by gmr-mx.google.com with ESMTPS id y11si209636ywd.7.2015.10.09.11.56.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 11:56:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) client-ip=2607:f8b0:400d:c04::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x232.google.com with SMTP id 61so76165936qgx.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 11:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=N9zjGK+QaZebyH23ZA1PZwNdDzmkWQcTrUNGLOOruPI=;
        b=GUfgI/b54OMln00uxDHt3MrZGhZOX8nBVsaAn+0ka801bmOvRqFkOUVKLFDDOcoKCu
         94vZoU++EQjugB/VTLOO/cpLhAT0VQT6v+aKCK8oIMMdBwFTUqIqBcRcHkf5jnE3TEbl
         PJ/j2becT3n+kPhptrhSHHLQcCvVFQ4yvQlN6g8z/CjlhRXKYaHYi4ij5O8rO72G+osj
         y/0WlmHZIC+5auNCvfSQIPpIG3LC+xEbH/8Rnz/9gSArLrb5uLnVoAsGhKZi6FYGaaZF
         ll/QtVxkdtTPuQpUanAxroxvxRy2Tr56r5R7bxmC0ZK0JTAhP1KBUKN86QcKyjGc65ZQ
         k8dQ==
MIME-Version: 1.0
X-Received: by 10.140.129.22 with SMTP id 22mr17980897qhb.74.1444416993663;
 Fri, 09 Oct 2015 11:56:33 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 9 Oct 2015 11:56:33 -0700 (PDT)
In-Reply-To: <5882355.uMFG4U3DtR@wuerfel>
References: <20151005195012.GA21881@amitoj-Inspiron-3542>
	<6335208.lbv5QB1mEN@wuerfel>
	<CA+5yK5GTb7o0GzUNHEwq-7nFLKXSht31kvHLvxG31WiTC4EEHw@mail.gmail.com>
	<5882355.uMFG4U3DtR@wuerfel>
Date: Sat, 10 Oct 2015 00:26:33 +0530
Message-ID: <CA+5yK5GwMXDUVUUSdzn1O1iuAed1CDs6Ogqs+fcoH=xufPSzmA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usleep_range is
 preferred over udelay
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 8, 2015 at 1:07 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Thursday 08 October 2015 08:23:10 Amitoj Kaur Chawla wrote:
>> On Tue, Oct 6, 2015 at 1:15 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> > It really depends on what the driver is trying to do. In this case, it
>> > waits for a device register to signal 'done', and it tries this five times
>> > for a maximum of 50 microseconds, which is a relatively short period.
>> >
>> > Changing the maximum to 1000 means that it can now sleep for up to
>> > 5 milliseconds instead, which is a noticeable time, especially if
>> > it gets called frequently.
>> >
>> > The questions to answer here are:
>> >
>> > * Is it safe to call a sleeping function from this point at all?
>> >   Look for other sleeping functions (proves that it is allowed to
>> >   sleep) and for spinlocks (if a lock is held, you may not sleep)
>> >   in this function.
>> >
>>
>> There aren't any other sleeping functions in this function. However,
>> udelay() has been used one more time in a loop.
>
> udelay() is not a sleeping function, so that doesn't count here.
>
> Try to look further out if you can't find a sleeping function or a spinlock
> here, scanning the callers of this function and everything they call for
> common sleeping functions like kmalloc(..., GFP_KERNEL), mutex_lock() or
> msleep().

kmalloc(..., GFP_ATOMIC) is being called in the function. Callers of
this function aren't calling these sleeping functions.

>
>> > * How often do you expect the function to get called? Once per data
>> >   packet means it's not ok to sleep long, once an hour would mean it's
>> >   clearly ok.
>> >
>> > * Are there other calls in this function that take longer than a
>> >   millisecond?
>>
>> How can I find out these 2 things? Only udelay() is the sleeping function.
>
> Try understanding what the functions actually do by looking at the call
> chain for the first one, it should be fairly easy in this case.
>
> For the second one, look for functions that get called from this one,
> if any of them contains a mdelay() or msleep(), or a loop around
> udelay(), try guessing how long that can take.

The function is calling msleep(20) and has a loop around it, repeating
hundred times so that means a couple of milliseconds delay, right? Is
usleep_range() only used for short delays and msleep() for the longer
ones?


Amitoj


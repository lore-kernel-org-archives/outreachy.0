X-GM-THRID: 6208379102061133824
X-Received: by 10.107.150.208 with SMTP id y199mr1021827iod.15.1445503856313;
        Thu, 22 Oct 2015 01:50:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.130.228 with SMTP id oh4ls174728obb.81.gmail; Thu, 22 Oct
 2015 01:50:54 -0700 (PDT)
X-Received: by 10.182.246.98 with SMTP id xv2mr12403977obc.3.1445503854747;
        Thu, 22 Oct 2015 01:50:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id i140si952687ywe.3.2015.10.22.01.50.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:50:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by qkcy65 with SMTP id y65so50509630qkc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 01:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=WDq5+asatrLyftaUVTqudaZLmLkCJ0PbCMgxKs3r/Rs=;
        b=oI/1cIAa5+fCJHF8BrvPNJTSTYavR9euq2TjF2gi+an1fiQQN19GSgAJKRrBHpLeNy
         wS+afw+Z+Z884D7mdXsXpZOKeaqnMuz2yWpY70MXDsYGcTEdT+N1vlaCUrKe9uc+ltZS
         AX3y/HXQnx32k7Ql3ylvbWyZ29JMO6f0XRi846g/ZAN8q8vidCNFiUY4vTVQEgyRoLpq
         u4Hi0660iRpLvyPMER9tIokgEIbaA0Ua+JTBciXdcJPiTJg8kqV7WfD7ZELhFeXPv9o2
         sZu4ZSY1WviZ3pgcQwR1MJ7D7AX5LZyvLBc9q2l9qrqwsax+3WX6EDTLVpC6XnTGwG1W
         MTCQ==
MIME-Version: 1.0
X-Received: by 10.55.207.3 with SMTP id e3mr16864072qkj.32.1445503854470; Thu,
 22 Oct 2015 01:50:54 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Thu, 22 Oct 2015 01:50:54 -0700 (PDT)
In-Reply-To: <9274066.vd5W3yiTYR@wuerfel>
References: <CA+5yK5F0dsH5satgnY+ULsGzOPR1MZsZYuuuA6HdP5qAYb1diw@mail.gmail.com>
	<9274066.vd5W3yiTYR@wuerfel>
Date: Thu, 22 Oct 2015 14:20:54 +0530
Message-ID: <CA+5yK5FVXasVZKxxgPJfyYMEV1iMYFrLnt9kGb3QHsKawSWXbg@mail.gmail.com>
Subject: Re: Questions on some functions
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: y2038@lists.linaro.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 1:31 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Thursday 22 October 2015 12:08:14 Amitoj Kaur Chawla wrote:
>> Hi Arnd,
>>
>>
>> A couple of doubts I had while working on some patches.
>
> Hi Amitoj,
>
> I've put the y2038 and outreachy mailing lists on Cc, I hope that's
> ok with you.
>

Not an issue!

> You ask good and important questions, and it will help others to
> read my reply as well.
>
>> I was working on drivers/net/wireless/atmel.c which has time_t in it.
>> According to the y2038 page it should be replaced with ktime_t. But
>> while reading online on y2038, I found time64_t as well.
>> My question, what is the difference between time64_t and ktime_t and
>> how do you decide which to use where?
>
> time64_t uses seconds, while ktime_t uses nanoseconds. They are both
> appropriate solutions for the problem, but it depends on the driver's
> requirements which one work better. Most drivers want sub-second
> resolution, so ktime_t has to be used. When a driver is only interested
> in seconds, using time64_t is more efficient, because it avoids the
> 64-bit integer division required to convert nanoseconds into seconds.
>
>> I found another patch in an archive where you've mentioned
>> ktime_get(), ktime_get_real(), ktime_get_ts64(),
>> ktime_get_real_ts64(), ktime_get_seconds() and
>> ktime_get_real_seconds().
>> What is the difference between ktime_get() and ktime_get_ts64()?
>
> ktime_get_ts64() returns a 'struct timespec64' rather than 'ktime_t'.
> The two are essentially equivalent, but using ktime_t is generally
> more preferred, except that converting ktime_t into timespec64 later
> is again an expensive operation. If a driver wants separate
> seconds/nanoseconds fields, using timespec64 is better.
>
>> You've also mentioned there that 'real is used when driver wants to
>> know wallclock but is okay with time going backwards.'
>> I didn't understand this, how do you know that the driver is 'okay
>> with time going backwards' ?
>
> Most of them are not: if a driver wants to know how much time has
> passed between two events, and it gets a negative answer, things
> can go wrong.
>
> An example for a driver that does not care about time going backwards
> is one that just prints the current time in a printk() statement
> and does not compare it to another time value.
>
> There are also examples where you have to use 'real' time, in particular
> when the time value is passed through an external interface with a
> known format (e.g. to user processes, on the network, or stored on disk).
> Here, changing the code to monotonic time causes problems for the code
> on the other end of that interface.
>
>         Arnd

Thanks for answering all the questions. Things are way clearer now.

-- 
Amitoj


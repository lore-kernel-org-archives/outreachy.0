X-GM-THRID: 6202253257836855296
X-Received: by 10.66.221.131 with SMTP id qe3mr12243549pac.2.1444420679860;
        Fri, 09 Oct 2015 12:57:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.144 with SMTP id h16ls1842186qgd.88.gmail; Fri, 09 Oct
 2015 12:57:58 -0700 (PDT)
X-Received: by 10.31.7.70 with SMTP id 67mr12528639vkh.2.1444420678378;
        Fri, 09 Oct 2015 12:57:58 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id o73si238071ywd.6.2015.10.09.12.57.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:57:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id 47so77901003qgt.2
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Y7yH1hNpWAV6Ztmj3CJJZkSrioJImavvzqwzVydto/o=;
        b=chMe4kwPdX4cgC52B3f4WcbfbB/z/CzrnKsgsEfPS2yeeAs45sqQogmwfEVhVb/Eif
         Qnqe+ang4f3U+1m3v4be2u9Lz2xrVDP1W4ur8Jr4lsrgM+HdY+3S6MysyXyvtc6oAPQ/
         34SBcc2Luxl89O59YyFuhGi3Rl/ar5Sdi0ZAdToSC3d4vc9q/NimiS4KR2xE/KoHQlOX
         4Ev/mOZUcpeAPihWTRdN0od4mAg+dNI+Mx2H36ZXxHSlKrkYVqV+OOV1RNWTe01RIDVx
         Me42miAhK16Ru+TJErS577AKMTmrBZT0FxFmmkIKcCw0ynBQcoxWAp3pZZ0vAZCe7Mxw
         ji6A==
MIME-Version: 1.0
X-Received: by 10.140.92.233 with SMTP id b96mr16775719qge.104.1444420678201;
 Fri, 09 Oct 2015 12:57:58 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 9 Oct 2015 12:57:58 -0700 (PDT)
In-Reply-To: <7171425.3xfd39zfgx@wuerfel>
References: <20151005195012.GA21881@amitoj-Inspiron-3542>
	<6179643.RVhvoqj9Rt@wuerfel>
	<CA+5yK5F6=SeWD0XFXu9QcMu7=_HimGjL9=GpevzCaRzK78b9_g@mail.gmail.com>
	<7171425.3xfd39zfgx@wuerfel>
Date: Sat, 10 Oct 2015 01:27:58 +0530
Message-ID: <CA+5yK5E8+256byU52+anaFNLCLQ4-N19fUThk=OK=4XyL-2aDw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usleep_range is
 preferred over udelay
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 10, 2015 at 1:09 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Saturday 10 October 2015 00:41:37 Amitoj Kaur Chawla wrote:
>> On Sat, Oct 10, 2015 at 12:34 AM, Arnd Bergmann <arnd@arndb.de> wrote:
>> > This means the function can sleep up to 2 seconds, which is basically
>> > an eternity from a driver's perspective, so adding a few shorter sleep
>> > periods is certainly not harmful.
>> >
>> >> Is usleep_range() only used for short delays and msleep() for the longer
>> >> ones?
>> >
>> > Yes. There are other differences, but a main one is that msleep() can
>> > not sleep less than a millisecond, while usleep_range() can sleep much
>> > shorter periods.
>> >
>>
>> Conclusively, Shorter sleep periods means using usleep_range() instead
>> of msleep() in this case with a small range since the loop is
>> repeating a 100 times?
>
> That is a bit oversimplified. What we found so far is
>
> - This is a function that is allowed to sleep. We know that because
>   it calls msleep(). This means your original patch is good, but you
>   should explain this in the changelog.
>
> - you found another bug in the same function, which is allowed to
>   sleep but calls kmalloc(..., GFP_ATOMIC) when it should use GFP_KERNEL.
>

Yes, I'll send a separate patch for this bug.

> - usleep_range(10, 1000) is a huge range (a factor of 100). This is ok
>   here, because even the time spent in a 1000 microsecond wait is dwarfed
>   by the 100 * 20ms wait time later in the function.
>
> Other points that we have not talked about are:
>
> - using a smaller range would also be ok, typically one would use a factor
>   between 1.1 (+10%) and 10 (+1000%), but not a factor of 100.
>
> - the function actually has two copies of the same loop with udelay()
>   in it. If you change one of them, it would be logical to change both
>   in the same patch.
>

I'll send a v2 of this patch changing both udelay() functions.

> - the loop you found below is interesting as well. Waiting 100 times for
>   20ms means we can actually wait even longer, as each 20ms interval can
>   turn into 30 or 40 milliseconds. If we care about the actual maximum
>   time, this could be improved by writing it as:
>
>         unsigned long timeout = jiffies + 2 * HZ; /* up to two seconds */
>         do {
>                 tmp16 = r8712_read16(padapter, TCR);
>                 if ((tmp16 & _DMEM_CODE_DONE)
>                         break;
>                 msleep(20);
>         } while (time_before(timeout, jiffies));
>

This piece of code is actually easier to understand than the original.


>   We probably don't care about that here though.
>

Thanks for all the feedback and patience. Things are way clearer now.

-- 
Amitoj


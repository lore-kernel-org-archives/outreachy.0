X-GM-THRID: 6206946961366450176
X-Received: by 10.112.209.73 with SMTP id mk9mr5850295lbc.14.1445193429037;
        Sun, 18 Oct 2015 11:37:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.233 with SMTP id jj9ls482367wid.26.gmail; Sun, 18 Oct
 2015 11:37:07 -0700 (PDT)
X-Received: by 10.181.11.195 with SMTP id ek3mr360307wid.7.1445193427958;
        Sun, 18 Oct 2015 11:37:07 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id d7si346173wiy.2.2015.10.18.11.37.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 11:37:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ll6so70535093wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 11:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=66w6HVd3T1c0GAkXdxD4bmC6OquuBQxuJ9qRetSRhXw=;
        b=mlm4ukt3wq43nv0hz9O3Jq3ON8zHiGiROe8+h5s2PIIMXCuanlNq465xyfz0ZV/dhr
         1sKfvboU5IHTyJLfm9EnLQSD7GlJ7C+7Nfl/9AD6IoyxHfi82nPtSTii6RT64Bs00aL+
         ya0nS42Rl6Wf1T7Q44uGRU1XmMGBmrbGFAdq44CWSGD56wxngk3gqL+pv99kuvY8z/iU
         FptPehISzx3wUL5I6ySPkHcyaDcOt1/K89CQHzEOtgba1gogybFmHe6X3w3OwajZ+dBx
         5+tzYzkoE21HRWCQAkdxkPopAaIMefkrnBBw+KkHgd682wg41UC1+bEO7PgouUf6+57f
         LUhA==
MIME-Version: 1.0
X-Received: by 10.180.184.232 with SMTP id ex8mr15862885wic.15.1445193427827;
 Sun, 18 Oct 2015 11:37:07 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Sun, 18 Oct 2015 11:37:07 -0700 (PDT)
In-Reply-To: <CAHWJYFmY_t8dJ2cVqQ6T5e3zpm3Ok5om5JcN96JQwJh-RTWbiA@mail.gmail.com>
References: <CAHWJYFnvj6hU2wmpQYQsQAMUELD0xOGXLostAyLzf4DP660Y9A@mail.gmail.com>
	<13636393.OHutreOmhF@wuerfel>
	<CAHWJYFmY_t8dJ2cVqQ6T5e3zpm3Ok5om5JcN96JQwJh-RTWbiA@mail.gmail.com>
Date: Sun, 18 Oct 2015 21:37:07 +0300
Message-ID: <CAEnQRZD-aD86ae6JnJbr9NG4R3=oOTns7QeSytodapRCHJMNkA@mail.gmail.com>
Subject: Re: [Outreachy kernel] MIPS cross-compile
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 9:24 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> On Sun, Oct 18, 2015 at 4:09 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> On Sunday 18 October 2015 14:24:15 Ioana Ciornei wrote:
>>>
>>> I am having a little bit of trouble when cross-compiling staging/octeon.
>>> I have already tried to compile it using mips-openwrt-linux-uclibc-
>>> toolchain but unfortunately I had no luck.
>>>
>>> The output when trying to compile one the files is showed bellow:
>>>
>>> ioana@yoga:~/src/kernels/staging$ make ARCH=mips
>>> CROSS_COMPILE=mips-openwrt-linux-uclibc-
>>
>> This might be targetting a too old architecture level, or only 32-bit.
>> We've also had problems on ARM where the kernel does not pass the correct
>> arguments to the compiler to override the defaults. It's possible that
>> MIPS still does this.
>>
>>> Could anyone recommend an appropriate toolchain for mips architecture?
>>> I should mention that I have some previous experience with
>>> cross-compiling but not for a mips target.
>>
>> There is a good set of cross compilers at
>> https://www.kernel.org/pub/tools/crosstool/
>
> I tried with both mips64-linux- and mips-linux- toolchains and now I
> get some other kind of errors.
> ioana@yoga:~/src/kernels/staging$ make CROSS_COMPILE=mips64-linux-

Here you forgot to add ARCH=mips.

>   CHK     include/config/kernel.release
>   CHK     include/generated/uapi/linux/version.h
>   CHK     include/generated/utsrelease.h
>   CC      kernel/bounds.s
> cc1: error: unrecognized command line option '-mno-sse'
> cc1: error: unrecognized command line option '-mno-mmx'
> cc1: error: unrecognized command line option '-mno-sse2'
> cc1: error: unrecognized command line option '-mno-3dnow'
> cc1: error: unrecognized command line option '-m64'
> cc1: error: unrecognized command line option '-mno-red-zone'
> cc1: error: unrecognized command line option '-mcmodel=kernel'
> Kbuild:44: recipe for target 'kernel/bounds.s' failed
> make[1]: *** [kernel/bounds.s] Error 1
> Makefile:984: recipe for target 'prepare0' failed
> make: *** [prepare0] Error 2
>
>>
>> Alternatively, get the scripts from
>> git://git.infradead.org/users/segher/buildall.git and build your own by
>> following the instructions in the corresponding README file.
>
> As I seen the above set of cross compilers is also build running a
> version of Segher's scripts.
> Is there a point in re-building it?
>
> Thanks,
>
> Ioana
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAHWJYFmY_t8dJ2cVqQ6T5e3zpm3Ok5om5JcN96JQwJh-RTWbiA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.


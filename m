X-GM-THRID: 6206946961366450176
X-Received: by 10.67.14.6 with SMTP id fc6mr23147023pad.14.1445192678935;
        Sun, 18 Oct 2015 11:24:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.79 with SMTP id p76ls1251307ioe.92.gmail; Sun, 18 Oct
 2015 11:24:38 -0700 (PDT)
X-Received: by 10.107.165.5 with SMTP id o5mr7874049ioe.5.1445192678549;
        Sun, 18 Oct 2015 11:24:38 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x241.google.com (mail-yk0-x241.google.com. [2607:f8b0:4002:c07::241])
        by gmr-mx.google.com with ESMTPS id q68si1981928ywf.0.2015.10.18.11.24.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 11:24:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::241 as permitted sender) client-ip=2607:f8b0:4002:c07::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by ykfw201 with SMTP id w201so715265ykf.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 11:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Zb5q8ltLYNh7DTNG2aWVbV4b5WCq6+gbmURQHWWfHtU=;
        b=jmZ8fZTGHDvhACnP0IoVqjjGDjWJtA212pa952SWZtYnyKX2RZKw1TkhHCB3LoFure
         pzQGubnj1II/EGb89VtafMZ+0N2lnpWmbvwcFWi1wASQyKsgBDnVZeOyB6hmrkT8OqgJ
         DX+IySEb4Tn7iWQAU8jf6NvnYEAoab4k2yRDqoqwjZvNuwudlE26K0VoY0atmGa623mT
         SamKww7qq2TlLlX+0BGFpWaaWu7/aUrtzu1JNQxT/Cl1z9LimdgFU7eDRl3HN3FbtQ9U
         isG1Vp0txr9W9Qh04dkpBqbXcpUvggiBYcRh9ieZ38cmuKJFwFsLhiyKfMMn4ickNG8J
         ENNg==
MIME-Version: 1.0
X-Received: by 10.129.29.5 with SMTP id d5mr17054387ywd.278.1445192678375;
 Sun, 18 Oct 2015 11:24:38 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Sun, 18 Oct 2015 11:24:38 -0700 (PDT)
In-Reply-To: <13636393.OHutreOmhF@wuerfel>
References: <CAHWJYFnvj6hU2wmpQYQsQAMUELD0xOGXLostAyLzf4DP660Y9A@mail.gmail.com>
	<13636393.OHutreOmhF@wuerfel>
Date: Sun, 18 Oct 2015 21:24:38 +0300
Message-ID: <CAHWJYFmY_t8dJ2cVqQ6T5e3zpm3Ok5om5JcN96JQwJh-RTWbiA@mail.gmail.com>
Subject: Re: [Outreachy kernel] MIPS cross-compile
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 4:09 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Sunday 18 October 2015 14:24:15 Ioana Ciornei wrote:
>>
>> I am having a little bit of trouble when cross-compiling staging/octeon.
>> I have already tried to compile it using mips-openwrt-linux-uclibc-
>> toolchain but unfortunately I had no luck.
>>
>> The output when trying to compile one the files is showed bellow:
>>
>> ioana@yoga:~/src/kernels/staging$ make ARCH=mips
>> CROSS_COMPILE=mips-openwrt-linux-uclibc-
>
> This might be targetting a too old architecture level, or only 32-bit.
> We've also had problems on ARM where the kernel does not pass the correct
> arguments to the compiler to override the defaults. It's possible that
> MIPS still does this.
>
>> Could anyone recommend an appropriate toolchain for mips architecture?
>> I should mention that I have some previous experience with
>> cross-compiling but not for a mips target.
>
> There is a good set of cross compilers at
> https://www.kernel.org/pub/tools/crosstool/

I tried with both mips64-linux- and mips-linux- toolchains and now I
get some other kind of errors.
ioana@yoga:~/src/kernels/staging$ make CROSS_COMPILE=mips64-linux-
  CHK     include/config/kernel.release
  CHK     include/generated/uapi/linux/version.h
  CHK     include/generated/utsrelease.h
  CC      kernel/bounds.s
cc1: error: unrecognized command line option '-mno-sse'
cc1: error: unrecognized command line option '-mno-mmx'
cc1: error: unrecognized command line option '-mno-sse2'
cc1: error: unrecognized command line option '-mno-3dnow'
cc1: error: unrecognized command line option '-m64'
cc1: error: unrecognized command line option '-mno-red-zone'
cc1: error: unrecognized command line option '-mcmodel=kernel'
Kbuild:44: recipe for target 'kernel/bounds.s' failed
make[1]: *** [kernel/bounds.s] Error 1
Makefile:984: recipe for target 'prepare0' failed
make: *** [prepare0] Error 2

>
> Alternatively, get the scripts from
> git://git.infradead.org/users/segher/buildall.git and build your own by
> following the instructions in the corresponding README file.

As I seen the above set of cross compilers is also build running a
version of Segher's scripts.
Is there a point in re-building it?

Thanks,

Ioana


X-GM-THRID: 6206946961366450176
X-Received: by 10.50.23.83 with SMTP id k19mr2404448igf.9.1445195059697;
        Sun, 18 Oct 2015 12:04:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.71 with SMTP id g7ls641812igq.21.canary; Sun, 18 Oct
 2015 12:04:19 -0700 (PDT)
X-Received: by 10.107.10.22 with SMTP id u22mr17801216ioi.19.1445195059330;
        Sun, 18 Oct 2015 12:04:19 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x22c.google.com (mail-yk0-x22c.google.com. [2607:f8b0:4002:c07::22c])
        by gmr-mx.google.com with ESMTPS id q133si1986156ywb.1.2015.10.18.12.04.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 12:04:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22c as permitted sender) client-ip=2607:f8b0:4002:c07::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22c as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by ykaz22 with SMTP id z22so122672560yka.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 12:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=381OgT2GqWq4VkhsbNMIO681J9+divqvvxBjVnzg2Wk=;
        b=yZlYYkmdby0W7gKJcNWeMX/vVnDH9QZkcLPcVl80toLMnpJpywmaVY3WO2Gs0xVGsv
         +ymKFLrXQT4Xf0v9jPBwyBiz7rfNFoe0I76dwTCxoSHaMIvOwh6Hgbg+hLDPFobCfGV0
         eX5aoEk+Cpoz/lXbtjyhA+WX+0niKhPTwBxLXuQv+FDjAqkuCT4ScshPraLkzWVT9l6q
         uVKLyqk8/Yhe3OYJ1wRo8c42sJavzIvVtuM5/xtEV00k9xAzWY+9XSkHRUJhI6kQFUCn
         ij2GIgfjCPe5+phpQ61MLvpa/HA+Jqj9PGTgSY7nsLc2ksn438TA4oLzJbx6Th3ItwgC
         lufQ==
MIME-Version: 1.0
X-Received: by 10.129.157.136 with SMTP id u130mr7132451ywg.11.1445195059143;
 Sun, 18 Oct 2015 12:04:19 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Sun, 18 Oct 2015 12:04:19 -0700 (PDT)
In-Reply-To: <CAEnQRZD-aD86ae6JnJbr9NG4R3=oOTns7QeSytodapRCHJMNkA@mail.gmail.com>
References: <CAHWJYFnvj6hU2wmpQYQsQAMUELD0xOGXLostAyLzf4DP660Y9A@mail.gmail.com>
	<13636393.OHutreOmhF@wuerfel>
	<CAHWJYFmY_t8dJ2cVqQ6T5e3zpm3Ok5om5JcN96JQwJh-RTWbiA@mail.gmail.com>
	<CAEnQRZD-aD86ae6JnJbr9NG4R3=oOTns7QeSytodapRCHJMNkA@mail.gmail.com>
Date: Sun, 18 Oct 2015 22:04:19 +0300
Message-ID: <CAHWJYF=Yo+C50Dr6ja=yY09YqrJHpHQ6tC79b8Ep9HsCYEvrKA@mail.gmail.com>
Subject: Re: [Outreachy kernel] MIPS cross-compile
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 9:37 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Sun, Oct 18, 2015 at 9:24 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
>> On Sun, Oct 18, 2015 at 4:09 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>>> On Sunday 18 October 2015 14:24:15 Ioana Ciornei wrote:
>>>>
>>>> I am having a little bit of trouble when cross-compiling staging/octeon.
>>>> I have already tried to compile it using mips-openwrt-linux-uclibc-
>>>> toolchain but unfortunately I had no luck.
>>>>
>>>> The output when trying to compile one the files is showed bellow:
>>>>
>>>> ioana@yoga:~/src/kernels/staging$ make ARCH=mips
>>>> CROSS_COMPILE=mips-openwrt-linux-uclibc-
>>>
>>> This might be targetting a too old architecture level, or only 32-bit.
>>> We've also had problems on ARM where the kernel does not pass the correct
>>> arguments to the compiler to override the defaults. It's possible that
>>> MIPS still does this.
>>>
>>>> Could anyone recommend an appropriate toolchain for mips architecture?
>>>> I should mention that I have some previous experience with
>>>> cross-compiling but not for a mips target.
>>>
>>> There is a good set of cross compilers at
>>> https://www.kernel.org/pub/tools/crosstool/
>>
>> I tried with both mips64-linux- and mips-linux- toolchains and now I
>> get some other kind of errors.
>> ioana@yoga:~/src/kernels/staging$ make CROSS_COMPILE=mips64-linux-
>
> Here you forgot to add ARCH=mips.

Sorry about that.
It works now.

Ioana


>
>>   CHK     include/config/kernel.release
>>   CHK     include/generated/uapi/linux/version.h
>>   CHK     include/generated/utsrelease.h
>>   CC      kernel/bounds.s
>> cc1: error: unrecognized command line option '-mno-sse'
>> cc1: error: unrecognized command line option '-mno-mmx'
>> cc1: error: unrecognized command line option '-mno-sse2'
>> cc1: error: unrecognized command line option '-mno-3dnow'
>> cc1: error: unrecognized command line option '-m64'
>> cc1: error: unrecognized command line option '-mno-red-zone'
>> cc1: error: unrecognized command line option '-mcmodel=kernel'
>> Kbuild:44: recipe for target 'kernel/bounds.s' failed
>> make[1]: *** [kernel/bounds.s] Error 1
>> Makefile:984: recipe for target 'prepare0' failed
>> make: *** [prepare0] Error 2
>>
>>>
>>> Alternatively, get the scripts from
>>> git://git.infradead.org/users/segher/buildall.git and build your own by
>>> following the instructions in the corresponding README file.
>>
>> As I seen the above set of cross compilers is also build running a
>> version of Segher's scripts.
>> Is there a point in re-building it?
>>
>> Thanks,
>>
>> Ioana
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAHWJYFmY_t8dJ2cVqQ6T5e3zpm3Ok5om5JcN96JQwJh-RTWbiA%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.


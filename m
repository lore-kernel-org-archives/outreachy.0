X-GM-THRID: 6208922267806597120
X-Received: by 10.50.82.98 with SMTP id h2mr4952536igy.1.1445629342498;
        Fri, 23 Oct 2015 12:42:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.107.2 with SMTP id gy2ls302041igb.44.gmail; Fri, 23 Oct
 2015 12:42:22 -0700 (PDT)
X-Received: by 10.50.61.234 with SMTP id t10mr4946092igr.4.1445629342140;
        Fri, 23 Oct 2015 12:42:22 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x235.google.com (mail-qk0-x235.google.com. [2607:f8b0:400d:c09::235])
        by gmr-mx.google.com with ESMTPS id t64si1513097ywd.2.2015.10.23.12.42.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 12:42:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) client-ip=2607:f8b0:400d:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x235.google.com with SMTP id a6so87143300qkc.3
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 12:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=esJeMFFmPkNoae5Anhq1NtIU+dM6pUfxu8jVgj5jTug=;
        b=exZoGDda0z1IpF+bo0HGYXXLDudsanjF52CmZaepmXBgL5BY+MJt9Xe2WpooCEp/g0
         HKYbmJVh7/cunoJsZwg/qCPHQP8l8dMopueGj+4VqfO+cc5TDfPH5KVhKaEAUzUaO5rJ
         6JA6kXn1CNPG1G3Uae4fSPR9TPFvpvPjHfDMVoIAu6GDRV2PKkQkBJqfuUwUMbcxP4Xy
         WRqgsy6Xz1ljPSay37qcGLChBP9bf1aCk1ddBAzqrAzmzYlMO0xZeVOAmyhNvr6FqgM1
         pQek2KYThBId2bPgGBNOL+N1/4ULa+5C9soP43h+tsUjium/5nzz1pFsO3R3FCQI2u8w
         EE6Q==
MIME-Version: 1.0
X-Received: by 10.55.195.135 with SMTP id r7mr28721787qkl.4.1445629341926;
 Fri, 23 Oct 2015 12:42:21 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 23 Oct 2015 12:42:21 -0700 (PDT)
In-Reply-To: <3885032.B7rTY3eIDR@wuerfel>
References: <20151023190922.GA32154@amitoj-Inspiron-3542>
	<7971017.NMVUFoYCm6@wuerfel>
	<CA+5yK5Hm3UTHqTW35NdW-7UMv1YtMtD=mesXFN7=hP=u_h7m9g@mail.gmail.com>
	<3885032.B7rTY3eIDR@wuerfel>
Date: Sat, 24 Oct 2015 01:12:21 +0530
Message-ID: <CA+5yK5FFcTKSssUYFfW7DMN1C8FUcJ5mG+CSkjZK3aU5KBeVgg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] char: ipmi: ipmi_ssif:
 Replace timeval with timespec64
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, y2038@lists.linaro.org
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 24, 2015 at 1:04 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Saturday 24 October 2015 00:58:12 Amitoj Kaur Chawla wrote:
>> On Sat, Oct 24, 2015 at 12:53 AM, Arnd Bergmann <arnd@arndb.de> wrote:
>> > On Saturday 24 October 2015 00:39:22 Amitoj Kaur Chawla wrote:
>> >> This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
>> >> will not give current time beyond 2038.
>> >>
>> >> The patch changes the code to use ktime_get_real_ts64() which returns
>> >> a 'struct timespec64' instead of do_gettimeofday() which returns a
>> >> 'struct timeval'
>> >>
>> >> This patch also alters the format strings in pr_info() for now.tv_sec
>> >> and now.tv_nsec to incorporate 'long long' on 32 bit architectures and
>> >> leading zeroes respectively.
>> >>
>> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> >> ---
>> >
>> > The patch looks correct, but I think that this time the format string
>> > was actually ok already for the microsecond value. Just leave it at "%6.6ld"
>> > and send it again with the maintainers on Cc.
>> >
>>
>> Oh okay can I ask the reason that the change was required there but not here?
>>
>>
>
> The other one was "%lu", which has no leading zeroes, while this one
> was "%6.6ld", which does.
>
> I keep getting confused by printf format strings and sometimes have
> to try these out myself, but my understanding is that these all
> behave the same way:
>
>  "%06ld"
>  "%.6ld"
>  "%6.6ld"
>  "%6.06ld"
>
>         Arnd

Oh, yes in the previous change I had tried for "%lu" myself, with
several examples. This time I didn't, not paying attention to the
change. My bad.

-- 
Amitoj


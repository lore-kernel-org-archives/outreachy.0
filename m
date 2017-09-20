X-GM-THRID: 6467836648401928192
X-Received: by 10.202.217.4 with SMTP id q4mr2498528oig.110.1505914284072;
        Wed, 20 Sep 2017 06:31:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.179.36 with SMTP id a33ls87382plc.10.gmail; Wed, 20 Sep
 2017 06:31:22 -0700 (PDT)
X-Received: by 10.99.67.196 with SMTP id q187mr1283757pga.59.1505914282883;
        Wed, 20 Sep 2017 06:31:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505914282; cv=none;
        d=google.com; s=arc-20160816;
        b=ifX2ezrFRgFDGsYQZ2+EkuxUEq1MYsU80aRsq906u7flmaF9/ovXMBG+YssgFAsOMa
         PHG07Wrrazcqa6mCntj8mKwTg5dNDIpMFDpOx1Syo6+zIjKG+tOMiASLoe1lR/72isDx
         2P8yjIW2qSLqfa6Cd416VFayP9oeVteT2eNR0CkttlLrOxGoIUKdqxWk0i5PX9b5PU0x
         VjrnFb5QMcPgAUdUxVXn/FD2mppu7eZ1mZtYHrgcaWJtfbjrkQlCL/KDsFZN62wiA9z+
         SV0A93aKzvXaeqmh3GT9YEXRsbRxCZR1FE6nXpZ2jKeagi/tBgtZpk8KYEhdSvZwsqQu
         eJWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=VClmSaBzrGu+70sMtUL2MxpvxJTEosvX7ULuq9sVkQA=;
        b=v5bosFJilOX8QXSrH+e60ra8WcNWFBjGkB5NV4qTVj5CXLHRDgfMTAyybm23xhsRTP
         Y8XcSG13EnUQp7Gc+BzwJmm8vJxLeSoLSpNNs7LD3RUBoTlGmt7/dlX9mfcJ4yinw2rk
         gQetmfqYJXIJ7JaNRL6014+t5QIZLp0CwU0qGEHOGY1a9l2gUQH6ApE/hFG0NwqWId1c
         PU7cW67EOWA6k4TpFLbdVJYCnMgQ/HmOBX8mVJAy2GB2z3PzTlvuoEsL8K4lvLWqYA12
         n94xu4h7oAgzNM77gJda6NdmspmfSTEM2pbV6dycWmOWAXa3CF7zO2s+3/p5jEISdPWE
         GWCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HHunXo3d;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id s69si79498ywg.33.2017.09.20.06.31.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 06:31:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HHunXo3d;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id u48so1716718qtc.4
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 06:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=VClmSaBzrGu+70sMtUL2MxpvxJTEosvX7ULuq9sVkQA=;
        b=HHunXo3d6znSEIUA1dfEpc/z1RvT0m0SY/HJriL37sIoE3J/rwgzWsg+GCTQWD2JPS
         NrYZsFIdA3GAWlin0PQkG5PedEIyTpnMqH0xvTjN2pOeCnJjjS0cPTivilUVofU09a45
         Y8aFGr0yXte6DAerHK9v+IJCTb+nxO3rqdfR4jhA3eBJiDXSbsR/Fgl60JPYn0pispA0
         4F7KpgfHxW454S2lien4LZumYiluInzBx3qsYybwJLxq3XuEBeeFwewD3FupmVGypxjQ
         YHQTC7P28p9wabZRgPy5pEo1kiYGjezVsoFR9I0CeHyj89PdnY1iTONoiSjMAEaZGOgL
         d9lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=VClmSaBzrGu+70sMtUL2MxpvxJTEosvX7ULuq9sVkQA=;
        b=VBNILT7MMfvDPmt9kGZVlL+wp+F+i8sFEvhh+5Q82l94XAxzWZCUWxhVfX6C3zTkj0
         PpoGtucedLvLUAbWlHkQh+7oFj18Eql0af0JeD58cLyxvhqjGPJS+QUtczUnLSHKXItT
         tgy9Xl0E6/UWJtyckNfBJsoap7WWQo8nuvnATALwtx6ZMMO0nX1oA0l9ZfGyrTj5s8tM
         9GHU0cHj4B+PaXVN0GCetzaiuFqbzvoi++X8eRgSkHMlc0hm5eamiidlecFiZN9f+Cen
         vFuWTjT28SP2G1tVmFU0xSH4iQj1IfpR6RqHpZBkI+6Q2+7KNC3G/PU+LyJSNpkaujAr
         MnQg==
X-Gm-Message-State: AHPjjUjl1KRSmqBPxX2m7y3OpjSmTN9Ha8P0GRDc3gnk0d9FzuQwAU4v
	SVl2nKGkcmI+pEupHHOZKZJnXYT51atUqy/f9/s=
X-Google-Smtp-Source: AOwi7QBww0CzubODHW85TESP2BdPWQ2ACsTfeoRzRgbs2R8yWMQ/hJr9bpSGu+kYZxR/Cs5Y4RsEJn64cyeSSQB0ScE=
X-Received: by 10.200.4.169 with SMTP id s41mr7061684qtg.132.1505914282572;
 Wed, 20 Sep 2017 06:31:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Wed, 20 Sep 2017 06:31:22 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709201506420.3290@hadrien>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com>
 <alpine.DEB.2.20.1709201444450.3290@hadrien> <CALta04wZGH2g6ANabq__rrZJUvJqq-UE1+M9M6HVWT8pmm1Bzw@mail.gmail.com>
 <alpine.DEB.2.20.1709201506420.3290@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Wed, 20 Sep 2017 16:31:22 +0300
Message-ID: <CALta04yLe_5EBmGx=p67V7c8=Nhij=60e_rj0b6oneQKmRFtdw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Staging: media: atomisp: Fix style issues
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On 20 September 2017 at 16:07, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 20 Sep 2017, Georgiana Chelu wrote:
>
>> On 20 September 2017 at 15:45, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Wed, 20 Sep 2017, Georgiana Chelu wrote:
>> >
>> >> This patchset fix coding style issues found by checkpatch.pl.
>> >
>> > Did you send these before?  They look failiar, but they don't seem to have
>> > been applied either.
>> >
>> > julia
>>
>> Yes, these changes were sent as a single patch.
>>
>> Greg advised me to break it down because there
>> were too many different fixes for a single patch.
>> So, we agreed to resend it as a patch set.
>
> OK, it does look more digestible this way.  Maybe it should have been a
> v2.  But since Greg has already discarded the previous one, maybe it is
> OK.
>
> julia
>
>

I did not label it with "v2" because the previous one was just a simple patch,
not a patch set. In case this label is required, I will resend it with
the correct
label.

Thank you for the review,
Georgiana

>
>>
>>
>> Thank you,
>> Georgiana
>>
>> >
>> >>
>> >> Georgiana Chelu (4):
>> >>   Staging: media: atomisp: Use unsigned int instead of unsigned
>> >>   Staging: media: atomisp: Add blank line after declarations
>> >>   Staging: media: atomisp: pci: Move open brace '{' on the next line
>> >>   Staging: media: atomisp: pci: Place constant on the right side in
>> >>     comparissons
>> >>
>> >>  .../atomisp/pci/atomisp2/atomisp_compat_css20.c    | 27 +++++++++++++++-------
>> >>  1 file changed, 19 insertions(+), 8 deletions(-)
>> >>
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1505909511.git.georgiana.chelu93%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>


X-GM-THRID: 6394809093953945600
X-Received: by 10.129.158.213 with SMTP id v204mr758375ywg.70.1488909811883;
        Tue, 07 Mar 2017 10:03:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.22 with SMTP id d22ls1074820otc.43.gmail; Tue, 07 Mar
 2017 10:03:31 -0800 (PST)
X-Received: by 10.157.83.26 with SMTP id g26mr688908oth.24.1488909811498;
        Tue, 07 Mar 2017 10:03:31 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id n127si212546ita.3.2017.03.07.10.03.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 10:03:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id f203so1382148itf.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 10:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=W7zBR7tX38v/kFCq8CQA9+H38vFs9mpMBx8wt0Ap7HE=;
        b=TD/OxeT5bUqJdwNak4ommgY19a9X6lrUexMe4k1u8B0HOmeb/d9cbVvZnI+H8C51dR
         XC1Yi4lRNPNL2DJa4YCgX1ClPNr79RYJeE0w4ll+ohmMkHphp4INjsG0cMO1ah0uha1n
         pxdwQfxBPklFfOD4aSdJMZTKBnhtVf0DoJRJKE/eocXzTY1wafbipNvT0ZMz7U9wPrs2
         Ln06IpYi4ueFXAktaEpalUoosIuBjjjo0p6WA/nZm1xbHK3GgqHNe59eSzXMlhUVjD3/
         qUcwKI6m67dIH7W2CpT61a5iHcdeWPZ9py+/BCWreR+9dECB4kpKUpYFv2fCyWjxWwVH
         G+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=W7zBR7tX38v/kFCq8CQA9+H38vFs9mpMBx8wt0Ap7HE=;
        b=THJfi+mjl5wwCJESZBCkEu2E6ElogzcedcH4FBtxDdF5iyxayM/+HfXxWz+e1QkRgK
         2tG3yVo9IHvwEo+HL6O24xYgnJ8+Xa4wNtMBTPobd+ur31kw/+WfwW8D1CDBryOJcb8x
         x5r9H+Px/NmwQtUtM1X4HpFi6LllPakKWSOcGWj44qrpkOnyvwZvLWYfD7f9lcL8lTs1
         TgVb4FkUZdt980ETjbRXdofvmVkLoUjvXS5q07ff499TDJi4lDMdP/FD3fJEDW9X9hoL
         W1+P9r3Shm/THd/mv2vvZroABR5RhL5j4qzeYXcldTPEkskHKrPktEhHpx+q/RXlFJwQ
         qOXQ==
X-Gm-Message-State: AMke39nfIxV+q6YoKmBvlI24rMey1qhdkge6K3L7rsP1uhHHwjU17mB4caqAO8ujLo/63JKDtU3AKpfKzAspDA==
X-Received: by 10.36.131.131 with SMTP id d125mr8741559ite.113.1488909811167;
 Tue, 07 Mar 2017 10:03:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 7 Mar 2017 10:03:00 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703071857450.3150@hadrien>
References: <1488907371-26513-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1703071828130.3150@hadrien> <CAOCi2DGJ-QNpvdoo5M4v320qD7dE3w-ZcvNJ8Xa0P+cYoZEhiA@mail.gmail.com>
 <alpine.DEB.2.20.1703071857450.3150@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 7 Mar 2017 23:33:00 +0530
Message-ID: <CAOCi2DGTRtSnrNgYwZsSu+HTAcyAqx9_uWpnHXqTwS0vVHKoGA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: Replace ternary
 operator with min macro
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 7, 2017 at 11:29 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 7 Mar 2017, Gargi Sharma wrote:
>
>> On Tue, Mar 7, 2017 at 11:01 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Tue, 7 Mar 2017, Gargi Sharma wrote:
>> >
>> >> Use macro min() to get the minimum of two values for
>> >> brevity and readability.
>> >>
>> >> Found using Coccinelle:
>> >> @@ type T; T x; T y; @@
>> >> (
>> >> - x < y ? x : y
>> >> + min(x,y)
>> >> |
>> >> - x > y ? x : y
>> >> + max(x,y)
>> >> )
>> >>
>> >> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> >> ---
>> >>  drivers/staging/gdm724x/gdm_tty.c | 3 +--
>> >>  1 file changed, 1 insertion(+), 2 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
>> >> index ae39663..fc7682c 100644
>> >> --- a/drivers/staging/gdm724x/gdm_tty.c
>> >> +++ b/drivers/staging/gdm724x/gdm_tty.c
>> >> @@ -190,8 +190,7 @@ static int gdm_tty_write(struct tty_struct *tty, const unsigned char *buf,
>> >>               return 0;
>> >>
>> >>       while (1) {
>> >> -             sending_len = remain > MUX_TX_MAX_SIZE ? MUX_TX_MAX_SIZE :
>> >> -                                                      remain;
>> >> +             sending_len = min(MUX_TX_MAX_SIZE, remain);
>> >
>> > Just a warning on this one.  Coccinelle has no idea what the type of
>> > MUX_TX_MAX_SIZE is.  It just sees an identifier with all capital letters
>> > and assumes it's an int.  In this case, it looks ok, because remain is an
>> > int and MUX_TX_MAX_SIZE is small (2048).
>>
>> So, can the script be modified to check bounds on the macros as well?
>> Also, will it be better if I edit the commit log to specify that the maximum
>> value of the MUX_TX_MAX_SIZE is well within the integer range.
>> The min macro uses typeof for strict type-checking, but I'm not sure
>> how it determines the type of a macro like MUX_TX_MAX_SIZE.
>
> At the time it is relevant, the preprocessor has expanded all the macros.
> So it is just taking the type of 2048.
>
> For the script, you would have to match the #define explicitly,eg
>
> type T;
> T e;
>
> #define i e
>
> But in general, you would need to get information about include files, ie
> --recursive-includes.  Then you might want to buy a faster machine :)
>
> It could be simpler to do the check manually.

Okay :). I'll edit the commit message to reflect that the macro has the value
of 2048.

thanks,
gargi
>
> julia
>
>>
>> thanks,
>> gargi
>> >
>> > julia
>> >
>> >>               gdm_tty_send(gdm,
>> >>                            (void *)(buf + sent_len),
>> >>                            sending_len,
>> >> --
>> >> 2.7.4
>> >>
>> >> --


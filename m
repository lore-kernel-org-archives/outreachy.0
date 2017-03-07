X-GM-THRID: 6394809093953945600
X-Received: by 10.99.126.65 with SMTP id o1mr732930pgn.65.1488909610590;
        Tue, 07 Mar 2017 10:00:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls1004767otc.32.gmail; Tue, 07 Mar
 2017 10:00:10 -0800 (PST)
X-Received: by 10.157.48.210 with SMTP id r18mr710259otg.138.1488909609979;
        Tue, 07 Mar 2017 10:00:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 13si3110255iti.0.2017.03.07.10.00.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 10:00:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,258,1486422000"; 
   d="scan'208";a="215923467"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 19:00:07 +0100
Date: Tue, 7 Mar 2017 18:59:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: Replace ternary
 operator with min macro
In-Reply-To: <CAOCi2DGJ-QNpvdoo5M4v320qD7dE3w-ZcvNJ8Xa0P+cYoZEhiA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703071857450.3150@hadrien>
References: <1488907371-26513-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703071828130.3150@hadrien> <CAOCi2DGJ-QNpvdoo5M4v320qD7dE3w-ZcvNJ8Xa0P+cYoZEhiA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Gargi Sharma wrote:

> On Tue, Mar 7, 2017 at 11:01 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Tue, 7 Mar 2017, Gargi Sharma wrote:
> >
> >> Use macro min() to get the minimum of two values for
> >> brevity and readability.
> >>
> >> Found using Coccinelle:
> >> @@ type T; T x; T y; @@
> >> (
> >> - x < y ? x : y
> >> + min(x,y)
> >> |
> >> - x > y ? x : y
> >> + max(x,y)
> >> )
> >>
> >> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> >> ---
> >>  drivers/staging/gdm724x/gdm_tty.c | 3 +--
> >>  1 file changed, 1 insertion(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
> >> index ae39663..fc7682c 100644
> >> --- a/drivers/staging/gdm724x/gdm_tty.c
> >> +++ b/drivers/staging/gdm724x/gdm_tty.c
> >> @@ -190,8 +190,7 @@ static int gdm_tty_write(struct tty_struct *tty, const unsigned char *buf,
> >>               return 0;
> >>
> >>       while (1) {
> >> -             sending_len = remain > MUX_TX_MAX_SIZE ? MUX_TX_MAX_SIZE :
> >> -                                                      remain;
> >> +             sending_len = min(MUX_TX_MAX_SIZE, remain);
> >
> > Just a warning on this one.  Coccinelle has no idea what the type of
> > MUX_TX_MAX_SIZE is.  It just sees an identifier with all capital letters
> > and assumes it's an int.  In this case, it looks ok, because remain is an
> > int and MUX_TX_MAX_SIZE is small (2048).
>
> So, can the script be modified to check bounds on the macros as well?
> Also, will it be better if I edit the commit log to specify that the maximum
> value of the MUX_TX_MAX_SIZE is well within the integer range.
> The min macro uses typeof for strict type-checking, but I'm not sure
> how it determines the type of a macro like MUX_TX_MAX_SIZE.

At the time it is relevant, the preprocessor has expanded all the macros.
So it is just taking the type of 2048.

For the script, you would have to match the #define explicitly,eg

type T;
T e;

#define i e

But in general, you would need to get information about include files, ie
--recursive-includes.  Then you might want to buy a faster machine :)

It could be simpler to do the check manually.

julia

>
> thanks,
> gargi
> >
> > julia
> >
> >>               gdm_tty_send(gdm,
> >>                            (void *)(buf + sent_len),
> >>                            sending_len,
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488907371-26513-1-git-send-email-gs051095%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DGJ-QNpvdoo5M4v320qD7dE3w-ZcvNJ8Xa0P%2BcYoZEhiA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


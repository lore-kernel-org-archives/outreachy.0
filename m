X-GM-THRID: 6950672534035496960
X-Received: by 2002:adf:e8c3:: with SMTP id k3mr14193333wrn.400.1618340242491;
        Tue, 13 Apr 2021 11:57:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6804:: with SMTP id w4ls3910346wru.2.gmail; Tue, 13 Apr
 2021 11:57:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPopYyTt/QCq9R58L719a9/8WAQzv2mYNXMntVGjNv/IudKj45GPLCzQVxyzKPZ895GyHK
X-Received: by 2002:adf:f510:: with SMTP id q16mr134473wro.343.1618340241040;
        Tue, 13 Apr 2021 11:57:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618340241; cv=none;
        d=google.com; s=arc-20160816;
        b=o8U0kmI1YBil2J5vab9uaT3AsuJlo+2mPopNc09YbBhIUgjKRLah9+sEUHtu93oEl6
         xsDSoUxZwXIo3g193lEIu5QpZNANbLNty8H/mhCi+9PsK4UapheP3GDLALd0iqf52qZV
         GV6uXn5x7WN7Q2ReCptB5XcOrnpF5wMU+QbGHpkp6SirwFI/ktmR3j10/BzAbFA5rX5M
         5Q6s2mF6PJ7yVMtIG7j7eWzXlEZ6vnsB/5/DN5wGAZrqP6L9zCCFdYEMK4Xz9U4kwkH6
         1k90bqzX4+bQEItEUzpRZMT9S3+b/5PmGlX71VgLnjNkYufrNqW0SY7Bp8WqbHD5ay9Y
         YiTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=x4oWjsTJVJPc4cmTAFyHTa+rSaJrikCigKONFb8aNB4=;
        b=z54DS9z5zaDQndWQaYhKBFAb9GERQLBOU7VsqoO2SLY62MSN+l40csnDRdUT+XPUeg
         2aZtDFNAsModviYb+MGPJ9A9sS4ae5mj+WKt6gs6oJZ9HoN4Q/dmKM6eX9x39DMqvRcV
         wq17CuJ+PvPGuD17GOUz6fsvCO09+8U/ghoqf6Qxyb7M+iMyDeb9nCbZwXOyKOZpylQK
         LvXjVDT8N09TrbhZ6QI32FxYV3YvrTEThGDIcFVoHuwI8DSRtn9s69dV6ppnGLmQVj0K
         CA5z8APbw/pn3vfAkhyepbSeRi6Ieh1IW8zb4KtEJJY/vsEz3bfV8PEPOm3/+CfMbLpi
         G7yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 187si138797wmb.0.2021.04.13.11.57.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 11:57:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ALLiDiKgOMGhUFS2AKwnY+EjHlnBQXw113DAb?=
 =?us-ascii?q?vn1ZSRFFG/GwvcrGppUm/DXzjyscX2xlpMuJP7OOTWiZ2Zl+54QQOrnKZniDhE?=
 =?us-ascii?q?KDKoZ+4Yz+hwDxAiGWzJ856Y5MUYhbTOfxA19zkNrg7GCDeeoI7dGb/MmT6Nv2?=
 =?us-ascii?q?4GxqSWhRB51IygdiF0KyCUd2RBZLbKBJbqa0w8pcun6BVB0sH7+GL1wERfWGnt?=
 =?us-ascii?q?vQifvdEGM7Ljsm8hTLsTSz9LXhGQOZ1Rt2aUIy/Z4H/XLemwL0ooWP2sva9jb5?=
 =?us-ascii?q?12veq6tbg8HgzNwrPr3vtuEtMTnnhgulY45sMofy2wwdm+2k5FY0nNSkmX5JVP?=
 =?us-ascii?q?hb0H/Je3HwnB2F4Wbd+Qwz4Hzvw0LwuwqBneXFQlsBZfZptMZwbgber3Etpsh7?=
 =?us-ascii?q?17hGm1iEroNNAQnb9R6NmOTgZlVFlleUvXFnquIalXpZOLFuEIN5nMgw/F51DJ?=
 =?us-ascii?q?xFJy7x6JkmHO5yZfusncp+QBe1b235omIq+9CnXm0yEhCaBmAOt9eYySI+pgEG?=
 =?us-ascii?q?82IogOIeg1Yd/9YGR55I6/+sCNUPqI1z?=
X-IronPort-AV: E=Sophos;i="5.82,220,1613430000"; 
   d="scan'208";a="503068718"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 20:57:20 +0200
Date: Tue, 13 Apr 2021 20:57:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Dan Carpenter <dan.carpenter@oracle.com>, 
    outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless
 led_blink_hdl()
In-Reply-To: <4666345.5ezhEZ0rgB@linux.local>
Message-ID: <alpine.DEB.2.22.394.2104132056470.14108@hadrien>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com> <3381109.TaO10cqo9c@linux.local> <20210413182050.GJ6021@kadam> <4666345.5ezhEZ0rgB@linux.local>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:

> On Tuesday, April 13, 2021 8:20:50 PM CEST Dan Carpenter wrote:
> > On Tue, Apr 13, 2021 at 06:47:06PM +0200, Fabio M. De Francesco wrote:
> > > On Tuesday, April 13, 2021 6:27:17 PM CEST Julia Lawall wrote:
> > > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > > On Tuesday, April 13, 2021 6:04:16 PM CEST Julia Lawall wrote:
> > > > > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > > > > Removed the led_blink_hdl() function (declaration, definition,
> > > > > > > and
> > > > > > > caller code) because it's useless. It only seems to check
> > > > > > > whether
> > > > > > > or
> > > > > > > not a given pointer is NULL. There are other (simpler) means
> > > > > > > for
> > > > > > > that
> > > > > > > purpose.
> > > > > > >
> > > > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > > > ---
> > > > > > >
> > > > > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 1 -
> > > > > > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
> > > > > > >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
> > > > > > >  3 files changed, 11 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > > > > > > 0297fbad7bce..4c44dfd21514 100644
> > > > > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > @@ -150,7 +150,6 @@ static struct cmd_hdl wlancmds[] = {
> > > > > > >
> > > > > > >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> > > > > > >  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param),
> > > > > > >  	set_chplan_hdl) /*59*/>
> > > > > > >
> > > > > > > -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param),
> > > > >
> > > > > led_blink_hdl)
> > > > >
> > > > > > > /*60*/
> > > > > >
> > > > > > This is worrisome.  Doyou fully understand the impact of this?
> > > > > > If
> > > > > > not,
> > > > > > the change is probably not a good idea.
> > > > >
> > > > > This is that macro definition:
> > > > >
> > > > > #define GEN_MLME_EXT_HANDLER(size, cmd) {size, cmd},
> > > > >
> > > > > struct C2HEvent_Header {
> > > > >
> > > > > #ifdef __LITTLE_ENDIAN
> > > > >
> > > > >         unsigned int len:16;
> > > > >         unsigned int ID:8;
> > > > >         unsigned int seq:8;
> > > > >
> > > > > #else
> > > > >
> > > > >         unsigned int seq:8;
> > > > >         unsigned int ID:8;
> > > > >         unsigned int len:16;
> > > > >
> > > > > #endif
> > > > >
> > > > >         unsigned int rsvd;
> > > > >
> > > > > };
> > > > >
> > > > > It's a bit convoluted with regard to my experience. Probably I
> > > > > don't
> > > > > understand it fully, but it seems to me to not having effects to
> > > > > the
> > > > > code where I removed its use within core/rtw_cmd.c.
> > > > >
> > > > > What am I missing?
> > > >
> > > > It seems that the function is being put into an array.  Probably
> > > > someone
> > > > expects to find it there.  Probably you have shifted all of the
> > > > functions that come afterwards back one slot so that they are all in
> > > > the wrong places.
> > > >
> > > > julia
> > >
> > > Thanks for your explanation. Obviously this implies that the function
> > > cannot be removed, unless one fill the slot that is deleted by to not
> > > calling this macro at the right moment.
> > >
> > > I also suppose that providing a function pointer with a NULL value
> > > wouldn't work either.
> >
> > It would work.  That array is full of NULL function pointers.
> >
> Interesting, thanks.
>
> I'm going to remove that function and replace its name in the macro with a
> NULL function pointer.
>
> I couldn't believe it would work when I wrote about that.

Have you checked that a value of NULL in that place is going to have the
same effect as the function?

julia


X-GM-THRID: 6950672534035496960
X-Received: by 2002:a2e:7804:: with SMTP id t4mr3274715ljc.99.1618341909050;
        Tue, 13 Apr 2021 12:25:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls4000691lff.3.gmail; Tue, 13
 Apr 2021 12:25:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwUPrnCafdr+s1hVEe1IIQr9YiaMxFrgB2LAga7ihjNBLKqWspErz9g9ro9sNjm7gmWGXU6
X-Received: by 2002:a19:6906:: with SMTP id e6mr16778273lfc.385.1618341907215;
        Tue, 13 Apr 2021 12:25:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618341907; cv=none;
        d=google.com; s=arc-20160816;
        b=R6OHqot3bgdvqeEPAEP1QPcuubMh9ubeDJLdM5+RbE76Lo3VEWzI/I1G0oexi5A5C/
         v3w7tnYn2+Kb+C70SwRoMJzOwWkTdsnYFckWiUZQtK/y6nMFw808alUXu3rWtBbSldR+
         7i0748NMju+DduuWv+IX6OGrPlI/qBarlvFfUKCeVNwUucxD+v+lq/S4FD1xsIwl9B+J
         JHlRmx+nXKxgcahn5Qrf4c+jaBVm8hIQGsgz8tpYvTOqvfrjxCOoKcaoJHVthdl1KDsN
         us0+NVJrcGwpsRQBAQdr29++7hoCWuN3Obk2y0JJQzBB8y99GJd9uUkg+gyxadUeNa2D
         hy8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=TvviThlNH9raWdN0w/alwv8GkJ0PKEYBTmO+MUMyfBA=;
        b=Wjg7TcHA6I5aB6vsl97zsJrY04T5xEEUNMCx3phWeo4GA+0LUp9bQwad+zpoIg4GPP
         wNLt3GGaeG3TeJ4nuFz5zPIw9mOV4MA1XkqIdaycxbDq9OUEPKPZILKpVAYbY+FmAyve
         0hmR6TVqGad7DMdqqaNJjfcahu3EAwQCXoQEIUNeweUqZ4a5JTPHF9MjwmOSRMJ59Sr/
         cmot6fmQj3jy9E3ZxYey8RvlB0J1uJL/0/hyOjjJtOKXdwuklwyH03G4FWa9QMJwRuxc
         Q2Mv+NwlUg7w44pjiCv3pKrGuSYGiBw0GNkxpnVlpn8CysskhIiHc4CgFF69SB/j0HkG
         wJYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q26si648549ljj.4.2021.04.13.12.25.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 12:25:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ap3aApKz3tXQBjwHPZozKKrPwzb1zdoIgy1kn?=
 =?us-ascii?q?xilNYDZSddGVkN3roeQD2XbP+VIscVwphNzoAsK9aFzG85od2+MsFJekGDLroW?=
 =?us-ascii?q?65aLxlhLGC/xTFOwnTstFQzr1hda8WMqyUMXFfgdzh6Ae1V/YMqePmzImSie3T?=
 =?us-ascii?q?z2hgQGhRAsldxjx0BQqBHkp9SBMuP+tbKLOn+sFFqzC8EE54Uu2HABA+M9Trm8?=
 =?us-ascii?q?fGj9bPbxIAGnccmWuzpALt2frBHx+U0gx2aV5y6L0pmFKrrzDE?=
X-IronPort-AV: E=Sophos;i="5.82,220,1613430000"; 
   d="scan'208";a="378574042"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 21:25:06 +0200
Date: Tue, 13 Apr 2021 21:25:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Dan Carpenter <dan.carpenter@oracle.com>, 
    outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless
 led_blink_hdl()
In-Reply-To: <2400087.QbMOWSuNhY@linux.local>
Message-ID: <alpine.DEB.2.22.394.2104132123180.14108@hadrien>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com> <4666345.5ezhEZ0rgB@linux.local> <alpine.DEB.2.22.394.2104132056470.14108@hadrien> <2400087.QbMOWSuNhY@linux.local>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:

> On Tuesday, April 13, 2021 8:57:20 PM CEST Julia Lawall wrote:
> > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > On Tuesday, April 13, 2021 8:20:50 PM CEST Dan Carpenter wrote:
> > > > On Tue, Apr 13, 2021 at 06:47:06PM +0200, Fabio M. De Francesco
> wrote:
> > > > > On Tuesday, April 13, 2021 6:27:17 PM CEST Julia Lawall wrote:
> > > > > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > > > > On Tuesday, April 13, 2021 6:04:16 PM CEST Julia Lawall wrote:
> > > > > > > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > > > > > > Removed the led_blink_hdl() function (declaration,
> > > > > > > > > definition,
> > > > > > > > > and
> > > > > > > > > caller code) because it's useless. It only seems to check
> > > > > > > > > whether
> > > > > > > > > or
> > > > > > > > > not a given pointer is NULL. There are other (simpler)
> > > > > > > > > means
> > > > > > > > > for
> > > > > > > > > that
> > > > > > > > > purpose.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Fabio M. De Francesco
> > > > > > > > > <fmdefrancesco@gmail.com>
> > > > > > > > > ---
> > > > > > > > >
> > > > > > > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 1 -
> > > > > > > > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9
> > > > > > > > >  ---------
> > > > > > > > >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
> > > > > > > > >  3 files changed, 11 deletions(-)
> > > > > > > > >
> > > > > > > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > > > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > > > > > > > > 0297fbad7bce..4c44dfd21514 100644
> > > > > > > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > > > @@ -150,7 +150,6 @@ static struct cmd_hdl wlancmds[] = {
> > > > > > > > >
> > > > > > > > >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> > > > > > > > >  	GEN_MLME_EXT_HANDLER(sizeof(struct
> SetChannelPlan_param),
> > > > > > > > >  	set_chplan_hdl) /*59*/>
> > > > > > > > >
> > > > > > > > > -	GEN_MLME_EXT_HANDLER(sizeof(struct
> LedBlink_param),
> > > > > > >
> > > > > > > led_blink_hdl)
> > > > > > >
> > > > > > > > > /*60*/
> > > > > > > >
> > > > > > > > This is worrisome.  Doyou fully understand the impact of
> > > > > > > > this?
> > > > > > > > If
> > > > > > > > not,
> > > > > > > > the change is probably not a good idea.
> > > > > > >
> > > > > > > This is that macro definition:
> > > > > > >
> > > > > > > #define GEN_MLME_EXT_HANDLER(size, cmd) {size, cmd},
> > > > > > >
> > > > > > > struct C2HEvent_Header {
> > > > > > >
> > > > > > > #ifdef __LITTLE_ENDIAN
> > > > > > >
> > > > > > >         unsigned int len:16;
> > > > > > >         unsigned int ID:8;
> > > > > > >         unsigned int seq:8;
> > > > > > >
> > > > > > > #else
> > > > > > >
> > > > > > >         unsigned int seq:8;
> > > > > > >         unsigned int ID:8;
> > > > > > >         unsigned int len:16;
> > > > > > >
> > > > > > > #endif
> > > > > > >
> > > > > > >         unsigned int rsvd;
> > > > > > >
> > > > > > > };
> > > > > > >
> > > > > > > It's a bit convoluted with regard to my experience. Probably I
> > > > > > > don't
> > > > > > > understand it fully, but it seems to me to not having effects
> > > > > > > to
> > > > > > > the
> > > > > > > code where I removed its use within core/rtw_cmd.c.
> > > > > > >
> > > > > > > What am I missing?
> > > > > >
> > > > > > It seems that the function is being put into an array.  Probably
> > > > > > someone
> > > > > > expects to find it there.  Probably you have shifted all of the
> > > > > > functions that come afterwards back one slot so that they are all
> > > > > > in
> > > > > > the wrong places.
> > > > > >
> > > > > > julia
> > > > >
> > > > > Thanks for your explanation. Obviously this implies that the
> > > > > function
> > > > > cannot be removed, unless one fill the slot that is deleted by to
> > > > > not
> > > > > calling this macro at the right moment.
> > > > >
> > > > > I also suppose that providing a function pointer with a NULL value
> > > > > wouldn't work either.
> > > >
> > > > It would work.  That array is full of NULL function pointers.
> > >
> > > Interesting, thanks.
> > >
> > > I'm going to remove that function and replace its name in the macro
> > > with a NULL function pointer.
> > >
> > > I couldn't believe it would work when I wrote about that.
> >
> > Have you checked that a value of NULL in that place is going to have the
> > same effect as the function?
> >
> No, I have not, but perhaps is not relevant.
>
> I want to give to the macro the name of an empty function that I define in
> the same header where there the prototype of led_blink_hdl() is defined
> now: something like "u8 empty_function { return 0; }"
>
> Can it work
> What do you think about it?

The previous function didn't return 0.  It returned something else.

To do anything this, you have to find where it is called and what result
the call site expects.  If you don't have that information, it does not
seem safe to modify the function.

julia


>
> Fabio
> >
> > julia
>
>
>
>
>


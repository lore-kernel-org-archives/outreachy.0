X-GM-THRID: 3247770173440
X-Received: by 10.180.72.44 with SMTP id a12mr2353774wiv.0.1424806149526;
        Tue, 24 Feb 2015 11:29:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.40 with SMTP id q8ls724969lag.29.gmail; Tue, 24 Feb
 2015 11:29:08 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr2390964lab.0.1424806148057;
        Tue, 24 Feb 2015 11:29:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si963953wib.3.2015.02.24.11.29.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 11:29:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,640,1418079600"; 
   d="scan'208";a="123231114"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2015 20:29:07 +0100
Date: Tue, 24 Feb 2015 20:29:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-2?Q?Ksenija_Stanojevi=E6?= <ksenija.stanojevic@gmail.com>
cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] Staging: rtl8192u: Remove TRUE
 and FALSE macros
In-Reply-To: <CAL7P5jJsPdvWTmWrBQucp8w9wJaCUGX_rEQVE37AypWEuGzB0A@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1502242028410.2049@localhost6.localdomain6>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com> <f286a0fed29701378cab40c60e1b2d72d5dae827.1424798953.git.ksenija.stanojevic@gmail.com> <23670050.lCeLkYodT8@wuerfel> <CAL7P5jJsPdvWTmWrBQucp8w9wJaCUGX_rEQVE37AypWEuGzB0A@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1928936672-1424806147=:2049"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1928936672-1424806147=:2049
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 24 Feb 2015, Ksenija Stanojević wrote:

> On Tue, Feb 24, 2015 at 8:03 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Tuesday 24 February 2015 18:30:30 Ksenija Stanojevic wrote:
> > > Remove TRUE and FALSE boolean macros, since Linux kernel has already a
> > > boolean type, bool, defined in linux/stddef.h
> > >
> > > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192u/r8192U.h | 2 --
> > >  1 file changed, 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
> > > index c9d8c10..6c2e438 100644
> > > --- a/drivers/staging/rtl8192u/r8192U.h
> > > +++ b/drivers/staging/rtl8192u/r8192U.h
> > > @@ -40,8 +40,6 @@
> > >  #define RTL8192U
> > >  #define RTL819xU_MODULE_NAME "rtl819xU"
> > >  /* HW security */
> > > -#define FALSE 0
> > > -#define TRUE 1
> > >  #define MAX_KEY_LEN     61
> > >  #define KEY_BUF_SIZE    5
> >
> > The patches in this series all look good to me, but the order is wrong:
> > You should first change all users of the macro and remove it in the final
> > patch. Alternatively you could submit a single larger patch to do it
> > all at once. There is not really a reason to split it up by file if
> > all the changes are for the same driver and are completely trivial.
> >
> >         Arnd
> 
> Ok,  but should I also change TRUE and FALSE to true and false in
>  commented code?

Is there a lot of it?  One could consider whether it should just be 
removed.

julia
--8323328-1928936672-1424806147=:2049--


X-GM-THRID: 6344288501760
X-Received: by 10.112.98.38 with SMTP id ef6mr210011lbb.3.1425493381327;
        Wed, 04 Mar 2015 10:23:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.7.229 with SMTP id m5ls163966wia.14.canary; Wed, 04 Mar
 2015 10:23:00 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr4076366wib.5.1425493380983;
        Wed, 04 Mar 2015 10:23:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si382041wib.2.2015.03.04.10.23.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 10:23:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,688,1418079600"; 
   d="scan'208";a="102124323"
Received: from unknown (HELO [132.207.219.129]) ([132.207.219.129])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Mar 2015 19:22:59 +0100
Date: Wed, 4 Mar 2015 13:22:57 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-2?Q?Ksenija_Stanojevi=E6?= <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Cannot locate pMgntInfo
In-Reply-To: <CAL7P5jJrN4vzScSmWwQcFWaSc5Dr3zknq38g_O38MXLy477bMQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1503041322220.2868@hadrien>
References: <CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ=2yK07o+84z_=c64Qas9jQ@mail.gmail.com> <alpine.DEB.2.10.1503031645080.2677@hadrien> <CAL7P5jL6Jsp3_UE8-5vJ0feqkRoMP=7Ba0k7P8y8_Bt9Eb5sTQ@mail.gmail.com> <alpine.DEB.2.10.1503031659270.2677@hadrien>
 <CAL7P5jJ7sgfxVNC2_aS-ak8_dOU2Q8ih_Hok1DqT0ko5E-hAQA@mail.gmail.com> <alpine.DEB.2.10.1503031703010.2677@hadrien> <CAL7P5jJrN4vzScSmWwQcFWaSc5Dr3zknq38g_O38MXLy477bMQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1284574751-1425493379=:2868"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1284574751-1425493379=:2868
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 4 Mar 2015, Ksenija Stanojević wrote:

> On Tue, Mar 3, 2015 at 11:03 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Tue, 3 Mar 2015, Ksenija Stanojević wrote:
> >
> >> On Tue, Mar 3, 2015 at 10:59 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> >
> >> >
> >> > On Tue, 3 Mar 2015, Ksenija Stanojević wrote:
> >> >
> >> >> On Tue, Mar 3, 2015 at 10:50 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> >> > On Tue, 3 Mar 2015, Ksenija Stanojević wrote:
> >> >> >
> >> >> >> Hi,
> >> >> >>
> >> >> >> While working on a patch, I needed to find out the type of
> >> >> >> pMgntInfo->RegRfOff on line 2770, in file
> >> >> >> drivers/staging/rtl8192u/r8192U_core.c. But I cannot find where
> >> >> >> pMgntInfo is defined, I saw that is used in  rtl8192u and rtl8192eu
> >> >> >> directories. I tried recursive grep to find it and I could not locate
> >> >> >> where it is defined. I suppose it's some kind of macro...
> >> >> >
> >> >> > The structure r8192_priv defined in rtl8192e/rtl8192e/rtl_core.h has a
> >> >> > field named RegRfOff.  It has type bool.  The directory is different than
> >> >> > the one you are looking at though.
> >> >> >
> >> >> > In your directory, there is drivers/staging/rtl8192u/r8192U.h that
> >> >> > declares a r8192_priv structure type, but it does not have this field.
> >> >> >
> >> >> > Maybe this is dead code?  Can you compile the file?
> >> >>
> >> >> Yes I can compile it, and I do: make
> >> >> drivers/staging/rtl8192u/r8192U_core.o. Also I found
> >> >> commented code : drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c in file
> >> >> drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c (for example in line 214)
> >> >>
> >> >> I find it quite strange.
> >> >
> >> > Is there an ifdef around the code?
> >>
> >> Yes, there is #ifdef TO_DO_LIST
> >
> > OK, this seems very unlikely to be set to true by your configuration.
> > Perhaps check the TODO list for the driver to see if there is
> > some information.
>
> Hi, it seems that there is no TO DO LIst for this driver, I only found
> one comment:
>
> //// TODO: this function doesn't work well at this time, we should wait for FPGA
>
> so maybe its all dead code?

No idea.  In any case, I wouldn't spend time on improving the uncompiled
parts...

julia
--8323329-1284574751-1425493379=:2868--


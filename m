X-GM-THRID: 6344288501760
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4ca3f90fe855d892
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr3322493wib.5.1425420002000;
        Tue, 03 Mar 2015 14:00:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.166 with SMTP id t6ls98151lat.83.gmail; Tue, 03 Mar 2015
 14:00:01 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr151039lbc.3.1425420001646;
        Tue, 03 Mar 2015 14:00:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v5si483614wif.3.2015.03.03.14.00.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 14:00:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,684,1418079600"; 
   d="scan'208";a="102002800"
Received: from unknown (HELO [132.207.219.164]) ([132.207.219.164])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2015 23:00:00 +0100
Date: Tue, 3 Mar 2015 16:59:59 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-2?Q?Ksenija_Stanojevi=E6?= <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Cannot locate pMgntInfo
In-Reply-To: <CAL7P5jL6Jsp3_UE8-5vJ0feqkRoMP=7Ba0k7P8y8_Bt9Eb5sTQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1503031659270.2677@hadrien>
References: <CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ=2yK07o+84z_=c64Qas9jQ@mail.gmail.com> <alpine.DEB.2.10.1503031645080.2677@hadrien> <CAL7P5jL6Jsp3_UE8-5vJ0feqkRoMP=7Ba0k7P8y8_Bt9Eb5sTQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-124444767-1425420000=:2677"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-124444767-1425420000=:2677
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 3 Mar 2015, Ksenija Stanojević wrote:

> On Tue, Mar 3, 2015 at 10:50 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Tue, 3 Mar 2015, Ksenija Stanojević wrote:
> >
> >> Hi,
> >>
> >> While working on a patch, I needed to find out the type of
> >> pMgntInfo->RegRfOff on line 2770, in file
> >> drivers/staging/rtl8192u/r8192U_core.c. But I cannot find where
> >> pMgntInfo is defined, I saw that is used in  rtl8192u and rtl8192eu
> >> directories. I tried recursive grep to find it and I could not locate
> >> where it is defined. I suppose it's some kind of macro...
> >
> > The structure r8192_priv defined in rtl8192e/rtl8192e/rtl_core.h has a
> > field named RegRfOff.  It has type bool.  The directory is different than
> > the one you are looking at though.
> >
> > In your directory, there is drivers/staging/rtl8192u/r8192U.h that
> > declares a r8192_priv structure type, but it does not have this field.
> >
> > Maybe this is dead code?  Can you compile the file?
>
> Yes I can compile it, and I do: make
> drivers/staging/rtl8192u/r8192U_core.o. Also I found
> commented code : drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c in file
> drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c (for example in line 214)
>
> I find it quite strange.

Is there an ifdef around the code?

You can say make foo.i and see the result of macro expansion.

julia
--8323329-124444767-1425420000=:2677--


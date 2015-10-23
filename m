X-GM-THRID: 6208527977579282432
X-Received: by 10.141.23.137 with SMTP id z131mr15972043qhd.7.1445603127764;
        Fri, 23 Oct 2015 05:25:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.109.195 with SMTP id hu3ls837761obb.33.gmail; Fri, 23 Oct
 2015 05:25:27 -0700 (PDT)
X-Received: by 10.182.106.195 with SMTP id gw3mr17016749obb.45.1445603127454;
        Fri, 23 Oct 2015 05:25:27 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id sm2si887773pab.0.2015.10.23.05.25.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 05:25:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,186,1444687200"; 
   d="scan'208";a="184182226"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Oct 2015 14:25:24 +0200
Date: Fri, 23 Oct 2015 14:25:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: =?ISO-8859-2?Q?Ksenija_Stanojevi=E6?= <ksenija.stanojevic@gmail.com>, 
    Arnd Bergmann <arnd@arndb.de>, y2038@lists.linaro.org, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] misc: ibmasm: Replace
 timeval with timespec64
In-Reply-To: <CA+5yK5E-ZP4txCn8WSYemwgO6aB4YRDE7s+aGqmJMboCLUxHOA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510231424110.2437@hadrien>
References: <20151022173920.GA32329@amitoj-Inspiron-3542> <8980519.8CTrMHEHrD@wuerfel> <CA+5yK5HER69sFe9PuCisL-GNdOcKk686WDy956U8hzasO=1ZqQ@mail.gmail.com> <CAL7P5jK37Y7F81P23OsBE6cckNSBWBiDVxmMc5kUhv+43sS7xw@mail.gmail.com>
 <CA+5yK5E-ZP4txCn8WSYemwgO6aB4YRDE7s+aGqmJMboCLUxHOA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 23 Oct 2015, Amitoj Kaur Chawla wrote:

> >> Okay! Next patches will be the simple tasks. Also, I couldn't find the
> >> tutorial you mentioned for compiling, can you help me out some there?
> >
> > I think the tutorial mentioned is kernel newbies First patch tutorial and under
> > section Make a driver change:
> > http://kernelnewbies.org/Outreachyfirstpatch#head-816e6eef0008340eab7d542c3f6923a1f896478d
> > there is instruction how to compile your changes:
> >
> > Compile your changes:
> >
> > Recompile your kernel, by running make (with an optional -jN flag):
> > make -j2
>
> Hi Ksenija,
>
> Thanks for the help. I'm already doing this, I was under the
> impression that Arnd was mentioning something other than this. I could
> be wrong.

Are you sure that you have a .o file for the code you are working on?  And
if you do, are you compiling the whole kernel?  Maybe the problem is
related to linking?

julia


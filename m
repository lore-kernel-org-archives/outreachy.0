X-GM-THRID: 6249137798348013568
X-Received: by 10.112.169.5 with SMTP id aa5mr4071779lbc.12.1455033362062;
        Tue, 09 Feb 2016 07:56:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.79.72 with SMTP id d69ls31492lfb.81.gmail; Tue, 09 Feb 2016
 07:56:01 -0800 (PST)
X-Received: by 10.112.125.99 with SMTP id mp3mr4087153lbb.3.1455033361581;
        Tue, 09 Feb 2016 07:56:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si416509wme.2.2016.02.09.07.56.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:56:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,421,1449529200"; 
   d="scan'208";a="164062345"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 16:56:01 +0100
Date: Tue, 9 Feb 2016 16:55:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Doubt regarding build warnings
In-Reply-To: <2414518.udrIPO2x22@wuerfel>
Message-ID: <alpine.DEB.2.10.1602091655340.2578@hadrien>
References: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com> <2431688.NvBMsGsSsv@wuerfel> <alpine.DEB.2.10.1602091649200.2578@hadrien> <2414518.udrIPO2x22@wuerfel>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Feb 2016, Arnd Bergmann wrote:

> On Tuesday 09 February 2016 16:49:31 Julia Lawall wrote:
> > On Tue, 9 Feb 2016, Arnd Bergmann wrote:
> >
> > > On Tuesday 09 February 2016 16:18:55 Julia Lawall wrote:
> > > >     make M=drivers/staging: This seems to try to link the modules in a
> > > > previously build vmlinux file.
> > > >
> > > > Make path/ could be a reasonable choice for a localized change within a
> > > > single driver, or for a change localized to drivers staging. In any case,
> > > > as a minimum always check that compilation produces a .o file for every
> > > > file that your patch changes. If there is no .o file, you have not
> > > > compiled the file, and you need to look for other compiler options.
> > >
> > > Ok, sounds good. I've added a little bit more detail now:
> > >
> > > http://kernelnewbies.org/FirstKernelPatch?action=diff&rev2=25&rev1=24
> >
> > Thanks.  What is -sj2?
> >
> >
>
> -s is 'silent', -j2 is used to build on two threads in parallel rather than
> one. On second thought, I'll remove those again, as this prevents you
> from seeing which files get built.

-j2 could be left, but one could also infer it from the rest.

thanks,
julia


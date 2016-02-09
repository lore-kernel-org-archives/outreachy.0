X-GM-THRID: 6249137798348013568
X-Received: by 10.112.157.166 with SMTP id wn6mr4039299lbb.6.1455031152568;
        Tue, 09 Feb 2016 07:19:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.163.136 with SMTP id m130ls50085lfe.73.gmail; Tue, 09 Feb
 2016 07:19:12 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr4153340lbb.2.1455031152089;
        Tue, 09 Feb 2016 07:19:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s132si598917wmd.1.2016.02.09.07.19.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:19:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,421,1449529200"; 
   d="scan'208";a="164055883"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 16:18:56 +0100
Date: Tue, 9 Feb 2016 16:18:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Doubt regarding build warnings
In-Reply-To: <2688292.r6RqQzfV0D@wuerfel>
Message-ID: <alpine.DEB.2.10.1602091618300.2578@hadrien>
References: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com> <5477208.ntDhW1kj3a@wuerfel> <alpine.DEB.2.10.1602091209240.2578@hadrien> <2688292.r6RqQzfV0D@wuerfel>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Feb 2016, Arnd Bergmann wrote:

> On Tuesday 09 February 2016 12:09:38 Julia Lawall wrote:
> > On Tue, 9 Feb 2016, Arnd Bergmann wrote:
> > >
> > > The differences are very subtle:
> > >
> > > make drivers/staging
> > >
> > >    always succeeds, does nothing at all because the directory exists
> > >
> > > make drivers/staging/
> > >
> > >    descends into that directory to build all the files in it, but does
> > >    not try to link the modules
> > >
> > > make M=drivers/staging
> > >
> > >    From the output you get, I think this must try to link the modules
> > >    against the previously-build vmlinux file, which for some reason
> > >    fails here. I suggested doing 'make' to rebuild everything including
> > >    vmlinux, so it is up-to-date with your current configuration.
> >
> > Could I add this to the wiki?
> >
>
> Sure.

I put the following:

Compiling only part of the kernel

There are several ways to compile only part of the kernel:

    make path/file.o: This compiles only a single file. It may not be
sufficient to check changes that affect interactions with other files.

    make path, e.g. make drivers/staging: This always succeeds. It does
nothing at all because the directory exists.

    make path/, e.g. make drivers/staging/: This descends into that
directory to build all the files in it, but does not try to link the
modules.

    make M=drivers/staging: This seems to try to link the modules in a
previously build vmlinux file.

Make path/ could be a reasonable choice for a localized change within a
single driver, or for a change localized to drivers staging. In any case,
as a minimum always check that compilation produces a .o file for every
file that your patch changes. If there is no .o file, you have not
compiled the file, and you need to look for other compiler options.

julia


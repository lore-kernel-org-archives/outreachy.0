X-GM-THRID: 6331202607933030400
X-Received: by 10.46.32.80 with SMTP id g77mr2667836ljg.9.1474121324496;
        Sat, 17 Sep 2016 07:08:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.138.8 with SMTP id m8ls282618wmd.6.canary; Sat, 17 Sep 2016
 07:08:43 -0700 (PDT)
X-Received: by 10.28.4.200 with SMTP id 191mr106392wme.21.1474121323887;
        Sat, 17 Sep 2016 07:08:43 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si919327wmg.3.2016.09.17.07.08.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 07:08:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,351,1470693600"; 
   d="scan'208";a="193764584"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 16:08:34 +0200
Date: Sat, 17 Sep 2016 16:08:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010: Remove extern keyword
 from function declaration
In-Reply-To: <CAOH+1jGGuaAqXHoNMK4gJbhA+i638S+Oe1Wnjrdp8gro8hS1NA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609171608010.3454@hadrien>
References: <1474097953-4884-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1609171039200.3113@hadrien> <CAOH+1jFz5PxmVvkPh_QrdgrDnMW5Z_Yp9Wd-t7aNT0z1GE_rNg@mail.gmail.com> <alpine.DEB.2.10.1609171458370.3454@hadrien>
 <CAOH+1jGGuaAqXHoNMK4gJbhA+i638S+Oe1Wnjrdp8gro8hS1NA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 17 Sep 2016, Bhumika Goyal wrote:

> On Sat, Sep 17, 2016 at 6:30 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sat, 17 Sep 2016, Bhumika Goyal wrote:
> >
> >> On Sat, Sep 17, 2016 at 2:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> > On Sat, 17 Sep 2016, Bhumika Goyal wrote:
> >> >
> >> >> Remove extern specifier from function declaration as they have
> >> >> it by default. Also move extern declaration from .c files to
> >> >> their respective header file 'ks_hostif.h'. Coccinelle was used
> >> >
> >> > Did you check that the ones in the .c files actually have to be extern?
> >> >
> >>
> >> The extern declaration from file ks_wlan_net.c can be dropped as the
> >> function was anyway not getting used in that file.
> >> For file ks_hostif.c the extern declarations are dropped and moved to
> >> file ks_hostif.h  as the file ks_hostif.h is shared amongst all the
> >> files where the those extern functions are defined or used. Am I right
> >> in making the change?
> >
> > I don't actually know what is the standard procedure.  Could one expect
> > that the prototype for a function defined in a file foo.c would be in
> > foo.h?  But some of your .c files have .h files that are only included in
> > the .c file of the same name, so that might not be convenient.  It woudl
> > be good to see what other drivers do.
> >
>
> I saw some cases in lustre where the function declaration was in
> socklnd.h file, definition was in a different file socklnd_lib.c and
> usage in another file socklnd_cb.c. So, three files for three
> purposes. But both the .c files had the .h file included. Something
> like this happens here also so I guess the change won't be a problem?

OK.

julia


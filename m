X-GM-THRID: 80310435840
X-Received: by 10.112.45.197 with SMTP id p5mr4143959lbm.18.1424240384018;
        Tue, 17 Feb 2015 22:19:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.44.232 with SMTP id h8ls747329lam.30.gmail; Tue, 17 Feb
 2015 22:19:42 -0800 (PST)
X-Received: by 10.112.64.171 with SMTP id p11mr3991792lbs.12.1424240382691;
        Tue, 17 Feb 2015 22:19:42 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ev8si6093794wib.3.2015.02.17.22.19.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 22:19:42 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,595,1418079600"; 
   d="scan'208";a="122222855"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 07:19:41 +0100
Date: Wed, 18 Feb 2015 07:19:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: lirc: Use
 setup_timer
In-Reply-To: <CAK-LDb+DNVi2+xeJnnjs8kS7ghWTi0w6w7mfxvR6+2EY9=Qt7A@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1502180716460.2066@localhost6.localdomain6>
References: <20150217045149.GA3532@vaishali-Ideapad-Z570> <3457005.LTXKFus5ps@wuerfel> <alpine.DEB.2.10.1502171001270.3396@hadrien> <3628018.XUKI9KUs7d@wuerfel> <CAK-LDb+DNVi2+xeJnnjs8kS7ghWTi0w6w7mfxvR6+2EY9=Qt7A@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 18 Feb 2015, Vaishali Thakkar wrote:

> On Tue, Feb 17, 2015 at 3:20 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Tuesday 17 February 2015 10:02:53 Julia Lawall wrote:
> >> On Tue, 17 Feb 2015, Arnd Bergmann wrote:
> >>
> >> > On Tuesday 17 February 2015 10:21:49 Vaishali Thakkar wrote:
> >> > > This patch introduces the use of function setup_timer.
> >> > >
> >> > > This is done using Coccinelle and semantic patch used is
> >> > > as follows:
> >> > >
> >> > > @@
> >> > > expression x,y,z;
> >> > > @@
> >> > >
> >> > > - init_timer (&x);
> >> > > + setup_timer (&x, y, z);
> >> > > - x.function = y;
> >> > > - x.data = z;
> >> > >
> >> > > Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> >> >
> >> > The patch looks great to me, but try to be more explicit about
> >> > why this change is done in the description. Rather than just
> >> > repeating the subject in the patch description here, explain
> >> > why this is useful. In particular, is the only benefit to shorten
> >> > the function by two lines and make it more readable, or is there
> >> > also a functional change where the new code avoid a potential
> >> > problem?
> >>
> >> Another question is that the data value is 0xabadcafe.  This looks at
> >> least sort of like a nonsense value, and indeed the timer handler function
> >> doesn't use it.  Would 0 be a better choice?
> >>
> >
> > I guess ideally we'd use the data to pass a pointer to a per-device
> > structure and remove the global variables such as 'io', 'irq',
> > 'hardware_lock', etc. At this point it is of course no longer a
> > trivial task to change.
> 
> Oh. Then what can be done with this case?? I thought may be using NULL or 0
> could be good choice.

With respect to Arnd's suggestion, you can look and see if the variables 
he mentions are also available in some available data structure.  Often a 
driver has a private structure that contains this sort of generally useful 
information.  If that is the case, then you could pass the private 
structure to start_timer.

Otherwise, 0 would be a better choice than NULL, because actually the type 
is unsigned long, not pointer.

julia


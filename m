X-GM-THRID: 3321174687744
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bcdbd9470f1685b9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.72.44 with SMTP id a12mr242503wiv.0.1424846439355;
        Tue, 24 Feb 2015 22:40:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.169 with SMTP id x9ls343571lal.108.gmail; Tue, 24 Feb
 2015 22:40:38 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr202691lae.7.1424846438897;
        Tue, 24 Feb 2015 22:40:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si1065045wif.0.2015.02.24.22.40.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 22:40:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,643,1418079600"; 
   d="scan'208";a="123272300"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2015 07:40:38 +0100
Date: Wed, 25 Feb 2015 07:40:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>, 
    Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Simplify if
 condition.
In-Reply-To: <6220123.OEaHGpHvmv@wuerfel>
Message-ID: <alpine.DEB.2.02.1502250735010.2063@localhost6.localdomain6>
References: <1424811248-8150-1-git-send-email-ksenija.stanojevic@gmail.com> <alpine.DEB.2.02.1502242219480.2081@localhost6.localdomain6> <6220123.OEaHGpHvmv@wuerfel>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 24 Feb 2015, Arnd Bergmann wrote:

> On Tuesday 24 February 2015 22:24:23 Julia Lawall wrote:
> > On Tue, 24 Feb 2015, Ksenija Stanojevic wrote:
> > 
> > > Remove unnecessary TRUE statement. Fields bDynamicTxLowPower and
> > > bDynamicTxHighPower are of bool type so such change is correct.
> > 
> > I'm not sure that the compiler actually enforces that a bool variable is 
> > only ever assigned to 0 or 1.  The kernel contains the following in 
> > types.h:
> > 
> > typedef _Bool                   bool;
> > 
> > The following (non-kernel) C program compiles with gcc with no errors:
> > 
> > _Bool x;
> > 
> > int main () {
> >   x = 12;
> > }
> > 
> > To be on the safe side, you should look at each place where the field is 
> > initialized and check that the value is true or false.  If that is what 
> > you have already done, then you should expand on the commit message to 
> > make that more apparent.
> 
> Actually C enforces this:
> 
> _Bool x;
> int main()
> { 
>         x = 12;
>  
>         if (x == 1)
>                 return 1;
>         else
>                 return 2;
> }
> 
> The compiler ensures that this program returns 1, not 2.

Ksenija, in this case you can do it easily with Coccinelle.  One rule 
would be:

@@
bool x;
@@

- x == true
+ x

There are three other cases to consider.

Of course, you could also try sed, but then you wouldn't have the 
verification of the bool type. 

julia


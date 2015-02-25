X-GM-THRID: 3321174687744
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bcdbd9470f1685b9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.239.41 with SMTP id vp9mr202569wjc.5.1424846100926;
        Tue, 24 Feb 2015 22:35:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.228 with SMTP id cx4ls935991wib.29.gmail; Tue, 24 Feb
 2015 22:34:58 -0800 (PST)
X-Received: by 10.180.160.176 with SMTP id xl16mr1734298wib.6.1424846098926;
        Tue, 24 Feb 2015 22:34:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si1063256wib.2.2015.02.24.22.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 22:34:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,643,1418079600"; 
   d="scan'208";a="101226985"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2015 07:34:58 +0100
Date: Wed, 25 Feb 2015 07:34:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, 
    Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
    quentin.lambert@inria.fr
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Simplify if
 condition.
In-Reply-To: <6220123.OEaHGpHvmv@wuerfel>
Message-ID: <alpine.DEB.2.02.1502250733460.2063@localhost6.localdomain6>
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

Amazing.  Thanks.

julia


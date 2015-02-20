X-GM-THRID: 739037413376
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fb3c1311c9c4e49b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.12.146 with SMTP id y18mr13448wib.6.1424461016313;
        Fri, 20 Feb 2015 11:36:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.232 with SMTP id uh8ls317746lac.82.gmail; Fri, 20 Feb
 2015 11:36:55 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr1478991lbb.24.1424461015898;
        Fri, 20 Feb 2015 11:36:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si179573wix.0.2015.02.20.11.36.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 11:36:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,616,1418079600"; 
   d="scan'208";a="100796460"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 20:36:55 +0100
Date: Fri, 20 Feb 2015 20:36:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3] Convert simple_strtoul to
 kstrtoul
In-Reply-To: <1eb1b722-94c1-4c0d-a7b3-81a5f66d1efc@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1502202036090.2054@localhost6.localdomain6>
References: <1424369465-12930-1-git-send-email-navyasri.tech@gmail.com> <c4bae1a8-b908-47ae-b7e5-e293248a7691@googlegroups.com> <alpine.DEB.2.10.1502201837441.2375@hadrien> <1eb1b722-94c1-4c0d-a7b3-81a5f66d1efc@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-334203512-1424461015=:2054"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-334203512-1424461015=:2054
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 20 Feb 2015, Navya Sri Nizamkari wrote:

> 
> 
> On Friday, February 20, 2015 at 11:07:58 PM UTC+5:30, Julia Lawall wrote:
>       On Fri, 20 Feb 2015, Navya Sri Nizamkari wrote:
> 
>       > Hi,
>       >   Is this patch alright? Now, there are now additional
>       warnings introduced
>       > by  the change I made.
> 
>       What warnings?
> 
>       julia
> 
> 
>       > -                        r = simple_strtoul(parport[n], &ep,
>       0);
>       > -                        if (ep == parport[n]) {
>       > +                        if (kstrtoul(parport[n],0,&r)) {
> 
> In the first patch I sent, there was no space after the ',' in kstrtoul. I
> was talking about the new warnings this created.So, I sent a another one.

OK.  Patches should not generate new checkpatch warnings.

julia
--8323328-334203512-1424461015=:2054--


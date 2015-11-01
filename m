X-GM-THRID: 6212095586717401088
X-Received: by 10.112.142.37 with SMTP id rt5mr952053lbb.1.1446369240353;
        Sun, 01 Nov 2015 01:14:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.173.10 with SMTP id w10ls396262wme.17.gmail; Sun, 01 Nov
 2015 01:13:59 -0800 (PST)
X-Received: by 10.28.11.65 with SMTP id 62mr1235141wml.6.1446369239969;
        Sun, 01 Nov 2015 01:13:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id g9si338471wmd.2.2015.11.01.01.13.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:13:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,228,1444687200"; 
   d="scan'208";a="185426665"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Nov 2015 10:13:59 +0100
Date: Sun, 1 Nov 2015 10:13:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: rdma: hfi1: chip: Remove
 wrapper function
In-Reply-To: <CA+5yK5EbsHmB7FOkZ8WsHXOrRQDOYqCeMUQMrL+2_Wd7K--0sw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1511011011570.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com> <23ac38a01d5092053da227aaa0741b270125ceeb.1446366036.git.amitoj1606@gmail.com> <alpine.DEB.2.02.1511010938560.2070@localhost6.localdomain6> <CA+5yK5E2vnAQfvv0F_TyyyNf6ALtz-MVQnCmQ8Nazn7gL30q3g@mail.gmail.com>
 <alpine.DEB.2.02.1511011007130.2070@localhost6.localdomain6> <CA+5yK5EbsHmB7FOkZ8WsHXOrRQDOYqCeMUQMrL+2_Wd7K--0sw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:

> On Sun, Nov 1, 2015 at 2:38 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
> >
> >> On Sun, Nov 1, 2015 at 2:11 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> > On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
> >> >
> >> >> Drop wrapper function remap_receive_available_interrupt() that can be
> >> >> replaced by a single line of code.
> >> >>
> >> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> >> >> ---
> >> >>  drivers/staging/rdma/hfi1/chip.c | 8 +-------
> >> >>  1 file changed, 1 insertion(+), 7 deletions(-)
> >> >>
> >> >> diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
> >> >> index beac326d..a9c6abf 100644
> >> >> --- a/drivers/staging/rdma/hfi1/chip.c
> >> >> +++ b/drivers/staging/rdma/hfi1/chip.c
> >> >> @@ -8749,12 +8749,6 @@ static void remap_sdma_interrupts(struct hfi1_devdata *dd,
> >> >>               msix_intr);
> >> >>  }
> >> >>
> >> >> -static void remap_receive_available_interrupt(struct hfi1_devdata *dd,
> >> >> -                                           int rx, int msix_intr)
> >> >> -{
> >> >> -     remap_intr(dd, IS_RCVAVAIL_START + rx, msix_intr);
> >> >> -}
> >> >
> >> > remap_intr is not a standard kernel function.  But perhaps one could argue
> >> > that the constant name gives the same information as the function name, so
> >> > the function is not needed.
> >> >
> >> > But this function is the neighbor of another very similar function that
> >> > remaps three interrupts at once.  The two functions are also used in a
> >> > very parallel way, at the end of successive if branches.  It seems strange
> >> > to inline one function and not the other.
> >> >
> >> > julia
> >>
> >> In this case, the function names are very similar and the wrapper just
> >> add the macro IS_RCVAVAIL_START to the second argument, so the change
> >> made sense to me.
> >
> > Personally, I would find the lack of parallelism confusing.
> > But one could have an opinion either way on this one.
> >
> > julia
> >
> 
> So I should leave this as is or drop it? Confused.

Up to you in this case.  I can see both points of view.  In one point of 
view, it is nice to have parallel function names.  In another point of 
view, in the case with three operations, a helper function is being 
introduced for a complicated case.  This case is different than set/clear 
because the two functions are not eg opposites of each other.  There are 
just four registers, three that fit together and one that is different.

julia


X-GM-THRID: 6212095586717401088
X-Received: by 10.28.138.83 with SMTP id m80mr1226239wmd.7.1446369099228;
        Sun, 01 Nov 2015 01:11:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.138 with SMTP id e132ls355205lfg.109.gmail; Sun, 01 Nov
 2015 01:11:38 -0800 (PST)
X-Received: by 10.112.202.168 with SMTP id kj8mr385854lbc.23.1446369098673;
        Sun, 01 Nov 2015 01:11:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t72si332469wme.0.2015.11.01.01.11.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:11:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,228,1444687200"; 
   d="scan'208";a="185426488"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Nov 2015 10:11:38 +0100
Date: Sun, 1 Nov 2015 10:11:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: rdma: hfi1: chip: Remove
 wrapper functions
In-Reply-To: <CA+5yK5G+mF3FKZaRb_6wuNGF+Wf=QHJ3GygW1NMgBZgvU5BE0Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1511011009530.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com> <d87be280ac9dc0fe8fc50e25afabf579dcd7b98b.1446366036.git.amitoj1606@gmail.com> <alpine.DEB.2.02.1511010931350.2070@localhost6.localdomain6>
 <CA+5yK5G+mF3FKZaRb_6wuNGF+Wf=QHJ3GygW1NMgBZgvU5BE0Q@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:

> On Sun, Nov 1, 2015 at 2:05 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
> >
> >> Drop wrapper functions add_rcvctrl() and clear_rcvctrl() that can be replaced by a single line of code.
> >>
> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> >> ---
> >>  drivers/staging/rdma/hfi1/chip.c | 30 ++++++++++--------------------
> >>  1 file changed, 10 insertions(+), 20 deletions(-)
> >>
> >> diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
> >> index a9c6abf..23cacbf 100644
> >> --- a/drivers/staging/rdma/hfi1/chip.c
> >> +++ b/drivers/staging/rdma/hfi1/chip.c
> >> @@ -3176,16 +3176,6 @@ static void adjust_rcvctrl(struct hfi1_devdata *dd, u64 add, u64 clear)
> >>       spin_unlock_irqrestore(&dd->rcvctrl_lock, flags);
> >>  }
> >>
> >> -static inline void add_rcvctrl(struct hfi1_devdata *dd, u64 add)
> >> -{
> >> -     adjust_rcvctrl(dd, add, 0);
> >> -}
> >> -
> >> -static inline void clear_rcvctrl(struct hfi1_devdata *dd, u64 clear)
> >> -{
> >> -     adjust_rcvctrl(dd, 0, clear);
> >> -}
> >
> > Is it really an improvement?  adjust_rcvctrl is not a standard kernel
> > function.  In the original code, one can undestand what add_rcvctrl and
> > clear_rcvctrl do based on their names.  In the modified code, you have to
> > know what is the significance of the different argument positions of
> > adjust_rcvctrl, so you have to go look at the definition.  So this makes
> > more work for someone who wants to understand the code.
> >
> > Wrapping standard kernel functions is not good.  And wrapping when the
> > arguments don't change and the name is almost the same is probably not
> > good either.  But here the wrapping would seem to add some value.
> >
> > julia
> 
> Since both were using the same function and one would have to look at
> adjust_rcvctrl to understand what add_rcvctrl and clear_rcvctrl are
> doing, I thought this would work by removing that extra 2 functions.

In any case, all of this discussion shows that the commit message needs to 
be better.  Just saying that something is a one-line function is not 
enough justification to remove it.  There needs to be an explanation about 
why the code will be improved as a result.

julia


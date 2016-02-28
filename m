X-GM-THRID: 6256312431836921856
X-Received: by 10.112.158.138 with SMTP id wu10mr1103455lbb.11.1456672347907;
        Sun, 28 Feb 2016 07:12:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.206 with SMTP id p197ls353152lfd.44.gmail; Sun, 28 Feb
 2016 07:12:27 -0800 (PST)
X-Received: by 10.112.138.98 with SMTP id qp2mr1165082lbb.4.1456672347080;
        Sun, 28 Feb 2016 07:12:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w197si466218wmw.3.2016.02.28.07.12.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:12:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,515,1449529200"; 
   d="scan'208";a="166238123"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 16:12:26 +0100
Date: Sun, 28 Feb 2016 16:12:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Remove unused
 variables
In-Reply-To: <CAFNHFT-62UL2y6ywK3LCba_YeogBUst+Sj=p4=zCEsk1YY4+Mg@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602281611010.2147@localhost6.localdomain6>
References: <20160228120441.GA16843@Karyakshetra> <alpine.DEB.2.02.1602281333400.2147@localhost6.localdomain6> <CAFNHFT-62UL2y6ywK3LCba_YeogBUst+Sj=p4=zCEsk1YY4+Mg@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 28 Feb 2016, Bhaktipriya Shridhar wrote:

> Hello Julia,
> 
> Yes, I have compiled this with the kernel code. It compiled successfully.

OK, maybe you don't have the right compilation options.  Because if you 
look a few lines below the code in this patch, you will see calls to 
sdma_dumpstate_helper0 and sdma_dumpstate_helper2, which are defined right 
above the function and use csr.

csr looks like a register name, which made me suspicious.

julia

> 
> Thanks,
> Bhaktipriya
> 
> On Sun, Feb 28, 2016 at 6:04 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Sun, 28 Feb 2016, Bhaktipriya Shridhar wrote:
> >
> >> The variable csr has not been used anywhere in the function
> >> sdma_dumpstate(). Hence, it has been removed.
> >>
> >> This was done with Coccinelle:
> >>
> >> @@ type T; identifier i; constant c; @@
> >> -T i;
> >> <... when != i
> >> -i = c;
> >> ...>
> >>
> >> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> >> ---
> >>  drivers/staging/rdma/hfi1/sdma.c | 1 -
> >>  1 file changed, 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/rdma/hfi1/sdma.c b/drivers/staging/rdma/hfi1/sdma.c
> >> index 9a15f1f..2b2af94 100644
> >> --- a/drivers/staging/rdma/hfi1/sdma.c
> >> +++ b/drivers/staging/rdma/hfi1/sdma.c
> >> @@ -1769,7 +1769,6 @@ static void init_sdma_regs(
> >>
> >>  void sdma_dumpstate(struct sdma_engine *sde)
> >>  {
> >> -     u64 csr;
> >>       unsigned i;
> >>
> >>       sdma_dumpstate_helper(SD(CTRL));
> >
> > Are you absolutely sure that you have compiled this code?  Note that this
> > code is under an ifdef, so just having compiled the file may not be good
> > enough.
> >
> > julia
> >
> >> --
> >> 2.1.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160228120441.GA16843%40Karyakshetra.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAFNHFT-62UL2y6ywK3LCba_YeogBUst%2BSj%3Dp4%3DzCEsk1YY4%2BMg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


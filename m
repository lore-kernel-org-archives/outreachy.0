X-GM-THRID: 6254196416995917824
X-Received: by 10.112.156.33 with SMTP id wb1mr4403688lbb.7.1456257603096;
        Tue, 23 Feb 2016 12:00:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.202 with SMTP id 71ls542935lfq.12.gmail; Tue, 23 Feb
 2016 12:00:01 -0800 (PST)
X-Received: by 10.112.205.164 with SMTP id lh4mr4259907lbc.6.1456257601440;
        Tue, 23 Feb 2016 12:00:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v197si1073490wmv.1.2016.02.23.12.00.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:00:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,491,1449529200"; 
   d="scan'208";a="204351012"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 21:00:00 +0100
Date: Tue, 23 Feb 2016 21:00:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: drivers: Remove use
 of deprecated pci API
In-Reply-To: <CA+5yK5Gr21kxDR_5nwQ2wU2fKx-UjLJke2keCW-rMSwZ3WBM0Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602232058480.2040@localhost6.localdomain6>
References: <20160222191612.GA31592@amitoj-Inspiron-3542> <alpine.DEB.2.02.1602232034470.2040@localhost6.localdomain6> <CA+5yK5Gr21kxDR_5nwQ2wU2fKx-UjLJke2keCW-rMSwZ3WBM0Q@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 24 Feb 2016, Amitoj Kaur Chawla wrote:

> On Wed, Feb 24, 2016 at 1:07 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> > I don't think that GFP_ATOMIC should always be used.  You need to look at
> > the context and see if interrupts are turned off.  This may require some
> > interprocedural analyis.  But if there is already a use of GFP_KERNEL in
> > the current function, and there is no spin_lock_irqsave or
> > spin_unlock_irqrestore between the call to change and the one using
> > GFP_KENEL, then it is likely OK to use GFP_KERNEL.
> >
> > julia
> >
> This function, rather the whole file doesn't have GFP_KERNEL used
> anywhere and there are several instances of spin_lock_irqsave.

Not good enough.  locks nest.  You take them and then release them 
afterwards.  The lock is only relevant if the call is after the lock has 
been taken (thus also turning off interrupts) and before it is released.

julia

> 
> Amitoj
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5Gr21kxDR_5nwQ2wU2fKx-UjLJke2keCW-rMSwZ3WBM0Q%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


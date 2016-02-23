X-GM-THRID: 6254196416995917824
X-Received: by 10.194.19.195 with SMTP id h3mr4395005wje.1.1456258401428;
        Tue, 23 Feb 2016 12:13:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.139.130 with SMTP id n124ls470791lfd.45.gmail; Tue, 23 Feb
 2016 12:13:20 -0800 (PST)
X-Received: by 10.25.23.105 with SMTP id n102mr4389133lfi.9.1456258400806;
        Tue, 23 Feb 2016 12:13:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h126si849142wme.0.2016.02.23.12.13.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:13:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,491,1449529200"; 
   d="scan'208";a="165749589"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 21:13:20 +0100
Date: Tue, 23 Feb 2016 21:13:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: drivers: Remove use
 of deprecated pci API
In-Reply-To: <CA+5yK5G69ebXFdPSMWtO65-FwqMBhiDLwmQBoJF9BiuR-Hf1mg@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602232112060.2040@localhost6.localdomain6>
References: <20160222191612.GA31592@amitoj-Inspiron-3542> <alpine.DEB.2.02.1602232034470.2040@localhost6.localdomain6> <CA+5yK5Gr21kxDR_5nwQ2wU2fKx-UjLJke2keCW-rMSwZ3WBM0Q@mail.gmail.com> <alpine.DEB.2.02.1602232058480.2040@localhost6.localdomain6>
 <CA+5yK5G69ebXFdPSMWtO65-FwqMBhiDLwmQBoJF9BiuR-Hf1mg@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 24 Feb 2016, Amitoj Kaur Chawla wrote:

> On Wed, Feb 24, 2016 at 1:30 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> > Not good enough.  locks nest.  You take them and then release them
> > afterwards.  The lock is only relevant if the call is after the lock has
> > been taken (thus also turning off interrupts) and before it is released.
> >
> > julia
> I'm not very sure what you're asking me to look for but this is what
> is happening:
> 
> function1()
> {
>  dma_alloc_coherent(..., GFP_ATOMIC);
> }
> 
> function2()
> {
> ...
> function1()
> ...
> function3()
> }
> 
> function3()
> {
> spin_lock_irqsave()
> ... //no nesting in this function and does not call any other function in b/w
> spin_unlock_irqrestore()

This is completely irrelevant to the dma_alloc_coherent call.  It would 
only be relevant if dma_alloc_coherent were called between the 
spin_lock_irqsave and the spin_unlock_irqrestore.

julia

> }
> 
> Does this answer it?
> 
> Amitoj
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5G69ebXFdPSMWtO65-FwqMBhiDLwmQBoJF9BiuR-Hf1mg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


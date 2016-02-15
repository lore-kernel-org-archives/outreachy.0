X-GM-THRID: 6250833929703522304
X-Received: by 10.112.168.201 with SMTP id zy9mr1572188lbb.23.1455517796316;
        Sun, 14 Feb 2016 22:29:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.152.136 with SMTP id a130ls588862lfe.33.gmail; Sun, 14 Feb
 2016 22:29:55 -0800 (PST)
X-Received: by 10.25.136.198 with SMTP id k189mr1583788lfd.5.1455517795464;
        Sun, 14 Feb 2016 22:29:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si768028wmd.1.2016.02.14.22.29.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 22:29:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,449,1449529200"; 
   d="scan'208";a="203104078"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Feb 2016 07:29:54 +0100
Date: Mon, 15 Feb 2016 07:29:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Greg KH <gregkh@linuxfoundation.org>
cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-dim2: Use devm_
 functions
In-Reply-To: <20160215005209.GA19167@kroah.com>
Message-ID: <alpine.DEB.2.02.1602150725230.2124@localhost6.localdomain6>
References: <20160213174801.GA15312@amitoj-Inspiron-3542> <20160215005209.GA19167@kroah.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 14 Feb 2016, Greg KH wrote:

> On Sat, Feb 13, 2016 at 11:18:01PM +0530, Amitoj Kaur Chawla wrote:
> > Devm_ functions allocate memory that is released when a driver
> > detaches. Replace kzalloc, ioremap and request_irq with their devm_*
> > counterparts in the probe function of a platform device which were
> > originally freed in the remove function.
> > 
> > Also, unnecessary labels have been removed and header file
> > linux/device.h has been added to ensure devm_* routine declarations
> > are unambiguously available.
> 
> That's a lot to just do in one patch :(
> 
> Do only one conversion at a time, and be _VERY_ careful about the
> request_irq() change, that has some tricky side-affects if you don't
> watch out.  If you don't know about the side affects, don't make the
> change please.

The issue with request_irq is that everything that is allocated before it 
has to be devm_allocated as well, to ensure that everything the interrupt 
handler depends on is freed after the interrupt is freed.  I think that 
that is the case here, but please check it.

To break it up into multiple patches, you would have to put the change on 
the first allocation in the first patch, the second allocation in the 
second patch, etc, to keep a working system after each patch.  The devm 
mechanism frees things in the opposite order in which they are allocated, 
ie just like the order in which the frees normally appear in the error 
handling code at the end of the probe function.

julia

> So please break this up into different patches, and no need for the
> device.h change, that's not needed at all.
> 
> thanks,
> 
> greg k-h
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160215005209.GA19167%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
> 


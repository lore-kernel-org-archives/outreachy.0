X-GM-THRID: 6255098629488377856
X-Received: by 10.112.157.164 with SMTP id wn4mr5370524lbb.5.1456385369878;
        Wed, 24 Feb 2016 23:29:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.141.200 with SMTP id p191ls84885wmd.48.gmail; Wed, 24 Feb
 2016 23:29:29 -0800 (PST)
X-Received: by 10.28.172.194 with SMTP id v185mr177254wme.5.1456385369409;
        Wed, 24 Feb 2016 23:29:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h73si57278wme.0.2016.02.24.23.29.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 23:29:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,497,1449529200"; 
   d="scan'208";a="204541831"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 08:29:28 +0100
Date: Thu, 25 Feb 2016 08:29:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: Remove unnecessary
 *_set_drvdata()
In-Reply-To: <CA+5yK5H48eiia_r67=o+-Asimo2_eS4otKSEHBmNcdnxbqNTYw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602250829160.2048@localhost6.localdomain6>
References: <cover.1456377485.git.amitoj1606@gmail.com> <alpine.DEB.2.02.1602250808410.2048@localhost6.localdomain6> <CA+5yK5H48eiia_r67=o+-Asimo2_eS4otKSEHBmNcdnxbqNTYw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 25 Feb 2016, Amitoj Kaur Chawla wrote:

> On Thu, Feb 25, 2016 at 12:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >> Unnecessary [platform|pci|spi|dev]_set_drvdata() have been removed
> >> since the driver core clears the driver data to NULL after device
> >> release or on probe failure. There is no need to manually clear the
> >> device driver data to NULL.
> >
> > In principle, your semantic patch should check whether the call is in the
> > position of a device release or a probe failure.  In practice though, it
> > seems hard to imagine why this code would be in any place other than these
> > cases.
> >
> > julia
> 
> Okay, I'll modify the patch, other than that, should I resend the
> series with the modified patch?
> 
> Or just use the modified one for future cases?

Future is fine.

julia

> 
> Amitoj
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5H48eiia_r67%3Do%2B-Asimo2_eS4otKSEHBmNcdnxbqNTYw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


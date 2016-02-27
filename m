X-GM-THRID: 6255614868842348544
X-Received: by 10.25.142.130 with SMTP id q124mr627384lfd.9.1456560062097;
        Sat, 27 Feb 2016 00:01:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.7.2 with SMTP id 2ls329345lfh.89.gmail; Sat, 27 Feb 2016
 00:01:01 -0800 (PST)
X-Received: by 10.112.156.33 with SMTP id wb1mr627401lbb.7.1456560061089;
        Sat, 27 Feb 2016 00:01:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w10si260346wmw.3.2016.02.27.00.01.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 00:01:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,507,1449529200"; 
   d="scan'208";a="204850451"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2016 09:01:00 +0100
Date: Sat, 27 Feb 2016 09:00:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Replace
 kzalloc with devm_kzalloc
In-Reply-To: <CA+5yK5GYr6PE1LkkE_pqgM4-_3FfTpbDDg3kEFMWsieF4Ap2Qw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602270900220.2284@localhost6.localdomain6>
References: <20160226150029.GA32277@amitoj-Inspiron-3542> <alpine.DEB.2.02.1602262242360.2055@localhost6.localdomain6> <CA+5yK5GYr6PE1LkkE_pqgM4-_3FfTpbDDg3kEFMWsieF4Ap2Qw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 27 Feb 2016, Amitoj Kaur Chawla wrote:

> On Sat, Feb 27, 2016 at 3:15 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> Replace data allocated by kzalloc to managed data allocated by
> >> devm_kzalloc. Remove unnecessary kzfree.
> >
> > Actually, this doesn't preserve the semantics.  kzfree does more than just
> > free.  It also zeroes the data first.  This could be useful if the data is
> > sensitive in some way.  On the other hand, I don't recall ever seeing a
> > kzfree in a platform driver probe function.
> >
> Yes, after reading this, I wrote a semantic patch to find if there are
> in fact any cases where kzfree is used with the platform driver probe
> function in any of the drivers and the only result was this case.
> 
> > Unfortunately, from the git logs, I don't have the impression that anyone
> > is really taking responsability for this driver either, so I'm not sure
> > who you could ask for more information.
> >
> > julia
> 
> Oh okay, this patch will probably be dropped then.

I think you should reply to it an say explicitly not to take it.

julia


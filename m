X-GM-THRID: 6254552091181711360
X-Received: by 10.112.181.33 with SMTP id dt1mr4446025lbc.22.1456255600126;
        Tue, 23 Feb 2016 11:26:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.74 with SMTP id t71ls573138lfe.20.gmail; Tue, 23 Feb
 2016 11:26:39 -0800 (PST)
X-Received: by 10.112.150.105 with SMTP id uh9mr2753124lbb.17.1456255599559;
        Tue, 23 Feb 2016 11:26:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si1515180wmd.1.2016.02.23.11.26.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:26:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,490,1449529200"; 
   d="scan'208";a="204348612"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 20:26:38 +0100
Date: Tue, 23 Feb 2016 20:26:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Use devm_ioremap_resource()
 instead of of_iomap()
In-Reply-To: <CA+5yK5F+1_fweJuz7Z1ER3-phvyWZckLpU7vjjwV_zZ+aM4dwA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602232026200.2040@localhost6.localdomain6>
References: <20160223181623.GA20782@amitoj-Inspiron-3542> <alpine.DEB.2.02.1602231950320.2040@localhost6.localdomain6> <CA+5yK5HbDKJoRZYOa0PuJjAOuQt68yVM-=_aGR=C7im=E5Vo3g@mail.gmail.com> <alpine.DEB.2.02.1602232000530.2040@localhost6.localdomain6>
 <CA+5yK5FFL0JV8t+XjOh-CsGj2EdngD7e-GKrYN24ZH99bn1KVg@mail.gmail.com> <alpine.DEB.2.02.1602232021560.2040@localhost6.localdomain6> <CA+5yK5F+1_fweJuz7Z1ER3-phvyWZckLpU7vjjwV_zZ+aM4dwA@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 24 Feb 2016, Amitoj Kaur Chawla wrote:

> On Wed, Feb 24, 2016 at 12:52 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> >
> >> > The link for the two patches doesn't work for me.  Do you have the commit
> >> > ids?
> >> Commit ids c3f0dd38996d5f4e7c681099ba18cc1587155edb and
> >> b5f3b75d9d3b5526d973fc0bfee5680bdc6acf2a
> >
> > OK, thanks.  I don't remember if you had a semantic patch for this.  Maybe
> > you could see how often the issue occurs elsewhere in the kernel.
> >
> > julia
> 
> I don't as of now since I just found this after your comments on the
> other patch.
> I was, indeed, thinking of writing one if this patch is accepted.

OK, that's a reasonable stretgy.

julia

> 
> Amitoj
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5F%2B1_fweJuz7Z1ER3-phvyWZckLpU7vjjwV_zZ%2BaM4dwA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


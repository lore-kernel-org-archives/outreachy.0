X-GM-THRID: 6254552091181711360
X-Received: by 10.112.189.104 with SMTP id gh8mr4287289lbc.12.1456254078856;
        Tue, 23 Feb 2016 11:01:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.166.138 with SMTP id p132ls390863lfe.23.gmail; Tue, 23 Feb
 2016 11:01:18 -0800 (PST)
X-Received: by 10.25.154.129 with SMTP id c123mr4331303lfe.1.1456254078287;
        Tue, 23 Feb 2016 11:01:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si1386260wmy.2.2016.02.23.11.01.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:01:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,490,1449529200"; 
   d="scan'208";a="165744354"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 20:01:17 +0100
Date: Tue, 23 Feb 2016 20:01:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Use devm_ioremap_resource()
 instead of of_iomap()
In-Reply-To: <CA+5yK5HbDKJoRZYOa0PuJjAOuQt68yVM-=_aGR=C7im=E5Vo3g@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602232000530.2040@localhost6.localdomain6>
References: <20160223181623.GA20782@amitoj-Inspiron-3542> <alpine.DEB.2.02.1602231950320.2040@localhost6.localdomain6> <CA+5yK5HbDKJoRZYOa0PuJjAOuQt68yVM-=_aGR=C7im=E5Vo3g@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-697187721-1456254077=:2040"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-697187721-1456254077=:2040
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 24 Feb 2016, Amitoj Kaur Chawla wrote:

> 
> 
> On Wed, Feb 24, 2016 at 12:22 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> The adc driver uses of_iomap() which doesn't request the resource and
> >> isn't device managed so error handling is needed. of_iomap() is mainly
> >> used in cases where there is no driver or struct device so a switch to
> >> devm_ functions is required.
> >>
> >> This patch switches to use devm_ioremap_resource() instead which
> >> automatically requests the resource and is freed when the driver
> >> detaches.
> >
> > The above doesn't explain sufficiently why the transformation is correct.
> > You would have to look at the definitions of the functions involved, and
> > show that in this case they do the same thing.  Do you have anoher patch
> > that makes this transformation?  What kind of justification does it give?
> >
> > julia
> 
> I made the change based on these two patches and this discussion.

The link for the two patches doesn't work for me.  Do you have the commit 
ids?

julia

> 
> Amitoj
> 
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5HbDKJoRZYOa0PuJjAOuQt68yVM-%3D_aGR%3DC7im%3DE5Vo3g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-697187721-1456254077=:2040--


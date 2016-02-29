X-GM-THRID: 6256792083376373760
X-Received: by 10.112.168.201 with SMTP id zy9mr1889341lbb.23.1456781711128;
        Mon, 29 Feb 2016 13:35:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.75 with SMTP id f72ls300175lfi.12.gmail; Mon, 29 Feb
 2016 13:35:10 -0800 (PST)
X-Received: by 10.25.160.207 with SMTP id j198mr658886lfe.4.1456781710415;
        Mon, 29 Feb 2016 13:35:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v68si205007wmd.1.2016.02.29.13.35.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 13:35:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,521,1449529200"; 
   d="scan'208";a="205125342"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Feb 2016 22:35:09 +0100
Date: Mon, 29 Feb 2016 22:35:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: sandhya bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/5] Staging: Remove unnecessary
 goto.
In-Reply-To: <CAA3ASzmojvs8HDo2SZ168NDCsJjU84yL1YYw==a0FDL_3PAnNA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602292233200.2256@localhost6.localdomain6>
References: <cover.1456743650.git.bankarsandhya512@gmail.com> <alpine.DEB.2.10.1602292011080.2600@hadrien> <CAA3ASzmojvs8HDo2SZ168NDCsJjU84yL1YYw==a0FDL_3PAnNA@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-2129685325-1456781710=:2256"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-2129685325-1456781710=:2256
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 1 Mar 2016, sandhya bankar wrote:

> I have used this semantic patch to detect the unnecessary goto.

A semantic patch that doesn't contain any annotations or script code 
doesn't do anything.  In the code that you have, there are a number of 
cases, but one doesn't know if you are checking for all of them or only 
some of them.  You can use * to indicate the cases that you are searching 
for, if you don't have a specific transformation to propose.

julia

> 
> On Tue, Mar 1, 2016 at 12:41 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> 
> 
>       On Mon, 29 Feb 2016, Sandhya Bankar wrote:
> 
>       > Remove unnecessary goto.
>       > Semantic patch:
>       > @r@
>       > expression ret;
>       > identifier f,l;
>       > statement S;
>       > position p;
>       > @@
>       >
>       > (
>       > if (<+...f(...)...+>) S
>       > |
>       > if@p (...) return ret;
>       > return ret;
>       > |
>       > if@p (...) goto l;
>       > l:
>       > return ret;
>       > )
> 
>       The semantic patch doesn't remove (or add) anything?
> 
>       julia
> 
>       >
>       > Sandhya Bankar (5):
>       >   Staging: media: Remove Unnecessary goto.
>       >   Staging: iio: ade7854: Remove unnecessary goto.
>       >   Staging: iio: ade7758_core: Remove unnecessary goto.
>       >   Staging: iio: ade7754: Remove unnecessary goto.
>       >   Staging: gdm72xx: Remove unnecessary goto.
>       >
>       >  drivers/staging/gdm72xx/usb_boot.c            | 3 +--
>       >  drivers/staging/iio/meter/ade7754.c           | 2 --
>       >  drivers/staging/iio/meter/ade7758_core.c      | 2 --
>       >  drivers/staging/iio/meter/ade7854.c           | 2 --
>       >  drivers/staging/media/bcm2048/radio-bcm2048.c | 2 --
>       >  5 files changed, 1 insertion(+), 10 deletions(-)
>       >
>       > --
>       > 1.8.3.4
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/cover.1456743650.git.ban
> karsandhya512%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAA3ASzmojvs8HDo2SZ168ND
> CsJjU84yL1YYw%3D%3Da0FDL_3PAnNA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-2129685325-1456781710=:2256--


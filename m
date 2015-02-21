X-GM-THRID: 2004918206464
X-Received: by 10.180.8.67 with SMTP id p3mr419483wia.7.1424555784291;
        Sat, 21 Feb 2015 13:56:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.168 with SMTP id e8ls169645laf.72.gmail; Sat, 21 Feb
 2015 13:56:23 -0800 (PST)
X-Received: by 10.112.124.142 with SMTP id mi14mr448022lbb.1.1424555783839;
        Sat, 21 Feb 2015 13:56:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si386019wix.0.2015.02.21.13.56.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 13:56:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="100874195"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 22:56:23 +0100
Date: Sat, 21 Feb 2015 22:56:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: else is
 not generally useful after a break or return
In-Reply-To: <efcf0928-ffb8-408d-bb30-ac6634d72b3c@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1502212254090.2296@localhost6.localdomain6>
References: <1424542612-19551-1-git-send-email-haticeerturk27@gmail.com> <13586314.AW5Wp0HSbj@wuerfel> <efcf0928-ffb8-408d-bb30-ac6634d72b3c@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1236843778-1424555783=:2296"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1236843778-1424555783=:2296
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Hatice ERTÜRK wrote:

> ok.I'have changed. But it says "else is not generally useful after a break
> or return"

Checkpatch is not that clever.  It may just look on the line before.  In 
this case the structure is

  if X
  then Y
  else
    if A
    then return
    else C

The transformation proposed by checkpatch is only valid when every branch 
returns.  That is, if Y were a return also.

julia

> 21 Şubat 2015 Cumartesi 23:34:34 UTC+2 tarihinde Arnd Bergmann yazdı:
>       On Saturday 21 February 2015 20:16:52 Hatice ERTÜRK wrote:
>       > diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c
>       b/drivers/staging/rtl8188eu/core/rtw_recv.c
>       > index bd79e9e..2b022be 100644
>       > --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
>       > +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
>       > @@ -1779,8 +1779,8 @@ static int
>       enqueue_reorder_recvframe(struct recv_reorder_ctrl
>       *preorder_ctrl,
>       >                         plist = plist->next;
>       >                 else if (SN_EQUAL(pnextattrib->seq_num,
>       pattrib->seq_num))
>       >                         return false;
>       > -               else
>       > -                       break;
>       > +
>       > +               break;
>       >         }
>       >  
> 
>       This is not a correct change, you add a 'break' in the case that
>       the first condition was true, which did not exist earlier.
> 
>               Arnd
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/efcf0928-ffb8-408d-bb30-
> ac6634d72b3c%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-1236843778-1424555783=:2296--


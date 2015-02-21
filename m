X-GM-THRID: 2110375591936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,76fcb55a8c257c0b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.124.142 with SMTP id mi14mr434909lbb.1.1424552768750;
        Sat, 21 Feb 2015 13:06:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.4 with SMTP id u4ls373760laj.88.gmail; Sat, 21 Feb 2015
 13:06:08 -0800 (PST)
X-Received: by 10.112.168.104 with SMTP id zv8mr437862lbb.10.1424552768327;
        Sat, 21 Feb 2015 13:06:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si377446wif.0.2015.02.21.13.06.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 13:06:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="100872607"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 22:06:07 +0100
Date: Sat, 21 Feb 2015 22:06:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: { retrieved upper
 row
In-Reply-To: <1424550280-22040-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212205090.2296@localhost6.localdomain6>
References: <1424550280-22040-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-812328766-1424552767=:2296"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-812328766-1424552767=:2296
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Hatice ERTÜRK wrote:

> That open brace { should be on the previous line.
> This Error found with checkpatch.pl

I think the { is ok where it is in this code, but I'm not an expert on 
this issue...

{ retrived upper row is not easy to understand.  Perhaps Move { up one 
line.

julia

> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/vt6655/card.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index a079640..e77a5f6 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -68,8 +68,8 @@
>  
>  /*---------------------  Static Variables  --------------------------*/
>  
> -static const unsigned short cwRXBCNTSFOff[MAX_RATE] =
> -{17, 17, 17, 17, 34, 23, 17, 11, 8, 5, 4, 3};
> +static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
> +17, 17, 17, 17, 34, 23, 17, 11, 8, 5, 4, 3};
>  
>  /*---------------------  Static Functions  --------------------------*/
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424550280-22040-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-812328766-1424552767=:2296--


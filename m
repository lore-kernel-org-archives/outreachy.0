X-GM-THRID: 2110375591936
X-Received: by 10.194.86.1 with SMTP id l1mr459535wjz.0.1424554794524;
        Sat, 21 Feb 2015 13:39:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.131 with SMTP id jg3ls312897wid.12.gmail; Sat, 21 Feb
 2015 13:39:54 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr417936wib.7.1424554794348;
        Sat, 21 Feb 2015 13:39:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id by11si596173wib.1.2015.02.21.13.39.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 13:39:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="122826306"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 22:39:35 +0100
Date: Sat, 21 Feb 2015 22:39:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vt6655: { retrieved upper
 row
In-Reply-To: <1424554182-23841-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212237440.2296@localhost6.localdomain6>
References: <1424554182-23841-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-473612035-1424554775=:2296"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-473612035-1424554775=:2296
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Hatice ERTÜRK wrote:

> That open brace { should be on the previous line.
> This Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
> v2:
>  Retrieved all rows above.

No, this is not going in the right direction.  Now the line is too long.  
I think the code was OK as it is.  If the kernel coding conventions 
require the { to be on the line before, then the first patch was OK.

On the other hand "retrieved" is not the right word.  I think you mean 
"Moved"?

Remember to write subject lines in the imperative, so "Move ...".

julia


> ---
>  drivers/staging/vt6655/card.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index e77a5f6..ddfa4f5 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -68,8 +68,7 @@
>  
>  /*---------------------  Static Variables  --------------------------*/
>  
> -static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
> -17, 17, 17, 17, 34, 23, 17, 11, 8, 5, 4, 3};
> +static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {17, 17, 17, 17, 34, 23, 17, 11, 8, 5, 4, 3};
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424554182-23841-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-473612035-1424554775=:2296--


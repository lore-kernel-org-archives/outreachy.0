X-GM-THRID: 904211202048
X-Received: by 10.112.46.106 with SMTP id u10mr821724lbm.3.1424376869016;
        Thu, 19 Feb 2015 12:14:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.3 with SMTP id m3ls167984laj.57.gmail; Thu, 19 Feb 2015
 12:14:28 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr815451lbb.24.1424376868585;
        Thu, 19 Feb 2015 12:14:28 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si6483760wif.0.2015.02.19.12.14.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 12:14:28 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,610,1418079600"; 
   d="scan'208";a="100662862"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 21:14:27 +0100
Date: Thu, 19 Feb 2015 21:14:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: drivers: dma: ste_dma40.c:
 fixed space before the open parenthesis '('
In-Reply-To: <1424376652-29726-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192113370.2192@localhost6.localdomain6>
References: <1424376652-29726-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1577488280-1424376868=:2192"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1577488280-1424376868=:2192
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 19 Feb 2015, Hatice ERTÜRK wrote:

> Fixed space before the open parenthesis '('.

Try to write commit messages that do not use the word "fix".  Explain 
instead what the fix is.  Here one could think that you have modified a 
space that already appeared in the code.  When actually you are adding a 
new one.

julia


> 
> Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
> ---
>  drivers/dma/ste_dma40.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
> index f410b5e..08b63f2 100644
> --- a/drivers/dma/ste_dma40.c
> +++ b/drivers/dma/ste_dma40.c
> @@ -3551,7 +3551,7 @@ static int __init d40_probe(struct platform_device *pdev)
>  
>  	if (!plat_data) {
>  		if (np) {
> -			if(d40_of_probe(pdev, np)) {
> +			if (d40_of_probe(pdev, np)) {
>  				ret = -ENOMEM;
>  				goto failure;
>  			}
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424376652-29726-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-1577488280-1424376868=:2192--


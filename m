X-GM-THRID: 6387802033040130048
X-Received: by 10.25.213.11 with SMTP id m11mr488898lfg.19.1487277203938;
        Thu, 16 Feb 2017 12:33:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.2.130 with SMTP id 124ls2481wmc.24.gmail; Thu, 16 Feb 2017
 12:33:23 -0800 (PST)
X-Received: by 10.28.45.71 with SMTP id t68mr231884wmt.2.1487277203463;
        Thu, 16 Feb 2017 12:33:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v70si110947wmf.0.2017.02.16.12.33.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 12:33:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,169,1484002800"; 
   d="scan'208";a="213499018"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2017 21:33:22 +0100
Date: Thu, 16 Feb 2017 21:33:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, thomas.petazzoni@free-electrons.com, 
    noralf@tronnes.org, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: fbtft: Remove blank
 line
In-Reply-To: <900fa97ebe415c28a0980b7b21c92a4f961fc6ce.1487275508.git.gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702162133100.2121@hadrien>
References: <cover.1487275508.git.gs051095@gmail.com> <900fa97ebe415c28a0980b7b21c92a4f961fc6ce.1487275508.git.gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 17 Feb 2017, Gargi Sharma wrote:

> Remove blank line before closing brace to fix the checkpatch
> issue blank lines aren't necessary before a close brace '}'.

Good message here too.

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft-core.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
> index ee842e9..f548513 100644
> --- a/drivers/staging/fbtft/fbtft-core.c
> +++ b/drivers/staging/fbtft/fbtft-core.c
> @@ -556,7 +556,6 @@ static int fbtft_fb_setcolreg(unsigned int regno, unsigned int red, unsigned int
>  			ret = 0;
>  		}
>  		break;
> -
>  	}
>  	return ret;
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/900fa97ebe415c28a0980b7b21c92a4f961fc6ce.1487275508.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


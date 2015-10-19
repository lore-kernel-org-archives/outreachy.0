X-GM-THRID: 6207218463763595264
X-Received: by 10.194.240.230 with SMTP id wd6mr6226051wjc.0.1445232297664;
        Sun, 18 Oct 2015 22:24:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.212.195 with SMTP id l186ls343394lfg.67.gmail; Sun, 18 Oct
 2015 22:24:56 -0700 (PDT)
X-Received: by 10.112.144.105 with SMTP id sl9mr1086039lbb.3.1445232296921;
        Sun, 18 Oct 2015 22:24:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cm6si538355wib.1.2015.10.18.22.24.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 22:24:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,700,1437429600"; 
   d="scan'208";a="183367637"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Oct 2015 07:24:55 +0200
Date: Mon, 19 Oct 2015 07:24:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Add space around
 operator.
In-Reply-To: <20151019045746.GA4126@navya>
Message-ID: <alpine.DEB.2.02.1510190724090.2080@localhost6.localdomain6>
References: <20151019045746.GA4126@navya>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 19 Oct 2015, Navya Sri Nizamkari wrote:

> This patch fixes the checkpatch.pl warning about
> addition of space around the '>>' operator.

Write your commit message in the imperative, focusing on what is done, not 
what checkpatch has told you.  So it could be "Add a space around >>.  
Problem found using checkpatch.*

julia

> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index 0492747..60604c8 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -211,7 +211,7 @@ static u32 _nbu2ss_get_begin_ram_address(struct nbu2ss_udc *udc)
>  		}
>  
>  		if ((data >> 16) > last_ram_adr)
> -			last_ram_adr = data>>16;
> +			last_ram_adr = data >> 16;
>  	}
>  
>  	return last_ram_adr + use_ram_size;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151019045746.GA4126%40navya.
> For more options, visit https://groups.google.com/d/optout.
> 


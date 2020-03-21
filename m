X-GM-THRID: 6806470410125705216
X-Received: by 2002:a05:600c:1006:: with SMTP id c6mr14056485wmc.96.1584776210011;
        Sat, 21 Mar 2020 00:36:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls3517592wrv.9.gmail; Sat, 21 Mar
 2020 00:36:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsC7NonbnPa5+usO0/PEWczrhIpLjQVzPCZ7j8Iq1iwGE3vmYqi0+5S8OZ6QrILfM24pMTX
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr16810524wrp.403.1584776208647;
        Sat, 21 Mar 2020 00:36:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584776208; cv=none;
        d=google.com; s=arc-20160816;
        b=J2pq4baqxNp/pwc3QfZqnhfVpKoNAAzPHkkpBQqIR8WzglKfs+OGZ0XegseKF7F0kW
         L5updh/W4aLc3dn10QX72QNhtrQ3ni85AsfTlbDhjr3JQ0e/M+17iYM98QguOHjj+UfK
         dSy2UwZXStiQk+6XXUbhBufMacrhdZAPmbUR7hVRgP0hjWjx2xrlChEk1fuR05Uwbl4d
         3BMfD2KjVknU5rKJX9aMofbBJZBoEqPmQIS58pJvEShEx22T4W0M+d3me5PcEKx0fbKS
         Xg/vEuYWQ97gQh7o2id43rLthv5ROXIAhCOg21ouBu6aP4XzD08fD2N+pEGiUQzCQUCa
         wuAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=RrAwDwFR7fH2YlFDf+NknlcRimfoj8nGyhmIKweu9Ug=;
        b=J89CbXgCAZppOIL1r8pf+MSHuyY+pdte3Qd1udX0FWp80fQE5zhSTlvLs82pwkFfQq
         qnX+m9KALIFQaJEe2KpsF0I/wGLgg9puVGNPU1edD0jKxy9+VA+ZGGVgJY/CSp+wN+SL
         D34s0OQiTPY2K++HHEARcXLgB6a07mmESuHDve0vDMQnaW9OUKfh+2eDz7WNroOiOtez
         P4eZqNAvZrlgjl3EPrAXeiQXcVy5dxn5hw7rq9gQoweYgygzrmgnrEhU1GR6iS8EjAvX
         V4Uv2vrb41eLG/aEQwuzk7k+p0yKS63+Nw1QpzKoI+Y4k7IhiqFyTSlryGASadr9UE6t
         sE/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y201si568989wmc.0.2020.03.21.00.36.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 00:36:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,287,1580770800"; 
   d="scan'208";a="441462415"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2020 08:36:48 +0100
Date: Sat, 21 Mar 2020 08:36:47 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] stagin: hp100: space prohibited
 between function name and open parenthesis '('
In-Reply-To: <20200321014123.GA17832@siyah2>
Message-ID: <alpine.DEB.2.21.2003210836200.2522@hadrien>
References: <20200321014123.GA17832@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 21 Mar 2020, Gokce Kuler wrote:

> Delete space between funtion name and open parenthesis

Greg made another comment on this, but you also have a typo in the log
message: funtion -> function

julia

>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index b89c4dc..551cd52 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -3020,7 +3020,7 @@ static int __init hp100_module_init(void)
>  static void __exit hp100_module_exit(void)
>  {
>  	hp100_isa_cleanup();
> -	eisa_driver_unregister (&hp100_eisa_driver);
> +	eisa_driver_unregister(&hp100_eisa_driver);
>  	pci_unregister_driver (&hp100_pci_driver);
>  }
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200321014123.GA17832%40siyah2.
>


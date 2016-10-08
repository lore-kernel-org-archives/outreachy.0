X-GM-THRID: 6339053517033963520
X-Received: by 10.28.21.17 with SMTP id 17mr187991wmv.16.1475948477808;
        Sat, 08 Oct 2016 10:41:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.158 with SMTP id e30ls634836lji.29.gmail; Sat, 08 Oct
 2016 10:41:17 -0700 (PDT)
X-Received: by 10.25.16.93 with SMTP id f90mr1638011lfi.30.1475948477311;
        Sat, 08 Oct 2016 10:41:17 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w79si370369wmw.0.2016.10.08.10.41.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 10:41:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,462,1473112800"; 
   d="scan'208";a="239952056"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2016 19:41:14 +0200
Date: Sat, 8 Oct 2016 19:41:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
In-Reply-To: <20161008112506.GA12694@euri>
Message-ID: <alpine.DEB.2.10.1610081940270.3259@hadrien>
References: <20161008112506.GA12694@euri>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Varsha Rao wrote:

> This patch fixes the checkpatch issue by replacing BBvClearFOE with bbvclearfoe.
> Avoid CamelCase: <BBvClearFOE>
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> index 6d9a936..a732fba 100644
> --- a/drivers/staging/vt6655/baseband.h
> +++ b/drivers/staging/vt6655/baseband.h
> @@ -58,7 +58,7 @@
>  #define TOP_RATE_2M         0x00200000
>  #define TOP_RATE_1M         0x00100000
>
> -#define BBvClearFOE(dwIoBase)				\
> +#define bbvclearfoe(dwIoBase)				\

Is the macro never used?  It is strange to change a definition without at
least one use.  If there is no use, then the macro can be dropped.

julia

>  	BBbWriteEmbedded(dwIoBase, 0xB1, 0)
>
>  #define BBvSetFOE(dwIoBase)				\
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161008112506.GA12694%40euri.
> For more options, visit https://groups.google.com/d/optout.
>


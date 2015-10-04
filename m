X-GM-THRID: 6201793060535271424
X-Received: by 10.112.190.65 with SMTP id go1mr4581543lbc.9.1443984403138;
        Sun, 04 Oct 2015 11:46:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.43.135 with SMTP id r129ls255512lfr.93.gmail; Sun, 04 Oct
 2015 11:46:42 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr4430100lbb.17.1443984402528;
        Sun, 04 Oct 2015 11:46:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si256871wib.2.2015.10.04.11.46.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 11:46:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,634,1437429600"; 
   d="scan'208";a="181002501"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2015 20:46:42 +0200
Date: Sun, 4 Oct 2015 19:46:41 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aybuke Ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: wilc1000: Added 'function'
 word.
In-Reply-To: <1443967460-14302-2-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.10.1510041946080.2368@hadrien>
References: <1443967460-14302-1-git-send-email-aybuke.147@gmail.com> <1443967460-14302-2-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Something like "fix spelling mistake" would be better.  Because the workd
is not really added.

julia

On Sun, 4 Oct 2015, Aybuke Ozdemir wrote:

> This patch organizing missing written word missing.
> Found by checkpatch.pl:
> CHECK: 'funcion' may be misspelled - perhaps 'function'?
>
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
> index 439c828..08f5675 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.c
> +++ b/drivers/staging/wilc1000/coreconfigurator.c
> @@ -296,7 +296,7 @@ static inline u16 get_assoc_resp_cap_info(u8 *data)
>  	return cap_info;
>  }
>
> -/* This funcion extracts the association status code from the incoming       */
> +/* This function extracts the association status code from the incoming       */
>  /* association response frame and returns association status code            */
>  static inline u16 get_asoc_status(u8 *data)
>  {
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443967460-14302-2-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


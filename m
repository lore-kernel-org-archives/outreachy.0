X-GM-THRID: 6207218463763595264
X-Received: by 10.112.209.73 with SMTP id mk9mr6234422lbc.14.1445239754037;
        Mon, 19 Oct 2015 00:29:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.105.68 with SMTP id gk4ls565859wib.25.canary; Mon, 19 Oct
 2015 00:29:13 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr3885416wib.0.1445239753504;
        Mon, 19 Oct 2015 00:29:13 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m4si452794wib.0.2015.10.19.00.29.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 00:29:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,700,1437429600"; 
   d="scan'208";a="183386487"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Oct 2015 09:29:13 +0200
Date: Mon, 19 Oct 2015 09:29:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: emxx_udc: Add space around
 operator.
In-Reply-To: <20151019065438.GA5680@navya>
Message-ID: <alpine.DEB.2.10.1510190928430.2438@hadrien>
References: <20151019065438.GA5680@navya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 19 Oct 2015, Navya Sri Nizamkari wrote:

> Add a space around '>>' operator.
> Problem found using checkpatch.

Looks better, thanks.

Reviewed-by: Julia Lawall <julia.lawall@lip6.fr>

>
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v2:
>     -Make commit message better.
>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151019065438.GA5680%40navya.
> For more options, visit https://groups.google.com/d/optout.
>


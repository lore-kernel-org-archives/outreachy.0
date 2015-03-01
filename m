X-GM-THRID: 5595816001536
X-Received: by 10.194.201.10 with SMTP id jw10mr3329759wjc.3.1425249081874;
        Sun, 01 Mar 2015 14:31:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.199 with SMTP id s7ls306826laj.57.gmail; Sun, 01 Mar
 2015 14:31:20 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr3299253lbc.3.1425249080311;
        Sun, 01 Mar 2015 14:31:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si552567wic.1.2015.03.01.14.31.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 14:31:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,672,1418079600"; 
   d="scan'208";a="123881803"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 23:31:19 +0100
Date: Sun, 1 Mar 2015 16:31:16 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Remove argument
 test from function
In-Reply-To: <1425244693-8713-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.10.1503011631020.2545@hadrien>
References: <1425244693-8713-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 2 Mar 2015, Haneen Mohammed wrote:

> This patch removes the test statement for an argument to  _nbu2ss_pullup function,
> for it can't be null due to previous derefrences when its called.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index 0bfd268..b2a89a6 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -2257,11 +2257,6 @@ static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)
>  {
>  	u32	reg_dt;
>
> -	if (!udc) {
> -		pr_err("udc: %s, bad param\n", __func__);
> -		return -EINVAL;
> -	}
> -
>  	if (udc->vbus_active == 0)
>  		return -ESHUTDOWN;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425244693-8713-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


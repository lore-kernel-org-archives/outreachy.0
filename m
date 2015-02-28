X-GM-THRID: 4342409068544
X-Received: by 10.112.147.35 with SMTP id th3mr2607919lbb.15.1425157646198;
        Sat, 28 Feb 2015 13:07:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.65 with SMTP id b1ls300653laf.99.gmail; Sat, 28 Feb
 2015 13:07:24 -0800 (PST)
X-Received: by 10.112.156.65 with SMTP id wc1mr192487lbb.7.1425157644826;
        Sat, 28 Feb 2015 13:07:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si364965wic.1.2015.02.28.13.07.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 13:07:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,668,1418079600"; 
   d="scan'208";a="123805831"
Received: from unknown (HELO hadrien.local) ([207.164.135.98])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2015 22:07:21 +0100
Date: Sat, 28 Feb 2015 16:07:18 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Move variable
 assignment
In-Reply-To: <20150227094802.GA12516@gmail.com>
Message-ID: <alpine.DEB.2.10.1502281559170.3344@hadrien>
References: <20150227094802.GA12516@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 27 Feb 2015, Vatika Harlalka wrote:

> Variable path_on is assigned explicitly in the if branch and so
> its assignment outside can be moved to the else branch.

Clever :)

julia

>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 56c0bc9..006b723 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -980,11 +980,11 @@ static void path_adda_on(struct adapter *adapt, u32 *adda_reg,
>  	u32 path_on;
>  	u32 i;
>
> -	path_on = is_path_a_on ? 0x04db25a4 : 0x0b1b25a4;
>  	if (!is2t) {
>  		path_on = 0x0bdb25a0;
>  		phy_set_bb_reg(adapt, adda_reg[0], bMaskDWord, 0x0b1b25a0);
>  	} else {
> +		path_on = is_path_a_on ? 0x04db25a4 : 0x0b1b25a4;
>  		phy_set_bb_reg(adapt, adda_reg[0], bMaskDWord, path_on);
>  	}
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150227094802.GA12516%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


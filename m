X-GM-THRID: 6253696121219055616
X-Received: by 10.112.16.34 with SMTP id c2mr2788392lbd.19.1456057664583;
        Sun, 21 Feb 2016 04:27:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.42.75 with SMTP id q72ls249743lfq.72.gmail; Sun, 21 Feb
 2016 04:27:44 -0800 (PST)
X-Received: by 10.25.154.129 with SMTP id c123mr2779431lfe.1.1456057664025;
        Sun, 21 Feb 2016 04:27:44 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h73si615144wme.0.2016.02.21.04.27.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 04:27:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,480,1449529200"; 
   d="scan'208";a="203976218"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 13:27:43 +0100
Date: Sun, 21 Feb 2016 07:27:40 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Return NULL instead
 of 0.
In-Reply-To: <20160221025455.GA5576@sandhya>
Message-ID: <alpine.DEB.2.10.1602210727130.2782@hadrien>
References: <20160221025455.GA5576@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 21 Feb 2016, Sandhya Bankar wrote:

> Return NULL instead of 0 from nbu2ss_ep_alloc_request(),if req pointer is NULL.
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index a1f624f..fe99fb1 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -2626,7 +2626,7 @@ static struct usb_request *nbu2ss_ep_alloc_request(
>
>  	req = kzalloc(sizeof(*req), gfp_flags);
>  	if (!req)
> -		return 0;
> +		return NULL;

Good catch.  You could do this with Coccinelle :)

julia

>
>  #ifdef USE_DMA
>  	req->req.dma = DMA_ADDR_INVALID;
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221025455.GA5576%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>


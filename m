X-GM-THRID: 6339370898405982208
X-Received: by 10.157.14.146 with SMTP id 18mr4167959otj.17.1476010223428;
        Sun, 09 Oct 2016 03:50:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.75 with SMTP id t11ls8099679ott.34.gmail; Sun, 09 Oct
 2016 03:50:22 -0700 (PDT)
X-Received: by 10.237.34.216 with SMTP id q24mr4683501qtc.69.1476010222859;
        Sun, 09 Oct 2016 03:50:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p70si322087vkd.0.2016.10.09.03.50.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 03:50:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,466,1473112800"; 
   d="scan'208";a="239995710"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 12:50:21 +0200
Date: Sun, 9 Oct 2016 12:50:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: constify usb_ep_ops
 structure
In-Reply-To: <1475999788-12028-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1610091249530.3462@hadrien>
References: <1475999788-12028-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 9 Oct 2016, Bhumika Goyal wrote:

> Declare the structure usb_ep_ops as constant as it is only stored in the
> ops field of a usb_ep structure which is a field of a nbu2ss_ep structure.
> The ops field is of type const struct usb_ep_ops *, so usb_ep_ops
> structures having this property can be decalared as const.
> Done using coccinelle:
>
> @r1 disable optional_qualifier @
> identifier i;
> position p;
> @@
> static struct usb_ep_ops i@p = {...};
>
> @ok1@
> identifier r1.i;
> position p;
> struct nbu2ss_ep s;
> @@
> s.ep.ops=&i@p
>
> @bad@
> position p!={r1.p,ok1.p};
> identifier r1.i;
> @@
> i@p
>
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> static
> +const
> struct usb_ep_ops i={...};
>
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> +const
> struct usb_ep_ops i;
>
> File size before:
>    text	   data	    bss	    dec	    hex	filename
>   16007	    376	   3720	  20103	   4e87
> drivers/staging/emxx_udc/emxx_udc.o
>
> File size after:
>    text	   data	    bss	    dec	    hex	filename
>   16095	    280	   3720	  20095	   4e7f
> drivers/staging/emxx_udc/emxx_udc.o
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index 6391220..6b6d7db 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -2933,7 +2933,7 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
>  }
>
>  /*-------------------------------------------------------------------------*/
> -static struct usb_ep_ops nbu2ss_ep_ops = {
> +static const struct usb_ep_ops nbu2ss_ep_ops = {
>  	.enable		= nbu2ss_ep_enable,
>  	.disable	= nbu2ss_ep_disable,
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1475999788-12028-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


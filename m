X-GM-THRID: 6342441922054848512
X-Received: by 10.36.112.143 with SMTP id f137mr4013193itc.1.1476769198470;
        Mon, 17 Oct 2016 22:39:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.225.195 with SMTP id n186ls2974379ith.1.gmail; Mon, 17 Oct
 2016 22:39:57 -0700 (PDT)
X-Received: by 10.66.167.37 with SMTP id zl5mr287891pab.78.1476769197888;
        Mon, 17 Oct 2016 22:39:57 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p70si4510086vkd.0.2016.10.17.22.39.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 22:39:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,508,1473112800"; 
   d="scan'208";a="197111812"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2016 07:39:55 +0200
Date: Tue, 18 Oct 2016 07:39:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Make a read-only
 structure
In-Reply-To: <20161017143352.GA13131@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1610180738510.2038@hadrien>
References: <20161017143352.GA13131@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 17 Oct 2016, Mihaela Muraru wrote:

> This patch add const qualifier at the declaration of the structure.
> The structure become a read-only data, this increase the security.
>
> Found with Coccinelle:
> @r disable optional_qualifier@
> identifier s,i;
> @@
> * static struct s i ={...};

This just shows that the structure didn't have const before and that you
have now added it.  It would be better to explain why you consider that
this is the right thing to do.

julia


>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index c3e2988..8b406f3 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -1386,7 +1386,7 @@ static void _nbu2ss_set_endpoint_stall(
>
>  /*-------------------------------------------------------------------------*/
>  /* Device Descriptor */
> -static struct usb_device_descriptor device_desc = {
> +static const struct usb_device_descriptor device_desc = {
>  	.bLength              = sizeof(device_desc),
>  	.bDescriptorType      = USB_DT_DEVICE,
>  	.bcdUSB               = cpu_to_le16(0x0200),
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161017143352.GA13131%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>


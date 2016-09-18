X-GM-THRID: 6331683912219099136
X-Received: by 10.46.32.80 with SMTP id g77mr2853888ljg.9.1474212393884;
        Sun, 18 Sep 2016 08:26:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.28.206 with SMTP id c197ls1510604wmc.6.gmail; Sun, 18 Sep
 2016 08:26:33 -0700 (PDT)
X-Received: by 10.194.74.131 with SMTP id t3mr440294wjv.21.1474212393059;
        Sun, 18 Sep 2016 08:26:33 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si1516791wmr.2.2016.09.18.08.26.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 08:26:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,357,1470693600"; 
   d="scan'208";a="193823239"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Sep 2016 17:26:32 +0200
Date: Sun, 18 Sep 2016 17:26:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk, 
    hsweeten@visionengravers.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use
 usb_endpoint_dir_in(endpoint) instead of (endpoint->bEndpointAddress &
 USB_DIR_IN).
In-Reply-To: <20160918144757.GA3786@sandhya>
Message-ID: <alpine.DEB.2.10.1609181723120.3204@hadrien>
References: <20160918144757.GA3786@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 18 Sep 2016, Sandhya Bankar wrote:

> Use usb_endpoint_dir_in(endpoint) instead of (endpoint->bEndpointAddress & USB_DIR_IN).
>
> This correction is made using below coccinelle script:
>
> @@
> struct usb_endpoint_descriptor *endpoint;
> expression E;
> @@
> (
> - endpoint->bEndpointAddress & USB_DIR_IN
> + usb_endpoint_dir_in(endpoint)
> |
> - endpoint->bEndpointAddress == USB_DIR_IN
> + usb_endpoint_dir_in(endpoint)
> |
> - (endpoint->bEndpointAddress & E) == USB_DIR_IN
> + usb_endpoint_dir_in(endpoint)
> )
>
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/comedi/drivers/dt9812.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/dt9812.c b/drivers/staging/comedi/drivers/dt9812.c
> index 7ebca86..4007c45 100644
> --- a/drivers/staging/comedi/drivers/dt9812.c
> +++ b/drivers/staging/comedi/drivers/dt9812.c
> @@ -676,7 +676,7 @@ static int dt9812_find_endpoints(struct comedi_device *dev)
>  			dir = USB_DIR_IN;
>  			break;
>  		}
> -		if ((ep->bEndpointAddress & USB_DIR_IN) != dir) {
> +		if ((usb_endpoint_dir_in(ep)) != dir) {

Small problem:  The parentheses around the function call are not needed.

Big problem: The transformation is not correct in this context.  If you
look at the definition of usb_endpoint_dir_in, you will see that, like in
most of the rules of the semantic patch, the main operator in the
computation of the return value is ==.  So the function returns a boolean,
ie 0 or 1.  The first rule of the semantic patch is only valid when the
result is being tested for being true or false, not when it is compared to
something.  Maybe there is some other way to reorganize the code to use
the endpoint functions.

julia

>  			dev_err(dev->class_dev,
>  				"Endpoint has wrong direction\n");
>  			return -ENODEV;
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160918144757.GA3786%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>


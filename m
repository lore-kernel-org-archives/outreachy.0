X-GM-THRID: 4349090594816
X-Received: by 10.180.13.98 with SMTP id g2mr369377wic.3.1425034647297;
        Fri, 27 Feb 2015 02:57:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.8 with SMTP id j8ls156644lae.7.gmail; Fri, 27 Feb 2015
 02:57:26 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr1970992lbb.14.1425034646787;
        Fri, 27 Feb 2015 02:57:26 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si97200wix.0.2015.02.27.02.57.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 02:57:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,659,1418079600"; 
   d="scan'208";a="101525287"
Received: from ip209.messe-nbg.customer.bisping.net (HELO hadrien.local) ([62.91.19.209])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 11:57:26 +0100
Date: Fri, 27 Feb 2015 11:57:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v8 5/5] Staging: emxx_udc: Clean
 dev_err() logging
In-Reply-To: <1425033356-20933-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271156510.2668@hadrien>
References: <cover.1425030785.git.hamohammed.sa@gmail.com> <1425033356-20933-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Maybe you can try using Coccinelle to find this problem more generally.

julia

On Fri, 27 Feb 2015, Haneen Mohammed wrote:

> This patch removes  __func__ from dev_err.
> dev_err includes the function name in the log printout, so there is no
> need to include it manually.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index 77189cc..0bfd268 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -2626,7 +2626,7 @@ static int nbu2ss_ep_enable(
>  	if ((ep_type == USB_ENDPOINT_XFER_CONTROL)
>  		|| (ep_type == USB_ENDPOINT_XFER_ISOC)) {
>
> -		dev_err(ep->udc->dev, "udc:  *** %s, bat bmAttributes\n", __func__);
> +		dev_err(ep->udc->dev, "bat bmAttributes\n");
>  		return -EINVAL;
>  	}
>
> @@ -2637,7 +2637,7 @@ static int nbu2ss_ep_enable(
>  	if ((udc->driver == NULL)
>  		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
>
> -		dev_err(udc->dev, " *** %s, udc !!\n", __func__);
> +		dev_err(udc->dev, "udc !!\n");
>  		return -ESHUTDOWN;
>  	}
>
> @@ -2778,7 +2778,7 @@ static int nbu2ss_ep_queue(
>  	}
>
>  	if (unlikely(!udc->driver)) {
> -		dev_err(udc->dev, "%s, bogus device state %p\n", __func__, udc->driver);
> +		dev_err(udc->dev, "bogus device state %p\n", udc->driver);
>  		return -ESHUTDOWN;
>  	}
>
> @@ -2817,7 +2817,7 @@ static int nbu2ss_ep_queue(
>
>  		result = _nbu2ss_start_transfer(udc, ep, req, FALSE);
>  		if (result < 0) {
> -			dev_err(udc->dev, " *** %s, result = %d\n", __func__, result);
> +			dev_err(udc->dev, "result = %d\n", result);
>  			list_del(&req->queue);
>  		} else if ((ep->epnum > 0) && (ep->direct == USB_DIR_OUT)) {
>  #ifdef USE_DMA
> @@ -2907,7 +2907,7 @@ static int nbu2ss_ep_set_halt(struct usb_ep *_ep, int value)
>
>  	udc = ep->udc;
>  	if (!udc) {
> -		dev_err(ep->udc->dev, "udc: *** %s, bad udc\n", __func__);
> +		dev_err(ep->udc->dev, "bad udc\n");
>  		return -EINVAL;
>  	}
>
> @@ -2961,7 +2961,7 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
>
>  	udc = ep->udc;
>  	if (!udc) {
> -		dev_err(ep->udc->dev, "udc: %s, bad udc\n", __func__);
> +		dev_err(ep->udc->dev, "bad udc\n");
>  		return -EINVAL;
>  	}
>
> @@ -3009,7 +3009,7 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
>
>  	udc = ep->udc;
>  	if (!udc) {
> -		dev_err(ep->udc->dev, "udc: %s, bad udc\n", __func__);
> +		dev_err(ep->udc->dev, "bad udc\n");
>  		return;
>  	}
>
> @@ -3059,7 +3059,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
>
>  	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
>  	if (udc == NULL) {
> -		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
> +		dev_err(&pgadget->dev, "udc == NULL\n");
>  		return -EINVAL;
>  	}
>
> @@ -3089,7 +3089,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
>
>  	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
>  	if (udc == NULL) {
> -		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
> +		dev_err(&pgadget->dev, "udc == NULL\n");
>  		return -EINVAL;
>  	}
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425033356-20933-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


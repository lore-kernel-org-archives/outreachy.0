X-GM-THRID: 6329749764443209728
X-Received: by 10.28.55.196 with SMTP id e187mr20057wma.5.1473759955896;
        Tue, 13 Sep 2016 02:45:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.230.146 with SMTP id e18ls1767027wmi.16.canary; Tue, 13 Sep
 2016 02:45:55 -0700 (PDT)
X-Received: by 10.194.178.166 with SMTP id cz6mr3452598wjc.0.1473759955445;
        Tue, 13 Sep 2016 02:45:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b1si359686wmg.0.2016.09.13.02.45.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:45:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,328,1470693600"; 
   d="scan'208";a="236247362"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 11:45:55 +0200
Date: Tue, 13 Sep 2016 11:45:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: media: lirc: lirc_imon.c:
 Alignment should match open parenthesis
In-Reply-To: <cf7e7362308491fa76f7de5d00e302fbbc583fde.1473758274.git.anchalj109@gmail.com>
Message-ID: <alpine.DEB.2.10.1609131144500.3355@hadrien>
References: <cover.1473758274.git.anchalj109@gmail.com> <cf7e7362308491fa76f7de5d00e302fbbc583fde.1473758274.git.anchalj109@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Anchal Jain wrote:

> CHECK: Alignment should match open parenthesis
>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/media/lirc/lirc_imon.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
> index ee12da2..b1c28e5 100644
> --- a/drivers/staging/media/lirc/lirc_imon.c
> +++ b/drivers/staging/media/lirc/lirc_imon.c
> @@ -587,7 +587,7 @@ static void imon_incoming_packet(struct imon_context *context,
>
>  	if (len != 8) {
>  		dev_warn(dev, "imon %s: invalid incoming packet size (len = %d, intf%d)\n",
> -			__func__, len, intf);
> +			 __func__, len, intf);
>  		return;
>  	}
>
> @@ -828,7 +828,7 @@ static int imon_probe(struct usb_interface *interface,
>  	}
>
>  	dev_info(dev, "Registered iMON driver (lirc minor: %d)\n",
> -			lirc_minor);
> +		 lirc_minor);
>
>  	/* Needed while unregistering! */
>  	driver->minor = lirc_minor;
> @@ -849,8 +849,8 @@ static int imon_probe(struct usb_interface *interface,
>  		context->display = 1;
>
>  	usb_fill_int_urb(context->rx_urb, context->usbdev,
> -		usb_rcvintpipe(context->usbdev,
> -			context->rx_endpoint->bEndpointAddress),
> +			 usb_rcvintpipe(context->usbdev,
> +			 context->rx_endpoint->bEndpointAddress),

This looks odd.  Perhaps it is not possible to indent

context->rx_endpoint->bEndpointAddress

as far as the ( after usb_rcvintpipe, but it should be indented more, to
make apparent that it is an argument of a nested call.

julia

>  		context->usb_rx_buf, sizeof(context->usb_rx_buf),
>  		usb_rx_callback, context,
>  		context->rx_endpoint->bInterval);
> @@ -875,7 +875,7 @@ static int imon_probe(struct usb_interface *interface,
>  	}
>
>  	dev_info(dev, "iMON device (%04x:%04x, intf%d) on usb<%d:%d> initialized\n",
> -		vendor, product, ifnum, usbdev->bus->busnum, usbdev->devnum);
> +		 vendor, product, ifnum, usbdev->bus->busnum, usbdev->devnum);
>
>  	/* Everything went fine. Just unlock and return retval (with is 0) */
>  	mutex_unlock(&context->ctx_lock);
> @@ -966,8 +966,8 @@ static int imon_resume(struct usb_interface *intf)
>  	struct imon_context *context = usb_get_intfdata(intf);
>
>  	usb_fill_int_urb(context->rx_urb, context->usbdev,
> -		usb_rcvintpipe(context->usbdev,
> -			context->rx_endpoint->bEndpointAddress),
> +			 usb_rcvintpipe(context->usbdev,
> +			 context->rx_endpoint->bEndpointAddress),
>  		context->usb_rx_buf, sizeof(context->usb_rx_buf),
>  		usb_rx_callback, context,
>  		context->rx_endpoint->bInterval);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cf7e7362308491fa76f7de5d00e302fbbc583fde.1473758274.git.anchalj109%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


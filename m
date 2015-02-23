X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr1050840lbf.21.1424675774485;
        Sun, 22 Feb 2015 23:16:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.74 with SMTP id q10ls507255laq.43.gmail; Sun, 22 Feb
 2015 23:16:14 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr1068458lbb.11.1424675774067;
        Sun, 22 Feb 2015 23:16:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si602680wib.2.2015.02.22.23.16.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 23:16:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,629,1418079600"; 
   d="scan'208";a="100954162"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 08:16:13 +0100
Date: Mon, 23 Feb 2015 08:16:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4 4/6] Staging: emxx_udc: Replace
 custom printk micro ERR with dev_err
In-Reply-To: <65ad55db16d7829286383d9e37ad6f5456388918.1424645872.git.hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.02.1502230815560.2053@localhost6.localdomain6>
References: <cover.1424645871.git.hamohammed.sa@gmail.com> <65ad55db16d7829286383d9e37ad6f5456388918.1424645872.git.hamohammed.sa@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Haneen Mohammed wrote:

> This patch removes the other half of ERR micros that uses 
> "printk(KERN_ERR" and replace them with dev_err, to fix issue addressed 
> by checkpatch.pl.

micro -> macro here too

julia

> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index f33980c..bf4801d 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -808,7 +808,7 @@ static int _nbu2ss_ep0_out_transfer(
>  		return 0;		/* Short Packet Transfer End */
>  
>  	if (req->req.actual > req->req.length) {
> -		ERR(" *** Overrun Error\n");
> +		dev_err(udc->dev, " *** Overrun Error\n");
>  		return -EOVERFLOW;
>  	}
>  
> @@ -1026,8 +1026,8 @@ static int _nbu2ss_epn_out_transfer(
>  	}
>  
>  	if (req->req.actual > req->req.length) {
> -		ERR(" *** Overrun Error\n");
> -		ERR(" *** actual = %d, length = %d\n",
> +		dev_err(udc->dev, " *** Overrun Error\n");
> +		dev_err(udc->dev, " *** actual = %d, length = %d\n",
>  			req->req.actual, req->req.length);
>  		result = -EOVERFLOW;
>  	}
> @@ -1638,7 +1638,7 @@ static int std_req_get_status(struct nbu2ss_udc *udc)
>  		_nbu2ss_ep0_in_transfer(udc, &udc->ep[0], &udc->ep0_req);
>  
>  	} else {
> -		ERR("*** Error GET_STATUS\n");
> +		dev_err(udc->dev, "*** Error GET_STATUS\n");
>  	}
>  
>  	return result;
> @@ -2350,7 +2350,7 @@ static int _nbu2ss_enable_controller(struct nbu2ss_udc *udc)
>  		waitcnt++;
>  		udelay(1);	/* 1us wait */
>  		if (waitcnt == EPC_PLL_LOCK_COUNT) {
> -			ERR("*** Reset Cancel failed\n");
> +			dev_err(udc->dev, "*** Reset Cancel failed\n");
>  			return -EINVAL;
>  		}
>  	};
> @@ -2637,7 +2637,7 @@ static int nbu2ss_ep_enable(
>  	if ((udc->driver == NULL)
>  		|| (udc->gadget.speed == USB_SPEED_UNKNOWN)) {
>  
> -		ERR(" *** %s, udc !!\n", __func__);
> +		dev_err(udc->dev, " *** %s, udc !!\n", __func__);
>  		return -ESHUTDOWN;
>  	}
>  
> @@ -2778,7 +2778,7 @@ static int nbu2ss_ep_queue(
>  	}
>  
>  	if (unlikely(!udc->driver)) {
> -		ERR("%s, bogus device state %p\n", __func__, udc->driver);
> +		dev_err(udc->dev, "%s, bogus device state %p\n", __func__, udc->driver);
>  		return -ESHUTDOWN;
>  	}
>  
> @@ -2817,7 +2817,7 @@ static int nbu2ss_ep_queue(
>  
>  		result = _nbu2ss_start_transfer(udc, ep, req, FALSE);
>  		if (result < 0) {
> -			ERR(" *** %s, result = %d\n", __func__, result);
> +			dev_err(udc->dev, " *** %s, result = %d\n", __func__, result);
>  			list_del(&req->queue);
>  		} else if ((ep->epnum > 0) && (ep->direct == USB_DIR_OUT)) {
>  #ifdef USE_DMA
> @@ -3059,7 +3059,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
>  
>  	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
>  	if (udc == NULL) {
> -		ERR("%s, udc == NULL\n", __func__);
> +		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -3089,7 +3089,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
>  
>  	udc = container_of(pgadget, struct nbu2ss_udc, gadget);
>  	if (udc == NULL) {
> -		ERR("%s, udc == NULL\n", __func__);
> +		dev_err(&pgadget->dev, "%s, udc == NULL\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -3345,7 +3345,7 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
>  
>  	/* USB Function Controller Interrupt */
>  	if (status != 0) {
> -		ERR("request_irq(USB_UDC_IRQ_1) failed\n");
> +		dev_err(udc->dev, "request_irq(USB_UDC_IRQ_1) failed\n");
>  		goto cleanup1;
>  	}
>  
> @@ -3365,7 +3365,7 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
>  				udc);
>  
>  	if (status != 0) {
> -		ERR("request_irq(INT_VBUS) failed\n");
> +		dev_err(udc->dev, "request_irq(INT_VBUS) failed\n");
>  		goto cleanup1;
>  	}
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/65ad55db16d7829286383d9e37ad6f5456388918.1424645872.git.hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


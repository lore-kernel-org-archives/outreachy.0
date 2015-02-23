X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.7 with SMTP id n7mr1024794wix.0.1424676013837;
        Sun, 22 Feb 2015 23:20:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.68 with SMTP id k4ls453774lam.85.gmail; Sun, 22 Feb
 2015 23:20:13 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr1050564lbb.6.1424676013351;
        Sun, 22 Feb 2015 23:20:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r6si616477wix.0.2015.02.22.23.20.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 23:20:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,629,1418079600"; 
   d="scan'208";a="122924915"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 08:20:12 +0100
Date: Mon, 23 Feb 2015 08:20:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4 3/6] Staging: emxx_udc: Replace
 custom printk micro ERR with pr_err
In-Reply-To: <3f24e6248385205c51c93dfdd43f3b3f9caec152.1424645871.git.hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.02.1502230817210.2053@localhost6.localdomain6>
References: <cover.1424645871.git.hamohammed.sa@gmail.com> <3f24e6248385205c51c93dfdd43f3b3f9caec152.1424645871.git.hamohammed.sa@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Haneen Mohammed wrote:

> This patch removes half custom printk micros ERR and replace it with
> pr_err. pr_err used because no appropriate dev variable were found.  Issue addressed by checkpathc.pl.

micro -> macro

> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 56 ++++++++++++++++++-------------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index c9f5e5d..f33980c 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -115,7 +115,7 @@ static void _nbu2ss_dump_register(struct nbu2ss_udc *udc)

The following code appears to be in the function _nbu2ss_dump_register, 
which has a parameter of type nbu2ss_udc.  This parameter has a field 
struct device *dev; that you can use for dev_err.  This seems to apply in 
some other cases here.

>  	pr_info("=== %s()\n", __func__);
>  
>  	if (udc == NULL) {
> -		ERR("%s udc == NULL\n", __func__);
> +		pr_err("udc: %s udc == NULL\n", __func__);
>  		return;
>  	}
>  
> @@ -2258,7 +2258,7 @@ static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)
>  	u32	reg_dt;
>  
>  	if (!udc) {
> -		ERR("%s, bad param\n", __func__);
> +		pr_err("udc: %s, bad param\n", __func__);

You can't use dev_err here because udc is null.  Something else to watch 
out for.

julia

>  		return -EINVAL;
>  	}
>  
> @@ -2612,13 +2612,13 @@ static int nbu2ss_ep_enable(
>  	struct nbu2ss_udc	*udc;
>  
>  	if ((_ep == NULL) || (desc == NULL)) {
> -		ERR(" *** %s, bad param\n", __func__);
> +		pr_err("udc: *** %s, bad param\n", __func__);
>  		return -EINVAL;
>  	}
>  
>  	ep = container_of(_ep, struct nbu2ss_ep, ep);
>  	if ((ep == NULL) || (ep->udc == NULL)) {
> -		ERR(" *** %s, ep == NULL !!\n", __func__);
> +		pr_err("udc:  *** %s, ep == NULL !!\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -2626,7 +2626,7 @@ static int nbu2ss_ep_enable(
>  	if ((ep_type == USB_ENDPOINT_XFER_CONTROL)
>  		|| (ep_type == USB_ENDPOINT_XFER_ISOC)) {
>  
> -		ERR(" *** %s, bat bmAttributes\n", __func__);
> +		pr_err("udc:  *** %s, bat bmAttributes\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -2672,13 +2672,13 @@ static int nbu2ss_ep_disable(struct usb_ep *_ep)
>  	unsigned long		flags;
>  
>  	if (_ep == NULL) {
> -		ERR(" *** %s, bad param\n", __func__);
> +		pr_err("udc:  *** %s, bad param\n", __func__);
>  		return -EINVAL;
>  	}
>  
>  	ep = container_of(_ep, struct nbu2ss_ep, ep);
>  	if ((ep == NULL) || (ep->udc == NULL)) {
> -		ERR(" *** %s, ep == NULL !!\n", __func__);
> +		pr_err("udc:  *** %s, ep == NULL !!\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -2742,10 +2742,10 @@ static int nbu2ss_ep_queue(
>  	/* catch various bogus parameters */
>  	if ((_ep == NULL) || (_req == NULL)) {
>  		if (_ep == NULL)
> -			ERR("*** %s --- _ep == NULL\n", __func__);
> +			pr_err("udc: *** %s --- _ep == NULL\n", __func__);
>  
>  		if (_req == NULL)
> -			ERR("*** %s --- _req == NULL\n", __func__);
> +			pr_err("udc: *** %s --- _req == NULL\n", __func__);
>  
>  		return -EINVAL;
>  	}
> @@ -2756,13 +2756,13 @@ static int nbu2ss_ep_queue(
>  	     || !list_empty(&req->queue))) {
>  
>  		if (!_req->complete)
> -			ERR("*** %s --- !_req->complete\n", __func__);
> +			pr_err("udc: *** %s --- !_req->complete\n", __func__);
>  
>  		if (!_req->buf)
> -			ERR("*** %s --- !_req->buf\n", __func__);
> +			pr_err("udc: *** %s --- !_req->buf\n", __func__);
>  
>  		if (!list_empty(&req->queue))
> -			ERR("*** %s --- !list_empty(&req->queue)\n", __func__);
> +			pr_err("udc: *** %s --- !list_empty(&req->queue)\n", __func__);
>  
>  		return -EINVAL;
>  	}
> @@ -2849,13 +2849,13 @@ static int nbu2ss_ep_dequeue(
>  
>  	/* catch various bogus parameters */
>  	if ((_ep == NULL) || (_req == NULL)) {
> -		/* ERR("%s, bad param(1)\n", __func__); */
> +		/* pr_err("udc: %s, bad param(1)\n", __func__); */
>  		return -EINVAL;
>  	}
>  
>  	ep = container_of(_ep, struct nbu2ss_ep, ep);
>  	if (!ep) {
> -		ERR("%s, ep == NULL !!\n", __func__);
> +		pr_err("udc: %s, ep == NULL !!\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -2895,19 +2895,19 @@ static int nbu2ss_ep_set_halt(struct usb_ep *_ep, int value)
>  /*	INFO("=== %s()\n", __func__); */
>  
>  	if (!_ep) {
> -		ERR("%s, bad param\n", __func__);
> +		pr_err("udc: %s, bad param\n", __func__);
>  		return -EINVAL;
>  	}
>  
>  	ep = container_of(_ep, struct nbu2ss_ep, ep);
>  	if (!ep) {
> -		ERR("%s, bad ep\n", __func__);
> +		pr_err("udc: %s, bad ep\n", __func__);
>  		return -EINVAL;
>  	}
>  
>  	udc = ep->udc;
>  	if (!udc) {
> -		ERR(" *** %s, bad udc\n", __func__);
> +		pr_err("udc: *** %s, bad udc\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -2949,19 +2949,19 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
>  /*	INFO("=== %s()\n", __func__); */
>  
>  	if (!_ep) {
> -		ERR("%s, bad param\n", __func__);
> +		pr_err("udc: %s, bad param\n", __func__);
>  		return -EINVAL;
>  	}
>  
>  	ep = container_of(_ep, struct nbu2ss_ep, ep);
>  	if (!ep) {
> -		ERR("%s, bad ep\n", __func__);
> +		pr_err("udc: %s, bad ep\n", __func__);
>  		return -EINVAL;
>  	}
>  
>  	udc = ep->udc;
>  	if (!udc) {
> -		ERR("%s, bad udc\n", __func__);
> +		pr_err("udc: %s, bad udc\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -2997,19 +2997,19 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
>  /*	INFO("=== %s()\n", __func__); */
>  
>  	if (!_ep) {
> -		ERR("%s, bad param\n", __func__);
> +		pr_err("udc: %s, bad param\n", __func__);
>  		return;
>  	}
>  
>  	ep = container_of(_ep, struct nbu2ss_ep, ep);
>  	if (!_ep) {
> -		ERR("%s, bad ep\n", __func__);
> +		pr_err("udc: %s, bad ep\n", __func__);
>  		return;
>  	}
>  
>  	udc = ep->udc;
>  	if (!udc) {
> -		ERR("%s, bad udc\n", __func__);
> +		pr_err("udc: %s, bad udc\n", __func__);
>  		return;
>  	}
>  
> @@ -3053,7 +3053,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
>  /*	INFO("=== %s()\n", __func__); */
>  
>  	if (pgadget == NULL) {
> -		ERR("%s, bad param\n", __func__);
> +		pr_err("udc: %s, bad param\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -3083,7 +3083,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
>  /*	INFO("=== %s()\n", __func__); */
>  
>  	if (pgadget == NULL) {
> -		ERR("%s, bad param\n", __func__);
> +		pr_err("%s, bad param\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -3123,7 +3123,7 @@ static int nbu2ss_gad_set_selfpowered(struct usb_gadget *pgadget,
>  /*	INFO("=== %s()\n", __func__); */
>  
>  	if (pgadget == NULL) {
> -		ERR("%s, bad param\n", __func__);
> +		pr_err("udc: %s, bad param\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -3152,7 +3152,7 @@ static int nbu2ss_gad_vbus_draw(struct usb_gadget *pgadget, unsigned mA)
>  /*	INFO("=== %s()\n", __func__); */
>  
>  	if (pgadget == NULL) {
> -		ERR("%s, bad param\n", __func__);
> +		pr_err("udc: %s, bad param\n", __func__);
>  		return -EINVAL;
>  	}
>  
> @@ -3174,7 +3174,7 @@ static int nbu2ss_gad_pullup(struct usb_gadget *pgadget, int is_on)
>  /*	INFO("=== %s()\n", __func__); */
>  
>  	if (pgadget == NULL) {
> -		ERR("%s, bad param\n", __func__);
> +		pr_err("udc: %s, bad param\n", __func__);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3f24e6248385205c51c93dfdd43f3b3f9caec152.1424645871.git.hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


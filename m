X-GM-THRID: 4349090594816
X-Received: by 10.152.36.132 with SMTP id q4mr1968885laj.6.1425034808772;
        Fri, 27 Feb 2015 03:00:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.3.200 with SMTP id e8ls137757lae.65.gmail; Fri, 27 Feb
 2015 03:00:08 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr1928097lbb.24.1425034808285;
        Fri, 27 Feb 2015 03:00:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si92652wib.2.2015.02.27.03.00.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 03:00:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,659,1418079600"; 
   d="scan'208";a="123644282"
Received: from ip209.messe-nbg.customer.bisping.net (HELO hadrien.local) ([62.91.19.209])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 12:00:07 +0100
Date: Fri, 27 Feb 2015 11:59:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v8 2/5] Staging: emxx_udc: Replace
 custom printk macro ERR with pr_err
In-Reply-To: <1425033066-20762-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271158410.2668@hadrien>
References: <cover.1425030785.git.hamohammed.sa@gmail.com> <1425033066-20762-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 27 Feb 2015, Haneen Mohammed wrote:

> This patch removes half custom printk macros ERR and replace it with

Removing the macro would seem like remomving the definition.  Here you are
removing the uses.  That could be more clear.

> pr_err, for no appropriate struct device *dev field where found for dev_err.
> Issue addressed by checkpathc.pl.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
> v6: Justify the use of pr_err instead of dev_err.
>
>  drivers/staging/emxx_udc/emxx_udc.c | 56 ++++++++++++++++++-------------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index f2ddad3..094e018 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -115,7 +115,7 @@ static void _nbu2ss_dump_register(struct nbu2ss_udc *udc)
>  	pr_info("=== %s()\n", __func__);
>
>  	if (udc == NULL) {
> -		ERR("%s udc == NULL\n", __func__);
> +		pr_err("udc: %s udc == NULL\n", __func__);
>  		return;
>  	}
>
> @@ -2258,7 +2258,7 @@ static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)

Are you sure that there is no appropriate field in the nbu2ss_udc
structure?

julia

>  	u32	reg_dt;
>
>  	if (!udc) {
> -		ERR("%s, bad param\n", __func__);
> +		pr_err("udc: %s, bad param\n", __func__);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425033066-20762-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


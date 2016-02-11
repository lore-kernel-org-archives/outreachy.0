X-GM-THRID: 6249926489518637056
X-Received: by 10.28.128.204 with SMTP id b195mr1844956wmd.7.1455178611794;
        Thu, 11 Feb 2016 00:16:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.59.86 with SMTP id i83ls1008593wma.27.canary; Thu, 11 Feb
 2016 00:16:51 -0800 (PST)
X-Received: by 10.194.201.234 with SMTP id kd10mr5343948wjc.6.1455178611309;
        Thu, 11 Feb 2016 00:16:51 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c143si226738wmd.1.2016.02.11.00.16.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 00:16:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,429,1449529200"; 
   d="scan'208";a="202589943"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Feb 2016 09:16:27 +0100
Date: Thu, 11 Feb 2016 09:16:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace explicit
 NULL comparison with ! operator
In-Reply-To: <20160211070636.GA16318@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.10.1602110912590.2508@hadrien>
References: <20160211070636.GA16318@d830.WORKGROUP>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 10 Feb 2016, Alison Schofield wrote:

> Replace explicit NULL comparison with ! operator to simplify code.
>
> Found with Coccinelle:
> @@
> expression e;
> statement s0, s1;
> @@
>
> if (
> (
> + !
> e
> - == NULL
>  || ...
> )
>  ) s0 else s1
>
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 10 +++++-----
>  drivers/staging/vt6656/usbpipe.c  |  2 +-
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index a2f23ae..05f86ff 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -431,7 +431,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
>  	for (ii = 0; ii < priv->num_tx_context; ii++) {
>  		tx_context = kmalloc(sizeof(struct vnt_usb_send_context),
>  								GFP_KERNEL);
> -		if (tx_context == NULL)
> +		if (!tx_context)
>  			goto free_tx;
>
>  		priv->tx_context[ii] = tx_context;
> @@ -462,13 +462,13 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
>
>  		/* allocate URBs */
>  		rcb->urb = usb_alloc_urb(0, GFP_ATOMIC);
> -		if (rcb->urb == NULL) {
> +		if (!rcb->urb) {
>  			dev_err(&priv->usb->dev, "Failed to alloc rx urb\n");
>  			goto free_rx_tx;
>  		}
>
>  		rcb->skb = dev_alloc_skb(priv->rx_buf_sz);
> -		if (rcb->skb == NULL)
> +		if (!rcb->skb)
>  			goto free_rx_tx;
>
>  		rcb->in_use = false;
> @@ -479,13 +479,13 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
>  	}
>
>  	priv->interrupt_urb = usb_alloc_urb(0, GFP_ATOMIC);
> -	if (priv->interrupt_urb == NULL) {
> +	if (!priv->interrupt_urb) {
>  		dev_err(&priv->usb->dev, "Failed to alloc int urb\n");
>  		goto free_rx_tx;
>  	}
>
>  	priv->int_buf.data_buf = kmalloc(MAX_INTERRUPT_SIZE, GFP_KERNEL);

Nothing to do with your change, but there seems to be an inconsistncy
here.  Why is one allocation done with GFP_KERNEL and the other done with
GFP_ATOMIC?

GFP_ATOMIC is needed when the allocation is done with interrupts turned
off, because otherwise kmalloc may block, in case of insufficient memory,
and that could lead to a deadlock.

> -	if (priv->int_buf.data_buf == NULL) {
> +	if (!priv->int_buf.data_buf) {
>  		usb_free_urb(priv->interrupt_urb);
>  		goto free_rx_tx;
>  	}
> diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> index 351a99f..bec5baf 100644
> --- a/drivers/staging/vt6656/usbpipe.c
> +++ b/drivers/staging/vt6656/usbpipe.c
> @@ -210,7 +210,7 @@ int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
>  	struct urb *urb;
>
>  	urb = rcb->urb;

Another issue is here.  It's a bit strange to initialize a local variable,
and then decide that its value is invalid and then leave the function.
The initialization could be moved up to the declaration (same degree of
potential uselessness, but at least one less line), or moved after the
test.

julia

> -	if (rcb->skb == NULL) {
> +	if (!rcb->skb) {
>  		dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
>  		return status;
>  	}
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160211070636.GA16318%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>


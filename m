X-GM-THRID: 6250295934225219584
X-Received: by 10.28.128.204 with SMTP id b195mr769260wmd.7.1455303490002;
        Fri, 12 Feb 2016 10:58:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.168.5 with SMTP id r5ls422373lfe.29.gmail; Fri, 12 Feb 2016
 10:58:09 -0800 (PST)
X-Received: by 10.112.169.5 with SMTP id aa5mr497925lbc.12.1455303489269;
        Fri, 12 Feb 2016 10:58:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si167221wmy.2.2016.02.12.10.58.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 10:58:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,436,1449529200"; 
   d="scan'208";a="164519757"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 19:58:08 +0100
Date: Fri, 12 Feb 2016 19:58:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vt6656: move local var
 init into declaration
In-Reply-To: <1455302683-5119-1-git-send-email-amsfield22@gmail.com>
Message-ID: <alpine.DEB.2.10.1602121954390.2510@hadrien>
References: <20160212070014.GA13288@d830.WORKGROUP> <1455302683-5119-1-git-send-email-amsfield22@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 12 Feb 2016, Alison Schofield wrote:

> Improve readability by initializing local variables at declaration.
>
> In one instance, vnt_start_interrupt_urb_complete(), also use that
> local variable in subsequent switch.
>
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
> Changes in v2:
> - moved local variable initialization to declaration,
>   rather than after first exit.
> - cleaned up 2 additional instances in same file
> - modified commit message and changelog to match
>
>  drivers/staging/vt6656/usbpipe.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> index bec5baf..f27eb9a 100644
> --- a/drivers/staging/vt6656/usbpipe.c
> +++ b/drivers/staging/vt6656/usbpipe.c
> @@ -101,9 +101,9 @@ void vnt_control_in_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 *data)
>  static void vnt_start_interrupt_urb_complete(struct urb *urb)
>  {
>  	struct vnt_private *priv = urb->context;
> -	int status;
> +	int status = urb->status;
>
> -	switch (urb->status) {
> +	switch (status) {
>  	case 0:
>  	case -ETIMEDOUT:
>  		break;
> @@ -116,8 +116,6 @@ static void vnt_start_interrupt_urb_complete(struct urb *urb)
>  		break;
>  	}
>
> -	status = urb->status;
> -
>  	if (status != STATUS_SUCCESS) {

Not related to this patch, but this test is very unlikeable.
SUCCESS_STATUS is defined in the following (vt6656/device.h)

enum {
        STATUS_SUCCESS = 0,
        STATUS_FAILURE,
        STATUS_RESOURCES,
        STATUS_PENDING,
};

This is not at all the same kind of value as -ETIMEDOUT, etc.  The urb
status is something that is not set in this driver as well.  I guess is it
set in the USB library, where STATUS_SUCCESS is not known.  So status
should not be compared against this value.

julia

>  		priv->int_buf.in_use = false;
>
> @@ -207,9 +205,8 @@ static void vnt_submit_rx_urb_complete(struct urb *urb)
>  int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
>  {
>  	int status = 0;
> -	struct urb *urb;
> +	struct urb *urb = rcb->urb;
>
> -	urb = rcb->urb;
>  	if (!rcb->skb) {
>  		dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
>  		return status;
> @@ -269,15 +266,13 @@ int vnt_tx_context(struct vnt_private *priv,
>  		   struct vnt_usb_send_context *context)
>  {
>  	int status;
> -	struct urb *urb;
> +	struct urb *urb = context->urb;
>
>  	if (test_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags)) {
>  		context->in_use = false;
>  		return STATUS_RESOURCES;
>  	}
>
> -	urb = context->urb;
> -
>  	usb_fill_bulk_urb(urb,
>  			  priv->usb,
>  			  usb_sndbulkpipe(priv->usb, 3),
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455302683-5119-1-git-send-email-amsfield22%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


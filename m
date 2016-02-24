X-GM-THRID: 6254894706255200256
X-Received: by 10.194.62.69 with SMTP id w5mr5007402wjr.5.1456331355583;
        Wed, 24 Feb 2016 08:29:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.65.133 with SMTP id o127ls896835wma.2.canary; Wed, 24 Feb
 2016 08:29:14 -0800 (PST)
X-Received: by 10.28.158.216 with SMTP id h207mr2775180wme.4.1456331354696;
        Wed, 24 Feb 2016 08:29:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v197si1239248wmv.1.2016.02.24.08.29.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 08:29:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,494,1449529200"; 
   d="scan'208";a="204480473"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 17:29:14 +0100
Date: Wed, 24 Feb 2016 17:29:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Remove unnecessary
 macro
In-Reply-To: <20160224162549.GA3992@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602241729040.2904@hadrien>
References: <20160224162549.GA3992@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 24 Feb 2016, Amitoj Kaur Chawla wrote:

> Remove unnecessary macro SUBMIT_URB by replacing it with a direct call
> to usb_submit_urb()

Nice catch.

julia

>
> This change was made with the help of the following Coccinelle semantic
> patch:
>
> //<smpl>
> @@
> identifier f,g;
> @@
> * #define f(...) g(...)
> // </smpl>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x_usb.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> index 09b4b2c..602c3f3 100644
> --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> @@ -126,8 +126,6 @@
>  #include <linux/usb.h>
>  #include <linux/byteorder/generic.h>
>
> -#define SUBMIT_URB(u, f)  usb_submit_urb(u, f)
> -
>  #include "p80211types.h"
>  #include "p80211hdr.h"
>  #include "p80211mgmt.h"
> @@ -346,7 +344,7 @@ static int submit_rx_urb(hfa384x_t *hw, gfp_t memflags)
>  	result = -ENOLINK;
>  	if (!hw->wlandev->hwremoved &&
>  	    !test_bit(WORK_RX_HALT, &hw->usb_flags)) {
> -		result = SUBMIT_URB(&hw->rx_urb, memflags);
> +		result = usb_submit_urb(&hw->rx_urb, memflags);
>
>  		/* Check whether we need to reset the RX pipe */
>  		if (result == -EPIPE) {
> @@ -395,7 +393,7 @@ static int submit_tx_urb(hfa384x_t *hw, struct urb *tx_urb, gfp_t memflags)
>  	if (netif_running(netdev)) {
>  		if (!hw->wlandev->hwremoved &&
>  		    !test_bit(WORK_TX_HALT, &hw->usb_flags)) {
> -			result = SUBMIT_URB(tx_urb, memflags);
> +			result = usb_submit_urb(tx_urb, memflags);
>
>  			/* Test whether we need to reset the TX pipe */
>  			if (result == -EPIPE) {
> @@ -2925,7 +2923,7 @@ static void hfa384x_usbctlxq_run(hfa384x_t *hw)
>  		hw->ctlx_urb.transfer_flags |= USB_QUEUE_BULK;
>
>  		/* Now submit the URB and update the CTLX's state */
> -		result = SUBMIT_URB(&hw->ctlx_urb, GFP_ATOMIC);
> +		result = usb_submit_urb(&hw->ctlx_urb, GFP_ATOMIC);
>  		if (result == 0) {
>  			/* This CTLX is now running on the active queue */
>  			head->state = CTLX_REQ_SUBMITTED;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160224162549.GA3992%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>


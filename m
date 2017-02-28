X-GM-THRID: 6392252135167229952
X-Received: by 10.46.87.27 with SMTP id l27mr534144ljb.28.1488313503089;
        Tue, 28 Feb 2017 12:25:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.89 with SMTP id 25ls248182lju.4.gmail; Tue, 28 Feb 2017
 12:25:02 -0800 (PST)
X-Received: by 10.46.92.131 with SMTP id q125mr543144ljb.15.1488313502003;
        Tue, 28 Feb 2017 12:25:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si1320437wmd.0.2017.02.28.12.25.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 12:25:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,221,1484002800"; 
   d="scan'208";a="215067135"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 21:25:01 +0100
Date: Tue, 28 Feb 2017 21:25:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging:rtl8192u: Check memory
 allocation
In-Reply-To: <20170228200257.GA14816@fireworks>
Message-ID: <alpine.DEB.2.20.1702282115210.2171@hadrien>
References: <20170228200257.GA14816@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 28 Feb 2017, Georgiana Rodica Chelu wrote:

> Check if the allocation is not successful and
> return the error code -ENOMEM.
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index b631990..04025b6 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -1689,9 +1689,13 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
>  #ifndef JACKSON_NEW_RX
>  	for (i = 0; i < (MAX_RX_URB + 1); i++) {
>  		priv->rx_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
> +		if (!priv->rx_urb[i])
> +			return -ENOMEM;
>
>  		priv->rx_urb[i]->transfer_buffer =
>  			kmalloc(RX_URB_SIZE, GFP_KERNEL);
> +		if (!priv->rx_urb[i]->transfer_buffer)
> +			return -ENOMEM;

At this point, the usb_alloc_urb has succeeded but the kmalloc has failed.
The context won't know which of these failed, or whether the failure came
from other places in the function, so one can assume that it is not going
to try to continue.  Thus, this code needs to clean up after itself.
An example of such cleanup code is near the end of the function with the
code:

        priv->pp_rxskb = kcalloc(MAX_RX_URB, sizeof(struct sk_buff *),
                                 GFP_KERNEL);
	if (!priv->pp_rxskb) {
                kfree(priv->rx_urb);
		...

In your case there are several issues to consider:

* how to free the result of the kmalloc before the ifdef
* how to free the result of usb_alloc_urb (you can find examples in other
kernel files)
* how to free the things allocated on previous iterations of the for loop
* what to do about the various dangling pointers in the priv structure

Note that the current error handling code shown abover is not complete,
because it doesn't take into account the things defined in the for loop.

A common pattern is to not put the error handling code directly under the
error detecting if, but rather to have a goto into a sequence of labels at
the end of the function that free all of the things allocated up to a give
point.  The typical strategy is to free things in the opposite of the
order in which they are allocated.  You can find many examples of thisin
the kernel.

Be careful, because a lot of changes are required.

julia


>
>  		priv->rx_urb[i]->transfer_buffer_length = RX_URB_SIZE;
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170228200257.GA14816%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>


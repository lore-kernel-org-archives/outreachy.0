X-GM-THRID: 6392252135167229952
X-Received: by 10.25.193.213 with SMTP id r204mr1319727lff.24.1488408391142;
        Wed, 01 Mar 2017 14:46:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls180644lja.32.gmail; Wed, 01 Mar 2017
 14:46:30 -0800 (PST)
X-Received: by 10.46.84.69 with SMTP id y5mr1478879ljd.21.1488408390613;
        Wed, 01 Mar 2017 14:46:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si587984wmn.2.2017.03.01.14.46.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 14:46:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,227,1484002800"; 
   d="scan'208";a="215234509"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2017 23:46:29 +0100
Date: Wed, 1 Mar 2017 23:46:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging:rtl8192u: Check memory
 allocation
In-Reply-To: <20170301213000.GA14437@fireworks>
Message-ID: <alpine.DEB.2.20.1703012337020.2050@hadrien>
References: <20170301213000.GA14437@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, Georgiana Rodica Chelu wrote:

> Check if the allocation is not successful and
> return the error code -ENOMEM.

I see two issues.

First, in the JACKSON_NEW_RX code you are calling the freeing functions on
an array that may not be fully initialized.  kfree and usb_free_urb will
just return immediately if a NULL pointer is provided as an argument, so
things are partially OK. But actually priv->rx_urb[i] will not be NULL in
the uninitialized case, because kmalloc was used.  Kmalloc allocatesmemory
but doesn't zero it.  For that you would need kzalloc.

Then in the JACKSON_NEW_RX ifdef of rtl8192_usb_deleteendpoints, it could
be that priv->rx_urb[i] is NULL for some values of i, which will give a
NULL pointer dereference in priv->rx_urb[i]->transfer_buffer.  You may as
well test for a NULL value and break out of the loop.  But be careful,
because it could be that the usb_alloc_urb succeeded and the subsequent
kmalloc to initialize priv->rx_urb[i]->transfer_buffer failed.

Finally, at the end of the init function, the error handling code that is
present there is not sufficient if either of the previous ifdefs is
satisfied.

julia

>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> ---
>
> Changes in v2:
>         - use a goto pattern to handle the allocation fails
> 	- use exiting a function to free the memory in case of fail
> 	- move the free function above the initialization
>
>  drivers/staging/rtl8192u/r8192U_core.c | 109 ++++++++++++++++++---------------
>  1 file changed, 60 insertions(+), 49 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index b631990..08d7e70 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -1677,6 +1677,56 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
>  	return -1;
>  }
>
> +#ifdef THOMAS_BEACON
> +static void rtl8192_usb_deleteendpoints(struct net_device *dev)
> +{
> +	int i;
> +	struct r8192_priv *priv = ieee80211_priv(dev);
> +
> +	if (priv->rx_urb) {
> +		for (i = 0; i < (MAX_RX_URB + 1); i++) {
> +			usb_kill_urb(priv->rx_urb[i]);
> +			usb_free_urb(priv->rx_urb[i]);
> +		}
> +		kfree(priv->rx_urb);
> +		priv->rx_urb = NULL;
> +	}
> +	kfree(priv->oldaddr);
> +	priv->oldaddr = NULL;
> +
> +	kfree(priv->pp_rxskb);
> +	priv->pp_rxskb = NULL;
> +}
> +#else
> +void rtl8192_usb_deleteendpoints(struct net_device *dev)
> +{
> +	int i;
> +	struct r8192_priv *priv = ieee80211_priv(dev);
> +
> +#ifndef JACKSON_NEW_RX
> +
> +	if (priv->rx_urb) {
> +		for (i = 0; i < (MAX_RX_URB + 1); i++) {
> +			usb_kill_urb(priv->rx_urb[i]);
> +			kfree(priv->rx_urb[i]->transfer_buffer);
> +			usb_free_urb(priv->rx_urb[i]);
> +		}
> +		kfree(priv->rx_urb);
> +		priv->rx_urb = NULL;
> +	}
> +#else
> +	kfree(priv->rx_urb);
> +	priv->rx_urb = NULL;
> +	kfree(priv->oldaddr);
> +	priv->oldaddr = NULL;
> +
> +	kfree(priv->pp_rxskb);
> +	priv->pp_rxskb = 0;
> +
> +#endif
> +}
> +#endif
> +
>  static short rtl8192_usb_initendpoints(struct net_device *dev)
>  {
>  	struct r8192_priv *priv = ieee80211_priv(dev);
> @@ -1689,9 +1739,13 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
>  #ifndef JACKSON_NEW_RX
>  	for (i = 0; i < (MAX_RX_URB + 1); i++) {
>  		priv->rx_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
> +		if(!priv->rx_urb[i])
> +			goto exit;
>
>  		priv->rx_urb[i]->transfer_buffer =
>  			kmalloc(RX_URB_SIZE, GFP_KERNEL);
> +		if(!priv->rx_urb[i]->transfer_buffer)
> +			goto exit;
>
>  		priv->rx_urb[i]->transfer_buffer_length = RX_URB_SIZE;
>  	}
> @@ -1704,6 +1758,9 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
>
>  		priv->rx_urb[16] = usb_alloc_urb(0, GFP_KERNEL);
>  		priv->oldaddr = kmalloc(16, GFP_KERNEL);
> +		if(!priv->oldaddr)
> +			goto exit;
> +
>  		oldaddr = priv->oldaddr;
>  		align = ((long)oldaddr) & 3;
>  		if (align) {
> @@ -1732,57 +1789,11 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
>
>  	netdev_dbg(dev, "End of initendpoints\n");
>  	return 0;
> -}
> -
> -#ifdef THOMAS_BEACON
> -static void rtl8192_usb_deleteendpoints(struct net_device *dev)
> -{
> -	int i;
> -	struct r8192_priv *priv = ieee80211_priv(dev);
> -
> -	if (priv->rx_urb) {
> -		for (i = 0; i < (MAX_RX_URB + 1); i++) {
> -			usb_kill_urb(priv->rx_urb[i]);
> -			usb_free_urb(priv->rx_urb[i]);
> -		}
> -		kfree(priv->rx_urb);
> -		priv->rx_urb = NULL;
> -	}
> -	kfree(priv->oldaddr);
> -	priv->oldaddr = NULL;
> -
> -	kfree(priv->pp_rxskb);
> -	priv->pp_rxskb = NULL;
> -}
> -#else
> -void rtl8192_usb_deleteendpoints(struct net_device *dev)
> -{
> -	int i;
> -	struct r8192_priv *priv = ieee80211_priv(dev);
> -
> -#ifndef JACKSON_NEW_RX
>
> -	if (priv->rx_urb) {
> -		for (i = 0; i < (MAX_RX_URB + 1); i++) {
> -			usb_kill_urb(priv->rx_urb[i]);
> -			kfree(priv->rx_urb[i]->transfer_buffer);
> -			usb_free_urb(priv->rx_urb[i]);
> -		}
> -		kfree(priv->rx_urb);
> -		priv->rx_urb = NULL;
> -	}
> -#else
> -	kfree(priv->rx_urb);
> -	priv->rx_urb = NULL;
> -	kfree(priv->oldaddr);
> -	priv->oldaddr = NULL;
> -
> -	kfree(priv->pp_rxskb);
> -	priv->pp_rxskb = 0;
> -
> -#endif
> +exit:
> +	rtl8192_usb_deleteendpoints(dev);
> +	return -ENOMEM;
>  }
> -#endif
>
>  static void rtl8192_update_ratr_table(struct net_device *dev);
>  static void rtl8192_link_change(struct net_device *dev)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170301213000.GA14437%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>


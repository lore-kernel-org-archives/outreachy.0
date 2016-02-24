X-GM-THRID: 6254799821931020288
X-Received: by 10.25.17.25 with SMTP id g25mr2410752lfi.8.1456310718904;
        Wed, 24 Feb 2016 02:45:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.215.1 with SMTP id o1ls50799wmg.20.gmail; Wed, 24 Feb 2016
 02:45:18 -0800 (PST)
X-Received: by 10.194.85.169 with SMTP id i9mr4728861wjz.4.1456310718471;
        Wed, 24 Feb 2016 02:45:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v197si1192350wmv.1.2016.02.24.02.45.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 02:45:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,493,1449529200"; 
   d="scan'208";a="204425917"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 11:45:18 +0100
Date: Wed, 24 Feb 2016 11:45:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Clean up tests if
 NULL returned on failure
In-Reply-To: <1456309055-6392-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602241144590.2149@localhost6.localdomain6>
References: <1456309055-6392-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 24 Feb 2016, Bhumika Goyal wrote:

> Some functions return Null as their return value on failure. !x is 
> generally preferred over x==NULL or NULL==x. So make use of !x if 
> the value returned on failure is NULL.
> Done using coccinelle:
> @@
> expression e;
> statement S;
> @@
> e = \(kmalloc\|devm_kzalloc\|kmalloc_array
>      \|devm_ioremap\|usb_alloc_urb\|alloc_netdev\)(...);
> - if(e==NULL)
> + if(!e)
>   S
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
>  drivers/staging/rtl8192u/r8192U_core.c            | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 9dfde07..879c413 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -1289,7 +1289,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	payload = skb->data + hdrlen;
>  	//ethertype = (payload[6] << 8) | payload[7];
>  	rxb = kmalloc(sizeof(struct ieee80211_rxb), GFP_ATOMIC);
> -	if (rxb == NULL)
> +	if (!rxb)
>  	{
>  		IEEE80211_DEBUG(IEEE80211_DL_ERR,"%s(): kmalloc rxb error\n",__func__);

As in the previous case, this message is not needed.

julia

>  		goto rx_dropped;
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 3a93218..849a95e 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -1732,7 +1732,7 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
>  
>  	priv->rx_urb = kmalloc(sizeof(struct urb *) * (MAX_RX_URB + 1),
>  			       GFP_KERNEL);
> -	if (priv->rx_urb == NULL)
> +	if (!priv->rx_urb)
>  		return -ENOMEM;
>  
>  #ifndef JACKSON_NEW_RX
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456309055-6392-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


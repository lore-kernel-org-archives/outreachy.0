X-GM-THRID: 6254962790992183296
X-Received: by 10.28.63.19 with SMTP id m19mr867wma.0.1456347631139;
        Wed, 24 Feb 2016 13:00:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.15.33 with SMTP id e33ls615149lfi.14.gmail; Wed, 24 Feb
 2016 13:00:30 -0800 (PST)
X-Received: by 10.112.151.240 with SMTP id ut16mr5207563lbb.16.1456347630006;
        Wed, 24 Feb 2016 13:00:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w197si91wmw.3.2016.02.24.13.00.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 13:00:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,494,1449529200"; 
   d="scan'208";a="204505272"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 22:00:29 +0100
Date: Wed, 24 Feb 2016 22:00:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Make return of 0
 explicit
In-Reply-To: <20160224205043.GA23454@Karyakshetra>
Message-ID: <alpine.DEB.2.02.1602242156110.2072@localhost6.localdomain6>
References: <20160224205043.GA23454@Karyakshetra>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 25 Feb 2016, Bhaktipriya Shridhar wrote:

> Delete unnecessary local variable whose value is always 0 and that hides
> the fact that the result is always 0.
> 
> The following Coccinelle script was used:
> 
> @@
> identifier ret; expression e;
> type T;
> @@
> (
> - T ret;
> |
> - T ret = 0;
> )
> ...
> -ret = 0;
> ... when != ret = e
> return
> - ret
> + 0
> ;
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8712/xmit_linux.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
> index adb51f0..9d6fa6b 100644
> --- a/drivers/staging/rtl8712/xmit_linux.c
> +++ b/drivers/staging/rtl8712/xmit_linux.c
> @@ -163,19 +163,15 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
>  	struct xmit_frame *pxmitframe = NULL;
>  	struct _adapter *padapter = netdev_priv(pnetdev);
>  	struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
> -	int ret = 0;
> 
>  	if (!r8712_if_up(padapter)) {
> -		ret = 0;
>  		goto _xmit_entry_drop;
>  	}
>  	pxmitframe = r8712_alloc_xmitframe(pxmitpriv);
>  	if (!pxmitframe) {
> -		ret = 0;
>  		goto _xmit_entry_drop;
>  	}
>  	if ((!r8712_update_attrib(padapter, pkt, &pxmitframe->attrib))) {
> -		ret = 0;
>  		goto _xmit_entry_drop;
>  	}
>  	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_TX);

There is still a return ret here, so this code should not have compiled.

I'm not sure why the semantic patch didn't do the right thing.

julia

> @@ -193,5 +189,5 @@ _xmit_entry_drop:
>  		r8712_free_xmitframe(pxmitpriv, pxmitframe);
>  	pxmitpriv->tx_drop++;
>  	dev_kfree_skb_any(pkt);
> -	return ret;
> +	return 0;
>  }
> --
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160224205043.GA23454%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
> 


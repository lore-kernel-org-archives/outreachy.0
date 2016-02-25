X-GM-THRID: 6254962790992183296
X-Received: by 10.28.63.149 with SMTP id m143mr13049wma.0.1456396040517;
        Thu, 25 Feb 2016 02:27:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.0.144 with SMTP id 138ls62803lfa.19.gmail; Thu, 25 Feb 2016
 02:27:19 -0800 (PST)
X-Received: by 10.112.16.34 with SMTP id c2mr5457467lbd.19.1456396039879;
        Thu, 25 Feb 2016 02:27:19 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w10si92211wmw.3.2016.02.25.02.27.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 02:27:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="165935667"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 11:27:19 +0100
Date: Thu, 25 Feb 2016 11:27:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Make return of
 0 explicit
In-Reply-To: <20160225102505.GA27359@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1602251126240.2708@hadrien>
References: <20160225102505.GA27359@Karyakshetra>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 25 Feb 2016, Bhaktipriya Shridhar wrote:

> Delete unnecessary local variable whose value is always 0 and
> return 0 as the result.
> The following Coccinelle script was used:
>
> @@
> identifier ret; expression E;
> type T;
> @@
> (
> - T ret;
> |
> - T ret = 0;
> )
>
> ... when != \(ret=E
> \|ret--\|ret++\|--ret\|++ret\|ret-=E\|ret+=E\|ret|=E\|ret&=E\)
> (
> ?-ret = 0;
> )
> ... when != \(ret=E
> \|ret--\|ret++\|--ret\|++ret\|ret-=E\|ret+=E\|ret|=E\|ret&=E\)
> (
> return
> - ret
> + 0
> ;
> )
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
>  -Changed Coccinelle script to remove all occurrences of the variable
>  and replace every return associated with the variable with return 0

Since you have made a change, it would be v3.

It is also nice to leave a blank line after the message, so that it can be
seen more easily.

julia

>  drivers/staging/rtl8712/xmit_linux.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
> index adb51f0..8c15308 100644
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
> @@ -187,11 +183,11 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
>  	}
>  	pxmitpriv->tx_pkts++;
>  	pxmitpriv->tx_bytes += pxmitframe->attrib.last_txcmdsz;
> -	return ret;
> +	return 0;
>  _xmit_entry_drop:
>  	if (pxmitframe)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160225102505.GA27359%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>


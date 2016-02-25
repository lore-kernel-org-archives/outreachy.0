X-GM-THRID: 6254962790992183296
X-Received: by 10.194.19.195 with SMTP id h3mr5450721wje.1.1456395466496;
        Thu, 25 Feb 2016 02:17:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.148.9 with SMTP id w9ls115933wmd.26.gmail; Thu, 25 Feb 2016
 02:17:45 -0800 (PST)
X-Received: by 10.28.128.204 with SMTP id b195mr274804wmd.7.1456395465770;
        Thu, 25 Feb 2016 02:17:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c143si94351wmd.1.2016.02.25.02.17.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 02:17:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,497,1449529200"; 
   d="scan'208";a="204576963"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 11:17:45 +0100
Date: Thu, 25 Feb 2016 11:17:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Make return of
 0 explicit
In-Reply-To: <20160225101549.GA27308@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1602251117160.2708@hadrien>
References: <20160225101549.GA27308@Karyakshetra>
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

Good job on the semantic patch, but you didn't explain v2.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160225101549.GA27308%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>


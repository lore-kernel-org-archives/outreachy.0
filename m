X-GM-THRID: 6388168612914397184
X-Received: by 10.28.31.4 with SMTP id f4mr311341wmf.17.1487363218147;
        Fri, 17 Feb 2017 12:26:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.206 with SMTP id 197ls252064ljj.39.gmail; Fri, 17 Feb
 2017 12:26:57 -0800 (PST)
X-Received: by 10.46.78.9 with SMTP id c9mr938849ljb.20.1487363217385;
        Fri, 17 Feb 2017 12:26:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si218413wmf.0.2017.02.17.12.26.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 12:26:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,173,1484002800"; 
   d="scan'208";a="261008308"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2017 21:26:56 +0100
Date: Fri, 17 Feb 2017 21:26:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Larry Finger <Larry.Finger@lwfinger.net>, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8712: Remove unnecessary
 parentheses.
In-Reply-To: <58a75580.c627620a.da3ab.f2da@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702172125500.2118@hadrien>
References: <cover.1487359493.git.varshar186@gmail.com> <58a75580.c627620a.da3ab.f2da@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, Varsha Rao wrote:

> Removed unnecessary parentheses around pointers to fix the following checkpatch

The word "checkpatch" is perhaps within 80 characters but just barely.
Try to be shorter per line in commit messages, because they will be
slightly indented in the git history.

julia

> issues:
>
> CHECK: Unnecessary parentheses around padapter->xmitpriv
> CHECK: Unnecessary parentheses around padapter->recvpriv
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/rtl8712/os_intfs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index cbe4de0..5638fb6 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -185,8 +185,8 @@ static int r871x_net_set_mac_address(struct net_device *pnetdev, void *p)
>  static struct net_device_stats *r871x_net_get_stats(struct net_device *pnetdev)
>  {
>  	struct _adapter *padapter = netdev_priv(pnetdev);
> -	struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
> -	struct recv_priv *precvpriv = &(padapter->recvpriv);
> +	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
> +	struct recv_priv *precvpriv = &padapter->recvpriv;
>
>  	padapter->stats.tx_packets = pxmitpriv->tx_pkts;
>  	padapter->stats.rx_packets = precvpriv->rx_pkts;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58a75580.c627620a.da3ab.f2da%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>


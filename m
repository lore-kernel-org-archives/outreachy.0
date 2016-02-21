X-GM-THRID: 6253706030519156736
X-Received: by 10.112.189.104 with SMTP id gh8mr2747436lbc.12.1456057507777;
        Sun, 21 Feb 2016 04:25:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.70 with SMTP id l67ls247648lfi.3.gmail; Sun, 21 Feb 2016
 04:25:07 -0800 (PST)
X-Received: by 10.112.157.164 with SMTP id wn4mr2801114lbb.5.1456057507266;
        Sun, 21 Feb 2016 04:25:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c143si815330wmd.1.2016.02.21.04.25.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 04:25:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,480,1449529200"; 
   d="scan'208";a="165441102"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 13:25:05 +0100
Date: Sun, 21 Feb 2016 07:25:03 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Prefer using
 kmalloc_array
In-Reply-To: <20160221113352.GA28141@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1602210724210.2782@hadrien>
References: <20160221113352.GA28141@Karyakshetra>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 21 Feb 2016, Bhaktipriya Shridhar wrote:

> Use kmalloc_array instead of kmalloc for arrays to prevent integer
> overflows.

No integer overflow is possible here, because the values involved are
small constants.  Greg has preferred to keep kmalloc in this case.

julia

> This was done using Coccinelle:
> @@
> expression e1, e2;
> constant C;
> type t;
> @@
> (
> - kmalloc(sizeof(e1)*e2, C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(e1), C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(t), C)
> + kmalloc_array(e2, sizeof(t), C)
> |
> - kmalloc(sizeof(t)*e2, C)
> + kmalloc_array(e2, sizeof(t), C)
> )
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 3a93218..9d1b84c 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -1730,8 +1730,8 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
>  {
>  	struct r8192_priv *priv = ieee80211_priv(dev);
>
> -	priv->rx_urb = kmalloc(sizeof(struct urb *) * (MAX_RX_URB + 1),
> -			       GFP_KERNEL);
> +	priv->rx_urb = kmalloc_array((MAX_RX_URB + 1), sizeof(struct urb *),
> +				     GFP_KERNEL);
>  	if (priv->rx_urb == NULL)
>  		return -ENOMEM;
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221113352.GA28141%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6252706345988915200
X-Received: by 10.28.48.88 with SMTP id w85mr2174282wmw.5.1456259660768;
        Tue, 23 Feb 2016 12:34:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.125.195 with SMTP id y186ls716592wmc.6.canary; Tue, 23 Feb
 2016 12:34:20 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr2189421wmg.6.1456259660229;
        Tue, 23 Feb 2016 12:34:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e130si1208116wme.2.2016.02.23.12.34.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:34:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,491,1449529200"; 
   d="scan'208";a="204353068"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 21:34:19 +0100
Date: Tue, 23 Feb 2016 21:34:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Replace explicit
 NULL comparison
In-Reply-To: <20160218185430.GA3067@Karyakshetra>
Message-ID: <alpine.DEB.2.02.1602232130500.2040@localhost6.localdomain6>
References: <20160218185430.GA3067@Karyakshetra>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 19 Feb 2016, Bhaktipriya Shridhar wrote:

> Replace explicit NULL comparison with ! operator.
> Found with Coccinelle.
> 
> @@
> expression e;
> @@
> - e == NULL
> + !e
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8712/xmit_linux.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
> index d398183..f8866d7 100644
> --- a/drivers/staging/rtl8712/xmit_linux.c
> +++ b/drivers/staging/rtl8712/xmit_linux.c
> @@ -131,7 +131,7 @@ int r8712_xmit_resource_alloc(struct _adapter *padapter,
> 
>  	for (i = 0; i < 8; i++) {
>  		pxmitbuf->pxmit_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
> -		if (pxmitbuf->pxmit_urb[i] == NULL) {
> +		if (!pxmitbuf->pxmit_urb[i]) {
>  			netdev_err(padapter->pnetdev, "pxmitbuf->pxmit_urb[i] == NULL\n");
>  			return _FAIL;
>  		}
> @@ -171,7 +171,7 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
>  		goto _xmit_entry_drop;
>  	}
>  	pxmitframe = r8712_alloc_xmitframe(pxmitpriv);
> -	if (pxmitframe == NULL) {
> +	if (!pxmitframe) {
>  		ret = 0;
>  		goto _xmit_entry_drop;
>  	}

Nothing to do with your change, but it is strange that this function 
always returns 0.  This function is stored in a ndo_start_xmit field in a 
net_device_ops structure.  There should be many other such functions in 
the kernel.  It could be interesting to see in what cases they fail, and 
what value they return in these cases.  Another approach could be to use 
git blame on the lines that set ret, and see if the value was changed at 
some point.

julia

> --
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160218185430.GA3067%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
> 


X-GM-THRID: 6251161839379415040
X-Received: by 10.194.216.3 with SMTP id om3mr1276133wjc.7.1455466081123;
        Sun, 14 Feb 2016 08:08:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.80.80 with SMTP id e77ls518837lfb.16.gmail; Sun, 14 Feb
 2016 08:08:00 -0800 (PST)
X-Received: by 10.25.163.210 with SMTP id m201mr1279864lfe.8.1455466080543;
        Sun, 14 Feb 2016 08:08:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v197si385856wmv.1.2016.02.14.08.08.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 08:08:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,446,1449529200"; 
   d="scan'208";a="203053495"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 17:07:59 +0100
Date: Sun, 14 Feb 2016 17:07:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8188eu: core: Remove
 NULL test before vfree
In-Reply-To: <0268938371b2973ed55cf58c884abc5b0ce6e2bb.1455461125.git.bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602141707260.2066@localhost6.localdomain6>
References: <cover.1455461124.git.bhumirks@gmail.com> <0268938371b2973ed55cf58c884abc5b0ce6e2bb.1455461125.git.bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 14 Feb 2016, Bhumika Goyal wrote:

> The function vfree test whether the argument is NULL and return
> immediately. SO NULL test is not needed before vfree.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_xmit.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> index d5ce1e2..2a419459 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> @@ -247,11 +247,9 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
>  		pxmitbuf++;
>  	}
>  
> -	if (pxmitpriv->pallocated_frame_buf)
> -		vfree(pxmitpriv->pallocated_frame_buf);
> +	vfree(pxmitpriv->pallocated_frame_buf);
>  
> -	if (pxmitpriv->pallocated_xmitbuf)
> -		vfree(pxmitpriv->pallocated_xmitbuf);
> +	vfree(pxmitpriv->pallocated_xmitbuf);

It's a minor issue, but maybe the blank line isn't needed between the 
calls anymore either.

julia

>  
>  	/*  free xmit extension buff */
>  	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmit_extbuf;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0268938371b2973ed55cf58c884abc5b0ce6e2bb.1455461125.git.bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


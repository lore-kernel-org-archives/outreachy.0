X-GM-THRID: 10218275602432
X-Received: by 10.194.53.225 with SMTP id e1mr6159368wjp.4.1427576488626;
        Sat, 28 Mar 2015 14:01:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.206 with SMTP id l14ls45626laa.16.gmail; Sat, 28 Mar
 2015 14:01:28 -0700 (PDT)
X-Received: by 10.112.25.7 with SMTP id y7mr6022206lbf.21.1427576488113;
        Sat, 28 Mar 2015 14:01:28 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si351323wib.2.2015.03.28.14.01.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 28 Mar 2015 14:01:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,485,1422918000"; 
   d="scan'208";a="107497268"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Mar 2015 22:01:27 +0100
Date: Sat, 28 Mar 2015 22:01:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: r8192U_core: Remove unnecessary
 check
In-Reply-To: <1427576004-22684-1-git-send-email-ciorneiioana@gmail.com>
Message-ID: <alpine.DEB.2.02.1503282200250.1969@localhost6.localdomain6>
References: <1427576004-22684-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 28 Mar 2015, Ioana Ciornei wrote:

> Remove unnecessary check since kfree() handles NULL pointers fine.
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 8834c23..bce44ba 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -1724,10 +1724,8 @@ static void rtl8192_usb_deleteendpoints(struct net_device *dev)
>  	}
>  	kfree(priv->oldaddr);
>  	priv->oldaddr = NULL;
> -	if (priv->pp_rxskb) {
> -		kfree(priv->pp_rxskb);
> -		priv->pp_rxskb = NULL;
> -	}
> +	kfree(priv->pp_rxskb);
> +	priv->pp_rxskb = NULL;
>  }
>  #else
>  void rtl8192_usb_deleteendpoints(struct net_device *dev)
> @@ -1752,11 +1750,8 @@ void rtl8192_usb_deleteendpoints(struct net_device *dev)
>  	priv->rx_urb = NULL;
>  	kfree(priv->oldaddr);
>  	priv->oldaddr = NULL;
> -	if (priv->pp_rxskb) {
> -		kfree(priv->pp_rxskb);
> -		priv->pp_rxskb = 0;
> -
> -	}
> +	kfree(priv->pp_rxskb);
> +	priv->pp_rxskb = 0;

I guess it should be a separate change, but since priv->pp_rxskb is an 
argument to kfree it presumably has pointer type, and thus 0 should be 
NULL like in the other assignments above.

julia


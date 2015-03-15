X-GM-THRID: 8361998286848
X-Received: by 10.50.55.102 with SMTP id r6mr80452545igp.1.1426403280681;
        Sun, 15 Mar 2015 00:08:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.198 with SMTP id l6ls670163igx.29.gmail; Sun, 15 Mar
 2015 00:08:00 -0700 (PDT)
X-Received: by 10.43.106.211 with SMTP id dv19mr48040519icc.33.1426403280450;
        Sun, 15 Mar 2015 00:08:00 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b7si582637igl.1.2015.03.15.00.07.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 15 Mar 2015 00:08:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,403,1422918000"; 
   d="scan'208";a="103384030"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Mar 2015 08:07:57 +0100
Date: Sun, 15 Mar 2015 08:07:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Supriya Karanth <iskaranth@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: remove return from
 end of void function
In-Reply-To: <1426390972-31372-1-git-send-email-iskaranth@gmail.com>
Message-ID: <alpine.DEB.2.02.1503150805370.2070@localhost6.localdomain6>
References: <1426390972-31372-1-git-send-email-iskaranth@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 15 Mar 2015, Supriya Karanth wrote:

> This patch removes the return statement at the end of a void
> function as it is not necessary.
> 
> found by checkpatch.pl: WARNING: void function return statements
> are not generally useful
> 
> changes made using coccinelle script:
> 
> @@
> @@
> 
> ... when != if (...) return;
>     when != if (...) { ... return;}
> -return;

You can try

@@
expression e;
@@

... when != true e
- return;

You will still get false positives in loops and switces, but this should 
let you get more results.  The != true means that you don't go through th 
then branch of an if, ie no expression is ever considred to be true.

julia


> 
> Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 8f7a321..6f89939 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -827,7 +827,6 @@ void rtl8192_rtx_disable(struct net_device *dev)
>  		netdev_warn(dev, "skb_queue not empty\n");
>  
>  	skb_queue_purge(&priv->skb_queue);
> -	return;
>  }
>  
>  inline u16 ieeerate2rtlrate(int rate)
> @@ -966,8 +965,6 @@ static void rtl8192_hard_data_xmit(struct sk_buff *skb, struct net_device *dev,
>  	ret = rtl8192_tx(dev, skb);
>  
>  	spin_unlock_irqrestore(&priv->tx_lock, flags);
> -
> -	return;
>  }
>  
>  /* This is a rough attempt to TX a frame
> @@ -2067,7 +2064,6 @@ static void rtl8192_refresh_supportrate(struct r8192_priv *priv)
>  		memcpy(ieee->Regdot11HTOperationalRateSet, ieee->RegHTSuppRateSet, 16);
>  	else
>  		memset(ieee->Regdot11HTOperationalRateSet, 0, 16);
> -	return;
>  }
>  
>  static u8 rtl8192_getSupportedWireleeMode(struct net_device *dev)
> @@ -2507,7 +2503,6 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
>  	//we need init DIG RATR table here again.
>  
>  	RT_TRACE(COMP_EPROM, "<===========%s()\n", __func__);
> -	return;
>  }
>  
>  static short rtl8192_get_channel_map(struct net_device *dev)
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426390972-31372-1-git-send-email-iskaranth%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


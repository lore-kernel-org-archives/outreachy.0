X-GM-THRID: 6333608176063086592
X-Received: by 10.46.5.203 with SMTP id 194mr478801ljf.11.1474658839886;
        Fri, 23 Sep 2016 12:27:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.193 with SMTP id s184ls1656311lja.43.gmail; Fri, 23 Sep
 2016 12:27:19 -0700 (PDT)
X-Received: by 10.25.16.202 with SMTP id 71mr487557lfq.27.1474658839238;
        Fri, 23 Sep 2016 12:27:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e21si320983wmc.2.2016.09.23.12.27.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 12:27:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,383,1470693600"; 
   d="scan'208";a="238066075"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Sep 2016 21:27:18 +0200
Date: Fri, 23 Sep 2016 21:27:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: ks_wlan_net: Remove
 unnecessary variable used to store return value
In-Reply-To: <20160923191425.GA6587@fireworks>
Message-ID: <alpine.DEB.2.10.1609232125300.3463@hadrien>
References: <20160923191425.GA6587@fireworks>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 23 Sep 2016, Georgiana Rodica Chelu wrote:

> Remove unneeded variable used to store return values.
> The reason is to reduce the memory usage.

I don't think that it would have any impact on the memory usage.  The
compiler should be clever enough to produce the same code in both cases,
since ret isn't used anywhere else in the function.

But the change makes the function shorter, so there is less noise to look
at, and it makes it completely obvious that the only possible return value
is 0 (success).

julia

> Done using returnvar.cocci script.
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
> ---
>  drivers/staging/ks7010/ks_wlan_net.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index f1cd90e..d13a06b 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -3507,12 +3507,11 @@ int ks_wlan_net_stop(struct net_device *dev)
>  {
>  	struct ks_wlan_private *priv = netdev_priv(dev);
>
> -	int ret = 0;
>  	priv->device_open_status = 0;
>  	del_timer_sync(&update_phyinfo_timer);
>
>  	if (netif_running(dev))
>  		netif_stop_queue(dev);
>
> -	return ret;
> +	return 0;
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160923191425.GA6587%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6338484445622829056
X-Received: by 10.25.99.71 with SMTP id x68mr1194384lfb.28.1475817951272;
        Thu, 06 Oct 2016 22:25:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.152 with SMTP id e24ls409038lji.49.gmail; Thu, 06 Oct
 2016 22:25:50 -0700 (PDT)
X-Received: by 10.25.139.9 with SMTP id n9mr1124790lfd.22.1475817950309;
        Thu, 06 Oct 2016 22:25:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a126si74373wmd.1.2016.10.06.22.25.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 22:25:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,454,1473112800"; 
   d="scan'208";a="239759404"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 07 Oct 2016 07:25:46 +0200
Date: Fri, 7 Oct 2016 07:25:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010: replace printk()
 with pr*format
In-Reply-To: <20161006223651.GA8132@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610070724350.3074@hadrien>
References: <20161006223651.GA8132@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 7 Oct 2016, Mihaela Muraru wrote:

> This patch replaces printk() with pr_warn and pr_info macros.
>
> By doing this it is reduce to silence  checkpatch.pl WARNING:
> Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(... to printk(KERN_INFO ...

It looks like you should be able to use the netdev functions somehow.

julia

>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/ks7010/ks_hostif.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index c57ca58..1241f67 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -476,8 +476,7 @@ void hostif_data_indication(struct ks_wlan_private *priv)
>  			skb->dev->last_rx = jiffies;
>  			netif_rx(skb);
>  		} else {
> -			printk(KERN_WARNING
> -			       "ks_wlan: Memory squeeze, dropping packet.\n");
> +			pr_warn("ks_wlan: Memory squeeze, dropping packet.\n");
>  			priv->nstats.rx_dropped++;
>  		}
>  		break;
> @@ -511,8 +510,7 @@ void hostif_data_indication(struct ks_wlan_private *priv)
>  			skb->dev->last_rx = jiffies;
>  			netif_rx(skb);
>  		} else {
> -			printk(KERN_WARNING
> -			       "ks_wlan: Memory squeeze, dropping packet.\n");
> +			pr_warn("ks_wlan: Memory squeeze, dropping packet.\n");
>  			priv->nstats.rx_dropped++;
>  		}
>  		break;
> @@ -560,8 +558,7 @@ void hostif_mib_get_confirm(struct ks_wlan_private *priv)
>  		dev->dev_addr[5] = priv->eth_addr[5];
>  		dev->dev_addr[6] = 0x00;
>  		dev->dev_addr[7] = 0x00;
> -		printk(KERN_INFO
> -		       "ks_wlan: MAC ADDRESS = %02x:%02x:%02x:%02x:%02x:%02x\n",
> +		pr_info("ks_wlan: MAC ADDRESS = %02x:%02x:%02x:%02x:%02x:%02x\n",
>  		       priv->eth_addr[0], priv->eth_addr[1], priv->eth_addr[2],
>  		       priv->eth_addr[3], priv->eth_addr[4], priv->eth_addr[5]);
>  		break;
> @@ -571,8 +568,8 @@ void hostif_mib_get_confirm(struct ks_wlan_private *priv)
>  		priv->version_size = priv->rx_size;
>  		memcpy(priv->firmware_version, priv->rxp, priv->rx_size);
>  		priv->firmware_version[priv->rx_size] = '\0';
> -		printk(KERN_INFO "ks_wlan: firmware ver. = %s\n",
> -		       priv->firmware_version);
> +		pr_info("ks_wlan: firmware ver. = %s\n",
> +				priv->firmware_version);
>  		hostif_sme_enqueue(priv, SME_GET_PRODUCT_VERSION);
>  		/* wake_up_interruptible_all(&priv->confirm_wait); */
>  		complete(&priv->confirm_wait);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161006223651.GA8132%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6341057310426660864
X-Received: by 10.129.73.150 with SMTP id w144mr2846186ywa.28.1476423773782;
        Thu, 13 Oct 2016 22:42:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.85 with SMTP id p79ls7034715ota.25.gmail; Thu, 13 Oct
 2016 22:42:53 -0700 (PDT)
X-Received: by 10.200.53.101 with SMTP id z34mr2759740qtb.72.1476423773271;
        Thu, 13 Oct 2016 22:42:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v187si2314279ith.2.2016.10.13.22.42.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 22:42:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,491,1473112800"; 
   d="scan'208";a="240728497"
Received: from ppp-seco11pareq2-46-193-142-73.wb.wifirst.net (HELO hadrien) ([46.193.142.73])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2016 07:42:51 +0200
Date: Fri, 14 Oct 2016 07:42:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Compress return
 logic into one line
In-Reply-To: <20161013210051.GA8259@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610140741400.2969@hadrien>
References: <20161013210051.GA8259@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 14 Oct 2016, Mihaela Muraru wrote:

> Simplify function returns by merging assignment and return into
> one command line.
>
> Delete unnecesarry return variable.
>
> Found with Coccinelle
> @@
> expression e, ret;
> @@
>
> -ret =
> +return
>         e;
> -return ret
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c       |  4 +---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 18 +++++-------------
>  2 files changed, 6 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
> index 4b51c0a..6229947 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.c
> +++ b/drivers/staging/wilc1000/coreconfigurator.c
> @@ -224,9 +224,7 @@ static inline u16 get_asoc_status(u8 *data)
>  	u16 asoc_status;
>
>  	asoc_status = data[3];
> -	asoc_status = (asoc_status << 8) | data[2];
> -
> -	return asoc_status;
> +	return (asoc_status << 8) | data[2];
>  }
>
>  static inline u16 get_asoc_id(u8 *data)
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 60d8b05..60e1bc3 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -1590,28 +1590,25 @@ static int remain_on_channel(struct wiphy *wiphy,
>  	priv->strRemainOnChanParams.u32ListenDuration = duration;
>  	priv->strRemainOnChanParams.u32ListenSessionID++;
>
> -	s32Error = wilc_remain_on_channel(vif,
> +	return wilc_remain_on_channel(vif,
>  				priv->strRemainOnChanParams.u32ListenSessionID,
>  				duration, chan->hw_value,
>  				WILC_WFI_RemainOnChannelExpired,
>  				WILC_WFI_RemainOnChannelReady, (void *)priv);
> -
> -	return s32Error;

I see that in the other cases you have deleted the varable declaration
too, so I guess that in this case it was needed.  But it would be nice to
have another patch changing the horrible name.  err or ret would be fine.

julia

>  }
>
>  static int cancel_remain_on_channel(struct wiphy *wiphy,
>  				    struct wireless_dev *wdev,
>  				    u64 cookie)
>  {
> -	s32 s32Error = 0;
>  	struct wilc_priv *priv;
>  	struct wilc_vif *vif;
>
>  	priv = wiphy_priv(wiphy);
>  	vif = netdev_priv(priv->dev);
>
> -	s32Error = wilc_listen_state_expired(vif, priv->strRemainOnChanParams.u32ListenSessionID);
> -	return s32Error;
> +	return wilc_listen_state_expired(vif,
> +			priv->strRemainOnChanParams.u32ListenSessionID);
>  }
>
>  static int mgmt_tx(struct wiphy *wiphy,
> @@ -1935,12 +1932,10 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
>  	wilc_wlan_set_bssid(dev, wl->vif[vif->idx]->src_addr, AP_MODE);
>  	wilc_set_power_mgmt(vif, 0, 0);
>
> -	s32Error = wilc_add_beacon(vif, settings->beacon_interval,
> +	return wilc_add_beacon(vif, settings->beacon_interval,
>  				   settings->dtim_period, beacon->head_len,
>  				   (u8 *)beacon->head, beacon->tail_len,
>  				   (u8 *)beacon->tail);
> -
> -	return s32Error;
>  }
>
>  static int change_beacon(struct wiphy *wiphy, struct net_device *dev,
> @@ -1948,16 +1943,13 @@ static int change_beacon(struct wiphy *wiphy, struct net_device *dev,
>  {
>  	struct wilc_priv *priv;
>  	struct wilc_vif *vif;
> -	s32 s32Error = 0;
>
>  	priv = wiphy_priv(wiphy);
>  	vif = netdev_priv(priv->dev);
>
> -	s32Error = wilc_add_beacon(vif, 0, 0, beacon->head_len,
> +	return wilc_add_beacon(vif, 0, 0, beacon->head_len,
>  				   (u8 *)beacon->head, beacon->tail_len,
>  				   (u8 *)beacon->tail);
> -
> -	return s32Error;
>  }
>
>  static int stop_ap(struct wiphy *wiphy, struct net_device *dev)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161013210051.GA8259%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6331313577585016832
X-Received: by 10.194.89.35 with SMTP id bl3mr262476wjb.8.1474126864839;
        Sat, 17 Sep 2016 08:41:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.207 with SMTP id 198ls81761ljf.35.gmail; Sat, 17 Sep 2016
 08:41:04 -0700 (PDT)
X-Received: by 10.46.69.137 with SMTP id s131mr271262lja.31.1474126864203;
        Sat, 17 Sep 2016 08:41:04 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si1188647wmr.2.2016.09.17.08.41.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 08:41:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,351,1470693600"; 
   d="scan'208";a="193768898"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 17:41:03 +0200
Date: Sat, 17 Sep 2016 17:41:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    ganesh.krishna@microchip.com, aditya.shankar@microchip.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Remove some function
 prototypes
In-Reply-To: <1474123795-13448-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1609171738440.3124@hadrien>
References: <1474123795-13448-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 17 Sep 2016, Bhumika Goyal wrote:

> This patch removes some static function prototypes as they
> were getting used only in the declaration of structure
> wilc_netdev_ops. So, after moving the structure declaration below the
> function definition of all these functions, the prototypes can be
> complelety dropped. The structure is moved to an appropriate location
> so that it is not used before its declaration.

The commit message could be more concise.  Actually, I would put the
fact that you are moving the structure first, as that enables everything
(even though your goal was probably the other way around, to get rid of
the prototype declarations).  So you could say:

Move the declaration of wilc_netdev_ops lower in the file, after the
declarations of the functions used in its initializer.  Drop the various
function prototype declarations that are no longer necessary.

julia

>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_wlan.c | 26 +++++++++++---------------
>  1 file changed, 11 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
> index 6370a5e..7242532 100644
> --- a/drivers/staging/wilc1000/linux_wlan.c
> +++ b/drivers/staging/wilc1000/linux_wlan.c
> @@ -34,24 +34,9 @@ static int wlan_deinit_locks(struct net_device *dev);
>  static void wlan_deinitialize_threads(struct net_device *dev);
>
>  static void linux_wlan_tx_complete(void *priv, int status);
> -static int  mac_init_fn(struct net_device *ndev);
> -static struct net_device_stats *mac_stats(struct net_device *dev);
> -static int  mac_ioctl(struct net_device *ndev, struct ifreq *req, int cmd);
> -static void wilc_set_multicast_list(struct net_device *dev);
>
>  bool wilc_enable_ps = true;
>
> -static const struct net_device_ops wilc_netdev_ops = {
> -	.ndo_init = mac_init_fn,
> -	.ndo_open = wilc_mac_open,
> -	.ndo_stop = wilc_mac_close,
> -	.ndo_start_xmit = wilc_mac_xmit,
> -	.ndo_do_ioctl = mac_ioctl,
> -	.ndo_get_stats = mac_stats,
> -	.ndo_set_rx_mode  = wilc_set_multicast_list,
> -
> -};
> -
>  static int dev_state_ev_handler(struct notifier_block *this,
>  				unsigned long event, void *ptr)
>  {
> @@ -1244,6 +1229,17 @@ void wilc_netdev_cleanup(struct wilc *wilc)
>  }
>  EXPORT_SYMBOL_GPL(wilc_netdev_cleanup);
>
> +static const struct net_device_ops wilc_netdev_ops = {
> +	.ndo_init = mac_init_fn,
> +	.ndo_open = wilc_mac_open,
> +	.ndo_stop = wilc_mac_close,
> +	.ndo_start_xmit = wilc_mac_xmit,
> +	.ndo_do_ioctl = mac_ioctl,
> +	.ndo_get_stats = mac_stats,
> +	.ndo_set_rx_mode  = wilc_set_multicast_list,
> +
> +};
> +
>  int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
>  		     int gpio, const struct wilc_hif_func *ops)
>  {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474123795-13448-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


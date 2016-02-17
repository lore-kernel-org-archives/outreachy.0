X-GM-THRID: 6252116177284235264
X-Received: by 10.31.11.75 with SMTP id 72mr1839230vkl.2.1455721347702;
        Wed, 17 Feb 2016 07:02:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.147 with SMTP id y19ls1583388igr.24.canary; Wed, 17 Feb
 2016 07:02:27 -0800 (PST)
X-Received: by 10.107.33.140 with SMTP id h134mr3231863ioh.27.1455721347075;
        Wed, 17 Feb 2016 07:02:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c15si1653179igm.1.2016.02.17.07.02.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 07:02:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,461,1449529200"; 
   d="scan'208";a="203514939"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2016 16:02:24 +0100
Date: Wed, 17 Feb 2016 10:02:22 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5] staging: wilc1000: Return correct
 error codes
In-Reply-To: <20160217145756.GA3049@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602171001480.4547@hadrien>
References: <20160217145756.GA3049@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 17 Feb 2016, Amitoj Kaur Chawla wrote:

> This change has been made with the goal that kernel functions should
> return something more descriptive than -1 on failure.
>
> The return value on an alloc_etherdev failure should return a -ENOMEM
> and not -1.

Actually, this should be "should be -ENOMEM", not "should return a
-ENOMEM".  A return value can't itself return.

julia

> This was found using Coccinelle. A simplified version of the semantic
> patch used is:
>
> //<smpl>
> @@
> expression *e;
> identifier l1;
> @@
>
> e = alloc_etherdev(...);
> if (e == NULL) {
> ...
> return
> - -1
> + -ENOMEM
> ;
> }
> //</smpl
>
> Furthermore, introduced `ret` variable to store and return the
> corresponding error code returned by register_netdev on failure.
>
> The two call sites store the return value in a variable which only
> checks that the value is non-zero, hence no change is required at
> the call sites.
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> ---
> Changes in v5:
>         -Modified commit message to avoid misleading description of
>          the change made.
> Changes in v4:
>         -Modified register_netdev to return error code on a failure to
>          set up the device.
> Changes in v3:
>         -Further checked call sites to understand how the value is
>          being analyzed
> Changes in v2:
>         -Corrected semantic patch
>
>  drivers/staging/wilc1000/linux_wlan.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
> index a731b46..274f468 100644
> --- a/drivers/staging/wilc1000/linux_wlan.c
> +++ b/drivers/staging/wilc1000/linux_wlan.c
> @@ -1312,7 +1312,7 @@ EXPORT_SYMBOL_GPL(wilc_netdev_cleanup);
>  int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
>  		     int gpio, const struct wilc_hif_func *ops)
>  {
> -	int i;
> +	int i, ret;
>  	struct wilc_vif *vif;
>  	struct net_device *ndev;
>  	struct wilc *wl;
> @@ -1333,7 +1333,7 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
>  	for (i = 0; i < NUM_CONCURRENT_IFC; i++) {
>  		ndev = alloc_etherdev(sizeof(struct wilc_vif));
>  		if (!ndev)
> -			return -1;
> +			return -ENOMEM;
>
>  		vif = netdev_priv(ndev);
>  		memset(vif, 0, sizeof(struct wilc_vif));
> @@ -1372,8 +1372,9 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
>  			vif->netstats.tx_bytes = 0;
>  		}
>
> -		if (register_netdev(ndev))
> -			return -1;
> +		ret = register_netdev(ndev);
> +		if (ret)
> +			return ret;
>
>  		vif->iftype = STATION_MODE;
>  		vif->mac_opened = 0;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160217145756.GA3049%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6252116177284235264
X-Received: by 10.112.135.234 with SMTP id pv10mr211041lbb.24.1455713809792;
        Wed, 17 Feb 2016 04:56:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.92.78 with SMTP id q75ls1002580wmb.35.canary; Wed, 17 Feb
 2016 04:56:49 -0800 (PST)
X-Received: by 10.28.129.210 with SMTP id c201mr364667wmd.1.1455713809214;
        Wed, 17 Feb 2016 04:56:49 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si147612wmy.2.2016.02.17.04.56.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 04:56:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,460,1449529200"; 
   d="scan'208";a="165038400"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2016 13:56:48 +0100
Date: Wed, 17 Feb 2016 07:56:46 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wilc1000: Return correct
 error codes
In-Reply-To: <20160217124204.GA30394@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602170749390.2685@hadrien>
References: <20160217124204.GA30394@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 17 Feb 2016, Amitoj Kaur Chawla wrote:

> This change has been made with the goal that kernel functions should
> return something more descriptive than -1 on failure.
>
> The return value of alloc_etherdev on failure should return a -ENOMEM
> and not a -1. This was found using Coccinelle. A simplified version of
> the semantic patch used is:
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
> return -1
> + -ENOMEM
> ;
> }
> //</smpl
>
> Furthermore, return -ENODEV on failure of register_netdev() instead
> of -1.

There is yet another failure that returns -1 in this function, on
wilc_create_wiphy.  That one should be fixed too.

Also, the call to the latter function is in a nested { }.  I guess this is
to be able to declare the variable wdev, but I don't see why this variable
can't be declared at the top of the function, like all the others.

> The two call sites store the return value in a variable which only
> checks that the value is non-zero, hence no change is required at
> the call site.

This is fine now.

julia

> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v3:
>         -Further checked call sites to understand how the value is
>          being analyzed
> Changes in v2:
>         -Corrected semantic patch
>
>  drivers/staging/wilc1000/linux_wlan.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
> index a731b46..4f8b21d 100644
> --- a/drivers/staging/wilc1000/linux_wlan.c
> +++ b/drivers/staging/wilc1000/linux_wlan.c
> @@ -1333,7 +1333,7 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
>  	for (i = 0; i < NUM_CONCURRENT_IFC; i++) {
>  		ndev = alloc_etherdev(sizeof(struct wilc_vif));
>  		if (!ndev)
> -			return -1;
> +			return -ENOMEM;
>
>  		vif = netdev_priv(ndev);
>  		memset(vif, 0, sizeof(struct wilc_vif));
> @@ -1373,7 +1373,7 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
>  		}
>
>  		if (register_netdev(ndev))
> -			return -1;
> +			return -ENODEV;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160217124204.GA30394%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>


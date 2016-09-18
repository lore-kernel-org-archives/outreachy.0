X-GM-THRID: 6331668533690236928
X-Received: by 10.46.69.137 with SMTP id s131mr437488lja.31.1474212696282;
        Sun, 18 Sep 2016 08:31:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.3 with SMTP id s3ls836148lja.25.gmail; Sun, 18 Sep 2016
 08:31:35 -0700 (PDT)
X-Received: by 10.25.92.200 with SMTP id u69mr454548lfi.23.1474212695548;
        Sun, 18 Sep 2016 08:31:35 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si1517422wmr.2.2016.09.18.08.31.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 08:31:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,357,1470693600"; 
   d="scan'208";a="237273938"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Sep 2016 17:31:34 +0200
Date: Sun, 18 Sep 2016 17:31:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: octeon: Add missing of_node_put
 after calling of_parse_phandle
In-Reply-To: <20160918134815.GA3515@sandhya>
Message-ID: <alpine.DEB.2.10.1609181731180.3204@hadrien>
References: <20160918134815.GA3515@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 18 Sep 2016, Sandhya Bankar wrote:

> of_node_put needs to be called when the device node which is got
> from of_parse_phandle has finished using.

has finished using -> is no longer used

julia

>
> This patch is found by below coccinelle script:
>
> @@
> expression e,e1,e2;
> @@
> *e = of_parse_phandle(...)
> ... when != of_node_put(e)
>     when != true e == NULL
>     when != e2 = e
> e = e1
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-mdio.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
>
> diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
> index 1fde9c8..691e4a5 100644
> --- a/drivers/staging/octeon/ethernet-mdio.c
> +++ b/drivers/staging/octeon/ethernet-mdio.c
> @@ -168,6 +168,7 @@ int cvm_oct_phy_setup_device(struct net_device *dev)
>
>  	phydev = of_phy_connect(dev, phy_node, cvm_oct_adjust_link, 0,
>  				PHY_INTERFACE_MODE_GMII);
> +	of_node_put(phy_node);
>
>  	if (!phydev)
>  		return -ENODEV;
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160918134815.GA3515%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>


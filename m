X-GM-THRID: 6251650339458514944
X-Received: by 10.25.29.211 with SMTP id d202mr2607122lfd.7.1455632307978;
        Tue, 16 Feb 2016 06:18:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.23.94 with SMTP id n91ls761567lfi.99.gmail; Tue, 16 Feb
 2016 06:18:27 -0800 (PST)
X-Received: by 10.25.18.227 with SMTP id 96mr2599362lfs.4.1455632307266;
        Tue, 16 Feb 2016 06:18:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si898689wmy.2.2016.02.16.06.18.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 06:18:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,455,1449529200"; 
   d="scan'208";a="164921377"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Feb 2016 15:18:25 +0100
Date: Tue, 16 Feb 2016 15:18:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Laura Garcia Liebana <nevola@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/7] staging: netlogic: Fix comparison
 to NULL
In-Reply-To: <ed3fe66bf2dfec6a6364deb07047a9955cfd3cfc.1455575263.git.nevola@gmail.com>
Message-ID: <alpine.DEB.2.10.1602161517270.2685@hadrien>
References: <cover.1455575263.git.nevola@gmail.com> <ed3fe66bf2dfec6a6364deb07047a9955cfd3cfc.1455575263.git.nevola@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 15 Feb 2016, Laura Garcia Liebana wrote:

> Avoid the use of comparison to NULL, use !<variable> instead. Checkpatch
> detected these issues.
>
> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
>  drivers/staging/netlogic/xlr_net.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> index 4b72f03..c5df08e 100644
> --- a/drivers/staging/netlogic/xlr_net.c
> +++ b/drivers/staging/netlogic/xlr_net.c
> @@ -146,7 +146,7 @@ static void xlr_net_fmn_handler(int bkt, int src_stnid, int size, int code,
>  		addr = addr - MAC_SKB_BACK_PTR_SIZE;
>  		skb = (struct sk_buff *)*(unsigned long *)addr;
>  		skb->dev = adapter->netdev[port];
> -		if (skb->dev == NULL)
> +		if (!skb->dev)
>  			return;
>  		ndev = skb->dev;
>  		priv = netdev_priv(ndev);
> @@ -1037,7 +1037,7 @@ static int xlr_net_probe(struct platform_device *pdev)
>  		priv->nd = (struct xlr_net_data *)pdev->dev.platform_data;
>  		res = platform_get_resource(pdev, IORESOURCE_MEM, port);

Actually, when this value is fed into devm_iormap_resource, you don't need
the null test at all.

julia

>
> -		if (res == NULL) {
> +		if (!res) {
>  			pr_err("No memory resource for MAC %d\n",
>  			       priv->port_id);
>  			err = -ENODEV;
> @@ -1052,7 +1052,7 @@ static int xlr_net_probe(struct platform_device *pdev)
>  		adapter->netdev[port] = ndev;
>
>  		res = platform_get_resource(pdev, IORESOURCE_IRQ, port);
> -		if (res == NULL) {
> +		if (!res) {
>  			pr_err("No irq resource for MAC %d\n", priv->port_id);
>  			err = -ENODEV;
>  			goto err_gmac;
> --
> 2.7.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ed3fe66bf2dfec6a6364deb07047a9955cfd3cfc.1455575263.git.nevola%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


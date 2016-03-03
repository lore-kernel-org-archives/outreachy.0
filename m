X-GM-THRID: 6257664587169005568
X-Received: by 10.112.227.73 with SMTP id ry9mr91395lbc.10.1456986586266;
        Wed, 02 Mar 2016 22:29:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.27.210 with SMTP id b201ls773934lfb.55.gmail; Wed, 02 Mar
 2016 22:29:45 -0800 (PST)
X-Received: by 10.112.205.164 with SMTP id lh4mr92024lbc.6.1456986585370;
        Wed, 02 Mar 2016 22:29:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c7si272614wmf.2.2016.03.02.22.29.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 22:29:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,531,1449529200"; 
   d="scan'208";a="166727923"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2016 07:29:44 +0100
Date: Thu, 3 Mar 2016 07:29:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: "pooja.shamili" <poojashamili@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Replacing pr_err
 with dev_err after function call to devm_kzalloc
In-Reply-To: <20160303033418.GA20938@localhost>
Message-ID: <alpine.DEB.2.02.1603030729270.2080@localhost6.localdomain6>
References: <20160303033418.GA20938@localhost>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 3 Mar 2016, pooja.shamili wrote:

> The function devm_kzalloc has a first argument of type struct device *.
> This is the type of argument required by printing functions such as
> dev_dbg, dev_err, etc. Thus, functions like pr_err should not normally
> be used after a call to devm_kzalloc. Thus, all pr_err occurances are
> replaced with dev_err function calls.
> 
> This was done using Coccinelle, the patch being:
> 
> @@
> expression E1,E2;
> expression list args;
> identifier I;
> @@
> 
> E1 = (struct I *)devm_kzalloc(E2, ...);
> <...
> - pr_err(
> ++ dev_err(E2,

Why did you use ++?

julia

>  args);
> ...>
> 
> Signed-off-by: pooja.shamili <poojashamili@gmail.com>
> ---
>  drivers/staging/netlogic/xlr_net.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> index 0015847..4804fe8 100644
> --- a/drivers/staging/netlogic/xlr_net.c
> +++ b/drivers/staging/netlogic/xlr_net.c
> @@ -1028,7 +1028,8 @@ static int xlr_net_probe(struct platform_device *pdev)
>  	for (port = 0; port < pdev->num_resources / 2; port++) {
>  		ndev = alloc_etherdev_mq(sizeof(struct xlr_net_priv), 32);
>  		if (!ndev) {
> -			pr_err("Allocation of Ethernet device failed\n");
> +			dev_err(&pdev->dev,
> +				"Allocation of Ethernet device failed\n");
>  			return -ENOMEM;
>  		}
>  
> @@ -1040,8 +1041,8 @@ static int xlr_net_probe(struct platform_device *pdev)
>  		res = platform_get_resource(pdev, IORESOURCE_MEM, port);
>  
>  		if (res == NULL) {
> -			pr_err("No memory resource for MAC %d\n",
> -			       priv->port_id);
> +			dev_err(&pdev->dev, "No memory resource for MAC %d\n",
> +				priv->port_id);
>  			err = -ENODEV;
>  			goto err_gmac;
>  		}
> @@ -1055,7 +1056,8 @@ static int xlr_net_probe(struct platform_device *pdev)
>  
>  		res = platform_get_resource(pdev, IORESOURCE_IRQ, port);
>  		if (!res) {
> -			pr_err("No irq resource for MAC %d\n", priv->port_id);
> +			dev_err(&pdev->dev, "No irq resource for MAC %d\n",
> +				priv->port_id);
>  			err = -ENODEV;
>  			goto err_gmac;
>  		}
> @@ -1090,7 +1092,8 @@ static int xlr_net_probe(struct platform_device *pdev)
>  		if (strcmp(res->name, "gmac") == 0) {
>  			err = xlr_gmac_init(priv, pdev);
>  			if (err) {
> -				pr_err("gmac%d init failed\n", priv->port_id);
> +				dev_err(&pdev->dev, "gmac%d init failed\n",
> +					priv->port_id);
>  				goto err_gmac;
>  			}
>  		}
> @@ -1103,8 +1106,9 @@ static int xlr_net_probe(struct platform_device *pdev)
>  
>  		err = register_netdev(ndev);
>  		if (err) {
> -			pr_err("Registering netdev failed for gmac%d\n",
> -			       priv->port_id);
> +			dev_err(&pdev->dev,
> +				"Registering netdev failed for gmac%d\n",
> +				priv->port_id);
>  			goto err_netdev;
>  		}
>  		platform_set_drvdata(pdev, priv);
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160303033418.GA20938%40localhost.
> For more options, visit https://groups.google.com/d/optout.
> 


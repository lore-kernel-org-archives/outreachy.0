X-GM-THRID: 6256396302413725696
X-Received: by 10.112.16.34 with SMTP id c2mr1179302lbd.19.1456681289173;
        Sun, 28 Feb 2016 09:41:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.84 with SMTP id o81ls72444lfi.94.gmail; Sun, 28 Feb 2016
 09:41:28 -0800 (PST)
X-Received: by 10.112.189.104 with SMTP id gh8mr1123972lbc.12.1456681288808;
        Sun, 28 Feb 2016 09:41:28 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si526955wmy.2.2016.02.28.09.41.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:41:28 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,516,1449529200"; 
   d="scan'208";a="166245841"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 18:41:27 +0100
Date: Sun, 28 Feb 2016 18:41:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: gdm724x: Remove print
 statement on failure
In-Reply-To: <1456680767-435-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602281838340.2147@localhost6.localdomain6>
References: <1456680767-435-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 28 Feb 2016, Bhumika Goyal wrote:

> The  memory allocation functions generates a call stack containing
> all the context information on failure, so print statements can be
> removed on failure of these functions.
> Done using coccinelle:
> 
> @@
> expression e;
> @@
> 
> e=\(kmalloc\|kmalloc\|kmalloc_array\|alloc_netdev\|kzalloc\|
>    devm_kzalloc\|devm_ioremap\)(...);
> ...
> if(!e){
> - \(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);
> ...when any
> }
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_lte.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
> index 98570c6..44163e4 100644
> --- a/drivers/staging/gdm724x/gdm_lte.c
> +++ b/drivers/staging/gdm724x/gdm_lte.c
> @@ -890,7 +890,6 @@ int register_lte_device(struct phy_dev *phy_dev,
>  		net = alloc_netdev(sizeof(struct nic), pdn_dev_name,
>  				   NET_NAME_UNKNOWN, ether_setup);
>  		if (!net) {
> -			pr_err("alloc_netdev failed\n");

Actually, if you unfold the definition a bit, alloc_netdev can fail for 
reasons other than kmalloc failure.  So alloc_netdev should not be in the 
list.  Likewise for (devm_)ioremap.  It's not for all allocation functions 
where the message is superfluous, but only those based on kmalloc.

julia

>  			ret = -ENOMEM;
>  			goto err;
>  		}
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456680767-435-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


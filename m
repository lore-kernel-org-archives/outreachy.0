X-GM-THRID: 6256394552037343232
X-Received: by 10.112.189.104 with SMTP id gh8mr1122869lbc.12.1456680956093;
        Sun, 28 Feb 2016 09:35:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.41 with SMTP id l41ls32589lfi.100.gmail; Sun, 28 Feb
 2016 09:35:55 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr1161853lbb.2.1456680955577;
        Sun, 28 Feb 2016 09:35:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c140si188987wmh.1.2016.02.28.09.35.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:35:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,516,1449529200"; 
   d="scan'208";a="166245585"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 18:35:54 +0100
Date: Sun, 28 Feb 2016 18:35:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Remove print statement
 on function failure
In-Reply-To: <1456680358-31613-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602281834200.2147@localhost6.localdomain6>
References: <1456680358-31613-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 28 Feb 2016, Bhumika Goyal wrote:

> The  memory allocation functions generates a call stack containing
> all the context information on failure, so print statements can be
> removed on failure of these functions. Also remove
> unwanted {} around if block after removal of these statements.
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
>  drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c | 1 -
>  drivers/staging/lustre/lustre/obdclass/llog.c             | 5 ++---
>  drivers/staging/lustre/lustre/obdecho/echo_client.c       | 2 --
>  3 files changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
> index ec75801..6742270 100644
> --- a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
> +++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
> @@ -252,7 +252,6 @@ static int cfs_crypto_test_hashes(void)
>  
>  	data = kmalloc(data_len, 0);
>  	if (!data) {
> -		CERROR("Failed to allocate mem\n");
>  		return -ENOMEM;
>  	}

You need to drop the braces here too.

>  
> diff --git a/drivers/staging/lustre/lustre/obdclass/llog.c b/drivers/staging/lustre/lustre/obdclass/llog.c
> index f7ee605..d1d74ee 100644
> --- a/drivers/staging/lustre/lustre/obdclass/llog.c
> +++ b/drivers/staging/lustre/lustre/obdclass/llog.c
> @@ -365,10 +365,9 @@ int llog_process_or_fork(const struct lu_env *env,
>  	int		      rc;
>  
>  	lpi = kzalloc(sizeof(*lpi), GFP_NOFS);
> -	if (!lpi) {
> -		CERROR("cannot alloc pointer\n");
> +	if (!lpi)
>  		return -ENOMEM;
> -	}
> +
>  	lpi->lpi_loghandle = loghandle;
>  	lpi->lpi_cb	= cb;
>  	lpi->lpi_cbdata    = data;
> diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
> index 2b13aa2..a5b6854 100644
> --- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
> +++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
> @@ -1767,8 +1767,6 @@ static int echo_client_setup(const struct lu_env *env,
>  
>  	ocd = kzalloc(sizeof(*ocd), GFP_NOFS);
>  	if (!ocd) {
> -		CERROR("Can't alloc ocd connecting to %s\n",
> -		       lustre_cfg_string(lcfg, 1));
>  		return -ENOMEM;
>  	}

Extra braces here too.  You may want to make a special case for your 
semantic patch to detect the case where there is exactly one print and one 
other statement.  It is easy to overlook this issue, and you may as well 
let Coccinelle do the work for you.

julia

> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456680358-31613-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


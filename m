X-GM-THRID: 405220098048
X-Received: by 10.180.39.164 with SMTP id q4mr268327wik.5.1424290284801;
        Wed, 18 Feb 2015 12:11:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.74.49 with SMTP id q17ls1194360wiv.3.canary; Wed, 18 Feb
 2015 12:11:23 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr596010wib.5.1424290283953;
        Wed, 18 Feb 2015 12:11:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si6264918wif.0.2015.02.18.12.11.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 12:11:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,603,1418079600"; 
   d="scan'208";a="122348316"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2015 21:11:22 +0100
Date: Wed, 18 Feb 2015 21:11:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: i2o: Join quoted string
 split across lines
In-Reply-To: <20150218194915.GA28794@gmail.com>
Message-ID: <alpine.DEB.2.02.1502182110040.2248@localhost6.localdomain6>
References: <20150218194915.GA28794@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Vatika Harlalka wrote:

> This patch removes the checkpatch.pl warnings "quoted string split accross lines" 

drivers/staging/i2o seems to be code that is on the way out of the Linux 
kernel rather than on the way in.  See commit 2cbf7fe2d5.  Perhaps try to 
avoid working on these files.

julia

> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/i2o/driver.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/i2o/driver.c b/drivers/staging/i2o/driver.c
> index 111c3ed..06119bb 100644
> --- a/drivers/staging/i2o/driver.c
> +++ b/drivers/staging/i2o/driver.c
> @@ -102,8 +102,7 @@ int i2o_driver_register(struct i2o_driver *drv)
>  
>  	for (i = 0; i2o_drivers[i]; i++)
>  		if (i >= i2o_max_drivers) {
> -			osm_err("too many drivers registered, increase "
> -				"max_drivers\n");
> +			osm_err("too many drivers registered, increase max_drivers\n");
>  			spin_unlock_irqrestore(&i2o_drivers_lock, flags);
>  			rc = -EFAULT;
>  			goto out;
> @@ -244,8 +243,8 @@ int i2o_driver_dispatch(struct i2o_controller *c, u32 m)
>  	}
>  
>  	if (unlikely(!drv->reply)) {
> -		osm_debug("%s: Reply to driver %s, but no reply function"
> -			  " defined!\n", c->name, drv->name);
> +		osm_debug("%s: Reply to driver %s, but no reply function defined!\n",
> +			c->name, drv->name);
>  		return -EIO;
>  	}
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150218194915.GA28794%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 


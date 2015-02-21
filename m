X-GM-THRID: 2067485687808
X-Received: by 10.180.81.34 with SMTP id w2mr408582wix.2.1424552397330;
        Sat, 21 Feb 2015 12:59:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.72 with SMTP id lm8ls420292lac.3.gmail; Sat, 21 Feb
 2015 12:59:56 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr454894lbb.20.1424552396830;
        Sat, 21 Feb 2015 12:59:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si372760wic.1.2015.02.21.12.59.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 12:59:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="100872364"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 21:59:56 +0100
Date: Sat, 21 Feb 2015 21:59:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: emxx_udc: Replace printk
 with pr_err
In-Reply-To: <aa0c6571b79f806ec4edba60e2d13d2edcf0cd8f.1424473862.git.hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212158560.2296@localhost6.localdomain6>
References: <cover.1424473862.git.hamohammed.sa@gmail.com> <aa0c6571b79f806ec4edba60e2d13d2edcf0cd8f.1424473862.git.hamohammed.sa@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Haneen Mohammed wrote:

> This patch replaces printk(KERN_ERR .. with pr_err, to fix the following
> checkpatch.pl warning:
> WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev,  ... then
> dev_err(dev,  ... then pr_err(...  to printk(KERN_ERR ...
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index c1f98b3..c3fd7f6 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -644,6 +644,6 @@ volatile union usb_reg_access {
>  };
>  
>  /*-------------------------------------------------------------------------*/
> -#define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
> +#define ERR(stuff...)		pr_err("udc: " stuff)

A better approach would be to remove ERR completely, and see which 
standard kernel debugging function (pr_err?, dev_err?) could be used at 
each point.

julia


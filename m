X-GM-THRID: 6253752748350636032
X-Received: by 10.140.242.214 with SMTP id n205mr22476193qhc.14.1456065555146;
        Sun, 21 Feb 2016 06:39:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.133 with SMTP id jg5ls191042igb.11.gmail; Sun, 21 Feb
 2016 06:39:14 -0800 (PST)
X-Received: by 10.107.6.163 with SMTP id f35mr23342928ioi.25.1456065554683;
        Sun, 21 Feb 2016 06:39:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c15si1577161igm.1.2016.02.21.06.39.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 06:39:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,480,1449529200"; 
   d="scan'208";a="165447527"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 15:39:11 +0100
Date: Sun, 21 Feb 2016 09:39:09 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lustre: obdclass:
 Remove unneeded NULL check
In-Reply-To: <20160221193348.GA28437@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.10.1602210938160.4210@hadrien>
References: <20160221193348.GA28437@janani-Inspiron-3521>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 21 Feb 2016, Janani Ravichandran wrote:

> Remove unneeded NULL check before debugfs_remove_recursive.
> Coccinelle script used can be found at
> scripts/coccinelle/free/ifnullfree.cocci

This should be Generated-by: scripts/coccinelle/free/ifnullfree.cocci

when the script is part of the kernel.

But I have the impression that I have seen this patch before.

julia

>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/linux/linux-module.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
> index 1913f3e..2045621 100644
> --- a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
> +++ b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
> @@ -454,8 +454,7 @@ out:
>
>  int class_procfs_clean(void)
>  {
> -	if (debugfs_lustre_root != NULL)
> -		debugfs_remove_recursive(debugfs_lustre_root);
> +	debugfs_remove_recursive(debugfs_lustre_root);
>
>  	debugfs_lustre_root = NULL;
>
> --
> 2.5.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221193348.GA28437%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
>


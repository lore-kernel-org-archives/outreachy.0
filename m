X-GM-THRID: 1526974119936
X-Received: by 10.112.167.98 with SMTP id zn2mr339635lbb.6.1424533740236;
        Sat, 21 Feb 2015 07:49:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.231.44 with SMTP id td12ls250298wic.54.canary; Sat, 21 Feb
 2015 07:48:59 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr309121wib.4.1424533739953;
        Sat, 21 Feb 2015 07:48:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si328124wic.1.2015.02.21.07.48.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:48:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="100857971"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:48:59 +0100
Date: Sat, 21 Feb 2015 16:48:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: Deleted space
 prohibited between function name and open parenthesis
In-Reply-To: <1424533029-14651-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211647370.2480@hadrien>
References: <1424533029-14651-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Melike Yurtoglu wrote:

> WARNING: space prohibited between function name and open parenthesis '('
> Remove unnecessary space between function name and opening parenthesis.
> That was found by running checkpatch
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/lnet/lnet/lib-ptl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> index 3ba0da9..98318fb 100644
> --- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> +++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> @@ -899,7 +899,7 @@ int
>  LNetClearLazyPortal(int portal)
>  {
>  	struct lnet_portal	*ptl;
> -	LIST_HEAD		(zombies);
> +	LIST_HEAD(zombies);

Actually, LIST_HEAD is not a function.  It is a macro that declares a
variable. It's a little strange with the parentheses, but currently the
variable is lined up with the other declared variables.

julia

>  	if (portal < 0 || portal >= the_lnet.ln_nportals)
>  		return -EINVAL;
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424533029-14651-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 1888775831552
X-Received: by 10.152.19.100 with SMTP id d4mr338147lae.7.1424532788518;
        Sat, 21 Feb 2015 07:33:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.10.229 with SMTP id l5ls285274wib.32.gmail; Sat, 21 Feb
 2015 07:33:08 -0800 (PST)
X-Received: by 10.180.94.134 with SMTP id dc6mr303392wib.2.1424532788248;
        Sat, 21 Feb 2015 07:33:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ev8si315862wib.3.2015.02.21.07.33.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:33:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="100857127"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:33:07 +0100
Date: Sat, 21 Feb 2015 16:33:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: used complete
In-Reply-To: <1424531114-12823-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211632380.2480@hadrien>
References: <1424531114-12823-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Melike Yurtoglu wrote:

> WARNING:consider using a completion
> completion for the static was added.That was found by running checkpatch
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/lnet/lnet/router.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
> index 52ec0ab..e6907b7 100644
> --- a/drivers/staging/lustre/lnet/lnet/router.c
> +++ b/drivers/staging/lustre/lnet/lnet/router.c
> @@ -1032,7 +1032,7 @@ lnet_router_checker_start(void)
>  	    dead_router_check_interval <= 0)
>  		return 0;
>
> -	sema_init(&the_lnet.ln_rc_signal, 0);
> +	static sema_init(&the_lnet.ln_rc_signal, 0);

I don't understand this code at all.  Does it compile?

julia

>  	/* EQ size doesn't matter; the callback is guaranteed to get every
>  	 * event */
>  	eqsz = 0;
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424531114-12823-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


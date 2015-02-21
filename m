X-GM-THRID: 1888775831552
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5e28edf932a9a915
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.13.236 with SMTP id fb12mr302356wid.1.1424532682509;
        Sat, 21 Feb 2015 07:31:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.208.99 with SMTP id md3ls284309wic.52.canary; Sat, 21 Feb
 2015 07:31:22 -0800 (PST)
X-Received: by 10.180.105.129 with SMTP id gm1mr300001wib.3.1424532682223;
        Sat, 21 Feb 2015 07:31:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id by11si542742wib.1.2015.02.21.07.31.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:31:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="122807075"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:31:21 +0100
Date: Sat, 21 Feb 2015 16:31:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: lustre: Remove unnecessary
 else after return
In-Reply-To: <1424531114-12823-4-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211630490.2480@hadrien>
References: <1424531114-12823-1-git-send-email-aysemelikeyurtoglu@gmail.com> <1424531114-12823-4-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Melike Yurtoglu wrote:

> WARNING : else is not generally useful after a break or return
> Remove unnecessary else after return.That was found by running checkpatch

OK for here, but in general, please put a space after punctuation.

julia

>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/lnet/lnet/router.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
> index 69b7f12..dded50f 100644
> --- a/drivers/staging/lustre/lnet/lnet/router.c
> +++ b/drivers/staging/lustre/lnet/lnet/router.c
> @@ -355,11 +355,10 @@ lnet_add_route(__u32 net, unsigned int hops, lnet_nid_t gateway,
>
>  		if (rc == -EHOSTUNREACH) { /* gateway is not on a local net */
>  			return 0;	/* ignore the route entry */
> -		} else {
> -			CERROR("Error %d creating route %s %d %s\n", rc,
> -			       libcfs_net2str(net), hops,
> -			       libcfs_nid2str(gateway));
>  		}
> +		CERROR("Error %d creating route %s %d %s\n", rc,
> +		       libcfs_net2str(net), hops,
> +		       libcfs_nid2str(gateway));
>  		return rc;
>  	}
>
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424531114-12823-4-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


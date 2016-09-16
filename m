X-GM-THRID: 6330985798002802688
X-Received: by 10.28.35.203 with SMTP id j194mr95572wmj.20.1474051508671;
        Fri, 16 Sep 2016 11:45:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.77 with SMTP id g74ls527267ljg.44.gmail; Fri, 16 Sep
 2016 11:45:08 -0700 (PDT)
X-Received: by 10.25.204.21 with SMTP id c21mr103688lfg.19.1474051508166;
        Fri, 16 Sep 2016 11:45:08 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v132si681773wmf.1.2016.09.16.11.45.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 11:45:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,346,1470693600"; 
   d="scan'208";a="237154304"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 20:45:07 +0200
Date: Fri, 16 Sep 2016 20:45:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    wsa@the-dreams.de, elfring@users.sourceforge.net, 
    sudipm.mukherjee@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010: Drop memory allocation
 cast.
In-Reply-To: <20160916173854.GA3176@sandhya>
Message-ID: <alpine.DEB.2.10.1609162044450.3397@hadrien>
References: <20160916173854.GA3176@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 16 Sep 2016, Sandhya Bankar wrote:

> Drop cast on the result of kzalloc.
>
> The semantic patch that makes this change is as follows:
>
> @@
> type T;
> @@
>
> - (T *)
>   (\(kmalloc\|kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
>    kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\)(...))
>
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/ks7010/ks7010_sdio.c |    3 +--
>  1 files changed, 1 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> index f9aec4f..c40e6c5 100755
> --- a/drivers/staging/ks7010/ks7010_sdio.c
> +++ b/drivers/staging/ks7010/ks7010_sdio.c
> @@ -1147,8 +1147,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
>  		/* send stop request to MAC */
>  		{
>  			struct hostif_stop_request_t *pp;
> -			pp = (struct hostif_stop_request_t *)
> -			    kzalloc(hif_align_size(sizeof(*pp)), GFP_KERNEL);
> +			pp = kzalloc(hif_align_size(sizeof(*pp)), GFP_KERNEL);
>  			if (!pp) {
>  				DPRINTK(3, "allocate memory failed..\n");
>  				return;	/* to do goto ni suru */
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916173854.GA3176%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>


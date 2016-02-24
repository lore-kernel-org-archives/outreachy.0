X-GM-THRID: 6254957171854802944
X-Received: by 10.31.168.130 with SMTP id r124mr38298540vke.10.1456346584985;
        Wed, 24 Feb 2016 12:43:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.119 with SMTP id g110ls3334062qgf.2.gmail; Wed, 24 Feb
 2016 12:43:03 -0800 (PST)
X-Received: by 10.129.3.69 with SMTP id 66mr37631199ywd.41.1456346583792;
        Wed, 24 Feb 2016 12:43:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id yd9si674108pab.1.2016.02.24.12.43.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:43:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,494,1449529200"; 
   d="scan'208";a="204504164"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 21:43:01 +0100
Date: Wed, 24 Feb 2016 21:43:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 8/8] staging: lusture: ptlrpc: Remove
 useless return variables
In-Reply-To: <20160224202858.GA23036@Karyakshetra>
Message-ID: <alpine.DEB.2.02.1602242140490.2072@localhost6.localdomain6>
References: <20160224202858.GA23036@Karyakshetra>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 25 Feb 2016, Bhaktipriya Shridhar wrote:

> This patch removes unnecessary return variables and compresses the
> return logic.
> The coccinelle script that finds and fixes this issue is:
> @@ type T; identifier i,f; constant C; @@
> - T i;
> ...when != i
> when strict
> ( return -C;
> |
> - i =
> + return
> f(...);
> - return i;
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/client.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
> index 9b89068..031502e 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/client.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
> @@ -421,10 +421,7 @@ void ptlrpc_request_cache_fini(void)
> 
>  struct ptlrpc_request *ptlrpc_request_cache_alloc(gfp_t flags)
>  {
> -	struct ptlrpc_request *req;
> -
> -	req = kmem_cache_alloc(request_cache, flags | __GFP_ZERO);
> -	return req;
> +	return kmem_cache_alloc(request_cache, flags | __GFP_ZERO);

Not related to this change, but this call would be better as using 
kmem_cache_zalloc, whih takes care of the | __GFP_ZERO.  One could also 
consider whether this function and the next one could just be unfolded and 
dropped entirely.

julia

>  }
> 
>  void ptlrpc_request_cache_free(struct ptlrpc_request *req)
> --
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160224202858.GA23036%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
> 


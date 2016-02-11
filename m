X-GM-THRID: 6249484870068731904
X-Received: by 10.28.47.140 with SMTP id v134mr1789353wmv.3.1455170603030;
        Wed, 10 Feb 2016 22:03:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.212 with SMTP id r203ls955359wmb.30.canary; Wed, 10 Feb
 2016 22:03:22 -0800 (PST)
X-Received: by 10.28.226.132 with SMTP id z126mr1823587wmg.2.1455170602357;
        Wed, 10 Feb 2016 22:03:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si885804wmd.0.2016.02.10.22.03.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 22:03:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,429,1449529200"; 
   d="scan'208";a="202573926"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Feb 2016 07:03:21 +0100
Date: Thu, 11 Feb 2016 07:03:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: lustre: Modify arguments
 of sizeof() to pointer variables
In-Reply-To: <20160211034733.GA2625@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.02.1602110702560.2047@localhost6.localdomain6>
References: <20160211034733.GA2625@janani-Inspiron-3521>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 10 Feb 2016, Janani Ravichandran wrote:

> Take the size of a dereference to a variable rather than the associated
> type, to make the code more resistant to type changes in the future.
> The type of the pointer variable here is the same as the type in the
> argument that is being replaced in sizeof().
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes since v2:
>  * Modified commit description to add that the pointer variable is of
>    the same type.
>  
>  drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> index cb74ae7..49cd333 100644
> --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> @@ -1352,7 +1352,7 @@ static void kiblnd_destroy_fmr_pool(kib_fmr_pool_t *pool)
>  	if (pool->fpo_hdev != NULL)
>  		kiblnd_hdev_decref(pool->fpo_hdev);
>  
> -	LIBCFS_FREE(pool, sizeof(kib_fmr_pool_t));
> +	LIBCFS_FREE(pool, sizeof(*pool));
>  }
>  
>  static void kiblnd_destroy_fmr_pool_list(struct list_head *head)
> @@ -1410,7 +1410,7 @@ static int kiblnd_create_fmr_pool(kib_fmr_poolset_t *fps,
>  		CERROR("Failed to create FMR pool: %d\n", rc);
>  
>  		kiblnd_hdev_decref(fpo->fpo_hdev);
> -		LIBCFS_FREE(fpo, sizeof(kib_fmr_pool_t));
> +		LIBCFS_FREE(fpo, sizeof(*fpo));
>  		return rc;
>  	}
>  
> @@ -1458,7 +1458,7 @@ static int kiblnd_init_fmr_poolset(kib_fmr_poolset_t *fps, int cpt,
>  	kib_fmr_pool_t *fpo;
>  	int rc;
>  
> -	memset(fps, 0, sizeof(kib_fmr_poolset_t));
> +	memset(fps, 0, sizeof(*fps));
>  
>  	fps->fps_net = net;
>  	fps->fps_cpt = cpt;
> @@ -1606,7 +1606,7 @@ static void kiblnd_init_pool(kib_poolset_t *ps, kib_pool_t *pool, int size)
>  {
>  	CDEBUG(D_NET, "Initialize %s pool\n", ps->ps_name);
>  
> -	memset(pool, 0, sizeof(kib_pool_t));
> +	memset(pool, 0, sizeof(*pool));
>  	INIT_LIST_HEAD(&pool->po_free_list);
>  	pool->po_deadline = cfs_time_shift(IBLND_POOL_DEADLINE);
>  	pool->po_owner    = ps;
> @@ -1663,7 +1663,7 @@ static int kiblnd_init_poolset(kib_poolset_t *ps, int cpt,
>  	kib_pool_t *pool;
>  	int rc;
>  
> -	memset(ps, 0, sizeof(kib_poolset_t));
> +	memset(ps, 0, sizeof(*ps));
>  
>  	ps->ps_cpt          = cpt;
>  	ps->ps_net          = net;
> @@ -1834,7 +1834,7 @@ static void kiblnd_destroy_tx_pool(kib_pool_t *pool)
>  		    pool->po_size * sizeof(kib_tx_t));
>  out:
>  	kiblnd_fini_pool(pool);
> -	LIBCFS_FREE(tpo, sizeof(kib_tx_pool_t));
> +	LIBCFS_FREE(tpo, sizeof(*tpo));
>  }
>  
>  static int kiblnd_tx_pool_size(int ncpts)
> @@ -1866,7 +1866,7 @@ static int kiblnd_create_tx_pool(kib_poolset_t *ps, int size,
>  	npg = (size * IBLND_MSG_SIZE + PAGE_SIZE - 1) / PAGE_SIZE;
>  	if (kiblnd_alloc_pages(&tpo->tpo_tx_pages, ps->ps_cpt, npg) != 0) {
>  		CERROR("Can't allocate tx pages: %d\n", npg);
> -		LIBCFS_FREE(tpo, sizeof(kib_tx_pool_t));
> +		LIBCFS_FREE(tpo, sizeof(*tpo));
>  		return -ENOMEM;
>  	}
>  
> -- 
> 2.5.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160211034733.GA2625%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
> 


X-GM-THRID: 6331204832263667712
X-Received: by 10.28.31.67 with SMTP id f64mr62883wmf.15.1474102156652;
        Sat, 17 Sep 2016 01:49:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.3 with SMTP id s3ls686820lja.25.gmail; Sat, 17 Sep 2016
 01:49:16 -0700 (PDT)
X-Received: by 10.46.9.5 with SMTP id 5mr2615300ljj.0.1474102156218;
        Sat, 17 Sep 2016 01:49:16 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si834654wmd.1.2016.09.17.01.49.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 01:49:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,349,1470693600"; 
   d="scan'208";a="193748360"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 10:49:15 +0200
Date: Sat, 17 Sep 2016 10:49:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, oleg.drokin@intel.com, 
    andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: Modify argument
 of sizeof() to pointer variables.
In-Reply-To: <84439d72e1db653a0e7511e9a29c5b2c23703eab.1474055668.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.10.1609171048120.3113@hadrien>
References: <cover.1474055668.git.bankarsandhya512@gmail.com> <84439d72e1db653a0e7511e9a29c5b2c23703eab.1474055668.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 17 Sep 2016, Sandhya Bankar wrote:

> Modify arguments of sizeof() to pointer variables.
> The destination of the allocation has type struct **, so the
> elements of the array should have pointer type, not structure type.
>
> These changes are made using below Coccinelle script:
>
> @disable sizeof_type_expr@
> type T;
> T **x;
> @@
>
>   x =
>   <+...sizeof(
> - T
> + *x
>   )...+>
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> index c7a5d49..5f17c82 100755
> --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> @@ -2206,7 +2206,7 @@ static int kiblnd_net_init_pools(struct kib_net *net, lnet_ni_t *ni, __u32 *cpts
>  	 * number of CPTs that exist, i.e net->ibn_fmr_ps[cpt].
>  	 */
>  	net->ibn_fmr_ps = cfs_percpt_alloc(lnet_cpt_table(),
> -					   sizeof(struct kib_fmr_poolset));
> +					   sizeof(*net->ibn_fmr_ps));

Did you check on what cfs_percpt_alloc actually does with this
information?  This is not an obvious case, like kmalloc.  The commit
message should explain what the function does with the size information
and why the change is correct.

julia

>  	if (!net->ibn_fmr_ps) {
>  		CERROR("Failed to allocate FMR pool array\n");
>  		rc = -ENOMEM;
> @@ -2234,7 +2234,7 @@ static int kiblnd_net_init_pools(struct kib_net *net, lnet_ni_t *ni, __u32 *cpts
>  	 * number of CPTs that exist, i.e net->ibn_tx_ps[cpt].
>  	 */
>  	net->ibn_tx_ps = cfs_percpt_alloc(lnet_cpt_table(),
> -					  sizeof(struct kib_tx_poolset));
> +					  sizeof(*net->ibn_tx_ps));
>  	if (!net->ibn_tx_ps) {
>  		CERROR("Failed to allocate tx pool array\n");
>  		rc = -ENOMEM;
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/84439d72e1db653a0e7511e9a29c5b2c23703eab.1474055668.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


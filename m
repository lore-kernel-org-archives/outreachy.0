X-GM-THRID: 6264136808663089152
X-Received: by 10.28.189.130 with SMTP id n124mr881868wmf.4.1458484299564;
        Sun, 20 Mar 2016 07:31:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.48.145 with SMTP id w139ls469271wmw.16.gmail; Sun, 20 Mar
 2016 07:31:38 -0700 (PDT)
X-Received: by 10.194.236.230 with SMTP id ux6mr3155151wjc.4.1458484298944;
        Sun, 20 Mar 2016 07:31:38 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si279982wmd.1.2016.03.20.07.31.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 07:31:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,366,1454972400"; 
   d="scan'208";a="209044853"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Mar 2016 15:31:38 +0100
Date: Sun, 20 Mar 2016 15:31:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: lustre: o2iblnd: Correct
 the argument of sizeof().
In-Reply-To: <ed2d6f01c194ec9700dcec61409dc30e892136ad.1458454678.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.10.1603201530520.2597@hadrien>
References: <cover.1458454678.git.bankarsandhya512@gmail.com> <ed2d6f01c194ec9700dcec61409dc30e892136ad.1458454678.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 20 Mar 2016, Sandhya Bankar wrote:

> Correct the argument of sizeof().

What do you mean by correct?  Was the value wrong before, ie 27 when it
should have been 45?  Or is it a coding style issue, ie *x instead of a
type name?

julia

>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> index 0d32e65..89f9390 100644
> --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> @@ -1968,7 +1968,7 @@ static int kiblnd_net_init_pools(kib_net_t *net, __u32 *cpts, int ncpts)
>  	 */
>
>  	net->ibn_fmr_ps = cfs_percpt_alloc(lnet_cpt_table(),
> -					   sizeof(kib_fmr_poolset_t));
> +					   sizeof(*net->ibn_fmr_ps));
>  	if (!net->ibn_fmr_ps) {
>  		CERROR("Failed to allocate FMR pool array\n");
>  		rc = -ENOMEM;
> @@ -1992,7 +1992,7 @@ static int kiblnd_net_init_pools(kib_net_t *net, __u32 *cpts, int ncpts)
>
>   create_tx_pool:
>  	net->ibn_tx_ps = cfs_percpt_alloc(lnet_cpt_table(),
> -					  sizeof(kib_tx_poolset_t));
> +					  sizeof(*net->ibn_tx_ps));
>  	if (!net->ibn_tx_ps) {
>  		CERROR("Failed to allocate tx pool array\n");
>  		rc = -ENOMEM;
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ed2d6f01c194ec9700dcec61409dc30e892136ad.1458454678.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


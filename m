X-GM-THRID: 6203875551364513792
X-Received: by 10.112.209.73 with SMTP id mk9mr3343945lbc.14.1444456432500;
        Fri, 09 Oct 2015 22:53:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.98 with SMTP id gt2ls437644wib.54.canary; Fri, 09 Oct
 2015 22:53:51 -0700 (PDT)
X-Received: by 10.180.10.135 with SMTP id i7mr597981wib.2.1444456431913;
        Fri, 09 Oct 2015 22:53:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si64306wif.2.2015.10.09.22.53.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 22:53:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,661,1437429600"; 
   d="scan'208";a="182053764"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Oct 2015 07:53:51 +0200
Date: Sat, 10 Oct 2015 07:53:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: remove unnecessary
 'out of memory' messages
In-Reply-To: <20151010044521.GA27086@Ubuntu-D830>
Message-ID: <alpine.DEB.2.02.1510100752590.2062@localhost6.localdomain6>
References: <20151010044521.GA27086@Ubuntu-D830>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 9 Oct 2015, Alison Schofield wrote:

> 'Out of memory' messages are unnecssary in the drivers as they are
> reported by memory management.
> 
> Addresses checkpatch.pl: WARNING: Possible unnecessary 'out of memory' message
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/chip.c      |  1 -
>  drivers/staging/rdma/hfi1/init.c      | 11 ++---------
>  drivers/staging/rdma/hfi1/pio.c       |  7 +------
>  drivers/staging/rdma/hfi1/user_sdma.c | 27 +++++++--------------------
>  4 files changed, 10 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
> index aa58e59..1152359 100644
> --- a/drivers/staging/rdma/hfi1/chip.c
> +++ b/drivers/staging/rdma/hfi1/chip.c
> @@ -8991,7 +8991,6 @@ static int set_up_interrupts(struct hfi1_devdata *dd)
>  
>  	entries = kcalloc(total, sizeof(*entries), GFP_KERNEL);
>  	if (!entries) {
> -		dd_dev_err(dd, "cannot allocate msix table\n");

Unrelatedly, dd_dev_err is not a standard kernel error reporting function.  
Maybe you can replace it with a standard one (I guess dev_err) in the 
cases where it is still used.

julia

>  		ret = -ENOMEM;
>  		goto fail;
>  	}
> diff --git a/drivers/staging/rdma/hfi1/init.c b/drivers/staging/rdma/hfi1/init.c
> index a877eda..1fe20ff 100644
> --- a/drivers/staging/rdma/hfi1/init.c
> +++ b/drivers/staging/rdma/hfi1/init.c
> @@ -134,11 +134,8 @@ int hfi1_create_ctxts(struct hfi1_devdata *dd)
>  	dd->assigned_node_id = local_node_id;
>  
>  	dd->rcd = kcalloc(dd->num_rcv_contexts, sizeof(*dd->rcd), GFP_KERNEL);
> -	if (!dd->rcd) {
> -		dd_dev_err(dd,
> -			"Unable to allocate receive context array, failing\n");
> +	if (!dd->rcd)
>  		goto nomem;
> -	}
>  
>  	/* create one or more kernel contexts */
>  	for (i = 0; i < dd->first_user_ctxt; ++i) {
> @@ -318,12 +315,8 @@ struct hfi1_ctxtdata *hfi1_create_ctxtdata(struct hfi1_pportdata *ppd, u32 ctxt)
>  		if (ctxt < dd->first_user_ctxt) { /* N/A for PSM contexts */
>  			rcd->opstats = kzalloc(sizeof(*rcd->opstats),
>  				GFP_KERNEL);
> -			if (!rcd->opstats) {
> -				dd_dev_err(dd,
> -					   "ctxt%u: Unable to allocate per ctxt stats buffer\n",
> -					   rcd->ctxt);
> +			if (!rcd->opstats)
>  				goto bail;
> -			}
>  		}
>  	}
>  	return rcd;
> diff --git a/drivers/staging/rdma/hfi1/pio.c b/drivers/staging/rdma/hfi1/pio.c
> index 9991814..67dd93a 100644
> --- a/drivers/staging/rdma/hfi1/pio.c
> +++ b/drivers/staging/rdma/hfi1/pio.c
> @@ -435,7 +435,6 @@ int init_send_contexts(struct hfi1_devdata *dd)
>  					sizeof(struct send_context_info),
>  					GFP_KERNEL);
>  	if (!dd->send_contexts || !dd->hw_to_sw) {
> -		dd_dev_err(dd, "Unable to allocate send context arrays\n");
>  		kfree(dd->hw_to_sw);
>  		kfree(dd->send_contexts);
>  		free_credit_return(dd);
> @@ -684,10 +683,8 @@ struct send_context *sc_alloc(struct hfi1_devdata *dd, int type,
>  		return NULL;
>  
>  	sc = kzalloc_node(sizeof(struct send_context), GFP_KERNEL, numa);
> -	if (!sc) {
> -		dd_dev_err(dd, "Cannot allocate send context structure\n");
> +	if (!sc)
>  		return NULL;
> -	}
>  
>  	spin_lock_irqsave(&dd->sc_lock, flags);
>  	ret = sc_hw_alloc(dd, type, &sw_index, &hw_context);
> @@ -813,8 +810,6 @@ struct send_context *sc_alloc(struct hfi1_devdata *dd, int type,
>  		sc->sr = kzalloc_node(sizeof(union pio_shadow_ring) *
>  				sc->sr_size, GFP_KERNEL, numa);
>  		if (!sc->sr) {
> -			dd_dev_err(dd,
> -				"Cannot allocate send context shadow ring structure\n");
>  			sc_free(sc);
>  			return NULL;
>  		}
> diff --git a/drivers/staging/rdma/hfi1/user_sdma.c b/drivers/staging/rdma/hfi1/user_sdma.c
> index 6620262..b20cbb9 100644
> --- a/drivers/staging/rdma/hfi1/user_sdma.c
> +++ b/drivers/staging/rdma/hfi1/user_sdma.c
> @@ -378,20 +378,14 @@ int hfi1_user_sdma_alloc_queues(struct hfi1_ctxtdata *uctxt, struct file *fp)
>  	dd = uctxt->dd;
>  
>  	pq = kzalloc(sizeof(*pq), GFP_KERNEL);
> -	if (!pq) {
> -		dd_dev_err(dd,
> -			   "[%u:%u] Failed to allocate SDMA request struct\n",
> -			   uctxt->ctxt, subctxt_fp(fp));
> +	if (!pq)
>  		goto pq_nomem;
> -	}
> +
>  	memsize = sizeof(*pq->reqs) * hfi1_sdma_comp_ring_size;
>  	pq->reqs = kmalloc(memsize, GFP_KERNEL);
> -	if (!pq->reqs) {
> -		dd_dev_err(dd,
> -			   "[%u:%u] Failed to allocate SDMA request queue (%u)\n",
> -			   uctxt->ctxt, subctxt_fp(fp), memsize);
> +	if (!pq->reqs) 
>  		goto pq_reqs_nomem;
> -	}
> +
>  	INIT_LIST_HEAD(&pq->list);
>  	pq->dd = dd;
>  	pq->ctxt = uctxt->ctxt;
> @@ -417,22 +411,15 @@ int hfi1_user_sdma_alloc_queues(struct hfi1_ctxtdata *uctxt, struct file *fp)
>  	}
>  	user_sdma_pkt_fp(fp) = pq;
>  	cq = kzalloc(sizeof(*cq), GFP_KERNEL);
> -	if (!cq) {
> -		dd_dev_err(dd,
> -			   "[%u:%u] Failed to allocate SDMA completion queue\n",
> -			   uctxt->ctxt, subctxt_fp(fp));
> +	if (!cq)
>  		goto cq_nomem;
> -	}
>  
>  	memsize = ALIGN(sizeof(*cq->comps) * hfi1_sdma_comp_ring_size,
>  			PAGE_SIZE);
>  	cq->comps = vmalloc_user(memsize);
> -	if (!cq->comps) {
> -		dd_dev_err(dd,
> -		      "[%u:%u] Failed to allocate SDMA completion queue entries\n",
> -		      uctxt->ctxt, subctxt_fp(fp));
> +	if (!cq->comps)
>  		goto cq_comps_nomem;
> -	}
> +
>  	cq->nentries = hfi1_sdma_comp_ring_size;
>  	user_sdma_comp_fp(fp) = cq;
>  
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151010044521.GA27086%40Ubuntu-D830.
> For more options, visit https://groups.google.com/d/optout.
> 


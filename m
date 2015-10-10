X-GM-THRID: 6203875551364513792
X-Received: by 10.13.228.133 with SMTP id n127mr16190421ywe.37.1444497206091;
        Sat, 10 Oct 2015 10:13:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.118.103 with SMTP id kl7ls755259igb.2.gmail; Sat, 10 Oct
 2015 10:13:25 -0700 (PDT)
X-Received: by 10.107.148.204 with SMTP id w195mr17430707iod.15.1444497205642;
        Sat, 10 Oct 2015 10:13:25 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id w5si776068pbt.1.2015.10.10.10.13.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 10:13:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hy16so114970740pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 10:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LqPkrLF9X9Nm2XrF9RW3F3YEN5P5lIVq57ZflG/pdsc=;
        b=EGQQCdNRHzU5JEMcvBpxhSrey7LhQdRZW1Z+dc/KMZH4ON60Li0suPMT/vAgt/2vAc
         C6qqx7+cTwHWUOW51XNr0PZLK4N7KjSPfToEZXrbl6sFqw/P9rLmteGF6QGBMhrs16DT
         ZoNSgyNvIB8a0uYyHk2a4BDzM/b7TTudBt9voa+Qnp9sQQ1hA5YrHiqqy7a4wgk6c73W
         88xh316uHofZ0BNmwkfkPgMw3kpOI3lJdwCyBOwKEtlTGKsKNSq2rmnZksuJL7a3MchW
         CEE/VKwRV89fbnVCW2xYeDEKyBInLTb5W9AXjwgSyi4UjiUdk/nU3LEonSPCHVH16T05
         kisg==
X-Received: by 10.68.179.33 with SMTP id dd1mr23834815pbc.134.1444497205517;
        Sat, 10 Oct 2015 10:13:25 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id pq1sm9123207pbb.91.2015.10.10.10.13.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 10:13:25 -0700 (PDT)
Date: Sat, 10 Oct 2015 10:13:23 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: remove
 unnecessary 'out of memory' messages
Message-ID: <20151010171322.GA2302@Ubuntu-D830>
References: <20151010044521.GA27086@Ubuntu-D830>
 <alpine.DEB.2.02.1510100752590.2062@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510100752590.2062@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Oct 10, 2015 at 07:53:50AM +0200, Julia Lawall wrote:
> On Fri, 9 Oct 2015, Alison Schofield wrote:
> 
> > 'Out of memory' messages are unnecssary in the drivers as they are
> > reported by memory management.
> > 
> > Addresses checkpatch.pl: WARNING: Possible unnecessary 'out of memory' message
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> >  drivers/staging/rdma/hfi1/chip.c      |  1 -
> >  drivers/staging/rdma/hfi1/init.c      | 11 ++---------
> >  drivers/staging/rdma/hfi1/pio.c       |  7 +------
> >  drivers/staging/rdma/hfi1/user_sdma.c | 27 +++++++--------------------
> >  4 files changed, 10 insertions(+), 36 deletions(-)
> > 
> > diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
> > index aa58e59..1152359 100644
> > --- a/drivers/staging/rdma/hfi1/chip.c
> > +++ b/drivers/staging/rdma/hfi1/chip.c
> > @@ -8991,7 +8991,6 @@ static int set_up_interrupts(struct hfi1_devdata *dd)
> >  
> >  	entries = kcalloc(total, sizeof(*entries), GFP_KERNEL);
> >  	if (!entries) {
> > -		dd_dev_err(dd, "cannot allocate msix table\n");
> 
> Unrelatedly, dd_dev_err is not a standard kernel error reporting function.  
> Maybe you can replace it with a standard one (I guess dev_err) in the 
> cases where it is still used.
> 
> julia

The header file defines dd_dev_err to load params to dev_err. (It does
this similarly for all types of  dev_* messages.)

hfi1.h: 
	#define dd_dev_err(dd, fmt, ...) \
		dev_err(&(dd)->pcidev->dev, "%s: " fmt, \
			get_unit_name((dd)->unit), ##__VA_ARGS__)

Simplifies calls in *.c and improves readabilty (249 instances in hfi1)

Leave it alone - right?

alison


> 
> >  		ret = -ENOMEM;
> >  		goto fail;
> >  	}
> > diff --git a/drivers/staging/rdma/hfi1/init.c b/drivers/staging/rdma/hfi1/init.c
> > index a877eda..1fe20ff 100644
> > --- a/drivers/staging/rdma/hfi1/init.c
> > +++ b/drivers/staging/rdma/hfi1/init.c
> > @@ -134,11 +134,8 @@ int hfi1_create_ctxts(struct hfi1_devdata *dd)
> >  	dd->assigned_node_id = local_node_id;
> >  
> >  	dd->rcd = kcalloc(dd->num_rcv_contexts, sizeof(*dd->rcd), GFP_KERNEL);
> > -	if (!dd->rcd) {
> > -		dd_dev_err(dd,
> > -			"Unable to allocate receive context array, failing\n");
> > +	if (!dd->rcd)
> >  		goto nomem;
> > -	}
> >  
> >  	/* create one or more kernel contexts */
> >  	for (i = 0; i < dd->first_user_ctxt; ++i) {
> > @@ -318,12 +315,8 @@ struct hfi1_ctxtdata *hfi1_create_ctxtdata(struct hfi1_pportdata *ppd, u32 ctxt)
> >  		if (ctxt < dd->first_user_ctxt) { /* N/A for PSM contexts */
> >  			rcd->opstats = kzalloc(sizeof(*rcd->opstats),
> >  				GFP_KERNEL);
> > -			if (!rcd->opstats) {
> > -				dd_dev_err(dd,
> > -					   "ctxt%u: Unable to allocate per ctxt stats buffer\n",
> > -					   rcd->ctxt);
> > +			if (!rcd->opstats)
> >  				goto bail;
> > -			}
> >  		}
> >  	}
> >  	return rcd;
> > diff --git a/drivers/staging/rdma/hfi1/pio.c b/drivers/staging/rdma/hfi1/pio.c
> > index 9991814..67dd93a 100644
> > --- a/drivers/staging/rdma/hfi1/pio.c
> > +++ b/drivers/staging/rdma/hfi1/pio.c
> > @@ -435,7 +435,6 @@ int init_send_contexts(struct hfi1_devdata *dd)
> >  					sizeof(struct send_context_info),
> >  					GFP_KERNEL);
> >  	if (!dd->send_contexts || !dd->hw_to_sw) {
> > -		dd_dev_err(dd, "Unable to allocate send context arrays\n");
> >  		kfree(dd->hw_to_sw);
> >  		kfree(dd->send_contexts);
> >  		free_credit_return(dd);
> > @@ -684,10 +683,8 @@ struct send_context *sc_alloc(struct hfi1_devdata *dd, int type,
> >  		return NULL;
> >  
> >  	sc = kzalloc_node(sizeof(struct send_context), GFP_KERNEL, numa);
> > -	if (!sc) {
> > -		dd_dev_err(dd, "Cannot allocate send context structure\n");
> > +	if (!sc)
> >  		return NULL;
> > -	}
> >  
> >  	spin_lock_irqsave(&dd->sc_lock, flags);
> >  	ret = sc_hw_alloc(dd, type, &sw_index, &hw_context);
> > @@ -813,8 +810,6 @@ struct send_context *sc_alloc(struct hfi1_devdata *dd, int type,
> >  		sc->sr = kzalloc_node(sizeof(union pio_shadow_ring) *
> >  				sc->sr_size, GFP_KERNEL, numa);
> >  		if (!sc->sr) {
> > -			dd_dev_err(dd,
> > -				"Cannot allocate send context shadow ring structure\n");
> >  			sc_free(sc);
> >  			return NULL;
> >  		}
> > diff --git a/drivers/staging/rdma/hfi1/user_sdma.c b/drivers/staging/rdma/hfi1/user_sdma.c
> > index 6620262..b20cbb9 100644
> > --- a/drivers/staging/rdma/hfi1/user_sdma.c
> > +++ b/drivers/staging/rdma/hfi1/user_sdma.c
> > @@ -378,20 +378,14 @@ int hfi1_user_sdma_alloc_queues(struct hfi1_ctxtdata *uctxt, struct file *fp)
> >  	dd = uctxt->dd;
> >  
> >  	pq = kzalloc(sizeof(*pq), GFP_KERNEL);
> > -	if (!pq) {
> > -		dd_dev_err(dd,
> > -			   "[%u:%u] Failed to allocate SDMA request struct\n",
> > -			   uctxt->ctxt, subctxt_fp(fp));
> > +	if (!pq)
> >  		goto pq_nomem;
> > -	}
> > +
> >  	memsize = sizeof(*pq->reqs) * hfi1_sdma_comp_ring_size;
> >  	pq->reqs = kmalloc(memsize, GFP_KERNEL);
> > -	if (!pq->reqs) {
> > -		dd_dev_err(dd,
> > -			   "[%u:%u] Failed to allocate SDMA request queue (%u)\n",
> > -			   uctxt->ctxt, subctxt_fp(fp), memsize);
> > +	if (!pq->reqs) 
> >  		goto pq_reqs_nomem;
> > -	}
> > +
> >  	INIT_LIST_HEAD(&pq->list);
> >  	pq->dd = dd;
> >  	pq->ctxt = uctxt->ctxt;
> > @@ -417,22 +411,15 @@ int hfi1_user_sdma_alloc_queues(struct hfi1_ctxtdata *uctxt, struct file *fp)
> >  	}
> >  	user_sdma_pkt_fp(fp) = pq;
> >  	cq = kzalloc(sizeof(*cq), GFP_KERNEL);
> > -	if (!cq) {
> > -		dd_dev_err(dd,
> > -			   "[%u:%u] Failed to allocate SDMA completion queue\n",
> > -			   uctxt->ctxt, subctxt_fp(fp));
> > +	if (!cq)
> >  		goto cq_nomem;
> > -	}
> >  
> >  	memsize = ALIGN(sizeof(*cq->comps) * hfi1_sdma_comp_ring_size,
> >  			PAGE_SIZE);
> >  	cq->comps = vmalloc_user(memsize);
> > -	if (!cq->comps) {
> > -		dd_dev_err(dd,
> > -		      "[%u:%u] Failed to allocate SDMA completion queue entries\n",
> > -		      uctxt->ctxt, subctxt_fp(fp));
> > +	if (!cq->comps)
> >  		goto cq_comps_nomem;
> > -	}
> > +
> >  	cq->nentries = hfi1_sdma_comp_ring_size;
> >  	user_sdma_comp_fp(fp) = cq;
> >  
> > -- 
> > 2.1.4
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151010044521.GA27086%40Ubuntu-D830.
> > For more options, visit https://groups.google.com/d/optout.
> > 


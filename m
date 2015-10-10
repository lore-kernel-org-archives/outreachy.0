X-GM-THRID: 6203875551364513792
X-Received: by 10.129.4.15 with SMTP id 15mr14217446ywe.54.1444465369943;
        Sat, 10 Oct 2015 01:22:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.227 with SMTP id e3ls693825igx.22.gmail; Sat, 10 Oct
 2015 01:22:49 -0700 (PDT)
X-Received: by 10.66.121.135 with SMTP id lk7mr14440956pab.31.1444465369674;
        Sat, 10 Oct 2015 01:22:49 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id w5si593711pbt.1.2015.10.10.01.22.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 01:22:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabve7 with SMTP id ve7so49553568pab.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 01:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=2gEo9YNdhYvnaYoi++Yx9g6DZ5IgkbJJV/yctzBhJFo=;
        b=vDgbEPdvpmAZE9sNvJkqHjJHTgTaCPTTEayj7lGWMC3RWdKrY8ktbkfeW8+u9JWrxv
         GxRknxnYRRz9tzNL8qnFGIiSYOoxaWJCwfY5DexYf6R2Ua85BweYTmGZY/PW2SGCfJN7
         P/kKCdyx4/QqX8CJebl7KUO/8Itw0KykaqeRDe9pIghLo2Q2BYsDnzEcSyZHtl/AEdKy
         0YZQbWf+Bkd4cDTNSTOwRS5dI4lSwg7chjp1Cco34u+i59Q9RDprNCb0AuiZjBXEzep9
         1whf7AOjfaCPe7efkvGQWKUxeN6nmFbAJRZylZ1Fl5O3+ulJ2P9Cv9z8h7qoUbF0j+DU
         VC1w==
X-Received: by 10.66.216.39 with SMTP id on7mr20741933pac.73.1444465369525;
        Sat, 10 Oct 2015 01:22:49 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id dk2sm6688131pbd.57.2015.10.10.01.22.48
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 10 Oct 2015 01:22:49 -0700 (PDT)
Date: Sat, 10 Oct 2015 13:52:44 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: remove
 unnecessary 'out of memory' messages
Message-ID: <20151010082244.GI4795@sudip-pc>
References: <20151010044521.GA27086@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151010044521.GA27086@Ubuntu-D830>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 09, 2015 at 09:45:34PM -0700, Alison Schofield wrote:
> 'Out of memory' messages are unnecssary in the drivers as they are
> reported by memory management.
> 
> Addresses checkpatch.pl: WARNING: Possible unnecessary 'out of memory' message
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
<snip>
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

trailing whitespace error here.

regards
sudip


X-GM-THRID: 6253287344425664512
X-Received: by 10.112.129.65 with SMTP id nu1mr2464139lbb.18.1455975228644;
        Sat, 20 Feb 2016 05:33:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.86 with SMTP id f83ls176349lfi.59.gmail; Sat, 20 Feb
 2016 05:33:48 -0800 (PST)
X-Received: by 10.25.170.7 with SMTP id t7mr2438160lfe.2.1455975228043;
        Sat, 20 Feb 2016 05:33:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v197si525437wmv.1.2016.02.20.05.33.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 05:33:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,476,1449529200"; 
   d="scan'208";a="165379082"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 14:33:46 +0100
Date: Sat, 20 Feb 2016 08:33:45 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Use
 DIV_ROUND_UP
In-Reply-To: <20160220082827.GA14902@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602200833090.4083@hadrien>
References: <20160220082827.GA14902@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 20 Feb 2016, Amitoj Kaur Chawla wrote:

> The kernel.h macro DIV_ROUND_UP performs the computation
> (((n) + (d) - 1) /(d)) but is perhaps more readable.
>
> The Coccinelle script used is as follows:
>
> // <smpl>
> @@
> expression n,d;
> @@
> (
> - (n + d - 1) / d
> + DIV_ROUND_UP(n,d)
> |
> - (n + (d - 1)) / d
> + DIV_ROUND_UP(n,d)
> )

If you put parentheses around n and d in the above rules, then you won't
need the two rules that come after.

julia

> @@
> expression n,d;
> @@
> - DIV_ROUND_UP((n),d)
> + DIV_ROUND_UP(n,d)
> @@
> expression n,d;
> @@
> - DIV_ROUND_UP(n,(d))
> + DIV_ROUND_UP(n,d)
> // </smpl>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/mr.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rdma/hfi1/mr.c b/drivers/staging/rdma/hfi1/mr.c
> index a3f8b88..3825321 100644
> --- a/drivers/staging/rdma/hfi1/mr.c
> +++ b/drivers/staging/rdma/hfi1/mr.c
> @@ -70,7 +70,7 @@ static int init_mregion(struct hfi1_mregion *mr, struct ib_pd *pd,
>  	int m, i = 0;
>  	int rval = 0;
>
> -	m = (count + HFI1_SEGSZ - 1) / HFI1_SEGSZ;
> +	m = DIV_ROUND_UP(count, HFI1_SEGSZ);
>  	for (; i < m; i++) {
>  		mr->map[i] = kzalloc(sizeof(*mr->map[0]), GFP_KERNEL);
>  		if (!mr->map[i])
> @@ -159,7 +159,7 @@ static struct hfi1_mr *alloc_mr(int count, struct ib_pd *pd)
>  	int m;
>
>  	/* Allocate struct plus pointers to first level page tables. */
> -	m = (count + HFI1_SEGSZ - 1) / HFI1_SEGSZ;
> +	m = DIV_ROUND_UP(count, HFI1_SEGSZ);
>  	mr = kzalloc(sizeof(*mr) + m * sizeof(mr->mr.map[0]), GFP_KERNEL);
>  	if (!mr)
>  		goto bail;
> @@ -333,7 +333,7 @@ struct ib_fmr *hfi1_alloc_fmr(struct ib_pd *pd, int mr_access_flags,
>  	int rval = -ENOMEM;
>
>  	/* Allocate struct plus pointers to first level page tables. */
> -	m = (fmr_attr->max_pages + HFI1_SEGSZ - 1) / HFI1_SEGSZ;
> +	m = DIV_ROUND_UP(fmr_attr->max_pages, HFI1_SEGSZ);
>  	fmr = kzalloc(sizeof(*fmr) + m * sizeof(fmr->mr.map[0]), GFP_KERNEL);
>  	if (!fmr)
>  		goto bail;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160220082827.GA14902%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>


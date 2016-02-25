X-GM-THRID: 6255211798983606272
X-Received: by 10.25.210.201 with SMTP id j192mr5540557lfg.6.1456405136822;
        Thu, 25 Feb 2016 04:58:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.174.145 with SMTP id x139ls131056wme.10.gmail; Thu, 25 Feb
 2016 04:58:56 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr5536730wjc.6.1456405136427;
        Thu, 25 Feb 2016 04:58:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v197si88807wmv.1.2016.02.25.04.58.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 04:58:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="204607117"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 13:58:56 +0100
Date: Thu, 25 Feb 2016 13:58:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Remove casts of
 pointer to same type
In-Reply-To: <20160225125704.GA7990@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1602251358350.2708@hadrien>
References: <20160225125704.GA7990@Karyakshetra>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 25 Feb 2016, Bhaktipriya Shridhar wrote:

> Casting a pointer to a pointer of the same type is unnecessary, so
> remove these unnecessary casts.

Maybe you could make a series and get rid of the unnecessary parentheses
too.

julia

>
> This was done with Coccinelle:
>
> @@
> type T;
> T *ptr;
> @@
> - (T *)ptr
> + ptr
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/mad.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rdma/hfi1/mad.c b/drivers/staging/rdma/hfi1/mad.c
> index bee1c0e..ddce918 100644
> --- a/drivers/staging/rdma/hfi1/mad.c
> +++ b/drivers/staging/rdma/hfi1/mad.c
> @@ -2579,7 +2579,7 @@ static int pma_get_opa_datacounters(struct opa_pma_mad *pmp,
>  		return reply((struct ib_mad_hdr *)pmp);
>  	}
>
> -	rsp = (struct _port_dctrs *)&(req->port[0]);
> +	rsp = &(req->port[0]);
>  	memset(rsp, 0, sizeof(*rsp));
>
>  	rsp->port_number = port;
> @@ -2731,7 +2731,7 @@ static int pma_get_opa_porterrors(struct opa_pma_mad *pmp,
>  		return reply((struct ib_mad_hdr *)pmp);
>  	}
>
> -	rsp = (struct _port_ectrs *)&(req->port[0]);
> +	rsp = &(req->port[0]);
>
>  	ibp = to_iport(ibdev, port_num);
>  	ppd = ppd_from_ibp(ibp);
> @@ -2779,7 +2779,7 @@ static int pma_get_opa_porterrors(struct opa_pma_mad *pmp,
>  	tmp = read_dev_cntr(dd, C_DC_UNC_ERR, CNTR_INVALID_VL);
>  	rsp->uncorrectable_errors = tmp < 0x100 ? (tmp & 0xff) : 0xff;
>
> -	vlinfo = (struct _vls_ectrs *)&(rsp->vls[0]);
> +	vlinfo = &(rsp->vls[0]);
>  	vfi = 0;
>  	vl_select_mask = be32_to_cpu(req->vl_select_mask);
>  	for_each_set_bit(vl, (unsigned long *)&(vl_select_mask),
> @@ -2810,7 +2810,7 @@ static int pma_get_opa_errorinfo(struct opa_pma_mad *pmp,
>  	u64 reg;
>
>  	req = (struct opa_port_error_info_msg *)pmp->data;
> -	rsp = (struct _port_ei *)&(req->port[0]);
> +	rsp = &(req->port[0]);
>
>  	num_ports = OPA_AM_NPORT(be32_to_cpu(pmp->mad_hdr.attr_mod));
>  	num_pslm = hweight64(be64_to_cpu(req->port_select_mask[3]));
> @@ -3051,7 +3051,7 @@ static int pma_set_opa_errorinfo(struct opa_pma_mad *pmp,
>  	u32 error_info_select;
>
>  	req = (struct opa_port_error_info_msg *)pmp->data;
> -	rsp = (struct _port_ei *)&(req->port[0]);
> +	rsp = &(req->port[0]);
>
>  	num_ports = OPA_AM_NPORT(be32_to_cpu(pmp->mad_hdr.attr_mod));
>  	num_pslm = hweight64(be64_to_cpu(req->port_select_mask[3]));
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160225125704.GA7990%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>


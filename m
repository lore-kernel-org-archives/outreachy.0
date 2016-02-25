X-GM-THRID: 6255244617068838912
X-Received: by 10.25.15.161 with SMTP id 33mr5623447lfp.0.1456412845160;
        Thu, 25 Feb 2016 07:07:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.91.82 with SMTP id p79ls84001lfb.76.gmail; Thu, 25 Feb 2016
 07:07:24 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr5666220lbb.2.1456412844447;
        Thu, 25 Feb 2016 07:07:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w197si125629wmw.3.2016.02.25.07.07.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:07:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,498,1449529200"; 
   d="scan'208";a="165976970"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2016 16:07:11 +0100
Date: Thu, 25 Feb 2016 16:07:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Drop void pointer
 cast
In-Reply-To: <20160225200301.GA8020@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.10.1602251605300.2708@hadrien>
References: <20160225200301.GA8020@janani-Inspiron-3521>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 25 Feb 2016, Janani Ravichandran wrote:

> Void pointers need not be cast to other pointer types.
> Semantic patch used:
>
> @r@
> expression x;
> void *e;
> type T;
> identifier f;
> @@
>
> (
>   *((T *)e)
> |
>   ((T *)x) [...]
> |
>   ((T *)x)->f
> |
> - (T *)
>   e
> )
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/hfi.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rdma/hfi1/hfi.h b/drivers/staging/rdma/hfi1/hfi.h
> index d4826a9..838459f 100644
> --- a/drivers/staging/rdma/hfi1/hfi.h
> +++ b/drivers/staging/rdma/hfi1/hfi.h
> @@ -1173,7 +1173,7 @@ int handle_receive_interrupt_dma_rtail(struct hfi1_ctxtdata *, int);
>  /* calculate the current RHF address */
>  static inline __le32 *get_rhf_addr(struct hfi1_ctxtdata *rcd)
>  {
> -	return (__le32 *)rcd->rcvhdrq + rcd->head + rcd->dd->rhf_offset;
> +	return rcd->rcvhdrq + rcd->head + rcd->dd->rhf_offset;

I'm not sure at all about this.  I think your semantic patch needs a case
for pointer arithmetic too...  Pointer addition of eg 1 adds 1 * the size
of the pointed object.

julia

>  }
>
>  int hfi1_reset_device(int);
> --
> 2.5.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160225200301.GA8020%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6330196266384883712
X-Received: by 10.28.27.132 with SMTP id b126mr652628wmb.0.1473863798758;
        Wed, 14 Sep 2016 07:36:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.31.20 with SMTP id f20ls297106wmf.8.canary; Wed, 14 Sep
 2016 07:36:38 -0700 (PDT)
X-Received: by 10.28.55.196 with SMTP id e187mr1254132wma.5.1473863798079;
        Wed, 14 Sep 2016 07:36:38 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si971620wmr.2.2016.09.14.07.36.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 07:36:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,334,1470693600"; 
   d="scan'208";a="193134762"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 16:36:37 +0200
Date: Wed, 14 Sep 2016 16:36:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ronald Rojas <ronladred@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ethernet: Fixes checkpatch
 blank lines warnings
In-Reply-To: <20160914143430.GA22511@fedora>
Message-ID: <alpine.DEB.2.10.1609141635280.3033@hadrien>
References: <20160914143430.GA22511@fedora>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

I guess there are some maintainers who should also receive this?  Look for
the information about the get_maintainer command in the Submit a patch
section of the tutorial.

On Wed, 14 Sep 2016, Ronald Rojas wrote:

> This patch fixes several of the checkpatch.pl warnings
> in the driver/staging/octeon/ethernet.c file:
>
> CHECK: Please don't use multiple blank lines
> 89: FILE: drivers/staging/octeon/ethernet.c:89:
>
> CHECK: Please don't use multiple blank lines
> 668: FILE: drivers/staging/octeon/ethernet.c:668:
>
> CHECK: Please don't use multiple blank lines
> 881: FILE: drivers/staging/octeon/ethernet.c:881:

You don't need to list all of the errors explicitly.  The important part
is just that checkpatch suggested removing the blank lines.

thanks,
julia

> Signed-off-by: Ronald Rojas <ronladred@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index e9cd5f2..79571d6 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -86,7 +86,6 @@ int rx_napi_weight = 32;
>  module_param(rx_napi_weight, int, 0444);
>  MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");
>
> -
>  /*
>   * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
>   *
> @@ -665,7 +664,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>
> -
>  	cvm_oct_configure_common_hw();
>
>  	cvmx_helper_initialize_packet_io_global();
> @@ -878,7 +876,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
>  		}
>  	}
>
> -
>  	cvmx_pko_shutdown();
>
>  	cvmx_ipd_free_ptr();
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914143430.GA22511%40fedora.
> For more options, visit https://groups.google.com/d/optout.
>


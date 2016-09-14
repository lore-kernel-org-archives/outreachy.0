X-GM-THRID: 6330196266384883712
X-Received: by 10.28.208.141 with SMTP id h135mr939019wmg.3.1473884707509;
        Wed, 14 Sep 2016 13:25:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.149 with SMTP id u143ls137003lja.27.gmail; Wed, 14 Sep
 2016 13:25:07 -0700 (PDT)
X-Received: by 10.25.74.71 with SMTP id x68mr881081lfa.6.1473884707014;
        Wed, 14 Sep 2016 13:25:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si2060739wmd.1.2016.09.14.13.25.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 13:25:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,335,1470693600"; 
   d="scan'208";a="193212162"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 22:25:06 +0200
Date: Wed, 14 Sep 2016 22:25:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ronald Rojas <ronladred@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: ethernet: Fixes checkpatch
 blank lines warnings
In-Reply-To: <20160914194630.GA2546@fedora>
Message-ID: <alpine.DEB.2.10.1609142223240.3322@hadrien>
References: <20160914194630.GA2546@fedora>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Sep 2016, Ronald Rojas wrote:

> This patch fixes several of the checkpatch.pl warning
> CHECK: Please don't use multiple blank lines
>
> v3: changes to commit log

Actually the v3 should go below the --- not above.  Any text below the ---
and above the diff is discarded in the patch application process.  This is
desirable for the vn explanations, because the person looking at the patch
history does not see the previous versions.  So the information about the
change since the previous version is not interesting any more.

julia

>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914194630.GA2546%40fedora.
> For more options, visit https://groups.google.com/d/optout.
>


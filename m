X-GM-THRID: 6330196266384883712
X-Received: by 10.28.208.141 with SMTP id h135mr886910wmg.3.1473879930844;
        Wed, 14 Sep 2016 12:05:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.208.130 with SMTP id h124ls412124wmg.6.canary; Wed, 14 Sep
 2016 12:05:30 -0700 (PDT)
X-Received: by 10.28.152.87 with SMTP id a84mr884277wme.7.1473879930154;
        Wed, 14 Sep 2016 12:05:30 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si2036742wmd.1.2016.09.14.12.05.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:05:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,335,1470693600"; 
   d="scan'208";a="236527459"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 21:05:29 +0200
Date: Wed, 14 Sep 2016 21:05:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ronald Rojas <ronladred@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ethernet: Fixes checkpatch
 blank lines warnings
In-Reply-To: <20160914180614.GA4299@fedora>
Message-ID: <alpine.DEB.2.10.1609142102370.3347@hadrien>
References: <20160914180614.GA4299@fedora>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 14 Sep 2016, Ronald Rojas wrote:

> This patch fixes several of the checkpatch.pl warnings
> in the driver/staging/octeon/ethernet.c file.
> All of the errors were "Please don't use multiple blank lines"
> and the appropriate lines were deleted at lines 89, 668, and 881.
> 89.

It's better, but it's still too much.  You don't need the file name - that
is clear from the diffstat just below the ---.  And you don't need the
line numbers.  The commit log could be "Remove the second of a pair of
blank lines.  Problem detected by checkpatch."

> Signed-off-by: Ronald Rojas <ronladred@gmail.com>
> ---

Here you should put

v2: changed commit log

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914180614.GA4299%40fedora.
> For more options, visit https://groups.google.com/d/optout.
>


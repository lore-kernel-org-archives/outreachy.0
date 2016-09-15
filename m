X-GM-THRID: 6330196266384883712
X-Received: by 10.46.5.140 with SMTP id 134mr1133312ljf.6.1473916386565;
        Wed, 14 Sep 2016 22:13:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.156.75 with SMTP id f72ls75526lfe.5.gmail; Wed, 14 Sep 2016
 22:13:05 -0700 (PDT)
X-Received: by 10.25.43.76 with SMTP id r73mr1125733lfr.9.1473916385796;
        Wed, 14 Sep 2016 22:13:05 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w79si45740wmw.0.2016.09.14.22.13.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 22:13:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,338,1470693600"; 
   d="scan'208";a="193410939"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 07:12:57 +0200
Date: Thu, 15 Sep 2016 07:12:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ronald Rojas <ronladred@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: ethernet: Fixes checkpatch
 blank lines warnings
In-Reply-To: <20160915010230.GA15390@fedora>
Message-ID: <alpine.DEB.2.10.1609150711110.6078@hadrien>
References: <20160915010230.GA15390@fedora>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Sep 2016, Ronald Rojas wrote:

> This patch fixes several of the checkpatch.pl warning
> CHECK: Please don't use multiple blank lines
>
> Signed-off-by: Ronald Rojas <ronladred@gmail.com>
> v4: changes to commit log

The v4 goes under the ---, not above it.  It needs to be in the part of
the patch that will disappear when the patch is committed.

The commit log message should also be written using the imperative.  "This
patch" is noise.  We know that what we are looking at is a patch.  One
wants to get to the important part as quickly as possible.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160915010230.GA15390%40fedora.
> For more options, visit https://groups.google.com/d/optout.
>


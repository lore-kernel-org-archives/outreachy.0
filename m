X-GM-THRID: 6329929865196732416
X-Received: by 10.36.115.205 with SMTP id y196mr981974itb.2.1473831792266;
        Tue, 13 Sep 2016 22:43:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.62.196 with SMTP id l187ls110990ioa.51.gmail; Tue, 13 Sep
 2016 22:43:11 -0700 (PDT)
X-Received: by 10.66.16.135 with SMTP id g7mr514769pad.27.1473831791340;
        Tue, 13 Sep 2016 22:43:11 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 142si675355pfx.2.2016.09.13.22.43.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 22:43:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,332,1470693600"; 
   d="scan'208";a="236363329"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 07:39:02 +0200
Date: Wed, 14 Sep 2016 07:39:01 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: octeon: remove multiple
 blank lines
In-Reply-To: <20160913212001.3945-1-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609140737060.3395@hadrien>
References: <20160913212001.3945-1-gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 14 Sep 2016, Gargi Sharma wrote:

> Correcting the commit message. Fixes the checkpatch issue Please don't use multiple blank lines.

The part above the --- and after the first diff is what will end up in
git, to be studied by other developers in the future.  So that part should
always be put in a way that is most helpful for those people.  Between the
--- and the first diff disappears.  There you can put information that the
future doesn't need to know about.

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index 0bd5c18..ec8e424 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -686,7 +686,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>
> -
>  	cvm_oct_configure_common_hw();
>
>  	cvmx_helper_initialize_packet_io_global();
> @@ -929,7 +928,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
>  		}
>  	}
>
> -
>  	cvmx_pko_shutdown();
>
>  	cvmx_ipd_free_ptr();
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160913212001.3945-1-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


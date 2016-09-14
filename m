X-GM-THRID: 6329929865196732416
X-Received: by 10.25.146.210 with SMTP id u201mr125233lfd.0.1473832148087;
        Tue, 13 Sep 2016 22:49:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.152 with SMTP id h24ls19083lji.4.gmail; Tue, 13 Sep 2016
 22:49:07 -0700 (PDT)
X-Received: by 10.25.43.76 with SMTP id r73mr122283lfr.9.1473832147701;
        Tue, 13 Sep 2016 22:49:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si1761163wmd.1.2016.09.13.22.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 22:49:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,332,1470693600"; 
   d="scan'208";a="193054689"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 07:49:06 +0200
Date: Wed, 14 Sep 2016 07:49:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: octeon: remove multiple
 blank lines
In-Reply-To: <20160914002652.12359-1-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609140748160.3395@hadrien>
References: <20160914002652.12359-1-gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Sep 2016, Gargi Sharma wrote:

> Fixes the checkpatch issue Please don't use multiple blank lines.
> ---
> Changes in v2
> 	- Change the commit subject to :Correcting the commit
> 	  message. Fixes the checkpatch issue Please don't use multiple
> 	  blank lines.
> ---
> Changes in v3
> 	- Make the commit message more clearer. Also, fixed the subject
> 	  mistake in v2.

You only need one ---, no matter how much text you want to write.  It
would be better for the v3 stuff to come first, since that is the most
relevant for the person who has been following along.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914002652.12359-1-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


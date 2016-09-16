X-GM-THRID: 6330861539691593728
X-Received: by 10.194.79.231 with SMTP id m7mr2254292wjx.4.1474018664796;
        Fri, 16 Sep 2016 02:37:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.210.79 with SMTP id j76ls678298wmg.25.gmail; Fri, 16 Sep
 2016 02:37:44 -0700 (PDT)
X-Received: by 10.28.207.134 with SMTP id f128mr1263849wmg.6.1474018664301;
        Fri, 16 Sep 2016 02:37:44 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c13si516406wme.3.2016.09.16.02.37.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 02:37:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,344,1470693600"; 
   d="scan'208";a="237077916"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 11:37:43 +0200
Date: Fri, 16 Sep 2016 11:37:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    stuart.yoder@nxp.com, mbrugger@suse.com, german.rivera@nxp.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fsl-mc: Use !x instead of
 x == NULL.
In-Reply-To: <20160916093641.GA4100@sandhya>
Message-ID: <alpine.DEB.2.10.1609161137150.3049@hadrien>
References: <20160916093641.GA4100@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 Sep 2016, Sandhya Bankar wrote:

> Use !x instead of x == NULL.
> This issue was found by checkpatch.

You could do this with Coccinelle.

julia

>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/fsl-mc/bus/fsl-mc-msi.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/fsl-mc/bus/fsl-mc-msi.c b/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
> index cc19092..bc1ad1a 100755
> --- a/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
> +++ b/drivers/staging/fsl-mc/bus/fsl-mc-msi.c
> @@ -50,7 +50,7 @@ static void fsl_mc_msi_update_dom_ops(struct msi_domain_info *info)
>  	/*
>  	 * set_desc should not be set by the caller
>  	 */
> -	if (ops->set_desc == NULL)
> +	if (!ops->set_desc)
>  		ops->set_desc = fsl_mc_msi_set_desc;
>  }
>
> @@ -140,7 +140,7 @@ static void fsl_mc_msi_update_chip_ops(struct msi_domain_info *info)
>  	/*
>  	 * irq_write_msi_msg should not be set by the caller
>  	 */
> -	if (chip->irq_write_msi_msg == NULL)
> +	if (!chip->irq_write_msi_msg)
>  		chip->irq_write_msi_msg = fsl_mc_msi_write_msg;
>  }
>
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916093641.GA4100%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>


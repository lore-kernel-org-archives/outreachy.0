X-GM-THRID: 6609620704439566336
X-Received: by 2002:a1c:d8a:: with SMTP id 132-v6mr899538wmn.21.1538922620641;
        Sun, 07 Oct 2018 07:30:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d4b:: with SMTP id t72-v6ls849002wmt.2.canary-gmail;
 Sun, 07 Oct 2018 07:30:19 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63zbjh+f4M0WH2bWbRMqt5a3zpjFuNA15VJRT05efp/X1ox+mhxiJL8+DOME2MybPGM5TUI
X-Received: by 2002:a1c:57ce:: with SMTP id l197-v6mr1842320wmb.4.1538922619782;
        Sun, 07 Oct 2018 07:30:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538922619; cv=none;
        d=google.com; s=arc-20160816;
        b=d0YjJiXLB4M8u8EtnmD3FVZMdavO76Pcc/2TfeZDY0+o1zzM8c8aJuXT2ze4RlNgB7
         m+SVtDx+f7ueNDWKFBOhjqBtOEJPKcBnNTw9wHUBvj+taxMtvE9V6dxBv1k+3me84X8/
         TlQsIKCIsAkGmijoLImMa8LwMbGtmJXl51QiieqOubbwO0CFsBZqzDgtsq2Mjfh/eyqs
         XN2Xoe2a6RUSILxZYd3hC4wDbVijYHTaHnrh9MfMPzzTghAZcFbOXg54ZdldyFEleo+h
         /M7VWPX3I9a0UOpqlsiQPYMS31PZXJMGr9RbCzCT57u1ZJ3uCbA/n28CTNjHOdCQTzuo
         TNDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=z+oFHirn2vcnNNBBodOIauddV3ATG/U7ZSSHMZFn9MI=;
        b=NU9eV4kPoN6HVfr/iZWV3+tj4alM85119A62doDZj/kd6HtBUsj37hu3MtScvC6v0B
         Q7B3WLmAwOA4xvcnfb011h1dO1/YZZ5XVHnBeo2o1HwEm/FS6nL68eIevjwEJ5Y4oMZM
         hxV1hYBLuR7dmrjH4NqVfjVpLUyTN/pkJ5Hfe3AtdINqHvi4RSe6WhvPB/vqkiQacBF5
         WDx+e8WIm3AKxFy4oluu6tE688V5I0MEQnW3jgg90yfK5bRoQFnp9WLTEOorqEFmK3gn
         iIY2grpXvPdTOlcJ+Ntowu5+vj7C0rB62/Ztw8klWcFPZ/oOAZ3RJ4J+doIQJI0Jp9dw
         ZxRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h74-v6si566638wmd.4.2018.10.07.07.30.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 07:30:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,353,1534802400"; 
   d="scan'208";a="281297721"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2018 16:30:18 +0200
Date: Sun, 7 Oct 2018 16:30:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Use
 __func__ instead of function name
In-Reply-To: <20181006202414.GA12019@armorer>
Message-ID: <alpine.DEB.2.21.1810071628390.2347@hadrien>
References: <20181006202414.GA12019@armorer>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 7 Oct 2018, Mamta Shukla wrote:

> Access current function name using __func__.
> Use %s and __func__ instead of function name.
>
> Issue found with checkpatch.pl
>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
>
> Predefined identifier __func__ gives the name of current function name.
> Thus, it gives better debug information in this case.


If this information is useful for someone reading the submitted patch, it
will be useful for other people in the future when looking through the
commit history.  Thus it should be above the ---.  Below the --- you
should put version information, or maybe any questions you have about the
validity of the patch, ie things that people don't need to know about
after tha patch is accepted.

julia

>
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 9594276..4d09e81 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -695,21 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
>
>  	if (!gamma->bypass_r) {
>  		dev_err(dev,
> -			"ipipe_get_gamma_params: table ptr empty for R\n");
> +			"%s: table ptr empty for R\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_r, gamma->table_r,
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_g) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
> +		dev_err(dev, "%s: table ptr empty for G\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_g, gamma->table_g,
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_b) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
> +		dev_err(dev, "%s: table ptr empty for B\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_b, gamma->table_b,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181006202414.GA12019%40armorer.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6542915874247933952
X-Received: by 2002:a19:d85f:: with SMTP id p92-v6mr149921lfg.9.1523391612371;
        Tue, 10 Apr 2018 13:20:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.146.72 with SMTP id v8ls1161967ljg.4.gmail; Tue, 10 Apr
 2018 13:20:11 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+RozgdBEZGTFzTwO/YEVvBYuDtYE5cASc5rMAMPGbyVbUncfWlVQ+GPQaILfCPFM9xsSAt
X-Received: by 10.46.129.90 with SMTP id t26mr130964ljg.27.1523391611150;
        Tue, 10 Apr 2018 13:20:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523391611; cv=none;
        d=google.com; s=arc-20160816;
        b=MedfBEan3KwTOra95Y7PuOwFTU0MqaGapxpewhfCkgSNSfUMNFsHCwD6i6Usef28D0
         Zkk6WmTwI9KKzogNAZTDDyb/a/Ttngw5pYnJgoTjATGUbPbFyBhZ7Jje5JL4IncHCMvj
         ucD0s1uYC44v0s3hls/evvhqud5CF8anx9A0LtZ41Vj4ffekHubiurKPxI7v8htY4gtf
         oYreiranbVf2v4haxdUwrxQWVKr5tNRWXspXdOvyVvwB2Viv5RwavJRvEzsskq0uI82u
         Ncu9UlDkBJuPpNux86+aWOnpR1jUam5n7vXHxKOPIjTtaa6wtwotnuo3Is6zov8DIVWD
         vnJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=oFY8rsYfJvC5uzUZA2YxdXgRZMViDOUkTV29frZ8sJY=;
        b=u7vWbB2n3CN6pySDre9hYD6tMTWAxCRPRK6neQviIIyJhyD7/7dakcH9Ov0Q1VqEfN
         9IN2yFlCRWuSJY2CXjmJGAbK6wjYva/xGRA8+YLHJBEHa4b3gxjJqoPxi9Z7KTb7ugdV
         pRxs+R4Tu5NYX5yo6WUwjSitiglV6XaBfepCiwcNSBt4NZJgZWNzNCBxc5EZsRYyfbjl
         yJbrNBMcx5hqVDdumokmex/s2HhqJtmRLZLNV+41R7jZB/HSb0zf8pui103gjqm+qEZs
         cpMSrP+3CVu2WNThP+TCiyVjdzMdQO+pnhU6Ih3wOvBxK7TtncZSWqGKMoBhoCw5f3Tr
         f4mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t83-v6si94000lff.5.2018.04.10.13.20.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Apr 2018 13:20:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,433,1517871600"; 
   d="scan'208";a="261575422"
Received: from ip-146.net-89-2-7.rev.numericable.fr (HELO [192.168.0.15]) ([89.2.7.146])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2018 22:20:09 +0200
Date: Tue, 10 Apr 2018 22:20:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    mchehab@kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2] Replace explicit use of function
 name with "%s...", __func__
In-Reply-To: <1523391296-5535-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1804102219380.3071@hadrien>
References: <1523391296-5535-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 10 Apr 2018, Nishka Dasgupta wrote:

> Replace use of function name with "%s...", __func__ to make future
> modifications to the respective functions easier to handle. Issue found
> with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v2:
>  - Similar changes previously distributed across a patchset are now in a single patch.
>  - Reason for the change added to commit message.
>
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 6a3434c..a59ab6f 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -696,21 +696,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
>
>  	if (!gamma->bypass_r && !gamma_param->table_r) {
>  		dev_err(dev,
> -			"ipipe_get_gamma_params: table ptr empty for R\n");
> +			"%s: table ptr empty for R\n", __func__);

The added line could move up to the same line as the dev_err call.

julia

>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_r, gamma->table_r,
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_g && !gamma_param->table_g) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
> +		dev_err(dev, "%s: table ptr empty for G\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_g, gamma->table_g,
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_b && !gamma_param->table_b) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
> +		dev_err(dev, "%s: table ptr empty for B\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_b, gamma->table_b,
> @@ -743,7 +743,7 @@ static int ipipe_get_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
>
>  	lut_param->en = lut->en;
>  	if (!lut_param->table) {
> -		dev_err(dev, "ipipe_get_3d_lut_params: Invalid table ptr\n");
> +		dev_err(dev, "%s: Invalid table ptr\n", __func__);
>  		return -EINVAL;
>  	}
>
> @@ -924,7 +924,7 @@ static int ipipe_get_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
>  	gbce_param->en = gbce->en;
>  	gbce_param->type = gbce->type;
>  	if (!gbce_param->table) {
> -		dev_err(dev, "ipipe_get_gbce_params: Invalid table ptr\n");
> +		dev_err(dev, "%s: Invalid table ptr\n", __func__);
>  		return -EINVAL;
>  	}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1523391296-5535-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>


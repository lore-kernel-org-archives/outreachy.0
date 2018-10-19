X-GM-THRID: 6613801848773017600
X-Received: by 2002:a1c:8a46:: with SMTP id m67-v6mr186436wmd.0.1539929934613;
        Thu, 18 Oct 2018 23:18:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:3442:: with SMTP id b63-v6ls266390wma.12.canary-gmail;
 Thu, 18 Oct 2018 23:18:53 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61gDShBSu7sfJDHYDNYO+85CD/A8Tcu7KS0BNsSx8C8WAsHktT6b/isWvHMn4xPhtcBqCzg
X-Received: by 2002:a1c:9906:: with SMTP id b6-v6mr197723wme.1.1539929933186;
        Thu, 18 Oct 2018 23:18:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539929933; cv=none;
        d=google.com; s=arc-20160816;
        b=ruAMkMUmoiosy20hgiv9y20rEvm5ni7UrKwssvu4qf76oU69j+ZTQ3vhTj8nV0xxzI
         yxdAvn/Ee90U+HsObLW4N2oKTkKehpeyN62VqYNNJM9yG3WEI2Ai8vobnYfa+Az1wso5
         NubdJi0czQHNfudZiWGMGtP9hIFF6Y4LNSHGyeMe9BsYDgOLtbaBx64B9onA5VJhiwyC
         z+30pmyhOHqCpUCvxLXRa9qj3sulqEF3qD6K2S6Q3ffnEgDx8XTb8d3R0Q3hcUPn7zq6
         xSsRqJDTZpGkaxYT1iExvse4oV6c7oJcccXqESmOrv0MH/MRGzuaxIigtxNvSyKpORrb
         EBEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1BXUmVSm6WkNWdDr+VKROTz+GuY7nHnCAMfU6m0RSSE=;
        b=NFJ7nDsRQc8cUJaGmKobVhZJFl9GHN/qLcMsHlfblYM/zzXFH2Y3hjJuh4cI8E7bla
         Jips09nVjrOVn7NkaXCzxodpQK5207Cn+AwlSqYUiDIbZzRHzk/mWqgxoAhJBfK7hVjR
         DdNjdO2j+wUyNLXG1a98aprBts/bDJOjSfvyyasukjWW7VOzBMS0VRD8RXBsiscmih4u
         Dd6T58XaMEY1T2j6VXyTIDdNjuayV0GzTcNEj6hu03Ng6xTiCUlhx2F5LfgBoF8aZjGD
         4XcZtpKwGkT42vrxSvilECES6L0Fn4uKelersfvGMHwOmjItBiF+r5p+ReiBLpzhI43h
         ySkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z62-v6si153892wmc.2.2018.10.18.23.18.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Oct 2018 23:18:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,399,1534802400"; 
   d="scan'208";a="282626892"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2018 08:18:52 +0200
Date: Fri, 19 Oct 2018 08:18:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, 
    daniel.vetter@ffwll.ch, robdclark@gmail.com, airlied@linux.ie
Subject: Re: [Outreachy kernel] [PATCH DRM] drm: msm: adreno: Use PTR_ERR_OR_ZERO
 rather than if(IS_ERR(...)) +PTR_ERR
In-Reply-To: <20181018204815.GA23390@armorer>
Message-ID: <alpine.DEB.2.21.1810190817170.2960@hadrien>
References: <20181018204815.GA23390@armorer>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 19 Oct 2018, Mamta Shukla wrote:

> Use PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) + PTR_ERR because its
> better to have inlined function rather than code-opened implementation.


Just for your information, people have mixed feelings about this.  In your
case, it's probably fine, because this is the only if in the function.
But when there is a series of if (...) return; followed by a return 0; at
the end, people ofen prefer to keep it as it is, so the last case doesn't
look different than the others.

julia

>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
>  drivers/gpu/drm/msm/adreno/a5xx_gpu.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> index 6a68493..b751b76 100644
> --- a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> @@ -1222,10 +1222,7 @@ static int a5xx_crashdumper_init(struct msm_gpu *gpu,
>  		SZ_1M, MSM_BO_UNCACHED, gpu->aspace,
>  		&dumper->bo, &dumper->iova);
>
> -	if (IS_ERR(dumper->ptr))
> -		return PTR_ERR(dumper->ptr);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(dumper->ptr);
>  }
>
>  static void a5xx_crashdumper_free(struct msm_gpu *gpu,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181018204815.GA23390%40armorer.
> For more options, visit https://groups.google.com/d/optout.
>


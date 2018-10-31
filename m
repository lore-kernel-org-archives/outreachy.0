X-GM-THRID: 6617780359505379328
X-Received: by 2002:a1c:e583:: with SMTP id c125-v6mr465148wmh.21.1541018449255;
        Wed, 31 Oct 2018 13:40:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:ad0f:: with SMTP id w15-v6ls2588383wme.27.canary-gmail;
 Wed, 31 Oct 2018 13:40:48 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ecIQsq4v9Hq2CsUxIkdbYE94o8XCorKr81jwD6S8VjtAdjxBCh0Z09nz40L6yqio/XCy9L
X-Received: by 2002:a1c:cc9:: with SMTP id 192-v6mr500197wmm.8.1541018448230;
        Wed, 31 Oct 2018 13:40:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541018448; cv=none;
        d=google.com; s=arc-20160816;
        b=ehBJvHOOMKMxm1xmZczIUJWiVAmyx5lMgbQois56VvnXs2fQBsL8ATbA+wjeHobgvf
         zOEhdTZyUxFluYCk6BZOsyg22/V6f7me8/vksLXSyeYDeXleEnI2bKb3COxjkGdcCg59
         lGVkSrxoxBGwcgvKuNM+Z2uKNwsvaveZ6iBXOpG1Jlpo7mibWqq64c7JO9zQrXu0OLBi
         aPaIfpjoqn02EX2OD64XOo790cKk1KP0d+1B3mcIL5TSdiVdQ+oeJ3NlhH6Qf+DhXOgJ
         jPCJlND75Jmm1tPSOzeEWXNSvXWqy9KxFyk6fbPhuBWAfyblOVH6BCJJ6BsnzdXx/5Tq
         UYXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=va9fO1K7VHCBpZ3/CQd0fPu9ozpXq2qqZPyDzovPH+c=;
        b=HJItedQbxF+wYozZXwwGBi1z3YAV1k8lLaChh+4X+JIw7tOf+MBKW5Kb7jjGWneIZS
         klz3cMZCWUuDDV6TLAHdGrR/zHRGbeaVTPnfbp6UyeKSwFwMfYDBmsIlTyVsKKKg8p5r
         Ix/h61A+wDxMFgEcq4lhfwoAheodcIcCadNkmppDm++Gf4wlXYvOE98gYefC8+ZuaKCa
         XGqd+GRwV1lJp1F81IRYDBOzSORiFuilsy2C7mxg03ti5UAbHk30/hW0+k9tsSgKYzcp
         jAnc8Hwurt8i1ljaCWtoMyY5TB+AnzdhM2+5dnEiiGSRIMXeDqPzUUHUHNRwfBDM7WVe
         tU6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o9-v6si636746wmh.2.2018.10.31.13.40.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 13:40:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,449,1534802400"; 
   d="scan'208";a="353683582"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2018 21:40:47 +0100
Date: Wed, 31 Oct 2018 21:40:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: gasket Create a memory
 allocation path
In-Reply-To: <20181031164753.GA14140@kvasir.local>
Message-ID: <alpine.DEB.2.21.1810312137320.2391@hadrien>
References: <20181031164753.GA14140@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Oct 2018, Ioannis Valasakis wrote:

> Fix multiple error allocation path by using re-direction.

Beside the semantic problem that has already been pointed out, I find the
word "re-direction" a bit strange, or a bit vague.  What is redirected?
Could it be something like "Collect the common error handling code at the
end of the function"?

I also have the impression that this patch is on top of your previous
incorrect patch, instead of the original code.  You should always work
against the code in Greg's tree.

julia

>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
> Changes in v2:
> 	- Specific tags for memory allocation
> 	- Free the memory in the right way as for kfre
>
> drivers/staging/gasket/gasket_interrupt.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> index cdfb72af1c52..23232ea8f4d9 100644
> --- a/drivers/staging/gasket/gasket_interrupt.c
> +++ b/drivers/staging/gasket/gasket_interrupt.c
> @@ -348,21 +348,21 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
>  					       sizeof(struct msix_entry),
>  					       GFP_KERNEL);
>  	if (!interrupt_data->msix_entries) {
> -		goto err_alloc;
> +		goto err_free_msix;
>  	}
>
>  	interrupt_data->eventfd_ctxs = kcalloc(num_interrupts,
>  					       sizeof(struct eventfd_ctx *),
>  					       GFP_KERNEL);
>  	if (!interrupt_data->eventfd_ctxs) {
> -		goto err_alloc;
> +		goto err_free_eventfd;
>  	}
>
>  	interrupt_data->interrupt_counts = kcalloc(num_interrupts,
>  						   sizeof(ulong),
>  						   GFP_KERNEL);
>  	if (!interrupt_data->interrupt_counts) {
> -		goto err_alloc;
> +		goto err_free_data;
>  	}
>
>  	switch (interrupt_data->type) {
> @@ -397,10 +397,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
>
>  	return 0;
>
> -err_alloc:
> -	kfree(interrupt_data);
> -	kfree(interrupt_data->msix_entries);
> +err_free_msix:
>  	kfree(interrupt_data->eventfd_ctxs);
> +err_free_eventfd:
> +	kfree(interrupt_data->msix_entries);
> +err_free_data:
> +	kfree(interrupt_data);
>  	return -ENOMEM;
>  }
>
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181031164753.GA14140%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>


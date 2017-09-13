X-GM-THRID: 6465205340686254080
X-Received: by 10.129.68.21 with SMTP id r21mr11075055ywa.72.1505304159118;
        Wed, 13 Sep 2017 05:02:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.180.22 with SMTP id d22ls859561iof.48.gmail; Wed, 13 Sep
 2017 05:02:38 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5XyjJAqF5oootXjWmwF9d1kpspWmb40oAz+OXwsEwbbrB/Y6C3QIJ9bqewlFUvJeXmjbNJ
X-Received: by 10.176.79.31 with SMTP id n31mr10390504uah.111.1505304158012;
        Wed, 13 Sep 2017 05:02:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505304157; cv=none;
        d=google.com; s=arc-20160816;
        b=IOYTeJDkjvMK2cfrh/asW4awHEXnJDGQERxN6uYPyRJa1RYsILBWbtEPsSddDou2kx
         Hx7Kobm11oJa2IH1CNySepM0dqMyueDn4E02yhV0jpowJjBkus52w80A0IpfaOOgHk9j
         tZ1wK630XEKPiL8l9cm5vASLauNgGm8unTNDOPHVnmFqooHudVEhTGlvEY4YXXK7IsRz
         oQWE6ywDLyETqvOSo+jbDgMLYu9bHwBnVxXnQLiGF7dnU5XIgw53jD2F7tQBdo5wBIKn
         XcURoEVkPmdNw/bTNyuzCVGbajW6Wa0t8jjl/B6Jo3+p7xiz1gITZlkN2x8S55qvQO4r
         W+Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=61EzYstfdpfxAZFM3p+O5fkoA8e/c0wCHENKUM81Qf8=;
        b=mqsP1OYH/vq1RgNUw9MeIcES1Gi5H62SRSFSGsbb6us/vPQ1zK7JG56GSZ3waB8c5V
         FAD2TnFf1J6f4EmopjL4bSS11UXvM3qLtquaDxTu03gto8RCG2Q83UzjQ8nBCkjuw0mK
         SSXJOvaLRgeZnoiqA9hDL3UgOATZOj937LfmecVFavKmZ45iBFdAAiIFqZf35FpLrr9b
         K6WGuKRahwAwT8+xzBsd5sLR9v0UUm3lqoqw8pJNeEPFZHIucxdcmO11DIgZD2BpCXfH
         VUGyhy9yCQr5f01Y9MBouXs/++YXjOnUMyVgKhKOS2/+zLJYFyiU0WzUTMAczpNm4uQx
         ni7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v2si40421ite.4.2017.09.13.05.02.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 05:02:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,387,1500933600"; 
   d="scan'208";a="237331788"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 14:02:36 +0200
Date: Wed, 13 Sep 2017 14:02:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: Daniel Vetter <daniel.vetter@intel.com>, 
    Jani Nikula <jani.nikula@linux.intel.com>, 
    Sean Paul <seanpaul@chromium.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] GPU: DRM: Remove assignment in
 if condition
In-Reply-To: <5eb79800ec4c7218e23841345ba81e3a515901e7.1505296813.git.meghana.madhyastha@gmail.com>
Message-ID: <alpine.DEB.2.20.1709131400470.26484@hadrien>
References: <cover.1505296813.git.meghana.madhyastha@gmail.com> <5eb79800ec4c7218e23841345ba81e3a515901e7.1505296813.git.meghana.madhyastha@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Meghana Madhyastha wrote:

> This patch moves the assignment so that
> it happens before the if condition. This
> results in syntax which is easier to read.

The commit message could be a bit wider.

>
> Found by checkpath.pl
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>  drivers/gpu/drm/drm_agpsupport.c | 27 ++++++++++++++++++---------
>  1 file changed, 18 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
> index 993e486..08933d6 100644
> --- a/drivers/gpu/drm/drm_agpsupport.c
> +++ b/drivers/gpu/drm/drm_agpsupport.c
> @@ -100,7 +100,8 @@ int drm_agp_acquire(struct drm_device *dev)
>  		return -ENODEV;
>  	if (dev->agp->acquired)
>  		return -EBUSY;
> -	if (!(dev->agp->bridge = agp_backend_acquire(dev->pdev)))
> +	dev->agp->bridge = agp_backend_acquire(dev->pdev);
> +	if (!dev->agp->bridge)
>  		return -ENODEV;
>  	dev->agp->acquired = 1;
>  	return 0;
> @@ -200,12 +201,14 @@ int drm_agp_alloc(struct drm_device *dev, struct drm_agp_buffer *request)
>
>  	if (!dev->agp || !dev->agp->acquired)
>  		return -EINVAL;
> -	if (!(entry = kzalloc(sizeof(*entry), GFP_KERNEL)))
> +	entry = kzalloc(sizeof(*entry), GFP_KERNEL);
> +	if (!entry)
>  		return -ENOMEM;
>
>  	pages = (request->size + PAGE_SIZE - 1) / PAGE_SIZE;
>  	type = (u32) request->type;
> -	if (!(memory = agp_allocate_memory(dev->agp->bridge, pages, type))) {
> +	memory = agp_allocate_memory(dev->agp->bridge, pages, type);
> +	if (!memory) {
>  		kfree(entry);
>  		return -ENOMEM;
>  	}
> @@ -272,7 +275,8 @@ int drm_agp_unbind(struct drm_device *dev, struct drm_agp_binding *request)
>
>  	if (!dev->agp || !dev->agp->acquired)
>  		return -EINVAL;
> -	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
> +	entry = drm_agp_lookup_entry(dev, request->handle);
> +	if (!entry)
>  		return -EINVAL;
>  	if (!entry->bound)
>  		return -EINVAL;

In this case and the next one, there are two tests that end up with the
same result.  You could merge them now that the test expression is
shorter, like the test a few lines up.

julia

> @@ -313,12 +317,14 @@ int drm_agp_bind(struct drm_device *dev, struct drm_agp_binding *request)
>
>  	if (!dev->agp || !dev->agp->acquired)
>  		return -EINVAL;
> -	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
> +	entry = drm_agp_lookup_entry(dev, request->handle);
> +	if (!entry)
>  		return -EINVAL;
>  	if (entry->bound)
>  		return -EINVAL;
>  	page = (request->offset + PAGE_SIZE - 1) / PAGE_SIZE;
> -	if ((retcode = drm_bind_agp(entry->memory, page)))
> +	retcode = drm_bind_agp(entry->memory, page);
> +	if (retcode)
>  		return retcode;
>  	entry->bound = dev->agp->base + (page << PAGE_SHIFT);
>  	DRM_DEBUG("base = 0x%lx entry->bound = 0x%lx\n",
> @@ -356,7 +362,8 @@ int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
>
>  	if (!dev->agp || !dev->agp->acquired)
>  		return -EINVAL;
> -	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
> +	entry = drm_agp_lookup_entry(dev, request->handle);
> +	if (!entry)
>  		return -EINVAL;
>  	if (entry->bound)
>  		drm_unbind_agp(entry->memory);
> @@ -394,11 +401,13 @@ struct drm_agp_head *drm_agp_init(struct drm_device *dev)
>  {
>  	struct drm_agp_head *head = NULL;
>
> -	if (!(head = kzalloc(sizeof(*head), GFP_KERNEL)))
> +	head = kzalloc(sizeof(*head), GFP_KERNEL);
> +	if (!head)
>  		return NULL;
>  	head->bridge = agp_find_bridge(dev->pdev);
>  	if (!head->bridge) {
> -		if (!(head->bridge = agp_backend_acquire(dev->pdev))) {
> +		head->bridge = agp_backend_acquire(dev->pdev);
> +		if (!head->bridge) {
>  			kfree(head);
>  			return NULL;
>  		}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5eb79800ec4c7218e23841345ba81e3a515901e7.1505296813.git.meghana.madhyastha%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


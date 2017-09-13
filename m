X-GM-THRID: 6465297812332478464
X-Received: by 10.28.230.79 with SMTP id d76mr409350wmh.12.1505334181576;
        Wed, 13 Sep 2017 13:23:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.93.93 with SMTP id r90ls272893ljb.30.gmail; Wed, 13 Sep
 2017 13:23:00 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QByWCODLbDsFIqlI53+zWAnaqX7n7uIiFdK/LfvLGsIf/fzYn2wYUMmF+7SCm9BIt8WtGzo
X-Received: by 10.25.38.140 with SMTP id m134mr1593883lfm.2.1505334180254;
        Wed, 13 Sep 2017 13:23:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505334180; cv=none;
        d=google.com; s=arc-20160816;
        b=ybjNypMTvFulO4jPdarE3+VT/pWVFqLUu83B3oJgG8LST5kmrJNOzQwOdEg7hAemXk
         4CQ6pD4XGXwBTyEDMdMCPrqZIQ65zElFKsn8YVClmJhncAAqQf3o7JcHvzgvDQpqOILZ
         DX59RbSXSIicoWYrhZHFSu5TBxDrULtxVlVuOp3hdtrV95usYrfNEfO/c6r0zE1H6AbS
         /8UrjVQbREm1v23ypOG/dm3kzy35pWo2/GZjGyPQO163hF3ZsQ1icTeSt9L4fdDOYna0
         IMna7yMy9pZ1BOINv7s7nlOMinga+BEpT9dy/b+5m7/xteoxEjlKDIhBBJUNqK58LgS2
         bJvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=LNXdNFhJ+55qYBafRv6G+frGVO9v/O5lQXskehd1C44=;
        b=oC3M4KqhuVF6kUMKjbKzMd4oKP6WVjK9mybmXyV9fpx4GWHVUwH+6tQZX0VZNKEPE6
         qJsQVjkFfxiOIpf+7+njUa1QGkgFeljtsxNK8alqe6CeH/tSNPR7V418w5a3y4S+IktR
         kGAjGbCmkpYVCtN2xPix53qLEnATPU3oMkwLMjIXvoKgWZY4lhtTIIoYg979ktIG5imV
         5sLGfjC8cmX/WQG8tSWIu6ulvzkUUvGlAEFdTkHfI6PI0ioqxf89aZwztks5I6txTIq2
         9TOlx/BoJ4LZ/7S2fOgrjwlkgHweDMMpP44TjwyJrETb1mk97wTzco3+Tvpkk3F6fa2w
         kESg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i4si64224wmi.8.2017.09.13.13.23.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 13:23:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,389,1500933600"; 
   d="scan'208";a="237392495"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 22:22:59 +0200
Date: Wed, 13 Sep 2017 22:22:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Jani Nikula <jani.nikula@linux.intel.com>, dri-devel@lists.freedesktop.org
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] drm: Remove assignment in if
 condition
In-Reply-To: <20170913161531.GA3239@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709132222370.2920@hadrien>
References: <20170913161531.GA3239@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Meghana Madhyastha wrote:

> Move the assignment so that it happens before the if
> condition. This results in syntax which is easier to read.

It would be nice to mention the merged conditionals in the log message.

julia

> Found by checkpath.pl
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>  drivers/gpu/drm/drm_agpsupport.c | 31 ++++++++++++++++++-------------
>  1 file changed, 18 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
> index 993e486..737f028 100644
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
> @@ -272,9 +275,8 @@ int drm_agp_unbind(struct drm_device *dev, struct drm_agp_binding *request)
>
>  	if (!dev->agp || !dev->agp->acquired)
>  		return -EINVAL;
> -	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
> -		return -EINVAL;
> -	if (!entry->bound)
> +	entry = drm_agp_lookup_entry(dev, request->handle);
> +	if (!entry || !entry->bound)
>  		return -EINVAL;
>  	ret = drm_unbind_agp(entry->memory);
>  	if (ret == 0)
> @@ -313,12 +315,12 @@ int drm_agp_bind(struct drm_device *dev, struct drm_agp_binding *request)
>
>  	if (!dev->agp || !dev->agp->acquired)
>  		return -EINVAL;
> -	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
> -		return -EINVAL;
> -	if (entry->bound)
> +	entry = drm_agp_lookup_entry(dev, request->handle);
> +	if (!entry || entry->bound)
>  		return -EINVAL;
>  	page = (request->offset + PAGE_SIZE - 1) / PAGE_SIZE;
> -	if ((retcode = drm_bind_agp(entry->memory, page)))
> +	retcode = drm_bind_agp(entry->memory, page);
> +	if (retcode)
>  		return retcode;
>  	entry->bound = dev->agp->base + (page << PAGE_SHIFT);
>  	DRM_DEBUG("base = 0x%lx entry->bound = 0x%lx\n",
> @@ -356,7 +358,8 @@ int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
>
>  	if (!dev->agp || !dev->agp->acquired)
>  		return -EINVAL;
> -	if (!(entry = drm_agp_lookup_entry(dev, request->handle)))
> +	entry = drm_agp_lookup_entry(dev, request->handle);
> +	if (!entry)
>  		return -EINVAL;
>  	if (entry->bound)
>  		drm_unbind_agp(entry->memory);
> @@ -394,11 +397,13 @@ struct drm_agp_head *drm_agp_init(struct drm_device *dev)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170913161531.GA3239%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>


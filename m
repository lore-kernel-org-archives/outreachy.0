X-GM-THRID: 6751675507334447104
X-Received: by 2002:a05:6402:21c7:: with SMTP id bi7mr2946252edb.205.1571998343892;
        Fri, 25 Oct 2019 03:12:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:cd1e:: with SMTP id z30ls2104066edi.15.gmail; Fri, 25
 Oct 2019 03:12:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwYMDhR9ENtCVMnyk6X6AtDFa1++TH7kjdjFMM2GSeXcbmYEEukLjlvQd8s0+BneAImIN8G
X-Received: by 2002:a50:c2c2:: with SMTP id u2mr2994276edf.133.1571998343145;
        Fri, 25 Oct 2019 03:12:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571998343; cv=none;
        d=google.com; s=arc-20160816;
        b=cB38udJVR/d7WqEdcVgq6/Y9zjPahnJKNKjDSOi2C5p7wtt145vBkEqB+sYJfdW/0C
         8CGn+0YYFQC3IFLxE8EjnTFxudGE6spc0gZsCvJnjbFnjpDgWNIshI+8NVcWPuCmrekP
         X3KgfU6q1g4kVld8HbftJgQbM17a9gks3RL0tbjjndWk7kcMOPoqTDYuNxa2mDQvlVbp
         mrAu67dnlyuFYw/WGYppWz5bHORGQ7Ls0FT5zhDY7DMbjpixiW3gvAMZCtaO75LATTYs
         tZcBim70p6tyGBJpaj4OKHCgHhPfaDTA4R29I8jAGAX48VUNBbucHwCwoEPlK8qmoq2/
         Vhgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=deSs9dYm2yXfqGx1BbD3wk2SB3s9iZim6z1K4V9oGak=;
        b=C7VR5qYJvkINoHqHA+PixIFjZ9RJXqTPbi+88awBT/V04/93KPocBFXRelaHpF1p3d
         zGrjNfuIKnetdZuplEpjyZCVEpcfSDRAgbGMdX2UEnoSV/dGrfirETljC1WIcv9djeK4
         8tvzIk6xhLbjU0AxUvtKMQHwDdFLyPmCLJBZ+YnNLi9NOUj3+By82ivg9ypsNJ5uvsNx
         9lXiChYkG5C0KzabP1338LVM24ZPKZ28L9H/1aX9+FPZkLyzbYbW/4aH7GXI12bo1kvs
         VGzN/s3k7YZCkMeWeAY5eeICCmF945SRcspdVlrvrU40k4qvBTbh2/xAjZCyw+IQiVcc
         RITQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b25si94596ejb.1.2019.10.25.03.12.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 03:12:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,228,1569276000"; 
   d="scan'208";a="408167341"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2019 12:12:22 +0200
Date: Fri, 25 Oct 2019 12:12:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Wambui Karuga <wambui.karugax@gmail.com>
cc: dri-devel@lists.freedesktop.org, maarten.lankhorst@linux.intel.com, 
    mripard@kernel.org, sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy][PATCH] drm: use DIV_ROUND_UP
 helper macro for calculations
In-Reply-To: <20191025094907.3582-1-wambui.karugax@gmail.com>
Message-ID: <alpine.DEB.2.21.1910251212070.3307@hadrien>
References: <20191025094907.3582-1-wambui.karugax@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 25 Oct 2019, Wambui Karuga wrote:

> Replace open coded divisor calculations with the DIV_ROUND_UP kernel
> macro for better readability.
> Issue found using coccinelle:
> @@
> expression n,d;
> @@
> (
> - ((n + d - 1) / d)
> + DIV_ROUND_UP(n,d)
> |
> - ((n + (d - 1)) / d)
> + DIV_ROUND_UP(n,d)
> )
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/gpu/drm/drm_agpsupport.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
> index 6e09f27fd9d6..4c7ad46fdd21 100644
> --- a/drivers/gpu/drm/drm_agpsupport.c
> +++ b/drivers/gpu/drm/drm_agpsupport.c
> @@ -212,7 +212,7 @@ int drm_agp_alloc(struct drm_device *dev, struct drm_agp_buffer *request)
>  	if (!entry)
>  		return -ENOMEM;
>
> -	pages = (request->size + PAGE_SIZE - 1) / PAGE_SIZE;
> +	pages = DIV_ROUND_UP(request->size, PAGE_SIZE);
>  	type = (u32) request->type;
>  	memory = agp_allocate_memory(dev->agp->bridge, pages, type);
>  	if (!memory) {
> @@ -325,7 +325,7 @@ int drm_agp_bind(struct drm_device *dev, struct drm_agp_binding *request)
>  	entry = drm_agp_lookup_entry(dev, request->handle);
>  	if (!entry || entry->bound)
>  		return -EINVAL;
> -	page = (request->offset + PAGE_SIZE - 1) / PAGE_SIZE;
> +	page = DIV_ROUND_UP(request->offset, PAGE_SIZE);
>  	retcode = drm_bind_agp(entry->memory, page);
>  	if (retcode)
>  		return retcode;
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191025094907.3582-1-wambui.karugax%40gmail.com.
>


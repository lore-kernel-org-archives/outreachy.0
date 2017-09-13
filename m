X-GM-THRID: 6465297049909723136
X-Received: by 10.46.80.90 with SMTP id v26mr1599105ljd.2.1505333934752;
        Wed, 13 Sep 2017 13:18:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.139.211 with SMTP id n202ls1110976wmd.8.gmail; Wed, 13 Sep
 2017 13:18:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAeYlIJcqh7l6vqsOhtOxJxOpjlFNGTaFWff8MAiRIYUB11jF111UWIvktG8PZKyTXw0iKZ
X-Received: by 10.28.45.215 with SMTP id t206mr211682wmt.17.1505333933660;
        Wed, 13 Sep 2017 13:18:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505333933; cv=none;
        d=google.com; s=arc-20160816;
        b=PJDcTq/pJ7AMJxEV8eVnMTylYA5Fv0ukU8S3BW6iCneIwLE0/wgBi5uK6Ti3sTXwWr
         17EgpwnGUEZtGC28W4xy9rjfEhuQyml8Af1FeAfCqO5Xq8or6oCHMO512QDPHh85QB/2
         zp/nhETpzzb9hq+HcNb65enWgQwx4KFTW5MJOKNoWAmCbpLGUkrXd16QpnYEV0WccGuu
         21pZu4BzH7PltKhZB0A0Z0DBeIqXIHVHiLtGXFfia85v7tMeHaMzbz1VrTVLJyfa5FHG
         EXUul345Qt92YsMU3nVU4JP+lKbPhSHEdiQbHjQufqD+vPSbwZOdIB8gQCEpl72JYDzX
         WWmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=V8UlN3EolfIHEOybGGCGMmh0RYwJS9uaQXq0/dmdcBM=;
        b=CoS6yVTzJWS9noAiVG+GrcGpCxXumcnMTBUgB5TtpzT9DBz8O2A37MyeWjfHtNn+43
         zK+fRi4WJGyT34Hm/rLhvFnsUIXETWlPWT/fEl7Z+TCOVcOpJBE2nNm6anRU4AjsC2zg
         YC0eAvcG2f2A+gWYTZUujmyaCj+ajE7fUQQWs0qxGKNvZUc+QH5D+aVpbW3ueljYeJwn
         r7l5Ztcy86kbi+WigIxJ3ZqpHn9lpFr7jWXd8ICl7MDEfP6t9pruAtCOSJIeO4i8LgY+
         zAGNQMECZraugc8dVX9PfGNwNm+W0DbBk/sA2BsIcN8XbnZg3g0FxXpMskFtjk/uKRay
         gusw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q145si136401wme.4.2017.09.13.13.18.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 13:18:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,389,1500933600"; 
   d="scan'208";a="237392304"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 22:18:53 +0200
Date: Wed, 13 Sep 2017 22:18:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Jani Nikula <jani.nikula@linux.intel.com>, dri-devel@lists.freedesktop.org
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] drm: Replace "foo * bar" with
 "foo *bar"
In-Reply-To: <20170913161420.GA3221@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709132218380.2920@hadrien>
References: <20170913161420.GA3221@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Meghana Madhyastha wrote:

> This replaces all instances of foo * bar with foo *bar
> in drm_agpsupport.c. This is so that it adheres to
> standard C syntax for pointers.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/gpu/drm/drm_agpsupport.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
> index 928248e..993e486 100644
> --- a/drivers/gpu/drm/drm_agpsupport.c
> +++ b/drivers/gpu/drm/drm_agpsupport.c
> @@ -94,7 +94,7 @@ int drm_agp_info_ioctl(struct drm_device *dev, void *data,
>   * Verifies the AGP device hasn't been acquired before and calls
>   * \c agp_backend_acquire.
>   */
> -int drm_agp_acquire(struct drm_device * dev)
> +int drm_agp_acquire(struct drm_device *dev)
>  {
>  	if (!dev->agp)
>  		return -ENODEV;
> @@ -133,7 +133,7 @@ int drm_agp_acquire_ioctl(struct drm_device *dev, void *data,
>   *
>   * Verifies the AGP device has been acquired and calls \c agp_backend_release.
>   */
> -int drm_agp_release(struct drm_device * dev)
> +int drm_agp_release(struct drm_device *dev)
>  {
>  	if (!dev->agp || !dev->agp->acquired)
>  		return -EINVAL;
> @@ -159,7 +159,7 @@ int drm_agp_release_ioctl(struct drm_device *dev, void *data,
>   * Verifies the AGP device has been acquired but not enabled, and calls
>   * \c agp_enable.
>   */
> -int drm_agp_enable(struct drm_device * dev, struct drm_agp_mode mode)
> +int drm_agp_enable(struct drm_device *dev, struct drm_agp_mode mode)
>  {
>  	if (!dev->agp || !dev->agp->acquired)
>  		return -EINVAL;
> @@ -241,8 +241,8 @@ int drm_agp_alloc_ioctl(struct drm_device *dev, void *data,
>   *
>   * Walks through drm_agp_head::memory until finding a matching handle.
>   */
> -static struct drm_agp_mem *drm_agp_lookup_entry(struct drm_device * dev,
> -					   unsigned long handle)
> +static struct drm_agp_mem *drm_agp_lookup_entry(struct drm_device *dev,
> +						unsigned long handle)
>  {
>  	struct drm_agp_mem *entry;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170913161420.GA3221%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6465205340686254080
X-Received: by 10.159.54.44 with SMTP id r41mr11824505uad.58.1505303979806;
        Wed, 13 Sep 2017 04:59:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.216.68 with SMTP id b65ls2987316itg.1.canary-gmail; Wed, 13
 Sep 2017 04:59:39 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7wcgWZ7B+BL6yEs4Js9EMo3JlSKEGTpSk8DdmT5B6POTmt/nrWpKez7MTOZF/hc2SUYycZ
X-Received: by 10.99.129.194 with SMTP id t185mr11004055pgd.23.1505303979123;
        Wed, 13 Sep 2017 04:59:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505303979; cv=none;
        d=google.com; s=arc-20160816;
        b=fLpIpLcGPYxjDE8R20qREBvpXjb9TlgAzyZ0VlNXjlXVDpYc3fWi9j0w4iQ+4gPB4s
         fP/xnUL5mJXQ3/fwVsG12rkVMdDdVdFLEkL28MrCa5iaWP8M7mabP0JR51WDNPvk3Dm4
         gmeoRV1WG1sVlqe4I5unOB+1NR/4dPi4lUI7tmDqCjSoqmQ3jGw9mr09WpBL7qoGurLg
         Xl8qQhM9BTIz0qqT5RXTsA0GlyTByNW654SZ+w4lv8YkgSH4TaI1OP8rebYZDdfD5+Hb
         fH6AE41GSQGlR8ySmtKBxztD3qCszxp5V9k/Fh7ie0hC2tAqrzKfOAY8tV+l7Pwqe7Oy
         hRhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=g5CZFTYbr6f0Kcv42aRhWh/c46LqQ9C4GVtgCFWnrEE=;
        b=pL8ncWlkCFdS7AmGvcToKr1z6L1/Pp7tyIsg3Ib+TBD4VzH/oC5d9BVv8Vxocspzuo
         4yTzAUJsEiY0eY6dJmo6/kquyJYuOeer/2h9S5NeaZdq+jwTaS2GeHecbqwrb1Q2/xEz
         uFOZXoYnHCNhZwkJS3BRsUvpBWCaLqNCQxqL5Rax0xfuBTxhY5dcrYZwzy6tgWjsjN0O
         PyAT4YmUcEgefswLurs6bNIMurKmCW0QT20R/ENJv0J8RMtoxyxN8/P+GzHnYrKFGP53
         uK638Y3UjQ/BynuFNsuazREQlth/55V+U6HGekvF6sK/VHhStvZLfSnT1ntWFV/4kPoD
         YE6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b2si70904itg.3.2017.09.13.04.59.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 04:59:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,387,1500933600"; 
   d="scan'208";a="237331063"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 13:59:37 +0200
Date: Wed, 13 Sep 2017 13:59:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: Daniel Vetter <daniel.vetter@intel.com>, 
    Jani Nikula <jani.nikula@linux.intel.com>, 
    Sean Paul <seanpaul@chromium.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] GPU: DRM: Replace "foo * bar"
 with "foo *bar"
In-Reply-To: <3fefbb68a40ca5483a6b0e4c528c020e2d42f6bf.1505296813.git.meghana.madhyastha@gmail.com>
Message-ID: <alpine.DEB.2.20.1709131357460.26484@hadrien>
References: <cover.1505296813.git.meghana.madhyastha@gmail.com> <3fefbb68a40ca5483a6b0e4c528c020e2d42f6bf.1505296813.git.meghana.madhyastha@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Meghana Madhyastha wrote:

> This replaces all instances of foo * bar with foo *bar
> in drm_agpsupport.c. This is so that it adheres to
> standard C syntax for pointers.

Just for future reference, you don't really need to metion the file name
in the log message.  One can see that directly from the patch code.

Also, remember to use the imperative.  So "This replaces" should be just
"Replace".

> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3fefbb68a40ca5483a6b0e4c528c020e2d42f6bf.1505296813.git.meghana.madhyastha%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


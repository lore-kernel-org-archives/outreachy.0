X-GM-THRID: 6612898342094503936
X-Received: by 2002:a19:d0d5:: with SMTP id h204-v6mr611286lfg.7.1539685823784;
        Tue, 16 Oct 2018 03:30:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:6757:: with SMTP id e23-v6ls676283lfj.63.gmail; Tue, 16
 Oct 2018 03:30:22 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60AF8V48Kci/Bz4ynt2Ur0rXIQcOO6Jnp3yxQgcJOLf7G7hfqzWNAJVY3NKBeWiOIp4Shzp
X-Received: by 2002:a19:6453:: with SMTP id b19-v6mr599409lfj.6.1539685822918;
        Tue, 16 Oct 2018 03:30:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539685822; cv=none;
        d=google.com; s=arc-20160816;
        b=m9bdDTvPE+p9Pi5OHsiL+9HCdcPHDtK0AsJr5IXj0zEvJmeOt1rkfxhVwearfuioZb
         Asiad5O+G6MDx4i7xAntiP6wRYiOMcNBfbU8rOJCWCzEd/Ozto0tRB37gnVTzFWFvAY+
         C/HYEcr9k/QK+/0IhS+CD0MU210nCD+Q9eWnyQvdv4N6uqu+HsfQrUMZDDhOtQzeq+yh
         HtfTtqrOwhC7i7iDZJVrokIuXFhoa8U7YMyJnLmxtJN+qJ/CDHqqgPfMLGgK9oUACZIO
         L7fsZKQ53bkkTRrkS6E2LqTGt4L/WWZ9s7JwB0mXTqARwiKwC+lFBG+cytYQI9hD5Dr+
         d5Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JLMyGcGVYIABmReEvvpqszRlBWeaY6lmNSHoin7emGc=;
        b=GNU2ax8WiWp855Hx2uzHquVvEwbN9yk6uTwVouYrxx6FFsWTgKsIs0jDb3ekQBXcM/
         uJ6+uhYz3oSsKOKhFW5RMEX8h5N7NFHZCtrK0DZa/vQFYhTuzbf+P69jSPQJOlG0m1ZM
         NHCQmf1iKLn1l8QoTV0UtqQtILU9WNUUc3xvWOJsgQVfnbnXLtAgFcjjNWCzfdtKSIM3
         ekBV2rUm/JvBz3xOfI8LZleWtwsGm1QdJjpoVeBoIOalm3TJFz0RLlr980p9iTFQvFKe
         Pk2v5L1v80oElAGW/y68OLJTpv+6aEh7tVFAlFhFQo2lrD7Rw4k9Nqu1JmNbn+OFeHfo
         9g+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y1-v6si452781lfd.3.2018.10.16.03.30.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Oct 2018 03:30:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,388,1534802400"; 
   d="scan'208";a="282255627"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2018 12:30:21 +0200
Date: Tue, 16 Oct 2018 12:30:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, 
    daniel.vetter@ffwll.ch, gustavo@padovan.org, 
    maarten.lankhorst@linux.intel.com, sean@poorly.run, airlied@linux.ie
Subject: Re: [Outreachy kernel] [PATCH DRM] drm: Shift * to be adjacent to
 pointer name
In-Reply-To: <20181015212644.GA28579@armorer>
Message-ID: <alpine.DEB.2.20.1810161228530.3512@hadrien>
References: <20181015212644.GA28579@armorer>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 16 Oct 2018, Mamta Shukla wrote:

> Shift * to be adjacent to pointer name to follow Linux coding style.
> Issue found with checkpatch.pl
> ERROR: "foo * bar" should be "foo *bar"

The patch looks OK, but at this point, you know how to send a patch, so it
would be better to focus on changes that are more complex than whitespace
issues.

julia


>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
>  drivers/gpu/drm/drm_memory.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_memory.c b/drivers/gpu/drm/drm_memory.c
> index d69e4fc..40c4349 100644
> --- a/drivers/gpu/drm/drm_memory.c
> +++ b/drivers/gpu/drm/drm_memory.c
> @@ -51,7 +51,7 @@
>  #endif
>
>  static void *agp_remap(unsigned long offset, unsigned long size,
> -		       struct drm_device * dev)
> +		       struct drm_device *dev)
>  {
>  	unsigned long i, num_pages =
>  	    PAGE_ALIGN(size) / PAGE_SIZE;
> @@ -94,26 +94,26 @@ static void *agp_remap(unsigned long offset, unsigned long size,
>  }
>
>  /** Wrapper around agp_free_memory() */
> -void drm_free_agp(struct agp_memory * handle, int pages)
> +void drm_free_agp(struct agp_memory *handle, int pages)
>  {
>  	agp_free_memory(handle);
>  }
>
>  /** Wrapper around agp_bind_memory() */
> -int drm_bind_agp(struct agp_memory * handle, unsigned int start)
> +int drm_bind_agp(struct agp_memory *handle, unsigned int start)
>  {
>  	return agp_bind_memory(handle, start);
>  }
>
>  /** Wrapper around agp_unbind_memory() */
> -int drm_unbind_agp(struct agp_memory * handle)
> +int drm_unbind_agp(struct agp_memory *handle)
>  {
>  	return agp_unbind_memory(handle);
>  }
>
>  #else /*  CONFIG_AGP  */
>  static inline void *agp_remap(unsigned long offset, unsigned long size,
> -			      struct drm_device * dev)
> +			      struct drm_device *dev)
>  {
>  	return NULL;
>  }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181015212644.GA28579%40armorer.
> For more options, visit https://groups.google.com/d/optout.
>


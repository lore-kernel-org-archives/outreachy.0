X-GM-THRID: 6468338986973659136
X-Received: by 10.28.63.86 with SMTP id m83mr238271wma.21.1506028607188;
        Thu, 21 Sep 2017 14:16:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.129 with SMTP id r123ls807246wmf.1.gmail; Thu, 21 Sep
 2017 14:16:46 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBFHdFspgYqqKzJMR2xMfZCqopwEX0zWL0wpE7sRY6PRQvPiQ40WFmegQsRHYq57nk8HTzq
X-Received: by 10.28.0.7 with SMTP id 7mr227801wma.26.1506028606201;
        Thu, 21 Sep 2017 14:16:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506028606; cv=none;
        d=google.com; s=arc-20160816;
        b=lpR9K3TnlSeE5aXYFnMq3dwQxPX16QKy9CL+s4NOjvkqTL84U2YSNdIIiGxs6ASQYy
         c+1U5zbPsFBKV7NBcEiWmyDW99OqPyBA304+1NbeSrcm5BuBLefOP55uchnySBD6jhJD
         YotbIlNm8E4fe1cxZbDtm1n1QYljeriTO34WMCzLO6SSvbmLVNf08ErpR6u3SMiHc105
         /83GiVk0O56MV+4CEb/WlOz8f/Tu38sT/8ahu+wYoN2F5Csxwz9IG7m/AxYdMotiosjR
         GxKubHUJ8hf0uSPwxgtVnCsl34904AOfJU8FlVOh3m9n6KF10qvVq4oRPX4gamvrtK8X
         OtDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=lmWEqs2wsoYXoUfwLHLOF5O8zv3UOPZTpKxZt7CY+zA=;
        b=BhANXyNIJN2SMsi13k46wvcnLi9lemQtCv5ThxqyAw66PSez725Sp7Xs475kAeQNhy
         JDqUU+dRnO/qElzXDyd2qQHC5+pl5kV91d14TdBsEi0Y/4B2ruly8zIx76j/vSBdlXsn
         I9dkceJ0ffaFYx1631N9ajy7d2u/RCFX0nrox85oRomr/aUWW2O+mOrN604HjP6NM2+/
         8o/HUgRk+ZZbpsygIZGyhFIyNWzm9dS64lpXhJWwxgroMQeNz7gNBuTjAgNC6UQaup/7
         QakGd1fvMLezq+/OgUaceS9j8dJLEemjAAoENWc9Bqp0CZwjrnLrwBZcyCRxSyBz0g7y
         FmUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d82si181820wmd.1.2017.09.21.14.16.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 14:16:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,426,1500933600"; 
   d="scan'208";a="238326815"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Sep 2017 23:16:45 +0200
Date: Thu, 21 Sep 2017 23:16:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>, 
    Jani Nikula <jani.nikula@linux.intel.com>, 
    Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] drm: Remove obsolete "This is
 gross" comment
In-Reply-To: <20170921210424.GA21951@Haneen>
Message-ID: <alpine.DEB.2.20.1709212316310.2857@hadrien>
References: <20170921210424.GA21951@Haneen>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Sep 2017, Haneen Mohammed wrote:

> Remove obsolete comment which was initially added in 2008 to annotate
> that idr_find() was used before idr_remove() since idr_remove() didn't
> use to return feedback. The comment now is irrelevant with
> commit f6cd7daecff5 ("drm: Release driver references to handle before
> making it available again").

Why did you send it again?

julia

>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/gpu/drm/drm_gem.c | 9 ---------
>  1 file changed, 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index c55f338..b9bddaa 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -282,15 +282,6 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
>  {
>  	struct drm_gem_object *obj;
>
> -	/* This is gross. The idr system doesn't let us try a delete and
> -	 * return an error code.  It just spews if you fail at deleting.
> -	 * So, we have to grab a lock around finding the object and then
> -	 * doing the delete on it and dropping the refcount, or the user
> -	 * could race us to double-decrement the refcount and cause a
> -	 * use-after-free later.  Given the frequency of our handle lookups,
> -	 * we may want to use ida for number allocation and a hash table
> -	 * for the pointers, anyway.
> -	 */
>  	spin_lock(&filp->table_lock);
>
>  	/* Check if we currently have a reference on the object */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170921210424.GA21951%40Haneen.
> For more options, visit https://groups.google.com/d/optout.
>


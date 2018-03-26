X-GM-THRID: 6535020696311955456
X-Received: by 10.28.52.142 with SMTP id b136mr2063679wma.13.1522080464537;
        Mon, 26 Mar 2018 09:07:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.196.13 with SMTP id v13ls4316872wrf.12.gmail; Mon, 26 Mar
 2018 09:07:43 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtVevQn9tTOw2GPfFaBxjYPaPlFBPO8v/oOI7YuuxT4AFat/tuNHWjhkrSjwQGQPSX3dkdw
X-Received: by 10.223.180.86 with SMTP id v22mr3346625wrd.1.1522080463349;
        Mon, 26 Mar 2018 09:07:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522080463; cv=none;
        d=google.com; s=arc-20160816;
        b=JzNAZlUmpfqFWtIhHRSxNU5uehZa+ieMLzK/0I4q+NeL3vqPQmTFpq6IKzn3m1C7BE
         XdM36Hxb/1cNTICN8IsOy6lEXT88Q+fUSnUxZCLdHNY8z2wXKuawCpXsuT97m+bvgzyI
         7NCpe1wdS/DfvSj2Z3icn/e+5UzlJ5Qv6k3sr5Dw9o0Hb0R5mNexCrSsyx99YOJLRBd7
         j65IdtQv4wJTmFRoyaHOv5IUsECLZbDotDvmV56cw2hbhXKMdY9ON6n1cbKkxYWsH9PR
         s1QXW5hhmKZ3DitWZ1IAPMddqtr5CrwkA8HVOzZ3FMRjO6gO7HHhzLRFqvdLl4pRH7mM
         G5Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=GhgtoU9ev/6+jr0693iIzamOJQ+mhurSQOXCml7BNek=;
        b=tj84mDgBXh0yoPPpRBpMtoBC6KjwqfPsTfl0sBb1QF/eFpwGSYPzJP5NEiV7skEPYA
         FaHdiDZeyew7DUHh05XbPmwYFZ/uXVsRBRz6nqram4IcxoYkZeG6LUqXh21hW+zZlGTs
         WBK8eSHK1aSyWcUp5Kzx7p4PefsFjuAs4USOqHjpOBWlsU7UmSnoSuTFY2kHooNDP3TE
         TBxkwwXp2H3xnnX4PYRzJYYdEm/47U2G5gp+0BTWNAcLTmEfks3aH3gD027O9FUIloSY
         ak7yeHDtEQEmoshjFn7lFgp3bPYGfuq0fQXJykROhvjrVF82f3sK+Qnuxi+8+VcCJHp3
         2Gqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a10si574548wmd.0.2018.03.26.09.07.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Mar 2018 09:07:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,365,1517871600"; 
   d="scan'208";a="320031043"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2018 18:07:42 +0200
Date: Mon, 26 Mar 2018 18:07:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: Daniel Vetter <daniel.vetter@intel.com>, 
    Gustavo Padovan <gustavo@padovan.org>, Sean Paul <seanpaul@chromium.org>, 
    David Airlie <airlied@linux.ie>, Julia Lawall <Julia.Lawall@lip6.fr>, 
    Gilles Muller <Gilles.Muller@lip6.fr>, 
    Nicolas Palix <nicolas.palix@imag.fr>, 
    Michal Marek <michal.lkml@markovi.net>, outreachy-kernel@googlegroups.com, 
    dri-devel@lists.freedesktop.org, yamada.masahiro@socionext.com
Subject: Re: [PATCH DRM] drm: Remove drm_property_{un/reference}_blob
 aliases
In-Reply-To: <20180320133749.GA11695@haneen-VirtualBox>
Message-ID: <alpine.DEB.2.20.1803261806540.5291@hadrien>
References: <20180320133749.GA11695@haneen-VirtualBox>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 20 Mar 2018, Haneen Mohammed wrote:

> This patch remove the compatibility aliases
> drm_property_{reference/unreference}_blob of
> drm_property_blob_{get/put} since all callers have been converted to the
> prefered _{get/put}.
>
> Remove the helpers from the semantic patch drm-get-put-cocci.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

For the Coccinelle part.

> ---
>  include/drm/drm_property.h               | 26 --------------------------
>  scripts/coccinelle/api/drm-get-put.cocci | 10 ----------
>  2 files changed, 36 deletions(-)
>
> diff --git a/include/drm/drm_property.h b/include/drm/drm_property.h
> index 8a522b4..08d5dbb 100644
> --- a/include/drm/drm_property.h
> +++ b/include/drm/drm_property.h
> @@ -279,32 +279,6 @@ struct drm_property_blob *drm_property_blob_get(struct drm_property_blob *blob);
>  void drm_property_blob_put(struct drm_property_blob *blob);
>
>  /**
> - * drm_property_reference_blob - acquire a blob property reference
> - * @blob: DRM blob property
> - *
> - * This is a compatibility alias for drm_property_blob_get() and should not be
> - * used by new code.
> - */
> -static inline struct drm_property_blob *
> -drm_property_reference_blob(struct drm_property_blob *blob)
> -{
> -	return drm_property_blob_get(blob);
> -}
> -
> -/**
> - * drm_property_unreference_blob - release a blob property reference
> - * @blob: DRM blob property
> - *
> - * This is a compatibility alias for drm_property_blob_put() and should not be
> - * used by new code.
> - */
> -static inline void
> -drm_property_unreference_blob(struct drm_property_blob *blob)
> -{
> -	drm_property_blob_put(blob);
> -}
> -
> -/**
>   * drm_property_find - find property object
>   * @dev: DRM device
>   * @file_priv: drm file to check for lease against.
> diff --git a/scripts/coccinelle/api/drm-get-put.cocci b/scripts/coccinelle/api/drm-get-put.cocci
> index ceb71ea..3a09c97 100644
> --- a/scripts/coccinelle/api/drm-get-put.cocci
> +++ b/scripts/coccinelle/api/drm-get-put.cocci
> @@ -40,12 +40,6 @@ expression object;
>  - drm_gem_object_unreference_unlocked(object)
>  + drm_gem_object_put_unlocked(object)
>  |
> -- drm_property_reference_blob(object)
> -+ drm_property_blob_get(object)
> -|
> -- drm_property_unreference_blob(object)
> -+ drm_property_blob_put(object)
> -|
>  - drm_dev_unref(object)
>  + drm_dev_put(object)
>  )
> @@ -72,10 +66,6 @@ __drm_gem_object_unreference(object)
>  |
>  drm_gem_object_unreference_unlocked(object)
>  |
> -drm_property_unreference_blob@p(object)
> -|
> -drm_property_reference_blob@p(object)
> -|
>  drm_dev_unref@p(object)
>  )
>
> --
> 2.7.4
>
>


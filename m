X-GM-THRID: 6532398432427966464
X-Received: by 10.159.59.235 with SMTP id y43mr5994478uah.21.1521493582936;
        Mon, 19 Mar 2018 14:06:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.94.76 with SMTP id a12ls976906uah.17.gmail; Mon, 19 Mar
 2018 14:06:21 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtOcxd6K6hWZnBKFbYJGaEE9cmuCL4znCYHr9sZsDfTrY4KB4OkNtmZcbbtr2mwWgoKjMi1
X-Received: by 10.176.37.26 with SMTP id j26mr2358430uan.5.1521493581806;
        Mon, 19 Mar 2018 14:06:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521493581; cv=none;
        d=google.com; s=arc-20160816;
        b=zjvWY8viIqZ+cAqDjObXTIzVdL5X9ykV2V8m5ugFg1APG3X58Kc/fjgygcLlSRHky6
         THrndyolWh7clUAaytMML3CyBHsYwqvSHUHKgH0fp99Tku6G/+dJLuEwfYL9JtPWYLPd
         H0u2FtZ8syFSIWvMSsM2QVavSADYBQXmlKO7T7h5yg7rMEugYA5hgm3XHbxADLsXjfnF
         MKMt+DdryUv8SO3uJUHx7vE9wscET51MuP56Fy5TZARR/R5Ncz0Mof1BBlcxWTW3piYT
         zQChx0ynC9DBGk8x2Xy0oyRJpQmYg00erq1EZze0H2WFCwqBYXFsAikQBH768k+pM99q
         +IOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=iMos2Ro1hrwZInXHKCyYHGkPvKhkqpPKWm10EZk+jv8=;
        b=DK4MwaUOcBWITkMdhbOnXALHAlF07/hvEMXBgLsa8/TQ0IPxnVQLmsGFT5KBjon6vL
         bBCRxlcu0HhhU3ISqd28ybeTnjhRF67S4CeUitb6eqTHe0xQ9/kp5gJA1OQmf3l2q7YS
         IcojllW+ejtLdipwThysa8l1FtxTJEAyd+ZGFaXRAHORAuuRx78dM6KQeqUeRHXW62Tp
         n8ht3U9gnvhOFoVb97oMqYjK8AeuxWATpUfOZpKyuUhs+5iYgCdhXdC+fqLOk87+plZG
         rvGkG7Wrfug9j2X3fqxvAbPsW6GPSP6FaeYdfUPAemjz5iy565nzJoo3ckyBfeU4uUU7
         78kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=TOqjWmJe;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::244 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Return-Path: <daniel.vetter@ffwll.ch>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id q126si9551vkf.1.2018.03.19.14.06.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 14:06:21 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4001:c0b::244 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=TOqjWmJe;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::244 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Received: by mail-it0-x244.google.com with SMTP id d13-v6so12262945itf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 14:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=iMos2Ro1hrwZInXHKCyYHGkPvKhkqpPKWm10EZk+jv8=;
        b=TOqjWmJeASnGwl0xErSYhV5Goi4tGj6ckoeeBY/atnt2qtxE/wSeRaBnAvPKKxuUFX
         3bNS2ZKDnm1Skfbhihopyrl/3No8ef4FUSEZZ2uvkznfTK8Tqpc+YzfQCzs+VySYuBPg
         su5bVRqKzZO0cFW2jJ78dcXR+9m+njTWwqGvQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=iMos2Ro1hrwZInXHKCyYHGkPvKhkqpPKWm10EZk+jv8=;
        b=YObJsD8zDrP0t8oCrLR8cLIYDi+02cAatNsOiSSL1U3r3l3FHlQWnUc1sZYtNOEeqK
         w+CqikSJqHoqdSw7+JwHc5kKWAOGTANA8sFJDQrwkHZxJtJ91lmGzaWQieem/8bXlp1M
         pP8hCw8hxiscnDnICmoZAxN/SdSsWRRZxwrTC8SETqLVHup/7i/8ZI5C9RkSKg/NHevb
         mhRGqC3pGfT20MXU48spy6LF1F38ntnIb2qMHejsZWonkK7UeycNflhwxSbtEqWpS4ci
         PTyWKxc/p+DG0Go2CTCt57MpxQ1vNGseVP6a5KtO4l59jQj74pNyvCCI+mfxroSFAyT1
         huWw==
X-Gm-Message-State: AElRT7FWycanWChJNZsc7WYxOiRnsKhSEl9TIdv07OVG5P02O0n8Ob80
	Y1IQm0B+cgszALGfcpO0Zf5hV2bWKgXYDx1Tk37o0g==
X-Received: by 2002:a24:5805:: with SMTP id f5-v6mr240903itb.63.1521493581271;
 Mon, 19 Mar 2018 14:06:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.40.129 with HTTP; Mon, 19 Mar 2018 14:06:20 -0700 (PDT)
X-Originating-IP: [212.51.149.109]
In-Reply-To: <20180313120205.GA12094@Haneen>
References: <20180313120205.GA12094@Haneen>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 19 Mar 2018 22:06:20 +0100
Message-ID: <CAKMK7uFhPg88FAB6Q4c7VkLu8OvNdwpSyKtH9QJw2F+WwcxMxA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH DRM] drm: Introduce drm_global_item_{get/put}()
To: Haneen Mohammed <hamohammed.sa@gmail.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Thomas Hellstrom <thellstrom@vmware.com>, Sinclair Yeh <syeh@vmware.com>, 
	Alex Deucher <alexdeucher@gmail.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>, Gustavo Padovan <gustavo@padovan.org>, 
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 13, 2018 at 1:02 PM, Haneen Mohammed
<hamohammed.sa@gmail.com> wrote:
> For consistency with other reference counting APIs in the kernel,
> introduce drm_global_item_{get/put} functions instead of
> drm_global_item_{ref/unref}.
>
> Compatibility aliases are added to keep existing code working.
>
> The semantic patch scripts/coccinelle/api/drm-get-put.cocci has been
> extended to account for the new helpers.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Somehow this fell through the cracks. drm_global.c is only used by ttm
and vmwgfx, adding relevant maintainers.
-Daniel

> ---
>  drivers/gpu/drm/drm_global.c             | 43 +++++++++++++++++++++++++++-----
>  include/drm/drm_global.h                 |  2 ++
>  scripts/coccinelle/api/drm-get-put.cocci | 10 ++++++++
>  3 files changed, 49 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_global.c b/drivers/gpu/drm/drm_global.c
> index b2dc21e..76cf948 100644
> --- a/drivers/gpu/drm/drm_global.c
> +++ b/drivers/gpu/drm/drm_global.c
> @@ -64,7 +64,7 @@ void drm_global_release(void)
>  }
>
>  /**
> - * drm_global_item_ref - Initialize and acquire reference to memory
> + * drm_global_item_get - Initialize and acquire reference to memory
>   * object
>   * @ref: Object for initialization
>   *
> @@ -75,7 +75,7 @@ void drm_global_release(void)
>   * Returns:
>   * Zero on success, non-zero otherwise.
>   */
> -int drm_global_item_ref(struct drm_global_reference *ref)
> +int drm_global_item_get(struct drm_global_reference *ref)
>  {
>         int ret = 0;
>         struct drm_global_item *item = &glob[ref->global_type];
> @@ -107,10 +107,10 @@ int drm_global_item_ref(struct drm_global_reference *ref)
>         mutex_unlock(&item->mutex);
>         return ret;
>  }
> -EXPORT_SYMBOL(drm_global_item_ref);
> +EXPORT_SYMBOL(drm_global_item_get);
>
>  /**
> - * drm_global_item_unref - Drop reference to memory
> + * drm_global_item_put - Drop reference to memory
>   * object
>   * @ref: Object being removed
>   *
> @@ -120,7 +120,7 @@ EXPORT_SYMBOL(drm_global_item_ref);
>   *
>   */
>
> -void drm_global_item_unref(struct drm_global_reference *ref)
> +void drm_global_item_put(struct drm_global_reference *ref)
>  {
>         struct drm_global_item *item = &glob[ref->global_type];
>
> @@ -133,5 +133,36 @@ void drm_global_item_unref(struct drm_global_reference *ref)
>         }
>         mutex_unlock(&item->mutex);
>  }
> -EXPORT_SYMBOL(drm_global_item_unref);
> +EXPORT_SYMBOL(drm_global_item_put);
>
> +/**
> + * drm_global_item_ref - Initialize and acquire reference to memory
> + * object
> + * @ref: Object for initialization
> + *
> + * This is a compatibility alias for drm_global_item_get() and should
> + * not be used by new code.
> + *
> + * Returns:
> + * Zero on success, non-zero otherwise.
> + */
> +int drm_global_item_ref(struct drm_global_reference *ref)
> +{
> +       return drm_global_item_get(ref);
> +}
> +EXPORT_SYMBOL(drm_global_item_ref);
> +
> +/**
> + * drm_global_item_unref - Drop reference to memory
> + * object
> + * @ref: Object being removed
> + *
> + * This is a compatibility alias for drm_global_item_get() and should not
> + * be used by new code.
> + */
> +
> +void drm_global_item_unref(struct drm_global_reference *ref)
> +{
> +       drm_global_item_put(ref);
> +}
> +EXPORT_SYMBOL(drm_global_item_unref);
> diff --git a/include/drm/drm_global.h b/include/drm/drm_global.h
> index 3a83060..5eb6f0c 100644
> --- a/include/drm/drm_global.h
> +++ b/include/drm/drm_global.h
> @@ -47,6 +47,8 @@ struct drm_global_reference {
>
>  void drm_global_init(void);
>  void drm_global_release(void);
> +int drm_global_item_get(struct drm_global_reference *ref);
> +void drm_global_item_put(struct drm_global_reference *ref);
>  int drm_global_item_ref(struct drm_global_reference *ref);
>  void drm_global_item_unref(struct drm_global_reference *ref);
>
> diff --git a/scripts/coccinelle/api/drm-get-put.cocci b/scripts/coccinelle/api/drm-get-put.cocci
> index 91fceb8..db1c465 100644
> --- a/scripts/coccinelle/api/drm-get-put.cocci
> +++ b/scripts/coccinelle/api/drm-get-put.cocci
> @@ -54,6 +54,12 @@ expression object;
>  |
>  - drm_dev_unref(object)
>  + drm_dev_put(object)
> +|
> +- drm_global_item_ref(object)
> ++ drm_global_item_get(object)
> +|
> +- drm_global_item_unref(object)
> ++ drm_global_item_put(object)
>  )
>
>  @r depends on report@
> @@ -87,6 +93,10 @@ drm_property_unreference_blob@p(object)
>  drm_property_reference_blob@p(object)
>  |
>  drm_dev_unref@p(object)
> +|
> +drm_global_item_ref@p(object)
> +|
> +drm_global_item_unref@p(object)
>  )
>
>  @script:python depends on report@
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180313120205.GA12094%40Haneen.
> For more options, visit https://groups.google.com/d/optout.



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch


X-GM-THRID: 6465297049909723136
X-Received: by 10.101.87.206 with SMTP id q14mr7294305pgr.78.1505339464949;
        Wed, 13 Sep 2017 14:51:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.147 with SMTP id e141ls3998398ite.1.gmail; Wed, 13 Sep
 2017 14:51:04 -0700 (PDT)
X-Received: by 10.99.123.26 with SMTP id w26mr12010070pgc.115.1505339464365;
        Wed, 13 Sep 2017 14:51:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505339464; cv=none;
        d=google.com; s=arc-20160816;
        b=b6CRtUBW9xHcbaXd2APWG9U8ivkwIB5zzAQVxBP5cWOnPl602A0YxL3nZ5vO7Wh7NV
         owc7+a5JJSHTAIEDldE2abX4L+dlwJYta9NmQ2QyxkvACR5nNfnim9ReMzcUCEJRUKPP
         rQ0wO7o96l+0ePsCAvZvJtxlz35oI4lGBlZljMA5Pw4u13HPcesmXKEzR0k4oRBnC6aF
         mFAOOE9SAD/B3rPsju43n81BxhTm5xwt5cFmM6ItSWXjnm337ogaTYdO3049J9aq3wKd
         XPVj7J/215hChZbyV0u59CaHN31WKdQfuJhq0UjUM4avzMC3LWjcL9aUgNatLFFOjvdh
         BfHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=PAD/jwYLelNaAwW4/VP0hOGU+dvwEvHnLASliVOwNBc=;
        b=0G0Qxc9KciPZrUPWfWyBbW0aeDdQMqaVwaQybwieRfwALRedg1Udps7P5/DmsY49ZO
         NGilBsWho2dZALClNu30yrb9M9de1dO+v5KADKz9rhPbPHpPq/CVcKGGUI4jHv3j9btS
         ALiRCwDAJTsZE2NDSY2rdT/Lzy7AhckJBX4KivO10eI7kuBeM1/0HpJA1J9Ap6gZcpTp
         lPKf1LXrA+sBgt6Ib3PiEesKkDHZuXVHp0vJOeRbHhzMZCfr2gdILBpYyKR24r2Qmbey
         Fe+EO9jvRpZT2q5c4gDxAuhOGJblUeNhynXjGhibLLLp362TWL7M1ieRjK+/qJ57Ty00
         ubyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LcIKs4uq;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::236 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x236.google.com (mail-yw0-x236.google.com. [2607:f8b0:4002:c05::236])
        by gmr-mx.google.com with ESMTPS id l77si1148584ywc.16.2017.09.13.14.51.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 14:51:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::236 as permitted sender) client-ip=2607:f8b0:4002:c05::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LcIKs4uq;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::236 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x236.google.com with SMTP id q80so3492991ywg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 14:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=PAD/jwYLelNaAwW4/VP0hOGU+dvwEvHnLASliVOwNBc=;
        b=LcIKs4uq8JsS42wwotIU8NVrcEpAFWF7fCOupkOP3CwdOM/7WlrSdIeHkVF28E3py1
         XkV3bIskv36ptAjH8pbIpSzSCnErJI8NbznP1+8V08MUsB2+a/s0k3apUCwMmlykrOvR
         gEm0rAQfpjU3GuT6eNPH/r7nQZ2bOssFPnybA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=PAD/jwYLelNaAwW4/VP0hOGU+dvwEvHnLASliVOwNBc=;
        b=QPL/tYWzR/t0doe6I9oiN7QfthMc6zg77/7LoLor+zehhvsGO07bf2RGdsP1mvy+Xv
         zzilaf+DhVeKpWIfKKhgaJdzLqwP6Jj1bazkT83lX06KXJr1x9UCwp2J1AxLiR6iMO6h
         xZ588B3mpksxDv/Ga7VUQkiYQkxW4eUYXdVYwLPqwy5/v+hU8G5FRZmyXSesK5jKEoYX
         vBTFYBRq80T+Oao1Z55WrqN9PQyGc6vkS4VTQ7/fqALSKrbgOwXh2Sqyfeu4mq5+UchF
         p/pXTcYAQroAnI9Z/k6BvXPLm+GAdfb0tVZIyz4wzqrIgyqMpYKYX++kElYN8Y5S+6PW
         72Jw==
X-Gm-Message-State: AHPjjUgoDry4REK9fEJHGlE4hTBr7vu5VyQ59jMvkicC1UBvyOCx2Y5G
	iX5HRop3uTTPAtHQjtm5LQ==
X-Received: by 10.129.99.194 with SMTP id x185mr16435237ywb.189.1505339463959;
        Wed, 13 Sep 2017 14:51:03 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com. [209.85.214.49])
        by smtp.gmail.com with ESMTPSA id n4sm5052414ywi.80.2017.09.13.14.51.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 14:51:03 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id v19so582533ite.0
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 14:51:03 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB2Ou1cwhx/2HIw4Y/4pU36ybNIC69h6+HpoEPiWacfpuGO5MBVdi/O3+W0M1BnapMJMyQ86vK+ah0xHkE+nfA=
X-Received: by 10.36.213.212 with SMTP id a203mr249595itg.59.1505339462723;
 Wed, 13 Sep 2017 14:51:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.156.195 with HTTP; Wed, 13 Sep 2017 14:50:41 -0700 (PDT)
In-Reply-To: <20170913161420.GA3221@meghana-HP-Pavilion-Notebook>
References: <20170913161420.GA3221@meghana-HP-Pavilion-Notebook>
From: Sean Paul <seanpaul@chromium.org>
Date: Wed, 13 Sep 2017 17:50:41 -0400
X-Gmail-Original-Message-ID: <CAOw6vb+MMyiPk1N3zf=s9w1KNL683xD73GEp4mURYcOHvVyGPg@mail.gmail.com>
Message-ID: <CAOw6vb+MMyiPk1N3zf=s9w1KNL683xD73GEp4mURYcOHvVyGPg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] drm: Replace "foo * bar" with
 "foo *bar"
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Jani Nikula <jani.nikula@linux.intel.com>, dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 13, 2017 at 12:14 PM, Meghana Madhyastha
<meghana.madhyastha@gmail.com> wrote:
> This replaces all instances of foo * bar with foo *bar
> in drm_agpsupport.c. This is so that it adheres to
> standard C syntax for pointers.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Reviewed-by: Sean Paul <seanpaul@chromium.org>

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
>         if (!dev->agp)
>                 return -ENODEV;
> @@ -133,7 +133,7 @@ int drm_agp_acquire_ioctl(struct drm_device *dev, void *data,
>   *
>   * Verifies the AGP device has been acquired and calls \c agp_backend_release.
>   */
> -int drm_agp_release(struct drm_device * dev)
> +int drm_agp_release(struct drm_device *dev)
>  {
>         if (!dev->agp || !dev->agp->acquired)
>                 return -EINVAL;
> @@ -159,7 +159,7 @@ int drm_agp_release_ioctl(struct drm_device *dev, void *data,
>   * Verifies the AGP device has been acquired but not enabled, and calls
>   * \c agp_enable.
>   */
> -int drm_agp_enable(struct drm_device * dev, struct drm_agp_mode mode)
> +int drm_agp_enable(struct drm_device *dev, struct drm_agp_mode mode)
>  {
>         if (!dev->agp || !dev->agp->acquired)
>                 return -EINVAL;
> @@ -241,8 +241,8 @@ int drm_agp_alloc_ioctl(struct drm_device *dev, void *data,
>   *
>   * Walks through drm_agp_head::memory until finding a matching handle.
>   */
> -static struct drm_agp_mem *drm_agp_lookup_entry(struct drm_device * dev,
> -                                          unsigned long handle)
> +static struct drm_agp_mem *drm_agp_lookup_entry(struct drm_device *dev,
> +                                               unsigned long handle)
>  {
>         struct drm_agp_mem *entry;
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


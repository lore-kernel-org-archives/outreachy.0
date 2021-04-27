X-GM-THRID: 6954041305879019520
X-Received: by 2002:a2e:9f47:: with SMTP id v7mr16066507ljk.176.1619526189719;
        Tue, 27 Apr 2021 05:23:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8518:: with SMTP id j24ls6432383lji.3.gmail; Tue, 27 Apr
 2021 05:23:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxiXpt9HC7n4PewD/jD3GZbUAGEDOf7DSaD0xE567rvFpEPpmXapSJdCfV8VOwX+ITex6HZ
X-Received: by 2002:a2e:9e84:: with SMTP id f4mr16747516ljk.151.1619526187471;
        Tue, 27 Apr 2021 05:23:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619526187; cv=none;
        d=google.com; s=arc-20160816;
        b=is4qbi6a2cgXPKvoacpCir2mTRq4HRXRa7sSZShCr/vP9cXpj0yd0zqG1caKw30ivs
         2PUby6MzvBsXwyh2EUY8KCxKusPPbrIrZIUr7EyAWaw8BmyXkbV5Jq7FRJdoWkRmcShI
         tEKidHFmVYGhGXzABdnUqAw+8YXcgh7Plyf13/BWFIr27a30M/HWKw4vfvUCu5ELcMyb
         tmqPv94deX97eG/ghjKRuViqrO0d/Gbehl7Wv73axDxsHlB5wFiIqsB2co60+r/zO2CF
         pAFUzKBCGl5m2KVhVvAq7JPbHK5GocT97gkN/eUOgqb84D4q/Gj4dnFyI1bWE1+/P7Lm
         dDPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=0pMESe1z+MsjbhBRHvTQHk6SqcR4Ic+PigvgIgSdX4w=;
        b=XIRAR0kB6iI9HQpx0Ex4m6h95DcOr40WJumEkhsU8084OeiXr0UNd+kwLbwUwZrYpA
         SByo4UmZPs7YUUoTUcebZcDHr+7dty6MDVz+gqcXDOzb/feXPbjkG5ti5mtLkcdOTBRy
         SAGx2yLZbpMR5AzaBSYeVPg4SocURe/ZMGU6stzeJAWzS2Xlh3Y0GyokNNXoFNZz1Mn5
         7Wx2L64IhDHEo2yhU1qYWSGDT+bgn2E3VIlXlX4LRikITd+CmYmN/dc1nlE2A47dzmdI
         O7Cf7qJcYY/7mpxyk9BxFs0iq7OXfum5A92gZwXbtS7gIWvwdFzy7ROwPaY3MeKXjBVq
         n86w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b="j/YIAhHV";
       spf=neutral (google.com: 2a00:1450:4864:20::32f is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id b12si712553lfb.3.2021.04.27.05.23.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 05:23:07 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::32f is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b="j/YIAhHV";
       spf=neutral (google.com: 2a00:1450:4864:20::32f is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm1-x32f.google.com with SMTP id n127so19890540wmb.5
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 05:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=0pMESe1z+MsjbhBRHvTQHk6SqcR4Ic+PigvgIgSdX4w=;
        b=j/YIAhHVG51+GO+y7bT1Sg35jUm9Uat83QdrpCqSHZyO3K8wq0n5c9o5EQ3kGNTexF
         XU8SgXOq2P4fvbzGgQmiob6iCbBr2/q6gXd0BPDNeoZ8jgN3Wm0VqAwM5vOq15uWXToW
         GMyTTxbn08cGD8eEAS40PmSaVz8PREoA6FAOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=0pMESe1z+MsjbhBRHvTQHk6SqcR4Ic+PigvgIgSdX4w=;
        b=nPH6+H4v8V06d7Bgr5U+/2gvDEgIsgrR/DtXDoB4ZVFsxs7KjjFABbeIgoDK/Emq/I
         968c7LEJR84RtxxC/IokKc3yh0hH3i26DiN7U1unRnQiUUnDLffmNSOQ+a0TQa8fiBu8
         WnOe+fcHSBV7eEZgGT/zvUEn0iFF0017ptd+0JgDdxQz1SYrwERAcr24yVxdi6D5DhYr
         YIZ9v2uKdz92MM6z1uBRGZXZh/Coe+e0dZbGLmp2U/vhywo1C542aTUwp4j2A0TCzsxc
         oRW3qj4PGhC93u8INa3uKHtKagRPmIz3xfbTZJyAua9WUIyYxfXq/wx77KOck7o9XN4u
         d30g==
X-Gm-Message-State: AOAM5339CfU1WmP/T6XLDAEd2PnlXvM2aVhTQDHQ/UKPI52pkuRt+I5u
	rGgxAz24A6jSE8JisLPq7YllbSuO4pa2zg==
X-Received: by 2002:a1c:1d91:: with SMTP id d139mr16655610wmd.101.1619526186919;
        Tue, 27 Apr 2021 05:23:06 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id b202sm2585727wmb.5.2021.04.27.05.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 05:23:06 -0700 (PDT)
Date: Tue, 27 Apr 2021 14:23:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] drm/drm_file.c: Define drm_send_event_helper() as
 'static'
Message-ID: <YIgCKOSIyc1rMkrt@phenom.ffwll.local>
Mail-Followup-To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org
References: <20210427105503.10765-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210427105503.10765-1-fmdefrancesco@gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 

On Tue, Apr 27, 2021 at 12:55:03PM +0200, Fabio M. De Francesco wrote:
> drm_send_event_helper() has not prototype, it has internal linkage and
> therefore it should be defined with storage class 'static'.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>

Applied to drm-misc-next for 5.14, thanks for your patch.
-Daniel

> ---
> 
> Changes from v2: Removed all the other lines in function comment.
> Changes from v1: As suggested by Daniel Vetter, removed unnecessary
> kernel-doc comments.
> 
>  drivers/gpu/drm/drm_file.c | 14 +-------------
>  1 file changed, 1 insertion(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
> index 7efbccffc2ea..d4f0bac6f8f8 100644
> --- a/drivers/gpu/drm/drm_file.c
> +++ b/drivers/gpu/drm/drm_file.c
> @@ -774,19 +774,7 @@ void drm_event_cancel_free(struct drm_device *dev,
>  }
>  EXPORT_SYMBOL(drm_event_cancel_free);
>  
> -/**
> - * drm_send_event_helper - send DRM event to file descriptor
> - * @dev: DRM device
> - * @e: DRM event to deliver
> - * @timestamp: timestamp to set for the fence event in kernel's CLOCK_MONOTONIC
> - * time domain
> - *
> - * This helper function sends the event @e, initialized with
> - * drm_event_reserve_init(), to its associated userspace DRM file.
> - * The timestamp variant of dma_fence_signal is used when the caller
> - * sends a valid timestamp.
> - */
> -void drm_send_event_helper(struct drm_device *dev,
> +static void drm_send_event_helper(struct drm_device *dev,
>  			   struct drm_pending_event *e, ktime_t timestamp)
>  {
>  	assert_spin_locked(&dev->event_lock);
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


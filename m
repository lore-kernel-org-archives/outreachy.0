X-GM-THRID: 6954041305879019520
X-Received: by 2002:adf:d227:: with SMTP id k7mr19642466wrh.390.1619514650550;
        Tue, 27 Apr 2021 02:10:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls5105715wrx.3.gmail; Tue, 27
 Apr 2021 02:10:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwRYG++JHkqaj/gzF/VbgbMhquKQwju9NftO7TuXPEIactZU/sEtTrII3CHfYUcMRoLtrCd
X-Received: by 2002:a05:6000:154a:: with SMTP id 10mr2105136wry.274.1619514649277;
        Tue, 27 Apr 2021 02:10:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619514649; cv=none;
        d=google.com; s=arc-20160816;
        b=b8cfScimjcIoH0B+8ZNAetBwDPdu2BmjkHqu2OU74oXYGmlkLvfrjYDYkU0DkI07ya
         BIpFOtwDeOYTCA9Iti7f5tRtA5JIkdiOGuihsAGPgZmnL426ds38BBg0+Ch+pkk95PPo
         AsCj+c5PxbRyeiMZxERs0Ed/gkBa1tp7zj7ax5LyG3Mdd1a02Ah6KMDTadr0grbG7+oQ
         MMZNZXVWoqcCtwgtIGhcqq+FI/RfSyQVkzwuIJ6Srt/WAeaMe/bBnnkKkL4FCVNDWtnL
         58RsjaqA0j0AkXjq8jr5ZB6C5/TW027kLpyiCOySb46aWpDZvjr5PWYSry5I0/nTrt5P
         kGSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=n7pb8U/vANg8DkgjnfhKWXBOO9anvx207tlIcVrJQJ8=;
        b=ich1NPaizd+qg7byeKUxanvghyasztSAkdsyUNo9WNoIZy+GVmr9gPBeWqRMFAHdJ7
         LAijLZUk1Bbw0ij/3hv9qdGeboaKKblRlwYm+sgo1ntt/bIWroQKl3803F4C6svw8Fz3
         ATOvVl3eVY6CtuwShk6Qv56e85bOoMYdkJR5C5x+d/vXYUmHllYSYmabUNQ1ULua8ZP5
         kwYDQIkd4wSwWxSqjX6HLjiwm+5yJw5TSVHq6t7pJK0CRJ7VFOkjHh/sVEPtwv03GC+9
         fk3T8Y6fFI9wYwUtPASzclW1dut9rkc5pK66nlKXlsBJNWQRk/4hNkxo0OIAKYgDRcMS
         OIqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=F30ycGVH;
       spf=neutral (google.com: 2a00:1450:4864:20::430 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id x16si1307304wmi.1.2021.04.27.02.10.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 02:10:49 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::430 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=F30ycGVH;
       spf=neutral (google.com: 2a00:1450:4864:20::430 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wr1-x430.google.com with SMTP id x5so8374268wrv.13
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 02:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=n7pb8U/vANg8DkgjnfhKWXBOO9anvx207tlIcVrJQJ8=;
        b=F30ycGVHuqTdERjON0BrUg7XctaGeT53f7MbHOVymKhnJD+MIwrvM8DZ10UJJDma4W
         7oVFQ4r4V0H9ULifunx+AR9oycW6WxWVTrSTkx1JDfQy1GHREx7oIBKhD0knlGSLPJRU
         CZsxgvX5Wq53Jr5CRAHqy3uHeJ/rX7KY15MSM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=n7pb8U/vANg8DkgjnfhKWXBOO9anvx207tlIcVrJQJ8=;
        b=d89F7Bc2+IvPTLp2ICA0c2Vp4r29fbG1Et9RfYJD6kSM0iG3Scb+oCiIvJYLoy01+e
         j/Jr3h/UwCy23oA+LS31B7i3p9CqEuGYRDSyzi+Z3z+oyz3AVtBcQq9DC61Ss1Kqmnxk
         Vjx7g1qjxHstzpPq5HYVjCx8qP9eEhXpBnyn2qeNShB2A2U5wk+91ZgAeJ7NFRQO1PZq
         sH6zPkGGATI5+7SpRQMWRpQQoWgBfVFwOiwsIMjqTtD4ehTvocEZxwmlltJ9ggH54v0i
         584q2poJcUBxegPS8gT2SJM9RqNvEcyfouv/ElLfS6bBaTwzPQ0WBsk2Up+ZRS4IsU12
         iT/g==
X-Gm-Message-State: AOAM530K9Yvt3T1hTsAYKl1Yapn7sKTKrYCh583MGw5WxSu4NRdl3lBb
	d0cd/1xG9u3FLnDa57Bh38Msyg==
X-Received: by 2002:adf:fc85:: with SMTP id g5mr1852842wrr.295.1619514649110;
        Tue, 27 Apr 2021 02:10:49 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id a2sm3262846wrt.82.2021.04.27.02.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 02:10:48 -0700 (PDT)
Date: Tue, 27 Apr 2021 11:10:46 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Subject: Re: [PATCH v2] drm/drm_file.c: Define drm_send_event_helper() as
 'static'
Message-ID: <YIfVFqUtJ2UDucSJ@phenom.ffwll.local>
Mail-Followup-To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
References: <20210426200051.11530-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210426200051.11530-1-fmdefrancesco@gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 

On Mon, Apr 26, 2021 at 10:00:51PM +0200, Fabio M. De Francesco wrote:
> drm_send_event_helper() has not prototype, it has internal linkage and
> therefore it should be defined with storage class 'static'.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> Changes from v1: As suggested by Daniel Vetter, removed unnecessary
> kernel-doc comments.
> 
>  drivers/gpu/drm/drm_file.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
> index 7efbccffc2ea..a32e0d4f3604 100644
> --- a/drivers/gpu/drm/drm_file.c
> +++ b/drivers/gpu/drm/drm_file.c
> @@ -774,19 +774,15 @@ void drm_event_cancel_free(struct drm_device *dev,
>  }
>  EXPORT_SYMBOL(drm_event_cancel_free);
>  
> -/**
> +/*
>   * drm_send_event_helper - send DRM event to file descriptor
> - * @dev: DRM device
> - * @e: DRM event to deliver
> - * @timestamp: timestamp to set for the fence event in kernel's CLOCK_MONOTONIC
> - * time domain
>   *
> - * This helper function sends the event @e, initialized with
> + * This helper function sends the event e, initialized with

Sorry I wasn't clear, I don't think there's anything useful at all in this
comment, so best to entirely remove it. Not just the kerneldoc header. Can
you pls respin?
-Daniel

>   * drm_event_reserve_init(), to its associated userspace DRM file.
>   * The timestamp variant of dma_fence_signal is used when the caller
>   * sends a valid timestamp.
>   */
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


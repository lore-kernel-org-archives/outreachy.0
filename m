X-GM-THRID: 6954316272717791232
X-Received: by 2002:a17:90b:3b4e:: with SMTP id ot14mr34013850pjb.117.1619644117336;
        Wed, 28 Apr 2021 14:08:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7d89:: with SMTP id a9ls495780plm.7.gmail; Wed, 28
 Apr 2021 14:08:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLVnyugtE0frCShRbsU6Fdpbke6BqVlugQDQBv5g13rgq6OPPZbaJO/1ge+b8O62jC4Vnj
X-Received: by 2002:a17:90a:bd89:: with SMTP id z9mr16766774pjr.4.1619644116154;
        Wed, 28 Apr 2021 14:08:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619644116; cv=none;
        d=google.com; s=arc-20160816;
        b=zaSxsM4IfI0p71D5j4Zm5IIRj3fDs7lI6mlX5TssAGWAx6t4/yjYEVyO5F/Et8G7Af
         b/DFD9vHOgzWmu29UTfwEKMcxmGn26kuIaA3aQKGO9ZhM/+4OYbSUi2Vq3G5ZBFqufbb
         zoSwEGqz95XYjPESM3Djmb4uQ9YOkBDQJS/TVfjxU/Ee8ua4rUnbw8PGLOUz3ZxMttHW
         ZnZCdjAUE9H9H+jXcc3JykEUJkkIrLRyXKDoGXw6oc+OyhskBm9VHLD68G51PonyCdzZ
         7djvncy81YULYSvx3JORgWUzexErPSsretvW1Di8aPFqfJjMkW0ZvHAcxhBoNMOGdlA2
         ehpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PWrDorBDKcU1kGiZJfgkn3NJ/gIa+8Z+zkyVLhd+hzI=;
        b=wxdlaj5FTch7KyBmnSsABO7tVJC0hjFOKkaWfMX9AX1SFpxLC9qgMaytXm6IL5u5QV
         v4Gc+cFtPVgIYfOMmeYDVuI7NJ4TcHnHXQK3uCC2aXTzO/4rIHZBBYShqVdfXyWghr/Y
         lVqhTx7On0OaD5azCDv7gDnz7huzhTXNYlqoa8tPCkW3Vuq1tPqdHfbERyydxZ6YeG0g
         hqAjI2x/HiCxmR7u+zAPXcY7JEVT3C7NzSdlQeO1W7JKLTtc77IqO01G+/AleHrVqrVb
         NHspIW8z5n3iejLlK+C3DHejYHTMVDZrx+oafWKIzd5ZEJHphFdXI0e2iKZtPZ7bkvEJ
         Ap9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TzXXMJJX;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alexdeucher@gmail.com>
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com. [2607:f8b0:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id p8si92881pls.1.2021.04.28.14.08.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 14:08:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) client-ip=2607:f8b0:4864:20::32e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TzXXMJJX;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32e.google.com with SMTP id 65-20020a9d03470000b02902808b4aec6dso54857716otv.6
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Apr 2021 14:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PWrDorBDKcU1kGiZJfgkn3NJ/gIa+8Z+zkyVLhd+hzI=;
        b=TzXXMJJXM9Jiv06VoIb9Y3TR836KwuhlgK7BfrRJRA7y/FGxDH79oN4RCLxod2AR8J
         sjwmRf8ZeykKqhkFOmd47UYF2yShdGxVtVI43Sc2yATfg/OseAKqOgm56q6yp9gRAGI2
         REoCDj6dWZq40S081XF/0E8lkipavEoaYETfJp/SSE5GpYAqtx7JqRbPvBkwO4zv19ft
         j8FINrXPLX7TmMvndbn6nfXpMeWPpK54PnZsLn3337CEEnclzbAxjEijIVMx1sYa/r8k
         CU2VzoFmglRD/qxgEIsAdeanxzwzPWl1DwHClo3yrfm3EZd+hp+I3vRUYzEj4cOPpaa2
         E4yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PWrDorBDKcU1kGiZJfgkn3NJ/gIa+8Z+zkyVLhd+hzI=;
        b=uMc9aE/WxPiQu3tiW72GRgq4UklBBMEAqIYugbfNkX8fo10jWdcpI/zf4+/uL1HWK9
         COP12bdoQrkLBNjVF/F80QMCIfeL3R0kf98XfmSrxd+MKetDuN4OE4EFR+PZ6y+Y5clC
         t135lq4k/s9EjnMJRFTYlIPFmh7uMTyAQ7XJLyx3kya2fAQTGIEpOwSYfqc3RcVWkbWV
         lTxwVHGSaveXPurcVhurvsBbgyaX1UPqTLAJB4gmYczeVE5UKEdWt8k5NLuSZvHg52Sh
         EilnOCr0tTFN9h5EnC4gzzX4bckiPfNv24fEEfOdAhhOzbD/y53JB9+KrthCd1q30VNp
         X/zA==
X-Gm-Message-State: AOAM533Q1xWXVAwuHVfLXQZR0aCyc8dcyanWrMyoqsJoF5w8eoicqrXG
	M2sYYeLEjUIB3lrLRSSQ7+RD9fExNYuu+elsFnY=
X-Received: by 2002:a05:6830:1f12:: with SMTP id u18mr26275848otg.132.1619644115496;
 Wed, 28 Apr 2021 14:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210423113846.29651-1-fmdefrancesco@gmail.com>
In-Reply-To: <20210423113846.29651-1-fmdefrancesco@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 28 Apr 2021 17:08:24 -0400
Message-ID: <CADnq5_OQEA7+fm4u5nxopJBdXku-cKHeMbr8uekeF+fFVZYH0w@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/amdgpu: Fix errors in documentation of function parameters
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"

Applied.  Thanks!

Alex

On Fri, Apr 23, 2021 at 7:38 AM Fabio M. De Francesco
<fmdefrancesco@gmail.com> wrote:
>
> In the function documentation, I removed the excess parameters,
> described the undocumented ones, and fixed the syntax errors.
>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c          | 12 ++++++------
>  drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c  |  4 +++-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c |  8 ++++----
>  3 files changed, 13 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c
> index 2e9b16fb3fcd..bf2939b6eb43 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c
> @@ -76,7 +76,7 @@ struct amdgpu_atif {
>  /**
>   * amdgpu_atif_call - call an ATIF method
>   *
> - * @handle: acpi handle
> + * @atif: acpi handle
>   * @function: the ATIF function to execute
>   * @params: ATIF function params
>   *
> @@ -166,7 +166,6 @@ static void amdgpu_atif_parse_functions(struct amdgpu_atif_functions *f, u32 mas
>  /**
>   * amdgpu_atif_verify_interface - verify ATIF
>   *
> - * @handle: acpi handle
>   * @atif: amdgpu atif struct
>   *
>   * Execute the ATIF_FUNCTION_VERIFY_INTERFACE ATIF function
> @@ -240,8 +239,7 @@ static acpi_handle amdgpu_atif_probe_handle(acpi_handle dhandle)
>  /**
>   * amdgpu_atif_get_notification_params - determine notify configuration
>   *
> - * @handle: acpi handle
> - * @n: atif notification configuration struct
> + * @atif: acpi handle
>   *
>   * Execute the ATIF_FUNCTION_GET_SYSTEM_PARAMETERS ATIF function
>   * to determine if a notifier is used and if so which one
> @@ -304,7 +302,7 @@ static int amdgpu_atif_get_notification_params(struct amdgpu_atif *atif)
>  /**
>   * amdgpu_atif_query_backlight_caps - get min and max backlight input signal
>   *
> - * @handle: acpi handle
> + * @atif: acpi handle
>   *
>   * Execute the QUERY_BRIGHTNESS_TRANSFER_CHARACTERISTICS ATIF function
>   * to determine the acceptable range of backlight values
> @@ -363,7 +361,7 @@ static int amdgpu_atif_query_backlight_caps(struct amdgpu_atif *atif)
>  /**
>   * amdgpu_atif_get_sbios_requests - get requested sbios event
>   *
> - * @handle: acpi handle
> + * @atif: acpi handle
>   * @req: atif sbios request struct
>   *
>   * Execute the ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS ATIF function
> @@ -899,6 +897,8 @@ void amdgpu_acpi_fini(struct amdgpu_device *adev)
>  /**
>   * amdgpu_acpi_is_s0ix_supported
>   *
> + * @adev: amdgpu_device_pointer
> + *
>   * returns true if supported, false if not.
>   */
>  bool amdgpu_acpi_is_s0ix_supported(struct amdgpu_device *adev)
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c
> index 5af464933976..98d31ebad9ce 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c
> @@ -111,6 +111,8 @@ static const char *amdkfd_fence_get_timeline_name(struct dma_fence *f)
>   *  a KFD BO and schedules a job to move the BO.
>   *  If fence is already signaled return true.
>   *  If fence is not signaled schedule a evict KFD process work item.
> + *
> + *  @f: dma_fence
>   */
>  static bool amdkfd_fence_enable_signaling(struct dma_fence *f)
>  {
> @@ -131,7 +133,7 @@ static bool amdkfd_fence_enable_signaling(struct dma_fence *f)
>  /**
>   * amdkfd_fence_release - callback that fence can be freed
>   *
> - * @fence: fence
> + * @f: dma_fence
>   *
>   * This function is called when the reference count becomes zero.
>   * Drops the mm_struct reference and RCU schedules freeing up the fence.
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c
> index b43e68fc1378..ed3014fbb563 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gfx_v9.c
> @@ -719,7 +719,7 @@ static void unlock_spi_csq_mutexes(struct amdgpu_device *adev)
>  }
>
>  /**
> - * @get_wave_count: Read device registers to get number of waves in flight for
> + * get_wave_count: Read device registers to get number of waves in flight for
>   * a particular queue. The method also returns the VMID associated with the
>   * queue.
>   *
> @@ -755,19 +755,19 @@ static void get_wave_count(struct amdgpu_device *adev, int queue_idx,
>  }
>
>  /**
> - * @kgd_gfx_v9_get_cu_occupancy: Reads relevant registers associated with each
> + * kgd_gfx_v9_get_cu_occupancy: Reads relevant registers associated with each
>   * shader engine and aggregates the number of waves that are in flight for the
>   * process whose pasid is provided as a parameter. The process could have ZERO
>   * or more queues running and submitting waves to compute units.
>   *
>   * @kgd: Handle of device from which to get number of waves in flight
>   * @pasid: Identifies the process for which this query call is invoked
> - * @wave_cnt: Output parameter updated with number of waves in flight that
> + * @pasid_wave_cnt: Output parameter updated with number of waves in flight that
>   * belong to process with given pasid
>   * @max_waves_per_cu: Output parameter updated with maximum number of waves
>   * possible per Compute Unit
>   *
> - * @note: It's possible that the device has too many queues (oversubscription)
> + * Note: It's possible that the device has too many queues (oversubscription)
>   * in which case a VMID could be remapped to a different PASID. This could lead
>   * to an iaccurate wave count. Following is a high-level sequence:
>   *    Time T1: vmid = getVmid(); vmid is associated with Pasid P1
> --
> 2.31.1
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel


X-GM-THRID: 6887993543318568960
X-Received: by 2002:a1c:6643:: with SMTP id a64mr18378652wmc.142.1603743984138;
        Mon, 26 Oct 2020 13:26:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2c84:: with SMTP id s126ls73494wms.1.canary-gmail; Mon,
 26 Oct 2020 13:26:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzR2SAZrdxCkhQFz1RZCCg3g2w94ydWrM8GR6mmEdASNrQIU1RX2jJk/zBIu0fhWIofUozO
X-Received: by 2002:a1c:307:: with SMTP id 7mr4019492wmd.165.1603743982213;
        Mon, 26 Oct 2020 13:26:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603743982; cv=none;
        d=google.com; s=arc-20160816;
        b=Inq1wt2xWO9mQ8nppY3NzmkTqxMSPpbzeordy/Pt9B13yiEdAgDEUYMfoddSG5p3Ha
         jsBD6nQsCZPKEBsztOJ5tL0wrKuDqandDFX5ij8pIQitUrWiyvj2GiKpgxWiIPld+2yQ
         a+ixi39vxRGVhA+6Vln/j5XFzzKNWV/5CT1SkG8a6mB85G9dgFQdgu11c0IaXJx8soFc
         LAdO55exB4V4U3/is+Mwvrxnsso5gqFR1AYi3p83+vMG+Zrv3iH1G2YsAHoXz7MvmaIl
         mFsc80QC2o5jnuHhsN+hvtDwxXg7fVWaKTM4de9+kWdPrXa1zIw+LByi3vbb7DToM/Ws
         pRoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wG7L6k5elcsFTdFccbEBRu2CRJAFTSnK/nWIQ/2axqk=;
        b=GTU3b4Kof7Hefr5izmS4geBYtuA0e0Xck4VgHQ4UdTtfOh4FnP8bjhsCcjABIHxXS1
         uprS/kve80V1kY7EN2zQdacm/ByWkH7KVOco5/fdgdvJE5pAwwwfwvlBVS7Xu5WhPaj2
         /Z645b+yyewHFHKte9DCNsAw0ObYWbRQN5B6uriRvkdjSp/VjJmenyLf+kWu/rPkPqO7
         2d4Ry5pRnudZ92dB6Pi+aR4PJ31LKdzaxCrCTq3O/C1GkyOGGJ97uMUAHG5U6/YrTDiD
         wBA5Vnvfkwbyu9allZGsoAEcmt6A1rYMszNZTIcfF9Ie0j2xffAWykIuGE9DakWRHX7a
         wFfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BKECFo7t;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alexdeucher@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id f131si314020wme.1.2020.10.26.13.26.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 13:26:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BKECFo7t;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id k21so6496733wmi.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2020 13:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wG7L6k5elcsFTdFccbEBRu2CRJAFTSnK/nWIQ/2axqk=;
        b=BKECFo7tWE7Uuvp/xZqDhJgyFDbg2DxsWPatrwsbVJunmqPCOfdlzPpJr7PFvAU59T
         1l8TW/dvZDoT/EMS5HEVm0w/hmlxD0X25Y7Fb2GcdVKHabbnUyzgpdfW9U0NrY+IUDVo
         f4C2Mx0Bo1kRbDPSqShjfpQgRPyw/hPtUbujYoelq6NkSpfi2jodFHjlWK+2pCQrRLPz
         DIURbjgERLBPaSTEGh5Dv/YLP7Cv7wvoIUnBrLClrehtMBBQWY8BXx3a/uaDhYntUzwd
         VS5Fe43ZVtd4YfsGE6o+wuUpXrw2duyXRB5va0KqPn4cM/uw2SA4Ptx5P/jtKAe9Fs4j
         EFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wG7L6k5elcsFTdFccbEBRu2CRJAFTSnK/nWIQ/2axqk=;
        b=mLqZwW+hkUXvgOmwi6bL8OYbv+h8cCxBTqQuvGkPEy5Pd3E107sW2nuGh5/wTbKPqA
         iC4YuQT1wG9tvsUPiHEpZYAgBavbXDHBNeaPlolpsJOrJQD+zzkgic+mq5735S+S3Kt6
         e6Zxk0Lo2muOhD4tmCBVPLTAiXMPq+uQAsUQREFX7lZ5lqXZDSSkm/Uxz/Z8D78qyIRA
         wfoC2CVIP+tcvPnaOJdUsNYlDM18m8xAeMbRbDd2U4exJ074ffw4muVuCPDN/4Yn+AGm
         pym0JU4YglYnYJClYuO+szRd7AXoTz5ngECgFjJF863HNgmwtH+tkZrgPqws5OiEK+CR
         sEAw==
X-Gm-Message-State: AOAM533MvjwWVZfkTrPGCLYILhZ/F3r4yX8qIjYfmJu3+773r2XPJoLh
	uJwRu5wAp1R5Sq8lEMZ/n+5cPd1UwtencsXZBNQ=
X-Received: by 2002:a1c:6302:: with SMTP id x2mr18103079wmb.56.1603743981925;
 Mon, 26 Oct 2020 13:26:21 -0700 (PDT)
MIME-Version: 1.0
References: <20201026181242.76bf3b6gx2yx7hr7@adolin>
In-Reply-To: <20201026181242.76bf3b6gx2yx7hr7@adolin>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 26 Oct 2020 16:26:10 -0400
Message-ID: <CADnq5_NxQwwaxO1KJ5Fnmv_OGiFYyD0xZVCzkbOLGPjFCkECwQ@mail.gmail.com>
Subject: Re: [Outreachy][PATCH] drm/amdgpu: use true and false for bool initialisations
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Cc: Maling list - DRI developers <dri-devel@lists.freedesktop.org>, Dave Airlie <airlied@linux.ie>, 
	"Kuehling, Felix" <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, Sumit Semwal <sumit.semwal@linaro.org>, 
	Melissa Wen <melissa.srw@gmail.com>, outreachy-kernel@googlegroups.com, 
	Daniel Vetter <daniel@ffwll.ch>, "Deucher, Alexander" <alexander.deucher@amd.com>, 
	Christian Koenig <christian.koenig@amd.com>, linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Applied.  Thanks!

Alex

On Mon, Oct 26, 2020 at 2:14 PM Sumera Priyadarsini
<sylphrenadin@gmail.com> wrote:
>
> Bool initialisation should use 'true' and 'false' values instead of 0
> and 1.
>
> Modify amdgpu_amdkfd_gpuvm.c to initialise variable is_imported
> to false instead of 0.
>
> Issue found with Coccinelle.
>
> Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> index 64d4b5ff95d6..ba4bd06bfcc5 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> @@ -1288,7 +1288,7 @@ int amdgpu_amdkfd_gpuvm_free_memory_of_gpu(
>         struct ttm_validate_buffer *bo_list_entry;
>         unsigned int mapped_to_gpu_memory;
>         int ret;
> -       bool is_imported = 0;
> +       bool is_imported = false;
>
>         mutex_lock(&mem->lock);
>         mapped_to_gpu_memory = mem->mapped_to_gpu_memory;
> --
> 2.25.1
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx


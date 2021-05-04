X-GM-THRID: 6954012466570330112
X-Received: by 2002:a17:90a:6285:: with SMTP id d5mr29848634pjj.136.1620156092764;
        Tue, 04 May 2021 12:21:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls10009794plb.11.gmail; Tue, 04
 May 2021 12:21:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx7lEVbu1OqKU0Eg7lc+/+m1rd07yXbzZh5GJExgBd/mDKpbE7Qc+14PC2iONLYZcLKc6Ll
X-Received: by 2002:a17:902:be02:b029:ec:af1f:5337 with SMTP id r2-20020a170902be02b02900ecaf1f5337mr26884679pls.35.1620156091577;
        Tue, 04 May 2021 12:21:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620156091; cv=none;
        d=google.com; s=arc-20160816;
        b=SZRS8woo409L7/aAj0LdJ86zRstGoMCYoKtJN2QjSXBsSSXXQn8DP6/W8L6FDhdLJh
         462/v0OlDFoqGnjiwLaXB6Eddy3T95iv4oWQmhlpmtvEsvEtrLb7YXPCCmY2kV3kQR9/
         xxdFA3JonznRkkvVq38NxPXn1M49FJnekCUpUNgR4KrSZjvvGTp5204OAB7RZ2n/crfk
         fkFat59+q/0pZujJ3cQNvjipv9lmlSEFWbhjKmvFF7dGeh0BjBme8306QkwNvgvFyBs2
         dA/sOUFekbaFo64kKjpyMt5wubZCJX4JJhsmJhLqOK12nkggapZ/etuna9Y+6kONnIeF
         nnMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l0MpBQXXQXovBmumhU+vevXuEERixPQDIBphGMJ/1Eg=;
        b=GjQ/eTHWmO8b1T3O5nzERiqMqWizLt+y1FLEOWaYISL8/G9UDslZkdKoBiFwCFtGS3
         6a0Y41FKE4NQLIBT9oaa1SJ6K5idbG+uS3IfcwtmdMPvYZIPuIcIpg+hyPGn4LDunhHr
         7rfk/DIx3ts3OPVH3Ter1ajCKEty2GY8k5eFVjTOaJ1Xye8kNNaXOGqmYl54MeSptsky
         c5Nuomb5J6Iir17AyMpm4CgZgVy6Vk1y9sB9KtYhjlhy3FDX0zIdLs49kcth9YNg6NrF
         rR76yqEHjqFM6e5rOYhagjL96NVLdlyzbyUOCCP3+bo5NZrRZlxfZTrnlxE5pDwbnKNG
         H54w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eS9ZIMjK;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alexdeucher@gmail.com>
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com. [2607:f8b0:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id q62si320668pga.0.2021.05.04.12.21.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 12:21:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) client-ip=2607:f8b0:4864:20::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eS9ZIMjK;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22d.google.com with SMTP id e25so9859210oii.2
        for <outreachy-kernel@googlegroups.com>; Tue, 04 May 2021 12:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l0MpBQXXQXovBmumhU+vevXuEERixPQDIBphGMJ/1Eg=;
        b=eS9ZIMjKfbA79gkqM/if0o/ll0b0hJg4orJQPJNRFHk7eYNAbu8O/2wS892rhv/0i0
         ydt7KLieBtrj44E712kqAVQIiJ/mTOsrTzGB8ohvG6HSoZfZEs1rUyhZHv+s8On1/n9Y
         WUNnW8cdZzFM5sYmOR5BF+BYrCvEoH2DXPjr6p1YQmIlqypJ7w7aNwz2yjaaU+JERf9Y
         8RJuZS8q69DExe7dpglbq+PIoBtNixQR88bJM7+qdO7xaXIM8N+/LZ9Tq7mukJxUrDnC
         nnbXiXCDvG4OhqkvobGzMduzQ/1ZlAtXUi979RvD/2Bk93iQNjNT233LXmSIDPBUPPBF
         qx5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l0MpBQXXQXovBmumhU+vevXuEERixPQDIBphGMJ/1Eg=;
        b=lZ7/OQ96l5P9rBDFdPUe4Wn/dtfiAyQk5irV7KjjqUzvJoOHONtb+D0y8e1IraOYK1
         HYss7XsUz77F+WoXpirHSLmXFGSxlCnXb4E/LUPqH4q9OWCdWNOVkMwKH4TVKdLpnwCe
         ZULYWt7f8b5Qgu88LbQ0gT/vCy4pFsGFxuIvPPsRCj3yDW8qU52Idk9Q2lC/Cj72iAT+
         yd7v5/e6fTXPEW7ylL+hJOWFLyyRsg+9lkTp+mzTkOFw8FjEy4s4Ak7Pb3kv1Ls22cMb
         YtOqNzQ3kXnjHBitCyRaT135AQaNwmDRqb1BjlhTXgc9Kv8xnDLFrWw2m4c3MmT672j9
         Z61g==
X-Gm-Message-State: AOAM530wxrmgw8ZNJydcz+AaSkq+Eh/XQkCRYWmO4G4G6J0VaICwiogB
	ula9FTCP1VXZplXgyqGpRuFHzqfR9gl2B4Jw4SE=
X-Received: by 2002:a05:6808:68a:: with SMTP id k10mr18402833oig.120.1620156090910;
 Tue, 04 May 2021 12:21:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210427094449.14730-1-fmdefrancesco@gmail.com>
In-Reply-To: <20210427094449.14730-1-fmdefrancesco@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 4 May 2021 15:21:20 -0400
Message-ID: <CADnq5_NGWrsxaxJqE+_y7Lm4Fdx=BkZYAaYWz_VACAVSgV-ivQ@mail.gmail.com>
Subject: Re: [PATCH v4] drm/amd/amdgpu/amdgpu_drv.c: Replace
 drm_modeset_lock_all with drm_modeset_lock
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, shaoyunl <shaoyun.liu@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Evan Quan <evan.quan@amd.com>, 
	Hawking Zhang <Hawking.Zhang@amd.com>, Felix Kuehling <Felix.Kuehling@amd.com>, 
	Luben Tuikov <luben.tuikov@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 27, 2021 at 5:45 AM Fabio M. De Francesco
<fmdefrancesco@gmail.com> wrote:
>
> drm_modeset_lock_all() is not needed here, so it is replaced with
> drm_modeset_lock(). The crtc list around which we are looping never
> changes, therefore the only lock we need is to protect access to
> crtc->state.
>
> Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> Suggested-by: Matthew Wilcox <willy@infradead.org>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Applied.  Thanks!

Alex


> ---
>
> Changes from v3: CC'ed more (previously missing) maintainers.
> Changes from v2: Drop file name from the Subject. Cc'ed all maintainers.
> Changes from v1: Removed unnecessary braces around single statement
> block.
>
>  drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> index 80130c1c0c68..39204dbc168b 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> @@ -1595,17 +1595,15 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
>         if (amdgpu_device_has_dc_support(adev)) {
>                 struct drm_crtc *crtc;
>
> -               drm_modeset_lock_all(drm_dev);
> -
>                 drm_for_each_crtc(crtc, drm_dev) {
> -                       if (crtc->state->active) {
> +                       drm_modeset_lock(&crtc->mutex, NULL);
> +                       if (crtc->state->active)
>                                 ret = -EBUSY;
> +                       drm_modeset_unlock(&crtc->mutex);
> +                       if (ret < 0)
>                                 break;
> -                       }
>                 }
>
> -               drm_modeset_unlock_all(drm_dev);
> -
>         } else {
>                 struct drm_connector *list_connector;
>                 struct drm_connector_list_iter iter;
> --
> 2.31.1
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx


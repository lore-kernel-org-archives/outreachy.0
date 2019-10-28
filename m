X-GM-THRID: 6752781300622426112
X-Received: by 2002:a2e:6101:: with SMTP id v1mr12239044ljb.132.1572271389824;
        Mon, 28 Oct 2019 07:03:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:f246:: with SMTP id d6ls1877444lfk.9.gmail; Mon, 28 Oct
 2019 07:03:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwEVKFIq/U3PDNJ5uU4sh1CWSPudgOoHWL9h0OCPI77OMkSj5U8K4RF8A6zXWWuzDicvMb6
X-Received: by 2002:a19:6d19:: with SMTP id i25mr11662140lfc.178.1572271388453;
        Mon, 28 Oct 2019 07:03:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572271388; cv=none;
        d=google.com; s=arc-20160816;
        b=B7Hc3KC0XuYJCOyPFUyAkhsmRhEbeXzzLiHcqN33tzsL6FztsNn78rONWSd9UL/ZW6
         3YAhhRnZYY7rl3kABOXsFGprarIrnOLLjp5tSHJ4RDDpJTaJCZH4QxdC0Vj7OlBg0B6W
         CAR5g0k9i5uDtN2qzFHMspvIlsPq62cO1KVqYsWSgMGfU3IIf8HvhMfkfYy7+RTdzalu
         xFHvUXtVMziJiQA3a0t3wzO3dsrkHFjxbym5zxCwwHQHAoBRdJX2iT1/t7RtVKL4hlP7
         zLCH4I3viLcp6GxgDLLx/OfzE5c7yPlayDchWyIZushfIBfHc5Fv9CwWGuEAP15a5P1o
         66eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rJWcxYoQBw9FC5bU2SEpgmxglktki3/N2UJx+E1uoHc=;
        b=aMVDOul378ueUblRgqzxprzlU2q+sk743/Z3ZXlhe/Z9SiELdmkXL6JK8QUVQjUvIM
         Znf4Lqqy+C9/tU+sQTraINzsLJk+OaVRNfblNRKB8VVntN2xe3r2j2w+KuA0ELBJ6OV+
         dUUEr2z/k5j6bBvesi9jJL90OHNAJKGpcG6f3Nc67JGg55kMuMVm2gSirKIPwTdZnuUz
         qRRbV3lEz1FbvGBWcdn+ejNrgh/nViyxuyG5hAl8c5p4t1qYndo2pugUUjcquYTP3hkz
         X0j+6hBexoLjkT6OX9kO2+lzsuvA+iydCnOPIDnEV/Bu58eTwXTl8g2t+s8sTbtkETks
         ej9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DanefYv1;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alexdeucher@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id r71si462257lff.5.2019.10.28.07.03.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 07:03:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DanefYv1;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id r141so9251457wme.4
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 07:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rJWcxYoQBw9FC5bU2SEpgmxglktki3/N2UJx+E1uoHc=;
        b=DanefYv1nIEQfdUnfpue30LOoTxTvjUO5ceGUpcB0pjWXEVXGaoLDGqmzz1V/0GsbN
         4Aa1JZu7SxLgnmJDauSoR3WjisKMPOD/YjE5iZ7c6ZEOa8HMj5gtNPIQ/iM7xr/jhPmm
         3wTOXCVHpBZ0FG6f2Qo1g3R2fYzpI8Wy3hpsWoRJ0r+7NZ/wXB7NuNDa/fhqXjyG0AYU
         fdGyxvG6tb9xhM+ISjrWEepXeGS7MXlYw6qGlBExSPJfzXP0cyk4nlmnNMC3doTn5b7Z
         qGJJVt34VE/LK+gG95dBHx87hWDY5/UJdBZ2bh7Jqn5HjJLmav+IRJAEzP2I7vR8+8kn
         2jfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rJWcxYoQBw9FC5bU2SEpgmxglktki3/N2UJx+E1uoHc=;
        b=nGd4MG09GeJMTs3JpXmZopGMCrixnejyMmi9EawBejgyQ9fsLypR/8wAU3uEkA8bZ9
         3R2YnFjAykecMzZlpiwkrLp7BMN78m0p0KIIE7PAXa2KC/bXt9Ksu5RcFPBhe6l92Dxe
         her5jYuE+107lh76QcTk1sUllxZUygsveaxCkpOQ0quu6fX7CR1UqHqUVdW42xdfHiJ+
         EuOEDhqbKp6Dr4UHwJN4CGD7L971FGpZ9TMPKMbcFBJKO7hGSq5p3aDpqVm9qIMXoMd5
         kWTdUZxdp2VVQJd7Sid5AKq+HRQUq0ZRQ4lvoNC/LTMWEC+I39wpmFXtK74T6qNXu1uQ
         2m0A==
X-Gm-Message-State: APjAAAUL5tzaVC6/Jx8fN4LLUOyvDFa4Gk7zUfHh1/TGmwJOEHTKY86w
	jPB3wk0E74lNu1h5nvswMsvsneO2hnxoF5DwUvU=
X-Received: by 2002:a05:600c:24cb:: with SMTP id 11mr99575wmu.141.1572271387834;
 Mon, 28 Oct 2019 07:03:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191028092005.31121-1-wambui.karugax@gmail.com>
In-Reply-To: <20191028092005.31121-1-wambui.karugax@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 28 Oct 2019 10:02:55 -0400
Message-ID: <CADnq5_P7spc_po3rCYCVHwqCRp4x1CX60yTX2CXQcYCt9FXDqg@mail.gmail.com>
Subject: Re: [Outreachy][PATCH 0/2] sparse warning cleanup
To: Wambui Karuga <wambui.karugax@gmail.com>
Cc: amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	Chunming Zhou <David1.Zhou@amd.com>, Dave Airlie <airlied@linux.ie>, 
	outreachy-kernel@googlegroups.com, Daniel Vetter <daniel@ffwll.ch>, 
	"Deucher, Alexander" <alexander.deucher@amd.com>, Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 28, 2019 at 8:47 AM Wambui Karuga <wambui.karugax@gmail.com> wrote:
>
> This patchset addresses the sparse warning about the
> `amdgpu_exp_hw_support` variable and corrects the mispelling of the
> word "_LENTH".
>
> Wambui Karuga (2):
>   drm/amd: declare amdgpu_exp_hw_support in amdgpu.h
>   drm/amd: correct "_LENTH" mispelling in constant

Applied the series.  Thanks!

Alex

>
>  drivers/gpu/drm/amd/amdgpu/amdgpu.h        | 5 +++--
>  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 4 ++--
>  drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c    | 2 +-
>  3 files changed, 6 insertions(+), 5 deletions(-)
>
> --
> 2.17.1
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx


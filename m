X-GM-THRID: 6613801848773017600
X-Received: by 2002:a17:902:bf03:: with SMTP id bi3-v6mr27284197plb.16.1540299314535;
        Tue, 23 Oct 2018 05:55:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:8d4c:: with SMTP id z73-v6ls1186854pgd.18.gmail; Tue, 23
 Oct 2018 05:55:13 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61K+zjGaY2ZcPDzWTo7gSAQNKJZZalWLgzkCmYXoyg5hwRqzL31T5yhL2Z5Ou54Rk+tuOsZ
X-Received: by 2002:a62:44c3:: with SMTP id m64-v6mr25516833pfi.48.1540299313593;
        Tue, 23 Oct 2018 05:55:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540299313; cv=none;
        d=google.com; s=arc-20160816;
        b=Dz6HW7UrP+RTKVQvD4HGEQODyr/P0+vZSXH3jecDf88brLyDR3Thqm/e+YplzucYOX
         oPPgtOsSqdwQGWehTgpGCqKtCTPMbIND3oeh1xl6JJ3gPWgF0SVb3qCj4y7T6wQMtK82
         qWUpXzJy9sUWLq7uaZenAdAmW0uAoz3QJNnooauU5TI0Dv3QPF6HV5QaFeIuYbswZ6gA
         Xf7fzi81Ne0eBLLZzuNcYr+6o+qr1CvtkjBwU9+nBiqw9uGbR+uxLBrBvSNng37zM9KP
         TUwf51f/kNWsBTUAXFPXyRq2/97x6JZa/VxV6RCD85nz5JsDjWQ0M4a4jyScq/kwmuRU
         y4hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HqcKKHDiKB+uJZ0QbcXjSbMwDgYDasqSxkgH6vu9kPQ=;
        b=aAhL5sZg2HNyWiqlbckkz8SAXmb8QAsxqy8v+iObMTCRF4tUkgCbztg3LLHL9eUnFf
         0rhoVGHFZM1gxXb8W2Ug3bKfDOR3cgA9GhFg3Yknihv2GeZ/eh86G9f9g5Iah9ZI6WzV
         pc/nUdsq/17dDq6DX/hNpSyim6NQ29ZwJpKhiFC4jRTBvJ61FBP23yz07T7Wc2fdsTuV
         DJeEyPCDW/fNRZ75emYssN6sZhxDJHbpFbFR2AV3gGKj0e2FUhFdQzAY56N97lhmt3Jl
         u2mrhOSWQADzphu3bowgRhSC5JbK/VgI+hk4zzUg3rvWDT0m/X4XnfwU8zGqJdOJR2G2
         L5jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@poorly.run header.s=google header.b=bUJ+vJ2d;
       spf=pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=sean@poorly.run
Return-Path: <sean@poorly.run>
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id i5-v6si66757pfi.1.2018.10.23.05.55.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 05:55:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@poorly.run header.s=google header.b=bUJ+vJ2d;
       spf=pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=sean@poorly.run
Received: by mail-ua1-x942.google.com with SMTP id k4so452043uao.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 05:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=poorly.run; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HqcKKHDiKB+uJZ0QbcXjSbMwDgYDasqSxkgH6vu9kPQ=;
        b=bUJ+vJ2dUb6GPmmyOXQ4hkDHcfiAPCSkmw4Cd2qJaOB8NWUnTEzN8zLXeJsTKCuySZ
         6X2bFNNRNQjvsXGdQjeek4jsF38adbvwiyD6i/YRU81f5umMoudFzJyUTlkHe6oNACmq
         PKy1zt3Er3DXwpwNzk6eRmxpLiOA4FkVsN+GMinbeVowx0CO0wIjWF9cPciUUbiWSSHq
         U9qvaOKG/5LGvQkz0y4fvlJm31p2cPGKRvGKAokZnzeOCkv32dreXU7uUKaDKh9p594a
         3uGNoiTCWB9ND86EmiYvlAgTQSKORTLNsi53MoYJmB2v4mLErE1D/oZEdNJ83g9eTdTY
         7gow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HqcKKHDiKB+uJZ0QbcXjSbMwDgYDasqSxkgH6vu9kPQ=;
        b=atidOcXLGELerVmWKL3tfgoR9WQRu6uJgKbcedWXaxhHGm0vS/FLt2g2n5WYLQtF1h
         WAkpD547/Yfw1kewtkURRqOfnQeCJMnZ1M/HPQMvBiayaYzYk3m2kZa16W8V5wcXgqmB
         XwLSXXjv2KRysv2pmdGDtIiPu2do+xID7hP7ElWt7getJiMmjsoABbo6VSRyhBEGg+wG
         0dIdh85Ca4sFEeiyidMxKTO4xlB+hMJxqHd/R8no9UGiWH7fpBKO4oWf9FyJ3tLs+pzT
         xT70OZ/Ol9gujyDNs3P+vZrrSyxKg9TkBjaADGU0D0UMy7MKZNjfTHSlpUN0KFqII1gv
         cmug==
X-Gm-Message-State: ABuFfojAHn2HY54YMGzoRmRxNeBfNhoHrGHHQZpFeVJrTlJk7dG301c6
	sLGHDJXUpBLSj2RmsYmuD6LJipe0P1CP03dM9PS5Kw==
X-Received: by 2002:ab0:166b:: with SMTP id l40mr21992938uae.117.1540299312458;
 Tue, 23 Oct 2018 05:55:12 -0700 (PDT)
MIME-Version: 1.0
References: <20181018204815.GA23390@armorer>
In-Reply-To: <20181018204815.GA23390@armorer>
From: Sean Paul <sean@poorly.run>
Date: Tue, 23 Oct 2018 08:54:36 -0400
Message-ID: <CAMavQKLZu7nKpYb0N45dNZhm2L9bC6LNf87hSHpOrzYrAPK6eQ@mail.gmail.com>
Subject: Re: [PATCH DRM] drm: msm: adreno: Use PTR_ERR_OR_ZERO rather than
 if(IS_ERR(...)) +PTR_ERR
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Dave Airlie <airlied@linux.ie>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 18, 2018 at 7:11 PM Mamta Shukla <mamtashukla555@gmail.com> wrote:
>
> Use PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) + PTR_ERR because its
> better to have inlined function rather than code-opened implementation.
>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Reviewed-by: Sean Paul <sean@poorly.run>

> ---
>  drivers/gpu/drm/msm/adreno/a5xx_gpu.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> index 6a68493..b751b76 100644
> --- a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> @@ -1222,10 +1222,7 @@ static int a5xx_crashdumper_init(struct msm_gpu *gpu,
>                 SZ_1M, MSM_BO_UNCACHED, gpu->aspace,
>                 &dumper->bo, &dumper->iova);
>
> -       if (IS_ERR(dumper->ptr))
> -               return PTR_ERR(dumper->ptr);
> -
> -       return 0;
> +       return PTR_ERR_OR_ZERO(dumper->ptr);
>  }
>
>  static void a5xx_crashdumper_free(struct msm_gpu *gpu,
> --
> 1.9.1
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel


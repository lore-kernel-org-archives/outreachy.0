X-GM-THRID: 6613766908377300992
X-Received: by 2002:aca:3203:: with SMTP id y3-v6mr29701990oiy.14.1539982110116;
        Fri, 19 Oct 2018 13:48:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cc96:: with SMTP id c144-v6ls8077544oig.13.gmail; Fri,
 19 Oct 2018 13:48:29 -0700 (PDT)
X-Received: by 2002:aca:5188:: with SMTP id f130-v6mr29567915oib.38.1539982109408;
        Fri, 19 Oct 2018 13:48:29 -0700 (PDT)
Received: by 2002:aca:a883:0:0:0:0:0 with SMTP id r125-v6msoie;
        Fri, 19 Oct 2018 13:41:26 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63IG1dwgSUQqXENNslFaHcUVWxHp0QFcjcfgATmZ3uuGk3M3K4euQPZO6+SASGYeRjAnBKT
X-Received: by 2002:a24:2414:: with SMTP id f20-v6mr27989774ita.0.1539981686748;
        Fri, 19 Oct 2018 13:41:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539981686; cv=none;
        d=google.com; s=arc-20160816;
        b=jahPmqpPOVIJlP3buMTKHqjky4KrXaOtmM5ZdJYICKtgD4EQAjgg7i8cU2eyY2tadr
         j6oMZhRlppm3VHAe2im3vaNR1TMwYqvbCwhjZnyHx/WxDiTyts8OAscQRrxEZjvVTHoX
         nL8ys60GCWxnffR4hxNCeEbo26fipS6rvNzV1WC+4MTGZcSpz5Q7aFGMmePMVwyZdcZ1
         dOaDZyg1DzLz4bUFGkvkHV47VEjj8DsCJ9mXkNvR6j2q7w0cRWlsh4c1iodWd0TzVlwL
         /+7bErIemIWUhhWG5iwCDUy4vSdQ14NaqhW+ieFzC4ieLbolTEefTDt2E/ty7IPkFhea
         NhBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NyHQ1c3d7fu7GR0JNhYr237UEgq/zAE6SnD0vVw8UXA=;
        b=lPx8dzIME11+ZX4X9rCzUgadPAe6dTMSbhkG9JV4xa53NGX6HXJgiQzNT9yh9Toql4
         pmpGi7v3Dgl1FcmYWTilEu3472rl6CXpD+38cJ0xsTnB2ypKTN5x+Y+yi+Yk5w5M4jnB
         I27RuZUT1G62BCvo6fbicVqW7RPWTJ+ImVEsiT7LLpvuagISRxSzZ7TPhrtOZL/snPE4
         i1PPyCwDLE4qPS7ulwhXRnPQEkbSefVCQH0h3r5sY5Cf2LMRnViH4z5QiO78kQi0+od1
         jmQZjNjICsDaSOAZkQEnPr1xE5nkHyhVU25lPjyh5IAQxl8IBiubbOyMHMifuZjKMtCn
         pRXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@poorly.run header.s=google header.b="eI9/+5Il";
       spf=pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=sean@poorly.run
Return-Path: <sean@poorly.run>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id 131-v6si142181ita.2.2018.10.19.13.41.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Oct 2018 13:41:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@poorly.run header.s=google header.b="eI9/+5Il";
       spf=pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=sean@poorly.run
Received: by mail-vs1-xe43.google.com with SMTP id w1so26081427vsj.8
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Oct 2018 13:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=poorly.run; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NyHQ1c3d7fu7GR0JNhYr237UEgq/zAE6SnD0vVw8UXA=;
        b=eI9/+5Ilo8OBE1UjUaaUVscEbMx3GJLdNhXHwRLX4UMynxcMZxqkP/j0x5jX80bGGf
         L+XKb/wZg33ENuAlpkKatW9qKT+qgGIVZzQrhD/hr4YvcTX9xiRoDTsre62rJhYEc1x4
         EX7SpgVJr9ilvD8q1DbPkHiwDWQoROOyWH4+f6fZDB7WcUO2xjWL8D4mOdJQhHpdvS/q
         Xqyxwd2ghBL83hsaj99iQEUhdv0hZH+UcRjIU+9L0mmLLg333d0STLhVOv4ySAbjlyAZ
         IRHq+b9QzlXV5Fx03yiRjcuuFla9kc4OtG+f2HhADRKBhyVxmkahyYKBdGWiRxnbrPz5
         XOIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NyHQ1c3d7fu7GR0JNhYr237UEgq/zAE6SnD0vVw8UXA=;
        b=WBiZAW17bDHS+N6aV7jyaic+1cF5M+qf8Onvijlf8+JUaiToV7K6uAAERH4Q2B+xf7
         LOxWVCCH/PnXMW7ANGJJFVRLBRrgbnzSmLvbgH23w9f6knIsbJS4VA4NM9lVHzk0RCnp
         1J7FWUL2abJwkeBr6A10H2edwIOWrIxXofWkdtgIykhpbLDgoiqpR46rDAfNj6lFJpRR
         XRd2enG2t475btZ5Omb1nX/0dyEEfEuS2u0sUvTcqyc288ToeIXTBd2sqSuEX6gXs5fD
         wYwOHDXCEB1j5sDO15/g9SSLe+g5RLMj6k/fr14V3OlNtEri7Cknj6DxkIde/5XBBobn
         b++w==
X-Gm-Message-State: ABuFfoi96t0lL2nOTMiISHjwKzv3uoYM+aGwHwOtaaE0NjXHDssBPbWz
	zSxLXMg6vDdkgNJEXrTDV57P/oOQovFWyw+AyqDLzg==
X-Received: by 2002:a67:6ec5:: with SMTP id j188mr15309491vsc.186.1539981685818;
 Fri, 19 Oct 2018 13:41:25 -0700 (PDT)
MIME-Version: 1.0
References: <20181018183322.GA10769@armorer>
In-Reply-To: <20181018183322.GA10769@armorer>
From: Sean Paul <sean@poorly.run>
Date: Fri, 19 Oct 2018 16:40:49 -0400
Message-ID: <CAMavQKJbWJxcXvOHcmPcpwbA14U+jY-KOqg5pPHaSO-9covtag@mail.gmail.com>
Subject: Re: [PATCH DRM] drm: msm: adreno: Use DRM_DEV_* instead of dev_*
To: mamtashukla555@gmail.com
Cc: outreachy-kernel@googlegroups.com, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
	Rob Clark <robdclark@gmail.com>, Dave Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 18, 2018 at 2:33 PM Mamta Shukla <mamtashukla555@gmail.com> wrote:
>
> Use DRM_DEV_INFO/ERROR/WARN instead of dev_info/err/debug to generate
> drm-formatted specific log messages so that it will be easy to
> differentiate in case of multiple instances of driver.
>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Hi Mamta,
Thank you for the patch! Any plans to convert more than just the one
file? Ideally we'd switch (or commit to switching) the entire driver
to avoid having to use 2 patterns when grepping for logs.

If you don't want to bite off the entire msm driver, perhaps do all of
adreno/, all of the msm* files, all of disp/mdp[4,5], etc. Another
good bite-sized piece would be converting the DPU_* log messages to
DRM_DEV* in disp/dpu1/*

Sean



> ---
>  drivers/gpu/drm/msm/adreno/a5xx_gpu.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> index 6a68493..bf8402d 100644
> --- a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> @@ -514,7 +514,7 @@ static int a5xx_ucode_init(struct msm_gpu *gpu)
>                 if (IS_ERR(a5xx_gpu->pm4_bo)) {
>                         ret = PTR_ERR(a5xx_gpu->pm4_bo);
>                         a5xx_gpu->pm4_bo = NULL;
> -                       dev_err(gpu->dev->dev, "could not allocate PM4: %d\n",
> +                       DRM_DEV_ERROR(gpu->dev->dev, "could not allocate PM4: %d\n",
>                                 ret);
>                         return ret;
>                 }
> @@ -527,7 +527,7 @@ static int a5xx_ucode_init(struct msm_gpu *gpu)
>                 if (IS_ERR(a5xx_gpu->pfp_bo)) {
>                         ret = PTR_ERR(a5xx_gpu->pfp_bo);
>                         a5xx_gpu->pfp_bo = NULL;
> -                       dev_err(gpu->dev->dev, "could not allocate PFP: %d\n",
> +                       DRM_DEV_ERROR(gpu->dev->dev, "could not allocate PFP: %d\n",
>                                 ret);
>                         return ret;
>                 }
> @@ -1028,7 +1028,7 @@ static void a5xx_fault_detect_irq(struct msm_gpu *gpu)
>         struct msm_drm_private *priv = dev->dev_private;
>         struct msm_ringbuffer *ring = gpu->funcs->active_ring(gpu);
>
> -       dev_err(dev->dev, "gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\n",
> +       DRM_DEV_ERROR(dev->dev, "gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\n",
>                 ring ? ring->id : -1, ring ? ring->seqno : 0,
>                 gpu_read(gpu, REG_A5XX_RBBM_STATUS),
>                 gpu_read(gpu, REG_A5XX_CP_RB_RPTR),
> @@ -1134,7 +1134,7 @@ static irqreturn_t a5xx_irq(struct msm_gpu *gpu)
>
>  static void a5xx_dump(struct msm_gpu *gpu)
>  {
> -       dev_info(gpu->dev->dev, "status:   %08x\n",
> +       DRM_DEV_INFO(gpu->dev->dev, "status:   %08x\n",
>                 gpu_read(gpu, REG_A5XX_RBBM_STATUS));
>         adreno_dump(gpu);
>  }
> @@ -1498,7 +1498,7 @@ struct msm_gpu *a5xx_gpu_init(struct drm_device *dev)
>         int ret;
>
>         if (!pdev) {
> -               dev_err(dev->dev, "No A5XX device is defined\n");
> +               DRM_DEV_ERROR(dev->dev, "No A5XX device is defined\n");
>                 return ERR_PTR(-ENXIO);
>         }
>
> --
> 1.9.1
>


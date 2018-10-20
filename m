X-GM-THRID: 6613766908377300992
X-Received: by 2002:a24:610e:: with SMTP id s14-v6mr5714140itc.38.1540015773206;
        Fri, 19 Oct 2018 23:09:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:f80b:: with SMTP id o11-v6ls6708607ioh.9.gmail; Fri, 19
 Oct 2018 23:09:32 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eoxFlf+VdDKg6Ft5zl1NNoclB3zF5YRCzsmWNe0kbdwKPbTJ/KjkqnxHb4RD/fz5t3wwVw
X-Received: by 2002:a5e:8714:: with SMTP id y20-v6mr5643611ioj.6.1540015772331;
        Fri, 19 Oct 2018 23:09:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540015772; cv=none;
        d=google.com; s=arc-20160816;
        b=R3iYdEVyOw38DeoX0B51YSEjZiQeYsTGrs63/dKIk24yzPFTPj8Tq/S+3F9iFDOJzu
         WSvSn9x3y+qq0igaVraknHCJ+4JfYqvY/wsj9b8+4tVFesyinVjX9k15oNlvAX8ry/or
         RcKevrxl5SW+Uew0NEcLGtcDJQgQ1jRhHZZvyKmLbrrmjShCTwsgn9N/yvtx5CB1LVmG
         xPQz3sHFsB2gqkqolpGjS4iGO69SEDDKzHYRnNvU8HhKSIl6XewO3HsI/qA6V8ufZAmo
         ZzvL5EQL5/DxZDXL/XMnLVXHqIg/LSKf+kHMFStsZFSYUSzB3AL9OQiX/3bgVGX2kwdZ
         aMBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S01oAVb8Wjz6oljbrgQbVADvj0OR093Dt6kW8xKFCUM=;
        b=QDe+AEzvE62nGgaMy1VeYP0U+uJVReX1myq3f5HX7gQ5eDxBtW6F7/I/oEHvOdiQ8e
         vzPZ+YQIVkyOIiwpFmZpzOa54rt9JrSlMLvIZ8UUsDZTa0jx2VQOXPsKK4daHg/xH3lQ
         WFLgRwJ9Jsk2JIZaQZArkOtPrXqMX/l5vYCMagukf9wSkKltkoumdsKPdl0Pn5kolCqg
         y0TTUtAHAOI0DloL4NL+gtnpi3KWlHN+EePoEzlbFzlOTksMqYAVsi1D6O6w3CAYVTU6
         i3N+DvADl5lsf+7eCaNITqoqg3aX1FqEunjd3OZZufZuDqgnbxBtAuEsuLq89Z4VwcEw
         GEkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ji+YRHlv;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-it1-x144.google.com (mail-it1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id b133-v6si369338itc.3.2018.10.19.23.09.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Oct 2018 23:09:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ji+YRHlv;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x144.google.com with SMTP id l127-v6so5742762ith.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Oct 2018 23:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S01oAVb8Wjz6oljbrgQbVADvj0OR093Dt6kW8xKFCUM=;
        b=ji+YRHlvnwGeCaw+MFRb6BEjw3JQJtKgm+CcpwLef0IXTbBEJ592Sx+WOZEOYg1xzT
         nCupf0xxzbVqcKY2+b16w9RyMC0DVyYp5aq2XUc3QCiF8E5dNRodE8RmHTo/lHF9IKHm
         9r/AuwAGxpo80f3CytDH3Z8NHswj7WcAAM4jraF65sog6PBjBuh9QAdOGzQTij7Sesz8
         dtx85qjjJ4UYvlOsSvHvSok4+aXQcMf3ZNXkMOhIscDSR+EgxHqaA+SWIDQnYGQnIXcL
         74BGm/DMtMSJUGX2RaXlHm/C8ZRUnH66VMByrW49/afIDVpJrzxborNAN2/gORXuMlSb
         ErIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S01oAVb8Wjz6oljbrgQbVADvj0OR093Dt6kW8xKFCUM=;
        b=uH+bONvkug1bFbaZUycA9ZKei3v4FzKk1cB6Ch5dIxrQWBSAG4fkl5J33KaBlYwKyv
         yXqEiTRRQ0dnbO3B6WV08VPDx8LVZtwHed6RTqoIwBD1HY4vb7nYYus7sOzCeutNpcST
         AWfVixogmEQhX35IQL7tfVsZVk1frtTHtmf2RzAi4XN4MGYaAyC163+h25M94xGctOfZ
         QF9puXoYGXK37MJ7nr26jrKI45BkPi0oGQpFj8OS/znBuV/75x6lvuDiDNtO6yCmJyPr
         5+xeA1qix4CMnKuPDl5Q/FKAROE+dh80WsLHF8lhZesHs2l6JG/ToOS9h0G53A7xGYfr
         Pesw==
X-Gm-Message-State: ABuFfojppvwg6uiBNnsdrFPwycYMjrPw7FRFzdq/lEkDbZm0TMsaKnUo
	LwbN1BI4cYNjieyur2rBWiCz9IVW+Jnan73MW/X15A==
X-Received: by 2002:a24:de83:: with SMTP id d125-v6mr4765328itg.137.1540015771861;
 Fri, 19 Oct 2018 23:09:31 -0700 (PDT)
MIME-Version: 1.0
References: <20181018183322.GA10769@armorer> <CAMavQKJbWJxcXvOHcmPcpwbA14U+jY-KOqg5pPHaSO-9covtag@mail.gmail.com>
In-Reply-To: <CAMavQKJbWJxcXvOHcmPcpwbA14U+jY-KOqg5pPHaSO-9covtag@mail.gmail.com>
From: Mamta Shukla <mamtashukla555@gmail.com>
Date: Sat, 20 Oct 2018 11:39:18 +0530
Message-ID: <CAMNCNOVvcu8n-_EL+3PXFP0k-rWAFMyxZb0n4Y_NGn1oD-ipzA@mail.gmail.com>
Subject: Re: [PATCH DRM] drm: msm: adreno: Use DRM_DEV_* instead of dev_*
To: sean@poorly.run
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, 
	Daniel Vetter <daniel.vetter@ffwll.ch>, Rob Clark <robdclark@gmail.com>, airlied@linux.ie
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 20, 2018 at 2:11 AM Sean Paul <sean@poorly.run> wrote:
>
> On Thu, Oct 18, 2018 at 2:33 PM Mamta Shukla <mamtashukla555@gmail.com> wrote:
> >
> > Use DRM_DEV_INFO/ERROR/WARN instead of dev_info/err/debug to generate
> > drm-formatted specific log messages so that it will be easy to
> > differentiate in case of multiple instances of driver.
> >
> > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
>
> Hi Mamta,
> Thank you for the patch! Any plans to convert more than just the one
> file? Ideally we'd switch (or commit to switching) the entire driver
> to avoid having to use 2 patterns when grepping for logs.
>
> If you don't want to bite off the entire msm driver, perhaps do all of
> adreno/, all of the msm* files, all of disp/mdp[4,5], etc. Another
> good bite-sized piece would be converting the DPU_* log messages to
> DRM_DEV* in disp/dpu1/*

Thank you for the feedback.
I will do these changes for msm driver to maintain uniformity for the
entire driver rather than
just a file.


> Sean
>
>
>
> > ---
> >  drivers/gpu/drm/msm/adreno/a5xx_gpu.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > index 6a68493..bf8402d 100644
> > --- a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > +++ b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > @@ -514,7 +514,7 @@ static int a5xx_ucode_init(struct msm_gpu *gpu)
> >                 if (IS_ERR(a5xx_gpu->pm4_bo)) {
> >                         ret = PTR_ERR(a5xx_gpu->pm4_bo);
> >                         a5xx_gpu->pm4_bo = NULL;
> > -                       dev_err(gpu->dev->dev, "could not allocate PM4: %d\n",
> > +                       DRM_DEV_ERROR(gpu->dev->dev, "could not allocate PM4: %d\n",
> >                                 ret);
> >                         return ret;
> >                 }
> > @@ -527,7 +527,7 @@ static int a5xx_ucode_init(struct msm_gpu *gpu)
> >                 if (IS_ERR(a5xx_gpu->pfp_bo)) {
> >                         ret = PTR_ERR(a5xx_gpu->pfp_bo);
> >                         a5xx_gpu->pfp_bo = NULL;
> > -                       dev_err(gpu->dev->dev, "could not allocate PFP: %d\n",
> > +                       DRM_DEV_ERROR(gpu->dev->dev, "could not allocate PFP: %d\n",
> >                                 ret);
> >                         return ret;
> >                 }
> > @@ -1028,7 +1028,7 @@ static void a5xx_fault_detect_irq(struct msm_gpu *gpu)
> >         struct msm_drm_private *priv = dev->dev_private;
> >         struct msm_ringbuffer *ring = gpu->funcs->active_ring(gpu);
> >
> > -       dev_err(dev->dev, "gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\n",
> > +       DRM_DEV_ERROR(dev->dev, "gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\n",
> >                 ring ? ring->id : -1, ring ? ring->seqno : 0,
> >                 gpu_read(gpu, REG_A5XX_RBBM_STATUS),
> >                 gpu_read(gpu, REG_A5XX_CP_RB_RPTR),
> > @@ -1134,7 +1134,7 @@ static irqreturn_t a5xx_irq(struct msm_gpu *gpu)
> >
> >  static void a5xx_dump(struct msm_gpu *gpu)
> >  {
> > -       dev_info(gpu->dev->dev, "status:   %08x\n",
> > +       DRM_DEV_INFO(gpu->dev->dev, "status:   %08x\n",
> >                 gpu_read(gpu, REG_A5XX_RBBM_STATUS));
> >         adreno_dump(gpu);
> >  }
> > @@ -1498,7 +1498,7 @@ struct msm_gpu *a5xx_gpu_init(struct drm_device *dev)
> >         int ret;
> >
> >         if (!pdev) {
> > -               dev_err(dev->dev, "No A5XX device is defined\n");
> > +               DRM_DEV_ERROR(dev->dev, "No A5XX device is defined\n");
> >                 return ERR_PTR(-ENXIO);
> >         }
> >
> > --
> > 1.9.1
> >



-- 
Mamta Shukla


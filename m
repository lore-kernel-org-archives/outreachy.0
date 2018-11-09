X-GM-THRID: 6614501510595215360
X-Received: by 2002:a25:55c5:: with SMTP id j188-v6mr4720716ybb.24.1541791429622;
        Fri, 09 Nov 2018 11:23:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ab26:: with SMTP id u35-v6ls924224ybi.10.gmail; Fri, 09
 Nov 2018 11:23:48 -0800 (PST)
X-Google-Smtp-Source: AJdET5cMxPu0a8IglDGZgLdTnYnzoqb5xi+zkbJ7w+svjo+BSzjDfuysL6sMfpiZgV2MJn4G1ATC
X-Received: by 2002:a5b:a83:: with SMTP id h3-v6mr5311080ybq.60.1541791428880;
        Fri, 09 Nov 2018 11:23:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541791428; cv=none;
        d=google.com; s=arc-20160816;
        b=0EpUJE0fuieDVl/zWbmzznRRvbWGMJCgoI0yoOvBf6T6fthSAUrt4PKk4JGaq7JaPH
         LoPNJXm10KB3XAOhlQS0ssvJcJeLLBGVjv7UXKFLnpWn/bLbU1duWE9XLuwXrgOkXaMP
         hz4gJDUxAZw83+01ZGle+4U0/Q1LrdLqj46GjkHQT2D9hkfkwFs8rYGLzCcDoxD+0+5c
         aMVi/JdIJcmOdjefK0A9NBLvwWl4l0nDP/UyWcmFcZPc7BGaNya6/sZ7gauk/+NTO8bl
         b+CNsXl5vu+tv3bPe8fVUtZ4SWUKiKilmOFJncJR2N3l2k87b2WIUSw8y5sj1kyHNuJO
         wWBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=my9+v4CKApJhBOa43HWf7rS2l5KJB6bXsYbPQDOWyAI=;
        b=zSAltOAVHzEeT8FWrOut67Ga4P9yfLhULtkuoQPRGQ2aKx0BErWsmsr6okR2YiEaoO
         zd5+QDb8LBnE0DgSbmq6bGNiZVgKNQ5wf6aOPI8LR8lhlfevPVEPHdSUBWoZUaTSPA8t
         EgDk0AWAvERGIXMT8Ax3Nrnjm/HNWkFlriuOlmrN63WfJQ6iT03gzV3ulff5pOWrmK2V
         sJR6RWMtRw6xHV3+RwOAK2zoip2CWetTI1WZx/46ByYVeNWHpJiXaUPrVagBwg4PtctZ
         yA7ArHlvDDVs4MFEE2wWI5gT4xRdvdS+PWtm9Vrrq5E2mKxJ+lh120ty/ilN+OXlWuei
         e+xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@poorly.run header.s=google header.b=GyQ1LrRV;
       spf=pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=sean@poorly.run
Return-Path: <sean@poorly.run>
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id t186-v6si328917ywc.2.2018.11.09.11.23.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 11:23:48 -0800 (PST)
Received-SPF: pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@poorly.run header.s=google header.b=GyQ1LrRV;
       spf=pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=sean@poorly.run
Received: by mail-yb1-xb2d.google.com with SMTP id w17-v6so1492006ybl.6
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Nov 2018 11:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=poorly.run; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=my9+v4CKApJhBOa43HWf7rS2l5KJB6bXsYbPQDOWyAI=;
        b=GyQ1LrRVUTxzknbON9H3BbsrFRli3/qu0rjZbshD4RDSANC7308l62o6saJAKeCUDd
         y3fr2ZowHqPwIWaxEcBqlfVueyfCJT2+IROa05aCXg5R/Ot0CRtc7CKc1f1sxzDPgWMK
         UpmvOyMgt88U350c5aWuVV48tvw4tKxX58fMBv818RSSeFPeFDudpl/ePeyLCmS/Qa5F
         8GobrfoMidRKA1pHGi9Saf5H8N7a99/jMAcyo2ceKJCJWBEDwOVif2eAHo5Aa1/GCthv
         K8f7dKclWWR5FKFcFJMGGZ2t4SO+FzcPxyAxxuD1LZFhuAnoOdsazoyEk9ipwjIw+LT6
         cjvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=my9+v4CKApJhBOa43HWf7rS2l5KJB6bXsYbPQDOWyAI=;
        b=H8adso9syyuf1kRHpFk01Ub8KwuttoSddw1pWX04iNV/TUTr2PgguKRCBKQkLNeJBk
         Rv6wTfjCPsAR/NOeDeroGMWWbEZhmm8vJXOkSHKDEyEllA4ce4Ga+46hbuK+7Op7LUh4
         xja8POk353xMB2qrZwUDVUBFwgES35DjpToxYgiu2C/GYQ6BxBOY9pT9zgKMEPJRLhRc
         6rob7HLu1EidDEd+Uv0XIcek7Aby23m/2XDFzlHpYEVNevNm+X2kaqHsJLiM+qetRfDu
         BR7S/nXa02nXmY3+0/EjRPdQNf8pgtAqur32z8+YfifuSRjhRD+rYsnelFEBBOPf0Zdl
         e6ow==
X-Gm-Message-State: AGRZ1gJmxcuxJ3e0OWchiTRK5sF0AwcG6EtbjDD6YeU0PtHQDVB5IsRj
	a+nFaoTU1MJM74488v6gUP26E7uhDp+vlw==
X-Received: by 2002:a25:5208:: with SMTP id g8-v6mr10445151ybb.65.1541791428406;
        Fri, 09 Nov 2018 11:23:48 -0800 (PST)
Return-Path: <sean@poorly.run>
Received: from localhost ([2620:0:1013:11:ad55:b1db:adfe:3b9f])
        by smtp.gmail.com with ESMTPSA id c144-v6sm503521ywb.26.2018.11.09.11.23.47
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 09 Nov 2018 11:23:47 -0800 (PST)
Date: Fri, 9 Nov 2018 14:23:46 -0500
From: Sean Paul <sean@poorly.run>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: sean@poorly.run, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Rob Clark <robdclark@gmail.com>, airlied@linux.ie
Subject: Re: [PATCH DRM] drm: msm: disp: dpu1: Use DRM_DEV_* instead of DPU_*
Message-ID: <20181109192346.GE154160@art_vandelay>
References: <20181020180354.GA338@armorer>
 <20181106185527.GW154160@art_vandelay>
 <CAMNCNOW3P7F0f_OQESA4xTh_Mesf2M+C4pHHFw5Aoye-6DQPqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMNCNOW3P7F0f_OQESA4xTh_Mesf2M+C4pHHFw5Aoye-6DQPqA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Nov 09, 2018 at 07:35:33PM +0530, Mamta Shukla wrote:
> On Wed, Nov 7, 2018 at 12:25 AM Sean Paul <sean@poorly.run> wrote:
> >
> > On Sat, Oct 20, 2018 at 11:33:54PM +0530, Mamta Shukla wrote:
> > > Use DRM_DEV_ERROR/DEBUG instead of DPU_ERROR/DEBUG  to generate
> > > drm-formatted specific log messages in the Kernel log in case of
> > > multiple instances.
> > >
> > > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> >
> > Hi Mamta,
> > Thanks for sending this patch, but I don't think it's going to even compile.
> > DRM_DEV_* takes a struct device * pointer as the first argument, and it's not
> > being passed in anywhere. Make sure you compile test with CONFIG_DRM_MSM enabled
> >
> Thank you for pointing this out. Definitely DRM_DEV_* requires pointer
> to function or the device pointer along with
> message string. I had compiled this before submitting the patch. But I
> missed out enabling the DRM_MSM.
> Is it good to write v2 of above patch with mentioning/stating pointer
> to function so that in DEBUG message function
> name is also available with error message?

Yes, to do this right, you'd pass the device pointer where applicable (most
everwhere). You'll also want to convert the dev_*/pr_*/DRM_* instances to
DRM_DEV_*.

Sean

> 
> 
> > > ---
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_core_irq.c       |  58 +++----
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c      |  60 +++----
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c           | 176 ++++++++++-----------
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c        | 134 ++++++++--------
> > >  .../gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c   |  40 ++---
> > >  .../gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c   |  42 ++---
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c        |  10 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   2 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_cdm.c         |   2 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c         |   2 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c        |   2 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c          |   2 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c    |   2 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c        |   2 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c         |   2 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_irq.c            |   4 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |  90 +++++------
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c           |  10 +-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c          | 134 ++++++++--------
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c             |  96 +++++------
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c           |  32 ++--
> > >  21 files changed, 451 insertions(+), 451 deletions(-)
> > >
> >
> > /snip
> >
> > --
> > Sean Paul, Software Engineer, Google / Chromium OS
> 
> 
> 
> -- 
> Mamta Shukla

-- 
Sean Paul, Software Engineer, Google / Chromium OS


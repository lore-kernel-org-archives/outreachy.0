X-GM-THRID: 6614501510595215360
X-Received: by 2002:ae9:f208:: with SMTP id m8-v6mr21765992qkg.31.1541530530346;
        Tue, 06 Nov 2018 10:55:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5a0:: with SMTP id g32ls844346qve.5.gmail; Tue, 06 Nov
 2018 10:55:29 -0800 (PST)
X-Google-Smtp-Source: AJdET5evl8I2Bg3T1ESx/MLlyqYO05uxpQRivfSniCZ+bW2UcPWur9iybLbzJrS3xjwzl4pdbad/
X-Received: by 2002:a0c:d601:: with SMTP id c1mr21924394qvj.51.1541530529559;
        Tue, 06 Nov 2018 10:55:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541530529; cv=none;
        d=google.com; s=arc-20160816;
        b=B3QIIR90AdSTdFNbp4pNPBijYn85aImNXYrlGWoDsKUY4tieqNDdpcqGTdNUqHKZuE
         WrfIQuf34YfO1iojeAUxWNClT1FxKI9ljXrDAiD6IpBgVVvNguLIpKPRZkofpJ12icCy
         fIgK8aBiRSWs66etcbCHXKQ/QhxmWnl3+7rFiEmSjCmYI/L+1S0+MFXI0WtxXfp3sp1w
         XyUTu3Ci1soBw/hgGhdbvO5xJN6ZXMm92ZAzgOqUdlQeZ+gCwfPhug1x8rRQhRcUKs38
         aPdscR9QnaZARyXIfIZsF5uarHaPveguIlOZFEhpuAVUtW/u98cKcY47VCzS0RsHbuMJ
         m0ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Mnptgpxcqfr7ur3NACF+R05pWWMvdvX5To4z8PEIxMU=;
        b=IsZZGyfrnkPi3uJXc9Ouv0ORmi6OI3Q8KWJ0AKBOus9c7EUGPOfT0jzdcVvQrctBhq
         yqo9vnIEaH/2MZTlXcENUzhnmska/v0ahqy4lyubmYHer8i9n8rwTVdXdpLhVFrk/UK/
         jcbPOTKvPNR5LkLvRthqWAp2/7cItg0NqWgaJOdSf7dAOiBC62DMi65oLtMXtV8SbzKJ
         KKIlqYJkueQ/7CqIolUdZriY6C9i4cJJiTaa+8gNjTuI8TE/qtO5g55/03qJC4qE1nnL
         5+5CPyAUGxAB4E1h5Dm3dAVy0lj+CP37qT4ikY4Xam8MXK8zmEUtv/cObaSMiglyuATq
         ho8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@poorly.run header.s=google header.b=X8A3z0s2;
       spf=pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=sean@poorly.run
Return-Path: <sean@poorly.run>
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id l18-v6si1744693qtj.0.2018.11.06.10.55.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Nov 2018 10:55:29 -0800 (PST)
Received-SPF: pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@poorly.run header.s=google header.b=X8A3z0s2;
       spf=pass (google.com: domain of sean@poorly.run designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=sean@poorly.run
Received: by mail-yb1-xb43.google.com with SMTP id u103-v6so4220041ybi.5
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Nov 2018 10:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=poorly.run; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Mnptgpxcqfr7ur3NACF+R05pWWMvdvX5To4z8PEIxMU=;
        b=X8A3z0s2AyewuW7adFoNy5/6qpd71MAPU8ypDpmeVnooXWOPObHhw0CJ0ClyBIOHBt
         9RjQmsWhFMj5eSoRO4V5+q1rvqdmySAXcOGm8Ye6oD2V8h/M5bHUzn8bTCbvIEru0ioj
         jxOoXDx+PL7eMiBlDUoZ5QWr0IITuRC4osUCXvhTS8FbG5PK0hvJcLaNmiIG9MdB7IKL
         /6MXMVk3NzHeXJ9ym8HHVZMJ2jCKA/F6UKJxjVFltBtmM1NKEUAbkYFHLhV19Eg22BWu
         IQZcMuV4ToyrSwCsZlgLle/HA+gqFvK77+Ph74BARrqdSVyq77azf+LhrlMTtN3amdE8
         Uk/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Mnptgpxcqfr7ur3NACF+R05pWWMvdvX5To4z8PEIxMU=;
        b=aseUA1ShgVGx1S0+5zMo5rH9ofc1wGWXBzztn8TR/T6lIBssyzwUwaObE9AN2TSEPp
         CM5JndW4cXetyz5LfzVad8fMle+c0FwC0+vuyxuJHgwT/LFxczb4+9dxZJWjC+bWbck6
         nvcqeMrfwD0c3/Onh459ICEuyLT8uvqb06xCd/E2tR+esz+cT0BJxJ3I47neCnTKLEwa
         btQqtkqASBKKJU40xg/i/rAFR3mV7vhmwVqYUHpukigThVNWL2wiQ/ronfMS0/Uw2pnb
         ZRYcdVQ4nGDZO0PhxQX9mOy4aV0eihZYzjK4s6DPrgPSgryVStCxpA7czLBkHYqX6Nne
         GbIg==
X-Gm-Message-State: AGRZ1gKx4spOWb3iGTHGl8iU/1VPUXZDnvlWBzcSPrflmKYL6iD5bVCp
	wALjKRmnQBGdENMfu5DU1Zx0iw==
X-Received: by 2002:a25:4d44:: with SMTP id a65-v6mr27027240ybb.481.1541530528962;
        Tue, 06 Nov 2018 10:55:28 -0800 (PST)
Return-Path: <sean@poorly.run>
Received: from localhost ([2620:0:1013:11:ad55:b1db:adfe:3b9f])
        by smtp.gmail.com with ESMTPSA id a16-v6sm5598131ywa.109.2018.11.06.10.55.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 06 Nov 2018 10:55:27 -0800 (PST)
Date: Tue, 6 Nov 2018 13:55:27 -0500
From: Sean Paul <sean@poorly.run>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	daniel.vetter@ffwll.ch, robdclark@gmail.com, airlied@linux.ie,
	sean@poorly.run
Subject: Re: [PATCH DRM] drm: msm: disp: dpu1: Use DRM_DEV_* instead of DPU_*
Message-ID: <20181106185527.GW154160@art_vandelay>
References: <20181020180354.GA338@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181020180354.GA338@armorer>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sat, Oct 20, 2018 at 11:33:54PM +0530, Mamta Shukla wrote:
> Use DRM_DEV_ERROR/DEBUG instead of DPU_ERROR/DEBUG  to generate
> drm-formatted specific log messages in the Kernel log in case of
> multiple instances.
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Hi Mamta,
Thanks for sending this patch, but I don't think it's going to even compile.
DRM_DEV_* takes a struct device * pointer as the first argument, and it's not
being passed in anywhere. Make sure you compile test with CONFIG_DRM_MSM enabled

> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_core_irq.c       |  58 +++----
>  drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c      |  60 +++----
>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c           | 176 ++++++++++-----------
>  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c        | 134 ++++++++--------
>  .../gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c   |  40 ++---
>  .../gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c   |  42 ++---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c        |  10 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   2 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_cdm.c         |   2 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c         |   2 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c        |   2 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c          |   2 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c    |   2 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c        |   2 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c         |   2 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_irq.c            |   4 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |  90 +++++------
>  drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c           |  10 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c          | 134 ++++++++--------
>  drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c             |  96 +++++------
>  drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c           |  32 ++--
>  21 files changed, 451 insertions(+), 451 deletions(-)
> 

/snip

-- 
Sean Paul, Software Engineer, Google / Chromium OS


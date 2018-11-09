X-GM-THRID: 6614501510595215360
X-Received: by 2002:aed:35a4:: with SMTP id c33mr5650225qte.40.1541772347787;
        Fri, 09 Nov 2018 06:05:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5a0:: with SMTP id g32ls793627qve.5.gmail; Fri, 09 Nov
 2018 06:05:47 -0800 (PST)
X-Google-Smtp-Source: AJdET5fXKhipGC5W8qmo7aOGPb5B+gs2gK/r3ahtcwXv64AqR3RCixN7n3Coz+320KI0CkH9spLg
X-Received: by 2002:a0c:b5de:: with SMTP id o30mr5888113qvf.39.1541772347113;
        Fri, 09 Nov 2018 06:05:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541772346; cv=none;
        d=google.com; s=arc-20160816;
        b=xfVxvdbyhfbwGsWAm2XqkSPKEfkPUBoutlG3/CN3YkSAhq5HpAJh6vcMMjrAneO5nn
         7dsTK8hTpm0tpRMN15GVNRVww2z9AlSFyY3VLPYhrEFWxGl1EUWEhRGzmuwd9c/jX0bo
         G6L/cPh2eu8z67BtpxYICi2p1nmU6KY6x8S5BEVXvVDMl1g5hY+YZ+APb64u6n8Ef8/X
         6CrmCHKKuQINyJiciuziNwt93wgGTTvomhgZI1azwlqfFqvu0JwjATtjnIvyWRvtn11a
         om1TIv8qVMLGXtCjAxv6icxb/SQaMFLl+J0MN/37XpOKxH9/CJcjb+i0FKYPA6IY3sMh
         swGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l+gXlwe8dqT+YbF9EW3l7NYGMqSPvGSj9D1Apz7zx9A=;
        b=VJ48/Bd2kotW1ygarw3YOoUML95uiPLhOPhb+VqDmkgSKHGUAK+ZbMrGZRbG/UiAAI
         2yvsTxIkpjcO/+fP5fDgg3i0du+bxixlVQvrLBiCPu1vJH7tYVMRINCM5g9LZWcXgpI1
         HY0SEnq3rveFSJ+RyMbPI6Ijym/Udk/a/7eO1kz7+4WkE6ILyGcly3ggqWwucxbOcyyo
         xJH4m0I6Ofzzla7X+MfsacqSPiPdar3dvsW3VsFNuIyXj6dhZ/Z6m0bpqOA6ciu6fSQr
         FWqVOo1hO7I6Vw+wcqALDprr51+m43lAl4xbe9ExkphAn5uVJtB7zGbxFqNnEHnnvi6Z
         qR9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YQ7DhRoY;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-it1-x143.google.com (mail-it1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id d124si241118qka.5.2018.11.09.06.05.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 06:05:46 -0800 (PST)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YQ7DhRoY;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x143.google.com with SMTP id b7-v6so3126777itd.5
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Nov 2018 06:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l+gXlwe8dqT+YbF9EW3l7NYGMqSPvGSj9D1Apz7zx9A=;
        b=YQ7DhRoYJ6QxsoR8WqllxtBK6abLLy6SJo01giFXdJO8dshnYBGdB3MLeLIhncWgRC
         MZIQsfEa2Qw8f5UMVqkH3Akd5xxco8bQD6g5YsoGCK4i9afs5W2b7j0DWsIUUqF9R4tE
         gP2XnSZpzfRG8KtqGnV9ykcCb7s9ax5LXDgO7PhjT6O19J7pd+P+2LXPtk4/PzRxspU2
         j2grgL+NM5DhhDhK88UpPpyJ4kTFyySKojEiI9u9JmOoG4D9pq7kZDb/3sVmFjuNXZ4W
         6kvyUkIJ+hu4e/gJQtpkZjZ+e2RWzR9/jRXX79tT5OI5On1aIok3BpUJcncbjfbs2MBN
         KwDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l+gXlwe8dqT+YbF9EW3l7NYGMqSPvGSj9D1Apz7zx9A=;
        b=BarI7aAy5IGX/f1M5CewS76Pc7MfYW+2b50V7ln3dut97zJgiL+hqPF7cx+Ppr/Eyl
         6qPTr89+TAtB3PP+18OyygkOhWf4Znn7CP76QS2ISJNSNcmRgQcyYGnkbUxcqBNQVPka
         F5hr01jgyZbJ59lLyDlK4os8Xwt9/A/GA8CVBjX+mRvke1qEZzOjwSpYOZkpnsiHpcbG
         SXrbLOxJ+lSQ7HWxUOcZurvXSsJOZM5ViQ7LZ088A5yQNYtFpSZKTMQvrwn6WvVN/qv5
         GCDD9og9x60GM4EyTut6cfU4pK05fp14V1hpuSNhwvDne6VLfP0CN+UvJVbowaygASuy
         Ehdg==
X-Gm-Message-State: AGRZ1gKdQFCab9Whao1O8PIgbqgRZiIm0n8WfXW4x9P1DT+kPMze9BEL
	C3O9zsPgW9OSbnFzxQ++PZBW/gaZz3yiLRRXf4M=
X-Received: by 2002:a24:684a:: with SMTP id v71-v6mr1040764itb.137.1541772346402;
 Fri, 09 Nov 2018 06:05:46 -0800 (PST)
MIME-Version: 1.0
References: <20181020180354.GA338@armorer> <20181106185527.GW154160@art_vandelay>
In-Reply-To: <20181106185527.GW154160@art_vandelay>
From: Mamta Shukla <mamtashukla555@gmail.com>
Date: Fri, 9 Nov 2018 19:35:33 +0530
Message-ID: <CAMNCNOW3P7F0f_OQESA4xTh_Mesf2M+C4pHHFw5Aoye-6DQPqA@mail.gmail.com>
Subject: Re: [PATCH DRM] drm: msm: disp: dpu1: Use DRM_DEV_* instead of DPU_*
To: sean@poorly.run
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, 
	Daniel Vetter <daniel.vetter@ffwll.ch>, Rob Clark <robdclark@gmail.com>, airlied@linux.ie
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 7, 2018 at 12:25 AM Sean Paul <sean@poorly.run> wrote:
>
> On Sat, Oct 20, 2018 at 11:33:54PM +0530, Mamta Shukla wrote:
> > Use DRM_DEV_ERROR/DEBUG instead of DPU_ERROR/DEBUG  to generate
> > drm-formatted specific log messages in the Kernel log in case of
> > multiple instances.
> >
> > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
>
> Hi Mamta,
> Thanks for sending this patch, but I don't think it's going to even compile.
> DRM_DEV_* takes a struct device * pointer as the first argument, and it's not
> being passed in anywhere. Make sure you compile test with CONFIG_DRM_MSM enabled
>
Thank you for pointing this out. Definitely DRM_DEV_* requires pointer
to function or the device pointer along with
message string. I had compiled this before submitting the patch. But I
missed out enabling the DRM_MSM.
Is it good to write v2 of above patch with mentioning/stating pointer
to function so that in DEBUG message function
name is also available with error message?


> > ---
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_core_irq.c       |  58 +++----
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c      |  60 +++----
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c           | 176 ++++++++++-----------
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c        | 134 ++++++++--------
> >  .../gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c   |  40 ++---
> >  .../gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c   |  42 ++---
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c        |  10 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   2 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_cdm.c         |   2 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c         |   2 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c        |   2 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c          |   2 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c    |   2 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c        |   2 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c         |   2 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_irq.c            |   4 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |  90 +++++------
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c           |  10 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c          | 134 ++++++++--------
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c             |  96 +++++------
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c           |  32 ++--
> >  21 files changed, 451 insertions(+), 451 deletions(-)
> >
>
> /snip
>
> --
> Sean Paul, Software Engineer, Google / Chromium OS



-- 
Mamta Shukla


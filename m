X-GM-THRID: 6950245199494774784
X-Received: by 2002:a2e:998d:: with SMTP id w13mr760168lji.440.1618261398551;
        Mon, 12 Apr 2021 14:03:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5081:: with SMTP id f1ls626151lfm.2.gmail; Mon, 12 Apr
 2021 14:03:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwnOKTO93HS4s/isMSuRYTqxqRKy7S/z2TJelb5jBi2a7BDG+RscYJbyLXZmIorR1+KoA+m
X-Received: by 2002:ac2:411a:: with SMTP id b26mr20204160lfi.533.1618261396596;
        Mon, 12 Apr 2021 14:03:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618261396; cv=none;
        d=google.com; s=arc-20160816;
        b=WG/KGxgw6WQ+u3NxUiaKqehUyZXaLDfqc/zHhTL5YwYnyy6mJbhezLu1iX8MPesScq
         L0zgtqe42pch2AyXpXTfMUYDzbRetGibtIqlQeShSezcvN2HdEbisyLLzlftj71hqJSc
         CHZmV3nva8Efs0ShZJ3kbINXFtk0tc+uVWiY0OU8kpHu5Fz1yWX+eo9V/gaV5t9o7J0Y
         szAf02iBpMzDNhfpOPSFNbIJNWKzLPcwmoAZVvWjxYlexJJhyJOw8UbgvjpWxeQGLyE0
         pfjtV4YSHqTf/loQxL3apQKeQ7QZAxbF031b1DcBFAm7uCSfHXQ+pThN2QZL4DQnY36o
         tEZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=tejQOvetzkLVOxPunT8UzkJGBDOiONeuJmVicj5ShN8=;
        b=OHuG3f4gn1GPIXa0x4LdnNROeUIMg2Gmz6gzMInunk9YozeXEm4ax5CqSBsLdUH4O9
         +dhemyPJf2KuDK41+Hay9g0V+KArL5YSjLF3s2bHiS4sNaWA3XHmHH0Ok09Ylek/LH87
         YOUWVwupQsSp/pZs8nSsbapgk68dcSnYDconJBMUUNdQE3GJCvXy30PJjpcyVXc1Jt54
         lWbccZ1+t+UY27jw+xLJDhIqATQX5YR3s1QkQPPQQxdxNbW82HonZaiMXGipc5aiMegX
         kvp3C71fPrXx55cy5f3dr15S7fwnGRIfyNJqwJDZC1C+4TXt1Hjs9vR3j818iZLV5UeD
         hPsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v203si784618lfa.10.2021.04.12.14.03.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 14:03:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AQheAC670fbcrMD9lGwPXwBDXdLJzesId70hD?=
 =?us-ascii?q?6mlaTxtJfsuE0/20lPMA2hPuzBoXUncsmdePUZPvfVr385lp7Y4NeYqzRQWOgg?=
 =?us-ascii?q?SVBaxr8IeK+VHdMgLk8Oo178xdWoxfLPG1MlRgl8b952CDcuoI+9WM/KC2ieq2?=
 =?us-ascii?q?9R4EcShRd6pi4w1lYzz3LmRKQmB9b6YEKA=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,216,1613430000"; 
   d="scan'208";a="502866038"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 23:03:15 +0200
Date: Mon, 12 Apr 2021 23:03:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Daniel Vetter <daniel.vetter@ffwll.ch>
cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, 
    dri-devel <dri-devel@lists.freedesktop.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Melissa Wen <melissa.srw@gmail.com>, 
    Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
    Maxime Ripard <mripard@kernel.org>, 
    Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] gpu: drm: Replace "unsigned"
 with "unsigned int"
In-Reply-To: <CAKMK7uEzf64xB5TLS7VvyLVJmX4MBNnHcr3_n1zDq3hOVAm1Rg@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104122301470.19780@hadrien>
References: <20210412122056.28351-1-fmdefrancesco@gmail.com> <20210412122056.28351-2-fmdefrancesco@gmail.com> <CAKMK7uEzf64xB5TLS7VvyLVJmX4MBNnHcr3_n1zDq3hOVAm1Rg@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 12 Apr 2021, Daniel Vetter wrote:

> On Mon, Apr 12, 2021 at 2:21 PM Fabio M. De Francesco
> <fmdefrancesco@gmail.com> wrote:
> >
> > Replaced "unsigned with "unsigned int" since the latter is preferred.
> >
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
>
> Nit for the subjects: In drm we generally don't have the gpu prefix,
> but just the level below + what component. So for these two patches it
> would be drm/atomic-helpers: as prefix in the patch summary lines. Can
> you pls adjust that? Patches look good otherwise.

Fabio, you should select the subject line by looking at what others have
done on the same file (git log --oneline file.c).  Different parts of the
kernel have different strategies, so it is better to check every time.

julia


> Thanks, Daniel
>
> > ---
> >  drivers/gpu/drm/drm_atomic_helper.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> > index f2b3e28d938b..cd748ff61162 100644
> > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > @@ -106,7 +106,7 @@ static int handle_conflicting_encoders(struct drm_atomic_state *state,
> >         struct drm_connector *connector;
> >         struct drm_connector_list_iter conn_iter;
> >         struct drm_encoder *encoder;
> > -       unsigned encoder_mask = 0;
> > +       unsigned int encoder_mask = 0;
> >         int i, ret = 0;
> >
> >         /*
> > @@ -609,7 +609,7 @@ drm_atomic_helper_check_modeset(struct drm_device *dev,
> >         struct drm_connector *connector;
> >         struct drm_connector_state *old_connector_state, *new_connector_state;
> >         int i, ret;
> > -       unsigned connectors_mask = 0;
> > +       unsigned int connectors_mask = 0;
> >
> >         for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
> >                 bool has_connectors =
> > @@ -1478,7 +1478,7 @@ drm_atomic_helper_wait_for_vblanks(struct drm_device *dev,
> >         struct drm_crtc *crtc;
> >         struct drm_crtc_state *old_crtc_state, *new_crtc_state;
> >         int i, ret;
> > -       unsigned crtc_mask = 0;
> > +       unsigned int crtc_mask = 0;
> >
> >          /*
> >           * Legacy cursor ioctls are completely unsynced, and userspace
> > @@ -2575,7 +2575,7 @@ drm_atomic_helper_commit_planes_on_crtc(struct drm_crtc_state *old_crtc_state)
> >         struct drm_crtc_state *new_crtc_state =
> >                 drm_atomic_get_new_crtc_state(old_state, crtc);
> >         struct drm_plane *plane;
> > -       unsigned plane_mask;
> > +       unsigned int plane_mask;
> >
> >         plane_mask = old_crtc_state->plane_mask;
> >         plane_mask |= new_crtc_state->plane_mask;
> > --
> > 2.31.1
> >
>
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKMK7uEzf64xB5TLS7VvyLVJmX4MBNnHcr3_n1zDq3hOVAm1Rg%40mail.gmail.com.
>


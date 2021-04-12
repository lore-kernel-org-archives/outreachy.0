X-GM-THRID: 6950245199494774784
X-Received: by 2002:a25:e80e:: with SMTP id k14mr36897670ybd.271.1618230748219;
        Mon, 12 Apr 2021 05:32:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:81c6:: with SMTP id n6ls7377760ybm.4.gmail; Mon, 12 Apr
 2021 05:32:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxs4z3SYY8n0uwXkTC7hxb8qhDNe3RHDK8rDtpHYrG7JiCVmMge+h8Sf/i8tMz0Ym+IZS3X
X-Received: by 2002:a25:4f83:: with SMTP id d125mr33097745ybb.484.1618230747090;
        Mon, 12 Apr 2021 05:32:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618230747; cv=none;
        d=google.com; s=arc-20160816;
        b=lbJy3XesrrVPf7CiZaDOz6+MOX5OQ93cauc2csdyxGC/jMdpS3lIlQuy05x8q2O5j1
         Khvtq1cT+B/E9NJtW6yfom8xKZpdG/yK+mopWQgzgsri8EKJ1p2zonwuspaihPP2uuDU
         TjBS1uW7nzcpwHdLBKmNStbaN90ifQN9j5siqm2aVIWmP0osYj99HQtX2tyEjAE4xXtC
         i/IRGDH3xxsu3RojLbPbhuDDy/nkqhlspa/XD2AB4Tv6U3gkjWLnT67fac6iIOsTIhX7
         ZN7a5lFtUOrl1010eqHuYiDgOm6pcf3FB/9S0VOJ8nw/hLOVLmHKsqyCiZ+foRgY1Fs8
         aDrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zAbEERU9Z0GRvzFVMLnHRE6+8DF0Uz1ZfFddY3ugnyA=;
        b=ED4wbx+zIbKQ4c9n9TTbOMgjXTGsi422J2zUVUaoQ3ARaF9mDo5RR9AMFGzQMTLRfx
         mc9+Ugmd0Z+ELNqBC3VEKMMpViTMMRXHiNBClL+pAqeLbBxvKtGUG5pD6X9NwAVbOK7A
         p3rNVyHpTBGVT1E0dsUeLwOlDTzOvFBQYiu+C3piDSlkgJQ1yEpVzbUT5V6wIVcLappl
         NDaHT66BAfBpvQguhpnLrEU1TRdfF4+HZiV2GIQDvN/N85qvyWx+aTp2FBu7MuZ92ZSD
         XVilgVVP0ywkS8V77mYYqMSTnXtEI5GXV0neSyrX0y98u0Ylw0UeGCRoHN0ASmPXQLoO
         QbxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=SrYJl92C;
       spf=neutral (google.com: 2607:f8b0:4864:20::334 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Return-Path: <daniel.vetter@ffwll.ch>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id l14si562182ybp.4.2021.04.12.05.32.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:32:26 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::334 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=SrYJl92C;
       spf=neutral (google.com: 2607:f8b0:4864:20::334 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Received: by mail-ot1-x334.google.com with SMTP id v19-20020a0568300913b029028423b78c2dso3992397ott.8
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zAbEERU9Z0GRvzFVMLnHRE6+8DF0Uz1ZfFddY3ugnyA=;
        b=SrYJl92CjxSoYrwOug1b0tkxH9c361upsDw6OQCPoJ1rzOiABXR6o+eTvxdylf6/dc
         BPWuuRNyt/bi4lvo/XIY4YNTfKAZafjnJWQ2bCvqAtx9tDOgVKvG4bEjN/oGqX+I9Mnn
         zQIZ39QwjesFlpkRYdDJ0uliAmwCtu6jdk0eo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zAbEERU9Z0GRvzFVMLnHRE6+8DF0Uz1ZfFddY3ugnyA=;
        b=sy+WcH7J4yx+UuByUCl/Iwi3UtboNXUSbl6NsGzdxqEf8+5U9/MIKQc/jthmiGwhJC
         1/y19Ybu7bYu3FaUQhKCfm0qu51mHZaBYnniHZcjhgpxRp60OW93GlE0XSAZ+4yvi4ER
         JhE8vHcBcLqk17ZnBCdBVPH2BaMg/OP9bquGshrRXB+5g6Qupl7sa3Quh6ni+gFFupVa
         qeuWUiYSBmcwEhwfqURLXrW5UC3RC84B6x/5+TFqqAkb8lmtKLyvzOEbbshPRaGh7ZQK
         ag9+4XaxlTFl2x52lRMX5x4XMZL93Yrb+VVpNklNHK2Hx2amcSJVx23oynKraS2AAMCs
         /y3Q==
X-Gm-Message-State: AOAM531BPQbkjHWPaXlTeNnbVuy/miGnuSZ4xKHG3OSn2IcCM87HAQLl
	YqdSzmZ6zPIgAZLKoUg1t/Sq7Vt+KdBDzKl3yNmsuA==
X-Received: by 2002:a9d:7b4e:: with SMTP id f14mr24378174oto.281.1618230746369;
 Mon, 12 Apr 2021 05:32:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210412122056.28351-1-fmdefrancesco@gmail.com> <20210412122056.28351-2-fmdefrancesco@gmail.com>
In-Reply-To: <20210412122056.28351-2-fmdefrancesco@gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 12 Apr 2021 14:32:14 +0200
Message-ID: <CAKMK7uEzf64xB5TLS7VvyLVJmX4MBNnHcr3_n1zDq3hOVAm1Rg@mail.gmail.com>
Subject: Re: [PATCH 1/2] gpu: drm: Replace "unsigned" with "unsigned int"
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, Melissa Wen <melissa.srw@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 12, 2021 at 2:21 PM Fabio M. De Francesco
<fmdefrancesco@gmail.com> wrote:
>
> Replaced "unsigned with "unsigned int" since the latter is preferred.
>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>

Nit for the subjects: In drm we generally don't have the gpu prefix,
but just the level below + what component. So for these two patches it
would be drm/atomic-helpers: as prefix in the patch summary lines. Can
you pls adjust that? Patches look good otherwise.
Thanks, Daniel

> ---
>  drivers/gpu/drm/drm_atomic_helper.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> index f2b3e28d938b..cd748ff61162 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -106,7 +106,7 @@ static int handle_conflicting_encoders(struct drm_atomic_state *state,
>         struct drm_connector *connector;
>         struct drm_connector_list_iter conn_iter;
>         struct drm_encoder *encoder;
> -       unsigned encoder_mask = 0;
> +       unsigned int encoder_mask = 0;
>         int i, ret = 0;
>
>         /*
> @@ -609,7 +609,7 @@ drm_atomic_helper_check_modeset(struct drm_device *dev,
>         struct drm_connector *connector;
>         struct drm_connector_state *old_connector_state, *new_connector_state;
>         int i, ret;
> -       unsigned connectors_mask = 0;
> +       unsigned int connectors_mask = 0;
>
>         for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
>                 bool has_connectors =
> @@ -1478,7 +1478,7 @@ drm_atomic_helper_wait_for_vblanks(struct drm_device *dev,
>         struct drm_crtc *crtc;
>         struct drm_crtc_state *old_crtc_state, *new_crtc_state;
>         int i, ret;
> -       unsigned crtc_mask = 0;
> +       unsigned int crtc_mask = 0;
>
>          /*
>           * Legacy cursor ioctls are completely unsynced, and userspace
> @@ -2575,7 +2575,7 @@ drm_atomic_helper_commit_planes_on_crtc(struct drm_crtc_state *old_crtc_state)
>         struct drm_crtc_state *new_crtc_state =
>                 drm_atomic_get_new_crtc_state(old_state, crtc);
>         struct drm_plane *plane;
> -       unsigned plane_mask;
> +       unsigned int plane_mask;
>
>         plane_mask = old_crtc_state->plane_mask;
>         plane_mask |= new_crtc_state->plane_mask;
> --
> 2.31.1
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


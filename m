X-GM-THRID: 6951472733283680256
X-Received: by 2002:a1c:4b19:: with SMTP id y25mr4768796wma.91.1618516630207;
        Thu, 15 Apr 2021 12:57:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls3142299wrd.3.gmail; Thu, 15 Apr
 2021 12:57:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzZDVBE9suzGZwk0+OeFtsjscQLTs3NTT3bq91/l4Xb0WoJgE/LBTXe1MtpQzqzAk67GlQt
X-Received: by 2002:a5d:4bce:: with SMTP id l14mr5244254wrt.359.1618516628617;
        Thu, 15 Apr 2021 12:57:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618516628; cv=none;
        d=google.com; s=arc-20160816;
        b=mr9fZpj06gLYOmwm0Xyvr2pCS5Cz9TLMkLdvnxWj+Gt4ioGFeAsxcX7Jox/x0iiSIk
         93a0PTdWSCdkXSYo11dmsjUBcr/tw8EEESNS4br4myHBUz8VJy+51kQ+kOU2zAweqV5d
         dzviGaJCfxwTqGQ3tANNnPxBwb8CggkiYvGPScwHTb/QqWFtb3tB7HLNTXO3TS46GdmY
         LuroEA7l+GbF/2TDQ9gCt5Zt2p2kfdpygGrHAQiSyqRaz7gxJPyXwbCpPBRLEX9FX8QT
         ygRmOottSWEvcOHsERS2O6UZreihYUcpJJlNJiTwi9ajpugFFEE/r3nwCQ1EzucEuztl
         9gSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=j4l+bjRXHsFutRZ08NnXtHpFhDNN/r8p94lIy8U9/j0=;
        b=JdPzoMhOQRfBrqYEvC/PU+7CsLQ/OKWx8UVhcWB54pHLfkt0AOzLPS0WymISVgnvsv
         9Ka0RlsWvbX85rB9t2RkpNHhqXqYYxe2Im7EA8y65MJvUAY0jGJgPvDe0WCZVwGZ6unu
         VSbYPsdQkHpkMv/wXL/yv5qebaWTiqnlshBOIg36mz3xzGlAnDsiCv0AYS00EJD71gIl
         CuSe9hFFB/Udv5pYfZUOn2ehEbiIbytx4ttMMrooKH+/PSqmfF9ta2owpCLiJJ464rNW
         SmHA4+hBEQA9H9to9/HA+BOGXfsZ/qvEjySb72XCvxrH0AI43r3Rtg3xPaMn47f1WiHW
         LL0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x16si195206wmi.1.2021.04.15.12.57.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 12:57:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.82,225,1613430000"; 
   d="scan'208";a="378797013"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Apr 2021 21:57:07 +0200
Date: Thu, 15 Apr 2021 21:57:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com, 
    Daniel Vetter <daniel.vetter@ffwll.ch>, 
    Melissa Wen <melissa.srw@gmail.com>, Ben Skeggs <bskeggs@redhat.com>, 
    David Airlie <airlied@linux.ie>
Subject: Re: [Outreachy kernel] [PATCH] drm: nouveau: dispnv50: disp.c: Remove
 set but unused variables
In-Reply-To: <20210415194423.4880-1-fmdefrancesco@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104152156530.32851@hadrien>
References: <20210415194423.4880-1-fmdefrancesco@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 15 Apr 2021, Fabio M. De Francesco wrote:

> Removed two set but unused variables.

Would it be useful to use the values?

julia

>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/gpu/drm/nouveau/dispnv50/disp.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
> index 196612addfd6..828f48d5bdd4 100644
> --- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
> +++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
> @@ -1386,12 +1386,11 @@ nv50_mstm_cleanup(struct nv50_mstm *mstm)
>  {
>  	struct nouveau_drm *drm = nouveau_drm(mstm->outp->base.base.dev);
>  	struct drm_encoder *encoder;
> -	int ret;
>
>  	NV_ATOMIC(drm, "%s: mstm cleanup\n", mstm->outp->base.base.name);
> -	ret = drm_dp_check_act_status(&mstm->mgr);
> +	drm_dp_check_act_status(&mstm->mgr);
>
> -	ret = drm_dp_update_payload_part2(&mstm->mgr);
> +	drm_dp_update_payload_part2(&mstm->mgr);
>
>  	drm_for_each_encoder(encoder, mstm->outp->base.base.dev) {
>  		if (encoder->encoder_type == DRM_MODE_ENCODER_DPMST) {
> @@ -1410,10 +1409,9 @@ nv50_mstm_prepare(struct nv50_mstm *mstm)
>  {
>  	struct nouveau_drm *drm = nouveau_drm(mstm->outp->base.base.dev);
>  	struct drm_encoder *encoder;
> -	int ret;
>
>  	NV_ATOMIC(drm, "%s: mstm prepare\n", mstm->outp->base.base.name);
> -	ret = drm_dp_update_payload_part1(&mstm->mgr);
> +	drm_dp_update_payload_part1(&mstm->mgr);
>
>  	drm_for_each_encoder(encoder, mstm->outp->base.base.dev) {
>  		if (encoder->encoder_type == DRM_MODE_ENCODER_DPMST) {
> --
> 2.31.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210415194423.4880-1-fmdefrancesco%40gmail.com.
>


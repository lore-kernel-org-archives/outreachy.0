X-GM-THRID: 6951472733283680256
X-Received: by 2002:adf:f80b:: with SMTP id s11mr4018476wrp.231.1618521386196;
        Thu, 15 Apr 2021 14:16:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6c6a:: with SMTP id r10ls3315850wrz.0.gmail; Thu, 15 Apr
 2021 14:16:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzfIwHEAiFMmLrxTcTxiNSR27t10JX6zROh3sSZ/oFeckClSkgJocvWiLngws8YILBwVuKl
X-Received: by 2002:adf:e58f:: with SMTP id l15mr5362992wrm.175.1618521384587;
        Thu, 15 Apr 2021 14:16:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618521384; cv=none;
        d=google.com; s=arc-20160816;
        b=Ph4/O6y/poLibQqzKQkke7moKw3oUAr6A47dsMcoFpfJ93jp/A+EeFolF4dGTfyCKt
         hN66Q99kQH8COorm0CbwzEZdOFPsgwkVcxvbbg2cq/E2t+E6CT0rxQqw2s8zIAaRUPLn
         Y2UfSBT+m8vHzTMJ4DiMet9oyGubm6OQJ58/Mn8Su8eX/xb+iVzfAs1FXhlOHLmIk+52
         0TFfP4XI0KMQvgF0wphDaABwXBkjQSrPvL71FiR2juxux3BlCjUDZP4xSEpMh53vb43+
         lNgMZdyomco1ollyKsyX52R/nqi4DVq95A0f0cJMfQWOAghVrfQXZdSVQoVP0vDP8mbG
         oTGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=uCob9RPHEvNhHJKUwZ+lPkR9eIDaMbUPza31Arlxmzw=;
        b=rVyIyJzgfxH0Lqql5yTR9uZxT7sP/djGaqwvar0wl//xqjrRl8U/m7lM+DkkzXOVp6
         fxIiOJXt9REnPhOTaooZPaDkRcWTDVVRhqUvrwBgtlTXLVos/ANyUVaHwPWGu5UNHv0G
         KllTpVB/V2n0oMMdXWQs3XJ734cm7OSa+MaMlu8sIKK4LzONZkmufrYzJZvxe5kE9jnu
         SKP3Xwl86qJX9lrHvlV3LA7iUyNzQnJo+1RInHdKvSTLA+Y9c98LudfmRRp73OdVTE4T
         ng9tigX9BoXNg0lmidtqrqBLNGjZTUNk3z2PPttO5cJBCV2A8jk5wNgL3vp0UzbHK8Ey
         qfuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p65si551474wmp.0.2021.04.15.14.16.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 14:16:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AqVU6FavuN/eu2Z7CAjhyDYJc7skDh9V00zAX?=
 =?us-ascii?q?/kB9WHVpW+afkN2jm+le6A/shF8qKRIdsP2jGI3Fe3PT8pZp/ZIcVI3IYCDKsH?=
 =?us-ascii?q?alRbsO0aLM2DvlcheTysd51b18N5R4EsH6F1Jgjc33iTPIduoI5Pmi3OSWifzF?=
 =?us-ascii?q?z3FrJDsLV4hF4x1iAgiWVm1aLTMpObMDGJCR5tVKqlObEBx8Uu2AGnIHU+Lfzu?=
 =?us-ascii?q?erqLvaZ3c9aCIP2U21phyCzdfBYnql4is=3D?=
X-IronPort-AV: E=Sophos;i="5.82,225,1613430000"; 
   d="scan'208";a="378800570"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Apr 2021 23:16:23 +0200
Date: Thu, 15 Apr 2021 23:16:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com, 
    Daniel Vetter <daniel.vetter@ffwll.ch>, 
    Melissa Wen <melissa.srw@gmail.com>, Ben Skeggs <bskeggs@redhat.com>, 
    David Airlie <airlied@linux.ie>
Subject: Re: [Outreachy kernel] [PATCH] drm: nouveau: dispnv50: disp.c: Remove
 set but unused variables
In-Reply-To: <3639521.dS9dJRvPBs@linux.local>
Message-ID: <alpine.DEB.2.22.394.2104152316040.32851@hadrien>
References: <20210415194423.4880-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104152156530.32851@hadrien> <3639521.dS9dJRvPBs@linux.local>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 15 Apr 2021, Fabio M. De Francesco wrote:

> On Thursday, April 15, 2021 9:57:07 PM CEST Julia Lawall wrote:
> > On Thu, 15 Apr 2021, Fabio M. De Francesco wrote:
> > > Removed two set but unused variables.
> >
> > Would it be useful to use the values?
> >
> It would be useful if one wants to check returns for errors (which are
> signaled by res different than 0).
>
> However most other drm code never checks it (as in drivers/gpu/drm/radeon/
> radeon_dp_mst.c: lines 424 and 453).
>
> Differently, drivers/gpu/drm/i915/display/intel_dp_mst.c does some logging:
>
> ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr);
>         if (ret) {
>                 drm_dbg_kms(&i915->drm, "failed to update payload %d\n", ret);
>
> I could do like the second example, but I'm not sure maintainers would like
> it.

OK, perhaps then it is not necessary.

julia

>
> What do you think about it?
>
> Thanks,
>
> Fabio
> >
> > julia
> >
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > >
> > >  drivers/gpu/drm/nouveau/dispnv50/disp.c | 8 +++-----
> > >  1 file changed, 3 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c
> > > b/drivers/gpu/drm/nouveau/dispnv50/disp.c index
> > > 196612addfd6..828f48d5bdd4 100644
> > > --- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
> > > +++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
> > > @@ -1386,12 +1386,11 @@ nv50_mstm_cleanup(struct nv50_mstm *mstm)
> > >
> > >  {
> > >
> > >  	struct nouveau_drm *drm = nouveau_drm(mstm->outp->base.base.dev);
> > >  	struct drm_encoder *encoder;
> > >
> > > -	int ret;
> > >
> > >  	NV_ATOMIC(drm, "%s: mstm cleanup\n", mstm->outp->base.base.name);
> > >
> > > -	ret = drm_dp_check_act_status(&mstm->mgr);
> > > +	drm_dp_check_act_status(&mstm->mgr);
> > >
> > > -	ret = drm_dp_update_payload_part2(&mstm->mgr);
> > > +	drm_dp_update_payload_part2(&mstm->mgr);
> > >
> > >  	drm_for_each_encoder(encoder, mstm->outp->base.base.dev) {
> > >
> > >  		if (encoder->encoder_type == DRM_MODE_ENCODER_DPMST) {
> > >
> > > @@ -1410,10 +1409,9 @@ nv50_mstm_prepare(struct nv50_mstm *mstm)
> > >
> > >  {
> > >
> > >  	struct nouveau_drm *drm = nouveau_drm(mstm->outp->base.base.dev);
> > >  	struct drm_encoder *encoder;
> > >
> > > -	int ret;
> > >
> > >  	NV_ATOMIC(drm, "%s: mstm prepare\n", mstm->outp->base.base.name);
> > >
> > > -	ret = drm_dp_update_payload_part1(&mstm->mgr);
> > > +	drm_dp_update_payload_part1(&mstm->mgr);
> > >
> > >  	drm_for_each_encoder(encoder, mstm->outp->base.base.dev) {
> > >
> > >  		if (encoder->encoder_type == DRM_MODE_ENCODER_DPMST) {
> > >
> > > --
> > > 2.31.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> > > Groups "outreachy-kernel" group. To unsubscribe from this group and
> > > stop receiving emails from it, send an email to
> > > outreachy-kernel+unsubscribe@googlegroups.com. To view this discussion
> > > on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/20210415194423.4880
> > > -1-fmdefrancesco%40gmail.com.
>
>
>
>
>


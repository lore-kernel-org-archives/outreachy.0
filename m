X-GM-THRID: 6618532112309944320
X-Received: by 2002:a9d:5d02:: with SMTP id b2mr2574765oti.36.1541007409141;
        Wed, 31 Oct 2018 10:36:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:338e:: with SMTP id u14ls687323otc.9.gmail; Wed, 31 Oct
 2018 10:36:48 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fEIk72EBn3o9WAI6CNOJAiSM7L43jQdVne9zhw/T7AYHKk9/cEJNi/UW3tCX75SCJZQVWQ
X-Received: by 2002:a9d:6351:: with SMTP id y17mr2552476otk.65.1541007408421;
        Wed, 31 Oct 2018 10:36:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541007408; cv=none;
        d=google.com; s=arc-20160816;
        b=NLs+KtlRn94Ri96mgSIuCPT88zvQBNMWbRbmrZgXzi3FylnTVKFwupv5ArbqT4rN5b
         5tfXRvCQkVY1g3xd3qo1iEeuwUym8f8iwucyIET5d9RcRG//EnRxy00/ZYTpe7yuhXdw
         NXNwBoHUVn2u/nslzFxeLOG0JE7vsV/nl3hr9SBKQ+2aZyUCsC1Fyc5XRPE/X8lFrLWO
         0YW7/8DpoPMWquZC5PumSPadKnm2XxKV/IW9oJWrDve3djRQG4vIo3ZEMM6UxK8ruyg1
         3q0cwwqITi50c6HpeuKQdDZqAEOX0nCDFvG16mRr6j4ZEk9UJqFZYND83wHSqjW3Esb5
         ovqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=eBBHziVyVC2qdRw0j3ufam70h3Yk3Hm0Gkooyp0f5Lo=;
        b=dHM9wiF2JhvwwMxWpEQVOPC9FlHwFMrdr1pwwKXi9+sXkLehQ9wEXsYncrPWe4QI64
         5d707o5yptGKv/CdFweF2CQqxUa765ISPEEX88MsX5+aspliFoI7nB+Kg6+qUKPZg0aB
         nx0A2Irq9VHMwJsQDpL2f7SRLSSSVjs5R26B0kEBZZ+tWpZ9mPVbovsIOjafO+IQwzF8
         SBgvhM03GBLsLZB5uQ3WzSsgX8KJAlB3Xum4jfvreI5ZbZ0AMaAzPY2e29p3J8Ho1z23
         HtRzaif/fHa8qgsz7zVXgNYjeRd7gfEkiq/NPpUclkYL23uj/DMFXFF+zR8EEf0a59R/
         Ps3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kZ4YQP5u;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id p24si410442otk.4.2018.10.31.10.36.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 10:36:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kZ4YQP5u;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72f.google.com with SMTP id e4so10607400qkh.6
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 10:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eBBHziVyVC2qdRw0j3ufam70h3Yk3Hm0Gkooyp0f5Lo=;
        b=kZ4YQP5uh8lsuQkBLudYlzDV61s1/pBLa0gx9XUhi2JZLLGu9YePTZqOEeX3JOqudn
         N1oVAtNaM1GI5nsxodtEuOYHB5wHfh9QgY98eOmp4CscXSBm/OlpDcd2SpwPRjFX85pc
         oD+aqsXtMh8/mYSZkB32VZYNUiGLH7mDrXGrX7ux8Ccd6uNGZWdFkgMJhtVsaVT+jJNY
         krkOyIRXWH2UR0gn+nwsbfWAdXuos9KiNDEtBJdDDbHAaGzzuA1HtTk/At8kUXrG6noL
         TMWAG+vKvytcAjhhMgJmlCJTE1N+ao7sqF2dV60FN2DUYjGNbg9VpeF4wYe3c3OPuXeo
         hqrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eBBHziVyVC2qdRw0j3ufam70h3Yk3Hm0Gkooyp0f5Lo=;
        b=YzynuZIr0ohUSY5rQmMpC1WRHwvnxJk4GKvLMs8SEuRnJS5rRngbRbME0+Vj9m+nJx
         /oC72EIq9Zpsb5iQPtvcRkTKc2TsfajJFyhLmG3QeL5MGacRYT7Wm6nu4qXZ22tp7VFL
         xNhgHLSWywxIKzRQ0Ek8f7iM4tQDnSRLzCVBFowGS5pPFrKxVRo8cRZtgzHFnPsR78eF
         eOyl0ct0FtIIoL3NFLFK1nfxpnxJYjNswQNHKhIXG3hOLqnG4jZu9dHorwP/IVeM5QGo
         5W7QrDsqzfgBWzqlmx2+xsSOJqI45qVnCHqoEFmkhOBMT/TTnosq+AjZrMMDtOMfkxPo
         19/Q==
X-Gm-Message-State: AGRZ1gJtyb6eeVs3dn0Rb7qr7Jh3nJ2Qges0IqxRFboJiw0RBnbUoM7b
	Q+YCTbjcB5kA0MraXrxl2u+yJhz5Fwg=
X-Received: by 2002:a37:9b82:: with SMTP id d124mr3337892qke.172.1541007407982;
        Wed, 31 Oct 2018 10:36:47 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id l36-v6sm12076301qtc.80.2018.10.31.10.36.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 10:36:47 -0700 (PDT)
Date: Wed, 31 Oct 2018 14:36:42 -0300
From: Shayenne Moura <shayenneluzmoura@gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: "Nikula, Jani" <jani.nikula@linux.intel.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, Dave Airlie <airlied@linux.ie>,
	outreachy-kernel@googlegroups.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [Outreachy kernel] Re: [PATCH] drm: Remove 80-column line in
 drm_mode_object.c
Message-ID: <20181031173642.csdlaq2ajyqhum6p@smtp.gmail.com>
References: <20181031144445.vrdngzj3jclforta@smtp.gmail.com>
 <87a7mudu8t.fsf@intel.com>
 <CAKMK7uEuoNRT7g+iRVTmcjt6zS5dotATrFgV4QTLxs2Fg33OYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uEuoNRT7g+iRVTmcjt6zS5dotATrFgV4QTLxs2Fg33OYQ@mail.gmail.com>
User-Agent: NeoMutt/20171215

On 10/31, Daniel Vetter wrote:
> On Wed, Oct 31, 2018 at 4:13 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >
> > On Wed, 31 Oct 2018, Shayenne da Luz Moura <shayenneluzmoura@gmail.com> wrote:
> > > Add a new variable to make the drm_mode_object comparison before
> > > idr_alloc and decrease line size.
> > >
> > > Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> > > ---
> > >  drivers/gpu/drm/drm_mode_object.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
> > > index be8b754eaf60..4b9eafddb409 100644
> > > --- a/drivers/gpu/drm/drm_mode_object.c
> > > +++ b/drivers/gpu/drm/drm_mode_object.c
> > > @@ -36,9 +36,10 @@ int __drm_mode_object_add(struct drm_device *dev, struct drm_mode_object *obj,
> > >                         void (*obj_free_cb)(struct kref *kref))
> > >  {
> > >       int ret;
> > > +     struct drm_mode_object *obj_tmp = register_obj ? obj : NULL;
> > >
> > >       mutex_lock(&dev->mode_config.idr_mutex);
> > > -     ret = idr_alloc(&dev->mode_config.crtc_idr, register_obj ? obj : NULL, 1, 0, GFP_KERNEL);
> > > +     ret = idr_alloc(&dev->mode_config.crtc_idr, obj_tmp, 1, 0, GFP_KERNEL);
> >
> > Please don't send checkpatch "fixes" to adhere to the 80-column rule. Or
> > at least use --max-line-length=100 or something to look for worse
> > offenders than this.
> >
> > And if you insist, please just add a newline and proper indentation
> > after "NULL," instead of adding a temporary variable.
> 
> Breaking the line after NULL, seems reasonable, I'd be happy to merge that.
> -Daniel

Okay, I will send a new version.

Thank you!


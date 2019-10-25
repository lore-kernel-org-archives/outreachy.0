X-GM-THRID: 6751675507334447104
X-Received: by 2002:a5d:6785:: with SMTP id v5mr551563wru.174.1572032434716;
        Fri, 25 Oct 2019 12:40:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fa0f:: with SMTP id m15ls6683526wrr.13.gmail; Fri, 25
 Oct 2019 12:40:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzEQHBixYFmOw7fXCPCr9myfqKLLf1IvTqepyDam02DvJhT2DzVlYRVUxD14l4gIgVX98lC
X-Received: by 2002:a5d:404d:: with SMTP id w13mr4700908wrp.185.1572032433445;
        Fri, 25 Oct 2019 12:40:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572032433; cv=none;
        d=google.com; s=arc-20160816;
        b=lJOoWwYPJ1GgIvm+T4KTmtMcUNG+IkQ/559wY55YZK0HQoj2kN/5CUOUW8HAoCLLPm
         mNyhLhYe7O41mHlrdbOQo2PEL+WE7ntKuxpYXTSq926Ef1Gtacw0EZVT9rplvRpJBxHr
         PZZtGTHEqh7kM1xmYEuIfwXcQzkGyK/+IZ0YsxLtkPQOjSP6ydsixtoKP77vzG+GMOvh
         POetZq/lDVdDWb+TxRRHdysr/+dpEDl9uLfBFnmiQZePn9/M+awWZDIV1LnHJXb1PZRw
         syktjjZNHg06ZlFup8BeRthjT9YZ3ORlaZdM2kt/5fiXIHLqg/Ns6CLTUmJ4FYDCJgqb
         Hlqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2Gj222psC+ydWsaF5gMlny1BmmWIVdou0S6Ni7ju44k=;
        b=O03iobdYJYQiZdWx1pcQJFkn8161KKimtsAPFm6TI7TgyN15Sd/xc5Wxca6GRsbjv0
         ZNTziesaFHCqbxRmlnpXFrfchSlJuZfd4LoI+ecD95fkZsqPTteW14Zc6MVUCblnuYsj
         rvK/N0cK7fIeNdQnMiQeM8UuHUOmuRicdx5c2ZomFbudpj1tTv/sEDYj4Yg8vy3yX3jJ
         YrlLF/nNBWgNoqTVAl9FZeRSsnsCoMM+U2U71Lkrl/hXYxkHy3NTgMTZhNkewd2nUjfo
         30gxpqysNhpWxHl8nVAOFf7FRJNwTtmYOOsBefCPXt/XIoR13xfl1KPoSp4u0V7/Olg/
         3mLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=SlrAb0Vp;
       spf=neutral (google.com: 2a00:1450:4864:20::441 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id o185si462756wme.1.2019.10.25.12.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 12:40:33 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::441 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=SlrAb0Vp;
       spf=neutral (google.com: 2a00:1450:4864:20::441 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wr1-x441.google.com with SMTP id t16so3655567wrr.1
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 12:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=2Gj222psC+ydWsaF5gMlny1BmmWIVdou0S6Ni7ju44k=;
        b=SlrAb0VpRC2LidQiFdSzxi13PPngSwAVFMlhwTS3HufxE9huKhmIAgqmIR//798lPx
         bOQ2RR/GU0hW0KqsOP8l98Ar1lQDKXoQA/L6z9fLQxb/D/WZFmMR+SdgcBbZtxTMxGLx
         RFNjhh0n5RhjmOQPhAXid/4PH1covWIixTMlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=2Gj222psC+ydWsaF5gMlny1BmmWIVdou0S6Ni7ju44k=;
        b=EwjV6reQpWMa103qHSQYBe6IFegB4hlBLM07u5MfU4tKkf1ZxeikDZ20QNGnsrbFy1
         Cx1NdDvv/vdvL6x/a9f6yYf7HGsGruWUsIR5Bh+2xCo3zLxa9KjcxNrFNitFneuLHjeQ
         mNKDC1Fyz75JXaoa89ELxcQ5OJCVAG8ofmLvn6DBpUMwGlHbZVz62BzdxRbkng9p8syk
         TVXmZzOQPmyy+1kcIlDnkny9cYjrRoNfmZDfGmlApEeE1lDZmtAZWihyydJEDb9pBCel
         SO3X32HUgMF0oqhi46hIdkdTLa059PJqqABmtHnAN+20Z4realRzY5yCap7liUBDcSgI
         LHNg==
X-Gm-Message-State: APjAAAWap/Uz3YKVxsGjHUgZiS4OiZg7Z0QVuRUoM2tZgLUcdQlDy8Od
	tIWpKOgCJwd3xyKKNLWxf2vxnw==
X-Received: by 2002:a05:6000:351:: with SMTP id e17mr4260765wre.96.1572032432883;
        Fri, 25 Oct 2019 12:40:32 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net. [212.51.149.96])
        by smtp.gmail.com with ESMTPSA id r65sm3210045wmr.9.2019.10.25.12.40.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2019 12:40:31 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 25 Oct 2019 21:40:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Wambui Karuga <wambui.karugax@gmail.com>,
	dri-devel@lists.freedesktop.org, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, sean@poorly.run, airlied@linux.ie,
	daniel@ffwll.ch, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy][PATCH] drm: use DIV_ROUND_UP
 helper macro for calculations
Message-ID: <20191025194029.GU11828@phenom.ffwll.local>
Mail-Followup-To: Julia Lawall <julia.lawall@lip6.fr>,
	Wambui Karuga <wambui.karugax@gmail.com>,
	dri-devel@lists.freedesktop.org, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, sean@poorly.run, airlied@linux.ie,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20191025094907.3582-1-wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910251212070.3307@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910251212070.3307@hadrien>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Oct 25, 2019 at 12:12:23PM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 25 Oct 2019, Wambui Karuga wrote:
> 
> > Replace open coded divisor calculations with the DIV_ROUND_UP kernel
> > macro for better readability.
> > Issue found using coccinelle:
> > @@
> > expression n,d;
> > @@
> > (
> > - ((n + d - 1) / d)
> > + DIV_ROUND_UP(n,d)
> > |
> > - ((n + (d - 1)) / d)
> > + DIV_ROUND_UP(n,d)
> > )
> >
> > Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Applied to drm-misc-next, thanks for your patch.
-Daniel

> 
> 
> > ---
> >  drivers/gpu/drm/drm_agpsupport.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
> > index 6e09f27fd9d6..4c7ad46fdd21 100644
> > --- a/drivers/gpu/drm/drm_agpsupport.c
> > +++ b/drivers/gpu/drm/drm_agpsupport.c
> > @@ -212,7 +212,7 @@ int drm_agp_alloc(struct drm_device *dev, struct drm_agp_buffer *request)
> >  	if (!entry)
> >  		return -ENOMEM;
> >
> > -	pages = (request->size + PAGE_SIZE - 1) / PAGE_SIZE;
> > +	pages = DIV_ROUND_UP(request->size, PAGE_SIZE);
> >  	type = (u32) request->type;
> >  	memory = agp_allocate_memory(dev->agp->bridge, pages, type);
> >  	if (!memory) {
> > @@ -325,7 +325,7 @@ int drm_agp_bind(struct drm_device *dev, struct drm_agp_binding *request)
> >  	entry = drm_agp_lookup_entry(dev, request->handle);
> >  	if (!entry || entry->bound)
> >  		return -EINVAL;
> > -	page = (request->offset + PAGE_SIZE - 1) / PAGE_SIZE;
> > +	page = DIV_ROUND_UP(request->offset, PAGE_SIZE);
> >  	retcode = drm_bind_agp(entry->memory, page);
> >  	if (retcode)
> >  		return retcode;
> > --
> > 2.23.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191025094907.3582-1-wambui.karugax%40gmail.com.
> >

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


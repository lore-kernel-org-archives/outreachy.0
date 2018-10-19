X-GM-THRID: 6613801848773017600
X-Received: by 2002:a19:20d4:: with SMTP id g203-v6mr108059lfg.32.1539933576702;
        Fri, 19 Oct 2018 00:19:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5d43:: with SMTP id p3-v6ls604431lfj.2.gmail; Fri, 19
 Oct 2018 00:19:35 -0700 (PDT)
X-Google-Smtp-Source: ACcGV604Bd+3CAOnclkhiauL0K+paPnaFBisDm+pCThNF0dwHaht/rd0ahYUIvU0af6i+Wl5Gru6
X-Received: by 2002:a19:d790:: with SMTP id q16-v6mr110334lfi.13.1539933575309;
        Fri, 19 Oct 2018 00:19:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539933575; cv=none;
        d=google.com; s=arc-20160816;
        b=K1Ovj+sl4Kd7jOYAjnHt5wiAJBQDepV1Mh9SpAg/8/U7/2s1laQMxsEj0vivolQqFq
         gxy0YlvFbt52/dNdHKbYGCf744JW3Bvr/OnU7lq1Y/VJIsCVxLBcOGPFIPCpdesxflW7
         J8nNADN6PKL95wNxIeTtlE8xDaQTovR7F64eCXT5WpFzPlQcM8f/OkvpsHCRVU5fvfY/
         KjGby4BI99Gb4C4fK5ZV0MBIAafY7t5zGBaT66kzsTxzexiRRxgZ8vwkPX5nt98Nz5zd
         tlZ6l0u0t+ZRN1fpFy/0hLqK6Y2UNugQn9P5KOfZNuymv5qBL++0s41qIr8YPxBTqonV
         vGzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=4C55SVE+1USpY3h1rmL1UiQtaMQsBMOoZB0is05hAjY=;
        b=prERe+R+D4becmrYG4GEmfB+RsiLo9Qf6sacjvBuW/StwnDkUg+w+IYBgn0xIdBa8m
         XNncZ5xTp6wDqZC79Mv0k4sjHhziFFNPGtfqLCDUV9bNPUaISHQs4eZB9k/z8dNZSCXs
         OJBo7QbhsMfrk+jvUJy+ek8J8BAEPq1daDCRAU0SME75JCwjFP4f2+CWX7mP9t4Uj8W2
         KH0RoaPq4GHWRL0k2Eag/GoDyeI16qDUEZTL8JjgL7VVlvQjrVOM3Ry7Bl4TglFLP9kd
         dOK+6q+aXtoGE0dhOMAmPYQR+AjmGNa97aRQPXPhf8oVnv1/P9jCCTk4P1xIZeyxjvik
         G9VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b="fNr/rJJQ";
       spf=neutral (google.com: 2a00:1450:4864:20::52a is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id z13-v6si711146ljb.4.2018.10.19.00.19.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Oct 2018 00:19:35 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::52a is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b="fNr/rJJQ";
       spf=neutral (google.com: 2a00:1450:4864:20::52a is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-x52a.google.com with SMTP id b7-v6so30482895edd.9
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Oct 2018 00:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4C55SVE+1USpY3h1rmL1UiQtaMQsBMOoZB0is05hAjY=;
        b=fNr/rJJQ4MZ/4E4F45r2BcDR1t6N56/SvpwyFabP1rvGiEZDZbCCjixMxP0HdR5BEt
         dtVVy370tvLd+0wKJx4ypwWmnzkOLck2F6zEwprpaeZwy5gJ0ChHqu1wmibM02+qbt74
         JQBodEx6vPdxFvaXh/KMrCoSAAN7wr+JU6Tsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=4C55SVE+1USpY3h1rmL1UiQtaMQsBMOoZB0is05hAjY=;
        b=LkVtibbUAqSwE6BXcuUT7wL7aG+9JRSuKdca4G/idVi/eLEy/OvAQcoKMwQ+pYZfz4
         +NObKBcvjAc5DtiD8a+W3Q3RWSlc4+xD49SkEARIRtls47QVhR2Mjgr2K0K/qrZJPqqu
         X6qB+he4Lron/8LKPs6OTMcrU0gKwm1JHJuoN4wnUe/Bx8grPers1l5splNWFy71TlPL
         vpgIolbdLnRVfjub8oo2yW4wifvRi8Dhw/YSESIMOEm7I9e4HmCBDs3iCCsWfIePtd64
         Y5vXwjR5ZuyeVaprVgRtByy+xx26nf+Hc6yPUnwR4ZTQ1fPZItnt2dl+12sZ68biBTuS
         UC8w==
X-Gm-Message-State: ABuFfogcORrQTddYvRmNeEZgxfeY64D1KcX0zTDprwOiCVQ44fsn1YGL
	CYcYA/aC+3IGJu/8qlxjiFB+CrhoqjU=
X-Received: by 2002:aa7:c998:: with SMTP id c24-v6mr5454648edt.165.1539933574883;
        Fri, 19 Oct 2018 00:19:34 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id s36-v6sm9834592edm.15.2018.10.19.00.19.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 19 Oct 2018 00:19:34 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 19 Oct 2018 09:19:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Mamta Shukla <mamtashukla555@gmail.com>,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	daniel.vetter@ffwll.ch, robdclark@gmail.com, airlied@linux.ie
Subject: Re: [Outreachy kernel] [PATCH DRM] drm: msm: adreno: Use
 PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) +PTR_ERR
Message-ID: <20181019071932.GR31561@phenom.ffwll.local>
References: <20181018204815.GA23390@armorer>
 <alpine.DEB.2.21.1810190817170.2960@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810190817170.2960@hadrien>
X-Operating-System: Linux phenom 4.14.0-1-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Oct 19, 2018 at 08:18:52AM +0200, Julia Lawall wrote:
> On Fri, 19 Oct 2018, Mamta Shukla wrote:
> > Use PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) + PTR_ERR because its
> > better to have inlined function rather than code-opened implementation.
> 
> 
> Just for your information, people have mixed feelings about this.  In your
> case, it's probably fine, because this is the only if in the function.
> But when there is a series of if (...) return; followed by a return 0; at
> the end, people ofen prefer to keep it as it is, so the last case doesn't
> look different than the others.

Yeah I asked the maintainer for this driver for an ack, the other patches
look good, will merged them as soon as I have the answer for this one
here.

Mamta, since you'll have a few things merged already with these I think
it's a good time to start looking into bigger tasks and figuring out what
you might want to do in your internship:

https://dri.freedesktop.org/docs/drm/gpu/todo.html

Since this todo list is very unstructured it's best to discuss a bit over
irc what you would want to, and what makes sense as an internship.

Thanks, Daniel
> 
> julia
> 
> >
> > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> > ---
> >  drivers/gpu/drm/msm/adreno/a5xx_gpu.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > index 6a68493..b751b76 100644
> > --- a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > +++ b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > @@ -1222,10 +1222,7 @@ static int a5xx_crashdumper_init(struct msm_gpu *gpu,
> >  		SZ_1M, MSM_BO_UNCACHED, gpu->aspace,
> >  		&dumper->bo, &dumper->iova);
> >
> > -	if (IS_ERR(dumper->ptr))
> > -		return PTR_ERR(dumper->ptr);
> > -
> > -	return 0;
> > +	return PTR_ERR_OR_ZERO(dumper->ptr);
> >  }
> >
> >  static void a5xx_crashdumper_free(struct msm_gpu *gpu,
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181018204815.GA23390%40armorer.
> > For more options, visit https://groups.google.com/d/optout.
> >

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


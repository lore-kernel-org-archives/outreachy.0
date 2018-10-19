X-GM-THRID: 6613801848773017600
X-Received: by 2002:aca:bb09:: with SMTP id l9-v6mr29097792oif.18.1539968456809;
        Fri, 19 Oct 2018 10:00:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:190b:: with SMTP id j11ls17768442ota.5.gmail; Fri, 19
 Oct 2018 10:00:56 -0700 (PDT)
X-Received: by 2002:a9d:52ae:: with SMTP id f46mr1844049oth.52.1539968456267;
        Fri, 19 Oct 2018 10:00:56 -0700 (PDT)
Received: by 2002:aca:ac02:0:0:0:0:0 with SMTP id v2-v6msoie;
        Fri, 19 Oct 2018 09:57:56 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60pQX0vLUBiwl9dQ5GPgbrbLwqCHH3Hm3MfFnXO3+MomiJdh8BOULDc2/cgUgemczN03VZ4
X-Received: by 2002:a17:902:280a:: with SMTP id e10-v6mr19471681plb.45.1539968276430;
        Fri, 19 Oct 2018 09:57:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539968276; cv=none;
        d=google.com; s=arc-20160816;
        b=mXB4Qi12DBnIzJUXSQttPRZxsXqObsN4MzTn78la/3kqF4BfpPahZYGJNJMZI9fizR
         CWd6jsTe40vIghsRrww1CpHcv+7RUp9jm21DuCYG8LJbLwq8kKH8yn8bDFBE33U2Letw
         7bh2FlPpz/z7IpahwJiuwOh7osVVyJyInFWVfshNubQ0ZE51TdU/yhsEpUuI9rTrPdES
         AWLTWpsqkvGyIQHMuwyNXXZIvVqgi5TwwJ1GO13116ly8KDBAN9uI6Mw7SX6wHNCSCQY
         tT65k0QYq1spXxl3N36hx2SIrNP7qBjDvpISofmSj/dbrLeoyXLdh4YA4a0SUL/ObCHz
         MZjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dmarc-filter
         :dkim-signature:dkim-signature;
        bh=kjCNoOnGUd87lyzVx+MLbDwldltU6LkH1wMA68b0M84=;
        b=ZPAgAVJBhbR8ltiLbc5xllysAWzi8tkfzcjl5+xF4J4qE8GFiFyH5jzVbe2cUOtnOX
         LWB+bA+6kgTonQKVj+Kxf2Dy9Bb/tO1TJw0iuGrgOYWLvW40pOQj50b/DPx1lTU4lr3l
         P2D3pTBOXLfrcfqkABla+2QmmJkCdk37jPWIjXpSq9kdq1aZ1vWQepVPO1vHbhy9a7jj
         g6Jkka5THuBBLyfutix11TLEfDpncSTa9fVTy5WTobbwSZt1ISfSE4mv3CuO9EJEgd2N
         ZNHacImUcyVjpdmtjWC+Q7tDwJUArDTvVoXKPRCj4N6OEjgXWOJbtZoGUUy4Ebc3sufN
         2Wog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=LC2J9YCT;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=WudmJj8x;
       spf=pass (google.com: domain of jcrouse@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=jcrouse@codeaurora.org
Return-Path: <jcrouse@codeaurora.org>
Received: from smtp.codeaurora.org (smtp.codeaurora.org. [198.145.29.96])
        by gmr-mx.google.com with ESMTPS id r130-v6si740010pgr.2.2018.10.19.09.57.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Oct 2018 09:57:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jcrouse@codeaurora.org designates 198.145.29.96 as permitted sender) client-ip=198.145.29.96;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=LC2J9YCT;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=WudmJj8x;
       spf=pass (google.com: domain of jcrouse@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=jcrouse@codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
	id 1594D60913; Fri, 19 Oct 2018 16:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
	s=default; t=1539968276;
	bh=mzVOcIbE/Kby7V884fb9lrQ0EKe0QXRovMPN2MlJiN0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LC2J9YCTxwhzh78Z/ebbArikygiCJw31/OEU1TBlP3Vhn/K68v4VnnHXZSa0erOZT
	 dhyuPJ4M3Jc4IBdginzLz6umf9kxvcRSFvi9BJrqKzq1LvnhCK6FkxUIVyNn0Eb0dg
	 /NsJ0kjt+0AZ0q133lw9IV3OwX+B9FpDdGXCNHVo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from jcrouse-lnx.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: jcrouse@smtp.codeaurora.org)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 04AB860159;
	Fri, 19 Oct 2018 16:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
	s=default; t=1539968275;
	bh=mzVOcIbE/Kby7V884fb9lrQ0EKe0QXRovMPN2MlJiN0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WudmJj8xh3iJORf10Oi61KSMYreZ+uP0zQudcyZ2YweS+uVtVJAxbkkMauURQFMD2
	 XGtMH7uY3IpU4sDaufZvKau0nKOZ9b1lF2TWp2MPfDct5FVT1j3wMDuLYLlz/Jv5ON
	 Zh4jffbockjxSTxJKDNPbks/sBnU0EO5EPG+hTtU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 04AB860159
Authentication-Results: pdx-caf-mail.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Fri, 19 Oct 2018 10:57:52 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: Julia Lawall <julia.lawall@lip6.fr>, airlied@linux.ie,
	daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com,
	Mamta Shukla <mamtashukla555@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH DRM] drm: msm: adreno: Use
 PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) +PTR_ERR
Message-ID: <20181019165752.GA26762@jcrouse-lnx.qualcomm.com>
Mail-Followup-To: Daniel Vetter <daniel@ffwll.ch>,
	Julia Lawall <julia.lawall@lip6.fr>, airlied@linux.ie,
	daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com,
	Mamta Shukla <mamtashukla555@gmail.com>
References: <20181018204815.GA23390@armorer>
 <alpine.DEB.2.21.1810190817170.2960@hadrien>
 <20181019071932.GR31561@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181019071932.GR31561@phenom.ffwll.local>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 19, 2018 at 09:19:32AM +0200, Daniel Vetter wrote:
> On Fri, Oct 19, 2018 at 08:18:52AM +0200, Julia Lawall wrote:
> > On Fri, 19 Oct 2018, Mamta Shukla wrote:
> > > Use PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) + PTR_ERR because its
> > > better to have inlined function rather than code-opened implementation.
> > 
> > 
> > Just for your information, people have mixed feelings about this.  In your
> > case, it's probably fine, because this is the only if in the function.
> > But when there is a series of if (...) return; followed by a return 0; at
> > the end, people ofen prefer to keep it as it is, so the last case doesn't
> > look different than the others.
> 
> Yeah I asked the maintainer for this driver for an ack, the other patches
> look good, will merged them as soon as I have the answer for this one
> here.
> 
> Mamta, since you'll have a few things merged already with these I think
> it's a good time to start looking into bigger tasks and figuring out what
> you might want to do in your internship:
> 
> https://dri.freedesktop.org/docs/drm/gpu/todo.html
> 
> Since this todo list is very unstructured it's best to discuss a bit over
> irc what you would want to, and what makes sense as an internship.

> Thanks, Daniel
> > 
> > julia
> > 

I'm not the maintainer but this seems reasonable to me. Yay negative lines.

Jordan

> > >
> > > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> > > ---
> > >  drivers/gpu/drm/msm/adreno/a5xx_gpu.c | 5 +----
> > >  1 file changed, 1 insertion(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > > index 6a68493..b751b76 100644
> > > --- a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > > +++ b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > > @@ -1222,10 +1222,7 @@ static int a5xx_crashdumper_init(struct msm_gpu *gpu,
> > >  		SZ_1M, MSM_BO_UNCACHED, gpu->aspace,
> > >  		&dumper->bo, &dumper->iova);
> > >
> > > -	if (IS_ERR(dumper->ptr))
> > > -		return PTR_ERR(dumper->ptr);
> > > -
> > > -	return 0;
> > > +	return PTR_ERR_OR_ZERO(dumper->ptr);
> > >  }
> > >
> > >  static void a5xx_crashdumper_free(struct msm_gpu *gpu,
> > > --
> > > 1.9.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181018204815.GA23390%40armorer.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project


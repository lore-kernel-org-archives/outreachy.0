X-GM-THRID: 6809557952024805376
X-Received: by 2002:a2e:878a:: with SMTP id n10mr4278886lji.130.1585475256346;
        Sun, 29 Mar 2020 02:47:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8587:: with SMTP id b7ls2625137lji.3.gmail; Sun, 29 Mar
 2020 02:47:34 -0700 (PDT)
X-Google-Smtp-Source: APiQypI146HTjrXp0zCu3lCzI8Qx2ONv5XKkT8z7nN+BJslkdUysPGRCx3xjIg1g+/bfsNZx7Fp4
X-Received: by 2002:a2e:854e:: with SMTP id u14mr4219993ljj.95.1585475254523;
        Sun, 29 Mar 2020 02:47:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585475254; cv=none;
        d=google.com; s=arc-20160816;
        b=O3/43Q4rZk3vxp80Dhi4MsukDTGCgNzNtv93QAlnWYlhjSpcFPvzQADPJ+JWDK9qcb
         fSmDKG+FzSusQxknPiXakGvkbmCDI3w8bGXhkxNKkcpoUz6ZBeWKXq69biG04rUXUABq
         0nPoPuqreEnEs+YN/DWNBe+yUZzZUvqqur1ytYvOlgjOS/b4kZienjA0Pqv+FggpCF90
         e8JDKrlP60XWTTuoLxD/RVJoNGIy8Op9C9on+QyX+/bfvgOa15kJ8UrSh4waAHr6cy7D
         6CtVsqNmPHNPG8+yBNUr+VFP2WeQRy0TvOEoBhU9Lj8huiE0ZG3IAbzv0sxjL3p1nDTa
         pFbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=UMZgN5fOaszUGo75SoFyix2dp4Q8KUGdss6+As6J5NI=;
        b=pPRIv0pz3dyG2geTDSIkmZP836/rjmHhOwN8Pt4tFL7UvzTtrTfC9aafMoCWr+SX1U
         WnoDMDt7qxT6QurZAwT6dp2j/pddRy9VeyaIxcZBppzZ96ISqx1xIk7kjYAsSI31iDu+
         DnRkB5N1kezyJF98BoYPwk71/4awft8ibAdACGL5UqLRCAhxdSQN/RQNEARKt1QC18Ud
         9Bl6IuIlTpsU6Wc6wT6q4nfPl8rOcJIK4EbiXyGjHQVbnOS+lSplW/nSOvf7ZWThYpaF
         tQI4BWmYtyPXZBIfKR/RLU/DsHWZtLCcrqO8nBB/aUTU81BmrekTY4uSJ5XwiUIjGj9C
         zOGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w186si241579lff.4.2020.03.29.02.47.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 02:47:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,319,1580770800"; 
   d="scan'208";a="442806325"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2020 11:47:33 +0200
Date: Sun, 29 Mar 2020 11:47:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: John Wyatt <jbwyatt4@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>, 
    dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
In-Reply-To: <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003291144460.2990@hadrien>
References: <20200329092204.770405-1-jbwyatt4@gmail.com>  <alpine.DEB.2.21.2003291127230.2990@hadrien> <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 29 Mar 2020, John Wyatt wrote:

> On Sun, 2020-03-29 at 11:28 +0200, Julia Lawall wrote:
> >
> > On Sun, 29 Mar 2020, John B. Wyatt IV wrote:
> >
> > > Fix style issue with usleep_range being reported as preferred over
> > > udelay.
> > >
> > > Issue reported by checkpatch.
> > >
> > > Please review.
> > >
> > > As written in Documentation/timers/timers-howto.rst udelay is the
> > > generally preferred API. hrtimers, as noted in the docs, may be too
> > > expensive for this short timer.
> > >
> > > Are the docs out of date, or, is this a checkpatch issue?
> > >
> > > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > > ---
> > >  drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > index eeeeec97ad27..019c8cce6bab 100644
> > > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
> > >  	dev_dbg(par->info->device, "%s()\n", __func__);
> > >
> > >  	gpiod_set_value(par->gpio.reset, 0);
> > > -	udelay(20);
> > > +	usleep_range(20, 20);
> >
> > usleep_range should have a range, eg usleep_range(50, 100);.  But it
> > is
> > hard to know a priori what the range should be.  So it is probably
> > better
> > to leave the code alone.
>
> Understood.
>
> With the question I wrote in the commit message:
>
> "As written in Documentation/timers/timers-howto.rst udelay is the
> generally preferred API. hrtimers, as noted in the docs, may be too
> expensive for this short timer.
>
> Are the docs out of date, or, is this a checkpatch issue?"
>
> Is usleep_range too expensive for this operation?
>
> Why does checkpatch favor usleep_range while the docs favor udelay?

I don't know the answer in detail, but it is quite possible that
checkpatch doesn't pay any attention to the delay argument.  Checkpatch is
a perl script that highlights things that may be of concern.  It is not a
precise static analsis tool.

As a matter of form, all of your Please review comments should have been
put below the ---.  Currently, if someone had wanted to apply the patch,
you would make them do extra work to remove this information.

julia

>
> >
> > julia
> >
> > >  	gpiod_set_value(par->gpio.reset, 1);
> > >  	mdelay(120);
> > >  }
> > > --
> > > 2.25.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> > > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/20200329092204.770405-1-jbwyatt4%40gmail.com
> > > .
> > >
>
>


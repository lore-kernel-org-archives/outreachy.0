X-GM-THRID: 6809557952024805376
X-Received: by 2002:ae9:e00d:: with SMTP id m13mr7014067qkk.297.1585474739315;
        Sun, 29 Mar 2020 02:38:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b946:: with SMTP id j67ls6665224qkf.2.gmail; Sun, 29 Mar
 2020 02:38:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsvii257KwVPolzjQpHqpsZMhjc6r91a94QRClxlK9JOMABISPAxGawfxS/BEi4jCcDpzdF
X-Received: by 2002:a37:5b82:: with SMTP id p124mr7067216qkb.130.1585474738358;
        Sun, 29 Mar 2020 02:38:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585474738; cv=none;
        d=google.com; s=arc-20160816;
        b=Ccvee/kJLVOHBy3WUbfG6LgttftcVhUEq9UdzVsV/bgKgs1dJKte6L44GLqR8u7k5c
         Ugd9OLIVTwNXQuiRoMH4jePxACh2krYfD8F4SQG4LEbpG2eQHgx4EIMfA8JDyiSPPTwQ
         D3cCfE5OObM7o04Zsh0VPmdBfBgKkWL68T5iCcdjovsSB/kGaP9Tl5vYALVE+dA/0Pr4
         jzuWcpoMSmrJN7Xi/w1Qc+4ZTr++3Gu9L1ddnS/j0oPhSVqgmDShzMy90a2BYmZc+leo
         JHCMcrTpIYG6rd1EfEIkliocB4UspBNfurjeWmiTKjVfw6qx5PGyeENTYVjyoLI+P0nH
         ay3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=1FjUt0FY4qG4swr3glwUOGPZovJqvh5BcKDS4lGNLW4=;
        b=AUiyc8Z9734A2QJuaco+cr5e30oC7vvnU20SNoTMMGYMVKtnV5gVcjZFMfDt2BzZhW
         IgkUkpy3Z8lJ5nJAfgbmK8HIIVfOtv6Yb6AeiRPv3A50LZn4RRYS3Bty8deM5ma8iDxB
         BunjWJBkWiERMXRPHiZEZHVUwCw9PFwqUIBUNxwlVmAJYA9pfXBLoe5sIEVDdCoPPaSL
         zZK4ElhnlwRqxfg6tyqs8MjI/haNhK1Ck0LpsMf6XV3MZg0wkL9KrJdub3xr1cIRgAED
         WljnqbMpsHHsh4ryvkqDaW6YoUfYsLLmCDe4SvGrgw9pr7lgpQoh//LZF5EJpA36Abvk
         dznA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JTmZm4tA;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id r14si869022qtc.5.2020.03.29.02.38.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 02:38:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JTmZm4tA;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 22so7018984pfa.9
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 02:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=1FjUt0FY4qG4swr3glwUOGPZovJqvh5BcKDS4lGNLW4=;
        b=JTmZm4tANjipQr6DLS3RinvGorU5jef6avNVRWTXMGMOHc5zWJD8xRNxFdvfYAU4My
         dEKmoB/HJdqNKyrKgkKhGvUtY2NYkWNMrIpeZcIPjbvpkgSoKP+IlQUNP6CyEu+b4qGT
         l+YPnkDIixPJwYLwiuhYT1u38s37mYmi54uDWkT7EzzbeLUFYD5j78Upnr/2DGP4+d6m
         fXVTjObFPYSWpVc+/5VbiQy/dyhcRHQTNROPixtBi5Cc7g9PWtN2eezd9eFyd2k8FEjg
         w49fddJ9HlCac53/1mK3H20pfoGxPXiO70i0BlYo5w+3HCm3cV8SOG5GXIG7hlLiOHcB
         hA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=1FjUt0FY4qG4swr3glwUOGPZovJqvh5BcKDS4lGNLW4=;
        b=Bakv+dpnuF/g/wwHo8PXgm1gz1zE2zIwynVGSDbW4p6nwXjVUe7qyL6zTlgVlknpu2
         7HysLxkU6tDZ80bIL+D5DMLCHpeULNGVJq4xiT/wB7jN7gg0dCP/6J/Em/16ao3BPQ5s
         NM/0mcrg1tLexakUkgRbyEqt4VUTzD0Yi14uyGTrorImS0sP9Y/9mXLZFdaBaPqmYNMT
         LvW66zWc0190yXdhNxsCscY/Cd6Fc87Ylmdz6RPhLC5s6cdRljoMrjwCqLZfvZSE97RL
         9s602mzeUlzsCGest1sGw1/b0HE53jsKPYBLQZPWC25wFTvOljv4gJ7rkZujwfLjcWlS
         yNAw==
X-Gm-Message-State: ANhLgQ1PTLajmkktBHr5hjO0F2EU10ALqqKOKplQWRFWb7XbmqDPXPxF
	ouI4dYZmtNme0gXggQ66yqY=
X-Received: by 2002:a62:160b:: with SMTP id 11mr8149948pfw.189.1585474737395;
        Sun, 29 Mar 2020 02:38:57 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id y29sm7265920pge.22.2020.03.29.02.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 02:38:56 -0700 (PDT)
Message-ID: <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
From: John Wyatt <jbwyatt4@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Payal Kshirsagar
 <payal.s.kshirsagar.98@gmail.com>,  dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Sun, 29 Mar 2020 02:38:51 -0700
In-Reply-To: <alpine.DEB.2.21.2003291127230.2990@hadrien>
References: <20200329092204.770405-1-jbwyatt4@gmail.com>
	 <alpine.DEB.2.21.2003291127230.2990@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-29 at 11:28 +0200, Julia Lawall wrote:
> 
> On Sun, 29 Mar 2020, John B. Wyatt IV wrote:
> 
> > Fix style issue with usleep_range being reported as preferred over
> > udelay.
> > 
> > Issue reported by checkpatch.
> > 
> > Please review.
> > 
> > As written in Documentation/timers/timers-howto.rst udelay is the
> > generally preferred API. hrtimers, as noted in the docs, may be too
> > expensive for this short timer.
> > 
> > Are the docs out of date, or, is this a checkpatch issue?
> > 
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> >  drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > index eeeeec97ad27..019c8cce6bab 100644
> > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
> >  	dev_dbg(par->info->device, "%s()\n", __func__);
> > 
> >  	gpiod_set_value(par->gpio.reset, 0);
> > -	udelay(20);
> > +	usleep_range(20, 20);
> 
> usleep_range should have a range, eg usleep_range(50, 100);.  But it
> is
> hard to know a priori what the range should be.  So it is probably
> better
> to leave the code alone.

Understood.

With the question I wrote in the commit message:

"As written in Documentation/timers/timers-howto.rst udelay is the
generally preferred API. hrtimers, as noted in the docs, may be too
expensive for this short timer.

Are the docs out of date, or, is this a checkpatch issue?"

Is usleep_range too expensive for this operation?

Why does checkpatch favor usleep_range while the docs favor udelay?

> 
> julia
> 
> >  	gpiod_set_value(par->gpio.reset, 1);
> >  	mdelay(120);
> >  }
> > --
> > 2.25.1
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/outreachy-kernel/20200329092204.770405-1-jbwyatt4%40gmail.com
> > .
> > 



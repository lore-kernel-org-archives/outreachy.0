X-GM-THRID: 6809557952024805376
X-Received: by 2002:adf:e3c5:: with SMTP id k5mr8788773wrm.216.1585474115453;
        Sun, 29 Mar 2020 02:28:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4690:: with SMTP id u16ls5940898wrq.11.gmail; Sun, 29
 Mar 2020 02:28:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvtjXrCmPsVD/9WHmGAqW7/TTC/QSkMunrtya+P2jvI4tLfEFcdQ6XsTdGlLU98iU6QQhWp
X-Received: by 2002:adf:e948:: with SMTP id m8mr8873806wrn.193.1585474113977;
        Sun, 29 Mar 2020 02:28:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585474113; cv=none;
        d=google.com; s=arc-20160816;
        b=sND2mYzddp2ECb044/gAFHfFHafWLTx4u/Di3NUQliuCSD0oFNSL771aXb9NTw2Toc
         W10e1PFWYPLmJ9CpIPrz+TapIOhsSKwzPYlCZjRUP4JJslE2OqQE9zmk/qDdsCI+GKdf
         X9n0gZyJcSzGrB4H8BxPoiiQjTtxSqIRkU+FoK3wM5ppjcPvMsCombOHwswSXxRpyvh9
         V/kwyeFBJ1APl0mosOychCqwUG9M2ZPgEBKx8YxJALYve33AHG7DmOg2RQjPbm8lodTg
         get7AonIoZQuDrxJQtn/SFBVRis3boeX7OTkhZ/ay4C3LyOqMnxEdwAMmGFzmxguiCEj
         IXUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+WD1cZEO1QgdAIv7ogdOsQN/fk+kF071YX9PbNGGQO0=;
        b=SLUh5Gj4phcbI5I/+qWwxPhr7Qp+n+47vVswmuNmRiJYyzXa3+9KFGfLR7ehRS8zEX
         hR+F5lpX5ZExzZAq5jz7lzbP9B5WY+/Xsoos9JqngKY9eQqphfV6URz3/U6AD18wRKAe
         ePTPmQ2sKAVQteq5Sta+wSUsJbaac8MiCBxBI+6rwZCUAB7oXIcZoSSBj3QO+IPuhpjt
         LcFNduc/N6E+uMd64dm2FaP3czf7fgixeRS7lJpG/xgTJTC0c95pp8pJbzYUwLORdba9
         +QW7RvPv11EiVPRbFtZxHTNP1DIYDhI1A+g0Cuxq9SqDul1SgljqzCLK3fA1aGxQ08Gs
         2zHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d6si468212wrq.3.2020.03.29.02.28.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 02:28:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,319,1580770800"; 
   d="scan'208";a="442805364"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2020 11:28:33 +0200
Date: Sun, 29 Mar 2020 11:28:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>, 
    dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
In-Reply-To: <20200329092204.770405-1-jbwyatt4@gmail.com>
Message-ID: <alpine.DEB.2.21.2003291127230.2990@hadrien>
References: <20200329092204.770405-1-jbwyatt4@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 29 Mar 2020, John B. Wyatt IV wrote:

> Fix style issue with usleep_range being reported as preferred over
> udelay.
>
> Issue reported by checkpatch.
>
> Please review.
>
> As written in Documentation/timers/timers-howto.rst udelay is the
> generally preferred API. hrtimers, as noted in the docs, may be too
> expensive for this short timer.
>
> Are the docs out of date, or, is this a checkpatch issue?
>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> index eeeeec97ad27..019c8cce6bab 100644
> --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
>  	dev_dbg(par->info->device, "%s()\n", __func__);
>
>  	gpiod_set_value(par->gpio.reset, 0);
> -	udelay(20);
> +	usleep_range(20, 20);

usleep_range should have a range, eg usleep_range(50, 100);.  But it is
hard to know a priori what the range should be.  So it is probably better
to leave the code alone.

julia

>  	gpiod_set_value(par->gpio.reset, 1);
>  	mdelay(120);
>  }
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200329092204.770405-1-jbwyatt4%40gmail.com.
>


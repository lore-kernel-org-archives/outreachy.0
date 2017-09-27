X-GM-THRID: 6470409000186806272
X-Received: by 10.99.101.131 with SMTP id z125mr332334pgb.151.1506516710297;
        Wed, 27 Sep 2017 05:51:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.100.2 with SMTP id y2ls438474pgb.26.gmail; Wed, 27 Sep 2017
 05:51:49 -0700 (PDT)
X-Received: by 10.99.121.141 with SMTP id u135mr335125pgc.156.1506516709289;
        Wed, 27 Sep 2017 05:51:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506516709; cv=none;
        d=google.com; s=arc-20160816;
        b=hoHLz66srQ+HaWRte3AhgrQLz7rkSBwvQ8z08wTmxabQHiNnBpLRySzDG4qS+ibMLk
         LywoWnlXyBzrWYtWbaMHaHOf0SJft+Vpw7NZQZA0a2W/9hrIntlJ0EzzSe5VujVvcpgi
         JNZ4bDFBeioySEd/Hai9UMwYg79OwCsEX9x41UOS2jAe8pnnunR5ZmEzGNXJ/ppLsUYz
         E+vApSgQQFa7FGqYk0ZV2oB5Q1oaUsoZhR6dIlV8F/Ghfy31WX0r31vH2K0BTMdjPKah
         kQWtOl4/JYDYgl8qb9z2Gfpbzmcrma8afXfTmaUz8nWQyaqiNtt3PGaB0jpFNQHobpx0
         IHjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=w2IsvR8i6AnDjGzrEGuU/hHZr6Tzi5t7GxT57cZuc4Y=;
        b=ZWMCQ9A/gQHsWz+pcYaoHBSSRorm2r35dEEj9YGEfi7EDpcV/Ya4HekL9s+uCO4THL
         PsiiD9FKJTV1iMH45VtVpBhEwLEwiT3GpijlKKAfvJsIJa0LE/dgMDFboakcoYENWmab
         KfT9nXQQARCeezUjEj4wfnDZeHx/FPjgf3fIy7aqZQZhWPj00sBRQY9WYyiSnrfR3QvC
         JAXqgsaXXt1u7eV2p/XF6CbOovzczEdSy0/wBENPYkDY56IZ8MltntN57QiE7p1M4PaL
         V/qnyCIWAm+9MK3yvIrX7LFX8qLpoK48d/uCkr1xfOHH8TQaLXDuxOIRuJrkRrHCV9WM
         3yVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fJwd4XOf;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id t77si899464pfi.13.2017.09.27.05.51.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 05:51:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fJwd4XOf;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so6762986pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 05:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=w2IsvR8i6AnDjGzrEGuU/hHZr6Tzi5t7GxT57cZuc4Y=;
        b=fJwd4XOfH4cg2Vgl7fENRNUcozvGZnFJ/sZUkVs9YVVjNzm/VownCLWJ9c+fWzdkv3
         1qUNqHxDtYb3gheBEtH5yVnv50NP1kNZn/gJduoy8L+gpgz5qd63C7INKZZgoNUMb/WM
         6mL2eAkKaA2Bvq5lO3J22ZlR8RxPcQnemLEGUfO0L9jKuK/EOwzF5w0ZaGupV1XahsPj
         v+AjH3I4tPqVX6MEuUPclnPIT1kS6FZEeJPGbkug4gRFO8eKnJNCWoiZSoakrr0ae0Xs
         Rm5YZvXqqAereS1WpO70LyEKA9S7E54g3x7N3l/zuE0XisdeIDVEakjXtaBD4gHB6VTA
         KlKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=w2IsvR8i6AnDjGzrEGuU/hHZr6Tzi5t7GxT57cZuc4Y=;
        b=MYt2Zwb0LBTpXyrQJmSlHhCSPiwnJNXxxg3vOyfsnFCA19wL1YmOYBd859x8aXuuhR
         92t1df2PCCDUhlvPhArjWPo6YAHN+p1AjGSIVyVze5TgMo+6ECWoaMKYVRYTDcrgmH1y
         9sQ21xTDhS04JGcbtyD1l1oESYgUHiz+5UseL6Hsi9Qqc1hNIv1MRfRnZa7gJGZS9ojh
         0oK7nOvUPFwsDkBDq6sGwepLVDVDJUJ+O4GBrQfDLGzlgMxfnzOL4gaMMN6z5zz2imJN
         DAjbCu34t87ANBijf9Mid/w+LLJqI0FPgdJjGyOtZBAayy/vylMEo4cl2OvhMaYN+BYU
         w7XA==
X-Gm-Message-State: AHPjjUgXZKo53o3WYzs4FdrD3s4wRNfPneunCxDFbpVKnStrVvDKd9cq
	2xQGMcm4eJyNFdpqXIQ4C/pKsMCG
X-Google-Smtp-Source: AOwi7QD1waA8+rYP/bZddBcgpzfTMflqpfaQRJy7ZZLTmrpmn/hshEHnENhUCGFoe6pQ+TS+Sxn55g==
X-Received: by 10.101.92.6 with SMTP id u6mr1285291pgr.198.1506516709024;
        Wed, 27 Sep 2017 05:51:49 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id a1sm22709365pgu.47.2017.09.27.05.51.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 05:51:47 -0700 (PDT)
Date: Wed, 27 Sep 2017 18:21:42 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/Documentation: Refine TODO for backlight helpers in
 tinydrm
Message-ID: <20170927125139.GA31725@meghana-HP-Pavilion-Notebook>
References: <20170927105116.GA30391@meghana-HP-Pavilion-Notebook>
 <20170927123216.4mcetjedytpaqmxg@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170927123216.4mcetjedytpaqmxg@phenom.ffwll.local>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 27, 2017 at 02:32:16PM +0200, Daniel Vetter wrote:
> On Wed, Sep 27, 2017 at 04:21:23PM +0530, Meghana Madhyastha wrote:
> > Add a summary which resulted from discussions on what should
> > be done to refactor backlight helpers in tinydrm so that
> > they can be used in other drivers as well.
> > 
> > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> 
> Applied, thanks.
> 
> One thing that just crossed my mind is that we could still move
> tinydrm_of_find_backlight into drm_of.c (and rename to
> drm_of_find_backlight). Plus check out all other drivers for similar code.
> 
> That should be a much more well defined task, suitable for the application
> period. Signed up?

Sure ! I will work on this.
Thanks and regards,
Meghana

> Thanks, Daniel
> 
> > ---
> >  Documentation/gpu/todo.rst | 11 ++++++++++-
> >  1 file changed, 10 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
> > index 22af55d..1acf84fe 100644
> > --- a/Documentation/gpu/todo.rst
> > +++ b/Documentation/gpu/todo.rst
> > @@ -353,7 +353,16 @@ those drivers as simple as possible, so lots of room for refactoring:
> >  - backlight helpers, probably best to put them into a new drm_backlight.c.
> >    This is because drivers/video is de-facto unmaintained. We could also
> >    move drivers/video/backlight to drivers/gpu/backlight and take it all
> > -  over within drm-misc, but that's more work.
> > +  over within drm-misc, but that's more work. Backlight helpers require a fair
> > +  bit of reworking and refactoring. A simple example is the enabling of a backlight.
> > +  Tinydrm has helpers for this. It would be good if other drivers can also use the
> > +  helper. However, there are various cases we need to consider i.e different
> > +  drivers seem to have different ways of enabling/disabling a backlight.
> > +  We also need to consider the backlight drivers (like gpio_backlight). The situation
> > +  is further complicated by the fact that the backlight is tied to fbdev
> > +  via fb_notifier_callback() which has complicated logic. For further details, refer
> > +  to the following discussion thread:
> > +  https://groups.google.com/forum/#!topic/outreachy-kernel/8rBe30lwtdA
> >  
> >  - spi helpers, probably best put into spi core/helper code. Thierry said
> >    the spi maintainer is fast&reactive, so shouldn't be a big issue.
> > -- 
> > 2.7.4
> > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch


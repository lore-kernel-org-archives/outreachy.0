X-GM-THRID: 6883501515077582848
X-Received: by 2002:aca:7582:: with SMTP id q124mr218552oic.106.1602695361449;
        Wed, 14 Oct 2020 10:09:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:20cb:: with SMTP id z11ls966122otq.9.gmail; Wed, 14
 Oct 2020 10:09:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzNIgDap+5q9O6dw5xwd1TQtYvpwM5zOYdUcXbmcvLbEswLVMRJe4+L3WgF0xI+omoRjQ+6
X-Received: by 2002:a05:6830:1301:: with SMTP id p1mr71893otq.241.1602695360212;
        Wed, 14 Oct 2020 10:09:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602695360; cv=none;
        d=google.com; s=arc-20160816;
        b=yPvC5J7Pqs8gezR83of637qkpxeJtZv+lh6S0WPBz2xx4Nsp/4Fbod7I5y71yFZTtC
         FcWLM8Z2cxGiUiL+puHneRaHuWBHkyW93YBYWDS8Fh0OTCymW7OJP6cj8lzZNxvJLzuN
         O1/QBMNVnakbeVv6szuV/uup1wwOWZpBESYcsExgUjSvat2ydkHcDSXiBn+3z3JmQqLm
         1Rly/hhyVjijWpYbzvcpx2ccA7zu/5knAcC1C7iHAMpSv+laIItCs3aL+9wVWrNdZPsN
         txuXIkhpG91Ej9c3Z5vZuo1/bMihxg9P/cTbxdc5RuO7UnXOJHLqOXQD4Jfumzfu1x0/
         /WCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=95ammOIvS4No4xiGKDNDUM1NeyjaYnMuT+djTv8Q/8E=;
        b=q7tDWPrs+P5I7cxm1xEBMeA9MgnjrYQHAZsz8DLpit5j+vKGXyyNXg3BokRm2qqHu6
         U6mWOwenfqGBxUa0e4sjH/nO8g5H0Qb37kod+PO3CxdOleWS8L2Xl3rJoX2O4Nvs/e0L
         c4/+kjCOfiHyJG7rW4oEGR5yUPmwFJMTgn1Aou60tUZjOk2WVdHkHmAA6mB2M6AJg8e3
         txHl3HqeJ+biEIWXJrprkcabSfwapblgUq5tCb9aI9gR+qi9HkHzk2YOm9Nk5g+bcn1P
         Y5RGgHOb1u+2IyGoLL5kuu5f4V3tAc42QujelPIq+RnCR6rYD292PHoVZLEr5Iiiz/w9
         LMBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E7FI3eRg;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id t22si21309otm.5.2020.10.14.10.09.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 10:09:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E7FI3eRg;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id a17so81361pju.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2020 10:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=95ammOIvS4No4xiGKDNDUM1NeyjaYnMuT+djTv8Q/8E=;
        b=E7FI3eRgmmNw4o01R+2zqbFqd8NQvcH9RjuOnKPt7tz8FHWB3iyDL6ThnVgwG+LvaO
         +3Lqjc+UUCHkdl8ipeL0P/H0Z70TIgnfHgHHlSxHQuXj+/u7OnB2zm2yXebFSASG0MZt
         MPTgm5dklyEt5I169V2Ki1wANC3CTOlgoEyKvADevOJQCP9UO1VcJcV8qRrepfWpZNqF
         iXvyQ7XFadpWtHB5M9KJJY6EwhR+AWNlHC2Vbd8Veg293bu8UlaqMuWPS13qqqTM0BDV
         Y1QaX6lT0zN4G7rv8XgccbQo9FIWd4Yc+OebnORJsf6fAvXz07A9uBjAAZJGC/ecV/lM
         +laQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=95ammOIvS4No4xiGKDNDUM1NeyjaYnMuT+djTv8Q/8E=;
        b=JEJt8Uih8ODyTCCTl5mTxVNK1F5urOfjSf3cogoadz5e1vBtububScdFCaLchwSSPv
         bSsApPhB+UFaluJlob9Igz5GRm4KBwCnyVPwZIqS1WMOOVFn9Mi37iTTxGTcqOj77q9M
         AUb7AkLvtnDnNxtnCIc/5E0+jESIM210X+H3Y++mpZntoKdv6jh6hWaERwqttyIHmuPI
         9Eb2yWYr8Ppa71UW9hxJUEWtsEP+Vg9LfAs8OwvUmbV+AmS1kmQivnz0Ge59efY6nO17
         4vqGQwMdzCu1iKDpqNdrKq5PoNUPuGi+3bjSrjNpTF/3cAIYfUrbORk4iazRdhtr1W9r
         sdyA==
X-Gm-Message-State: AOAM5309uF/tzZNv4DkMwp0TaLkTsgwgGYOX0Qo1om/Q5iycKUA7QRmK
	hQBa+s/Qr9phn1Cq0hSgA19Q+NpEjiesfw==
X-Received: by 2002:a17:90a:2ec1:: with SMTP id h1mr207084pjs.51.1602695359582;
        Wed, 14 Oct 2020 10:09:19 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id v12sm113339pgr.4.2020.10.14.10.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 10:09:19 -0700 (PDT)
Date: Wed, 14 Oct 2020 22:39:14 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: rearrange lines
 exceeding 100 columns
Message-ID: <20201014170914.GA24625@ubuntu204>
References: <20201014154121.GA23584@ubuntu204>
 <alpine.DEB.2.22.394.2010141801041.2687@hadrien>
 <20201014163838.GA24058@ubuntu204>
 <alpine.DEB.2.22.394.2010141842550.2687@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2010141842550.2687@hadrien>

On Wed, Oct 14, 2020 at 06:46:09PM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 14 Oct 2020, Deepak R Varma wrote:
> 
> > On Wed, Oct 14, 2020 at 06:01:39PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Wed, 14 Oct 2020, Deepak R Varma wrote:
> > >
> > > > Rearrange lines that are longer than 100 columns width. Issue reported
> > > > by chckpatch script.
> > > >
> > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > >
> > > > ---
> > > >
> > > >  drivers/staging/vt6655/device_main.c | 8 ++++++--
> > > >  1 file changed, 6 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> > > > index 09ab6d6f2429..4fc90b111f9d 100644
> > > > --- a/drivers/staging/vt6655/device_main.c
> > > > +++ b/drivers/staging/vt6655/device_main.c
> > > > @@ -461,7 +461,10 @@ static bool device_init_rings(struct vnt_private *priv)
> > > >  		priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc);
> > > >
> > > >  	priv->tx0_bufs = dma_alloc_coherent(&priv->pcid->dev,
> > > > -					    priv->opts.tx_descs[0] * PKT_BUF_SZ + priv->opts.tx_descs[1] * PKT_BUF_SZ + CB_BEACON_BUF_SIZE + CB_MAX_BUF_SIZE,
> > > > +					    priv->opts.tx_descs[0] * PKT_BUF_SZ +
> > > > +					    priv->opts.tx_descs[1] * PKT_BUF_SZ +
> > > > +					    CB_BEACON_BUF_SIZE +
> > > > +					    CB_MAX_BUF_SIZE,
> > > >  					    &priv->tx_bufs_dma0, GFP_ATOMIC);
> > > >  	if (!priv->tx0_bufs) {
> > > >  		dev_err(&priv->pcid->dev, "allocate buf dma memory failed\n");
> > > > @@ -1077,7 +1080,8 @@ static void vnt_interrupt_process(struct vnt_private *priv)
> > > >  			    priv->op_mode == NL80211_IFTYPE_ADHOC) &&
> > > >  			    priv->vif->bss_conf.enable_beacon) {
> > > >  				MACvOneShotTimer1MicroSec(priv,
> > > > -							  (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
> > > > +							  (priv->vif->bss_conf.beacon_int -
> > > > +							   MAKE_BEACON_RESERVED) << 10);
> > >
> > > Maybe it would make more sense to shorten the function name?
> > >
> > Thank you Julia.
> > I do not think that will work. Even without the function name,
> > the line would still cross 100 columns if you try to fit it on a single
> > line. Also, shortening the function name would make it looks different
> > from rest of similar named functions.
> > Please suggest how would you do it?
> 
> Perhaps the whole thing can't fit on one line, but if the function name
> were shorter, then perhaps the newline would go in a different place.
> 
> All of the function names in that file do not follow the kernel coding
> style.  Admittedly it would not be such a great idea to change only one of
> them.
> 
> > > Also the {} are not needed.
> > >
> > Agree if we can get the instruction on a single line. Else, I think it
> > is better to keep the {} to make it more readable.
> 
> Coding style doesn't say anything about that.  The only exception proposed
> is that when one of the branches requires {}, then the other should use {}
> as well.
> 
> linux/Documentation/process/coding-style.rst
> 
Yes, agreed. I will implement this feedback and resend v2.

Thank you again!
Deepak.

> julia


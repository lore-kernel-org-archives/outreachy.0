X-GM-THRID: 6883501515077582848
X-Received: by 2002:a2e:8514:: with SMTP id j20mr33777lji.131.1602693974300;
        Wed, 14 Oct 2020 09:46:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7a0e:: with SMTP id v14ls44673ljc.7.gmail; Wed, 14 Oct
 2020 09:46:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyErJm2HyAfBU2gVgupY4PkFpfzQkWZQrrMnpTSl++V1q9v+thNpNoLuq46Kj5Ee5Ci7+ys
X-Received: by 2002:a2e:8145:: with SMTP id t5mr29533ljg.311.1602693971793;
        Wed, 14 Oct 2020 09:46:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602693971; cv=none;
        d=google.com; s=arc-20160816;
        b=KvrN25Jpt8FnOOFIqdvgWwv4uk7TuoyhUcLu9E7C/1yl5Q6noL02ckvwJeamtMEsKo
         Vkzvn+tXHDldr+pZQdvwe+gWZDJdnnIBzlNHT2Qjv4rMObJ1Evsit7XEOv8uZXPvWjyK
         epm7bWJnf677oHlRc0HV8bfbBfJ5JKsELODDLt/dy9WJP9Nma8kgz8ybCb/zpnUOvvTE
         A6Hck7b00DYt5co6AXtmJJT5eME7wEYc5RpZ3UOkunqA4fx/YC98b/j4BhFlNmoW1PUw
         nogxF7bwEIjNxQAASOjNUEQudrbzkgu8iU1ZbeCvML07TSlyNOBX6DvnIlL66Yr75jDm
         3lYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=5BY2MXgPH5VsN6wbQ8gpVNtp1zEh0tI+DPWzxB/CCi4=;
        b=ere0LnrNqR8yP8/XKeqdMNTUXkgskWB24FjfeuqGeyyiI94Hbqf5ONJZ9eKrmZz9BL
         3JMjmqYHIZxGw8R2J9A23JykrEYTToYCClbdGw8Pg0b/oBoKmmd9qq13zzWPd354dpmt
         XhRtr+Kr1Rer6qIbzYJi7ZR8fVr93gQsamlBigz1pkFa7E/LOkfjAM8G0DpGpuVZCpDx
         obrcxzZApxx0Hi6fSTSANo/rGH5aYsH2nGO1wd5hUX9/zljFBde72Di4dnkBaZ2Ep4O1
         vWE/jfytfLIik5m2waMAIgoAJswUhho5LW/xiB0gTjI3zLVuzUt4CwKvAgUK/el+/7Gv
         4Mvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s16si2182ljp.1.2020.10.14.09.46.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2020 09:46:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,375,1596492000"; 
   d="scan'208";a="361788531"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2020 18:46:10 +0200
Date: Wed, 14 Oct 2020 18:46:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Forest Bond <forest@alittletooquiet.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: rearrange lines
 exceeding 100 columns
In-Reply-To: <20201014163838.GA24058@ubuntu204>
Message-ID: <alpine.DEB.2.22.394.2010141842550.2687@hadrien>
References: <20201014154121.GA23584@ubuntu204> <alpine.DEB.2.22.394.2010141801041.2687@hadrien> <20201014163838.GA24058@ubuntu204>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 14 Oct 2020, Deepak R Varma wrote:

> On Wed, Oct 14, 2020 at 06:01:39PM +0200, Julia Lawall wrote:
> >
> >
> > On Wed, 14 Oct 2020, Deepak R Varma wrote:
> >
> > > Rearrange lines that are longer than 100 columns width. Issue reported
> > > by chckpatch script.
> > >
> > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > >
> > > ---
> > >
> > >  drivers/staging/vt6655/device_main.c | 8 ++++++--
> > >  1 file changed, 6 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> > > index 09ab6d6f2429..4fc90b111f9d 100644
> > > --- a/drivers/staging/vt6655/device_main.c
> > > +++ b/drivers/staging/vt6655/device_main.c
> > > @@ -461,7 +461,10 @@ static bool device_init_rings(struct vnt_private *priv)
> > >  		priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc);
> > >
> > >  	priv->tx0_bufs = dma_alloc_coherent(&priv->pcid->dev,
> > > -					    priv->opts.tx_descs[0] * PKT_BUF_SZ + priv->opts.tx_descs[1] * PKT_BUF_SZ + CB_BEACON_BUF_SIZE + CB_MAX_BUF_SIZE,
> > > +					    priv->opts.tx_descs[0] * PKT_BUF_SZ +
> > > +					    priv->opts.tx_descs[1] * PKT_BUF_SZ +
> > > +					    CB_BEACON_BUF_SIZE +
> > > +					    CB_MAX_BUF_SIZE,
> > >  					    &priv->tx_bufs_dma0, GFP_ATOMIC);
> > >  	if (!priv->tx0_bufs) {
> > >  		dev_err(&priv->pcid->dev, "allocate buf dma memory failed\n");
> > > @@ -1077,7 +1080,8 @@ static void vnt_interrupt_process(struct vnt_private *priv)
> > >  			    priv->op_mode == NL80211_IFTYPE_ADHOC) &&
> > >  			    priv->vif->bss_conf.enable_beacon) {
> > >  				MACvOneShotTimer1MicroSec(priv,
> > > -							  (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
> > > +							  (priv->vif->bss_conf.beacon_int -
> > > +							   MAKE_BEACON_RESERVED) << 10);
> >
> > Maybe it would make more sense to shorten the function name?
> >
> Thank you Julia.
> I do not think that will work. Even without the function name,
> the line would still cross 100 columns if you try to fit it on a single
> line. Also, shortening the function name would make it looks different
> from rest of similar named functions.
> Please suggest how would you do it?

Perhaps the whole thing can't fit on one line, but if the function name
were shorter, then perhaps the newline would go in a different place.

All of the function names in that file do not follow the kernel coding
style.  Admittedly it would not be such a great idea to change only one of
them.

> > Also the {} are not needed.
> >
> Agree if we can get the instruction on a single line. Else, I think it
> is better to keep the {} to make it more readable.

Coding style doesn't say anything about that.  The only exception proposed
is that when one of the branches requires {}, then the other should use {}
as well.

linux/Documentation/process/coding-style.rst

julia


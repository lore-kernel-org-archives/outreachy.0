X-GM-THRID: 6801606424596054016
X-Received: by 2002:ac2:5094:: with SMTP id f20mr7045944lfm.32.1583679878325;
        Sun, 08 Mar 2020 08:04:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:8583:: with SMTP id h125ls885810lfd.9.gmail; Sun, 08 Mar
 2020 08:04:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vswZUjbfk541QPglArkjTzvkgycxklrgwHbDytnuz1I6zLLkZWiQ9XPC9u/xgWlafLQ5Qro
X-Received: by 2002:ac2:4c15:: with SMTP id t21mr2723867lfq.117.1583679876953;
        Sun, 08 Mar 2020 08:04:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583679876; cv=none;
        d=google.com; s=arc-20160816;
        b=spaFkZVYvGp4i9VKCzJB8UPNnfwoueThldB3SaoiimFIqGLpLeFcljkehITr2HhnAu
         yTZUrEb+xvGq5Q85oB2844GcZNRwKI8fw97tJYXBA0uM9GAn6dHFuheexs8sXXryFXHl
         XAKL3eAPzXS/JKiZ3ecBHB5OXvUA8fzdZQznRklOuuVFx5bP4XUy0R7DCbiIW8neMwsF
         vzqhdnh2Zi5sf2XmObBqHJgt9fQhdRT8p02/q7rUKu6Bkj7K5ma6DToquM7246jUMlMm
         Kg+3Zg1l7wqBoNkpqFMlxh7gR6qPYD9cti5e/AWMlTtaqA5cXFrVdBjhFAc2o4/mtCwv
         Iohw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wmFCrmRsxYz6b5HeGuTRmvj2m78cWieLRRJiQm7kydc=;
        b=PmXeh0SYwTUx9Lz5SwsBelVMDad1S7QK2+7Fr5/AGJec7Fcl6dh7BYHW+U9F9DMwaG
         pVPoK+9++a5J2JVDrLkaNPgzDjWt/oQHL3IaCeT5AcxNUOsItsRZaYhjglWwXh6UlDd+
         BFgXmoUP6OZdVcRZKjVNafm78FGD7oWWe9C2SrKJUiBRBfxAl1RRKckyqVP1CSlIvuA5
         7YOeKTG8t5QpMMS8e97KBjn94NXkhY7Qg8taRbr7ORO2giPY03QLG8hjrkS2XVsssHJp
         Ejqqi9EF2+G4qd/tdC7P4AXE3jZG6pnEw4KKAtyt2MxAm3JG5AUggE8+qAh6CbM//kWl
         nU8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=eURbXodd;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p14si40436lfo.0.2020.03.08.08.04.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 08:04:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=eURbXodd;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x442.google.com with SMTP id s5so4020105wrg.3
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 08:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wmFCrmRsxYz6b5HeGuTRmvj2m78cWieLRRJiQm7kydc=;
        b=eURbXoddygqziFhzilrqW9bFVIZP3iyPggpzn0M+k4RGaxW0bB1aHCFb6AnAWd3qUE
         AvljIhm7SDSErpB/WxyoOqKKSpBdIh0iuxeJNBU7ejjJdZL44qriTDjm8cA8IGNKYhtd
         yWjg4nzjaKbvpYVzL/VU7JAATeTAOG986SK8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wmFCrmRsxYz6b5HeGuTRmvj2m78cWieLRRJiQm7kydc=;
        b=WDrDZg5NnGhIDrBAIFUKxDpH+L+pxXrKAoatUtCmR0tJWiAqldeXqlh4f9mtu/jH6Y
         TyiZQ26nQe0/nrHASkxHMgk5vOpuDw2+emdcRow1aRe7rN+NPBOUtECFwPJo2jRM9iUV
         mtozGTcP6T/YZHVB3zgdFjlvHfVSwbbU1S9ODHnqSqMZXZUw4mi26sl9K5SsO0AFJS6U
         iErr9uP8DX3PjBB9ysXsv8qEzVt7+ZJOMRc8x74z51ool26jc/bjQSouyKT/fsgYC1aF
         /lJnvu3Y/HFu10XIv9tvZcGk7copDsCtv8hk+y0W56FLRFiNsERFPJt8F7f8o29PJsr8
         8BFw==
X-Gm-Message-State: ANhLgQ34KVcwyqjSTzVgxWwZfX9quWyXvl7/uEYP5+Pq2oH/9OVMZWnW
	VhQv7rdNbjUoDk1tCfyxrjA6aQ==
X-Received: by 2002:a5d:4687:: with SMTP id u7mr2202075wrq.129.1583679876189;
        Sun, 08 Mar 2020 08:04:36 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id u25sm22004681wml.17.2020.03.08.08.04.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 08 Mar 2020 08:04:35 -0700 (PDT)
Date: Sun, 8 Mar 2020 16:04:33 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: vt6655: device_main:
 cleanup long line
Message-ID: <20200308150433.GB4173@supernova>
References: <20200307230631.13900-1-lu@pplo.net>
 <20200308065010.GC3983392@kroah.com>
 <20200308134915.GA4173@supernova>
 <alpine.DEB.2.21.2003081548350.2400@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003081548350.2400@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Mar 08, 2020 at 03:50:09PM +0100, Julia Lawall wrote:
> On Sun, 8 Mar 2020, Lourdes Pedrajas wrote:
> 
> > On Sun, Mar 08, 2020 at 07:50:10AM +0100, Greg KH wrote:
> > > On Sun, Mar 08, 2020 at 12:06:31AM +0100, Lourdes Pedrajas wrote:
> > > > Code cleanup: long line found by checkpatch.
> > > >
> > > >  Changes to be committed:
> > > > 	modified:   drivers/staging/vt6655/device_main.c
> > >
> > > Why are these two lines in the changelog text?
> > >
> > My mistake, I thought it is correct to include them, sorry!
> 
> Take a quick look at https://lkml.org/ and see patches that other people
> have sent.  If you look at some examples, you will get some intuition
> about what information should be put where.
> 
> julia
> 
> 
Yes, thank you!

> >
> > > >
> > > > Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> > > > ---
> > > >  drivers/staging/vt6655/device_main.c | 3 ++-
> > > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> > > > index 0442f71494b2..88e1284a7743 100644
> > > > --- a/drivers/staging/vt6655/device_main.c
> > > > +++ b/drivers/staging/vt6655/device_main.c
> > > > @@ -1075,7 +1075,8 @@ static void vnt_interrupt_process(struct vnt_private *priv)
> > > >  			    priv->op_mode == NL80211_IFTYPE_ADHOC) &&
> > > >  			    priv->vif->bss_conf.enable_beacon) {
> > > >  				MACvOneShotTimer1MicroSec(priv,
> > > > -							  (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
> > > > +					(priv->vif->bss_conf.beacon_int -
> > > > +					 MAKE_BEACON_RESERVED) << 10);
> > >
> > > Now you have another checkpatch warning :(
> > >
> > > THe original is fine, the line-length is a "strong hint" that sometimes
> > > needs to be gone over.
> > >
> > > sorry.
> > >
> > > greg k-h
> >
> > I also had my doubts about this one, thank you for clarifying!
> >
> > Lourdes.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200308134915.GA4173%40supernova.
> >


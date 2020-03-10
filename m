X-GM-THRID: 6802680075948916736
X-Received: by 2002:a2e:8518:: with SMTP id j24mr8986lji.138.1583876088317;
        Tue, 10 Mar 2020 14:34:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:686:: with SMTP id t6ls2026658lfe.3.gmail; Tue, 10
 Mar 2020 14:34:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vskAhyiSqsUwLT5/ZXz5S/C4tZrazU/QztM5PdJwhzsSn5f0d4L62Iqb0JmVCHOyhIU2rMy
X-Received: by 2002:ac2:54af:: with SMTP id w15mr77236lfk.17.1583876087269;
        Tue, 10 Mar 2020 14:34:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583876087; cv=none;
        d=google.com; s=arc-20160816;
        b=0/Kli0HHxPBShuil0QnPoRwbe+G+rLNxtRrRuxWh5b/O93hZxe9IVWSc3ovB+8OuAE
         JIPqSLaGlIFso/ca2RPvDIAZcTiM74YC15Mok9oeRDQhZ/EKKO/Vl6dqFwr83i503W+m
         7+xY4L/+vxmkRkmW7Vkt8hJhhl9RO0ovbwQXdNywKhFKmisbk740rQqTzG9dEnmPnofJ
         FWJQ/jrTHOwMKsm/6/9jsSl+sD/IFqpp8B2s+dmtGIwLJkntPoaYIqHq3T2S0IIMWqDT
         3hVnKWMphWyLptDwcZX2R8rw+xh1h8lFs/fqblWQ2wGdm5K3/TsSVOqs6GthQbXyScxv
         0hbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DYjQpKjJw/OIpoM7ujSEkaC5qvEoW9ETNEJKLagmUtg=;
        b=doZHduVu7WM59bdIonvXF1ggNaITEO+KbVyENA7eUs9E+whyeYrp8OOZ1T0iyuE6a9
         W9qalZEusdgSTzZkhUxtA1bLKabR6bWTQv4Ozw4FQ/KmN4uKxB45CUNaD5XyOl1HvRUJ
         taQd0LWPlSPE2oIktWKmJ4V6QfQ8xPdNohoCmR1fhG4QlX6rYt53/s2eG4Vtxdf0/IfQ
         NTEXH6TRzy2+BLX4rsbePT4V5w1xYXisHaLdClmFY2eUBHTlzPOimOA4TX0d86msrbaX
         dINB6lTQeKbPVOorpHIlK60bPjNarEiUb0apVCzCxsrGuRY5N80iflsUetbW48h31qRO
         8XvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=hB31sHJ9;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id w6si6672lfa.1.2020.03.10.14.34.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 14:34:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=hB31sHJ9;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x541.google.com with SMTP id h62so175444edd.12
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 14:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DYjQpKjJw/OIpoM7ujSEkaC5qvEoW9ETNEJKLagmUtg=;
        b=hB31sHJ9H3P92zej2QwqTtN/45E1IOMEUKH+GVDnsRupfE4lXbv6TZcaWL4VF/3RI7
         I8oOx+CGvOQoUwKEL7a92sramkAo/zxaiof5pftlG+ZJbI5caV0WXRk2udqijAgizC+X
         yNNP78NkAb6oWshwfbjieXEs7ED+zEd8b26rg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DYjQpKjJw/OIpoM7ujSEkaC5qvEoW9ETNEJKLagmUtg=;
        b=mLAKW9fLpesnca5j0RfgNQjfs8CpOSKE+mVHHj+/gTpaQKZB6UDCotM6xvE5h13086
         IPNGtzrz5DvVpNHk0GZdD0mYhOtPrl0LEbo10bATGKKORS9Bi3r2DLMipN7See7x0uqo
         pyEpcczPE630o/5CQ0QFCX48vPtKUkZowJcKVbupoZwLNqPpFCmHQTKeMmYE09uGBivI
         91HTq8cHbMk0p7QFcPKVG2Hvkuln0h0xCrkux48eAe92vRc6L5Lf0yEdJyoOGqiCGGsY
         6Kac8nlU11Kz+KymGe2jGNG+Kg+2sUyygTO/FqUD/PVRNGPJ0ljGzQyaSX2d2lTDxge/
         JNPA==
X-Gm-Message-State: ANhLgQ1/BAg/lM0VLoodPi8+z/W7deTwm+BZmWdReT0EhlNLh5F/9Up1
	C2TKM7KvC9Yxtv0bSUJ4e4srT+EzMEDxiw==
X-Received: by 2002:a05:6402:b3c:: with SMTP id bo28mr19538393edb.284.1583876086790;
        Tue, 10 Mar 2020 14:34:46 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id g6sm4246739edm.29.2020.03.10.14.34.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 14:34:45 -0700 (PDT)
Date: Tue, 10 Mar 2020 22:34:36 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: r8192U_wx: use
 pr_warn instead() of printk()
Message-ID: <20200310213436.GA2925@supernova>
References: <20200310203251.2961-1-lu@pplo.net>
 <alpine.DEB.2.21.2003102141390.2313@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003102141390.2313@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 09:42:50PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 10 Mar 2020, Lourdes Pedrajas wrote:
> 
> > printk() is deprecated, use pr_warn() instead. Change suggested by
> > checkpatch.
> >
> > Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> > ---
> >  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> > index 0118edb0b9ab..09ab68865934 100644
> > --- a/drivers/staging/rtl8192u/r8192U_wx.c
> > +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> > @@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
> >  				hwkey);                 /* KeyContent */
> >
> >  		} else {
> > -			printk("wrong type in WEP, not WEP40 and WEP104\n");
> > +			pr_warn("wrong type in WEP, not WEP40 and WEP104\n");
> 
> There is a specific message printing function for network device drivers.
> 
> To find out what it is, you can probably go to drivers/net and do a git
> grep for warn, or something like that.
> 
> julia
> 
I agree, thank you for the hint!

Lourdes


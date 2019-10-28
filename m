X-GM-THRID: 6752322786481405952
X-Received: by 2002:a6b:3707:: with SMTP id e7mr15940083ioa.293.1572226364105;
        Sun, 27 Oct 2019 18:32:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:88a:: with SMTP id z10ls2673948ils.6.gmail; Sun, 27
 Oct 2019 18:32:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQ9exEx6SWnc2uzs+Lo7UY29ViHGhfAxwkTGc65aOk4ppiHIVn+4bPMuOcHtOwT3GlIulS
X-Received: by 2002:a92:ab08:: with SMTP id v8mr17559871ilh.231.1572226362762;
        Sun, 27 Oct 2019 18:32:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572226362; cv=none;
        d=google.com; s=arc-20160816;
        b=zV2aKIEQajKKzWKq1k2LQ0kUQvJL76XqDA8g6Agsja7iVO6c6k5/jnTNAZcMQ8lUNc
         jNeUxuDrI3fkEzMhFXUq9WG4dR5qBdOFPPGGBYnEPXsbv+yUbv1JQhEhXiQ2f6rLB36n
         w4EcYmWbTFOLGL6nOf4PO99SpX9gHQz/C6CF+HJmv2yUAT6yW0BvNlT9LScgi8Da3Ofl
         ZUz9KtoiyvoX5b2cfM9jU8Av5MxoAfvVL60IzYPbpC3HI8PqccUXUAV7VBWEMmQ9qXoF
         pveqZdv7aWLHbHceeBLiAVZ4tMNNnTuZYDYxkv2T7mLaLCdILGcNDhGrEfFaxQ/vMhj+
         EmIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rNeBYjd0VlvdMNidqwole1kHsZaUQaK1RTAqGEvPmRE=;
        b=QDPJXumFKSeqDQcYW0Hm4aJYxexJ25nBPqbi6OSaWiiIzRV+rGh2j4NHguQvJWNgxl
         O5Oo9qrJyUGijXPvVSYRzPazrAUSSXjqkAtOMFDKlCX5MNwaKpzjpdC0sp4S1hYvou3m
         fSuSKUThnNFBt8I1UrNTp+H9LV4Xc7ZAsqmPBhcidwZCgExd6IdIIBr9wOO7hFItWySr
         JbaRsFFwjr06vDPxZxxx+UrlydgclBwZcXvp1nvaxyuicwAGj9Pt0VM5mejP//2FSTjr
         nVMrQggaCDOy15Mi6u3OxiofeniftUJBEJ4fdNSMm2ixdHXeapb22GvjTlGJaFeYnNEi
         Fzkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=kg+uEiyx;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id f5si33184iof.4.2019.10.27.18.32.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2019 18:32:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=kg+uEiyx;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x943.google.com with SMTP id o4so944686uat.13
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Oct 2019 18:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rNeBYjd0VlvdMNidqwole1kHsZaUQaK1RTAqGEvPmRE=;
        b=kg+uEiyxeK/F2QKU6/99FKkI+Dh4b4UG6mLZA7JIxX1qxwQItz7klv2lrhi4WkJsOX
         hC3aqwaHkebcJ915ZNb8QW+wd9AENIfbhZtsE3p9LQ3BkDQ2XVjRsPaxB3Qq6H9fcwU4
         NefnhSTyDZ7aDHsSlChl628QSrBnHEkVbNRw7C6MeY65yMCK5EgBrJmIgJrM3s/tF3eb
         W8m3uF8iwLa9oeeCuHpmOGYLhAmlJBa4laarRHAGIavmUN4W+48MNoM/7ttHbtVbgNUp
         WbGLQ69NW4yX8pOMpNvwvboSNLSrn4rj/YqloF9ZYjaXRVU9OtEw0G2k2aSm4aFTYUEY
         nClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rNeBYjd0VlvdMNidqwole1kHsZaUQaK1RTAqGEvPmRE=;
        b=bvekRfUKgsTLVRoDFiOTcHOHtSCY8YwxrQylAsq7YRTDquEDuyYMnIUXgdESTqLUDT
         SiJRL799eG2P5hZTR3CzeWBvx82HL/IHcWBx6Yi4+UrcRbWEGn00djNeRMZEvpcrh+rQ
         eEdusr4QXq+sWJZeyVM6Sjj8y+whjeuVu83RFSS6MOqvPJud3/Xdn44zPfk8xOhuSbL+
         G33e6fmBf7jNPCyirzR7N++vEKFlGQQ8GHrojIBBGf7NCgqHD2IKi9gTxn4zxQ7CG5KD
         +ry2VsDmWoWsFnr8JXESVPw69J18eXfy78Ag0SKJyZW4a3PTxVwuenEonpNGDORDsHd/
         8Trw==
X-Gm-Message-State: APjAAAUKNe0hx/4yYAf3JJEYgQ4J4sb0B5+J1lduKYlZoVrgzGilo6oA
	KC5fUYmQa05GPoyfuX8qHa00pA==
X-Received: by 2002:ab0:2c19:: with SMTP id l25mr7107008uar.128.1572226361862;
        Sun, 27 Oct 2019 18:32:41 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id i2sm61003vsr.7.2019.10.27.18.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2019 18:32:41 -0700 (PDT)
Date: Mon, 28 Oct 2019 01:32:40 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org
Subject: Re: [PATCH] staging: ks7010: Fix unnecessary long lines
Message-ID: <20191028013240.h4k4byn54gjuozv7@linux-kernel-dev>
References: <20191027034056.GA20613@linux-kernel-dev>
 <20191027070456.GA1703830@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191027070456.GA1703830@kroah.com>
User-Agent: NeoMutt/20171215

On Sun, Oct 27, 2019 at 08:04:56AM +0100, Greg KH wrote:
> On Sun, Oct 27, 2019 at 03:40:56AM +0000, Frank A. Cancio Bello wrote:
> > checkpatch message: "WARNING:LONG_LINE: line over 80 characters"
> > 
> > Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> > ---
> > 
> > This is the first patch that I send for "Outreachy December 2019 to
> > March 2020". My plan is to keep these first patches very simple.
> > Once they get approved I will move to less trivial fixes ;)
> > 
> >  drivers/staging/ks7010/ks7010_sdio.c | 3 ++-
> >  drivers/staging/ks7010/ks_hostif.c   | 9 ++++++---
> >  drivers/staging/ks7010/ks_wlan_net.c | 3 ++-
> >  3 files changed, 10 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> > index 4b379542ecd5..c7ba658e234e 100644
> > --- a/drivers/staging/ks7010/ks7010_sdio.c
> > +++ b/drivers/staging/ks7010/ks7010_sdio.c
> > @@ -446,7 +446,8 @@ static void ks_wlan_hw_rx(struct ks_wlan_private *priv, size_t size)
> >  				     DUMP_PREFIX_OFFSET,
> >  				     rx_buffer->data, 32);
> >  #endif
> > -		ret = ks7010_sdio_writeb(priv, READ_STATUS_REG, REG_STATUS_IDLE);
> > +		ret = ks7010_sdio_writeb(priv,
> > +					 READ_STATUS_REG, REG_STATUS_IDLE);
> 
> Why not just wrap the last parameter?  That's the normal way to do
> something like this.

Thanks for the suggestion. I already sent a new version of the patch.

Frank A.

>
> thanks,
> 
> greg k-h


X-GM-THRID: 6807884729429262336
X-Received: by 2002:adf:fe03:: with SMTP id n3mr3429646wrr.266.1585141304132;
        Wed, 25 Mar 2020 06:01:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls764849wrr.4.gmail; Wed, 25 Mar
 2020 06:01:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt8W+F3snXy0PUbRGYnKUcEdsqr1FARpjOUwsy4Yoe22LNsXztaai0mArSRkhN6e7OS4Y12
X-Received: by 2002:adf:a1d6:: with SMTP id v22mr3439172wrv.416.1585141301359;
        Wed, 25 Mar 2020 06:01:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585141301; cv=none;
        d=google.com; s=arc-20160816;
        b=Rw1HbzkwZkqcXD/Ep3D+3GjmkBkt1d+9t3G22lxUsNdndiimQwAZnSfqIXbSJC8RMF
         ARHOKRMBDuU+kAspUbIKkhj+PgBTpArx5zXSPC5ZcDikaSy/ewnQhvWFCW8FML+mN08u
         Rfq1UH6FmVF8jl1eRpoXEVEeCeoZQfQeFlkmmsHIo7Gg7fPz5MnzL1MRwbZQvQ/PZaml
         68HQEZZrVTSGKwiranYLCnVjbdxASl9pt40ofk+P9tEKIzGVoW/aaAyQc70030Vo6SU/
         sUGB0NKek55RISBOc+Iu4d932ZlF2Eri576xsRwuNx97XB3Vty8ZZcFClPWJHFknWVO9
         ytKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=5mQ7NEBilgPpgbtT6X0K24KpN4ggfiKHr+0k0gHRQ88=;
        b=sOh1pMdoFrVYsSXvPaweUSELFWM4eXGSv3MZMoGBZpPb3GgWF8Mib6rSO+lZA3jFbk
         HovO4YDDc/Mvgpc3LQf7HU/kqyGsbjqGcY+H5eFL3w4EbAbEyKOJ2z4jqqvOscaknKSE
         xiezeOXeQSvbZC1RTDr8TsuGQaJTj80ddYJSlrHpiU1Tn+EQ53McLd36ECmaTOZ+brUG
         AE0LQ49t1YUxkpq61WCUxc4qtuJidvFy5My4KLAZEu92u4QoYNmXutZvLPxZ3j9EjjP6
         GQio12/9dK5KqF+7++tkO1ayuhCMb2cox8V4l9dmVP/NMFQfVq3+JJJZNwjbQbfEd/Ad
         i0dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l2si397163wmg.3.2020.03.25.06.01.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 06:01:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,304,1580770800"; 
   d="scan'208";a="442193174"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Mar 2020 14:01:41 +0100
Date: Wed, 25 Mar 2020 14:01:40 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/6] Staging: kpc2000: kpc_dma: Use
 sizeof(*var) in kzalloc().
In-Reply-To: <744e722675c1368352c8bfc046b5ea46ddb07ceb.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003251401220.2444@hadrien>
References: <cover.1585082157.git.jane.pnx9@gmail.com>  <bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585082158.git.jane.pnx9@gmail.com>  <alpine.DEB.2.21.2003242224130.3306@hadrien> <744e722675c1368352c8bfc046b5ea46ddb07ceb.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 25 Mar 2020, Sam Muhammed wrote:

> On Tue, 2020-03-24 at 22:24 +0100, Julia Lawall wrote:
> >
> > On Tue, 24 Mar 2020, Sam Muhammed wrote:
> >
> > > Modify struct allocations in kzalloc() to match the
> > > coding standards.
> > >
> > > Checkpatch.pl CHECK: Prefer kzalloc(sizeof(*var)...)
> > > over kzalloc(sizeof(struct var)...)
> >
> > You could consider why the former is better than the latter (although not
> > everyone agrees that this is the case).
> >
>
> That's right, this log message is poor.
> i'll make another revision with these changes but i want to add another
> small patch to the series, so this makes it a new series? or adding in
> the log message that a new patch is added will be enough?

Should be enough.

julia

>
> Thank You
> Sam
>
> > julia
> >
> > >
> > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > ---
> > >  drivers/staging/kpc2000/kpc_dma/fileops.c        | 2 +-
> > >  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > index 5eb6c5f24feb..21ebab7dbc7b 100644
> > > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > @@ -253,7 +253,7 @@ int  kpc_dma_open(struct inode *inode, struct file *filp)
> > >  		return -EBUSY; /* already open */
> > >  	}
> > >
> > > -	priv = kzalloc(sizeof(struct dev_private_data), GFP_KERNEL);
> > > +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> > >  	if (!priv)
> > >  		return -ENOMEM;
> > >
> > > diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > > index ec79a8500caf..25ea16a1981e 100644
> > > --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > > +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > > @@ -98,7 +98,7 @@ int  kpc_dma_probe(struct platform_device *pldev)
> > >  	int rv = 0;
> > >  	dev_t dev;
> > >
> > > -	struct kpc_dma_device *ldev = kzalloc(sizeof(struct kpc_dma_device), GFP_KERNEL);
> > > +	struct kpc_dma_device *ldev = kzalloc(sizeof(*ldev), GFP_KERNEL);
> > >
> > >  	if (!ldev) {
> > >  		dev_err(&pldev->dev, "%s: unable to kzalloc space for kpc_dma_device\n", __func__);
> > > ---
> > > 2.20.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585082158.git.jane.pnx9%40gmail.com.
> > >
>
>
>


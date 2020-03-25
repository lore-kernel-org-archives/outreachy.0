X-GM-THRID: 6807884729429262336
X-Received: by 2002:a19:3803:: with SMTP id f3mr1513156lfa.160.1585123839499;
        Wed, 25 Mar 2020 01:10:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls250007ljk.8.gmail; Wed, 25 Mar
 2020 01:10:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvflZIO8J6x2e7yWYt+V7pjsQFOJ/dLfJduZkP0O0tGwyrafHheHMZ3h1A/qgkZhyVN4OsJ
X-Received: by 2002:a2e:3c0b:: with SMTP id j11mr1228273lja.9.1585123837989;
        Wed, 25 Mar 2020 01:10:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585123837; cv=none;
        d=google.com; s=arc-20160816;
        b=Ej64hLx/C6Mrrz5u8TEO0CcOdOGHLI+efVd8LuwDAK46P0k3Zk9v+XrYccgW7ra7oO
         4kzVhC+684lFB5ropnxdhxlEHbyXu+y3J/UtOu5bijFG2HMx33gbA5VxnEdAZNqARsFo
         1COzcKlH9yJ53yLz7sQ0xqVa1q2BjiVIAF//BhxoovFbJu4es4qANXs8Y7suoyvYtYK8
         nnu1vR3vKMjM05RhADPNX3rf9eODKzvAIKrV6zLckh1OsQbVVZG08j4Z4plfnkSUDq3m
         EOYZUFbVnWoYgq2SkR9Iw9VxgIo3A3Zbodv0fP2V4T3Bn8wepXMbVW89D558w424dINC
         2Y5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=r8NQuh1o16SuMCWHhA2O69K9CqtxakluF9uebRArxiM=;
        b=VIf2bOGP6/o1hQv9jSJjYd+ngCuvAwKfJE/d1JvyKWN5znikDhrFX9qPTxVbYDgzkj
         rCLLvue1Oc+PqNyWztotT3puu3WSeo8WLQIU4zMC7r4TI4im8r4nWCDtbKlBxNIt4+NZ
         umpmko3XnvxQ8M6/zLJf+7RKDEpBaHeUbDbslt8++eHmYuOyqgcA9zYmdVrOv2zo/vh4
         QMQW8s5QLuH7w9Hl6zFgCTekvLQvIokv6ogE+VhmyQrf3j5+bZp/D9/dWK/9n+lsb6MI
         2ReQtNfi3ZTqjuX72xe2R3hT++vAvztiuEe6hNjlJmFb56P6P+7MvG09/QxSn5KgPt/5
         F4YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RwOmHk4l;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a21si1472705lff.3.2020.03.25.01.10.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 01:10:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RwOmHk4l;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id m17so1612167wrw.11
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 01:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=r8NQuh1o16SuMCWHhA2O69K9CqtxakluF9uebRArxiM=;
        b=RwOmHk4lwl/tvzO7zkqBfmNnpv7/cubdu0OX44UyWlz7TcrOtd+Yqfy6OxfOcCtNoa
         RDPKOhAv/3vdV+tds7KoFnVTSmL5aWDdY9k8CbscxAjXSx+rzxHn8ygy6cXgiGLotQ0u
         xRovuO5IyMlKIhhdtZKcj75CL/XspnE15DcWUqHTpOXdgBeI3Y4qbftSLugQq2PLaLtn
         5G4vHHrK2DlKo6T734Pe7OBP9aFCDh0gDbg7scxznSGzErqokmrZNKPr/Y0Mvq7wwU1D
         Hzr/iC3U/YJ4zQwM1BaJ4vGSeWeHReHucWJE20g5ueNb+XJ2DN5z5oq4lhgCNvaFVmxN
         BniA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=r8NQuh1o16SuMCWHhA2O69K9CqtxakluF9uebRArxiM=;
        b=YDl20Un2f+rZIPeC8umAAUvfNKj3ph/Zfut4s/+ls8Cuv6VUWd3axYJq+YH+t/jiXA
         GtrRZ+hr42NTGI1WrjgTl//Nc3+0gOzoB+rXkhoMuTSjiATS90fjsM8ofLp0zm39BD8y
         Yc9TtK0dnnS6lRjOG578tMmcP2KUFryhs1ZkkYc9eB38/d4gxTpvYDFP7bLa6MOygv/W
         3lfrkBMJ8/L+cteljvAjDnG+DGq9VGkqEQmaUSnZZboHq33dmBJEsR3wkN3sr95GEBNL
         XqdyGBzks9QqJbWtKrA7O9+yz55RZ/S50G4blJ4TtMBrhkwbqX6KQP6HOpBhLYgKyYq7
         Gxgg==
X-Gm-Message-State: ANhLgQ01+KDX6SZqRVpjvxZ/ZzSpzM+1YwtxZwtLzPSC+grhTPbLPrzo
	vU3TI/kabbC7tysxP7yuMe4=
X-Received: by 2002:adf:afd4:: with SMTP id y20mr2144636wrd.57.1585123837372;
        Wed, 25 Mar 2020 01:10:37 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.86.140])
        by smtp.gmail.com with ESMTPSA id b5sm32004659wrj.1.2020.03.25.01.10.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 01:10:36 -0700 (PDT)
Message-ID: <744e722675c1368352c8bfc046b5ea46ddb07ceb.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/6] Staging: kpc2000: kpc_dma: Use
 sizeof(*var) in kzalloc().
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Date: Wed, 25 Mar 2020 04:10:35 -0400
In-Reply-To: <alpine.DEB.2.21.2003242224130.3306@hadrien>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
	 <bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585082158.git.jane.pnx9@gmail.com>
	 <alpine.DEB.2.21.2003242224130.3306@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-24 at 22:24 +0100, Julia Lawall wrote:
> 
> On Tue, 24 Mar 2020, Sam Muhammed wrote:
> 
> > Modify struct allocations in kzalloc() to match the
> > coding standards.
> >
> > Checkpatch.pl CHECK: Prefer kzalloc(sizeof(*var)...)
> > over kzalloc(sizeof(struct var)...)
> 
> You could consider why the former is better than the latter (although not
> everyone agrees that this is the case).
> 

That's right, this log message is poor.
i'll make another revision with these changes but i want to add another
small patch to the series, so this makes it a new series? or adding in
the log message that a new patch is added will be enough?

Thank You
Sam

> julia
> 
> >
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> >  drivers/staging/kpc2000/kpc_dma/fileops.c        | 2 +-
> >  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > index 5eb6c5f24feb..21ebab7dbc7b 100644
> > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > @@ -253,7 +253,7 @@ int  kpc_dma_open(struct inode *inode, struct file *filp)
> >  		return -EBUSY; /* already open */
> >  	}
> >
> > -	priv = kzalloc(sizeof(struct dev_private_data), GFP_KERNEL);
> > +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> >  	if (!priv)
> >  		return -ENOMEM;
> >
> > diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > index ec79a8500caf..25ea16a1981e 100644
> > --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > @@ -98,7 +98,7 @@ int  kpc_dma_probe(struct platform_device *pldev)
> >  	int rv = 0;
> >  	dev_t dev;
> >
> > -	struct kpc_dma_device *ldev = kzalloc(sizeof(struct kpc_dma_device), GFP_KERNEL);
> > +	struct kpc_dma_device *ldev = kzalloc(sizeof(*ldev), GFP_KERNEL);
> >
> >  	if (!ldev) {
> >  		dev_err(&pldev->dev, "%s: unable to kzalloc space for kpc_dma_device\n", __func__);
> > ---
> > 2.20.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585082158.git.jane.pnx9%40gmail.com.
> >




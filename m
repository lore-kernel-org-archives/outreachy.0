X-GM-THRID: 6885936091088551936
X-Received: by 2002:a05:6830:19ce:: with SMTP id p14mr1484535otp.315.1603261237483;
        Tue, 20 Oct 2020 23:20:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:60a:: with SMTP id w10ls1093091oti.0.gmail; Tue, 20
 Oct 2020 23:20:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyds7Wh3oLzU6vNFsgqN5Dhx18dsQ6vyL7uhZwCSxRuRcl3vbCq0p1KWceW4+HgxTiRv8o8
X-Received: by 2002:a9d:6c8a:: with SMTP id c10mr1448100otr.293.1603261236359;
        Tue, 20 Oct 2020 23:20:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603261236; cv=none;
        d=google.com; s=arc-20160816;
        b=lGbcDrNgLE6w9ul12rOyFdeXxcYuv/pamygSMgUjNLqKaKT1qy23SZJGOcsqRZ4obm
         YdEbGZgOF3S5CWURB4YPmZLs4WrSd3nUt6UBO1OH5BXAKiP1nrqJTBlwHctF7+GnXSra
         SdWY91x/BVVf1IvGujcRldR5Ph/bJ7kTM9CUGu0vneoK9rHcq93shKpQvFcrcjmkydeB
         dyI6dIdBoNoGzzywfXR2t39VN4wC4psH0GIcsdzsLp0JP0If7iZMoP+BDYeTXmotMRHU
         MuF3C/8l/RJ/0wzJTWCE//jeSIbQvUnoc+vDSbZp4nlG3GyVp45eRa48Vk/m8RR1l8AJ
         3IFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oDdHTOY3M9RLd73jSuuTiDnRcpNwd0jVh5REM3abuOc=;
        b=GHVB9WG+eQH0oHvwP6bmjZuBl/iXQO7H4jSQeBG9T1e+xiQJSTF/yVrxbkZZUQOSi1
         aLJVmRPhlBJt9+WNFBdjIaKAzUPc9mP2stTHAV5SURPw/GthYCVuwiW0Idmm6J2O9YPG
         My0+6uYqQsIRVQk2PUqxhzxQB05khz4mhUJOInVZmn2BqAfcKdF7XI3zOwykdW1bfbxC
         6QB0LenXFSeO17+DB/T4ppUlaiD2grlM5auD3FP5dC4Thiz2KC9MqiqKeurH+40sPfRT
         9viz2V9/CYsBCR9LiJPqU9BT0sHxXEDvRdk/xOQHDCShdRA+DvdxygqWMKLJcs9BQ6/d
         UjUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NsvwSMzd;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a7si67651oie.4.2020.10.20.23.20.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 23:20:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NsvwSMzd;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id gv6so603796pjb.4
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 23:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=oDdHTOY3M9RLd73jSuuTiDnRcpNwd0jVh5REM3abuOc=;
        b=NsvwSMzdZ7wU0dy9p74HVApYFLpZOlJAd1yl0CtEI5TS037ra9cJgnpw/rXsFiH7Ig
         LcW2eMYDEHaXRmzRwivePCm05kXIigsdEJaCEtIhG9i6lWdBhb2Pvrm7aggNod8WFFNY
         PeOtMPUm6pZcUKjc9Ql1y3E1/9qoA2mwL4pOHNjDzjhJ/9ZmU0KCVKkqz0uab6HxwPvg
         IUGxIbD4wxC8Tq9utaF51hou4Ozhy4dWQMVKJZfE3a7S86+Uo7vK0SErFuVddv6Zyrlx
         TiCxGCPNf9zZkk1kq2VV52+JqzAWDvFjWMKu9alsneKCSKMqaBBBOSMDqXPWtGY7gFQ5
         9pXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oDdHTOY3M9RLd73jSuuTiDnRcpNwd0jVh5REM3abuOc=;
        b=o+/bAtfs7UPBR0H2AqUHretQkXWav4Kn4QDrECWhQ8CsPzjISn0mRYXYWEtuF7TqmZ
         Js0uY6W4137YDagVXknwIHF1IAlTkxXi7XA3isUPF7fvUhIuNPjvhaFuGRtY773aszwB
         wWkLGkaJTqTrDApgXEeYTCx0TRGMmZEDQWSO8t+BT2S4R3SGs1DavksFF++BsVVAfL3j
         IWyaBb0HR6xMMvv51EnHykLVpeavQUxSL+G0n3c0Su3k16gEjt++ISzRQAp9f8OFeUcD
         GINioJytWQl3oJzpslwk1KH5yad6DTQm8hTotx7Bl0ZHfc5xntd2CyheHLsmpz4sSbQD
         fY9g==
X-Gm-Message-State: AOAM531Nm0XXjTwGqIxnFy/pJlcSlqxzvzRHep7Jx7EXCAo2MZExyOOn
	c+oM5JQ5bpXJ0jsKFqdj1CQ=
X-Received: by 2002:a17:90a:d341:: with SMTP id i1mr1846296pjx.18.1603261235703;
        Tue, 20 Oct 2020 23:20:35 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id d2sm915229pjx.4.2020.10.20.23.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 23:20:35 -0700 (PDT)
Date: Wed, 21 Oct 2020 11:50:30 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: kpc2000: kpc_dma: rename show function per
 convention
Message-ID: <20201021062030.GB763329@ubuntu204>
References: <273abf291f47286a702d2a53445e7a6efcf9972b.1603256795.git.mh12gx2825@gmail.com>
 <5d757cf6f97533b48aa471db6efc100acfb8f517.1603256795.git.mh12gx2825@gmail.com>
 <20201021055031.GA975815@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201021055031.GA975815@kroah.com>

On Wed, Oct 21, 2020 at 07:50:31AM +0200, Greg Kroah-Hartman wrote:
> On Wed, Oct 21, 2020 at 10:40:21AM +0530, Deepak R Varma wrote:
> > Rename show_engine_regs to engine_regs_show as per the convention
> > followed. Issue reported by checkpatch script.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > index 7698e5ef2a7c..b6d1afbd452d 100644
> > --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> > @@ -50,7 +50,7 @@ static void kpc_dma_del_device(struct kpc_dma_device *ldev)
> >  }
> >  
> >  /**********  SysFS Attributes **********/
> > -static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *attr, char *buf)
> > +static ssize_t  engine_regs_show(struct device *dev, struct device_attribute *attr, char *buf)
> >  {
> >  	struct kpc_dma_device *ldev;
> >  	struct platform_device *pldev = to_platform_device(dev);
> > @@ -80,7 +80,7 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
> >  		ldev->desc_completed
> >  	);
> >  }
> > -static DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
> > +static DEVICE_ATTR(engine_regs, 0444, engine_regs_show, NULL);
> 
> Shouldn't this just be using a DEVICE_ATTR_RO() macro instead?  Make
> that change and the name will be fixed up at the same time.
> 

Thank you for the feedback. I will review what the mentioned macro does
and how it can be implemented. Will send a revised patch with the change
suggested.

> And did checkpatch really complain about this?  What was the actual
> message it produced?

Yes, the WARNING message from checkpatch was:

WARNING: Consider renaming function(s) 'show_engine_regs' to 'engine_regs_show'                     
+#82: FILE: drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c:82:                                     
+}    


> 
> thanks,
> 
> greg k-h


X-GM-THRID: 6338729335697965056
X-Received: by 10.66.7.10 with SMTP id f10mr1591334paa.127.1475852071947;
        Fri, 07 Oct 2016 07:54:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.201 with SMTP id g67ls708818otg.30.gmail; Fri, 07 Oct
 2016 07:54:31 -0700 (PDT)
X-Received: by 10.200.41.47 with SMTP id y44mr2693514qty.27.1475852071532;
        Fri, 07 Oct 2016 07:54:31 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si5915584par.0.2016.10.07.07.54.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 07:54:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 906477AA;
	Fri,  7 Oct 2016 14:54:30 +0000 (UTC)
Date: Fri, 7 Oct 2016 16:54:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com, German.Rivera@freescale.com,
	stuart.yoder@nxp.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: fsm-mc: bus: remove
 unused function modalias_show
Message-ID: <20161007145438.GA19809@kroah.com>
References: <1475850411-16745-1-git-send-email-bhumirks@gmail.com>
 <20161007143203.GA26091@kroah.com>
 <CAOH+1jELrCr=PWNMVzunQty7Ohc3LKzUrJhf_KtikLyKBGMdFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOH+1jELrCr=PWNMVzunQty7Ohc3LKzUrJhf_KtikLyKBGMdFQ@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Oct 07, 2016 at 08:07:24PM +0530, Bhumika Goyal wrote:
> On Fri, Oct 7, 2016 at 8:02 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Fri, Oct 07, 2016 at 07:56:51PM +0530, Bhumika Goyal wrote:
> >> The function modalias_show is not used anywhere in the kernel, so
> >> remove it. Done using Coccinelle:
> >>
> >> @r1@
> >> identifier func;
> >> type T;
> >> @@
> >> static T func(...)
> >> {
> >> ...
> >> }
> >>
> >> @r@
> >> identifier r1.func;
> >> @@
> >> func
> >>
> >> @delete depends on !r@
> >> identifier r1.func;
> >> type r1.T;
> >> @@
> >> - static T func(...){...}
> >>
> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> >> ---
> >>  drivers/staging/fsl-mc/bus/fsl-mc-bus.c | 9 ---------
> >>  1 file changed, 9 deletions(-)
> >>
> >> diff --git a/drivers/staging/fsl-mc/bus/fsl-mc-bus.c b/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
> >> index 44f64b6..e8bca6e 100644
> >> --- a/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
> >> +++ b/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
> >> @@ -121,15 +121,6 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
> >>
> >>       return 0;
> >>  }
> >> -
> >> -static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
> >> -                          char *buf)
> >> -{
> >> -     struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
> >> -
> >> -     return sprintf(buf, "fsl-mc:v%08Xd%s\n", mc_dev->obj_desc.vendor,
> >> -                    mc_dev->obj_desc.type);
> >> -}
> >>  static DEVICE_ATTR_RO(modalias);
> >
> > Um, it's used right there in the line you didn't delete.  Did you build
> > this code successfully with this change?
> >
> Yes, it did build successfully. I am confused that why didn't the
> build complain then ?

Are you sure you built this file?  It's only usually built for an ARM
system...

thanks,

greg k-h


X-GM-THRID: 6889248551394607104
X-Received: by 2002:a65:5289:: with SMTP id y9mr1245414pgp.386.1604046219993;
        Fri, 30 Oct 2020 01:23:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:a107:: with SMTP id s7ls1523503pjp.1.canary-gmail;
 Fri, 30 Oct 2020 01:23:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkrdvmZImZFqMhKSmVwt1UmwwFgKcwF+fH/b7LMX40hoGmTRNqFJgL6Xd4prJreeYT8QIo
X-Received: by 2002:a17:902:bd4a:b029:d6:4fa8:36af with SMTP id b10-20020a170902bd4ab02900d64fa836afmr7612200plx.83.1604046218442;
        Fri, 30 Oct 2020 01:23:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604046218; cv=none;
        d=google.com; s=arc-20160816;
        b=C/upLtCOxRyUf67zFbM5Wib9zPR+X49bmtT19RIMruAG2xm3UJr/IXruXiBzY338tq
         u434W6pZr6rmfZOHXFDWXpAlul1DFXYmCquLsqNxaxP9u9e1iUDz+NXb/VdTsj/KyxgR
         iC9HObyKgeTfc/rKHfOI2HSQq+FqW0AkKAxeGL2SVAws+AspygNbKUGJljXjI+cpLc/z
         PzbXnUufM0Am43CjTvQkMCLcGwMnnNtf9EVMZ9n5ziELa+d48AOS7RJplznEqWkAN6zO
         lFy/eQOXAbJEVKIAK/UvUHUhEpCum0NP/7wlRESOpccT4UrX743vEaIPbBYhJkL7bsnw
         +Obw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Aq04YRrBrtaf5KKMwNZMVWbrmEzpc10QSO3V0ApcI8o=;
        b=BztJE1GtMm98pxtaWod6qxII2U2eXUI2c0Yp9KU6VfA2UJF5AIFaPA82971rSdZ3EO
         WlzvJQa5KBNA4Ss3Cg3D6H90UMU2jurwjqDxlZ6q/r3xeW9UxEWhyYO30TmSbKrXhzMK
         6wCjHVABTSB0EUs0WIUZCFlTH3dp5vvLR4uNlgs3w4QmXAB6GsCPyQwZsDNmSwFOp1wl
         KfaffobIbh3Wc1nmZRl/Me1rmzP5Q6yKDVKBPgTipZq49VXYDfIJJfgMNwA3WxcP3NBz
         sTPvQVTtiHAyVIkbdtrFD79jINiNvFMLprpDA+tPfNH4webTS0g1Q+/gCFXM+OpFWY7Z
         kyOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jB4C6EHw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y123si339783pfg.5.2020.10.30.01.23.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 01:23:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jB4C6EHw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 44D9F22228;
	Fri, 30 Oct 2020 08:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1604046218;
	bh=MlYFaLQkpPG7LdEjrCa4Kc2PSIB4VTTYCHuO8KY0oB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jB4C6EHwR0LUsfUVD51mQal9IEhqjuWgFYFwFh5ioAn7WNc/O5zTFCiapIbxuG85f
	 Hj0rvHLDAjF3oTpfMuYERU0pNV78nJ1eMra1+RnGgQPzuAE31D8Gv+U7PfZV6+k0Rw
	 aI2hakdmRUQ40NrYJIoOgcSwNwug2opsMG3H/VEs=
Date: Fri, 30 Oct 2020 09:24:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Cc: Deepak R Varma <mh12gx2825@gmail.com>,
	Outreachy <outreachy-kernel@googlegroups.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, melissa.srw@gmail.com,
	daniel.vetter@ffwll.ch
Subject: Re: [Outreachy kernel] [PATCH] drm/amdgpu: use
 DEFINE_DEBUGFS_ATTRIBUTE with debugfs_create_file_unsafe()
Message-ID: <20201030082425.GA1619669@kroah.com>
References: <20201030032245.GA274478@my--box>
 <20201030071120.GA1493629@kroah.com>
 <20201030075716.GA6976@my--box>
 <20201030080316.GA1612206@kroah.com>
 <CACAkLupMiH9z4g7WLJ7t-N089_M6QGX6HkPQUATu4VCxDeFAKw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACAkLupMiH9z4g7WLJ7t-N089_M6QGX6HkPQUATu4VCxDeFAKw@mail.gmail.com>

On Fri, Oct 30, 2020 at 01:47:05PM +0530, Sumera Priyadarsini wrote:
> On Fri, 30 Oct, 2020, 1:32 PM Greg KH, <gregkh@linuxfoundation.org> wrote:
> 
> > On Fri, Oct 30, 2020 at 01:27:16PM +0530, Deepak R Varma wrote:
> > > On Fri, Oct 30, 2020 at 08:11:20AM +0100, Greg KH wrote:
> > > > On Fri, Oct 30, 2020 at 08:52:45AM +0530, Deepak R Varma wrote:
> > > > > Using DEFINE_DEBUGFS_ATTRIBUTE macro with
> > debugfs_create_file_unsafe()
> > > > > function in place of the debugfs_create_file() function will make the
> > > > > file operation struct "reset" aware of the file's lifetime.
> > Additional
> > > > > details here:
> > https://lists.archive.carbon60.com/linux/kernel/2369498
> > > > >
> > > > > Issue reported by Coccinelle script:
> > > > > scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
> > > > >
> > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > ---
> > > > > Please Note: This is a Outreachy project task patch.
> > > > >
> > > > >  drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c | 20
> > ++++++++++----------
> > > > >  1 file changed, 10 insertions(+), 10 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > > index 2d125b8b15ee..f076b1ba7319 100644
> > > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > > @@ -1551,29 +1551,29 @@ static int amdgpu_debugfs_sclk_set(void
> > *data, u64 val)
> > > > >   return 0;
> > > > >  }
> > > > >
> > > > > -DEFINE_SIMPLE_ATTRIBUTE(fops_ib_preempt, NULL,
> > > > > -                 amdgpu_debugfs_ib_preempt, "%llu\n");
> > > > > +DEFINE_DEBUGFS_ATTRIBUTE(fops_ib_preempt, NULL,
> > > > > +                  amdgpu_debugfs_ib_preempt, "%llu\n");
> > > >
> > > > Are you sure this is ok?  Do these devices need this additional
> > > > "protection"?  Do they have the problem that these macros were written
> > > > for?
> > > >
> > > > Same for the other patches you just submitted here, I think you need to
> > > > somehow "prove" that these changes are necessary, checkpatch isn't able
> > > > to determine this all the time.
> > >
> > > Hi Greg,
> > > Based on my understanding, the current function debugfs_create_file()
> > > adds an overhead of lifetime managing proxy for such fop structs. This
> > > should be applicable to these set of drivers as well. Hence I think this
> > > change will be useful.
> >
> > Why do these drivers need these changes?  Are these files dynamically
> > removed from the system at random times?
> >
> > There is a reason we didn't just do a global search/replace for this in
> > the kernel when the new functions were added, so I don't know why
> > checkpatch is now saying it must be done.
> >
> 
> Hi,
> 
> Sorry to jump in on the thread this way, but what exactly does a 'lifetime
> managing proxy' for file operations mean? I am trying to understand how
> DEFINE_DEBUGFS_ATTRIBUTE changes things wrt debug_ fs file operations but
> can't find many resources. :(

It means that the debugfs core can handle debugfs files being removed
from the system while they are still open when they were created by a
driver/module that is now unloaded from memory.

This is only an issue for drivers that manage devices that have unknown
lifespans (i.e. they can be yanked out of the system at any time, and
the memory for those debugfs files can be freed).

For the entire DRM/GPU subsystem, I strongly doubt this is the case.

> Please let me know if I should be asking this in a different mailing
> list/irc instead.
> 
> The change seems to be suggested by a coccinelle script.

I know, and I don't think that script knows the nuances behind this, as,
again, we would have just done a global search/replace for this when the
debugfs fixes went into the kernel.

thanks,

greg k-h


X-GM-THRID: 6889248551394607104
X-Received: by 2002:a1f:a8d6:: with SMTP id r205mr6296335vke.0.1604044951214;
        Fri, 30 Oct 2020 01:02:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:5adb:: with SMTP id x27ls418414uae.1.gmail; Fri, 30 Oct
 2020 01:02:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyyGuq/KhX2q3XgbmARX/e7omHlzU+weyd/pQeh5tHAHl72h26rja7P5h2t6mI54aMvIELe
X-Received: by 2002:ab0:244f:: with SMTP id g15mr513304uan.78.1604044949721;
        Fri, 30 Oct 2020 01:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604044949; cv=none;
        d=google.com; s=arc-20160816;
        b=VxHvhBJrsP2Tm9FtESbpdMHeyMUPc7EsMA+aH63We/WRmpBlvE6H85hchEwhx0jYHG
         NVfaQ6ZuYA7Ba4bex/DVJIiqje8noN6cjWXTzOjOQpgdykyfLCft8Qg63xdFME0ekIJn
         9wDxhkZas/Ct4vnM1xbZ/1Bj2WtW8LfdeFl13xzIJ+qBcZ9lRJqKKOe8Pl5w6LVWqvxo
         4HaHfbveBIlFObXvsqJdIA4z58ymwM2lnohTEk0Iiy4QUxGe/FpdxVvT9kYldBKw/Igx
         PDCgmusF1tDiziHPlYdxlNy3tvFfvViq7xUaJRRUOa/D/eVhOcFHzJEEC/vPwMNUdPfo
         HDoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iDfc8gB5Ud+LcOZETBnYPqUNNLsj4PyiWV/93kwTrxw=;
        b=aLYP20uhbWObtidR1zUA04EgKn926uQ0DTJaS6ZLPXXDwtzKKoG92lgHYXJZS3ksj3
         R8aqkxu51ZjXYjco1cB0wB0xrT6G8OptPLcUyHSA7jbSWHSTXEviT9yn5S70BIpx5UaT
         O9xtG3sH64jSFjdwvZTRuv68O4eB7Tp6WBrQ8omuYkt5ScuwsN31qal151s3QaTNUIZT
         Po47HXVbkOkN8xMfgiyK8/svB6izhAy0V4eolT7H0LjzBxg+9Ya+Zls3rJ3I8377cbXL
         F3xsb5z72i60Od0RfWipZzeZa9Iv1o5RP2hYbN0eTjih+5vMPEo44ikt+E/j/eSee2r6
         SSZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VbONgRrL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v18si294335uat.1.2020.10.30.01.02.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 01:02:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VbONgRrL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B7F6F206DD;
	Fri, 30 Oct 2020 08:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1604044948;
	bh=sjpPspkLsWiWbFSLHAjaeQlueI6WT5/q7Z9EziIU0wQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VbONgRrLC42ZQFZhvxtyCZWX4k4LA6yxZEzKU7qVlAJvFRe1crGjYUjeJGfeEVdOf
	 lVayfrDrNhKZq358K3LswRdStjL7Gwo1L8DNtWjDUn2MPqzmRuEjmiM2BBUb/dBOHH
	 Orh7h2x797L4hI4r7sZjjgnytACUICBpQ7aGblkk=
Date: Fri, 30 Oct 2020 09:03:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, melissa.srw@gmail.com,
	daniel.vetter@ffwll.ch
Subject: Re: [Outreachy kernel] [PATCH] drm/amdgpu: use
 DEFINE_DEBUGFS_ATTRIBUTE with debugfs_create_file_unsafe()
Message-ID: <20201030080316.GA1612206@kroah.com>
References: <20201030032245.GA274478@my--box>
 <20201030071120.GA1493629@kroah.com>
 <20201030075716.GA6976@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201030075716.GA6976@my--box>

On Fri, Oct 30, 2020 at 01:27:16PM +0530, Deepak R Varma wrote:
> On Fri, Oct 30, 2020 at 08:11:20AM +0100, Greg KH wrote:
> > On Fri, Oct 30, 2020 at 08:52:45AM +0530, Deepak R Varma wrote:
> > > Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
> > > function in place of the debugfs_create_file() function will make the
> > > file operation struct "reset" aware of the file's lifetime. Additional
> > > details here: https://lists.archive.carbon60.com/linux/kernel/2369498
> > > 
> > > Issue reported by Coccinelle script:
> > > scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
> > > 
> > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > ---
> > > Please Note: This is a Outreachy project task patch.
> > > 
> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c | 20 ++++++++++----------
> > >  1 file changed, 10 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > index 2d125b8b15ee..f076b1ba7319 100644
> > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > @@ -1551,29 +1551,29 @@ static int amdgpu_debugfs_sclk_set(void *data, u64 val)
> > >  	return 0;
> > >  }
> > >  
> > > -DEFINE_SIMPLE_ATTRIBUTE(fops_ib_preempt, NULL,
> > > -			amdgpu_debugfs_ib_preempt, "%llu\n");
> > > +DEFINE_DEBUGFS_ATTRIBUTE(fops_ib_preempt, NULL,
> > > +			 amdgpu_debugfs_ib_preempt, "%llu\n");
> > 
> > Are you sure this is ok?  Do these devices need this additional
> > "protection"?  Do they have the problem that these macros were written
> > for?
> > 
> > Same for the other patches you just submitted here, I think you need to
> > somehow "prove" that these changes are necessary, checkpatch isn't able
> > to determine this all the time.
> 
> Hi Greg,
> Based on my understanding, the current function debugfs_create_file()
> adds an overhead of lifetime managing proxy for such fop structs. This
> should be applicable to these set of drivers as well. Hence I think this
> change will be useful.

Why do these drivers need these changes?  Are these files dynamically
removed from the system at random times?

There is a reason we didn't just do a global search/replace for this in
the kernel when the new functions were added, so I don't know why
checkpatch is now saying it must be done.

thanks,

greg k-h


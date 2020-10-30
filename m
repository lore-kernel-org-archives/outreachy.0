X-GM-THRID: 6889248551394607104
X-Received: by 2002:a1c:7c09:: with SMTP id x9mr1537166wmc.181.1604049902493;
        Fri, 30 Oct 2020 02:25:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:cd8c:: with SMTP id q12ls760207wrj.0.gmail; Fri, 30 Oct
 2020 02:25:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyXVbJGlCWC1CZS0+1tKDHpsmKsCZIZUtOZUCJHui1LlCZLQjAzAXo5p3oF0egq3vZtyVih
X-Received: by 2002:adf:a551:: with SMTP id j17mr1945392wrb.217.1604049900616;
        Fri, 30 Oct 2020 02:25:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604049900; cv=none;
        d=google.com; s=arc-20160816;
        b=CMdVrXdYuVmzsE32uT1d58+BxtRlPIV8h9sKx+2ROTIpROMb9/iewpTiZcZnE7Ga43
         9ZZ0mySwsSvIq/zpt+mmIRlAAfnoq0MA0D1lT2hVxQl4KfZ4VO+djLYK4WwcRjKHBb+g
         tVY56vpONZ+UP4vDrxecyEjanvte1O0WijQeMcvG+JxSzMj/OABcQj9m20zjYQ60i/yV
         T/unzjgnvm1cYBkGLdmcvYQlpY/6VDb+uBSCpnrrySyjCL2+AMpzwh8mMMBMkcWGfFim
         7wsB1K5GcWv3JRHmBEZqyYgdN/vNCEK19q6h2iPNtrEaKyJ5zFRTlVem9VyNGqHVHA3m
         fqeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:dkim-signature;
        bh=lr95YjmxfBMQgyUuKRsKu2us1sAP1mxiJZKWtC6RQLE=;
        b=n8OKi1qg7q3ovcot/s7gBpcPLGdDH4yrWTB9Skwp3TZlA7bjxtWYyVZVJkqa2c2aYT
         R9U/6ZQaU9KhtgYD9n5AVQkSZ+fX2R/ZKHVTeu26UBtXB6A8D5TwsaIlSSFZBOwOuPxE
         K+2DgzwGLUakYamk/Ke6K1/+s+x215TmbPva27tZMqku+L9lmq4OOk6vjMAldHKhwUHr
         HS5d9aNPMm4mdl8Tqr1VVhXH5Wd2rP6ceJHpHdK6qdvC4RZpAkpUax2Ugm0NaHJUl9uD
         aeUwxkQQ1iFGM4RQMwCr8mn4Q/Sb2IuULjhvsy5zYVn96OGMIDC8KY5hmtp+JecqkgC2
         ASGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=J7c4uO3o;
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id w6si97805wmk.2.2020.10.30.02.25.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 02:25:00 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=J7c4uO3o;
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm1-x342.google.com with SMTP id h22so2288776wmb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2020 02:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=lr95YjmxfBMQgyUuKRsKu2us1sAP1mxiJZKWtC6RQLE=;
        b=J7c4uO3oFnVEICxe8V4NrJjJtpvezAbH4Hnr1BGHvgDeOFSERTJJk/DwplkhhnEqy9
         gsk0k8raBxS9hZRbzo+tr8t9Dk5T6j0noOY+90TyNK1xWKM0eZMyQJIHckNemEjavWGJ
         dH6rskih7R8r2jYNF4tDicyiGmBFKIxSwmTag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=lr95YjmxfBMQgyUuKRsKu2us1sAP1mxiJZKWtC6RQLE=;
        b=QBQTTtTlYA6edR7fD26uN9++f/+aZ9jta9Pg1dTqNds59pKuVjdQL8uaWg/XZ4hfKy
         NpL+fBLaZoVQPsEWx8VgibSgpbIVUtmgCIXdc5AwP3JjkMi0odC6ay1V+Lh7JRsH/Xkr
         JhkhVOFLHQXWqOSrFIKVUqhnofsuJ+Xb5mQks7zghHyHh58fy/6hPIw8mtX5lgvxUqxa
         89XcM6AVULk/y//5uxW3KC062QRpKwoCskAu7XqvQJRopZSjFEPnZIF+1BseBC7TlT+o
         s2BG42JgjvLJccsiEaxtlHXHin9yBipg4HTc9KQhWZDhV2uIO9EeAJwrszaB6CCNSbC5
         Exjg==
X-Gm-Message-State: AOAM532MWpB8G11RMOhX06kPU4rl6biTb9WDBCeTVrkH87PVKsnIEf7C
	n+sOaut36rafX1TDMBxpGKUIHA==
X-Received: by 2002:a05:600c:218a:: with SMTP id e10mr1482019wme.7.1604049900279;
        Fri, 30 Oct 2020 02:25:00 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id t1sm9436244wrs.48.2020.10.30.02.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 02:24:59 -0700 (PDT)
Date: Fri, 30 Oct 2020 10:24:57 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg KH <gregkh@linuxfoundation.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Deepak R Varma <mh12gx2825@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	David Airlie <airlied@linux.ie>, amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	melissa.srw@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] drm/amdgpu: use
 DEFINE_DEBUGFS_ATTRIBUTE with debugfs_create_file_unsafe()
Message-ID: <20201030092457.GI401619@phenom.ffwll.local>
Mail-Followup-To: Greg KH <gregkh@linuxfoundation.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Deepak R Varma <mh12gx2825@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	David Airlie <airlied@linux.ie>, amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	melissa.srw@gmail.com
References: <20201030032245.GA274478@my--box>
 <20201030071120.GA1493629@kroah.com>
 <20201030075716.GA6976@my--box>
 <5a7d8e8d-8db5-ff56-6448-3f1cefc11ef8@amd.com>
 <20201030082518.GB1619669@kroah.com>
 <20201030091521.GH401619@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201030091521.GH401619@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.7.0-1-amd64 

On Fri, Oct 30, 2020 at 10:15:21AM +0100, Daniel Vetter wrote:
> On Fri, Oct 30, 2020 at 09:25:18AM +0100, Greg KH wrote:
> > On Fri, Oct 30, 2020 at 09:00:04AM +0100, Christian K�nig wrote:
> > > Am 30.10.20 um 08:57 schrieb Deepak R Varma:
> > > > On Fri, Oct 30, 2020 at 08:11:20AM +0100, Greg KH wrote:
> > > > > On Fri, Oct 30, 2020 at 08:52:45AM +0530, Deepak R Varma wrote:
> > > > > > Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
> > > > > > function in place of the debugfs_create_file() function will make the
> > > > > > file operation struct "reset" aware of the file's lifetime. Additional
> > > > > > details here: https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.archive.carbon60.com%2Flinux%2Fkernel%2F2369498&amp;data=04%7C01%7Cchristian.koenig%40amd.com%7Cddd7a6ac8164415a639708d87ca97004%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637396414464384011%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=o6GOHvMxNMuOPlC4nhDyURCHBLqfQZhYQq%2BiIMt3D3s%3D&amp;reserved=0
> > > > > > 
> > > > > > Issue reported by Coccinelle script:
> > > > > > scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
> > > > > > 
> > > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > > ---
> > > > > > Please Note: This is a Outreachy project task patch.
> > > > > > 
> > > > > >   drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c | 20 ++++++++++----------
> > > > > >   1 file changed, 10 insertions(+), 10 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > > > index 2d125b8b15ee..f076b1ba7319 100644
> > > > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > > > @@ -1551,29 +1551,29 @@ static int amdgpu_debugfs_sclk_set(void *data, u64 val)
> > > > > >   	return 0;
> > > > > >   }
> > > > > > -DEFINE_SIMPLE_ATTRIBUTE(fops_ib_preempt, NULL,
> > > > > > -			amdgpu_debugfs_ib_preempt, "%llu\n");
> > > > > > +DEFINE_DEBUGFS_ATTRIBUTE(fops_ib_preempt, NULL,
> > > > > > +			 amdgpu_debugfs_ib_preempt, "%llu\n");
> > > > > Are you sure this is ok?  Do these devices need this additional
> > > > > "protection"?  Do they have the problem that these macros were written
> > > > > for?
> > > > > 
> > > > > Same for the other patches you just submitted here, I think you need to
> > > > > somehow "prove" that these changes are necessary, checkpatch isn't able
> > > > > to determine this all the time.
> > > > Hi Greg,
> > > > Based on my understanding, the current function debugfs_create_file()
> > > > adds an overhead of lifetime managing proxy for such fop structs. This
> > > > should be applicable to these set of drivers as well. Hence I think this
> > > > change will be useful.
> > > 
> > > Well since this is only created once per device instance I don't really care
> > > about this little overhead.
> > > 
> > > But what exactly is debugfs doing or not doing here?
> > 
> > It is trying to save drivers from having debugfs files open that point
> > to memory that can go away at any time.  For graphics devices, I doubt
> > that is the case.
> 
> So for anything we add/remove we have two-stage cleanup
> 
> 1. drm_dev_unregister (or drm_connector_unregisters, those are the only
> two hotunpluggable things we have) unregister all the uapi interfaces.
> This deletes all the sysfs and debugfs files.
> 
> 2. Once all the references to the underlying object disappear from the
> kernel, we free up the data structure.
> 
> Now for chardev and similar uapi, we hold full references for open files.
> But for sysfs and debugfs we assume that those uapi layers will make sure
> that after we deleted the files in step 1 all access through these
> functions are guaranteed to have finished. If that's not the case, then we
> need to rework our refcounting and also refcount the underlying drm
> structure (drm_device or drm_connector) from sysfs/debugfs files.
> 
> Now I tried to look at the patch Deepak references, and I'm not really
> clear what changes. Or whether we made a wrong assumption previously about
> what debugfs/sysfs guarantee when we delete the files.

I read some more code and kerneldoc, and I still have no idea what this
new _unsafe variant is used for. Only ones I've found seem to use
debugfs_file_get/put like the normal variant, to protect against
concurrently removed files due to hotunplug. Which is kinda what we've
been expecting debugfs to do for us.

What's a use-case for _unsafe _without_ debugfs_file_get/put?

Decently confused me over here doesn't get this.
-Daniel

> -Daniel
> 
> > 
> > thanks,
> > 
> > greg k-h
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


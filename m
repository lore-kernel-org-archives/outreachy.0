X-GM-THRID: 6889248551394607104
X-Received: by 2002:adf:f210:: with SMTP id p16mr1936492wro.40.1604049326403;
        Fri, 30 Oct 2020 02:15:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4e19:: with SMTP id g25ls1291524wmh.2.gmail; Fri, 30 Oct
 2020 02:15:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxj6L3Q5IXoKCAwoh/pLGWbr+glZoO8vwQ+HbBXcQKwHxdmUsgvHJXHGYVbKHP79vxQ15SK
X-Received: by 2002:a1c:f002:: with SMTP id a2mr1542309wmb.129.1604049324563;
        Fri, 30 Oct 2020 02:15:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604049324; cv=none;
        d=google.com; s=arc-20160816;
        b=USq7ECQmZF6Z1cU8kMfieM6kN1/kssrpXI8Uy0Osg+i1AN0jV8VL9++xlBQoYHLnGH
         Vvk/kvecZLLgDj6j3bVHbSvvvkl+W3S0UF40XIud23oglzIuB8I6IzjPXINf9Qorxnn9
         AdVbLX8Jiy+EybXaLICoLcYluLeGVR2j/pylsgZiXT8I1yKSXDElgEH4221A34sxZNmt
         vOXx0sWpGotRGDg6HLkSk15Rr9OWk+F+m5ft0aKbSXYQjyN6Qfq76tQCPNtnZDrpV738
         /rM6COfdGUHYVLpc4jpzvnzw9ePyjPSKum5M9gz9lxw5Oe7nU2utDNYLXVyw3B6AXTKZ
         GpXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:dkim-signature;
        bh=ajiZKDquHTFSl0096pkCVJGMC7tGtJTQuVLJuoBU2x4=;
        b=Xgw4S7CNIdQESSsl2xNWusT7Dy3pNpnva7x/E4xspugOTg+yTzvTk6/qtD/oJR+KGo
         1PHRCI+k8ADmRWyUHpnQU4NkO/PK+95wFa9iIN2WBt6jcFb3kkcYf0ueNLJ8fSockP4b
         kRZpsmeMOMRCeC3mG+JZmJERWfxMb5TlHh0rPwhvsCSzPMD0CYuaXdspoUqBF9HhfiDj
         xXoBzx9iI6xHQTKiB2eqLCQMgwAc+OZQAjChKZd5x1qtKM9EDefPQ9NXu5UFtdhSZhDo
         iTwPN+5UyopAyfT2Annkt3CS6sSBocFi5vkuC4q0npBs9eFAToEl+75O77lhJDdfyET1
         wNhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=PI2jc1on;
       spf=neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id j199si75373wmj.0.2020.10.30.02.15.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 02:15:24 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=PI2jc1on;
       spf=neutral (google.com: 2a00:1450:4864:20::341 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm1-x341.google.com with SMTP id w23so2163061wmi.4
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2020 02:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ajiZKDquHTFSl0096pkCVJGMC7tGtJTQuVLJuoBU2x4=;
        b=PI2jc1onHCGHTFVrOglMW6SqUxii06UoetHncrrfRN7UKVNuoUUMafkCmOCrbDnzS7
         jd4EeQYASCzCZt0DNZ3dlCHo1pb4Mb1DvEHQNrrI6M9J4m95H/fuuYPptNcbR1pHAbFj
         sPRW9/fLFAdAe5xhF5kXN0H02zqfTXGuOmrao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=ajiZKDquHTFSl0096pkCVJGMC7tGtJTQuVLJuoBU2x4=;
        b=SJNUhK3CnDXEse8HWFt6M81XTzgFcPhUMNrnRtmkhaomPyExziEHgvC6zy/7kvsVq9
         sT1xoKkxP957WSlhhjiNnS9v/iGZ4B3MvNuhqm27Gq4QLqPvOnLVSmp44Xz3g5S7u+Y5
         pjH6LugWdAPwpXi4OKDNxWx/26C7frCWzz+faopAcsiCK67cv7LXykDGqienLq7800Uz
         7xyKjb9cR0XIOxyzbzHGjV4iOpgJXtt4yyWk1kUXcbGwxDfg3pkI/XC6o+8UTL0EHUt5
         Un5Ae3LLg+oE6nhKs0CD6PxbMMA+n+k/S+x85Pc7LOSpMzf9wGwi/TTxlEq+g85VMqDT
         B1Cw==
X-Gm-Message-State: AOAM532kEanWU32mIR8Ke2d+weBk2KaaVrF5RjEoKl00wpW8xeH1b9Vi
	cYontlNIUDvNGEuJ7b5e+8QjwPtwx5fcvIf/
X-Received: by 2002:a1c:7dc5:: with SMTP id y188mr1425897wmc.37.1604049324133;
        Fri, 30 Oct 2020 02:15:24 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id v14sm10240364wrq.46.2020.10.30.02.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 02:15:23 -0700 (PDT)
Date: Fri, 30 Oct 2020 10:15:21 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Deepak R Varma <mh12gx2825@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, melissa.srw@gmail.com,
	daniel.vetter@ffwll.ch
Subject: Re: [Outreachy kernel] [PATCH] drm/amdgpu: use
 DEFINE_DEBUGFS_ATTRIBUTE with debugfs_create_file_unsafe()
Message-ID: <20201030091521.GH401619@phenom.ffwll.local>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201030082518.GB1619669@kroah.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 

On Fri, Oct 30, 2020 at 09:25:18AM +0100, Greg KH wrote:
> On Fri, Oct 30, 2020 at 09:00:04AM +0100, Christian K�nig wrote:
> > Am 30.10.20 um 08:57 schrieb Deepak R Varma:
> > > On Fri, Oct 30, 2020 at 08:11:20AM +0100, Greg KH wrote:
> > > > On Fri, Oct 30, 2020 at 08:52:45AM +0530, Deepak R Varma wrote:
> > > > > Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
> > > > > function in place of the debugfs_create_file() function will make the
> > > > > file operation struct "reset" aware of the file's lifetime. Additional
> > > > > details here: https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.archive.carbon60.com%2Flinux%2Fkernel%2F2369498&amp;data=04%7C01%7Cchristian.koenig%40amd.com%7Cddd7a6ac8164415a639708d87ca97004%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637396414464384011%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=o6GOHvMxNMuOPlC4nhDyURCHBLqfQZhYQq%2BiIMt3D3s%3D&amp;reserved=0
> > > > > 
> > > > > Issue reported by Coccinelle script:
> > > > > scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
> > > > > 
> > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > ---
> > > > > Please Note: This is a Outreachy project task patch.
> > > > > 
> > > > >   drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c | 20 ++++++++++----------
> > > > >   1 file changed, 10 insertions(+), 10 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > > index 2d125b8b15ee..f076b1ba7319 100644
> > > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> > > > > @@ -1551,29 +1551,29 @@ static int amdgpu_debugfs_sclk_set(void *data, u64 val)
> > > > >   	return 0;
> > > > >   }
> > > > > -DEFINE_SIMPLE_ATTRIBUTE(fops_ib_preempt, NULL,
> > > > > -			amdgpu_debugfs_ib_preempt, "%llu\n");
> > > > > +DEFINE_DEBUGFS_ATTRIBUTE(fops_ib_preempt, NULL,
> > > > > +			 amdgpu_debugfs_ib_preempt, "%llu\n");
> > > > Are you sure this is ok?  Do these devices need this additional
> > > > "protection"?  Do they have the problem that these macros were written
> > > > for?
> > > > 
> > > > Same for the other patches you just submitted here, I think you need to
> > > > somehow "prove" that these changes are necessary, checkpatch isn't able
> > > > to determine this all the time.
> > > Hi Greg,
> > > Based on my understanding, the current function debugfs_create_file()
> > > adds an overhead of lifetime managing proxy for such fop structs. This
> > > should be applicable to these set of drivers as well. Hence I think this
> > > change will be useful.
> > 
> > Well since this is only created once per device instance I don't really care
> > about this little overhead.
> > 
> > But what exactly is debugfs doing or not doing here?
> 
> It is trying to save drivers from having debugfs files open that point
> to memory that can go away at any time.  For graphics devices, I doubt
> that is the case.

So for anything we add/remove we have two-stage cleanup

1. drm_dev_unregister (or drm_connector_unregisters, those are the only
two hotunpluggable things we have) unregister all the uapi interfaces.
This deletes all the sysfs and debugfs files.

2. Once all the references to the underlying object disappear from the
kernel, we free up the data structure.

Now for chardev and similar uapi, we hold full references for open files.
But for sysfs and debugfs we assume that those uapi layers will make sure
that after we deleted the files in step 1 all access through these
functions are guaranteed to have finished. If that's not the case, then we
need to rework our refcounting and also refcount the underlying drm
structure (drm_device or drm_connector) from sysfs/debugfs files.

Now I tried to look at the patch Deepak references, and I'm not really
clear what changes. Or whether we made a wrong assumption previously about
what debugfs/sysfs guarantee when we delete the files.
-Daniel

> 
> thanks,
> 
> greg k-h

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


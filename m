X-GM-THRID: 6469789511840694272
X-Received: by 10.28.143.200 with SMTP id r191mr275251wmd.1.1506415134060;
        Tue, 26 Sep 2017 01:38:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.138 with SMTP id t132ls1079032lfe.8.gmail; Tue, 26 Sep
 2017 01:38:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBzHUJEsOX4GumSH1oYIvFCZ2YZcx1uhj/Fgph7vBwF+rRPUcJiYEnLhFRg3FmoErziINA7
X-Received: by 10.46.85.13 with SMTP id j13mr665345ljb.5.1506415133205;
        Tue, 26 Sep 2017 01:38:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506415133; cv=none;
        d=google.com; s=arc-20160816;
        b=XiAGliYKlf+F7lkV9o1jvpeaT0u43I9ldtTy+G7YVhyBB85wIpuq6V+sAzdOVvAhne
         piKCMQCBFPxmGEoD/Fbupt2/5Tujb61ITdB+R+GXXBXWU3krsyIPG9jt5jY70uNBFxFb
         IG01+Icx1kne7uYBsK6Ld0rxeUKDYiVD15Ts6weCqFBSX2tE0rk2nBY6z73L9KMKlzvF
         ZToMDTgqSmmeQv1+P7fSxzuBK/U7n81yRGCMRpcTARl7UehMJI2zYcgKimOBp7UPyQH7
         Q7S0/plZwzxj7M0oOFWIPEO5VAhXRAO+8O3kTSQ+yhoX5URC0k9osoJX/m4Hrfyy22Uu
         FRgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=l4yJiMP8QPEqaBUCsiVuMmLXV5ThB3xMloMDrhIcUzY=;
        b=flSVcWKa7645QeOp1v6jAhiGyKzSEhsbFuJvhDYhbl7LVA9K+XJNm8nbfu0tDJG4S3
         kSVmybowOies9MNBrnnYb5a1H8Oah4stJlwB+dwENEI4oeaMIgsKDyOplkw7hjkKegtE
         PN0zuZHUifC+laxoZH5xEnhi/BnpzmuBeBscRsv//B5bwOvYGjtNqQtrZ42sJgfd+275
         fn7r5IVng+8nVUX7x+shJgSsGlxEayIqZx2/xkejk1RHdOqyWtcuttTKSfMMBNTlZLCG
         C9rvG60WWbplqfAZbowcVh0uaPYQOz3hFZFoNeh/m7krNAbck4ICnFdSlvOBk+bIrgS/
         sz6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q145si884480wme.4.2017.09.26.01.38.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:38:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,440,1500933600"; 
   d="scan'208";a="292730515"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 10:38:52 +0200
Date: Tue, 26 Sep 2017 10:38:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniel Vetter <daniel@ffwll.ch>
cc: Aishwarya Pant <aishpant@gmail.com>, 
    Daniel Vetter <daniel.vetter@intel.com>, 
    Jani Nikula <jani.nikula@linux.intel.com>, 
    Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, 
    dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm/gem: use new idr deletion interface
 to cleanup drm_gem_handle_delete()
In-Reply-To: <20170926082047.eqsd2lslpqp4pi5f@phenom.ffwll.local>
Message-ID: <alpine.DEB.2.20.1709261036530.2925@hadrien>
References: <20170925184728.GA8861@aishwarya> <20170926082047.eqsd2lslpqp4pi5f@phenom.ffwll.local>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Sep 2017, Daniel Vetter wrote:

> On Tue, Sep 26, 2017 at 12:17:28AM +0530, Aishwarya Pant wrote:
> > The IDR deletion interface now returns the deleted entry or NULL if it was not
> > present. So we don't have to do the extra work of checking if we have a
> > reference on the drm_gem_object, this can be handled by checking the return
> > value from idr_remove() and the extra locks can be dropped.
> >
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
>
> Haneen is already working on this task, with the patch just merged. Please
> coordinate with mentors (me or Sean Paul) before starting on something to
> avoid such clashes in the future.
>
> Note also that some todo items are just ideas, and need confirmation with
> relevant maintainers first.

Not sure where the mixup happened, but anyone who starts on a project
specific task should note that on the outreachy kernel wiki and before
starting on a project specific task one should check that no one is
working on it.  If someone started some time ago, and the code doesn't
seem to have changed, ask the person who claimed the task or the mentor.

thanks,

julia

>
> Thanks, Daniel
> > ---
> >  drivers/gpu/drm/drm_gem.c | 21 ++-------------------
> >  1 file changed, 2 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> > index c55f338..f62757a 100644
> > --- a/drivers/gpu/drm/drm_gem.c
> > +++ b/drivers/gpu/drm/drm_gem.c
> > @@ -282,29 +282,12 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
> >  {
> >  	struct drm_gem_object *obj;
> >
> > -	/* This is gross. The idr system doesn't let us try a delete and
> > -	 * return an error code.  It just spews if you fail at deleting.
> > -	 * So, we have to grab a lock around finding the object and then
> > -	 * doing the delete on it and dropping the refcount, or the user
> > -	 * could race us to double-decrement the refcount and cause a
> > -	 * use-after-free later.  Given the frequency of our handle lookups,
> > -	 * we may want to use ida for number allocation and a hash table
> > -	 * for the pointers, anyway.
> > -	 */
> >  	spin_lock(&filp->table_lock);
> > -
> > -	/* Check if we currently have a reference on the object */
> > -	obj = idr_replace(&filp->object_idr, NULL, handle);
> > -	spin_unlock(&filp->table_lock);
> > -	if (IS_ERR_OR_NULL(obj))
> > +	obj = idr_remove(&filp->object_idr, handle);
> > +	if (!obj)
> >  		return -EINVAL;
> > -
> >  	/* Release driver's reference and decrement refcount. */
> >  	drm_gem_object_release_handle(handle, obj, filp);
> > -
> > -	/* And finally make the handle available for future allocations. */
> > -	spin_lock(&filp->table_lock);
> > -	idr_remove(&filp->object_idr, handle);
> >  	spin_unlock(&filp->table_lock);
> >
> >  	return 0;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170925184728.GA8861%40aishwarya.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170926082047.eqsd2lslpqp4pi5f%40phenom.ffwll.local.
> For more options, visit https://groups.google.com/d/optout.
>


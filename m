X-GM-THRID: 6469789511840694272
X-Received: by 10.99.169.26 with SMTP id u26mr6749413pge.75.1506417080046;
        Tue, 26 Sep 2017 02:11:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.67.10 with SMTP id q10ls1560459ywa.6.gmail; Tue, 26 Sep
 2017 02:11:19 -0700 (PDT)
X-Received: by 10.13.216.70 with SMTP id a67mr6142396ywe.122.1506417079194;
        Tue, 26 Sep 2017 02:11:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506417079; cv=none;
        d=google.com; s=arc-20160816;
        b=UhbniFPHPlYihlVdcMVnMpI9RwCLY2EUr3U0Jj1phjbUOVZ0wIZQnmWCgdeh3PuWs1
         9Lm4oRmlCZTfyJiu4Ha0tJ+pe57GkXiNJnw83AosA7hzF/LWzLYi3HzwwoQTYu2WHAAs
         LRIKMc68hxu+KwK9cGAsPadFdEf7y/doK74sr545zJANvbwPcIIC7UZxI1Bqd4qt3v4K
         Eb+DoYlSIU4PstePLB0GqQRU5M8Z1Vao1QICcdanDGVtEFvOrcZk7dDTPuvyR/Znwv22
         PUcv/Hat7v5s4MlnhwFPhxLpCua/N4nFPLaj/FH4Z3k1KCR2xzi2Oo2s6HgfnOlpkkjI
         b/yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=AaPhzSry481Z46TSg70MyUVc+J12pSK8fcezCywDDvQ=;
        b=CT0cAMvKw6Ol6dL09FEAKn0LNqYXnz/fZ/wjDIG0LaD5Bj1USBO91C3fvRseW/G6zj
         CxbxRTaogrywAbkRcTbGmwhIPzf12qAJ4a7u/WUuRIBCLE9Z+hb3mrSxwWoQx5LOy4Sg
         r9JbzS8WWEE6XqMgBOzgsDO59QucAvLkXp5EAGEPzZXlMqDf5TjgqZlSyxCbqd2kazpg
         YagmvoS6nXrRYIclk9U70W8CvqmeyevdxDy6a54YgiKJVqbqT7NlwpHJvV5SUnoKxxnM
         2VP2FcvOfQTLHswbDiHuYGnPDFEfmqzXqmplrXaaXTVNYbkRzK1TMAt6YBXgYQtMRGCP
         7Fkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XUPdmFyT;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id s64si312698yws.10.2017.09.26.02.11.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 02:11:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XUPdmFyT;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id v140so1025416ita.4
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 02:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AaPhzSry481Z46TSg70MyUVc+J12pSK8fcezCywDDvQ=;
        b=XUPdmFyTAYgMGtdX1/NJOI9z/RaA2YFe5ewqH8hOtvJw0Vugwp/3Lk0tyCRu558SQt
         OVk9/irCOCWtOAHhgOT+jVJdUIVwYsjyRksl85OT1fW/R/QCpR+ws23VkNh8UZRortMS
         48DAKN+XiNRgoygPFpZuoVo4uCyUG6BPZ6PMZHUl1PJ6EkRM/m/wL/I+aXZ1Qv1KNeUB
         G/bGsN456DSdlSPX3k7gA3xQlGKS0+thCjOvJWbv/tqsRxpWULC7Z+Y1JkwSclEj6rUG
         xKXQKzogglfwCnAR1+/CeoKAXznFLg5AzB0aHzRsXN/5WREXp9DJR91yA00cRGa4bC7A
         JjwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AaPhzSry481Z46TSg70MyUVc+J12pSK8fcezCywDDvQ=;
        b=sZ91Q273XUZiNxTvfOXiL8lfC60nxR+EK4XZLkJzP4SVsS29SmYouxtdXf48gsu+Wj
         LCAl5kmX9L5yaKWG+lDuD5XKD67jCSJqR0K/S7ANLuuizFUHsvIlQsALzfjW+ytGLzzj
         dI/qqH+2BFNkkwRzC+LTWYZvTKNbm+kyOtBJ2643Tm7uKWQIH9w33FVIpEo9BvqnsDkH
         qWF/2dKBo13qe6VCWeMsEQu8gAwWK06RMlyMtz11F54gEFn3Th4Dnln5WPqRjtcSyxOq
         7BRYcPWfwpn3bNUnoZysMcwep8Gp2Vcn8DYBkcGJ2yQs6eFgVp9L9bxVXUrRgch07bC2
         XtCg==
X-Gm-Message-State: AHPjjUgtPUXXovAuMCmAWawnHYESUZwMbmtACKUcmRuFSfQoZHJ/QA4B
	TYgMVsaDOovy4I0P38tb2p0=
X-Google-Smtp-Source: AOwi7QA9DeQiUjoexjZC+vHEEPJ7aU3kSONm6IfDzSwyVTGUDUak2yA75CalEBgqGrXYyEc/3DCCCw==
X-Received: by 10.36.46.140 with SMTP id i134mr4316299ita.137.1506417078597;
        Tue, 26 Sep 2017 02:11:18 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([27.59.63.252])
        by smtp.gmail.com with ESMTPSA id e203sm891409itc.16.2017.09.26.02.11.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 02:11:18 -0700 (PDT)
Date: Tue, 26 Sep 2017 14:41:10 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm/gem: use new idr deletion
 interface to cleanup drm_gem_handle_delete()
Message-ID: <20170926091110.GA14344@aishwarya>
References: <20170925184728.GA8861@aishwarya>
 <20170926082047.eqsd2lslpqp4pi5f@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170926082047.eqsd2lslpqp4pi5f@phenom.ffwll.local>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 26, 2017 at 10:20:47AM +0200, Daniel Vetter wrote:
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

Apologies for the mix-up, I'll make sure to check in with the mentors before
starting a task.

I looked over the other patch sent by Haneen today, there is one thing that I
could use some clarity on. I'm not sure how the -this is gross- comment is
obsolete since we can drop the check to idr_replace() and use the return value
from idr_remove() which seems neater in my opinion.

> 
> Note also that some todo items are just ideas, and need confirmation with
> relevant maintainers first.
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


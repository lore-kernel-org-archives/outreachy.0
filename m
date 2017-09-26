X-GM-THRID: 6469789511840694272
X-Received: by 10.99.43.204 with SMTP id r195mr6492682pgr.162.1506416742648;
        Tue, 26 Sep 2017 02:05:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.218.72 with SMTP id x8ls3759128plv.13.gmail; Tue, 26 Sep
 2017 02:05:41 -0700 (PDT)
X-Received: by 10.99.1.81 with SMTP id 78mr6759457pgb.168.1506416741637;
        Tue, 26 Sep 2017 02:05:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506416741; cv=none;
        d=google.com; s=arc-20160816;
        b=uufV9BtpAz/eRpnAjVjK72k+kCG1+95oabPnSHBzcS3jGbJVKcExXlbV+uDwS+Gl0S
         jPrZRbyr2xaob0ElyyyxujPKoX7ecp46d/fJYC4Vv+I3JszMGkGrYhlqyvrhf6bBYw/J
         gY+t+NxMXDjMDXrK9a8vXRuTthzkWA6KsBZSfO5N9jYRXv0Cvr4NFKgSteL/llXQqI6x
         xSX03AYmDENFGmZQjAQuZMovTDGE9eACtCjtmPgFh595XJErPHq+iA87ARYWctJcfE76
         YMiVY9rTlSgQA5e6cAXHVhy97SVj4l2tdLPvd7ICOX4kIo8Z7rs8xkQZz6crO4ljuZBH
         anHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to:sender
         :mime-version:dkim-signature:arc-authentication-results;
        bh=galmqFnDD9AIXZ5ZcCOcq16rmxy4m7i2SOm3/2vd9h0=;
        b=QMvk4psGJ8rI4g+d3uF22BfEDAWW6e1J7FvNBh7d1aX+BDXEu1Jpw55T0sKxyfgqwm
         hMuHiddOQhVkutuo0Iy5shUQfVchOKzUwXDXw6apMhcMc5/FlSskMZwNB/ZIa3+1XyB6
         a4hapB6n7JxmdNX6WVGycJTfyz/bDRWHYTmAI9Cjkm4mqeIiOvzBj1kQSpAFN2QSDdTP
         hzLw3mHpMirl0ftNksNorKTp0j8/iuH/fyG6k4VTAtHjuD4gHaB8+xmPB1pPZR47B/Wx
         AMd99fhpUiQtn6DnZ4rde9u8PrCZLdy7JyREo8v0crlDNDO0QJ5rCyTcqLuRqyaMHI1a
         Q5ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=Y0HNVI4W;
       spf=neutral (google.com: 2607:f8b0:4001:c06::236 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Return-Path: <daniel.vetter@ffwll.ch>
Received: from mail-io0-x236.google.com (mail-io0-x236.google.com. [2607:f8b0:4001:c06::236])
        by gmr-mx.google.com with ESMTPS id g193si444364ywe.13.2017.09.26.02.05.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 02:05:41 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4001:c06::236 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) client-ip=2607:f8b0:4001:c06::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=Y0HNVI4W;
       spf=neutral (google.com: 2607:f8b0:4001:c06::236 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Received: by mail-io0-x236.google.com with SMTP id 21so12176317iof.6
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 02:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=galmqFnDD9AIXZ5ZcCOcq16rmxy4m7i2SOm3/2vd9h0=;
        b=Y0HNVI4WSmxVSXUQXeL3teRKaQ8lKrH5umBJwnU8YxXIJwi21xcUY8/Yqy4s0S9WYA
         ijwDhgOrGcYy0jH2htE9tYkwr7V/fwMYryqa+oKpQAtA+oqsNuxolupJczutvI7b+zaq
         TBM+PDfTEmO4DuvkvCcek+iYMpyQVcE9j2TPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=galmqFnDD9AIXZ5ZcCOcq16rmxy4m7i2SOm3/2vd9h0=;
        b=RDjpRUtXXAFAdyV3f96jiz6ty3CJfYLsHnvNINGvu7V2AO265l/RhJeKZ+ODgv0H5y
         hFrC0YEt59NIu8pJq8Aw+mhL/xCuZVN0uWNwqBs4IRRENIyJRPPd72IeIRrSMgF97k7S
         e83RqzHit4qHCdH/yfEuoK8yYEqGeDMqGBB9f4+5nqesyjBNV0nV8TbeoO9DasIaF5CT
         tTXZaj7c38p6/sIV7ZSIADP6stLSJGsOcmaEKhCDk9YQBrxNrN5WXBOB6AqAOX6bk9eI
         ue/wIAl3M/oBedjQXoXg2Vf3+mfS+pYM4UowXU1N4724r5vEmjiqZmS7OogYIUl1cbe5
         G5Jg==
X-Gm-Message-State: AHPjjUjq2l8YLjjh0iZYa3KWO1kjrGauAPtK+HRrZtuPYviInDQ1QcHq
	8iK+T7ws4Zbb1HY150CVmARpI8NbYLywO4dv61sA2A==
X-Google-Smtp-Source: AOwi7QAa4ilRPikAW8LDITjsnStuy5qE7q9BQqvcOOJniDR6SWUswioTmyz3Zax8sqloSeEV/TDeLAx7GQ2rv1BuWwc=
X-Received: by 10.107.62.7 with SMTP id l7mr13121535ioa.78.1506416740985; Tue,
 26 Sep 2017 02:05:40 -0700 (PDT)
MIME-Version: 1.0
Sender: daniel.vetter@ffwll.ch
Received: by 10.79.196.218 with HTTP; Tue, 26 Sep 2017 02:05:39 -0700 (PDT)
X-Originating-IP: [2a02:168:5635:0:39d2:f87e:2033:9f6]
In-Reply-To: <CAKMK7uHz-07SgntJvsYkiAE1GH_ZYO6-bX=305EdhLa+y0=XBw@mail.gmail.com>
References: <20170925184728.GA8861@aishwarya> <20170926082047.eqsd2lslpqp4pi5f@phenom.ffwll.local>
 <alpine.DEB.2.20.1709261036530.2925@hadrien> <CAKMK7uHz-07SgntJvsYkiAE1GH_ZYO6-bX=305EdhLa+y0=XBw@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 26 Sep 2017 11:05:39 +0200
X-Google-Sender-Auth: 4yCiolPEwcB6LfvKQ-sGPJShmc4
Message-ID: <CAKMK7uHia9TC2mVAGLnx22S2JG2VQQco+g4PEdnP8GcUNO8C5A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drm/gem: use new idr deletion
 interface to cleanup drm_gem_handle_delete()
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Aishwarya Pant <aishpant@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>, 
	Jani Nikula <jani.nikula@linux.intel.com>, Sean Paul <seanpaul@chromium.org>, 
	David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 26, 2017 at 10:47 AM, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Tue, Sep 26, 2017 at 10:38 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>>
>> On Tue, 26 Sep 2017, Daniel Vetter wrote:
>>
>>> On Tue, Sep 26, 2017 at 12:17:28AM +0530, Aishwarya Pant wrote:
>>> > The IDR deletion interface now returns the deleted entry or NULL if it was not
>>> > present. So we don't have to do the extra work of checking if we have a
>>> > reference on the drm_gem_object, this can be handled by checking the return
>>> > value from idr_remove() and the extra locks can be dropped.
>>> >
>>> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
>>>
>>> Haneen is already working on this task, with the patch just merged. Please
>>> coordinate with mentors (me or Sean Paul) before starting on something to
>>> avoid such clashes in the future.
>>>
>>> Note also that some todo items are just ideas, and need confirmation with
>>> relevant maintainers first.
>>
>> Not sure where the mixup happened, but anyone who starts on a project
>> specific task should note that on the outreachy kernel wiki and before
>> starting on a project specific task one should check that no one is
>> working on it.  If someone started some time ago, and the code doesn't
>> seem to have changed, ask the person who claimed the task or the mentor.
>
> Hm, the dri-devel tasks aren't on the wiki, but in the kernel sources.
> Where should we put the scratch-pad to avoid such conflicts in the
> future? E.g. the IIO subsytems has it's task on the wiki, where this
> works much better.

Ok, I found it. Looks like a few signed up for stuff, but without
chatting with us first, and ended up picking tasks that need some
serious GPU expertise. I.e. maybe suitable for a full internship,
definitely not as starter tasks. I'll send out mails.
-Daniel


> -Daniel
>
>>
>> thanks,
>>
>> julia
>>
>>>
>>> Thanks, Daniel
>>> > ---
>>> >  drivers/gpu/drm/drm_gem.c | 21 ++-------------------
>>> >  1 file changed, 2 insertions(+), 19 deletions(-)
>>> >
>>> > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
>>> > index c55f338..f62757a 100644
>>> > --- a/drivers/gpu/drm/drm_gem.c
>>> > +++ b/drivers/gpu/drm/drm_gem.c
>>> > @@ -282,29 +282,12 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
>>> >  {
>>> >     struct drm_gem_object *obj;
>>> >
>>> > -   /* This is gross. The idr system doesn't let us try a delete and
>>> > -    * return an error code.  It just spews if you fail at deleting.
>>> > -    * So, we have to grab a lock around finding the object and then
>>> > -    * doing the delete on it and dropping the refcount, or the user
>>> > -    * could race us to double-decrement the refcount and cause a
>>> > -    * use-after-free later.  Given the frequency of our handle lookups,
>>> > -    * we may want to use ida for number allocation and a hash table
>>> > -    * for the pointers, anyway.
>>> > -    */
>>> >     spin_lock(&filp->table_lock);
>>> > -
>>> > -   /* Check if we currently have a reference on the object */
>>> > -   obj = idr_replace(&filp->object_idr, NULL, handle);
>>> > -   spin_unlock(&filp->table_lock);
>>> > -   if (IS_ERR_OR_NULL(obj))
>>> > +   obj = idr_remove(&filp->object_idr, handle);
>>> > +   if (!obj)
>>> >             return -EINVAL;
>>> > -
>>> >     /* Release driver's reference and decrement refcount. */
>>> >     drm_gem_object_release_handle(handle, obj, filp);
>>> > -
>>> > -   /* And finally make the handle available for future allocations. */
>>> > -   spin_lock(&filp->table_lock);
>>> > -   idr_remove(&filp->object_idr, handle);
>>> >     spin_unlock(&filp->table_lock);
>>> >
>>> >     return 0;
>>> > --
>>> > 2.7.4
>>> >
>>> > --
>>> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170925184728.GA8861%40aishwarya.
>>> > For more options, visit https://groups.google.com/d/optout.
>>>
>>> --
>>> Daniel Vetter
>>> Software Engineer, Intel Corporation
>>> http://blog.ffwll.ch
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170926082047.eqsd2lslpqp4pi5f%40phenom.ffwll.local.
>>> For more options, visit https://groups.google.com/d/optout.
>>>
>
>
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch


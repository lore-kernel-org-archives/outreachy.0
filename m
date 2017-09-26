X-GM-THRID: 6469789511840694272
X-Received: by 10.46.88.72 with SMTP id x8mr780418ljd.6.1506421223809;
        Tue, 26 Sep 2017 03:20:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.92.218 with SMTP id u87ls1108516lfi.6.gmail; Tue, 26 Sep
 2017 03:20:21 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA1gesFX+BY+HBevMLjSOWv9vjXZBpQNPE5LgJQ7+uDsfdTSIljQHAPLXrk/sK3MC4rF9VU
X-Received: by 10.25.79.23 with SMTP id d23mr782206lfb.34.1506421221816;
        Tue, 26 Sep 2017 03:20:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506421221; cv=none;
        d=google.com; s=arc-20160816;
        b=pVvkbQQNq+XXrXhM7LT9muF7Q+hA4CHrcpZeA/rODlSbpPgoTy92ZwrblnAZnTs1gS
         9uEktBC29RlKFrMAGXdTQ9Fn7OPFkMqc1rldqiOgDbAiJEenCCHVxPAptZlWkF8woW6Y
         Yi7VkMCwsFjNjDWrjl/LssVtFzAIolTzMtVbrkxAwZlukStAvzjc+RRyv1Lh9sDo/wNg
         h2acrvvnNq/nRcUdZLzNRLFrVYjzzF6A777WPM8pcSLLR2nHYB15MOe0gsNZG6j2toyt
         YWLdqt6naLSwgH4BWpHGJT37NiphStQ54q4ediUdvpe+PTHBTJnuHCeGpXtUQHkSrrNZ
         3mDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=NsoILmp9mAmx3FnFS1/IhH3M0Qo6BI4YmOOlF9hQiU8=;
        b=dYYRjJAsFg2MYYyHWKjC53+bIeEBTO/GXKfo2ctisb6Nxn/rZqTciqbemz+3P0kVOs
         bUiD9bhsWNPq1tjMcTMRhp6j3+13HuoayiZT1EIv+10ocIkH8BFXimeZpLruZ++QlkKz
         DZaVCPxjan1pkjh2uonEY5UIrJnYoz+r4TDR7O9jMxJfKF69/s4ZirD6R8mPBfLffrEW
         iOUF6vBQbPh/iPGIsq/KnlwXG8PGYqJujGB2xvdKQTmzHMuqJMH+j/5h51rbQit4hsLf
         GDY0+NwuSdQmponHW8KuM7zqHzMDl44sJI1uEZjq7DkuUK+1JXW8oRw8lq4faVqgBH/j
         JIaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j4si161108wmi.2.2017.09.26.03.20.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 03:20:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,440,1500933600"; 
   d="scan'208";a="238745434"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 12:20:20 +0200
Date: Tue, 26 Sep 2017 12:20:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniel Vetter <daniel@ffwll.ch>
cc: Aishwarya Pant <aishpant@gmail.com>, 
    Daniel Vetter <daniel.vetter@intel.com>, 
    Jani Nikula <jani.nikula@linux.intel.com>, 
    Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, 
    dri-devel <dri-devel@lists.freedesktop.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] drm/gem: use new idr deletion interface
 to cleanup drm_gem_handle_delete()
In-Reply-To: <CAKMK7uHia9TC2mVAGLnx22S2JG2VQQco+g4PEdnP8GcUNO8C5A@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709261219480.2866@hadrien>
References: <20170925184728.GA8861@aishwarya> <20170926082047.eqsd2lslpqp4pi5f@phenom.ffwll.local> <alpine.DEB.2.20.1709261036530.2925@hadrien> <CAKMK7uHz-07SgntJvsYkiAE1GH_ZYO6-bX=305EdhLa+y0=XBw@mail.gmail.com>
 <CAKMK7uHia9TC2mVAGLnx22S2JG2VQQco+g4PEdnP8GcUNO8C5A@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Sep 2017, Daniel Vetter wrote:

> On Tue, Sep 26, 2017 at 10:47 AM, Daniel Vetter <daniel@ffwll.ch> wrote:
> > On Tue, Sep 26, 2017 at 10:38 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >>
> >>
> >> On Tue, 26 Sep 2017, Daniel Vetter wrote:
> >>
> >>> On Tue, Sep 26, 2017 at 12:17:28AM +0530, Aishwarya Pant wrote:
> >>> > The IDR deletion interface now returns the deleted entry or NULL if it was not
> >>> > present. So we don't have to do the extra work of checking if we have a
> >>> > reference on the drm_gem_object, this can be handled by checking the return
> >>> > value from idr_remove() and the extra locks can be dropped.
> >>> >
> >>> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> >>>
> >>> Haneen is already working on this task, with the patch just merged. Please
> >>> coordinate with mentors (me or Sean Paul) before starting on something to
> >>> avoid such clashes in the future.
> >>>
> >>> Note also that some todo items are just ideas, and need confirmation with
> >>> relevant maintainers first.
> >>
> >> Not sure where the mixup happened, but anyone who starts on a project
> >> specific task should note that on the outreachy kernel wiki and before
> >> starting on a project specific task one should check that no one is
> >> working on it.  If someone started some time ago, and the code doesn't
> >> seem to have changed, ask the person who claimed the task or the mentor.
> >
> > Hm, the dri-devel tasks aren't on the wiki, but in the kernel sources.
> > Where should we put the scratch-pad to avoid such conflicts in the
> > future? E.g. the IIO subsytems has it's task on the wiki, where this
> > works much better.
>
> Ok, I found it. Looks like a few signed up for stuff, but without
> chatting with us first, and ended up picking tasks that need some
> serious GPU expertise. I.e. maybe suitable for a full internship,
> definitely not as starter tasks. I'll send out mails.

Thanks.  Everyone, please discuss with the mentor before picking a task.

julia

> -Daniel
>
>
> > -Daniel
> >
> >>
> >> thanks,
> >>
> >> julia
> >>
> >>>
> >>> Thanks, Daniel
> >>> > ---
> >>> >  drivers/gpu/drm/drm_gem.c | 21 ++-------------------
> >>> >  1 file changed, 2 insertions(+), 19 deletions(-)
> >>> >
> >>> > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> >>> > index c55f338..f62757a 100644
> >>> > --- a/drivers/gpu/drm/drm_gem.c
> >>> > +++ b/drivers/gpu/drm/drm_gem.c
> >>> > @@ -282,29 +282,12 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
> >>> >  {
> >>> >     struct drm_gem_object *obj;
> >>> >
> >>> > -   /* This is gross. The idr system doesn't let us try a delete and
> >>> > -    * return an error code.  It just spews if you fail at deleting.
> >>> > -    * So, we have to grab a lock around finding the object and then
> >>> > -    * doing the delete on it and dropping the refcount, or the user
> >>> > -    * could race us to double-decrement the refcount and cause a
> >>> > -    * use-after-free later.  Given the frequency of our handle lookups,
> >>> > -    * we may want to use ida for number allocation and a hash table
> >>> > -    * for the pointers, anyway.
> >>> > -    */
> >>> >     spin_lock(&filp->table_lock);
> >>> > -
> >>> > -   /* Check if we currently have a reference on the object */
> >>> > -   obj = idr_replace(&filp->object_idr, NULL, handle);
> >>> > -   spin_unlock(&filp->table_lock);
> >>> > -   if (IS_ERR_OR_NULL(obj))
> >>> > +   obj = idr_remove(&filp->object_idr, handle);
> >>> > +   if (!obj)
> >>> >             return -EINVAL;
> >>> > -
> >>> >     /* Release driver's reference and decrement refcount. */
> >>> >     drm_gem_object_release_handle(handle, obj, filp);
> >>> > -
> >>> > -   /* And finally make the handle available for future allocations. */
> >>> > -   spin_lock(&filp->table_lock);
> >>> > -   idr_remove(&filp->object_idr, handle);
> >>> >     spin_unlock(&filp->table_lock);
> >>> >
> >>> >     return 0;
> >>> > --
> >>> > 2.7.4
> >>> >
> >>> > --
> >>> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >>> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> >>> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170925184728.GA8861%40aishwarya.
> >>> > For more options, visit https://groups.google.com/d/optout.
> >>>
> >>> --
> >>> Daniel Vetter
> >>> Software Engineer, Intel Corporation
> >>> http://blog.ffwll.ch
> >>>
> >>> --
> >>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >>> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170926082047.eqsd2lslpqp4pi5f%40phenom.ffwll.local.
> >>> For more options, visit https://groups.google.com/d/optout.
> >>>
> >
> >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > +41 (0) 79 365 57 48 - http://blog.ffwll.ch
>
>
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKMK7uHia9TC2mVAGLnx22S2JG2VQQco%2Bg4PEdnP8GcUNO8C5A%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


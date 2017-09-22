X-GM-THRID: 6468338986973659136
X-Received: by 10.28.99.67 with SMTP id x64mr62734wmb.31.1506059978644;
        Thu, 21 Sep 2017 22:59:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.161.208 with SMTP id v16ls1104516wrv.8.gmail; Thu, 21 Sep
 2017 22:59:37 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QApcM88Poj1Z7vpubYUncvXtpkv3hbgBKSaugzMX8mIkAnPjy629Hu3EQVyIDgxDgTElrPR
X-Received: by 10.28.29.8 with SMTP id d8mr57470wmd.27.1506059977760;
        Thu, 21 Sep 2017 22:59:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506059977; cv=none;
        d=google.com; s=arc-20160816;
        b=cW0c/udu83pl7tvhqBUfkjdeB20B3z36EukdVXkQbpCOgr5Fzc5xjDaMyIaHmqKpqX
         rGKI2B+P0x4YiB1VQKcG7AJ4IFHUDclseisKY7hLw+06qDrUmiNTdyNOsy+AXdN6+8eI
         S/3I5Kc3SZzHCjJyZZq/JPG7JsJt5We3wwsZaP3FG/M4S7gCzCWQzJ4VHqTTc8jfMB1O
         3YPwWYK48HOww1eq0xh4w3P2cUo2ByUvAv44SuBrtZMTkJbpF0By4NkCCZ27dxvITCVj
         J7brBpU4yHHaOqJ4EvKlk0uF5bzd6mkSiQ4n9G7nfVI9eq/fequMAze7l664Oq9oVM78
         mHmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=yFm26mccqxVJ3zWQawgA7/GSZVebl2Y7Rvmrt1JiSL0=;
        b=C8N45vYONMYspQ6ejdh/8lwtGJygSipEwYOyxxoxRfgCH9SA2qkeiiEBwAZcESNliU
         IeEmxE0t7hHhNpeVZtiZ01qGnDNuSJ+GW7Q3y5ruSOHisP7ZNt+Rw2idjEin8/442c95
         WGOwVnQtwj8dRJCwl/Ho607J9seIoZJfxRvexpCgGQtTzmMw8G6c4vwBPACGJv28nU7y
         YNw7WAa6x97mCbBVj75Xm0JHWrEihQUB24nquPAzZp35/atu3bw41t4XCRJhPO9qwLff
         f792E0zHzJsWWtkPvu86394zHRBXjWHF+YMS6MvOhzF3/rDKyddl2bjzjWNXFPuuh7Gm
         gu9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p200si264982wmg.4.2017.09.21.22.59.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 22:59:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,427,1500933600"; 
   d="scan'208";a="238346262"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Sep 2017 07:59:36 +0200
Date: Fri, 22 Sep 2017 07:59:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>, 
    Jani Nikula <jani.nikula@linux.intel.com>, 
    Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] drm: Remove obsolete "This is
 gross" comment
In-Reply-To: <20170921214707.GA22325@Haneen>
Message-ID: <alpine.DEB.2.20.1709220758480.2019@hadrien>
References: <20170921210424.GA21951@Haneen> <alpine.DEB.2.20.1709212316310.2857@hadrien> <20170921214707.GA22325@Haneen>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Sep 2017, Haneen Mohammed wrote:

> On Thu, Sep 21, 2017 at 11:16:44PM +0200, Julia Lawall wrote:
> >
> >
> > On Thu, 21 Sep 2017, Haneen Mohammed wrote:
> >
> > > Remove obsolete comment which was initially added in 2008 to annotate
> > > that idr_find() was used before idr_remove() since idr_remove() didn't
> > > use to return feedback. The comment now is irrelevant with
> > > commit f6cd7daecff5 ("drm: Release driver references to handle before
> > > making it available again").
> >
> > Why did you send it again?
> >
> > julia
> >
>
> I forgot to include the dri-devel mailing list for the first patch.

OK, it should have been a v2 with a comment about what changed.  Even if
it is not a technical issue, it saves people wondering about what
happened.

julia

>
> Haneen
>
> > >
> > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > > ---
> > >  drivers/gpu/drm/drm_gem.c | 9 ---------
> > >  1 file changed, 9 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> > > index c55f338..b9bddaa 100644
> > > --- a/drivers/gpu/drm/drm_gem.c
> > > +++ b/drivers/gpu/drm/drm_gem.c
> > > @@ -282,15 +282,6 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
> > >  {
> > >  	struct drm_gem_object *obj;
> > >
> > > -	/* This is gross. The idr system doesn't let us try a delete and
> > > -	 * return an error code.  It just spews if you fail at deleting.
> > > -	 * So, we have to grab a lock around finding the object and then
> > > -	 * doing the delete on it and dropping the refcount, or the user
> > > -	 * could race us to double-decrement the refcount and cause a
> > > -	 * use-after-free later.  Given the frequency of our handle lookups,
> > > -	 * we may want to use ida for number allocation and a hash table
> > > -	 * for the pointers, anyway.
> > > -	 */
> > >  	spin_lock(&filp->table_lock);
> > >
> > >  	/* Check if we currently have a reference on the object */
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170921210424.GA21951%40Haneen.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170921214707.GA22325%40Haneen.
> For more options, visit https://groups.google.com/d/optout.
>

